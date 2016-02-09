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
        Landroid/view/KeyEvent$1;
    }
.end annotation


# static fields
.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MULTIPLE:I = 0x2

.field public static final ACTION_UP:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field public static final FLAG_CANCELED:I = 0x20

.field public static final FLAG_CANCELED_LONG_PRESS:I = 0x100

.field public static final FLAG_EDITOR_ACTION:I = 0x10

.field public static final FLAG_FALLBACK:I = 0x400

.field public static final FLAG_FROM_SYSTEM:I = 0x8

.field public static final FLAG_KEEP_TOUCH_MODE:I = 0x4

.field public static final FLAG_LONG_PRESS:I = 0x80

.field public static final FLAG_PREDISPATCH:I = 0x20000000

.field public static final FLAG_SOFT_KEYBOARD:I = 0x2

.field public static final FLAG_START_TRACKING:I = 0x40000000

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_TRACKING:I = 0x200

.field public static final FLAG_VIRTUAL_HARD_KEY:I = 0x40

.field public static final FLAG_WOKE_HERE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEYCODE_0:I = 0x7

.field public static final KEYCODE_1:I = 0x8

.field public static final KEYCODE_11:I = 0xe3

.field public static final KEYCODE_12:I = 0xe4

.field public static final KEYCODE_2:I = 0x9

.field public static final KEYCODE_3:I = 0xa

.field public static final KEYCODE_3D_MODE:I = 0xce

.field public static final KEYCODE_4:I = 0xb

.field public static final KEYCODE_5:I = 0xc

.field public static final KEYCODE_6:I = 0xd

.field public static final KEYCODE_7:I = 0xe

.field public static final KEYCODE_8:I = 0xf

.field public static final KEYCODE_9:I = 0x10

.field public static final KEYCODE_A:I = 0x1d

.field public static final KEYCODE_ALT_LEFT:I = 0x39

.field public static final KEYCODE_ALT_RIGHT:I = 0x3a

.field public static final KEYCODE_APOSTROPHE:I = 0x4b

.field public static final KEYCODE_APP_SWITCH:I = 0xbb

.field public static final KEYCODE_ASSIST:I = 0xdb

.field public static final KEYCODE_AT:I = 0x4d

.field public static final KEYCODE_AVR_INPUT:I = 0xb6

.field public static final KEYCODE_AVR_POWER:I = 0xb5

.field public static final KEYCODE_B:I = 0x1e

.field public static final KEYCODE_BACK:I = 0x4

.field public static final KEYCODE_BACKSLASH:I = 0x49

.field public static final KEYCODE_BOOKMARK:I = 0xae

.field public static final KEYCODE_BREAK:I = 0x79

.field public static final KEYCODE_BRIGHTNESS_DOWN:I = 0xdc

.field public static final KEYCODE_BRIGHTNESS_UP:I = 0xdd

.field public static final KEYCODE_BUTTON_1:I = 0xbc

.field public static final KEYCODE_BUTTON_10:I = 0xc5

.field public static final KEYCODE_BUTTON_11:I = 0xc6

.field public static final KEYCODE_BUTTON_12:I = 0xc7

.field public static final KEYCODE_BUTTON_13:I = 0xc8

.field public static final KEYCODE_BUTTON_14:I = 0xc9

.field public static final KEYCODE_BUTTON_15:I = 0xca

.field public static final KEYCODE_BUTTON_16:I = 0xcb

.field public static final KEYCODE_BUTTON_2:I = 0xbd

.field public static final KEYCODE_BUTTON_3:I = 0xbe

.field public static final KEYCODE_BUTTON_4:I = 0xbf

.field public static final KEYCODE_BUTTON_5:I = 0xc0

.field public static final KEYCODE_BUTTON_6:I = 0xc1

.field public static final KEYCODE_BUTTON_7:I = 0xc2

.field public static final KEYCODE_BUTTON_8:I = 0xc3

.field public static final KEYCODE_BUTTON_9:I = 0xc4

.field public static final KEYCODE_BUTTON_A:I = 0x60

.field public static final KEYCODE_BUTTON_B:I = 0x61

.field public static final KEYCODE_BUTTON_C:I = 0x62

.field public static final KEYCODE_BUTTON_L1:I = 0x66

.field public static final KEYCODE_BUTTON_L2:I = 0x68

.field public static final KEYCODE_BUTTON_MODE:I = 0x6e

.field public static final KEYCODE_BUTTON_R1:I = 0x67

.field public static final KEYCODE_BUTTON_R2:I = 0x69

.field public static final KEYCODE_BUTTON_SELECT:I = 0x6d

.field public static final KEYCODE_BUTTON_START:I = 0x6c

.field public static final KEYCODE_BUTTON_THUMBL:I = 0x6a

.field public static final KEYCODE_BUTTON_THUMBR:I = 0x6b

.field public static final KEYCODE_BUTTON_X:I = 0x63

.field public static final KEYCODE_BUTTON_Y:I = 0x64

.field public static final KEYCODE_BUTTON_Z:I = 0x65

.field public static final KEYCODE_C:I = 0x1f

.field public static final KEYCODE_CALCULATOR:I = 0xd2

.field public static final KEYCODE_CALENDAR:I = 0xd0

.field public static final KEYCODE_CALL:I = 0x5

.field public static final KEYCODE_CAMERA:I = 0x1b

.field public static final KEYCODE_CAPS_LOCK:I = 0x73

.field public static final KEYCODE_CAPTIONS:I = 0xaf

.field public static final KEYCODE_CHANNEL_DOWN:I = 0xa7

.field public static final KEYCODE_CHANNEL_UP:I = 0xa6

.field public static final KEYCODE_CLEAR:I = 0x1c

.field public static final KEYCODE_COMMA:I = 0x37

.field public static final KEYCODE_CONTACTS:I = 0xcf

.field public static final KEYCODE_CTRL_LEFT:I = 0x71

.field public static final KEYCODE_CTRL_RIGHT:I = 0x72

.field public static final KEYCODE_D:I = 0x20

.field public static final KEYCODE_DEL:I = 0x43

.field public static final KEYCODE_DPAD_CENTER:I = 0x17

.field public static final KEYCODE_DPAD_DOWN:I = 0x14

.field public static final KEYCODE_DPAD_LEFT:I = 0x15

.field public static final KEYCODE_DPAD_RIGHT:I = 0x16

.field public static final KEYCODE_DPAD_UP:I = 0x13

.field public static final KEYCODE_DVR:I = 0xad

.field public static final KEYCODE_E:I = 0x21

.field public static final KEYCODE_EISU:I = 0xd4

.field public static final KEYCODE_ENDCALL:I = 0x6

.field public static final KEYCODE_ENTER:I = 0x42

.field public static final KEYCODE_ENVELOPE:I = 0x41

.field public static final KEYCODE_EQUALS:I = 0x46

.field public static final KEYCODE_ESCAPE:I = 0x6f

.field public static final KEYCODE_EXPLORER:I = 0x40

.field public static final KEYCODE_F:I = 0x22

.field public static final KEYCODE_F1:I = 0x83

.field public static final KEYCODE_F10:I = 0x8c

.field public static final KEYCODE_F11:I = 0x8d

.field public static final KEYCODE_F12:I = 0x8e

.field public static final KEYCODE_F2:I = 0x84

.field public static final KEYCODE_F3:I = 0x85

.field public static final KEYCODE_F4:I = 0x86

.field public static final KEYCODE_F5:I = 0x87

.field public static final KEYCODE_F6:I = 0x88

.field public static final KEYCODE_F7:I = 0x89

.field public static final KEYCODE_F8:I = 0x8a

.field public static final KEYCODE_F9:I = 0x8b

.field public static final KEYCODE_FOCUS:I = 0x50

.field public static final KEYCODE_FORWARD:I = 0x7d

.field public static final KEYCODE_FORWARD_DEL:I = 0x70

.field public static final KEYCODE_FUNCTION:I = 0x77

.field public static final KEYCODE_G:I = 0x23

