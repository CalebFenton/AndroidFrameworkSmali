.class public Landroid/view/HapticFeedbackConstants;
.super Ljava/lang/Object;
.source "HapticFeedbackConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HapticFeedbackConstants$PrivateFlags;,
        Landroid/view/HapticFeedbackConstants$Flags;
    }
.end annotation


# static fields
.field public static final blacklist ASSISTANT_BUTTON:I = 0x2712

.field public static final blacklist BIOMETRIC_CONFIRM:I = 0x2714

.field public static final blacklist BIOMETRIC_REJECT:I = 0x2715

.field public static final greylist-max-o CALENDAR_DATE:I = 0x5

.field public static final whitelist CLOCK_TICK:I = 0x4

.field public static final whitelist CONFIRM:I = 0x10

.field public static final whitelist CONTEXT_CLICK:I = 0x6

.field public static final greylist-max-o DRAG_CROSSING:I = 0xb

.field public static final whitelist DRAG_START:I = 0x19

.field public static final greylist-max-o EDGE_RELEASE:I = 0xf

.field public static final greylist-max-o EDGE_SQUEEZE:I = 0xe

.field public static final whitelist FLAG_IGNORE_GLOBAL_SETTING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_IGNORE_VIEW_SETTING:I = 0x1

.field public static final whitelist GESTURE_END:I = 0xd

.field public static final whitelist GESTURE_START:I = 0xc

.field public static final whitelist GESTURE_THRESHOLD_ACTIVATE:I = 0x17

.field public static final whitelist GESTURE_THRESHOLD_DEACTIVATE:I = 0x18

.field public static final whitelist KEYBOARD_PRESS:I = 0x3

.field public static final whitelist KEYBOARD_RELEASE:I = 0x7

.field public static final whitelist KEYBOARD_TAP:I = 0x3

.field public static final whitelist LONG_PRESS:I = 0x0

.field public static final blacklist LONG_PRESS_POWER_BUTTON:I = 0x2713

.field public static final whitelist NO_HAPTICS:I = -0x1

.field public static final blacklist PRIVATE_FLAG_APPLY_INPUT_METHOD_SETTINGS:I = 0x1

.field public static final whitelist REJECT:I = 0x11

.field public static final greylist-max-o SAFE_MODE_ENABLED:I = 0x2711

.field public static final blacklist SCROLL_ITEM_FOCUS:I = 0x13

.field public static final blacklist SCROLL_LIMIT:I = 0x14

.field public static final blacklist SCROLL_TICK:I = 0x12

.field public static final whitelist SEGMENT_FREQUENT_TICK:I = 0x1b

.field public static final whitelist SEGMENT_TICK:I = 0x1a

.field public static final whitelist TEXT_HANDLE_MOVE:I = 0x9

.field public static final whitelist TOGGLE_OFF:I = 0x16

.field public static final whitelist TOGGLE_ON:I = 0x15

.field public static final whitelist VIRTUAL_KEY:I = 0x1

.field public static final whitelist VIRTUAL_KEY_RELEASE:I = 0x8


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
