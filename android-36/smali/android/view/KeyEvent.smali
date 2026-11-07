.class public Landroid/view/KeyEvent;
.super Landroid/view/InputEvent;
.source "KeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyEvent$Callback;,
        Landroid/view/KeyEvent$DispatcherState;,
        Landroid/view/KeyEvent$Flag;,
        Landroid/view/KeyEvent$MetaState;,
        Landroid/view/KeyEvent$Action;,
        Landroid/view/KeyEvent$KeyCode;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_DOWN:I = 0x0

.field public static final whitelist ACTION_MULTIPLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_UP:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o DEBUG:Z = false

.field public static final whitelist FLAG_CANCELED:I = 0x20

.field public static final whitelist FLAG_CANCELED_LONG_PRESS:I = 0x100

.field public static final whitelist FLAG_EDITOR_ACTION:I = 0x10

.field public static final whitelist FLAG_FALLBACK:I = 0x400

.field public static final whitelist FLAG_FROM_SYSTEM:I = 0x8

.field public static final blacklist FLAG_IS_ACCESSIBILITY_EVENT:I = 0x800

.field public static final whitelist FLAG_KEEP_TOUCH_MODE:I = 0x4

.field public static final whitelist FLAG_LONG_PRESS:I = 0x80

.field public static final greylist-max-o FLAG_PREDISPATCH:I = 0x20000000

.field public static final whitelist FLAG_SOFT_KEYBOARD:I = 0x2

.field public static final greylist-max-o FLAG_START_TRACKING:I = 0x40000000

.field public static final greylist-max-o FLAG_TAINTED:I = -0x80000000

.field public static final whitelist FLAG_TRACKING:I = 0x200

.field public static final whitelist FLAG_VIRTUAL_HARD_KEY:I = 0x40

.field public static final whitelist FLAG_WOKE_HERE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEYCODE_0:I = 0x7

.field public static final whitelist KEYCODE_1:I = 0x8

.field public static final whitelist KEYCODE_11:I = 0xe3

.field public static final whitelist KEYCODE_12:I = 0xe4

.field public static final whitelist KEYCODE_2:I = 0x9

.field public static final whitelist KEYCODE_3:I = 0xa

.field public static final whitelist KEYCODE_3D_MODE:I = 0xce

.field public static final whitelist KEYCODE_4:I = 0xb

.field public static final whitelist KEYCODE_5:I = 0xc

.field public static final whitelist KEYCODE_6:I = 0xd

.field public static final whitelist KEYCODE_7:I = 0xe

.field public static final whitelist KEYCODE_8:I = 0xf

.field public static final whitelist KEYCODE_9:I = 0x10

.field public static final whitelist KEYCODE_A:I = 0x1d

.field public static final whitelist KEYCODE_ALL_APPS:I = 0x11c

.field public static final whitelist KEYCODE_ALT_LEFT:I = 0x39

.field public static final whitelist KEYCODE_ALT_RIGHT:I = 0x3a

.field public static final whitelist KEYCODE_APOSTROPHE:I = 0x4b

.field public static final whitelist KEYCODE_APP_SWITCH:I = 0xbb

.field public static final whitelist KEYCODE_ASSIST:I = 0xdb

.field public static final whitelist KEYCODE_AT:I = 0x4d

.field public static final whitelist KEYCODE_AVR_INPUT:I = 0xb6

.field public static final whitelist KEYCODE_AVR_POWER:I = 0xb5

.field public static final whitelist KEYCODE_B:I = 0x1e

.field public static final whitelist KEYCODE_BACK:I = 0x4

.field public static final whitelist KEYCODE_BACKSLASH:I = 0x49

.field public static final whitelist KEYCODE_BOOKMARK:I = 0xae

.field public static final whitelist KEYCODE_BREAK:I = 0x79

.field public static final whitelist KEYCODE_BRIGHTNESS_DOWN:I = 0xdc

.field public static final whitelist KEYCODE_BRIGHTNESS_UP:I = 0xdd

.field public static final whitelist KEYCODE_BUTTON_1:I = 0xbc

.field public static final whitelist KEYCODE_BUTTON_10:I = 0xc5

.field public static final whitelist KEYCODE_BUTTON_11:I = 0xc6

.field public static final whitelist KEYCODE_BUTTON_12:I = 0xc7

.field public static final whitelist KEYCODE_BUTTON_13:I = 0xc8

.field public static final whitelist KEYCODE_BUTTON_14:I = 0xc9

.field public static final whitelist KEYCODE_BUTTON_15:I = 0xca

.field public static final whitelist KEYCODE_BUTTON_16:I = 0xcb

.field public static final whitelist KEYCODE_BUTTON_2:I = 0xbd

.field public static final whitelist KEYCODE_BUTTON_3:I = 0xbe

.field public static final whitelist KEYCODE_BUTTON_4:I = 0xbf

.field public static final whitelist KEYCODE_BUTTON_5:I = 0xc0

.field public static final whitelist KEYCODE_BUTTON_6:I = 0xc1

.field public static final whitelist KEYCODE_BUTTON_7:I = 0xc2

.field public static final whitelist KEYCODE_BUTTON_8:I = 0xc3

.field public static final whitelist KEYCODE_BUTTON_9:I = 0xc4

.field public static final whitelist KEYCODE_BUTTON_A:I = 0x60

.field public static final whitelist KEYCODE_BUTTON_B:I = 0x61

.field public static final whitelist KEYCODE_BUTTON_C:I = 0x62

.field public static final whitelist KEYCODE_BUTTON_L1:I = 0x66

.field public static final whitelist KEYCODE_BUTTON_L2:I = 0x68

.field public static final whitelist KEYCODE_BUTTON_MODE:I = 0x6e

.field public static final whitelist KEYCODE_BUTTON_R1:I = 0x67

.field public static final whitelist KEYCODE_BUTTON_R2:I = 0x69

.field public static final whitelist KEYCODE_BUTTON_SELECT:I = 0x6d

.field public static final whitelist KEYCODE_BUTTON_START:I = 0x6c

.field public static final whitelist KEYCODE_BUTTON_THUMBL:I = 0x6a

.field public static final whitelist KEYCODE_BUTTON_THUMBR:I = 0x6b

.field public static final whitelist KEYCODE_BUTTON_X:I = 0x63

.field public static final whitelist KEYCODE_BUTTON_Y:I = 0x64

.field public static final whitelist KEYCODE_BUTTON_Z:I = 0x65

.field public static final whitelist KEYCODE_C:I = 0x1f

.field public static final whitelist KEYCODE_CALCULATOR:I = 0xd2

.field public static final whitelist KEYCODE_CALENDAR:I = 0xd0

.field public static final whitelist KEYCODE_CALL:I = 0x5

.field public static final whitelist KEYCODE_CAMERA:I = 0x1b

.field public static final whitelist KEYCODE_CAPS_LOCK:I = 0x73

.field public static final whitelist KEYCODE_CAPTIONS:I = 0xaf

.field public static final whitelist KEYCODE_CHANNEL_DOWN:I = 0xa7

.field public static final whitelist KEYCODE_CHANNEL_UP:I = 0xa6

.field public static final whitelist KEYCODE_CLEAR:I = 0x1c

.field public static final whitelist KEYCODE_CLOSE:I = 0x141

.field public static final whitelist KEYCODE_COMMA:I = 0x37

.field public static final whitelist KEYCODE_CONTACTS:I = 0xcf

.field public static final whitelist KEYCODE_COPY:I = 0x116

.field public static final whitelist KEYCODE_CTRL_LEFT:I = 0x71

.field public static final whitelist KEYCODE_CTRL_RIGHT:I = 0x72

.field public static final whitelist KEYCODE_CUT:I = 0x115

.field public static final whitelist KEYCODE_D:I = 0x20

.field public static final whitelist KEYCODE_DEL:I = 0x43

.field public static final whitelist KEYCODE_DEMO_APP_1:I = 0x12d

.field public static final whitelist KEYCODE_DEMO_APP_2:I = 0x12e

.field public static final whitelist KEYCODE_DEMO_APP_3:I = 0x12f

.field public static final whitelist KEYCODE_DEMO_APP_4:I = 0x130

.field public static final whitelist KEYCODE_DICTATE:I = 0x13f

.field public static final whitelist KEYCODE_DO_NOT_DISTURB:I = 0x142

.field public static final whitelist KEYCODE_DPAD_CENTER:I = 0x17