.field public static final KEYCODE_GRAVE:I = 0x44

.field public static final KEYCODE_GUIDE:I = 0xac

.field public static final KEYCODE_H:I = 0x24

.field public static final KEYCODE_HEADSETHOOK:I = 0x4f

.field public static final KEYCODE_HELP:I = 0x103

.field public static final KEYCODE_HENKAN:I = 0xd6

.field public static final KEYCODE_HOME:I = 0x3

.field public static final KEYCODE_I:I = 0x25

.field public static final KEYCODE_INFO:I = 0xa5

.field public static final KEYCODE_INSERT:I = 0x7c

.field public static final KEYCODE_J:I = 0x26

.field public static final KEYCODE_K:I = 0x27

.field public static final KEYCODE_KANA:I = 0xda

.field public static final KEYCODE_KATAKANA_HIRAGANA:I = 0xd7

.field public static final KEYCODE_L:I = 0x28

.field public static final KEYCODE_LANGUAGE_SWITCH:I = 0xcc

.field public static final KEYCODE_LAST_CHANNEL:I = 0xe5

.field public static final KEYCODE_LEFT_BRACKET:I = 0x47

.field public static final KEYCODE_M:I = 0x29

.field public static final KEYCODE_MANNER_MODE:I = 0xcd

.field public static final KEYCODE_MEDIA_AUDIO_TRACK:I = 0xde

.field public static final KEYCODE_MEDIA_CLOSE:I = 0x80

.field public static final KEYCODE_MEDIA_EJECT:I = 0x81

.field public static final KEYCODE_MEDIA_FAST_FORWARD:I = 0x5a

.field public static final KEYCODE_MEDIA_NEXT:I = 0x57

.field public static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field public static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final KEYCODE_MEDIA_PLAY_PAUSE:I = 0x55

.field public static final KEYCODE_MEDIA_PREVIOUS:I = 0x58

.field public static final KEYCODE_MEDIA_RECORD:I = 0x82

.field public static final KEYCODE_MEDIA_REWIND:I = 0x59

.field public static final KEYCODE_MEDIA_SKIP_BACKWARD:I = 0x111

.field public static final KEYCODE_MEDIA_SKIP_FORWARD:I = 0x110

.field public static final KEYCODE_MEDIA_STEP_BACKWARD:I = 0x113

.field public static final KEYCODE_MEDIA_STEP_FORWARD:I = 0x112

.field public static final KEYCODE_MEDIA_STOP:I = 0x56

.field public static final KEYCODE_MEDIA_TOP_MENU:I = 0xe2

.field public static final KEYCODE_MENU:I = 0x52

.field public static final KEYCODE_META_LEFT:I = 0x75

.field public static final KEYCODE_META_RIGHT:I = 0x76

.field public static final KEYCODE_MINUS:I = 0x45

.field public static final KEYCODE_MOVE_END:I = 0x7b

.field public static final KEYCODE_MOVE_HOME:I = 0x7a

.field public static final KEYCODE_MUHENKAN:I = 0xd5

.field public static final KEYCODE_MUSIC:I = 0xd1

.field public static final KEYCODE_MUTE:I = 0x5b

.field public static final KEYCODE_N:I = 0x2a

.field public static final KEYCODE_NAVIGATE_IN:I = 0x106

.field public static final KEYCODE_NAVIGATE_NEXT:I = 0x105

.field public static final KEYCODE_NAVIGATE_OUT:I = 0x107

.field public static final KEYCODE_NAVIGATE_PREVIOUS:I = 0x104

.field public static final KEYCODE_NOTIFICATION:I = 0x53

.field public static final KEYCODE_NUM:I = 0x4e

.field public static final KEYCODE_NUMPAD_0:I = 0x90

.field public static final KEYCODE_NUMPAD_1:I = 0x91

.field public static final KEYCODE_NUMPAD_2:I = 0x92

.field public static final KEYCODE_NUMPAD_3:I = 0x93

.field public static final KEYCODE_NUMPAD_4:I = 0x94

.field public static final KEYCODE_NUMPAD_5:I = 0x95

.field public static final KEYCODE_NUMPAD_6:I = 0x96

.field public static final KEYCODE_NUMPAD_7:I = 0x97

.field public static final KEYCODE_NUMPAD_8:I = 0x98

.field public static final KEYCODE_NUMPAD_9:I = 0x99

.field public static final KEYCODE_NUMPAD_ADD:I = 0x9d

.field public static final KEYCODE_NUMPAD_COMMA:I = 0x9f

.field public static final KEYCODE_NUMPAD_DIVIDE:I = 0x9a

.field public static final KEYCODE_NUMPAD_DOT:I = 0x9e

.field public static final KEYCODE_NUMPAD_ENTER:I = 0xa0

.field public static final KEYCODE_NUMPAD_EQUALS:I = 0xa1

.field public static final KEYCODE_NUMPAD_LEFT_PAREN:I = 0xa2

.field public static final KEYCODE_NUMPAD_MULTIPLY:I = 0x9b

.field public static final KEYCODE_NUMPAD_RIGHT_PAREN:I = 0xa3

.field public static final KEYCODE_NUMPAD_SUBTRACT:I = 0x9c

.field public static final KEYCODE_NUM_LOCK:I = 0x8f

.field public static final KEYCODE_O:I = 0x2b

.field public static final KEYCODE_P:I = 0x2c

.field public static final KEYCODE_PAGE_DOWN:I = 0x5d

.field public static final KEYCODE_PAGE_UP:I = 0x5c

.field public static final KEYCODE_PAIRING:I = 0xe1

.field public static final KEYCODE_PERIOD:I = 0x38

.field public static final KEYCODE_PICTSYMBOLS:I = 0x5e

.field public static final KEYCODE_PLUS:I = 0x51

.field public static final KEYCODE_POUND:I = 0x12

.field public static final KEYCODE_POWER:I = 0x1a

.field public static final KEYCODE_PROG_BLUE:I = 0xba

.field public static final KEYCODE_PROG_GREEN:I = 0xb8

.field public static final KEYCODE_PROG_RED:I = 0xb7

.field public static final KEYCODE_PROG_YELLOW:I = 0xb9

.field public static final KEYCODE_Q:I = 0x2d

.field public static final KEYCODE_R:I = 0x2e

.field public static final KEYCODE_RIGHT_BRACKET:I = 0x48

.field public static final KEYCODE_RO:I = 0xd9

.field public static final KEYCODE_S:I = 0x2f

.field public static final KEYCODE_SCROLL_LOCK:I = 0x74

.field public static final KEYCODE_SEARCH:I = 0x54

.field public static final KEYCODE_SEMICOLON:I = 0x4a

.field public static final KEYCODE_SETTINGS:I = 0xb0

.field public static final KEYCODE_SHIFT_LEFT:I = 0x3b

.field public static final KEYCODE_SHIFT_RIGHT:I = 0x3c

.field public static final KEYCODE_SLASH:I = 0x4c

.field public static final KEYCODE_SLEEP:I = 0xdf

.field public static final KEYCODE_SOFT_LEFT:I = 0x1

.field public static final KEYCODE_SOFT_RIGHT:I = 0x2

.field public static final KEYCODE_SPACE:I = 0x3e

.field public static final KEYCODE_STAR:I = 0x11

.field public static final KEYCODE_STB_INPUT:I = 0xb4

.field public static final KEYCODE_STB_POWER:I = 0xb3

.field public static final KEYCODE_SWITCH_CHARSET:I = 0x5f

.field public static final KEYCODE_SYM:I = 0x3f

.field public static final KEYCODE_SYSRQ:I = 0x78

.field public static final KEYCODE_T:I = 0x30

.field public static final KEYCODE_TAB:I = 0x3d

.field public static final KEYCODE_TV:I = 0xaa

.field public static final KEYCODE_TV_ANTENNA_CABLE:I = 0xf2

.field public static final KEYCODE_TV_AUDIO_DESCRIPTION:I = 0xfc

.field public static final KEYCODE_TV_AUDIO_DESCRIPTION_MIX_DOWN:I = 0xfe

