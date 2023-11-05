module main

import term.ui as tui
import time

struct App {
mut:
	tui &tui.Context = unsafe { nil }
}

const (
	color_rpm_hlm = tui.Color{
		r: 68
		g: 65
		b: 90
	}
	color_rpm_hlh = tui.Color{
		r: 86
		g: 82
		b: 110
	}
)

enum ClockSegment {
	_1
	_2
	_3
	_4
	_5
	_6
	_7
	_8
	_9
	_0
	colon
	space
	am
	pm
}

fn event(e &tui.Event, x voidptr) {
	if e.typ == .key_down {
		match e.code {
			.escape, .q	{ exit(0) }
			else		{}
		}
	}
}

fn (mut a App) draw_number(seg ClockSegment, draw bool, start_x int, start_y int) int {
	match seg {
		._1 {
			if draw {
				a.tui.draw_text(start_x, start_y,		' d888  ')
				a.tui.draw_text(start_x, start_y + 1,	'd8888  ')
				a.tui.draw_text(start_x, start_y + 2,	'  888  ')
				a.tui.draw_text(start_x, start_y + 3,	'  888  ')
				a.tui.draw_text(start_x, start_y + 4,	'  888  ')
				a.tui.draw_text(start_x, start_y + 5,	'  888  ')
				a.tui.draw_text(start_x, start_y + 6,	'  888  ')
				a.tui.draw_text(start_x, start_y + 7,	'8888888')
			}
			return 7
		}
		._2 {
			if draw {
				a.tui.draw_text(start_x, start_y,		' .d8888b. ')
				a.tui.draw_text(start_x, start_y + 1,	'd88P  Y88b')
				a.tui.draw_text(start_x, start_y + 2,	'       888')
				a.tui.draw_text(start_x, start_y + 3,	'     .d88P')
				a.tui.draw_text(start_x, start_y + 4,	' .od888P" ')
				a.tui.draw_text(start_x, start_y + 5,	'd88P"     ')
				a.tui.draw_text(start_x, start_y + 6,	'888"      ')
				a.tui.draw_text(start_x, start_y + 7,	'888888888 ')
			}
			return 10
		}
		._3 {
			if draw {
				a.tui.draw_text(start_x, start_y,		' .d8888b. ')
				a.tui.draw_text(start_x, start_y + 1,	'd88P  Y88b')
				a.tui.draw_text(start_x, start_y + 2,	'     .d88P')
				a.tui.draw_text(start_x, start_y + 3,	'    8888" ')
				a.tui.draw_text(start_x, start_y + 4,	'     "Y8b.')
				a.tui.draw_text(start_x, start_y + 5,	'888    888')
				a.tui.draw_text(start_x, start_y + 6,	'Y88b  d88P')
				a.tui.draw_text(start_x, start_y + 7,	' "Y8888P" ')
			}
			return 10
		}
		._4 {
			if draw {
				a.tui.draw_text(start_x, start_y,		'    d8888 ')
				a.tui.draw_text(start_x, start_y + 1,	'   d8P888 ')
				a.tui.draw_text(start_x, start_y + 2,	'  d8P 888 ')
				a.tui.draw_text(start_x, start_y + 3,	' d8P  888 ')
				a.tui.draw_text(start_x, start_y + 4,	'd88   888 ')
				a.tui.draw_text(start_x, start_y + 5,	'8888888888')
				a.tui.draw_text(start_x, start_y + 6,	'      888 ')
				a.tui.draw_text(start_x, start_y + 7,	'      888 ')
			}
			return 10
		}
		._5 {
			if draw {
				a.tui.draw_text(start_x, start_y,		'888888888 ')
				a.tui.draw_text(start_x, start_y + 1,	'888       ')
				a.tui.draw_text(start_x, start_y + 2,	'888       ')
				a.tui.draw_text(start_x, start_y + 3,	'8888888b. ')
				a.tui.draw_text(start_x, start_y + 4,	'    "Y88b ')
				a.tui.draw_text(start_x, start_y + 5,	'       888')
				a.tui.draw_text(start_x, start_y + 6,	'Y88b  d88P')
				a.tui.draw_text(start_x, start_y + 7,	' "Y8888P" ')
			}
			return 10
		}
		._6 {
			if draw {
				a.tui.draw_text(start_x, start_y,		' .d8888b. ')
				a.tui.draw_text(start_x, start_y + 1,	'd88P  Y88b')
				a.tui.draw_text(start_x, start_y + 2,	'888       ')
				a.tui.draw_text(start_x, start_y + 3,	'888d888b. ')
				a.tui.draw_text(start_x, start_y + 4,	'888P "Y88b')
				a.tui.draw_text(start_x, start_y + 5,	'888    888')
				a.tui.draw_text(start_x, start_y + 6,	'Y88b  d88P')
				a.tui.draw_text(start_x, start_y + 7,	' "Y8888P" ')
			}
			return 10
		}
		._7 {
			if draw {
				a.tui.draw_text(start_x, start_y,		'8888888888')
				a.tui.draw_text(start_x, start_y + 1,	'      d88P')
				a.tui.draw_text(start_x, start_y + 2,	'     d88P ')
				a.tui.draw_text(start_x, start_y + 3,	'    d88P  ')
				a.tui.draw_text(start_x, start_y + 4,	' 88888888 ')
				a.tui.draw_text(start_x, start_y + 5,	'  d88P    ')
				a.tui.draw_text(start_x, start_y + 6,	' d88P     ')
				a.tui.draw_text(start_x, start_y + 7,	'd88P      ')
			}
			return 10
		}
		._8 {
			if draw {
				a.tui.draw_text(start_x, start_y,		' .d8888b. ')
				a.tui.draw_text(start_x, start_y + 1,	'd88P  Y88b')
				a.tui.draw_text(start_x, start_y + 2,	'Y88b. d88P')
				a.tui.draw_text(start_x, start_y + 3,	' "Y88888" ')
				a.tui.draw_text(start_x, start_y + 4,	'.d8P""Y8b.')
				a.tui.draw_text(start_x, start_y + 5,	'888    888')
				a.tui.draw_text(start_x, start_y + 6,	'Y88b  d88P')
				a.tui.draw_text(start_x, start_y + 7,	' "Y8888P" ')
			}
			return 10
		}
		._9 {
			if draw {
				a.tui.draw_text(start_x, start_y,		' .d8888b. ')
				a.tui.draw_text(start_x, start_y + 1,	'd88P  Y88b')
				a.tui.draw_text(start_x, start_y + 2,	'888    888')
				a.tui.draw_text(start_x, start_y + 3,	'Y88b. d888')
				a.tui.draw_text(start_x, start_y + 4,	' "Y888P888')
				a.tui.draw_text(start_x, start_y + 5,	'       888')
				a.tui.draw_text(start_x, start_y + 6,	'Y88b  d88P')
				a.tui.draw_text(start_x, start_y + 7,	' "Y8888P" ')
			}
			return 10
		}
		._0 {
			if draw {
				a.tui.draw_text(start_x, start_y,		' .d8888b. ')
				a.tui.draw_text(start_x, start_y + 1,	'd88P  Y88b')
				a.tui.draw_text(start_x, start_y + 2,	'888    888')
				a.tui.draw_text(start_x, start_y + 3,	'888    888')
				a.tui.draw_text(start_x, start_y + 4,	'888    888')
				a.tui.draw_text(start_x, start_y + 5,	'888    888')
				a.tui.draw_text(start_x, start_y + 6,	'Y88b  d88P')
				a.tui.draw_text(start_x, start_y + 7,	' "Y8888P" ')
			}
			return 10
		}
		.colon {
			if draw {
				a.tui.draw_text(start_x, start_y,		'   ')
				a.tui.draw_text(start_x, start_y + 1,	'   ')
				a.tui.draw_text(start_x, start_y + 2,	'd8b')
				a.tui.draw_text(start_x, start_y + 3,	'Y8P')
				a.tui.draw_text(start_x, start_y + 4,	'   ')
				a.tui.draw_text(start_x, start_y + 5,	'd8b')
				a.tui.draw_text(start_x, start_y + 6,	'Y8P')
				a.tui.draw_text(start_x, start_y + 7,	'   ')
			}
			return 3
		}
		.space {
			return 1
		}
		.am {
			if draw {
				a.tui.draw_text(start_x, start_y,		'        d8888 888b     d888')
				a.tui.draw_text(start_x, start_y + 1,	'       d88888 8888b   d8888')
				a.tui.draw_text(start_x, start_y + 2,	'      d88P888 88888b.d88888')
				a.tui.draw_text(start_x, start_y + 3,	'     d88P 888 888Y88888P888')
				a.tui.draw_text(start_x, start_y + 4,	'    d88P  888 888 Y888P 888')
				a.tui.draw_text(start_x, start_y + 5,	'   d88P   888 888  Y8P  888')
				a.tui.draw_text(start_x, start_y + 6,	'  d8888888888 888   "   888')
				a.tui.draw_text(start_x, start_y + 7,	' d88P     888 888       888')
			}
			return 27
		}
		.pm {
			if draw {
				a.tui.draw_text(start_x, start_y,		' 8888888b.  888b     d888')
				a.tui.draw_text(start_x, start_y + 1,	' 888   Y88b 8888b   d8888')
				a.tui.draw_text(start_x, start_y + 2,	' 888    888 88888b.d88888')
				a.tui.draw_text(start_x, start_y + 3,	' 888   d88P 888Y88888P888')
				a.tui.draw_text(start_x, start_y + 4,	' 8888888P"  888 Y888P 888')
				a.tui.draw_text(start_x, start_y + 5,	' 888        888  Y8P  888')
				a.tui.draw_text(start_x, start_y + 6,	' 888        888   "   888')
				a.tui.draw_text(start_x, start_y + 7,	' 888        888       888')
			}
			return 25
		}
	}
}

