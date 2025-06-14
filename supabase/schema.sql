-- Supabase schema for The Wiggle Room

create table if not exists users (
    id uuid primary key default gen_random_uuid(),
    email text unique not null,
    created_at timestamptz default now(),
    name text,
    preferred_coaching_style text,
    last_interaction_at timestamptz
);

create table if not exists workout_logs (
    id uuid primary key default gen_random_uuid(),
    user_id uuid references users(id),
    date date not null,
    type text,
    duration int,
    effort text,
    mood text,
    notes text,
    ai_coach_feedback text,
    created_at timestamptz default now()
);

create table if not exists settings (
    user_id uuid primary key references users(id),
    reminder_time time,
    preferred_workouts text[],
    timezone text,
    notification_preferences jsonb,
    coaching_preferences jsonb
);

create table if not exists streaks (
    id uuid primary key default gen_random_uuid(),
    user_id uuid references users(id),
    start_date date not null,
    end_date date,
    current_streak int default 0,
    longest_streak int default 0,
    streak_type text not null
);

create table if not exists team_challenges (
    id uuid primary key default gen_random_uuid(),
    name text not null,
    description text,
    start_date date not null,
    end_date date not null,
    goal_type text not null,
    goal_value int not null,
    created_at timestamptz default now()
);

create table if not exists team_challenge_members (
    challenge_id uuid references team_challenges(id),
    user_id uuid references users(id),
    joined_at timestamptz default now(),
    progress int default 0,
    primary key (challenge_id, user_id)
);

create table if not exists coaching_memory (
    id uuid primary key default gen_random_uuid(),
    user_id uuid references users(id),
    interaction_type text not null,
    content text not null,
    sentiment text,
    created_at timestamptz default now()
);

create table if not exists achievements (
    id uuid primary key default gen_random_uuid(),
    name text not null,
    description text,
    criteria jsonb not null,
    icon text
);

create table if not exists user_achievements (
    user_id uuid references users(id),
    achievement_id uuid references achievements(id),
    earned_at timestamptz default now(),
    primary key (user_id, achievement_id)
);

-- Indexes for better query performance
create index if not exists idx_workout_logs_user_date on workout_logs(user_id, date);
create index if not exists idx_streaks_user on streaks(user_id);
create index if not exists idx_coaching_memory_user on coaching_memory(user_id);
create index if not exists idx_team_challenge_members on team_challenge_members(challenge_id, user_id);