.field public static final KEYCODE_TV_AUDIO_DESCRIPTION_MIX_UP:I = 0xfd

.field public static final KEYCODE_TV_CONTENTS_MENU:I = 0x100

.field public static final KEYCODE_TV_DATA_SERVICE:I = 0xe6

.field public static final KEYCODE_TV_INPUT:I = 0xb2

.field public static final KEYCODE_TV_INPUT_COMPONENT_1:I = 0xf9

.field public static final KEYCODE_TV_INPUT_COMPONENT_2:I = 0xfa

.field public static final KEYCODE_TV_INPUT_COMPOSITE_1:I = 0xf7

.field public static final KEYCODE_TV_INPUT_COMPOSITE_2:I = 0xf8

.field public static final KEYCODE_TV_INPUT_HDMI_1:I = 0xf3

.field public static final KEYCODE_TV_INPUT_HDMI_2:I = 0xf4

.field public static final KEYCODE_TV_INPUT_HDMI_3:I = 0xf5

.field public static final KEYCODE_TV_INPUT_HDMI_4:I = 0xf6

.field public static final KEYCODE_TV_INPUT_VGA_1:I = 0xfb

.field public static final KEYCODE_TV_MEDIA_CONTEXT_MENU:I = 0x101

.field public static final KEYCODE_TV_NETWORK:I = 0xf1

.field public static final KEYCODE_TV_NUMBER_ENTRY:I = 0xea

.field public static final KEYCODE_TV_POWER:I = 0xb1

.field public static final KEYCODE_TV_RADIO_SERVICE:I = 0xe8

.field public static final KEYCODE_TV_SATELLITE:I = 0xed

.field public static final KEYCODE_TV_SATELLITE_BS:I = 0xee

.field public static final KEYCODE_TV_SATELLITE_CS:I = 0xef

.field public static final KEYCODE_TV_SATELLITE_SERVICE:I = 0xf0

.field public static final KEYCODE_TV_TELETEXT:I = 0xe9

.field public static final KEYCODE_TV_TERRESTRIAL_ANALOG:I = 0xeb

.field public static final KEYCODE_TV_TERRESTRIAL_DIGITAL:I = 0xec

.field public static final KEYCODE_TV_TIMER_PROGRAMMING:I = 0x102

.field public static final KEYCODE_TV_ZOOM_MODE:I = 0xff

.field public static final KEYCODE_U:I = 0x31

.field public static final KEYCODE_UNKNOWN:I = 0x0

.field public static final KEYCODE_V:I = 0x32

.field public static final KEYCODE_VOICE_ASSIST:I = 0xe7

.field public static final KEYCODE_VOLUME_DOWN:I = 0x19

.field public static final KEYCODE_VOLUME_MUTE:I = 0xa4

.field public static final KEYCODE_VOLUME_UP:I = 0x18

.field public static final KEYCODE_W:I = 0x33

.field public static final KEYCODE_WAKEUP:I = 0xe0

.field public static final KEYCODE_WINDOW:I = 0xab

.field public static final KEYCODE_X:I = 0x34

.field public static final KEYCODE_Y:I = 0x35

.field public static final KEYCODE_YEN:I = 0xd8

.field public static final KEYCODE_Z:I = 0x36

.field public static final KEYCODE_ZENKAKU_HANKAKU:I = 0xd3

.field public static final KEYCODE_ZOOM_IN:I = 0xa8

.field public static final KEYCODE_ZOOM_OUT:I = 0xa9

.field private static final LABEL_PREFIX:Ljava/lang/String; = "KEYCODE_"

.field private static final LAST_KEYCODE:I = 0x113

.field public static final MAX_KEYCODE:I = 0x54
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_RECYCLED:I = 0xa

.field private static final META_ALL_MASK:I = 0x7770ff

.field public static final META_ALT_LEFT_ON:I = 0x10

.field public static final META_ALT_LOCKED:I = 0x200

.field public static final META_ALT_MASK:I = 0x32

.field public static final META_ALT_ON:I = 0x2

.field public static final META_ALT_RIGHT_ON:I = 0x20

.field public static final META_CAPS_LOCK_ON:I = 0x100000

.field public static final META_CAP_LOCKED:I = 0x100

.field public static final META_CTRL_LEFT_ON:I = 0x2000

.field public static final META_CTRL_MASK:I = 0x7000

.field public static final META_CTRL_ON:I = 0x1000

.field public static final META_CTRL_RIGHT_ON:I = 0x4000

.field public static final META_FUNCTION_ON:I = 0x8

.field private static final META_INVALID_MODIFIER_MASK:I = 0x700f00

.field private static final META_LOCK_MASK:I = 0x700000

.field public static final META_META_LEFT_ON:I = 0x20000

.field public static final META_META_MASK:I = 0x70000

.field public static final META_META_ON:I = 0x10000

.field public static final META_META_RIGHT_ON:I = 0x40000

.field private static final META_MODIFIER_MASK:I = 0x770ff

.field public static final META_NUM_LOCK_ON:I = 0x200000

.field public static final META_SCROLL_LOCK_ON:I = 0x400000

.field public static final META_SELECTING:I = 0x800

.field public static final META_SHIFT_LEFT_ON:I = 0x40

.field public static final META_SHIFT_MASK:I = 0xc1

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SHIFT_RIGHT_ON:I = 0x80

.field private static final META_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final META_SYM_LOCKED:I = 0x400

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYNTHETIC_MASK:I = 0xf00

.field static final TAG:Ljava/lang/String; = "KeyEvent"

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/KeyEvent;

.field private static gRecyclerUsed:I


# instance fields
.field private mAction:I

.field private mCharacters:Ljava/lang/String;

.field private mDeviceId:I

.field private mDownTime:J

.field private mEventTime:J

.field private mFlags:I

.field private mKeyCode:I

.field private mMetaState:I

.field private mNext:Landroid/view/KeyEvent;

.field private mRepeatCount:I

.field private mScanCode:I

.field private mSource:I