.field public static final whitelist KEYCODE_DPAD_DOWN:I = 0x14

.field public static final whitelist KEYCODE_DPAD_DOWN_LEFT:I = 0x10d

.field public static final whitelist KEYCODE_DPAD_DOWN_RIGHT:I = 0x10f

.field public static final whitelist KEYCODE_DPAD_LEFT:I = 0x15

.field public static final whitelist KEYCODE_DPAD_RIGHT:I = 0x16

.field public static final whitelist KEYCODE_DPAD_UP:I = 0x13

.field public static final whitelist KEYCODE_DPAD_UP_LEFT:I = 0x10c

.field public static final whitelist KEYCODE_DPAD_UP_RIGHT:I = 0x10e

.field public static final whitelist KEYCODE_DVR:I = 0xad

.field public static final whitelist KEYCODE_E:I = 0x21

.field public static final whitelist KEYCODE_EISU:I = 0xd4

.field public static final whitelist KEYCODE_EMOJI_PICKER:I = 0x13d

.field public static final whitelist KEYCODE_ENDCALL:I = 0x6

.field public static final whitelist KEYCODE_ENTER:I = 0x42

.field public static final whitelist KEYCODE_ENVELOPE:I = 0x41

.field public static final whitelist KEYCODE_EQUALS:I = 0x46

.field public static final whitelist KEYCODE_ESCAPE:I = 0x6f

.field public static final whitelist KEYCODE_EXPLORER:I = 0x40

.field public static final whitelist KEYCODE_F:I = 0x22

.field public static final whitelist KEYCODE_F1:I = 0x83

.field public static final whitelist KEYCODE_F10:I = 0x8c

.field public static final whitelist KEYCODE_F11:I = 0x8d

.field public static final whitelist KEYCODE_F12:I = 0x8e

.field public static final whitelist KEYCODE_F13:I = 0x146

.field public static final whitelist KEYCODE_F14:I = 0x147

.field public static final whitelist KEYCODE_F15:I = 0x148

.field public static final whitelist KEYCODE_F16:I = 0x149

.field public static final whitelist KEYCODE_F17:I = 0x14a

.field public static final whitelist KEYCODE_F18:I = 0x14b

.field public static final whitelist KEYCODE_F19:I = 0x14c

.field public static final whitelist KEYCODE_F2:I = 0x84

.field public static final whitelist KEYCODE_F20:I = 0x14d

.field public static final whitelist KEYCODE_F21:I = 0x14e

.field public static final whitelist KEYCODE_F22:I = 0x14f

.field public static final whitelist KEYCODE_F23:I = 0x150

.field public static final whitelist KEYCODE_F24:I = 0x151

.field public static final whitelist KEYCODE_F3:I = 0x85

.field public static final whitelist KEYCODE_F4:I = 0x86

.field public static final whitelist KEYCODE_F5:I = 0x87

.field public static final whitelist KEYCODE_F6:I = 0x88

.field public static final whitelist KEYCODE_F7:I = 0x89

.field public static final whitelist KEYCODE_F8:I = 0x8a

.field public static final whitelist KEYCODE_F9:I = 0x8b

.field public static final whitelist KEYCODE_FEATURED_APP_1:I = 0x129

.field public static final whitelist KEYCODE_FEATURED_APP_2:I = 0x12a

.field public static final whitelist KEYCODE_FEATURED_APP_3:I = 0x12b

.field public static final whitelist KEYCODE_FEATURED_APP_4:I = 0x12c

.field public static final whitelist KEYCODE_FOCUS:I = 0x50

.field public static final whitelist KEYCODE_FORWARD:I = 0x7d

.field public static final whitelist KEYCODE_FORWARD_DEL:I = 0x70

.field public static final whitelist KEYCODE_FULLSCREEN:I = 0x145

.field public static final whitelist KEYCODE_FUNCTION:I = 0x77

.field public static final whitelist KEYCODE_G:I = 0x23

.field public static final whitelist KEYCODE_GRAVE:I = 0x44

.field public static final whitelist KEYCODE_GUIDE:I = 0xac

.field public static final whitelist KEYCODE_H:I = 0x24

.field public static final whitelist KEYCODE_HEADSETHOOK:I = 0x4f

.field public static final whitelist KEYCODE_HELP:I = 0x103

.field public static final whitelist KEYCODE_HENKAN:I = 0xd6

.field public static final whitelist KEYCODE_HOME:I = 0x3

.field public static final whitelist KEYCODE_I:I = 0x25

.field public static final whitelist KEYCODE_INFO:I = 0xa5

.field public static final whitelist KEYCODE_INSERT:I = 0x7c

.field public static final whitelist KEYCODE_J:I = 0x26

.field public static final whitelist KEYCODE_K:I = 0x27

.field public static final whitelist KEYCODE_KANA:I = 0xda

.field public static final whitelist KEYCODE_KATAKANA_HIRAGANA:I = 0xd7

.field public static final whitelist KEYCODE_KEYBOARD_BACKLIGHT_DOWN:I = 0x131

.field public static final whitelist KEYCODE_KEYBOARD_BACKLIGHT_TOGGLE:I = 0x133

.field public static final whitelist KEYCODE_KEYBOARD_BACKLIGHT_UP:I = 0x132

.field public static final whitelist KEYCODE_L:I = 0x28

.field public static final whitelist KEYCODE_LANGUAGE_SWITCH:I = 0xcc

.field public static final whitelist KEYCODE_LAST_CHANNEL:I = 0xe5

.field public static final whitelist KEYCODE_LEFT_BRACKET:I = 0x47

.field public static final whitelist KEYCODE_LOCK:I = 0x144

.field public static final whitelist KEYCODE_M:I = 0x29

.field public static final whitelist KEYCODE_MACRO_1:I = 0x139

.field public static final whitelist KEYCODE_MACRO_2:I = 0x13a

.field public static final whitelist KEYCODE_MACRO_3:I = 0x13b

.field public static final whitelist KEYCODE_MACRO_4:I = 0x13c

.field public static final whitelist KEYCODE_MANNER_MODE:I = 0xcd

.field public static final whitelist KEYCODE_MEDIA_AUDIO_TRACK:I = 0xde

.field public static final whitelist KEYCODE_MEDIA_CLOSE:I = 0x80

.field public static final whitelist KEYCODE_MEDIA_EJECT:I = 0x81

.field public static final whitelist KEYCODE_MEDIA_FAST_FORWARD:I = 0x5a

.field public static final whitelist KEYCODE_MEDIA_NEXT:I = 0x57

.field public static final whitelist KEYCODE_MEDIA_PAUSE:I = 0x7f

.field public static final whitelist KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final whitelist KEYCODE_MEDIA_PLAY_PAUSE:I = 0x55

.field public static final whitelist KEYCODE_MEDIA_PREVIOUS:I = 0x58

.field public static final whitelist KEYCODE_MEDIA_RECORD:I = 0x82

.field public static final whitelist KEYCODE_MEDIA_REWIND:I = 0x59

.field public static final whitelist KEYCODE_MEDIA_SKIP_BACKWARD:I = 0x111

.field public static final whitelist KEYCODE_MEDIA_SKIP_FORWARD:I = 0x110

.field public static final whitelist KEYCODE_MEDIA_STEP_BACKWARD:I = 0x113

.field public static final whitelist KEYCODE_MEDIA_STEP_FORWARD:I = 0x112

.field public static final whitelist KEYCODE_MEDIA_STOP:I = 0x56

.field public static final whitelist KEYCODE_MEDIA_TOP_MENU:I = 0xe2

.field public static final whitelist KEYCODE_MENU:I = 0x52

.field public static final whitelist KEYCODE_META_LEFT:I = 0x75

.field public static final whitelist KEYCODE_META_RIGHT:I = 0x76

.field public static final whitelist KEYCODE_MINUS:I = 0x45

.field public static final whitelist KEYCODE_MOVE_END:I = 0x7b

.field public static final whitelist KEYCODE_MOVE_HOME:I = 0x7a

.field public static final whitelist KEYCODE_MUHENKAN:I = 0xd5

.field public static final whitelist KEYCODE_MUSIC:I = 0xd1

.field public static final whitelist KEYCODE_MUTE:I = 0x5b

.field public static final whitelist KEYCODE_N:I = 0x2a

.field public static final whitelist KEYCODE_NAVIGATE_IN:I = 0x106

