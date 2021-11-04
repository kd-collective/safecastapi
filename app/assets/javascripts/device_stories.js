window.addEventListener("load", function (e) {
  ["1", "2", "3"].forEach(function (selection) {
    const control = document.querySelector("#time_range_" + selection);
    control.addEventListener("click", function (e) {
      const url = new URL(document.location);
      url.searchParams.set("time_range", selection);
      window.location.href = url;
    });
  });
});
