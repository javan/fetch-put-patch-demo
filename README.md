**Update:** Looks like it's an Edge bug.

1. https://twitter.com/javan/status/738469502736728064
2. https://twitter.com/davidgraham/status/738473923386302464
3. https://twitter.com/gregwhitworth/status/738480911977578496
4. **https://developer.microsoft.com/en-us/microsoft-edge/platform/issues/7773267/** 🎉

---

`PUT` and `PATCH` [Fetch](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API) requests fail in Microsoft Edge, which [supports Fetch natively as of build 14342](https://developer.microsoft.com/en-us/microsoft-edge/platform/changelog/desktop/14342/). These requests succeed in all other browsers that support Fetch. Who gets it right? After reading [the spec](https://fetch.spec.whatwg.org/), I'm not totally sure.

| Chrome 👍 | Canary 👍 | Firefox 👍 | Opera 👍 | MS Edge 👎 |
|  ---  |  ---  |  ---  |  ---  |  ---  |
| ![Chrome](https://cloud.githubusercontent.com/assets/5355/15758548/1dc64f42-28d9-11e6-9e23-fcddb4eb3eb4.png) | ![Chrome Canary](https://cloud.githubusercontent.com/assets/5355/15758547/1dc5d210-28d9-11e6-889a-24768c62a0b8.png) | ![Firefox](https://cloud.githubusercontent.com/assets/5355/15758550/1dc88014-28d9-11e6-964c-d336e39ea222.png) | ![Opera](https://cloud.githubusercontent.com/assets/5355/15758551/1dd05c12-28d9-11e6-9108-1cbf63eef8ab.png) | ![Microsoft Edge](https://cloud.githubusercontent.com/assets/5355/15758546/1dc32f4c-28d9-11e6-90d2-6f48e9e5e227.png) |
