<template>
  <div id="app" class="container">
    <img alt="Vue logo" src="./assets/logo.png" />
    <h2></h2>
    <ParticleBtn
      :visible.sync="btnOps.visible"
      :animating.sync="btnOps.animating"
      :options="btnOps"
      cls="btn-cls"
    >
      hello eveybody!
    </ParticleBtn>
    <!-- <h2>animating:{{ btnOps.animating }}</h2>
    <h2>visible:{{ btnOps.visible }}</h2> -->
    <h2></h2>
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
.container {
  background-image: linear-gradient(
    -128deg,
    rgba(175, 231, 222, 0.93) 3%,
    rgba(241, 158, 63, 0.938) 88%,
    rgba(239, 39, 153, 0.93) 88%,
    rgb(84, 18, 237) 100%
  );
  /* display: flex; */
  width: 100%;
  height: 100%;
  justify-content: center;
  align-items: center;
}

html,
body {
  height: 100%;
  margin: 0;
}
</style>