.field public static final whitelist KEYCODE_NAVIGATE_NEXT:I = 0x105

.field public static final whitelist KEYCODE_NAVIGATE_OUT:I = 0x107

.field public static final whitelist KEYCODE_NAVIGATE_PREVIOUS:I = 0x104

.field public static final whitelist KEYCODE_NEW:I = 0x140

.field public static final whitelist KEYCODE_NOTIFICATION:I = 0x53

.field public static final whitelist KEYCODE_NUM:I = 0x4e

.field public static final whitelist KEYCODE_NUMPAD_0:I = 0x90

.field public static final whitelist KEYCODE_NUMPAD_1:I = 0x91

.field public static final whitelist KEYCODE_NUMPAD_2:I = 0x92

.field public static final whitelist KEYCODE_NUMPAD_3:I = 0x93

.field public static final whitelist KEYCODE_NUMPAD_4:I = 0x94

.field public static final whitelist KEYCODE_NUMPAD_5:I = 0x95

.field public static final whitelist KEYCODE_NUMPAD_6:I = 0x96

.field public static final whitelist KEYCODE_NUMPAD_7:I = 0x97

.field public static final whitelist KEYCODE_NUMPAD_8:I = 0x98

.field public static final whitelist KEYCODE_NUMPAD_9:I = 0x99

.field public static final whitelist KEYCODE_NUMPAD_ADD:I = 0x9d

.field public static final whitelist KEYCODE_NUMPAD_COMMA:I = 0x9f

.field public static final whitelist KEYCODE_NUMPAD_DIVIDE:I = 0x9a

.field public static final whitelist KEYCODE_NUMPAD_DOT:I = 0x9e

.field public static final whitelist KEYCODE_NUMPAD_ENTER:I = 0xa0

.field public static final whitelist KEYCODE_NUMPAD_EQUALS:I = 0xa1

.field public static final whitelist KEYCODE_NUMPAD_LEFT_PAREN:I = 0xa2

.field public static final whitelist KEYCODE_NUMPAD_MULTIPLY:I = 0x9b

.field public static final whitelist KEYCODE_NUMPAD_RIGHT_PAREN:I = 0xa3

.field public static final whitelist KEYCODE_NUMPAD_SUBTRACT:I = 0x9c

.field public static final whitelist KEYCODE_NUM_LOCK:I = 0x8f

.field public static final whitelist KEYCODE_O:I = 0x2b

.field public static final whitelist KEYCODE_P:I = 0x2c

.field public static final whitelist KEYCODE_PAGE_DOWN:I = 0x5d

.field public static final whitelist KEYCODE_PAGE_UP:I = 0x5c

.field public static final whitelist KEYCODE_PAIRING:I = 0xe1

.field public static final whitelist KEYCODE_PASTE:I = 0x117

.field public static final whitelist KEYCODE_PERIOD:I = 0x38

.field public static final whitelist KEYCODE_PICTSYMBOLS:I = 0x5e

.field public static final whitelist KEYCODE_PLUS:I = 0x51

.field public static final whitelist KEYCODE_POUND:I = 0x12

.field public static final whitelist KEYCODE_POWER:I = 0x1a

.field public static final whitelist KEYCODE_PRINT:I = 0x143

.field public static final whitelist KEYCODE_PROFILE_SWITCH:I = 0x120

.field public static final whitelist KEYCODE_PROG_BLUE:I = 0xba

.field public static final whitelist KEYCODE_PROG_GREEN:I = 0xb8

.field public static final whitelist KEYCODE_PROG_RED:I = 0xb7

.field public static final whitelist KEYCODE_PROG_YELLOW:I = 0xb9

.field public static final whitelist KEYCODE_Q:I = 0x2d

.field public static final whitelist KEYCODE_R:I = 0x2e

.field public static final whitelist KEYCODE_RECENT_APPS:I = 0x138

.field public static final whitelist KEYCODE_REFRESH:I = 0x11d

.field public static final whitelist KEYCODE_RIGHT_BRACKET:I = 0x48

.field public static final whitelist KEYCODE_RO:I = 0xd9

.field public static final whitelist KEYCODE_S:I = 0x2f

.field public static final whitelist KEYCODE_SCREENSHOT:I = 0x13e

.field public static final whitelist KEYCODE_SCROLL_LOCK:I = 0x74

.field public static final whitelist KEYCODE_SEARCH:I = 0x54

.field public static final whitelist KEYCODE_SEMICOLON:I = 0x4a

.field public static final whitelist KEYCODE_SETTINGS:I = 0xb0

.field public static final whitelist KEYCODE_SHIFT_LEFT:I = 0x3b

.field public static final whitelist KEYCODE_SHIFT_RIGHT:I = 0x3c

.field public static final whitelist KEYCODE_SLASH:I = 0x4c

.field public static final whitelist KEYCODE_SLEEP:I = 0xdf

.field public static final whitelist KEYCODE_SOFT_LEFT:I = 0x1

.field public static final whitelist KEYCODE_SOFT_RIGHT:I = 0x2

.field public static final whitelist KEYCODE_SOFT_SLEEP:I = 0x114

.field public static final whitelist KEYCODE_SPACE:I = 0x3e

.field public static final whitelist KEYCODE_STAR:I = 0x11

.field public static final whitelist KEYCODE_STB_INPUT:I = 0xb4

.field public static final whitelist KEYCODE_STB_POWER:I = 0xb3

.field public static final whitelist KEYCODE_STEM_1:I = 0x109

.field public static final whitelist KEYCODE_STEM_2:I = 0x10a

.field public static final whitelist KEYCODE_STEM_3:I = 0x10b

.field public static final whitelist KEYCODE_STEM_PRIMARY:I = 0x108

.field public static final whitelist KEYCODE_STYLUS_BUTTON_PRIMARY:I = 0x134

.field public static final whitelist KEYCODE_STYLUS_BUTTON_SECONDARY:I = 0x135

.field public static final whitelist KEYCODE_STYLUS_BUTTON_TAIL:I = 0x137

.field public static final whitelist KEYCODE_STYLUS_BUTTON_TERTIARY:I = 0x136

.field public static final whitelist KEYCODE_SWITCH_CHARSET:I = 0x5f

.field public static final whitelist KEYCODE_SYM:I = 0x3f

.field public static final whitelist KEYCODE_SYSRQ:I = 0x78

.field public static final whitelist KEYCODE_SYSTEM_NAVIGATION_DOWN:I = 0x119

.field public static final whitelist KEYCODE_SYSTEM_NAVIGATION_LEFT:I = 0x11a

.field public static final whitelist KEYCODE_SYSTEM_NAVIGATION_RIGHT:I = 0x11b

.field public static final whitelist KEYCODE_SYSTEM_NAVIGATION_UP:I = 0x118

.field public static final whitelist KEYCODE_T:I = 0x30

.field public static final whitelist KEYCODE_TAB:I = 0x3d

.field public static final whitelist KEYCODE_THUMBS_DOWN:I = 0x11f

.field public static final whitelist KEYCODE_THUMBS_UP:I = 0x11e

.field public static final whitelist KEYCODE_TV:I = 0xaa

.field public static final whitelist KEYCODE_TV_ANTENNA_CABLE:I = 0xf2

.field public static final whitelist KEYCODE_TV_AUDIO_DESCRIPTION:I = 0xfc

.field public static final whitelist KEYCODE_TV_AUDIO_DESCRIPTION_MIX_DOWN:I = 0xfe

.field public static final whitelist KEYCODE_TV_AUDIO_DESCRIPTION_MIX_UP:I = 0xfd

.field public static final whitelist KEYCODE_TV_CONTENTS_MENU:I = 0x100

.field public static final whitelist KEYCODE_TV_DATA_SERVICE:I = 0xe6

.field public static final whitelist KEYCODE_TV_INPUT:I = 0xb2

.field public static final whitelist KEYCODE_TV_INPUT_COMPONENT_1:I = 0xf9

.field public static final whitelist KEYCODE_TV_INPUT_COMPONENT_2:I = 0xfa

.field public static final whitelist KEYCODE_TV_INPUT_COMPOSITE_1:I = 0xf7

.field public static final whitelist KEYCODE_TV_INPUT_COMPOSITE_2:I = 0xf8

.field public static final whitelist KEYCODE_TV_INPUT_HDMI_1:I = 0xf3

.field public static final whitelist KEYCODE_TV_INPUT_HDMI_2:I = 0xf4

