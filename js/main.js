(function ($) {
    "use strict";

    var ThemeManager = {
        init: function () {
            this.btn = document.getElementById("theme-toggle");
            this.icon = document.getElementById("theme-icon");
            this.body = document.body;

            if (!this.btn) return;

            this.applyStoredTheme();
            this.bindEvents();
        },

        applyStoredTheme: function () {
            var savedTheme = localStorage.getItem("theme");
            if (savedTheme === "dark") {
                this.body.classList.add("dark-theme");
                this.updateIcon(true);
            }
        },

        updateIcon: function (isDark) {
            if (isDark) {
                this.icon.classList.replace("bi-moon-stars-fill", "bi-sun-fill");
            } else {
                this.icon.classList.replace("bi-sun-fill", "bi-moon-stars-fill");
            }
        },

        bindEvents: function () {
            var self = this; // Referencia para evitar el problema del 'this'

            this.btn.addEventListener("click", function () {
                var isDarkNow = self.body.classList.toggle("dark-theme");

                if (isDarkNow) {
                    localStorage.setItem("theme", "dark");
                    self.updateIcon(true);
                } else {
                    localStorage.setItem("theme", "light");
                    self.updateIcon(false);
                }
            });
        }
    };

    // Inicialización estándar
    $(document).ready(function () {
        ThemeManager.init();
    });

})(jQuery);