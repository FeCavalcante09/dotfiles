#!/usr/bin/sh

# Script that installs utilities, core programs and a window manager

packages=(
	# Window manager
	bspwm                   # Tiling window manager based on binary space partitioning.
    sxhkd                   # Simple X hotkey daemon.
    xdo                     # Utility for performing actions on windows in X.

	# Audio Packages
	pulseaudio          # A featureful, general-purpose sound server
    pulseaudio-alsa     # ALSA Configuration for PulseAudio
    pavucontrol         # PulseAudio Volume Control
    pamixer             # Pulseaudio command-line mixer
    alsa-firmware       # Firmware binaries
    alsa-lib            # Alternative implementation of Linux sound support
    alsa-plugins        # Additional ALSA plugins
    alsa-utils          # Utils for ALSA
    gstreamer           # GStreamer framework core library
    gst-plugins-good    # GStreamer framework plugins
    gst-plugins-bad     # GStreamer framework plugins
    gst-plugins-base    # GStreamer framework plugins
    gst-plugins-ugly    # GStreamer framework plugins
    gst-libav           # GStreamer framework FFmpeg plugin
    playerctl           # mpris media player controller
    volumeicon          # Volume control for the system tray
    #pulseeffects        # Audio Effects for Pulseaudio Applications
    
    # Core programs packages
    chromium            # Browser built for speed, simplicity, and security
  	xterm               # X Terminal Emulator
  	flameshot			# Screenshot app
  	nitrogen            # Background browser and setter for X windows
    celluloid           # Simple GTK+ frontend for mpv
    rhythmbox           # Music playback and management application
	dmenu               # Generic menu for X
    rofi                # A window switcher and application launcher
    picom               # X compositor that may fix tearing issues
    neofetch            # A CLI system information tool that supports displaying images.
   
    # Extra Programs
	calibre 				# eBook management application 
    lxappearance			# Feature-rich GTK+ theme switcher of the LXDE DEsktop
    gnome-system-monitor    # View current processes and monitor system state
   
    # Utils Packages
    zip                 # Compressor/archiver for creating and modifying zipfiles
    unzip               # For extracting and viewing files in .zip archives
    unrar               # better RAR archive support
    unace               # ACE archive support
    lrzip               # lrzip archive support
    bat                 # Cat clone with syntax highlighting and git integration
    grub-customizer     # A graphical grub2 settings manager
    htop                # Interactive process viewer
    tree                # A directory listing program
    fzf                 # A command line fuzzy finder.
    ripgrep             # A search tool that combines ag with grep. (Use with rp)
    #betterlockscreen    # A simple lock script for i3lock-color
    cronie              # Daemon that runs specified programs at scheduled times
    dunst               # Customizable and lightweight notification-daemon
    which               # A utility to show the full path of commands
    numlockx            # Turns on the numlock key in X11.
    pacman-contrib      # Contributed scripts and tools for pacman systems
    xsettingsd          # Provides settings to X11 applications 
    # Applet for managing network connections
    #network-manager-applet   
    #gnome-keyring       # Stores passwords and encryption keys
    

)

# Some AUR packages may take a LONG time to build. Install them at your own risk. 
# Some will also ask for your password at the end, don't run this part and go afk.
aur_packages=(
#    notable-bin             # The markdown-based note-taking app that doesnt suck
#    ffmpeg-compat-57        # Compatibility package for ffmpeg.
#    stremio-beta            # Watch videos, movies, TV series and TV channels
    spotify                 # A proprietary music streaming service
    polybar                 # A fast and easy-to-use status bar
    simplenote-electron-bin # The simplest way to keep notes
    pcloud-drive            # pCloud drive. Electron edition.
    bitwarden-bin           # A secure and free password manager.
    
    # Extra Packages
    #joplin 					# Note taking app
    
    #networkmanager-dmenu-git    # Control NetworkManager via dmenu
    #pamac-zsh-completions       # ZSH completions for pamac

    # Makes Spotify more friendly to window managers by settings a class name
    # before opening the window.
    spotifywm-git
    
    # Zsh & plugins
	zsh                         # A very advanced and programmable shell for UNIX.
    zsh-autosuggestions         # Fish-like autosuggestions for zsh
    zsh-pure-prompt             # Pretty, minimal and fast ZSH prompt
    zsh-syntax-highlighting     # Fish shell like syntax highlighting for Zsh
    
    # Programming Tools
    visual-studio-code-bin  # Editor for building and debugging modern applications
    neovim                  # Fork of Vim aiming to improve user experience
    
    # Programming Languages
    python  # High-level scripting language
    go      # Core compiler tools for the Go programming language
    lua     # Powerful lightweight language designed for extending applications
    perl    # A highly capable, feature-rich programming language
    rust    # Systems programming language focused on safety, speed and concurrency
    ruby    # An object-oriented language for quick and easy programming
    nodejs  # Evented I/O for V8 javascript
)



# Merge packages into a single string.
packages_string=$(printf " %s" "${packages[@]}")
aur_packages_string=$(printf " %s" "${aur_packages[@]}")

echo $aur_packages_string

# Download packages.
#sudo pacman -S --needed --noconfirm $packages_string
#yay -S --needed --noconfirm $aur_packages_string

echo "Done!"
