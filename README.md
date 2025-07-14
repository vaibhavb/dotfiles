# Vaibhav's Dotfiles

A comprehensive dotfiles configuration managed with [yadm](https://yadm.io/), featuring a modern terminal setup, multi-language development environment, and AI-powered workflow tools.

## 🚀 Features

- **Modern Shell**: Zsh with Starship prompt and Zellij terminal multiplexer
- **Multi-Language Development**: Python, Node.js, Go, Ruby environments
- **AI Integration**: Custom GenSh tool for AI-powered shell patterns
- **Knowledge Management**: Obsidian integration for daily notes
- **Comprehensive Tooling**: 148+ carefully curated Homebrew packages
- **Security Tools**: Comprehensive security toolkit for development

## 📦 Installation

### Prerequisites

```bash
# Install yadm
brew install yadm

# Clone and setup dotfiles
yadm clone https://github.com/[your-username]/dotfiles.git
yadm status
```

### Initial Setup

```bash
# Install Homebrew packages
brew bundle

# Install Starship prompt
curl -sS https://starship.rs/install.sh | sh

# Install Zellij terminal multiplexer
cargo install zellij

# Setup Neovim plugins (NvChad will auto-install on first run)
nvim --headless "+Lazy! sync" +qa

# Setup development environments (see Development Environment section)
```

## 🛠 Development Environment

### Languages & Runtimes

- **Python**: 3.12 with pip, poetry, and common data science tools
- **Node.js**: v24.3.0 managed with nvm
- **Go**: 1.21.5 with full toolchain
- **Ruby**: 3.3.0 managed with RVM

### Terminal Setup

- **Shell**: Zsh with custom functions and aliases
- **Prompt**: Starship with custom configuration
- **Multiplexer**: Zellij with Tokyo Night theme
- **Editor**: Neovim with NvChad configuration

## ⚙️ Key Configuration Files

### `.zshrc`
Main shell configuration with:
- Custom navigation functions (`cdc`, `cdd`, `cdo`)
- Personal productivity dashboard
- AI workflow integration
- Development environment setup

### `.config/` Directory
Essential application configurations:
- **`starship.toml`** - Custom prompt configuration with git status and language detection
- **`alacritty/alacritty.toml`** - Terminal emulator settings and key bindings
- **`zellij/config.kdl`** - Terminal multiplexer configuration and themes
- **`nvim/`** - Complete NvChad Neovim setup with LSP, plugins, and custom mappings

### Editor Configurations
- **`.vimrc`** - Classic Vim configuration for fallback editing
- **`.config/nvim/init.lua`** - Modern Neovim entry point with NvChad framework
- **`.config/nvim/lua/`** - Lua configurations for plugins, LSP, formatting, and mappings
- **`.config/nvim/lazy-lock.json`** - Plugin lockfile for reproducible installations

### Development Tools
- **`.gitconfig`** - Git global configuration with aliases and user settings
- **`Brewfile`** - 148 packages organized by category:
  - **Development Tools**: git, neovim, docker, kubernetes
  - **Languages**: python, node, go, rust
  - **Security**: nmap, wireshark, burp-suite
  - **Productivity**: obsidian, notion, raycast
  - **Fonts**: 65+ Nerd Fonts for terminal customization

## 🔧 Custom Functions & Aliases

### Navigation
```bash
cdc <project>    # Navigate to GitHub projects
cdd <dataset>    # Navigate to data directory  
cdo              # Navigate to Obsidian vault
```

### Daily Workflow
```bash
dashboard        # Show personal productivity dashboard
show-today       # Display current date info
get-date         # Get ISO 8601 formatted date
```

### AI Tools
```bash
gensh <pattern>  # Run AI shell patterns
add-pattern <name>  # Create new GenSh pattern
copy-patterns    # Sync GenSh patterns
```

### Development
```bash
get-md <url>     # Extract markdown from URL
show-info        # Display system and project info
help             # Show custom function help
```

## 📱 Applications & Tools

### Development
- **Code Editors**: Neovim (NvChad), VS Code, Zed
- **Version Control**: Git with GitHub CLI
- **Containers**: Docker Desktop, OrbStack
- **Cloud**: AWS CLI, Google Cloud SDK, Azure CLI

### Security & Network
- **Network Analysis**: Wireshark, Nmap, Netcat
- **Security Testing**: Burp Suite, OWASP ZAP
- **VPN & Tunneling**: Tailscale, ngrok

### Productivity
- **Knowledge Management**: Obsidian, Notion
- **Communication**: Slack, Zoom, Teams
- **Utilities**: Raycast, Alfred, CleanMyMac

### Media & Graphics
- **Design**: Figma, Canva, Adobe Creative Suite
- **Media**: VLC, IINA, HandBrake
- **Screenshots**: CleanShot X, Kap

## 🎨 Customization

### Adding New Packages
```bash
# Add to Brewfile
echo 'brew "package-name"' >> Brewfile

# Install and update
brew bundle
yadm add Brewfile
yadm commit -m "Add new package"
```

### Custom Functions
Add new functions to `.zshrc` in the appropriate section:
```bash
my-function() { ## Description for help command
  # Your code here
}
```

### Environment Variables
Set in `.zshrc` or create `.env` files (excluded from yadm):
```bash
export MY_VAR="value"
```

## 🔒 Security Notes

The following files are **excluded** from version control:
- `.ssh/` - SSH keys and certificates  
- `.aws/credentials` - AWS credentials
- `.env.secrets` - Environment secrets
- `.streamlit/credentials.toml` - API keys

Use yadm's encryption feature for sensitive configs:
```bash
yadm encrypt
```

## 📊 Package Breakdown

- **Core Development**: 25 packages (git, docker, kubernetes, etc.)
- **Languages & Runtimes**: 15 packages (python, node, go, rust, etc.)
- **Security Tools**: 12 packages (nmap, wireshark, burp-suite, etc.)
- **Productivity Apps**: 20 packages (obsidian, notion, raycast, etc.)
- **Media & Graphics**: 18 packages (figma, vlc, adobe suite, etc.)
- **Fonts**: 65+ Nerd Fonts for terminal aesthetics
- **Utilities**: 25+ system utilities and enhancements

## 🚀 Daily Usage

### Morning Routine
```bash
# Start terminal (auto-launches Zellij)
# Dashboard shows automatically via show-today

# Navigate to current project
cdc my-project

# Check status
show-info
```

### Development Workflow
```bash
# Start new feature
git checkout -b feature/new-thing

# Use AI assistance
gensh code_review < my-file.py

# Quick navigation
cdd datasets  # Go to data directory
cdo           # Check Obsidian notes
```

## 🔧 Maintenance

### Regular Updates
```bash
# Update Homebrew packages
brew update && brew upgrade

# Update Brewfile
brew bundle dump --force

# Commit changes
yadm add Brewfile
yadm commit -m "Update Brewfile"
```

### Backup
```bash
# Push to remote
yadm push

# Create local backup
yadm archive ~/dotfiles-backup.tar.gz
```

## 🤝 Contributing

Feel free to:
- Suggest improvements via issues
- Fork and adapt for your setup
- Share useful functions or tools

## 📄 License

MIT License - feel free to use and modify as needed.

---

> "Good tools make you more productive. Great dotfiles make good tools feel effortless."