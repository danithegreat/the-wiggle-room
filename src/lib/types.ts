export interface User {
  id: string;
  email: string;
  created_at: string;
}

export interface WorkoutLog {
  id: string;
  user_id: string;
  date: string;
  type: string;
  duration: number;
  effort: string;
  mood: string;
}

export interface UserSettings {
  user_id: string;
  reminder_time: string | null;
  preferred_workouts: string[] | null;
  timezone: string | null;
}

export type Database = {
  public: {
    Tables: {
      users: {
        Row: User;
        Insert: Omit<User, 'id' | 'created_at'>;
        Update: Partial<Omit<User, 'id' | 'created_at'>>;
      };
      workout_logs: {
        Row: WorkoutLog;
        Insert: Omit<WorkoutLog, 'id'>;
        Update: Partial<Omit<WorkoutLog, 'id'>>;
      };
      settings: {
        Row: UserSettings;
        Insert: Omit<UserSettings, 'user_id'>;
        Update: Partial<Omit<UserSettings, 'user_id'>>;
      };
    };
  };
}; 