.field public static final whitelist KEYCODE_TV_INPUT_HDMI_3:I = 0xf5

.field public static final whitelist KEYCODE_TV_INPUT_HDMI_4:I = 0xf6

.field public static final whitelist KEYCODE_TV_INPUT_VGA_1:I = 0xfb

.field public static final whitelist KEYCODE_TV_MEDIA_CONTEXT_MENU:I = 0x101

.field public static final whitelist KEYCODE_TV_NETWORK:I = 0xf1

.field public static final whitelist KEYCODE_TV_NUMBER_ENTRY:I = 0xea

.field public static final whitelist KEYCODE_TV_POWER:I = 0xb1

.field public static final whitelist KEYCODE_TV_RADIO_SERVICE:I = 0xe8

.field public static final whitelist KEYCODE_TV_SATELLITE:I = 0xed

.field public static final whitelist KEYCODE_TV_SATELLITE_BS:I = 0xee

.field public static final whitelist KEYCODE_TV_SATELLITE_CS:I = 0xef

.field public static final whitelist KEYCODE_TV_SATELLITE_SERVICE:I = 0xf0

.field public static final whitelist KEYCODE_TV_TELETEXT:I = 0xe9

.field public static final whitelist KEYCODE_TV_TERRESTRIAL_ANALOG:I = 0xeb

.field public static final whitelist KEYCODE_TV_TERRESTRIAL_DIGITAL:I = 0xec

.field public static final whitelist KEYCODE_TV_TIMER_PROGRAMMING:I = 0x102

.field public static final whitelist KEYCODE_TV_ZOOM_MODE:I = 0xff

.field public static final whitelist KEYCODE_U:I = 0x31

.field public static final whitelist KEYCODE_UNKNOWN:I = 0x0

.field public static final whitelist KEYCODE_V:I = 0x32

.field public static final whitelist KEYCODE_VIDEO_APP_1:I = 0x121

.field public static final whitelist KEYCODE_VIDEO_APP_2:I = 0x122

.field public static final whitelist KEYCODE_VIDEO_APP_3:I = 0x123

.field public static final whitelist KEYCODE_VIDEO_APP_4:I = 0x124

.field public static final whitelist KEYCODE_VIDEO_APP_5:I = 0x125

.field public static final whitelist KEYCODE_VIDEO_APP_6:I = 0x126

.field public static final whitelist KEYCODE_VIDEO_APP_7:I = 0x127

.field public static final whitelist KEYCODE_VIDEO_APP_8:I = 0x128

.field public static final whitelist KEYCODE_VOICE_ASSIST:I = 0xe7

.field public static final whitelist KEYCODE_VOLUME_DOWN:I = 0x19

.field public static final whitelist KEYCODE_VOLUME_MUTE:I = 0xa4

.field public static final whitelist KEYCODE_VOLUME_UP:I = 0x18

.field public static final whitelist KEYCODE_W:I = 0x33

.field public static final whitelist KEYCODE_WAKEUP:I = 0xe0

.field public static final whitelist KEYCODE_WINDOW:I = 0xab

.field public static final whitelist KEYCODE_X:I = 0x34

.field public static final whitelist KEYCODE_Y:I = 0x35

.field public static final whitelist KEYCODE_YEN:I = 0xd8

.field public static final whitelist KEYCODE_Z:I = 0x36

.field public static final whitelist KEYCODE_ZENKAKU_HANKAKU:I = 0xd3

.field public static final whitelist KEYCODE_ZOOM_IN:I = 0xa8

.field public static final whitelist KEYCODE_ZOOM_OUT:I = 0xa9

.field private static final greylist-max-o LABEL_PREFIX:Ljava/lang/String; = "KEYCODE_"

.field public static final greylist-max-o LAST_KEYCODE:I = 0x151

.field public static final whitelist MAX_KEYCODE:I = 0x54
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o MAX_RECYCLED:I = 0xa

.field private static final greylist-max-r META_ALL_MASK:I = 0x7770ff

.field public static final whitelist META_ALT_LEFT_ON:I = 0x10

.field public static final greylist-max-r META_ALT_LOCKED:I = 0x200

.field public static final whitelist META_ALT_MASK:I = 0x32

.field public static final whitelist META_ALT_ON:I = 0x2

.field public static final whitelist META_ALT_RIGHT_ON:I = 0x20

.field public static final whitelist META_CAPS_LOCK_ON:I = 0x100000

.field public static final greylist-max-r META_CAP_LOCKED:I = 0x100

.field public static final whitelist META_CTRL_LEFT_ON:I = 0x2000

.field public static final whitelist META_CTRL_MASK:I = 0x7000

.field public static final whitelist META_CTRL_ON:I = 0x1000

.field public static final whitelist META_CTRL_RIGHT_ON:I = 0x4000

.field public static final whitelist META_FUNCTION_ON:I = 0x8

.field private static final greylist-max-r META_INVALID_MODIFIER_MASK:I = 0x700f00

.field private static final greylist-max-r META_LOCK_MASK:I = 0x700000

.field public static final whitelist META_META_LEFT_ON:I = 0x20000

.field public static final whitelist META_META_MASK:I = 0x70000

.field public static final whitelist META_META_ON:I = 0x10000

.field public static final whitelist META_META_RIGHT_ON:I = 0x40000

.field private static final greylist-max-r META_MODIFIER_MASK:I = 0x770ff

.field public static final whitelist META_NUM_LOCK_ON:I = 0x200000

.field public static final whitelist META_SCROLL_LOCK_ON:I = 0x400000

.field public static final greylist-max-r META_SELECTING:I = 0x800

.field public static final whitelist META_SHIFT_LEFT_ON:I = 0x40

.field public static final whitelist META_SHIFT_MASK:I = 0xc1

.field public static final whitelist META_SHIFT_ON:I = 0x1

.field public static final whitelist META_SHIFT_RIGHT_ON:I = 0x80

.field private static final greylist-max-r META_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final greylist-max-r META_SYM_LOCKED:I = 0x400

.field public static final whitelist META_SYM_ON:I = 0x4

.field private static final greylist-max-r META_SYNTHETIC_MASK:I = 0xf00

.field static final greylist-max-o TAG:Ljava/lang/String; = "KeyEvent"

.field private static final greylist-max-o gRecyclerLock:Ljava/lang/Object;

.field private static greylist-max-o gRecyclerTop:Landroid/view/KeyEvent;

.field private static greylist-max-o gRecyclerUsed:I


# instance fields
.field private greylist-max-r mAction:I

.field private greylist-max-r mCharacters:Ljava/lang/String;

.field private greylist-max-r mDeviceId:I

.field private blacklist mDisplayId:I

.field private blacklist mDownTime:J

.field private blacklist mEventTime:J

.field private greylist mFlags:I

.field private blacklist mHmac:[B

.field private blacklist mId:I

.field private greylist-max-r mKeyCode:I

.field private greylist-max-r mMetaState:I

.field private greylist-max-o mNext:Landroid/view/KeyEvent;

.field private greylist-max-r mRepeatCount:I

.field private greylist-max-r mScanCode:I

.field private greylist-max-p mSource:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/view/KeyEvent;)I
    .registers 1

    iget p0, p0, Landroid/view/KeyEvent;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlags(Landroid/view/KeyEvent;I)V
    .registers 2

    iput p1, p0, Landroid/view/KeyEvent;->mFlags:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 33

    .line 1383
    const-string v31, "0x40000000"

    const-string v32, "0x80000000"

    const-string v1, "META_SHIFT_ON"

    const-string v2, "META_ALT_ON"

    const-string v3, "META_SYM_ON"

    const-string v4, "META_FUNCTION_ON"

    const-string v5, "META_ALT_LEFT_ON"

    const-string v6, "META_ALT_RIGHT_ON"

    const-string v7, "META_SHIFT_LEFT_ON"

    const-string v8, "META_SHIFT_RIGHT_ON"

    const-string v9, "META_CAP_LOCKED"

    const-string v10, "META_ALT_LOCKED"

    const-string v11, "META_SYM_LOCKED"

    const-string v12, "0x00000800"

    const-string v13, "META_CTRL_ON"

    const-string v14, "META_CTRL_LEFT_ON"

    const-string v15, "META_CTRL_RIGHT_ON"

    const-string v16, "0x00008000"

    const-string v17, "META_META_ON"

    const-string v18, "META_META_LEFT_ON"

    const-string v19, "META_META_RIGHT_ON"

    const-string v20, "0x00080000"

    const-string v21, "META_CAPS_LOCK_ON"

    const-string v22, "META_NUM_LOCK_ON"

    const-string v23, "META_SCROLL_LOCK_ON"

    const-string v24, "0x00800000"

    const-string v25, "0x01000000"

    const-string v26, "0x02000000"

    const-string v27, "0x04000000"

    const-string v28, "0x08000000"

    const-string v29, "0x10000000"

    const-string v30, "0x20000000"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 1857
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 3732
    new-instance v0, Landroid/view/KeyEvent$1;

    invoke-direct {v0}, Landroid/view/KeyEvent$1;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 15

    .line 1963
    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIILjava/lang/String;)V

    .line 1966
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 17
    .param p1, "action"    # I
    .param p2, "code"    # I

    .line 1976
    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v5, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIILjava/lang/String;)V

    .line 1979
    return-void