# direct methods
.method static synthetic -get0(Landroid/view/KeyEvent;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/view/KeyEvent;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/view/KeyEvent;->mFlags:I

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 794
    const/16 v0, 0x20

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 795
    const-string/jumbo v1, "META_SHIFT_ON"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 796
    const-string/jumbo v1, "META_ALT_ON"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 797
    const-string/jumbo v1, "META_SYM_ON"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 798
    const-string/jumbo v1, "META_FUNCTION_ON"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 799
    const-string/jumbo v1, "META_ALT_LEFT_ON"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 800
    const-string/jumbo v1, "META_ALT_RIGHT_ON"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 801
    const-string/jumbo v1, "META_SHIFT_LEFT_ON"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 802
    const-string/jumbo v1, "META_SHIFT_RIGHT_ON"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 803
    const-string/jumbo v1, "META_CAP_LOCKED"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 804
    const-string/jumbo v1, "META_ALT_LOCKED"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 805
    const-string/jumbo v1, "META_SYM_LOCKED"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 806
    const-string/jumbo v1, "0x00000800"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 807
    const-string/jumbo v1, "META_CTRL_ON"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    .line 808
    const-string/jumbo v1, "META_CTRL_LEFT_ON"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 809
    const-string/jumbo v1, "META_CTRL_RIGHT_ON"

    #@61
    const/16 v2, 0xe

    #@63
    aput-object v1, v0, v2

    #@65
    .line 810
    const-string/jumbo v1, "0x00008000"

    #@68
    const/16 v2, 0xf

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 811
    const-string/jumbo v1, "META_META_ON"

    #@6f
    const/16 v2, 0x10

    #@71
    aput-object v1, v0, v2

    #@73
    .line 812
    const-string/jumbo v1, "META_META_LEFT_ON"

    #@76
    const/16 v2, 0x11

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 813
    const-string/jumbo v1, "META_META_RIGHT_ON"

    #@7d
    const/16 v2, 0x12

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 814
    const-string/jumbo v1, "0x00080000"

    #@84
    const/16 v2, 0x13

    #@86
    aput-object v1, v0, v2

    #@88
    .line 815
    const-string/jumbo v1, "META_CAPS_LOCK_ON"

    #@8b
    const/16 v2, 0x14

    #@8d
    aput-object v1, v0, v2

    #@8f
    .line 816
    const-string/jumbo v1, "META_NUM_LOCK_ON"

    #@92
    const/16 v2, 0x15

    #@94
    aput-object v1, v0, v2

    #@96
    .line 817
    const-string/jumbo v1, "META_SCROLL_LOCK_ON"

    #@99
    const/16 v2, 0x16

    #@9b
    aput-object v1, v0, v2

    #@9d
    .line 818
    const-string/jumbo v1, "0x00800000"

    #@a0
    const/16 v2, 0x17

    #@a2
    aput-object v1, v0, v2

    #@a4
    .line 819
    const-string/jumbo v1, "0x01000000"

    #@a7
    const/16 v2, 0x18

    #@a9
    aput-object v1, v0, v2

    #@ab
    .line 820
    const-string/jumbo v1, "0x02000000"

    #@ae
    const/16 v2, 0x19

    #@b0
    aput-object v1, v0, v2

    #@b2
    .line 821
    const-string/jumbo v1, "0x04000000"

    #@b5
    const/16 v2, 0x1a

    #@b7
    aput-object v1, v0, v2

    #@b9
    .line 822
    const-string/jumbo v1, "0x08000000"

    #@bc
    const/16 v2, 0x1b

    #@be
    aput-object v1, v0, v2

    #@c0
    .line 823
    const-string/jumbo v1, "0x10000000"

    #@c3
    const/16 v2, 0x1c

    #@c5
    aput-object v1, v0, v2

    #@c7
    .line 824
    const-string/jumbo v1, "0x20000000"

    #@ca
    const/16 v2, 0x1d

    #@cc
    aput-object v1, v0, v2

    #@ce
    .line 825
    const-string/jumbo v1, "0x40000000"

    #@d1
    const/16 v2, 0x1e

    #@d3
    aput-object v1, v0, v2

    #@d5
    .line 826
    const-string/jumbo v1, "0x80000000"

    #@d8
    const/16 v2, 0x1f

    #@da
    aput-object v1, v0, v2

    #@dc
    .line 794
    sput-object v0, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    #@de
    .line 1197
    new-instance v0, Ljava/lang/Object;

    #@e0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@e3
    sput-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    #@e5
    .line 2896
    new-instance v0, Landroid/view/KeyEvent$1;

    #@e7
    invoke-direct {v0}, Landroid/view/KeyEvent$1;-><init>()V

    #@ea
    .line 2895
    sput-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ec
    .line 81
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1275
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "code"    # I

    #@0
    .prologue
    .line 1285
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    #@3
    .line 1286
    iput p1, p0, Landroid/view/KeyEvent;->mAction:I

    #@5
    .line 1287
    iput p2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@7
    .line 1288
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@a
    .line 1289
    const/4 v0, -0x1

    #@b
    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    #@d
    .line 1285
    return-void
.end method

.method public constructor <init>(JJIII)V
    .locals 1
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I

    #@0
    .prologue
    .line 1305
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    #@3
    .line 1307
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    #@5
    .line 1308
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    #@7
    .line 1309
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    #@9
    .line 1310
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@b
    .line 1311
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@d
    .line 1312
    const/4 v0, -0x1

    #@e
    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    #@10
    .line 1306
    return-void
.end method

.method public constructor <init>(JJIIII)V
    .locals 1
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I

    #@0
    .prologue
    .line 1329
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    #@3
    .line 1331
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    #@5
    .line 1332
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    #@7
    .line 1333
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    #@9
    .line 1334
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@b
    .line 1335
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@d
    .line 1336
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@f
    .line 1337
    const/4 v0, -0x1

    #@10
    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    #@12
    .line 1330
    return-void
.end method

.method public constructor <init>(JJIIIIII)V
    .locals 1
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I

    #@0
    .prologue
    .line 1356
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    #@3
    .line 1359
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    #@5
    .line 1360
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    #@7
    .line 1361
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    #@9
    .line 1362
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@b
    .line 1363
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@d
    .line 1364
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@f
    .line 1365
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    #@11
    .line 1366
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    #@13
    .line 1358
    return-void
.end method

.method public constructor <init>(JJIIIIIII)V
    .locals 1
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I

    #@0
    .prologue
    .line 1386
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    #@3
    .line 1389
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    #@5
    .line 1390
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    #@7
    .line 1391
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    #@9
    .line 1392
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@b
    .line 1393
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@d
    .line 1394
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@f
    .line 1395
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    #@11
    .line 1396
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    #@13
    .line 1397
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    #@15
    .line 1388
    return-void
.end method

.method public constructor <init>(JJIIIIIIII)V
    .locals 1
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

    #@0
    .prologue
    .line 1418
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    #@3
    .line 1421
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    #@5
    .line 1422
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    #@7
    .line 1423
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    #@9
    .line 1424
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@b
    .line 1425
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@d
    .line 1426
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@f
    .line 1427
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    #@11
    .line 1428
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    #@13
    .line 1429
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    #@15
    .line 1430
    iput p12, p0, Landroid/view/KeyEvent;->mSource:I

    #@17
    .line 1420
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;II)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "characters"    # Ljava/lang/String;
    .param p4, "deviceId"    # I
    .param p5, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1445
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    #@4
    .line 1446
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    #@6
    .line 1447
    iput-wide p1, p0, Landroid/view/KeyEvent;->mEventTime:J

    #@8
    .line 1448
    iput-object p3, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    #@a
    .line 1449
    const/4 v0, 0x2

    #@b
    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    #@d
    .line 1450
    iput v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@f
    .line 1451
    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@11
    .line 1452
    iput p4, p0, Landroid/view/KeyEvent;->mDeviceId:I

    #@13
    .line 1453
    iput p5, p0, Landroid/view/KeyEvent;->mFlags:I

    #@15
    .line 1454
    const/16 v0, 0x101

    #@17
    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    #@19
    .line 1445
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 2912
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    #@3
    .line 2913
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    #@9
    .line 2914
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    #@f
    .line 2915
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    #@15
    .line 2916
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@1b
    .line 2917
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@21
    .line 2918
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@27
    .line 2919
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    #@2d
    .line 2920
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v0

    #@31
    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    #@33
    .line 2921
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@36
    move-result-wide v0

    #@37
    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    #@39
    .line 2922
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3c
    move-result-wide v0

    #@3d
    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    #@3f
    .line 2912
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "origEvent"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1460
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    #@3
    .line 1461
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    #@5
    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    #@7
    .line 1462
    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    #@9
    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    #@b
    .line 1463
    iget v0, p1, Landroid/view/KeyEvent;->mAction:I

    #@d
    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    #@f
    .line 1464
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    #@11
    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@13
    .line 1465
    iget v0, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    #@15
    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@17
    .line 1466
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    #@19
    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@1b
    .line 1467
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    #@1d
    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    #@1f
    .line 1468
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    #@21
    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    #@23
    .line 1469
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    #@25
    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    #@27
    .line 1470
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    #@29
    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    #@2b
    .line 1471
    iget-object v0, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    #@2d
    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    #@2f
    .line 1460
    return-void
.end method

