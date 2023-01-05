return {
	s({ trig = "pp", namr = "prettyprint object", dscr = "prettyprint object or array", }, {
		t({ "console.log('> " }),
		i(1, "value"),
		t({ "\\n', inspect(" }),
		rep(1),
		t({ ", true, null, true))" }),
		i(0)
	}),
	s({ trig = "ffi", namr = "console", dscr = "console an IN HERE" }, {
		t({ "console.log('" }),
		i(1, "number"),
		t({ ". IN HERE!')" }),
		i(0)
	}),
	s({ trig = "ff", namr = "console", dscr = "console log value.  USE \\DS", }, {
		t({ "console.log('" }),
		i(1, "number"),
		t({ "', " }),
		rep(1),
		t({ ");" }),
		i(0)
	}),
}
-- 		-- only an example of how to call a function
-- 		s({
-- 			trig = "date",
-- 			namr = "Date",
-- 			dscr = "DUMMY",
-- 		}, {
-- 			func(date, {}),
-- 		}),
-- })

-- snippet ppset "prettyprint a Set"
-- console.log('> $1 (Set)\n', inspect(Array.from(${1:${VISUAL}}, true, null, true))
-- endsnippet
--
-- snippet ppo "prettyprint Obvservable Object or Array"
-- ${1:${VISUAL}}.subscribe((${1:${VISUAL}}_v) => console.log('> $1\n', inspect(${1:${VISUAL}}_v, true, null, true)));
-- endsnippet
--
-- snippet pposet "prettyprint Obvservable Set"
-- ${1:${VISUAL}}.subscribe((set) => console.log('> $1 (Set)\n', inspect(Array.from(set), true, null, true)));
-- endsnippet
--
