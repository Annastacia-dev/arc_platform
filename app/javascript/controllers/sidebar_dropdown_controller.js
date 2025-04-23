import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["dropdown", "icon"]

  toggle(event) {
    const menuId = event.currentTarget.dataset.menuId;
    const dropdown = document.getElementById(`${menuId}_dropdown`);
    const icon = document.getElementById(`${menuId}_icon`);

    const allDropdowns = document.querySelectorAll('[id$="_dropdown"]');
    const allIcons = document.querySelectorAll('[id$="_icon"]');

    const isHidden = dropdown.classList.contains("hidden");

    allDropdowns.forEach(dd => dd.classList.add("hidden"));
    allIcons.forEach(ic => ic.classList.add("rotate-180"));

    if (isHidden) {
      dropdown.classList.remove("hidden");
      icon.classList.remove("rotate-180");
    } else {
      dropdown.classList.add("hidden");
      icon.classList.add("rotate-180");
    }
  }
}