.end method

.method public constructor whitelist <init>(JJIII)V
    .registers 22
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I

    .line 1996
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIILjava/lang/String;)V

    .line 1999
    return-void
.end method

.method public constructor whitelist <init>(JJIIII)V
    .registers 23
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I

    .line 2017
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIILjava/lang/String;)V

    .line 2019
    return-void
.end method

.method public constructor whitelist <init>(JJIIIIII)V
    .registers 25
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I

    .line 2040
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIILjava/lang/String;)V

    .line 2042
    return-void
.end method

.method public constructor whitelist <init>(JJIIIIIII)V
    .registers 26
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I

    .line 2064
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIILjava/lang/String;)V

    .line 2066
    return-void
.end method

.method public constructor whitelist <init>(JJIIIIIIII)V
    .registers 27
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I
    .param p12, "source"    # I

    .line 2089
    const/4 v13, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIILjava/lang/String;)V

    .line 2091
    return-void
.end method

.method private constructor blacklist <init>(JJIIIIIIIILjava/lang/String;)V
    .registers 16
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I
    .param p12, "source"    # I
    .param p13, "characters"    # Ljava/lang/String;

    .line 2094
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1868
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2097
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 2098
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2099
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2100
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2101
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2102
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2103
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2104
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2105
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2106
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2107
    iput p12, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2108
    iput-object p13, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2109
    return-void
.end method

.method public constructor whitelist <init>(JLjava/lang/String;II)V
    .registers 20
    .param p1, "time"    # J
    .param p3, "characters"    # Ljava/lang/String;
    .param p4, "deviceId"    # I
    .param p5, "flags"    # I

    .line 2124
    const/4 v10, 0x0

    const/16 v12, 0x101

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v3, p1

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v13, p3

    move/from16 v9, p4

    move/from16 v11, p5

    invoke-direct/range {v0 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIILjava/lang/String;)V

    .line 2127
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3751
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1868
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 3754
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mId:I

    .line 3755
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 3756
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 3757
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 3758
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyEvent;->mHmac:[B

    .line 3759
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3760
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 3761
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3762
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 3763
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 3764
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3765
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 3766
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 3767
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 3768
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/KeyEvent;)V
    .registers 11
    .param p1, "origEvent"    # Landroid/view/KeyEvent;

    .line 2133
    iget v2, p1, Landroid/view/KeyEvent;->mId:I

    iget-wide v3, p1, Landroid/view/KeyEvent;->mEventTime:J

    iget v5, p1, Landroid/view/KeyEvent;->mAction:I

    iget v6, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2134
    iget-object v0, p1, Landroid/view/KeyEvent;->mHmac:[B

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_16

    :cond_e
    iget-object v0, p1, Landroid/view/KeyEvent;->mHmac:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_16
    move-object v7, v0

    iget-object v8, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2133
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "origEvent":Landroid/view/KeyEvent;
    .local v1, "origEvent":Landroid/view/KeyEvent;
    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;IJII[BLjava/lang/String;)V

    .line 2136
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/view/KeyEvent;I)V
    .registers 12
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "action"    # I

    .line 2359
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v2

    iget-wide v3, p1, Landroid/view/KeyEvent;->mEventTime:J

    iget v6, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .end local p1    # "origEvent":Landroid/view/KeyEvent;
    .end local p2    # "action":I
    .local v1, "origEvent":Landroid/view/KeyEvent;
    .local v5, "action":I
    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;IJII[BLjava/lang/String;)V

    .line 2361
    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/KeyEvent;IJII[BLjava/lang/String;)V
    .registers 11
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "id"    # I
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "newRepeat"    # I
    .param p7, "hmac"    # [B
    .param p8, "characters"    # Ljava/lang/String;

    .line 2160
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1868
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2161
    iput p2, p0, Landroid/view/KeyEvent;->mId:I

    .line 2162
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2163
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2164
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2165
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2166
    iput p6, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2167
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2168
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2169
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2170
    iget v0, p1, Landroid/view/KeyEvent;->mDisplayId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2171
    iput-object p7, p0, Landroid/view/KeyEvent;->mHmac:[B

    .line 2172
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2173
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2174
    iput-object p8, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2175
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/KeyEvent;JI)V
    .registers 14
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "eventTime"    # J
    .param p4, "newRepeat"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2153
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2154
    invoke-virtual {v0, p2, p3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    iget v5, p1, Landroid/view/KeyEvent;->mAction:I

    iget-object v8, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2153
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p4

    .end local p1    # "origEvent":Landroid/view/KeyEvent;
    .end local p4    # "newRepeat":I
    .local v1, "origEvent":Landroid/view/KeyEvent;
    .local v6, "newRepeat":I
    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;IJII[BLjava/lang/String;)V

    .line 2156
    return-void
.end method

.method public static blacklist actionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "action"    # I

    .line 3634
    packed-switch p0, :pswitch_data_12

    .line 3642
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3640
    :pswitch_8
    const-string v0, "ACTION_MULTIPLE"

    return-object v0

    .line 3638
    :pswitch_b
    const-string v0, "ACTION_UP"

    return-object v0

    .line 3636
    :pswitch_e
    const-string v0, "ACTION_DOWN"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static whitelist changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 3
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "action"    # I

    .line 2371
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;I)V

    return-object v0
.end method

.method public static whitelist changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 3
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "flags"    # I

    .line 2382
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 2383
    .end local p0    # "event":Landroid/view/KeyEvent;
    .local v0, "event":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result p0

    iput p0, v0, Landroid/view/KeyEvent;->mId:I

    .line 2384
    iput p1, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2385
    return-object v0
.end method

.method public static whitelist changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;
    .registers 5
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "eventTime"    # J
    .param p3, "newRepeat"    # I

    .line 2325
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    return-object v0
.end method

.method public static whitelist changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;
    .registers 8
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "eventTime"    # J
    .param p3, "newRepeat"    # I
    .param p4, "newFlags"    # I

    .line 2341
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 2342
    .local v0, "ret":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v1

    iput v1, v0, Landroid/view/KeyEvent;->mId:I

    .line 2343
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2344
    iput p3, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2345
    iput p4, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2346
    return-object v0
.end method

