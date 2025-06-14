<!-- DashboardOverview.svelte -->
<script lang="ts">
  import { Activity, Clock, Heart, Trophy } from 'lucide-svelte';

  // Mock data - replace with real data later
  const stats = [
    { label: 'Today\'s Streak', value: '3 days', icon: Trophy, color: 'text-yellow-500' },
    { label: 'Total Minutes', value: '45 min', icon: Clock, color: 'text-blue-500' },
    { label: 'Energy Level', value: 'Medium', icon: Activity, color: 'text-green-500' },
    { label: 'Mood', value: 'Good', icon: Heart, color: 'text-pink-500' }
  ];
</script>

<div class="bg-white/90 backdrop-blur-sm rounded-2xl shadow-xl p-6">
  <h2 class="text-xl font-semibold text-slate-800 mb-6">Your Progress</h2>
  
  <!-- Stats Grid -->
  <div class="grid grid-cols-2 gap-4 mb-8">
    {#each stats as stat}
      <div class="bg-slate-50 rounded-xl p-4">
        <div class="flex items-center gap-3">
          <svelte:component this={stat.icon} class="w-5 h-5 {stat.color}" />
          <div>
            <p class="text-sm text-slate-600">{stat.label}</p>
            <p class="text-lg font-semibold text-slate-800">{stat.value}</p>
          </div>
        </div>
      </div>
    {/each}
  </div>

  <!-- Quick Actions -->
  <div class="space-y-4">
    <h3 class="text-lg font-semibold text-slate-800">Quick Actions</h3>
    <div class="grid grid-cols-1 gap-3">
      <button class="w-full bg-gradient-to-r from-green-400 to-purple-400 text-white rounded-xl p-4 text-left hover:from-green-500 hover:to-purple-500 transition-all duration-300">
        <p class="font-medium">Start a 5-Minute Stretch</p>
        <p class="text-sm opacity-90">Perfect for a quick energy boost</p>
      </button>
      <button class="w-full bg-gradient-to-r from-purple-400 to-pink-400 text-white rounded-xl p-4 text-left hover:from-purple-500 hover:to-pink-500 transition-all duration-300">
        <p class="font-medium">Guided Breathing</p>
        <p class="text-sm opacity-90">Take a moment to center yourself</p>
      </button>
    </div>
  </div>
</div> 