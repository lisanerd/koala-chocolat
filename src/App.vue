<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png" />
    <img alt="Vue logo" src="./assets/IMG_2660.png" />
    <ParticleBtn
      :visible.sync="btnOps.visible"
      :animating.sync="btnOps.animating"
      :options="btnOps"
      cls="btn-cls"
    >
      hello eveybody!
    </ParticleBtn>
    <h2>animating:{{ btnOps.animating }}</h2>
    <h2>visible:{{ btnOps.visible }}</h2>
    <button @click="btnOps.visible = !btnOps.visible">toggle</button>
  </div>
</template>

<script>
import ParticleBtn from "vue-particle-effect-buttons";
export default {
  data() {
    return {
      btnOps: {
        type: "triangle",
        easing: "easeOutQuart",
        size: 6,
        particlesAmountCoefficient: 4,
        oscillationCoefficient: 2,
        color: function () {
          return Math.random() < 0.5 ? "#000000" : "#ffffff";
        },
        onComplete: () => {
          console.log("complete");
        },
        onBegin: () => {
          console.log("begin");
        },
        visible: true,
        animating: false,
      },
    };
  },
  name: "App",
  components: { ParticleBtn },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
