<!-- Button.svelte -->
<script lang="ts">
  export let type: 'button' | 'submit' | 'reset' = 'button';
  export let disabled = false;
</script>

<button
  {type}
  {disabled}
  class="inline-flex items-center justify-center transition-all duration-300 disabled:opacity-50 disabled:cursor-not-allowed {$$props.class || ''}"
  on:click
  {...$$restProps}
>
  <slot />
</button> 