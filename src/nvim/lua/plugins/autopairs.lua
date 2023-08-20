local npairs_status, npairs = pcall(require, "nvim-autopairs")
if not npairs_status then
    return
end

npairs.setup {
    check_ts = true,
    ts_config = {
        lua = {"string", "source"},
        javascript = {"string", "template_string"}
    },
    fast_wrap = {
        map = "<M-e>",
        chars = {"{", "[", "(", '"', "'"},
        pattern = [=[[%'%"%)%>%]%)%}%,]]=],
        end_key = "$",
        keys = "qwertyuiopzxcvbnmasdfghjkl",
        check_comma = true,
        highlight = "Search",
        highlight_grey = "Comment"
    }
}

-- 配置这个使得自动补全会把括号带上

local cmp_autopairs_status, cmp_autopairs = pcall(require "nvim-autopairs.completion.cmp")
if not cmp_autopairs then
    return
end
local cmp_status_status, cmp = pcall(require, "cmp")
if not cmp_status_status then
    return
end

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done {map_char = {tex = ""}})