.method private constructor <init>(Landroid/view/KeyEvent;I)V
    .locals 2
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "action"    # I

    #@0
    .prologue
    .line 1632
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    #@3
    .line 1633
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    #@5
    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    #@7
    .line 1634
    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    #@9
    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    #@b
    .line 1635
    iput p2, p0, Landroid/view/KeyEvent;->mAction:I

    #@d
    .line 1636
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    #@f
    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@11
    .line 1637
    iget v0, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    #@13
    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@15
    .line 1638
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    #@17
    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@19
    .line 1639
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    #@1b
    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    #@1d
    .line 1640
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    #@1f
    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    #@21
    .line 1641
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    #@23
    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    #@25
    .line 1642
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    #@27
    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    #@29
    .line 1632
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;JI)V
    .locals 2
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "eventTime"    # J
    .param p4, "newRepeat"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1486
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    #@3
    .line 1487
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    #@5
    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    #@7
    .line 1488
    iput-wide p2, p0, Landroid/view/KeyEvent;->mEventTime:J

    #@9
    .line 1489
    iget v0, p1, Landroid/view/KeyEvent;->mAction:I

    #@b
    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    #@d
    .line 1490
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    #@f
    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@11
    .line 1491
    iput p4, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@13
    .line 1492
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    #@15
    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@17
    .line 1493
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    #@19
    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    #@1b
    .line 1494
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    #@1d
    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    #@1f
    .line 1495
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    #@21
    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    #@23
    .line 1496
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    #@25
    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    #@27
    .line 1497
    iget-object v0, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    #@29
    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    #@2b
    .line 1486
    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # I

    #@0
    .prologue
    .line 2809
    packed-switch p0, :pswitch_data_0

    #@3
    .line 2817
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 2811
    :pswitch_0
    const-string/jumbo v0, "ACTION_DOWN"

    #@b
    return-object v0

    #@c
    .line 2813
    :pswitch_1
    const-string/jumbo v0, "ACTION_UP"

    #@f
    return-object v0

    #@10
    .line 2815
    :pswitch_2
    const-string/jumbo v0, "ACTION_MULTIPLE"

    #@13
    return-object v0

    #@14
    .line 2809
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "action"    # I

    #@0
    .prologue
    .line 1655
    new-instance v0, Landroid/view/KeyEvent;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;I)V

    #@5
    return-object v0
.end method

