{ config, lib, pkgs, inputs, ... }:
# let
# inherit
#     (inputs.split-monitor-workspaces.packages.${pkgs.system})
#     split-monitor-workspaces;
# in
{

  wayland.windowManager.hyprland = {
    # Allow home-manager to edit hyprland
    enable = true;


    settings = {

      # Set mod key to super
      "$mod" = "SUPER";

      # Variables
      "$terminal" = "kitty";
      "$file-manager" = "nautilus";
      "$browser" = "firefox";
      "$editor" = "emacs";

      # Autostart
      exec-once = [
        "nm-applet --indicator"
        "waybar"
      ];

      monitor = [
        "eDP-1, 2560x1440@60, 0x0, 1.6"
      ];

      general = {
        "gaps_in" = 5;
        "gaps_out" = 10;
      };

      # Input controls
      input = {
        touchpad = {
          "natural_scroll" = "true";
        };
      };

      # Enable workspace swipe
      gestures = {
        "workspace_swipe" = "true";
      };


      # Keybindings
      bind = [
        # Basic Keybindings
        "$mod, RETURN, exec, $terminal"
        "$mod+SHIFT, RETURN, exec, $file-manager"
        "$mod, W, exec, $browser"
        "$mod, E, exec, $editor"
        "$mod, A, exec, rofi -show drun -show-icons"

        # Utilites
        "$mod+SHIFT, S, exec, grim -g \"$(slurp)\" - | swappy -f -"

        # Hyprland keybindings
        "$mod+SHIFT, X, exit"

        # Switch Workspaces
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"
        "$mod, 0, workspace, 10"

        # Move active window to workspace
        "$mod+SHIFT, 1, movetoworkspace, 1"
        "$mod+SHIFT, 2, movetoworkspace, 2"
        "$mod+SHIFT, 3, movetoworkspace, 3"
        "$mod+SHIFT, 4, movetoworkspace, 4"
        "$mod+SHIFT, 5, movetoworkspace, 5"
        "$mod+SHIFT, 6, movetoworkspace, 6"
        "$mod+SHIFT, 7, movetoworkspace, 7"
        "$mod+SHIFT, 8, movetoworkspace, 8"
        "$mod+SHIFT, 9, movetoworkspace, 9"
        "$mod+SHIFT, 0, movetoworkspace, 10"

        # Window Management
        "$mod, Q, killactive"
        "$mod, F, togglefloating"
        "$mod, M, fullscreen, 1"

        # Move Focus with vim keys
        "$mod, h, movefocus, l"
        "$mod, l, movefocus, r"
        "$mod, k, movefocus, u"
        "$mod, j, movefocus, d"

        # Move Focus with arrow
        "$mod, left, movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up, movefocus, u"
        "$mod, down, movefocus, d"


      ];

      # Mouse movement keybindings
      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];

    };

    # plugins = [
    #       split-monitor-workspaces
    # ];

  };
}