.method public static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/view/KeyEvent;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 3748
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static whitelist getDeadChar(II)I
    .registers 3
    .param p0, "accent"    # I
    .param p1, "c"    # I

    .line 1850
    invoke-static {p0, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v0

    return v0
.end method

.method public static whitelist getMaxKeyCode()I
    .registers 1

    .line 1841
    const/16 v0, 0x151

    return v0
.end method

.method public static whitelist getModifierMetaStateMask()I
    .registers 1

    .line 2775
    const v0, 0x770ff

    return v0
.end method

.method public static final greylist-max-o isAltKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 2590
    const/16 v0, 0x39

    if-eq p0, v0, :cond_b

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static final greylist isConfirmKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 2473
    sparse-switch p0, :sswitch_data_8

    .line 2480
    const/4 v0, 0x0

    return v0

    .line 2478
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x17 -> :sswitch_5
        0x3e -> :sswitch_5
        0x42 -> :sswitch_5
        0xa0 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final whitelist isGamepadButton(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 2430
    sparse-switch p0, :sswitch_data_8

    .line 2464
    const/4 v0, 0x0

    return v0

    .line 2462
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x60 -> :sswitch_5
        0x61 -> :sswitch_5
        0x62 -> :sswitch_5
        0x63 -> :sswitch_5
        0x64 -> :sswitch_5
        0x65 -> :sswitch_5
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x68 -> :sswitch_5
        0x69 -> :sswitch_5
        0x6a -> :sswitch_5
        0x6b -> :sswitch_5
        0x6c -> :sswitch_5
        0x6d -> :sswitch_5
        0x6e -> :sswitch_5
        0xbc -> :sswitch_5
        0xbd -> :sswitch_5
        0xbe -> :sswitch_5
        0xbf -> :sswitch_5
        0xc0 -> :sswitch_5
        0xc1 -> :sswitch_5
        0xc2 -> :sswitch_5
        0xc3 -> :sswitch_5
        0xc4 -> :sswitch_5
        0xc5 -> :sswitch_5
        0xc6 -> :sswitch_5
        0xc7 -> :sswitch_5
        0xc8 -> :sswitch_5
        0xc9 -> :sswitch_5
        0xca -> :sswitch_5
        0xcb -> :sswitch_5
    .end sparse-switch
.end method

.method public static final whitelist isMediaSessionKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 2504
    sparse-switch p0, :sswitch_data_8

    .line 2517
    const/4 v0, 0x0

    return v0

    .line 2515
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x4f -> :sswitch_5
        0x55 -> :sswitch_5
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x7e -> :sswitch_5
        0x7f -> :sswitch_5
        0x82 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final greylist-max-o isMetaKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 2585
    const/16 v0, 0x75

    if-eq p0, v0, :cond_b

    const/16 v0, 0x76

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static whitelist isModifierKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 2795
    sparse-switch p0, :sswitch_data_8

    .line 2809
    const/4 v0, 0x0

    return v0

    .line 2807
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x39 -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3c -> :sswitch_5
        0x3f -> :sswitch_5
        0x4e -> :sswitch_5
        0x71 -> :sswitch_5
        0x72 -> :sswitch_5
        0x75 -> :sswitch_5
        0x76 -> :sswitch_5
        0x77 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final greylist-max-o isSystemKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 2524
    sparse-switch p0, :sswitch_data_8

    .line 2564
    const/4 v0, 0x0

    return v0

    .line 2561
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_5
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
        0x1a -> :sswitch_5
        0x1b -> :sswitch_5
        0x4f -> :sswitch_5
        0x50 -> :sswitch_5
        0x52 -> :sswitch_5
        0x54 -> :sswitch_5
        0x55 -> :sswitch_5
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_5
        0x7e -> :sswitch_5
        0x7f -> :sswitch_5
        0x82 -> :sswitch_5
        0xa4 -> :sswitch_5
        0xdc -> :sswitch_5
        0xdd -> :sswitch_5
        0xde -> :sswitch_5
        0x108 -> :sswitch_5
        0x118 -> :sswitch_5
        0x119 -> :sswitch_5
        0x11a -> :sswitch_5
        0x11b -> :sswitch_5
        0x131 -> :sswitch_5
        0x132 -> :sswitch_5
        0x133 -> :sswitch_5
        0x138 -> :sswitch_5
    .end sparse-switch
.end method

.method public static blacklist isVisibleBackgroundUserAllowedKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 2601
    sparse-switch p0, :sswitch_data_8

    .line 2616
    const/4 v0, 0x1

    return v0

    .line 2614
    :sswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x5 -> :sswitch_5
        0x6 -> :sswitch_5
        0x1a -> :sswitch_5
        0x53 -> :sswitch_5
        0x5b -> :sswitch_5
        0xa4 -> :sswitch_5
        0xbb -> :sswitch_5
        0xdb -> :sswitch_5
        0xdf -> :sswitch_5
        0xe0 -> :sswitch_5
        0xe7 -> :sswitch_5
        0x138 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final greylist-max-o isWakeKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 2569
    sparse-switch p0, :sswitch_data_8

    .line 2580
    const/4 v0, 0x0

    return v0

    .line 2578
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x1b -> :sswitch_5
        0x52 -> :sswitch_5
        0xe0 -> :sswitch_5
        0xe1 -> :sswitch_5
        0x108 -> :sswitch_5
        0x109 -> :sswitch_5
        0x10a -> :sswitch_5
        0x10b -> :sswitch_5
    .end sparse-switch
.end method

.method public static whitelist keyCodeFromString(Ljava/lang/String;)I
    .registers 3
    .param p0, "symbolicName"    # Ljava/lang/String;

    .line 3675
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3676
    .local v0, "keyCode":I
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeIsValid(I)Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_c

    if-eqz v1, :cond_b

    .line 3677
    return v0

    .line 3680
    .end local v0    # "keyCode":I
    :cond_b
    goto :goto_d

    .line 3679
    :catch_c
    move-exception v0

    .line 3682
    :goto_d
    const-string v0, "KEYCODE_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3683
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3685
    :cond_1d
    invoke-static {p0}, Landroid/view/KeyEvent;->nativeKeyCodeFromString(Ljava/lang/String;)I

    move-result v0

    .line 3686
    .restart local v0    # "keyCode":I
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeIsValid(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 3687
    return v0

    .line 3689
    :cond_28
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist keyCodeIsValid(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 3693
    if-ltz p0, :cond_8

    const/16 v0, 0x151

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static whitelist keyCodeToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "keyCode"    # I

    .line 3660
    invoke-static {p0}, Landroid/view/KeyEvent;->nativeKeyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 3661
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEYCODE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1a
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1e
    return-object v1
.end method

.method private static greylist-max-o metaStateFilterDirectionalModifiers(IIIII)I
    .registers 11
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I
    .param p2, "basic"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I

    .line 2935
    and-int v0, p1, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 2936
    .local v0, "wantBasic":Z
    :goto_9
    or-int v3, p3, p4

    .line 2937
    .local v3, "directional":I
    and-int v4, p1, v3

    if-eqz v4, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    .line 2939
    .local v1, "wantLeftOrRight":Z
    :goto_11
    if-eqz v0, :cond_51

    .line 2940
    if-nez v1, :cond_18

    .line 2945
    not-int v2, v3

    and-int/2addr v2, p0

    return v2

    .line 2941
    :cond_18
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modifiers must not contain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2942
    invoke-static {p2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " combined with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2943
    invoke-static {p3}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2946
    :cond_51
    if-eqz v1, :cond_56

    .line 2947
    not-int v2, p2

    and-int/2addr v2, p0

    return v2

    .line 2949
    :cond_56
    return p0
.end method

.method public static whitelist metaStateHasModifiers(II)Z
    .registers 6
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I

    .line 2914
    const v0, 0x700f00

    and-int/2addr v0, p1

    if-nez v0, :cond_3a

    .line 2921
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int p0, v0, v1

    .line 2922
    const/16 v0, 0x40

    const/16 v1, 0x80

    const/4 v2, 0x1

    invoke-static {p0, p1, v2, v0, v1}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2924
    const/16 v0, 0x10

    const/16 v1, 0x20

    const/4 v3, 0x2

    invoke-static {p0, p1, v3, v0, v1}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2926
    const/16 v0, 0x2000

    const/16 v1, 0x4000

    const/16 v3, 0x1000

    invoke-static {p0, p1, v3, v0, v1}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2928
    const/high16 v0, 0x20000

    const/high16 v1, 0x40000

    const/high16 v3, 0x10000

    invoke-static {p0, p1, v3, v0, v1}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2930
    if-ne p0, p1, :cond_38

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    return v2

    .line 2915
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "modifiers must not contain META_CAPS_LOCK_ON, META_NUM_LOCK_ON, META_SCROLL_LOCK_ON, META_CAP_LOCKED, META_ALT_LOCKED, META_SYM_LOCKED, or META_SELECTING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist metaStateHasNoModifiers(I)Z
    .registers 3
    .param p0, "metaState"    # I

    .line 2878
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int/2addr v0, v1

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static greylist-max-o metaStateToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "metaState"    # I

    .line 3707
    if-nez p0, :cond_5

    .line 3708
    const-string v0, "0"

    return-object v0

    .line 3710
    :cond_5
    const/4 v0, 0x0

    .line 3711
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 3712
    .local v1, "i":I
    :goto_7
    if-eqz p0, :cond_30

    .line 3713
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 3714
    .local v2, "isSet":Z
    :goto_10
    ushr-int/lit8 p0, p0, 0x1

    .line 3715
    if-eqz v2, :cond_2c

    .line 3716
    sget-object v3, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 3717
    .local v3, "name":Ljava/lang/String;
    if-nez v0, :cond_24

    .line 3718
    if-nez p0, :cond_1d

    .line 3719
    return-object v3

    .line 3721
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .end local v0    # "result":Ljava/lang/StringBuilder;
    .local v4, "result":Ljava/lang/StringBuilder;
    goto :goto_2c

    .line 3723
    .end local v4    # "result":Ljava/lang/StringBuilder;
    .restart local v0    # "result":Ljava/lang/StringBuilder;
    :cond_24
    const/16 v4, 0x7c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3724
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3727
    .end local v3    # "name":Ljava/lang/String;
    :cond_2c
    :goto_2c
    nop

    .end local v2    # "isSet":Z
    add-int/lit8 v1, v1, 0x1

    .line 3728
    goto :goto_7

    .line 3729
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static native greylist-max-o nativeKeyCodeFromString(Ljava/lang/String;)I
.end method

.method private static native greylist-max-o nativeKeyCodeToString(I)Ljava/lang/String;
.end method

.method private static native blacklist nativeNextId()I
.end method

.method public static whitelist normalizeMetaState(I)I
    .registers 2
    .param p0, "metaState"    # I

    .line 2838
    and-int/lit16 v0, p0, 0xc0

    if-eqz v0, :cond_6

    .line 2839
    or-int/lit8 p0, p0, 0x1

    .line 2841
    :cond_6
    and-int/lit8 v0, p0, 0x30

    if-eqz v0, :cond_c

    .line 2842
    or-int/lit8 p0, p0, 0x2

    .line 2844
    :cond_c
    and-int/lit16 v0, p0, 0x6000

    if-eqz v0, :cond_12

    .line 2845
    or-int/lit16 p0, p0, 0x1000

    .line 2847
    :cond_12
    const/high16 v0, 0x60000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1a

    .line 2848
    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    .line 2850
    :cond_1a
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_21

    .line 2851
    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    .line 2853
    :cond_21
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_27

    .line 2854
    or-int/lit8 p0, p0, 0x2

    .line 2856
    :cond_27
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_2d

    .line 2857
    or-int/lit8 p0, p0, 0x4

    .line 2859
    :cond_2d
    const v0, 0x7770ff

    and-int/2addr v0, p0

    return v0
.end method

.method private static greylist-max-o obtain()Landroid/view/KeyEvent;
    .registers 3

    .line 2179
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2180
    :try_start_3
    sget-object v1, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 2181
    .local v1, "ev":Landroid/view/KeyEvent;
    if-nez v1, :cond_e

    .line 2182
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2}, Landroid/view/KeyEvent;-><init>()V

    monitor-exit v0

    return-object v2

    .line 2184
    :cond_e
    iget-object v2, v1, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    sput-object v2, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 2185
    sget v2, Landroid/view/KeyEvent;->gRecyclerUsed:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/KeyEvent;->gRecyclerUsed:I

    .line 2186
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_20

    .line 2187
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    .line 2188
    invoke-virtual {v1}, Landroid/view/KeyEvent;->prepareForReuse()V

    .line 2189
    return-object v1

    .line 2186
    .end local v1    # "ev":Landroid/view/KeyEvent;
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private static blacklist obtain(IJJIIIIIIIII[BLjava/lang/String;)Landroid/view/KeyEvent;
    .registers 32
    .param p0, "id"    # I
    .param p1, "downTimeNanos"    # J
    .param p3, "eventTimeNanos"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I
    .param p12, "source"    # I
    .param p13, "displayId"    # I
    .param p14, "hmac"    # [B
    .param p15, "characters"    # Ljava/lang/String;

    .line 2201
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 2202
    .local v0, "ev":Landroid/view/KeyEvent;
    move/from16 v1, p0

    iput v1, v0, Landroid/view/KeyEvent;->mId:I

    .line 2203
    move-wide/from16 v2, p1

    iput-wide v2, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2204
    move-wide/from16 v4, p3

    iput-wide v4, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2205
    move/from16 v6, p5

    iput v6, v0, Landroid/view/KeyEvent;->mAction:I

    .line 2206
    move/from16 v7, p6

    iput v7, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2207
    move/from16 v8, p7

    iput v8, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2208
    move/from16 v9, p8

    iput v9, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2209
    move/from16 v10, p9

    iput v10, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2210
    move/from16 v11, p10

    iput v11, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2211
    move/from16 v12, p11

    iput v12, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2212
    move/from16 v13, p12

    iput v13, v0, Landroid/view/KeyEvent;->mSource:I

    .line 2213
    move/from16 v14, p13

    iput v14, v0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2214
    move-object/from16 v15, p14

    iput-object v15, v0, Landroid/view/KeyEvent;->mHmac:[B

    .line 2215
    move-object/from16 v1, p15

    iput-object v1, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2216
    return-object v0
.end method

.method public static blacklist obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .registers 32
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "code"    # I
    .param p6, "repeat"    # I
    .param p7, "metaState"    # I
    .param p8, "deviceId"    # I
    .param p9, "scanCode"    # I
    .param p10, "flags"    # I
    .param p11, "source"    # I
    .param p12, "displayId"    # I
    .param p13, "characters"    # Ljava/lang/String;

    .line 2227
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v2, p0

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 2228
    .end local p0    # "downTime":J
    .local v3, "downTime":J
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v5, p2

    invoke-virtual {v0, v5, v6, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    .line 2229
    .end local p2    # "eventTime":J
    .local v5, "eventTime":J
    invoke-static {}, Landroid/view/KeyEvent;->nativeNextId()I

    move-result v2

    const/16 v16, 0x0

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v17, p13

    invoke-static/range {v2 .. v17}, Landroid/view/KeyEvent;->obtain(IJJIIIIIIIII[BLjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .registers 27
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "code"    # I
    .param p6, "repeat"    # I
    .param p7, "metaState"    # I
    .param p8, "deviceId"    # I
    .param p9, "scancode"    # I
    .param p10, "flags"    # I
    .param p11, "source"    # I
    .param p12, "characters"    # Ljava/lang/String;

    .line 2244
    const/4 v12, -0x1

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v13, p12

    invoke-static/range {v0 .. v13}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v12

    return-object v12
.end method

.method public static greylist-max-o obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 4
    .param p0, "other"    # Landroid/view/KeyEvent;

    .line 2256
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 2257
    .local v0, "ev":Landroid/view/KeyEvent;
    iget v1, p0, Landroid/view/KeyEvent;->mId:I

    iput v1, v0, Landroid/view/KeyEvent;->mId:I

    .line 2258
    iget-wide v1, p0, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v1, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2259
    iget-wide v1, p0, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v1, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2260
    iget v1, p0, Landroid/view/KeyEvent;->mAction:I

    iput v1, v0, Landroid/view/KeyEvent;->mAction:I

    .line 2261
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2262
    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v1, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2263
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    iput v1, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2264
    iget v1, p0, Landroid/view/KeyEvent;->mDeviceId:I

    iput v1, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2265
    iget v1, p0, Landroid/view/KeyEvent;->mScanCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2266
    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    iput v1, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2267
    iget v1, p0, Landroid/view/KeyEvent;->mSource:I

    iput v1, v0, Landroid/view/KeyEvent;->mSource:I

    .line 2268
    iget v1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    iput v1, v0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2269
    iget-object v1, p0, Landroid/view/KeyEvent;->mHmac:[B

    if-nez v1, :cond_3a

    const/4 v1, 0x0

    goto :goto_42

    :cond_3a
    iget-object v1, p0, Landroid/view/KeyEvent;->mHmac:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_42
    iput-object v1, v0, Landroid/view/KeyEvent;->mHmac:[B

    .line 2270
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2271
    return-object v0
.end method


# virtual methods
.method public final greylist-max-o cancel()V
    .registers 2

    .line 3139
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3140
    return-void
.end method

.method public bridge synthetic blacklist copy()Landroid/view/InputEvent;
    .registers 2

    .line 97
    invoke-virtual {p0}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o copy()Landroid/view/KeyEvent;
    .registers 2

    .line 2277
    invoke-static {p0}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist dispatch(Landroid/view/KeyEvent$Callback;)Z
    .registers 3
    .param p1, "receiver"    # Landroid/view/KeyEvent$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3442
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "receiver"    # Landroid/view/KeyEvent$Callback;
    .param p2, "state"    # Landroid/view/KeyEvent$DispatcherState;
    .param p3, "target"    # Ljava/lang/Object;

    .line 3458
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_74

    .line 3508
    return v1

    .line 3489
    :pswitch_7
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3490
    .local v0, "count":I
    iget v2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 3491
    .local v2, "code":I
    invoke-interface {p1, v2, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_13

    .line 3492
    return v4

    .line 3494
    :cond_13
    if-eqz v2, :cond_2a

    .line 3495
    iput v1, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3496
    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3497
    invoke-interface {p1, v2, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 3498
    .local v1, "handled":Z
    if-eqz v1, :cond_24

    .line 3499
    iput v4, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3500
    invoke-interface {p1, v2, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 3502
    :cond_24
    const/4 v3, 0x2

    iput v3, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3503
    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3504
    return v1

    .line 3506
    .end local v1    # "handled":Z
    :cond_2a
    return v1

    .line 3484
    .end local v0    # "count":I
    .end local v2    # "code":I
    :pswitch_2b
    if-eqz p2, :cond_30

    .line 3485
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 3487
    :cond_30
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 3460
    :pswitch_37
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3463
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 3464
    .local v0, "res":Z
    if-eqz p2, :cond_72

    .line 3465
    if-eqz v0, :cond_58

    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    if-nez v1, :cond_58

    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_58

    .line 3467
    invoke-virtual {p2, p0, p3}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_72

    .line 3468
    :cond_58
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 3470
    :try_start_64
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v1, p0}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 3472
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_6f
    .catch Ljava/lang/AbstractMethodError; {:try_start_64 .. :try_end_6f} :catch_71

    .line 3473
    const/4 v0, 0x1

    .line 3476
    :cond_70
    goto :goto_72

    .line 3475
    :catch_71
    move-exception v1

    .line 3479
    :cond_72
    :goto_72
    return v0

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_37
        :pswitch_2b
        :pswitch_7
    .end packed-switch
.end method

.method public final whitelist getAction()I
    .registers 2

    .line 3121
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    return v0
.end method

.method public final whitelist getCharacters()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3192
    iget-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getDeviceId()I
    .registers 2

    .line 2622
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public final blacklist getDisplayId()I
    .registers 2

    .line 2641
    iget v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    return v0
.end method

.method public whitelist getDisplayLabel()C
    .registers 3

    .line 3311
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v0

    return v0
.end method

.method public final whitelist getDownTime()J
    .registers 5

    .line 3245
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Landroid/view/KeyEvent;->mDownTime:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getEventTime()J
    .registers 5

    .line 3257
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Landroid/view/KeyEvent;->mEventTime:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final blacklist getEventTimeNanos()J
    .registers 3

    .line 3276
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    return-wide v0
.end method

.method public final whitelist getFlags()I
    .registers 2

    .line 2725
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 2311
    iget v0, p0, Landroid/view/KeyEvent;->mId:I

    return v0
.end method

.method public final whitelist getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .registers 2

    .line 3301
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getKeyCode()I
    .registers 2

    .line 3177
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    return v0
.end method

.method public whitelist getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z
    .registers 4
    .param p1, "results"    # Landroid/view/KeyCharacterMap$KeyData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3373
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z

    move-result v0

    return v0
.end method

.method public final greylist-max-o getKeyboardDevice()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3287
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public whitelist getMatch([C)C
    .registers 3
    .param p1, "chars"    # [C

    .line 3388
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    return v0
.end method

.method public whitelist getMatch([CI)C
    .registers 5
    .param p1, "chars"    # [C
    .param p2, "metaState"    # I

    .line 3401
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result v0

    return v0
.end method

.method public final whitelist getMetaState()I
    .registers 2

    .line 2686
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    return v0
.end method

.method public final whitelist getModifiers()I
    .registers 3

    .line 2706
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getNumber()C
    .registers 3

    .line 3425
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getNumber(I)C

    move-result v0

    return v0
.end method

.method public final whitelist getRepeatCount()I
    .registers 2

    .line 3216
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    return v0
.end method

.method public final whitelist getScanCode()I
    .registers 2

    .line 3203
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    return v0
.end method

.method public final whitelist getSource()I
    .registers 2

    .line 2628
    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    return v0
.end method

.method public whitelist getUnicodeChar()I
    .registers 2

    .line 3334
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p0, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    return v0
.end method

.method public whitelist getUnicodeChar(I)I
    .registers 4
    .param p1, "metaState"    # I

    .line 3358
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v0

    return v0
.end method

.method public final whitelist hasModifiers(I)Z
    .registers 3
    .param p1, "modifiers"    # I

    .line 2999
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public final whitelist hasNoModifiers()Z
    .registers 2

    .line 2968
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist isAltPressed()Z
    .registers 2

    .line 3012
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final whitelist isCanceled()Z
    .registers 2

    .line 3129
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final whitelist isCapsLockOn()Z
    .registers 3

    .line 3087
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final whitelist isCtrlPressed()Z
    .registers 2

    .line 3050
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final greylist isDown()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2411
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final whitelist isFunctionPressed()Z
    .registers 2

    .line 3075
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final whitelist isLongPress()Z
    .registers 2

    .line 3167
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final whitelist isMetaPressed()Z
    .registers 3

    .line 3063
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final whitelist isNumLockOn()Z
    .registers 3

    .line 3099
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isPrintingKey()Z
    .registers 3

    .line 3434
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist isScrollLockOn()Z
    .registers 3

    .line 3111
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final whitelist isShiftPressed()Z
    .registers 3

    .line 3025
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final whitelist isSymPressed()Z
    .registers 2

    .line 3037
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final whitelist isSystem()Z
    .registers 2

    .line 2417
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v0}, Landroid/view/KeyEvent;->isSystemKey(I)Z

    move-result v0

    return v0
.end method

.method public final greylist-max-o isTainted()Z
    .registers 3

    .line 2391
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final whitelist isTracking()Z
    .registers 2

    .line 3159
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final greylist-max-o isWakeKey()Z
    .registers 2

    .line 2422
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v0}, Landroid/view/KeyEvent;->isWakeKey(I)Z

    move-result v0

    return v0
.end method

.method public final greylist-max-p recycle()V
    .registers 4

    .line 2290
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    .line 2291
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2293
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2294
    :try_start_9
    sget v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1b

    .line 2295
    sget v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    .line 2296
    sget-object v1, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    iput-object v1, p0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    .line 2297
    sput-object p0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 2299
    :cond_1b
    monitor-exit v0

    .line 2300
    return-void

    .line 2299
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public final greylist-max-o recycleIfNeededAfterDispatch()V
    .registers 1

    .line 2306
    return-void
.end method

.method public final blacklist setDisplayId(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 2648
    iput p1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2649
    return-void
.end method

.method public final blacklist setFlags(I)V
    .registers 2
    .param p1, "newFlags"    # I

    .line 2716
    iput p1, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2717
    return-void
.end method

.method public final whitelist setSource(I)V
    .registers 2
    .param p1, "source"    # I

    .line 2634
    iput p1, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2635
    return-void
.end method

.method public final greylist-max-o setTainted(Z)V
    .registers 4
    .param p1, "tainted"    # Z

    .line 2397
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    if-eqz p1, :cond_8

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    goto :goto_c

    :cond_8
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    :goto_c
    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2398
    return-void
.end method

.method public final blacklist setTime(JJ)V
    .registers 7
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J

    .line 3229
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 3230
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 3231
    return-void
.end method

.method public final whitelist startTracking()V
    .registers 3

    .line 3150
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3151
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 3605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3606
    .local v0, "msg":Ljava/lang/StringBuilder;
    const-string v1, "KeyEvent { action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-static {v2}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3607
    const-string v1, ", keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3608
    const-string v1, ", scanCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3609
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 3610
    const-string v1, ", characters=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3612
    :cond_43
    const-string v1, ", metaState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3613
    const-string v1, ", flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3614
    const-string v1, ", repeatCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3615
    const-string v1, ", eventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3616
    const-string v1, ", downTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3617
    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3618
    const-string v1, ", source=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3619
    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3620
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3621
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3772
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3774
    iget v0, p0, Landroid/view/KeyEvent;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3775
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3776
    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3777
    iget v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3778
    iget-object v0, p0, Landroid/view/KeyEvent;->mHmac:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3779
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3780
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3781
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3782
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3783
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3784
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3785
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3786
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3787
    iget-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3788
    return-void
.end method
