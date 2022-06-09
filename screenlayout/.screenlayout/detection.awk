BEGIN {
  display_index = 0
  primary = ""
}
$2 == "connected" {
    display[display_index] = $1
    display_index++
}
$3 == "primary" {
    primary = $1
}
END {
    out = ""
    # off_or_secondary = ""
    primary_switch = "--primary"
    primary_done = 0
    for (display_index in display) {
        if (display[display_index] == primary) {
            out = sprintf("%s --output %s %s", out, display[display_index], off)
        } else {
            out = sprintf("%s --output %s %s %s", out, display[display_index], primary_switch, setup)
            primary_switch = ""
        }
    }
    printf("%s %s", "xrandr ", out)
}
