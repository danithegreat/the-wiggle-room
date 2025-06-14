<!-- src/lib/components/WelcomeSection.svelte -->
<script lang="ts">
    import { createEventDispatcher } from 'svelte';
    const dispatch = createEventDispatcher();

    function handleStart() {
      dispatch('start');
    }
</script>

<div class="min-h-screen flex items-center justify-center bg-gradient-to-br from-green-50 via-purple-50 to-pink-50">
  <div class="max-w-2xl mx-auto px-4 py-12 text-center">
    <div class="text-6xl mb-6">🩰</div>
    <h1 class="text-4xl font-bold text-slate-800 mb-4">Welcome to The Wiggle Room</h1>
    <p class="text-xl text-slate-600 mb-8">
      Your gentle space for movement, mindfulness, and self-care.
      No pressure, no judgment - just you and your journey.
    </p>
    
    <button
      on:click={handleStart}
      class="bg-gradient-to-r from-green-400 to-purple-400 
             hover:from-green-500 hover:to-purple-500 
             text-white rounded-full px-8 py-3 text-lg
             transition-all duration-300 shadow-lg hover:shadow-xl"
    >
      Let's Begin
    </button>

    <div class="mt-12 grid grid-cols-1 md:grid-cols-3 gap-6">
      <div class="bg-white/80 backdrop-blur-sm rounded-xl p-6">
        <div class="text-2xl mb-2">✨</div>
        <h3 class="font-semibold text-slate-800 mb-2">Gentle Movement</h3>
        <p class="text-slate-600">Start with small, comfortable movements that feel good for your body.</p>
      </div>
      
      <div class="bg-white/80 backdrop-blur-sm rounded-xl p-6">
        <div class="text-2xl mb-2">💝</div>
        <h3 class="font-semibold text-slate-800 mb-2">Self-Care</h3>
        <p class="text-slate-600">Take care of yourself with guided breathing and mindfulness exercises.</p>
      </div>
      
      <div class="bg-white/80 backdrop-blur-sm rounded-xl p-6">
        <div class="text-2xl mb-2">🌟</div>
        <h3 class="font-semibold text-slate-800 mb-2">Your Pace</h3>
        <p class="text-slate-600">Move at your own rhythm, with no pressure to do more than you're ready for.</p>
      </div>
    </div>
  </div>
</div>