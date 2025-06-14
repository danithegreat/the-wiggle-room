# The Wiggle Room 🍼

> An AI-powered parenting companion built with SvelteKit and Supabase

## Overview

The Wiggle Room is a modern web application designed to support parents through their journey with personalized AI assistance, community features, and helpful resources. Built with cutting-edge web technologies for a smooth, responsive experience.

## ✨ Features

- **AI Chat Interface** - Get personalized parenting advice and support
- **Dashboard Overview** - Track your parenting journey and milestones
- **Welcome Experience** - Onboarding designed for new users
- **Responsive Design** - Works seamlessly on desktop and mobile
- **Real-time Updates** - Powered by Supabase for live data sync

## 🛠️ Tech Stack

- **Frontend**: [SvelteKit](https://kit.svelte.dev/) - Fast, modern web framework
- **Backend**: [Supabase](https://supabase.com/) - PostgreSQL database with real-time features
- **Styling**: CSS with Svelte's scoped styling
- **Deployment**: [Vercel](https://vercel.com/) - Optimized for SvelteKit
- **Package Manager**: npm

## 🚀 Getting Started

### Prerequisites

- Node.js 18+ 
- npm or yarn
- Supabase account (for backend services)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/danithegreat/the-wiggle-room.git
   cd the-wiggle-room
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Set up environment variables**
   ```bash
   cp .env.example .env
   ```
   
   Add your Supabase credentials to `.env`:
   ```env
   PUBLIC_SUPABASE_URL=your_supabase_url
   PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key
   ```

4. **Set up the database**
   - Import the schema from `supabase/schema.sql` into your Supabase project
   - Or run: `supabase db reset` if using Supabase CLI

5. **Start the development server**
   ```bash
   npm run dev
   ```

   Open [http://localhost:5173](http://localhost:5173) in your browser.

## 📁 Project Structure

```
src/
├── lib/
│   ├── components/
│   │   ├── ui/              # Reusable UI components
│   │   ├── ChatInterface.svelte
│   │   ├── DashboardOverview.svelte
│   │   └── WelcomeSection.svelte
│   ├── supabase.ts          # Supabase client configuration
│   └── types.ts             # TypeScript type definitions
├── routes/
│   └── +page.svelte         # Main application page
└── app.html                 # HTML template
supabase/
└── schema.sql               # Database schema
```

## 🔧 Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build locally
- `npm run check` - Run Svelte check for TypeScript errors
- `npm run lint` - Run ESLint (if configured)

## 🚀 Deployment

The project is configured for easy deployment on Vercel:

1. **Connect your GitHub repository to Vercel**
2. **Add environment variables** in Vercel dashboard
3. **Deploy** - Vercel will automatically build and deploy

Alternatively, you can deploy manually:
```bash
npm run build
npm run preview
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 Environment Variables

| Variable | Description | Required |
|----------|-------------|-----------|
| `PUBLIC_SUPABASE_URL` | Your Supabase project URL | ✅ |
| `PUBLIC_SUPABASE_ANON_KEY` | Your Supabase anonymous key | ✅ |

## 🔒 Security

- Environment variables are properly scoped (PUBLIC_ prefix for client-side)
- Supabase Row Level Security (RLS) policies should be configured
- Always use the anonymous key for client-side operations

## 📚 Learn More

- [SvelteKit Documentation](https://kit.svelte.dev/docs)
- [Supabase Documentation](https://supabase.com/docs)
- [Vercel Deployment Guide](https://vercel.com/docs)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Built with ❤️ for parents everywhere
- Powered by the amazing Svelte and Supabase communities

---

**The Wiggle Room** - Making parenting a little bit easier, one chat at a time. 🌟