.method public static changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1666
    new-instance v0, Landroid/view/KeyEvent;

    #@2
    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    #@5
    .line 1667
    .end local p0    # "event":Landroid/view/KeyEvent;
    .local v0, "event":Landroid/view/KeyEvent;
    iput p1, v0, Landroid/view/KeyEvent;->mFlags:I

    #@7
    .line 1668
    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "eventTime"    # J
    .param p3, "newRepeat"    # I

    #@0
    .prologue
    .line 1603
    new-instance v0, Landroid/view/KeyEvent;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    #@5
    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "eventTime"    # J
    .param p3, "newRepeat"    # I
    .param p4, "newFlags"    # I

    #@0
    .prologue
    .line 1619
    new-instance v0, Landroid/view/KeyEvent;

    #@2
    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    #@5
    .line 1620
    .local v0, "ret":Landroid/view/KeyEvent;
    iput-wide p1, v0, Landroid/view/KeyEvent;->mEventTime:J

    #@7
    .line 1621
    iput p3, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@9
    .line 1622
    iput p4, v0, Landroid/view/KeyEvent;->mFlags:I

    #@b
    .line 1623
    return-object v0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 2909
    new-instance v0, Landroid/view/KeyEvent;

    #@2
    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method public static getDeadChar(II)I
    .locals 1
    .param p0, "accent"    # I
    .param p1, "c"    # I

    #@0
    .prologue
    .line 1190
    invoke-static {p0, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getMaxKeyCode()I
    .locals 1

    #@0
    .prologue
    .line 1181
    const/16 v0, 0x113

    #@2
    return v0
.end method

.method public static getModifierMetaStateMask()I
    .locals 1

    #@0
    .prologue
    .line 1970
    const v0, 0x770ff

    #@3
    return v0
.end method

.method public static final isConfirmKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    #@0
    .prologue
    .line 1754
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 1759
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1757
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 1754
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final isGamepadButton(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    #@0
    .prologue
    .line 1712
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 1746
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1744
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 1712
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x60 -> :sswitch_0
        0x61 -> :sswitch_0
        0x62 -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x6e -> :sswitch_0
        0xbc -> :sswitch_0
        0xbd -> :sswitch_0
        0xbe -> :sswitch_0
        0xbf -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_0
        0xc3 -> :sswitch_0
        0xc4 -> :sswitch_0
        0xc5 -> :sswitch_0
        0xc6 -> :sswitch_0
        0xc7 -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0xcb -> :sswitch_0
    .end sparse-switch
.end method

.method public static final isMediaKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    #@0
    .prologue
    .line 1770
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 1784
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1782
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 1770
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final isMetaKey(I)Z
    .locals 2
    .param p0, "keyCode"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1840
    const/16 v1, 0x75

    #@3
    if-eq p0, v1, :cond_0

    #@5
    const/16 v1, 0x76

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static isModifierKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    #@0
    .prologue
    .line 1990
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 2004
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 2002
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 1990
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x39 -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3f -> :sswitch_0
        0x4e -> :sswitch_0
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
        0x75 -> :sswitch_0
        0x76 -> :sswitch_0
        0x77 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final isSystemKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    #@0
    .prologue
    .line 1792
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 1823
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1820
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 1792
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x4f -> :sswitch_0
        0x50 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xdc -> :sswitch_0
        0xdd -> :sswitch_0
        0xde -> :sswitch_0
    .end sparse-switch
.end method

.method public static final isWakeKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    #@0
    .prologue
    .line 1828
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 1835
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1833
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 1828
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0xe0 -> :sswitch_0
        0xe1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static keyCodeFromString(Ljava/lang/String;)I
    .locals 4
    .param p0, "symbolicName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2845
    const-string/jumbo v2, "KEYCODE_"

    #@4
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 2846
    const-string/jumbo v2, "KEYCODE_"

    #@d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@10
    move-result v2

    #@11
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14
    move-result-object p0

    #@15
    .line 2847
    invoke-static {p0}, Landroid/view/KeyEvent;->nativeKeyCodeFromString(Ljava/lang/String;)I

    #@18
    move-result v1

    #@19
    .line 2848
    .local v1, "keyCode":I
    if-lez v1, :cond_0

    #@1b
    .line 2849
    return v1

    #@1c
    .line 2853
    .end local v1    # "keyCode":I
    :cond_0
    const/16 v2, 0xa

    #@1e
    :try_start_0
    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result v2

    #@22
    return v2

    #@23
    .line 2854
    :catch_0
    move-exception v0

    #@24
    .line 2855
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return v3
.end method

.method public static keyCodeToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "keyCode"    # I

    #@0
    .prologue
    .line 2832
    invoke-static {p0}, Landroid/view/KeyEvent;->nativeKeyCodeToString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 2833
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "KEYCODE_"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    :goto_0
    return-object v1

    #@1b
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    goto :goto_0
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
    .locals 6
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I
    .param p2, "basic"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I

    #@0
    .prologue
    .line 2130
    and-int v3, p1, p2

    #@2
    if-eqz v3, :cond_0

    #@4
    const/4 v1, 0x1

    #@5
    .line 2131
    .local v1, "wantBasic":Z
    :goto_0
    or-int v0, p3, p4

    #@7
    .line 2132
    .local v0, "directional":I
    and-int v3, p1, v0

    #@9
    if-eqz v3, :cond_1

    #@b
    const/4 v2, 0x1

    #@c
    .line 2134
    .local v2, "wantLeftOrRight":Z
    :goto_1
    if-eqz v1, :cond_3

    #@e
    .line 2135
    if-eqz v2, :cond_2

    #@10
    .line 2136
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "modifiers must not contain "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    .line 2137
    invoke-static {p2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    .line 2136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 2137
    const-string/jumbo v5, " combined with "

    #@29
    .line 2136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 2138
    invoke-static {p3}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    .line 2136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    .line 2138
    const-string/jumbo v5, " or "

    #@38
    .line 2136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    .line 2138
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    .line 2136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v3

    #@4c
    .line 2130
    .end local v0    # "directional":I
    .end local v1    # "wantBasic":Z
    .end local v2    # "wantLeftOrRight":Z
    :cond_0
    const/4 v1, 0x0

    #@4d
    .restart local v1    # "wantBasic":Z
    goto :goto_0

    #@4e
    .line 2132
    .restart local v0    # "directional":I
    :cond_1
    const/4 v2, 0x0

    #@4f
    .restart local v2    # "wantLeftOrRight":Z
    goto :goto_1

    #@50
    .line 2140
    :cond_2
    not-int v3, v0

    #@51
    and-int/2addr v3, p0

    #@52
    return v3

    #@53
    .line 2141
    :cond_3
    if-eqz v2, :cond_4

    #@55
    .line 2142
    not-int v3, p2

    #@56
    and-int/2addr v3, p0

    #@57
    return v3

    #@58
    .line 2144
    :cond_4
    return p0
.end method

.method public static metaStateHasModifiers(II)Z
    .locals 5
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2109
    const v2, 0x700f00

    #@5
    and-int/2addr v2, p1

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 2110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "modifiers must not contain META_CAPS_LOCK_ON, META_NUM_LOCK_ON, META_SCROLL_LOCK_ON, META_CAP_LOCKED, META_ALT_LOCKED, META_SYM_LOCKED, or META_SELECTING"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 2116
    :cond_0
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    #@14
    move-result v2

    #@15
    const v3, 0x770ff

    #@18
    and-int p0, v2, v3

    #@1a
    .line 2118
    const/16 v2, 0x40

    #@1c
    const/16 v3, 0x80

    #@1e
    .line 2117
    invoke-static {p0, p1, v0, v2, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    #@21
    move-result p0

    #@22
    .line 2120
    const/4 v2, 0x2

    #@23
    const/16 v3, 0x10

    #@25
    const/16 v4, 0x20

    #@27
    .line 2119
    invoke-static {p0, p1, v2, v3, v4}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    #@2a
    move-result p0

    #@2b
    .line 2122
    const/16 v2, 0x1000

    #@2d
    const/16 v3, 0x2000

    #@2f
    const/16 v4, 0x4000

    #@31
    .line 2121
    invoke-static {p0, p1, v2, v3, v4}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    #@34
    move-result p0

    #@35
    .line 2124
    const/high16 v2, 0x10000

    #@37
    const/high16 v3, 0x20000

    #@39
    const/high16 v4, 0x40000

    #@3b
    .line 2123
    invoke-static {p0, p1, v2, v3, v4}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    #@3e
    move-result p0

    #@3f
    .line 2125
    if-ne p0, p1, :cond_1

    #@41
    :goto_0
    return v0

    #@42
    :cond_1
    move v0, v1

    #@43
    goto :goto_0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .locals 3
    .param p0, "metaState"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2073
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    #@4
    move-result v1

    #@5
    const v2, 0x770ff

    #@8
    and-int/2addr v1, v2

    #@9
    if-nez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public static metaStateToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "metaState"    # I

    #@0
    .prologue
    .line 2870
    if-nez p0, :cond_0

    #@2
    .line 2871
    const-string/jumbo v4, "0"

    #@5
    return-object v4

    #@6
    .line 2873
    :cond_0
    const/4 v3, 0x0

    #@7
    .line 2874
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@8
    .line 2875
    .end local v3    # "result":Ljava/lang/StringBuilder;
    .local v0, "i":I
    :goto_0
    if-eqz p0, :cond_5

    #@a
    .line 2876
    and-int/lit8 v4, p0, 0x1

    #@c
    if-eqz v4, :cond_1

    #@e
    const/4 v1, 0x1

    #@f
    .line 2877
    .local v1, "isSet":Z
    :goto_1
    ushr-int/lit8 p0, p0, 0x1

    #@11
    .line 2878
    if-eqz v1, :cond_3

    #@13
    .line 2879
    sget-object v4, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    #@15
    aget-object v2, v4, v0

    #@17
    .line 2880
    .local v2, "name":Ljava/lang/String;
    if-nez v3, :cond_4

    #@19
    .line 2881
    if-nez p0, :cond_2

    #@1b
    .line 2882
    return-object v2

    #@1c
    .line 2876
    .end local v1    # "isSet":Z
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    #@1d
    .restart local v1    # "isSet":Z
    goto :goto_1

    #@1e
    .line 2884
    .restart local v2    # "name":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@23
    .line 2890
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 2886
    .restart local v2    # "name":Ljava/lang/String;
    :cond_4
    const/16 v4, 0x7c

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    .line 2887
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    goto :goto_2

    #@2f
    .line 2892
    .end local v1    # "isSet":Z
    .end local v2    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    return-object v4
.end method

.method private static native nativeKeyCodeFromString(Ljava/lang/String;)I
.end method

.method private static native nativeKeyCodeToString(I)Ljava/lang/String;
.end method

.method public static normalizeMetaState(I)I
    .locals 1
    .param p0, "metaState"    # I

    #@0
    .prologue
    .line 2033
    and-int/lit16 v0, p0, 0xc0

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2034
    or-int/lit8 p0, p0, 0x1

    #@6
    .line 2036
    :cond_0
    and-int/lit8 v0, p0, 0x30

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 2037
    or-int/lit8 p0, p0, 0x2

    #@c
    .line 2039
    :cond_1
    and-int/lit16 v0, p0, 0x6000

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 2040
    or-int/lit16 p0, p0, 0x1000

    #@12
    .line 2042
    :cond_2
    const/high16 v0, 0x60000

    #@14
    and-int/2addr v0, p0

    #@15
    if-eqz v0, :cond_3

    #@17
    .line 2043
    const/high16 v0, 0x10000

    #@19
    or-int/2addr p0, v0

    #@1a
    .line 2045
    :cond_3
    and-int/lit16 v0, p0, 0x100

    #@1c
    if-eqz v0, :cond_4

    #@1e
    .line 2046
    const/high16 v0, 0x100000

    #@20
    or-int/2addr p0, v0

    #@21
    .line 2048
    :cond_4
    and-int/lit16 v0, p0, 0x200

    #@23
    if-eqz v0, :cond_5

    #@25
    .line 2049
    or-int/lit8 p0, p0, 0x2

    #@27
    .line 2051
    :cond_5
    and-int/lit16 v0, p0, 0x400

    #@29
    if-eqz v0, :cond_6

    #@2b
    .line 2052
    or-int/lit8 p0, p0, 0x4

    #@2d
    .line 2054
    :cond_6
    const v0, 0x7770ff

    #@30
    and-int/2addr v0, p0

    #@31
    return v0
.end method

.method private static obtain()Landroid/view/KeyEvent;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1502
    sget-object v2, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 1503
    :try_start_0
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    #@6
    .line 1504
    .local v0, "ev":Landroid/view/KeyEvent;
    if-nez v0, :cond_0

    #@8
    .line 1505
    new-instance v1, Landroid/view/KeyEvent;

    #@a
    invoke-direct {v1}, Landroid/view/KeyEvent;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v2

    #@e
    return-object v1

    #@f
    .line 1507
    :cond_0
    :try_start_1
    iget-object v1, v0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    #@11
    sput-object v1, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    #@13
    .line 1508
    sget v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    #@15
    add-int/lit8 v1, v1, -0x1

    #@17
    sput v1, Landroid/view/KeyEvent;->gRecyclerUsed:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    monitor-exit v2

    #@1a
    .line 1510
    iput-object v3, v0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    #@1c
    .line 1511
    invoke-virtual {v0}, Landroid/view/KeyEvent;->prepareForReuse()V

    #@1f
    .line 1512
    return-object v0

    #@20
    .line 1502
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method

.method public static obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .locals 2
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

    #@0
    .prologue
    .line 1523
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    #@3
    move-result-object v0

    #@4
    .line 1524
    .local v0, "ev":Landroid/view/KeyEvent;
    iput-wide p0, v0, Landroid/view/KeyEvent;->mDownTime:J

    #@6
    .line 1525
    iput-wide p2, v0, Landroid/view/KeyEvent;->mEventTime:J

    #@8
    .line 1526
    iput p4, v0, Landroid/view/KeyEvent;->mAction:I

    #@a
    .line 1527
    iput p5, v0, Landroid/view/KeyEvent;->mKeyCode:I

    #@c
    .line 1528
    iput p6, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@e
    .line 1529
    iput p7, v0, Landroid/view/KeyEvent;->mMetaState:I

    #@10
    .line 1530
    iput p8, v0, Landroid/view/KeyEvent;->mDeviceId:I

    #@12
    .line 1531
    iput p9, v0, Landroid/view/KeyEvent;->mScanCode:I

    #@14
    .line 1532
    iput p10, v0, Landroid/view/KeyEvent;->mFlags:I

    #@16
    .line 1533
    iput p11, v0, Landroid/view/KeyEvent;->mSource:I

    #@18
    .line 1534
    iput-object p12, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    #@1a
    .line 1535
    return-object v0
.end method

.method public static obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 4
    .param p0, "other"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1544
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    #@3
    move-result-object v0

    #@4
    .line 1545
    .local v0, "ev":Landroid/view/KeyEvent;
    iget-wide v2, p0, Landroid/view/KeyEvent;->mDownTime:J

    #@6
    iput-wide v2, v0, Landroid/view/KeyEvent;->mDownTime:J

    #@8
    .line 1546
    iget-wide v2, p0, Landroid/view/KeyEvent;->mEventTime:J

    #@a
    iput-wide v2, v0, Landroid/view/KeyEvent;->mEventTime:J

    #@c
    .line 1547
    iget v1, p0, Landroid/view/KeyEvent;->mAction:I

    #@e
    iput v1, v0, Landroid/view/KeyEvent;->mAction:I

    #@10
    .line 1548
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@12
    iput v1, v0, Landroid/view/KeyEvent;->mKeyCode:I

    #@14
    .line 1549
    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@16
    iput v1, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@18
    .line 1550
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@1a
    iput v1, v0, Landroid/view/KeyEvent;->mMetaState:I

    #@1c
    .line 1551
    iget v1, p0, Landroid/view/KeyEvent;->mDeviceId:I

    #@1e
    iput v1, v0, Landroid/view/KeyEvent;->mDeviceId:I

    #@20
    .line 1552
    iget v1, p0, Landroid/view/KeyEvent;->mScanCode:I

    #@22
    iput v1, v0, Landroid/view/KeyEvent;->mScanCode:I

    #@24
    .line 1553
    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    #@26
    iput v1, v0, Landroid/view/KeyEvent;->mFlags:I

    #@28
    .line 1554
    iget v1, p0, Landroid/view/KeyEvent;->mSource:I

    #@2a
    iput v1, v0, Landroid/view/KeyEvent;->mSource:I

    #@2c
    .line 1555
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    #@2e
    iput-object v1, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    #@30
    .line 1556
    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    #@0
    .prologue
    .line 2334
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    #@2
    or-int/lit8 v0, v0, 0x20

    #@4
    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    #@6
    .line 2333
    return-void
.end method

.method public bridge synthetic copy()Landroid/view/InputEvent;
    .locals 1

    #@0
    .prologue
    .line 1561
    invoke-virtual {p0}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public copy()Landroid/view/KeyEvent;
    .locals 1

    #@0
    .prologue
    .line 1562
    invoke-static {p0}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;)Z
    .locals 1
    .param p1, "receiver"    # Landroid/view/KeyEvent$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2619
    invoke-virtual {p0, p1, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "receiver"    # Landroid/view/KeyEvent$Callback;
    .param p2, "state"    # Landroid/view/KeyEvent$DispatcherState;
    .param p3, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 2635
    iget v5, p0, Landroid/view/KeyEvent;->mAction:I

    #@4
    packed-switch v5, :pswitch_data_0

    #@7
    .line 2685
    return v6

    #@8
    .line 2637
    :pswitch_0
    iget v5, p0, Landroid/view/KeyEvent;->mFlags:I

    #@a
    const v6, -0x40000001    # -1.9999999f

    #@d
    and-int/2addr v5, v6

    #@e
    iput v5, p0, Landroid/view/KeyEvent;->mFlags:I

    #@10
    .line 2640
    iget v5, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@12
    invoke-interface {p1, v5, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@15
    move-result v4

    #@16
    .line 2641
    .local v4, "res":Z
    if-eqz p2, :cond_0

    #@18
    .line 2642
    if-eqz v4, :cond_1

    #@1a
    iget v5, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@1c
    if-nez v5, :cond_1

    #@1e
    iget v5, p0, Landroid/view/KeyEvent;->mFlags:I

    #@20
    const/high16 v6, 0x40000000    # 2.0f

    #@22
    and-int/2addr v5, v6

    #@23
    if-eqz v5, :cond_1

    #@25
    .line 2644
    invoke-virtual {p2, p0, p3}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@28
    .line 2656
    .end local v4    # "res":Z
    :cond_0
    :goto_0
    return v4

    #@29
    .line 2645
    .restart local v4    # "res":Z
    :cond_1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isLongPress()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_0

    #@2f
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_0

    #@35
    .line 2647
    :try_start_0
    iget v5, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@37
    invoke-interface {p1, v5, p0}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_0

    #@3d
    .line 2649
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 2650
    const/4 v4, 0x1

    #@41
    .local v4, "res":Z
    goto :goto_0

    #@42
    .line 2661
    .end local v4    # "res":Z
    :pswitch_1
    if-eqz p2, :cond_2

    #@44
    .line 2662
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    #@47
    .line 2664
    :cond_2
    iget v5, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@49
    invoke-interface {p1, v5, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@4c
    move-result v5

    #@4d
    return v5

    #@4e
    .line 2666
    :pswitch_2
    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@50
    .line 2667
    .local v1, "count":I
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@52
    .line 2668
    .local v0, "code":I
    invoke-interface {p1, v0, v1, p0}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    #@55
    move-result v5

    #@56
    if-eqz v5, :cond_3

    #@58
    .line 2669
    return v7

    #@59
    .line 2671
    :cond_3
    if-eqz v0, :cond_5

    #@5b
    .line 2672
    iput v6, p0, Landroid/view/KeyEvent;->mAction:I

    #@5d
    .line 2673
    iput v6, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@5f
    .line 2674
    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@62
    move-result v3

    #@63
    .line 2675
    .local v3, "handled":Z
    if-eqz v3, :cond_4

    #@65
    .line 2676
    iput v7, p0, Landroid/view/KeyEvent;->mAction:I

    #@67
    .line 2677
    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@6a
    .line 2679
    :cond_4
    const/4 v5, 0x2

    #@6b
    iput v5, p0, Landroid/view/KeyEvent;->mAction:I

    #@6d
    .line 2680
    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@6f
    .line 2681
    return v3

    #@70
    .line 2683
    .end local v3    # "handled":Z
    :cond_5
    return v6

    #@71
    .line 2652
    .end local v0    # "code":I
    .end local v1    # "count":I
    .local v4, "res":Z
    :catch_0
    move-exception v2

    #@72
    .local v2, "e":Ljava/lang/AbstractMethodError;
    goto :goto_0

    #@73
    .line 2635
    nop

    #@74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getAction()I
    .locals 1

    #@0
    .prologue
    .line 2316
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    #@2
    return v0
.end method

.method public final getCharacters()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2384
    iget-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getDeviceId()I
    .locals 1

    #@0
    .prologue
    .line 1846
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    #@2
    return v0
.end method

.method public getDisplayLabel()C
    .locals 2

    #@0
    .prologue
    .line 2488
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@6
    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final getDownTime()J
    .locals 2

    #@0
    .prologue
    .line 2422
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    #@2
    return-wide v0
.end method

.method public final getEventTime()J
    .locals 2

    #@0
    .prologue
    .line 2434
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    #@2
    return-wide v0
.end method

.method public final getEventTimeNano()J
    .locals 4

    #@0
    .prologue
    .line 2453
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    #@2
    const-wide/32 v2, 0xf4240

    #@5
    mul-long/2addr v0, v2

    #@6
    return-wide v0
.end method

.method public final getFlags()I
    .locals 1

    #@0
    .prologue
    .line 1925
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    #@2
    return v0
.end method

.method public final getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .locals 1

    #@0
    .prologue
    .line 2478
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    #@2
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getKeyCode()I
    .locals 1

    #@0
    .prologue
    .line 2372
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@2
    return v0
.end method

.method public getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z
    .locals 2
    .param p1, "results"    # Landroid/view/KeyCharacterMap$KeyData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2550
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final getKeyboardDevice()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2464
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    #@2
    return v0
.end method

.method public getMatch([C)C
    .locals 1
    .param p1, "chars"    # [C

    #@0
    .prologue
    .line 2565
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/view/KeyEvent;->getMatch([CI)C

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getMatch([CI)C
    .locals 2
    .param p1, "chars"    # [C
    .param p2, "metaState"    # I

    #@0
    .prologue
    .line 2578
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@6
    invoke-virtual {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final getMetaState()I
    .locals 1

    #@0
    .prologue
    .line 1896
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@2
    return v0
.end method

.method public final getModifiers()I
    .locals 2

    #@0
    .prologue
    .line 1916
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@2
    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    #@5
    move-result v0

    #@6
    const v1, 0x770ff

    #@9
    and-int/2addr v0, v1

    #@a
    return v0
.end method

.method public getNumber()C
    .locals 2

    #@0
    .prologue
    .line 2602
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@6
    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getNumber(I)C

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final getRepeatCount()I
    .locals 1

    #@0
    .prologue
    .line 2407
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@2
    return v0
.end method

.method public final getScanCode()I
    .locals 1

    #@0
    .prologue
    .line 2395
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    #@2
    return v0
.end method

.method public final getSource()I
    .locals 1

    #@0
    .prologue
    .line 1852
    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    #@2
    return v0
.end method

.method public getUnicodeChar()I
    .locals 1

    #@0
    .prologue
    .line 2511
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@2
    invoke-virtual {p0, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getUnicodeChar(I)I
    .locals 2
    .param p1, "metaState"    # I

    #@0
    .prologue
    .line 2535
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@6
    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->get(II)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final hasModifiers(I)Z
    .locals 1
    .param p1, "modifiers"    # I

    #@0
    .prologue
    .line 2194
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@2
    invoke-static {v0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final hasNoModifiers()Z
    .locals 1

    #@0
    .prologue
    .line 2163
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@2
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final isAltPressed()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2207
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public final isCanceled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2324
    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x20

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public final isCapsLockOn()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2282
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@3
    const/high16 v2, 0x100000

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public final isCtrlPressed()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2245
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@3
    and-int/lit16 v1, v1, 0x1000

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public final isDown()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1693
    iget v1, p0, Landroid/view/KeyEvent;->mAction:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public final isFunctionPressed()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2270
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@3
    and-int/lit8 v1, v1, 0x8

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public final isLongPress()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2362
    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    #@3
    and-int/lit16 v1, v1, 0x80

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public final isMetaPressed()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2258
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@3
    const/high16 v2, 0x10000

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public final isNumLockOn()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2294
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@3
    const/high16 v2, 0x200000

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public isPrintingKey()Z
    .locals 2

    #@0
    .prologue
    .line 2611
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@6
    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final isScrollLockOn()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2306
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@3
    const/high16 v2, 0x400000

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public final isShiftPressed()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2220
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public final isSymPressed()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2232
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public final isSystem()Z
    .locals 1

    #@0
    .prologue
    .line 1699
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@2
    invoke-static {v0}, Landroid/view/KeyEvent;->isSystemKey(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final isTainted()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1674
    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    #@3
    const/high16 v2, -0x80000000

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public final isTracking()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2354
    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    #@3
    and-int/lit16 v1, v1, 0x200

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public final isWakeKey()Z
    .locals 1

    #@0
    .prologue
    .line 1704
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@2
    invoke-static {v0}, Landroid/view/KeyEvent;->isWakeKey(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final recycle()V
    .locals 3

    #@0
    .prologue
    .line 1574
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    #@3
    .line 1575
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    #@6
    .line 1577
    sget-object v1, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 1578
    :try_start_0
    sget v0, Landroid/view/KeyEvent;->gRecyclerUsed:I

    #@b
    const/16 v2, 0xa

    #@d
    if-ge v0, v2, :cond_0

    #@f
    .line 1579
    sget v0, Landroid/view/KeyEvent;->gRecyclerUsed:I

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    sput v0, Landroid/view/KeyEvent;->gRecyclerUsed:I

    #@15
    .line 1580
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    #@17
    iput-object v0, p0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    #@19
    .line 1581
    sput-object p0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_0
    monitor-exit v1

    #@1c
    .line 1573
    return-void

    #@1d
    .line 1577
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public final recycleIfNeededAfterDispatch()V
    .locals 0

    #@0
    .prologue
    .line 1588
    return-void
.end method

.method public final setSource(I)V
    .locals 0
    .param p1, "source"    # I

    #@0
    .prologue
    .line 1858
    iput p1, p0, Landroid/view/KeyEvent;->mSource:I

    #@2
    .line 1857
    return-void
.end method

.method public final setTainted(Z)V
    .locals 2
    .param p1, "tainted"    # Z

    #@0
    .prologue
    .line 1680
    if-eqz p1, :cond_0

    #@2
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    #@4
    const/high16 v1, -0x80000000

    #@6
    or-int/2addr v0, v1

    #@7
    :goto_0
    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    #@9
    .line 1679
    return-void

    #@a
    .line 1680
    :cond_0
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    #@c
    const v1, 0x7fffffff

    #@f
    and-int/2addr v0, v1

    #@10
    goto :goto_0
.end method

.method public final startTracking()V
    .locals 2

    #@0
    .prologue
    .line 2345
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    #@2
    const/high16 v1, 0x40000000    # 2.0f

    #@4
    or-int/2addr v0, v1

    #@5
    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    #@7
    .line 2344
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 2782
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2783
    .local v0, "msg":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "KeyEvent { action="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Landroid/view/KeyEvent;->mAction:I

    #@e
    invoke-static {v2}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 2784
    const-string/jumbo v1, ", keyCode="

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget v2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@1e
    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 2785
    const-string/jumbo v1, ", scanCode="

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    iget v2, p0, Landroid/view/KeyEvent;->mScanCode:I

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    .line 2786
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    #@33
    if-eqz v1, :cond_0

    #@35
    .line 2787
    const-string/jumbo v1, ", characters=\""

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget-object v2, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    const-string/jumbo v2, "\""

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 2789
    :cond_0
    const-string/jumbo v1, ", metaState="

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    iget v2, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@51
    invoke-static {v2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    .line 2790
    const-string/jumbo v1, ", flags=0x"

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    iget v2, p0, Landroid/view/KeyEvent;->mFlags:I

    #@61
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    .line 2791
    const-string/jumbo v1, ", repeatCount="

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    iget v2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    .line 2792
    const-string/jumbo v1, ", eventTime="

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    iget-wide v2, p0, Landroid/view/KeyEvent;->mEventTime:J

    #@7d
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@80
    .line 2793
    const-string/jumbo v1, ", downTime="

    #@83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    iget-wide v2, p0, Landroid/view/KeyEvent;->mDownTime:J

    #@89
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@8c
    .line 2794
    const-string/jumbo v1, ", deviceId="

    #@8f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v1

    #@93
    iget v2, p0, Landroid/view/KeyEvent;->mDeviceId:I

    #@95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@98
    .line 2795
    const-string/jumbo v1, ", source=0x"

    #@9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v1

    #@9f
    iget v2, p0, Landroid/view/KeyEvent;->mSource:I

    #@a1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@a4
    move-result-object v2

    #@a5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    .line 2796
    const-string/jumbo v1, " }"

    #@ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    .line 2797
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v1

    #@b2
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 2926
    const/4 v0, 0x2

    #@1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4
    .line 2928
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 2929
    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 2930
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    #@10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 2931
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    #@15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 2932
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    #@1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 2933
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    #@1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 2934
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    #@24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 2935
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    #@29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 2936
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    #@2e
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@31
    .line 2937
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    #@33
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@36
    .line 2925
    return-void
.end method
