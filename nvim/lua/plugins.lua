local M = {}

function M.setup()
    -- packer hasn't been installed yet
    local packer_bootstrap = false

    -- just tweaking the packer.init for floating window install. 'Custom Initialization'
    local conf = {display = 
                        {open_fn = 
                            function()
                                return require("packer.util").float { border = "rounded" }
                            end,
                        },
                    profile = {enable = true,
                               threshold = 1,},
                }

    local function packer_init() -- check packer plugin is installed
        local fn = vim.fn
        local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
        if fn.empty(fn.glob(install_path)) > 0 then
	        packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        end
        -- Not sure if needed, we are not configuring packer as opt
        -- vim.cmd [[packadd packer.nvim]]
        vim.cmd "autocmd BufWritePost plugins.lua source <afile> | PackerCompile"
    end

    local function get_config(name) -- return config file from configs dir
	    return string.format('require("configs/%s")', name)
    end

    local function plugins(use)

        -- package manager main
        use("wbthomason/packer.nvim")

        -- some plugins use this (check git)
        use('nvim-lua/plenary.nvim')

        -- faster than default filetype
        use({config = get_config("filetype"),
            "nathom/filetype.nvim",}) 

        -- theme
        -- use({config = get_config("nightfox"),
        --     "EdenEast/nightfox.nvim",}) 

        use({config = get_config("kanagawa"),
            "rebelot/kanagawa.nvim",})

        -- eyecandy
        use({"kyazdani42/nvim-web-devicons"})

        -- statusline
        use({event = "VimEnter",
            requires = {"kyazdani42/nvim-web-devicons", opt=true},
            config = get_config("lualine"),
            "nvim-lualine/lualine.nvim",})

        -- zen mode
        use({config = get_config("zen-mode"),
            "folke/zen-mode.nvim",})

        -- color highlighter
        use({event = "BufReadPre",
            config = get_config("colorizer"),
            "norcalli/nvim-colorizer.lua",})

        -- treesitter
        use({config = get_config("treesitter"),
             run = ':TSUpdate',
             'nvim-treesitter/nvim-treesitter',})

        -- treesitter rainbow brackets
        use("p00f/nvim-ts-rainbow")

        -- ui component library
        use('MunifTanjim/nui.nvim')

        -- completion
        use({branch = 'coq',
            config = get_config("coq"),
            -- event = "InsertEnter",
            run = ":COQdeps",
            -- opt = true,
            requires = {
                            { "ms-jpq/coq.artifacts", branch = "artifacts" },
                            { "ms-jpq/coq.thirdparty", branch = "3p", module = "coq_3p" },
                        },
            -- disable = false,
            "ms-jpq/coq_nvim",})

        -- notify
        use({event = "BufEnter",
            config = get_config("notify"),
            'rcarriga/nvim-notify',})

        use({"neovim/nvim-lspconfig",
            opt = true,
            event = BufReadPre,
            wants = "nvim-lsp-installer",
            config = get_config("lsp"),
            requires = {"williamboman/nvim-lsp-installer"},})

        use({"lewis6991/gitsigns.nvim",
            requires = {"nvim-lua/plenary.nvim"},
            event = "BufReadPre",
            config = get_config("gitsigns"),})

        -- comment
        use({config = get_config("Comment"),
            'numToStr/Comment.nvim',})

        -- bufferline
        use({event = "BufReadPre",
            wants = "nvim-web-devicons",
            config = get_config("bufferline"),
            "akinsho/nvim-bufferline.lua",})

        use({'stevearc/dressing.nvim',
            config = get_config("dressing")})

        use({'VonHeikemen/searchbox.nvim',
            requires = {'MunifTanjim/nui.nvim'}})

        use({"nvim-telescope/telescope.nvim",
            module = "telescope",
            cmd = "Telescope",
            requires = {{"nvim-lua/popup.nvim"},
                        {"nvim-lua/plenary.nvim"},
                        {"nvim-telescope/telescope-fzf-native.nvim", run = "make" },
                        },
            config = get_config("telescope"),})

        use({"nvim-telescope/telescope-file-browser.nvim"})

        if packer_bootstrap then
            print "Restart Neovim required after installation!"
            require("packer").sync()
        end
    end

    packer_init()
    local packer = require "packer"
    packer.init(conf)
    packer.startup(plugins)
end

return M
