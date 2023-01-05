	return {
		s({
			trig = "meta",
			namr = "Metadata",
			dscr = "Yaml metadata format for markdown"
		}, {
				t({ "---",
					"title: " }), i(1, "note_title"), t({ "",
					"author: " }), i(2, "author"), t({ "",
					"date: " }), f(date, {}), t({ "",
					"categories: [" }), i(3, ""), t({ "]",
					"tags: [" }), i(4), t({ "]",
					"comments: true",
					"---", "" }),
				i(0)
			}),
	}