fn frame(x voidptr) {
	mut app := unsafe { &App(x) }

	app.tui.clear()
	time_display := time.now().custom_format('h:mm:ss')

	mut clock_x, clock_y := 4, (app.tui.window_height - 7) / 2
	for clock_char in time_display {
		seg := match clock_char.ascii_str() {
			'1' 	{ ClockSegment._1 }
			'2' 	{ ClockSegment._2 }
			'3' 	{ ClockSegment._3 }
			'4' 	{ ClockSegment._4 }
			'5' 	{ ClockSegment._5 }
			'6' 	{ ClockSegment._6 }
			'7' 	{ ClockSegment._7 }
			'8' 	{ ClockSegment._8 }
			'9' 	{ ClockSegment._9 }
			'0'		{ ClockSegment._0 }
			':'		{ ClockSegment.colon }
			else	{ ClockSegment.space }
		}
		if seg == .colon {
			app.tui.set_color(color_rpm_hlm)
		} else {
			app.tui.set_color(color_rpm_hlh)
		}
		clock_x += app.draw_number(seg, true, clock_x, clock_y) + 1
	}

	time_ampm := time.now().custom_format('A')
	app.tui.set_color(color_rpm_hlm)
	match time_ampm {
		'AM' { app.draw_number(.am, true, clock_x, clock_y) }
		'PM' { app.draw_number(.pm, true, clock_x, clock_y) }
		else {}
	}
	app.tui.set_color(color_rpm_hlh)

	app.tui.set_cursor_position(0, 0)

	app.tui.reset()
	app.tui.flush()
}

fn main() {
	mut app := &App{}
	app.tui = tui.init(
		user_data: app
		event_fn: event
		frame_fn: frame
		hide_cursor: true
		window_title: 'vclk'
	)
	app.tui.run()!
}
