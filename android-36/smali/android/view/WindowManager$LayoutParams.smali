.class public Landroid/view/WindowManager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "WindowManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManager$LayoutParams$InputFeatureFlags;,
        Landroid/view/WindowManager$LayoutParams$LayoutInDisplayCutoutMode;,
        Landroid/view/WindowManager$LayoutParams$SystemUiVisibilityFlags;,
        Landroid/view/WindowManager$LayoutParams$DisplayFlags;,
        Landroid/view/WindowManager$LayoutParams$SoftInputModeFlags;,
        Landroid/view/WindowManager$LayoutParams$PrivateFlags;,
        Landroid/view/WindowManager$LayoutParams$SystemFlags;,
        Landroid/view/WindowManager$LayoutParams$Flags;,
        Landroid/view/WindowManager$LayoutParams$WindowType;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACCESSIBILITY_ANCHOR_CHANGED:I = 0x1000000

.field public static final blacklist ACCESSIBILITY_TITLE_CHANGED:I = 0x2000000

.field public static final whitelist ALPHA_CHANGED:I = 0x80

.field public static final whitelist ANIMATION_CHANGED:I = 0x10

.field public static final blacklist BLUR_BEHIND_RADIUS_CHANGED:I = 0x20000000

.field public static final whitelist BRIGHTNESS_OVERRIDE_FULL:F = 1.0f

.field public static final whitelist BRIGHTNESS_OVERRIDE_NONE:F = -1.0f

.field public static final whitelist BRIGHTNESS_OVERRIDE_OFF:F = 0.0f

.field public static final greylist-max-o BUTTON_BRIGHTNESS_CHANGED:I = 0x2000

.field public static final greylist-max-o COLOR_MODE_CHANGED:I = 0x4000000

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DIM_AMOUNT_CHANGED:I = 0x20

.field public static final blacklist DISPLAY_FLAGS_CHANGED:I = 0x400000

.field public static final whitelist DISPLAY_FLAG_DISABLE_HDR_CONVERSION:I = 0x1

.field public static final whitelist FIRST_APPLICATION_WINDOW:I = 0x1

.field public static final whitelist FIRST_SUB_WINDOW:I = 0x3e8

.field public static final whitelist FIRST_SYSTEM_WINDOW:I = 0x7d0

.field public static final whitelist FLAGS_CHANGED:I = 0x4

.field public static final whitelist FLAG_ALLOW_LOCK_WHILE_SCREEN_ON:I = 0x1

.field public static final whitelist FLAG_ALT_FOCUSABLE_IM:I = 0x20000

.field public static final whitelist FLAG_BLUR_BEHIND:I = 0x4

.field public static final whitelist FLAG_DIM_BEHIND:I = 0x2

.field public static final whitelist FLAG_DISMISS_KEYGUARD:I = 0x400000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_DITHER:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS:I = -0x80000000

.field public static final whitelist FLAG_FORCE_NOT_FULLSCREEN:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_FULLSCREEN:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_HARDWARE_ACCELERATED:I = 0x1000000

.field public static final whitelist FLAG_IGNORE_CHEEK_PRESSES:I = 0x8000

.field public static final whitelist FLAG_KEEP_SCREEN_ON:I = 0x80

.field public static final whitelist FLAG_LAYOUT_ATTACHED_IN_DECOR:I = 0x40000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_LAYOUT_INSET_DECOR:I = 0x10000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_LAYOUT_IN_OVERSCAN:I = 0x2000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_LAYOUT_IN_SCREEN:I = 0x100

.field public static final whitelist FLAG_LAYOUT_NO_LIMITS:I = 0x200

.field public static final whitelist FLAG_LOCAL_FOCUS_MODE:I = 0x10000000

.field public static final whitelist FLAG_NOT_FOCUSABLE:I = 0x8

.field public static final whitelist FLAG_NOT_TOUCHABLE:I = 0x10

.field public static final whitelist FLAG_NOT_TOUCH_MODAL:I = 0x20

.field public static final whitelist FLAG_SCALED:I = 0x4000

.field public static final whitelist FLAG_SECURE:I = 0x2000

.field public static final whitelist FLAG_SHOW_WALLPAPER:I = 0x100000

.field public static final whitelist FLAG_SHOW_WHEN_LOCKED:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist FLAG_SLIPPERY:I = 0x20000000

.field public static final whitelist FLAG_SPLIT_TOUCH:I = 0x800000

.field public static final whitelist FLAG_TOUCHABLE_WHEN_WAKING:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_TRANSLUCENT_NAVIGATION:I = 0x8000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_TRANSLUCENT_STATUS:I = 0x4000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_TURN_SCREEN_ON:I = 0x200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_WATCH_OUTSIDE_TOUCH:I = 0x40000

.field public static final whitelist FORMAT_CHANGED:I = 0x8

.field public static final greylist-max-o INPUT_FEATURES_CHANGED:I = 0x10000

.field public static final greylist-max-r INPUT_FEATURE_DISABLE_USER_ACTIVITY:I = 0x2

.field public static final greylist-max-o INPUT_FEATURE_NO_INPUT_CHANNEL:I = 0x1

.field public static final blacklist INPUT_FEATURE_SENSITIVE_FOR_PRIVACY:I = 0x8

.field public static final blacklist INPUT_FEATURE_SPY:I = 0x4

.field public static final blacklist INSET_FLAGS_CHANGED:I = 0x8000000

.field public static final greylist-max-o INVALID_WINDOW_TYPE:I = -0x1

.field public static final whitelist LAST_APPLICATION_WINDOW:I = 0x63

.field public static final whitelist LAST_SUB_WINDOW:I = 0x7cf

.field public static final whitelist LAST_SYSTEM_WINDOW:I = 0xbb7

.field public static final whitelist LAYOUT_CHANGED:I = 0x1

.field public static final whitelist LAYOUT_IN_DISPLAY_CUTOUT_MODE_ALWAYS:I = 0x3

.field public static final whitelist LAYOUT_IN_DISPLAY_CUTOUT_MODE_DEFAULT:I = 0x0

.field public static final whitelist LAYOUT_IN_DISPLAY_CUTOUT_MODE_NEVER:I = 0x2

.field public static final whitelist LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES:I = 0x1

.field public static final whitelist MEMORY_TYPE_CHANGED:I = 0x100

.field public static final whitelist MEMORY_TYPE_GPU:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MEMORY_TYPE_HARDWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MEMORY_TYPE_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MEMORY_TYPE_PUSH_BUFFERS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist MINIMAL_POST_PROCESSING_PREFERENCE_CHANGED:I = 0x10000000

.field public static final greylist-max-o PREFERRED_DISPLAY_MODE_ID:I = 0x800000

.field public static final blacklist PREFERRED_MAX_DISPLAY_REFRESH_RATE:I = -0x80000000

.field public static final blacklist PREFERRED_MIN_DISPLAY_REFRESH_RATE:I = 0x40000000

.field public static final greylist-max-o PREFERRED_REFRESH_RATE_CHANGED:I = 0x200000

.field public static final greylist-max-o PRIVATE_FLAGS_CHANGED:I = 0x20000

.field public static final blacklist PRIVATE_FLAG_ALLOW_ACTION_KEY_EVENTS:I = 0x800000

.field public static final blacklist PRIVATE_FLAG_APP_PROGRESS_GENERATION_ALLOWED:I = 0x80

.field public static final blacklist PRIVATE_FLAG_COLOR_SPACE_AGNOSTIC:I = 0x1000000

.field public static final blacklist PRIVATE_FLAG_CONSUME_IME_INSETS:I = 0x2000000

.field public static final greylist-max-o PRIVATE_FLAG_DISABLE_WALLPAPER_TOUCH_EVENTS:I = 0x400

.field public static final blacklist PRIVATE_FLAG_EDGE_TO_EDGE_ENFORCED:I = 0x800

.field public static final blacklist PRIVATE_FLAG_EXCLUDE_FROM_SCREEN_MAGNIFICATION:I = 0x200000

.field public static final blacklist PRIVATE_FLAG_FIT_INSETS_CONTROLLED:I = 0x10000000

.field public static final greylist-max-o PRIVATE_FLAG_FORCE_DECOR_VIEW_VISIBILITY:I = 0x2000

.field public static final blacklist PRIVATE_FLAG_FORCE_DRAW_BAR_BACKGROUNDS:I = 0x8000

.field public static final greylist-max-o PRIVATE_FLAG_FORCE_HARDWARE_ACCELERATED:I = 0x2

.field public static final blacklist PRIVATE_FLAG_IMMERSIVE_CONFIRMATION_WINDOW:I = 0x20000

.field public static final blacklist PRIVATE_FLAG_INSET_PARENT_FRAME_BY_IME:I = 0x40000000

.field public static final blacklist PRIVATE_FLAG_INTERCEPT_GLOBAL_DRAG_AND_DROP:I = -0x80000000

.field public static final greylist-max-o PRIVATE_FLAG_IS_ROUNDED_CORNERS_OVERLAY:I = 0x100000

.field public static final greylist-max-o PRIVATE_FLAG_LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME:I = 0x4000

.field public static final blacklist PRIVATE_FLAG_LAYOUT_SIZE_EXTENDED_BY_CUTOUT:I = 0x1000

.field public static final blacklist PRIVATE_FLAG_NOT_MAGNIFIABLE:I = 0x400000

.field public static final greylist PRIVATE_FLAG_NO_MOVE_ANIMATION:I = 0x40

.field public static final blacklist PRIVATE_FLAG_OPTIMIZE_MEASURE:I = 0x200

.field public static final blacklist PRIVATE_FLAG_OPT_OUT_EDGE_TO_EDGE:I = 0x4000000

.field public static final blacklist PRIVATE_FLAG_OVERRIDE_LAYOUT_IN_DISPLAY_CUTOUT_MODE:I = 0x40000

.field public static final greylist-max-o PRIVATE_FLAG_SUSTAINED_PERFORMANCE_MODE:I = 0x10000

.field public static final blacklist PRIVATE_FLAG_SYSTEM_APPLICATION_OVERLAY:I = 0x8

.field public static final greylist-max-o PRIVATE_FLAG_SYSTEM_ERROR:I = 0x100

.field public static final blacklist PRIVATE_FLAG_TRUSTED_OVERLAY:I = 0x20000000

.field public static final blacklist PRIVATE_FLAG_UNRESTRICTED_GESTURE_EXCLUSION:I = 0x20

.field public static final greylist-max-o PRIVATE_FLAG_WANTS_OFFSET_NOTIFICATIONS:I = 0x4

.field public static final whitelist ROTATION_ANIMATION_CHANGED:I = 0x1000

.field public static final whitelist ROTATION_ANIMATION_CROSSFADE:I = 0x1

.field public static final whitelist ROTATION_ANIMATION_JUMPCUT:I = 0x2

.field public static final whitelist ROTATION_ANIMATION_ROTATE:I = 0x0

.field public static final whitelist ROTATION_ANIMATION_SEAMLESS:I = 0x3

.field public static final greylist-max-o ROTATION_ANIMATION_UNSPECIFIED:I = -0x1

.field public static final whitelist SCREEN_BRIGHTNESS_CHANGED:I = 0x800

.field public static final whitelist SCREEN_ORIENTATION_CHANGED:I = 0x400

.field public static final whitelist SOFT_INPUT_ADJUST_NOTHING:I = 0x30

.field public static final whitelist SOFT_INPUT_ADJUST_PAN:I = 0x20

.field public static final whitelist SOFT_INPUT_ADJUST_RESIZE:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SOFT_INPUT_ADJUST_UNSPECIFIED:I = 0x0

.field public static final whitelist SOFT_INPUT_IS_FORWARD_NAVIGATION:I = 0x100

.field public static final whitelist SOFT_INPUT_MASK_ADJUST:I = 0xf0

.field public static final whitelist SOFT_INPUT_MASK_STATE:I = 0xf

.field public static final whitelist SOFT_INPUT_MODE_CHANGED:I = 0x200

.field public static final whitelist SOFT_INPUT_STATE_ALWAYS_HIDDEN:I = 0x3

.field public static final whitelist SOFT_INPUT_STATE_ALWAYS_VISIBLE:I = 0x5

.field public static final whitelist SOFT_INPUT_STATE_HIDDEN:I = 0x2

.field public static final whitelist SOFT_INPUT_STATE_UNCHANGED:I = 0x1

.field public static final whitelist SOFT_INPUT_STATE_UNSPECIFIED:I = 0x0

.field public static final whitelist SOFT_INPUT_STATE_VISIBLE:I = 0x4

.field public static final greylist-max-o SURFACE_INSETS_CHANGED:I = 0x100000

.field public static final whitelist SYSTEM_FLAG_HIDE_NON_SYSTEM_OVERLAY_WINDOWS:I = 0x80000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SYSTEM_FLAG_SHOW_FOR_ALL_USERS:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o SYSTEM_UI_LISTENER_CHANGED:I = 0x8000

.field public static final greylist-max-o SYSTEM_UI_VISIBILITY_CHANGED:I = 0x4000

.field public static final whitelist TITLE_CHANGED:I = 0x40

.field public static final greylist-max-o TRANSLUCENT_FLAGS_CHANGED:I = 0x80000

.field public static final blacklist TYPE_ACCESSIBILITY_MAGNIFICATION_OVERLAY:I = 0x7f7

.field public static final whitelist TYPE_ACCESSIBILITY_OVERLAY:I = 0x7f0

.field public static final whitelist TYPE_APPLICATION:I = 0x2

.field public static final greylist-max-o TYPE_APPLICATION_ABOVE_SUB_PANEL:I = 0x3ed

.field public static final whitelist TYPE_APPLICATION_ATTACHED_DIALOG:I = 0x3eb

.field public static final whitelist TYPE_APPLICATION_MEDIA:I = 0x3e9

.field public static final greylist TYPE_APPLICATION_MEDIA_OVERLAY:I = 0x3ec

.field public static final whitelist TYPE_APPLICATION_OVERLAY:I = 0x7f6

.field public static final whitelist TYPE_APPLICATION_PANEL:I = 0x3e8

.field public static final whitelist TYPE_APPLICATION_STARTING:I = 0x3

.field public static final whitelist TYPE_APPLICATION_SUB_PANEL:I = 0x3ea

.field public static final whitelist TYPE_BASE_APPLICATION:I = 0x1

.field public static final greylist-max-o TYPE_BOOT_PROGRESS:I = 0x7e5

.field public static final whitelist TYPE_CHANGED:I = 0x2

.field public static final greylist-max-r TYPE_DISPLAY_OVERLAY:I = 0x7ea

.field public static final greylist-max-o TYPE_DOCK_DIVIDER:I = 0x7f2

.field public static final greylist-max-o TYPE_DRAG:I = 0x7e0

.field public static final whitelist TYPE_DRAWN_APPLICATION:I = 0x4

.field public static final greylist-max-o TYPE_INPUT_CONSUMER:I = 0x7e6

.field public static final whitelist TYPE_INPUT_METHOD:I = 0x7db

.field public static final whitelist TYPE_INPUT_METHOD_DIALOG:I = 0x7dc

.field public static final greylist TYPE_KEYGUARD:I = 0x7d4

.field public static final whitelist TYPE_KEYGUARD_DIALOG:I = 0x7d9

.field public static final greylist-max-o TYPE_MAGNIFICATION_OVERLAY:I = 0x7eb

.field public static final greylist-max-o TYPE_NAVIGATION_BAR:I = 0x7e3

.field public static final greylist-max-o TYPE_NAVIGATION_BAR_PANEL:I = 0x7e8

.field public static final blacklist TYPE_NOTIFICATION_SHADE:I = 0x7f8

.field public static final whitelist TYPE_PHONE:I = 0x7d2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TYPE_POINTER:I = 0x7e2

.field public static final greylist-max-o TYPE_PRESENTATION:I = 0x7f5

.field public static final whitelist TYPE_PRIORITY_PHONE:I = 0x7d7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_PRIVATE_PRESENTATION:I = 0x7ee

.field public static final greylist-max-o TYPE_QS_DIALOG:I = 0x7f3

.field public static final greylist-max-o TYPE_SCREENSHOT:I = 0x7f4

.field public static final whitelist TYPE_SEARCH_BAR:I = 0x7d1

.field public static final greylist-max-r TYPE_SECURE_SYSTEM_OVERLAY:I = 0x7df

.field public static final whitelist TYPE_STATUS_BAR:I = 0x7d0

.field public static final blacklist TYPE_STATUS_BAR_ADDITIONAL:I = 0x7f9

.field public static final greylist TYPE_STATUS_BAR_PANEL:I = 0x7de

.field public static final greylist-max-o TYPE_STATUS_BAR_SUB_PANEL:I = 0x7e1

.field public static final whitelist TYPE_SYSTEM_ALERT:I = 0x7d3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_SYSTEM_DIALOG:I = 0x7d8

.field public static final whitelist TYPE_SYSTEM_ERROR:I = 0x7da
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_SYSTEM_OVERLAY:I = 0x7d6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_TOAST:I = 0x7d5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TYPE_VOICE_INTERACTION:I = 0x7ef

.field public static final greylist-max-o TYPE_VOICE_INTERACTION_STARTING:I = 0x7f1

.field public static final greylist-max-o TYPE_VOLUME_OVERLAY:I = 0x7e4

.field public static final whitelist TYPE_WALLPAPER:I = 0x7dd

.field public static final greylist-max-o USER_ACTIVITY_TIMEOUT_CHANGED:I = 0x40000

.field private static blacklist sToolkitSetFrameRateReadOnlyFlagValue:Z


# instance fields
.field public greylist-max-o accessibilityIdOfAnchor:J

.field public blacklist accessibilityTitle:Ljava/lang/CharSequence;

.field public whitelist alpha:F

.field public whitelist buttonBrightness:F

.field public whitelist dimAmount:F

.field public whitelist flags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "ALLOW_LOCK_WHILE_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "DIM_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "BLUR_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "NOT_FOCUSABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "NOT_TOUCHABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_TOUCH_MODAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "TOUCHABLE_WHEN_WAKING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "KEEP_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "LAYOUT_IN_SCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200
                mask = 0x200
                name = "LAYOUT_NO_LIMITS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400
                mask = 0x400
                name = "FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "FORCE_NOT_FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "DITHER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "SECURE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "SCALED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "IGNORE_CHEEK_PRESSES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "LAYOUT_INSET_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "ALT_FOCUSABLE_IM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "WATCH_OUTSIDE_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80000
                mask = 0x80000
                name = "SHOW_WHEN_LOCKED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100000
                mask = 0x100000
                name = "SHOW_WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "TURN_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "DISMISS_KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "SPLIT_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = 0x1000000
                name = "HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000000
                mask = 0x2000000
                name = "LOCAL_FOCUS_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000000
                mask = 0x4000000
                name = "TRANSLUCENT_STATUS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000000
                mask = 0x8000000
                name = "TRANSLUCENT_NAVIGATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000000
                mask = 0x10000000
                name = "LOCAL_FOCUS_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000000
                mask = 0x20000000
                name = "FLAG_SLIPPERY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000000
                mask = 0x40000000
                name = "FLAG_LAYOUT_ATTACHED_IN_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x80000000
                mask = -0x80000000
                name = "DRAWS_SYSTEM_BAR_BACKGROUNDS"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field public blacklist forciblyShownTypes:I

.field public whitelist format:I

.field public whitelist gravity:I

.field public greylist-max-o hasManualSurfaceInsets:Z

.field public greylist hasSystemUiListeners:Z

.field public greylist hideTimeoutMilliseconds:J

.field public whitelist horizontalMargin:F

.field public whitelist horizontalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public greylist inputFeatures:I

.field public final blacklist insetsFlags:Landroid/view/InsetsFlags;

.field public whitelist layoutInDisplayCutoutMode:I

.field private blacklist mBlurBehindRadius:I

.field private greylist-max-o mColorMode:I

.field private greylist-max-o mCompatibilityParamsBackup:[I

.field private blacklist mDesiredHdrHeadroom:F

.field private blacklist mDisplayFlags:I

.field private blacklist mFitInsetsIgnoringVisibility:Z

.field private blacklist mFitInsetsSides:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "BOTTOM"
            .end subannotation
        }
    .end annotation
.end field

.field private blacklist mFitInsetsTypes:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "STATUS_BARS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "NAVIGATION_BARS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "CAPTION_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "IME"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "SYSTEM_GESTURES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "MANDATORY_SYSTEM_GESTURES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "TAPPABLE_ELEMENT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "WINDOW_DECOR"
            .end subannotation
        }
    .end annotation
.end field

.field private blacklist mFrameRateBoostOnTouch:Z

.field private blacklist mIsFrameRatePowerSavingsBalanced:Z

.field private greylist-max-o mTitle:Ljava/lang/CharSequence;

.field private blacklist mWallpaperTouchEventsEnabled:Z

.field public blacklist mWindowContextToken:Landroid/os/IBinder;

.field public whitelist memoryType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist packageName:Ljava/lang/String;

.field public blacklist paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

.field public whitelist preferMinimalPostProcessing:Z

.field public whitelist preferredDisplayModeId:I

.field public blacklist preferredMaxDisplayRefreshRate:F

.field public blacklist preferredMinDisplayRefreshRate:F

.field public whitelist preferredRefreshRate:F

.field public greylist-max-o preservePreviousSurfaceInsets:Z

.field public greylist privateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "FORCE_HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "WANTS_OFFSET_NOTIFICATIONS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "SHOW_FOR_ALL_USERS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "UNRESTRICTED_GESTURE_EXCLUSION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "NO_MOVE_ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200
                mask = 0x200
                name = "OPTIMIZE_MEASURE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400
                mask = 0x400
                name = "DISABLE_WALLPAPER_TOUCH_EVENTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "EDGE_TO_EDGE_ENFORCED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "LAYOUT_SIZE_EXTENDED_BY_CUTOUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "FORCE_DECOR_VIEW_VISIBILITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "FORCE_DRAW_STATUS_BAR_BACKGROUND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "SUSTAINED_PERFORMANCE_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "IMMERSIVE_CONFIRMATION_WINDOW"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "OVERRIDE_LAYOUT_IN_DISPLAY_CUTOUT_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80000
                mask = 0x80000
                name = "HIDE_NON_SYSTEM_OVERLAY_WINDOWS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100000
                mask = 0x100000
                name = "IS_ROUNDED_CORNERS_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "EXCLUDE_FROM_SCREEN_MAGNIFICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "NOT_MAGNIFIABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = 0x1000000
                name = "COLOR_SPACE_AGNOSTIC"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000000
                mask = 0x2000000
                name = "CONSUME_IME_INSETS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000000
                mask = 0x4000000
                name = "OPTOUT_EDGE_TO_EDGE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000000
                mask = 0x10000000
                name = "FIT_INSETS_CONTROLLED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000000
                mask = 0x20000000
                name = "TRUSTED_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000000
                mask = 0x40000000
                name = "INSET_PARENT_FRAME_BY_IME"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x80000000
                mask = -0x80000000
                name = "INTERCEPT_GLOBAL_DRAG_AND_DROP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "SYSTEM_APPLICATION_OVERLAY"
            .end subannotation
        }
    .end annotation
.end field

.field public blacklist providedInsets:[Landroid/view/InsetsFrameProvider;

.field public blacklist receiveInsetsIgnoringZOrder:Z

.field public whitelist rotationAnimation:I

.field public whitelist screenBrightness:F

.field public whitelist screenOrientation:I

.field public whitelist softInputMode:I

.field public greylist-max-r subtreeSystemUiVisibility:I

.field public final greylist-max-o surfaceInsets:Landroid/graphics/Rect;

.field public whitelist systemUiVisibility:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist token:Landroid/os/IBinder;

.field public whitelist type:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "BASE_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "APPLICATION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "DRAWN_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e8
                to = "APPLICATION_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e9
                to = "APPLICATION_MEDIA"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ea
                to = "APPLICATION_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ed
                to = "APPLICATION_ABOVE_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3eb
                to = "APPLICATION_ATTACHED_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ec
                to = "APPLICATION_MEDIA_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d0
                to = "STATUS_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d1
                to = "SEARCH_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d2
                to = "PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d3
                to = "SYSTEM_ALERT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d4
                to = "KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d5
                to = "TOAST"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d6
                to = "SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d7
                to = "PRIORITY_PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d8
                to = "SYSTEM_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d9
                to = "KEYGUARD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7da
                to = "SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7db
                to = "INPUT_METHOD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dc
                to = "INPUT_METHOD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dd
                to = "WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7de
                to = "STATUS_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7df
                to = "SECURE_SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e0
                to = "DRAG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e1
                to = "STATUS_BAR_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e2
                to = "POINTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e3
                to = "NAVIGATION_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e4
                to = "VOLUME_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e5
                to = "BOOT_PROGRESS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e6
                to = "INPUT_CONSUMER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e8
                to = "NAVIGATION_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ea
                to = "DISPLAY_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7eb
                to = "MAGNIFICATION_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f5
                to = "PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ee
                to = "PRIVATE_PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ef
                to = "VOICE_INTERACTION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f0
                to = "ACCESSIBILITY_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f1
                to = "VOICE_INTERACTION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f2
                to = "DOCK_DIVIDER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f3
                to = "QS_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f4
                to = "SCREENSHOT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f6
                to = "APPLICATION_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f7
                to = "ACCESSIBILITY_MAGNIFICATION_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f8
                to = "NOTIFICATION_SHADE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f9
                to = "STATUS_BAR_ADDITIONAL"
            .end subannotation
        }
    .end annotation
.end field

.field public greylist userActivityTimeout:J

.field public whitelist verticalMargin:F

.field public whitelist verticalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public whitelist windowAnimations:I

.field public whitelist x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public whitelist y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 4685
    invoke-static {}, Landroid/view/flags/Flags;->toolkitSetFrameRateReadOnly()Z

    move-result v0

    sput-boolean v0, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    .line 5367
    new-instance v0, Landroid/view/WindowManager$LayoutParams$1;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams$1;-><init>()V

    sput-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 9

    .line 4991
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4025
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 4054
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 4074
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4081
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4110
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 4118
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 4167
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 4173
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4184
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4190
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4200
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4364
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4591
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4600
    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v6, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4623
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4651
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4663
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4673
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4677
    const/4 v4, 0x0

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 4682
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 4683
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 4693
    new-instance v4, Landroid/view/InsetsFlags;

    invoke-direct {v4}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v4, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4695
    nop

    .line 4729
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4731
    nop

    .line 4749
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4751
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4815
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 5498
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6121
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4992
    const/4 v1, 0x2

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4993
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4994
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 10
    .param p1, "_type"    # I

    .line 4997
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4025
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 4054
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 4074
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4081
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4110
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 4118
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 4167
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 4173
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4184
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4190
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4200
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4364
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4591
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4600
    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v6, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4623
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4651
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4663
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4673
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4677
    const/4 v4, 0x0

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 4682
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 4683
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 4693
    new-instance v4, Landroid/view/InsetsFlags;

    invoke-direct {v4}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v4, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4695
    nop

    .line 4729
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4731
    nop

    .line 4749
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4751
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4815
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 5498
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6121
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 4998
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4999
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 5000
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 11
    .param p1, "_type"    # I
    .param p2, "_flags"    # I

    .line 5003
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4025
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 4054
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 4074
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4081
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4110
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 4118
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 4167
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 4173
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4184
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4190
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4200
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4364
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4591
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4600
    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v6, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4623
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4651
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4663
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4673
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4677
    const/4 v4, 0x0

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 4682
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 4683
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 4693
    new-instance v4, Landroid/view/InsetsFlags;

    invoke-direct {v4}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v4, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4695
    nop

    .line 4729
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4731
    nop

    .line 4749
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4751
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4815
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 5498
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6121
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 5004
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5005
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5006
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 5007
    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 12
    .param p1, "_type"    # I
    .param p2, "_flags"    # I
    .param p3, "_format"    # I

    .line 5010
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4025
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 4054
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 4074
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4081
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4110
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 4118
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 4167
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 4173
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4184
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4190
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4200
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4364
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4591
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4600
    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v6, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4623
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4651
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4663
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4673
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4677
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 4682
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 4683
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 4693
    new-instance v0, Landroid/view/InsetsFlags;

    invoke-direct {v0}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4695
    nop

    .line 4729
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4731
    nop

    .line 4749
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4751
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4815
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 5498
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6121
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 5011
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5012
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5013
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 5014
    return-void
.end method

.method public constructor whitelist <init>(IIIII)V
    .registers 13
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "_type"    # I
    .param p4, "_flags"    # I
    .param p5, "_format"    # I

    .line 5017
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4025
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 4054
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 4074
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4081
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4110
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 4118
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 4167
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 4173
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4184
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4190
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4200
    const/4 v3, -0x1

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4364
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4591
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4600
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4623
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4651
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4663
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4673
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4677
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 4682
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 4683
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 4693
    new-instance v3, Landroid/view/InsetsFlags;

    invoke-direct {v3}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4695
    nop

    .line 4729
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4731
    nop

    .line 4749
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4751
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4815
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 5498
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6121
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 5018
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5019
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5020
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 5021
    return-void
.end method

.method public constructor whitelist <init>(IIIIIII)V
    .registers 15
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "xpos"    # I
    .param p4, "ypos"    # I
    .param p5, "_type"    # I
    .param p6, "_flags"    # I
    .param p7, "_format"    # I

    .line 5025
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4025
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 4054
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 4074
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4081
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4110
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 4118
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 4167
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 4173
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4184
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4190
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4200
    const/4 v3, -0x1

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4364
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4591
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4600
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4623
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4651
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4663
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4673
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4677
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 4682
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 4683
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 4693
    new-instance v3, Landroid/view/InsetsFlags;

    invoke-direct {v3}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4695
    nop

    .line 4729
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4731
    nop

    .line 4749
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4751
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4815
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 5498
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6121
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 5026
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 5027
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 5028
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5029
    iput p6, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5030
    iput p7, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 5031
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 5379
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 4025
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 4054
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 4074
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4081
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4110
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 4118
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 4167
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 4173
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4184
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 4190
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 4200
    const/4 v3, -0x1

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4364
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4591
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4600
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 4623
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 4651
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 4663
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 4673
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 4677
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 4682
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 4683
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 4693
    new-instance v3, Landroid/view/InsetsFlags;

    invoke-direct {v3}, Landroid/view/InsetsFlags;-><init>()V

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4695
    nop

    .line 4729
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4731
    nop

    .line 4749
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4751
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4815
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 5498
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6121
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 5380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 5382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 5383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 5384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 5387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 5388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5390
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 5391
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 5392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 5393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 5394
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 5395
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 5396
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 5397
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 5398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 5399
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 5400
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 5401
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 5402
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 5403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 5404
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 5405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 5406
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 5407
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 5408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 5409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 5410
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 5411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 5412
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 5413
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 5414
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 5415
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 5416
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 5417
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 5418
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    .line 5419
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 5420
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 5421
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 5422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 5423
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 5424
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 5425
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/view/InsetsFlags;->behavior:I

    .line 5426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 5427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 5428
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 5429
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 5430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 5431
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 5432
    sget-object v0, Landroid/view/InsetsFrameProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/InsetsFrameProvider;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 5433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    .line 5434
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    .line 5435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    .line 5436
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 5437
    sget-boolean v0, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_1de

    .line 5438
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 5439
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 5441
    :cond_1de
    return-void
.end method

.method private blacklist checkNonRecursiveParams()V
    .registers 4

    .line 4967
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_5

    .line 4968
    return-void

    .line 4970
    :cond_5
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_1f

    .line 4971
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_17

    .line 4970
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 4972
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Params cannot contain params recursively."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4976
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method private static blacklist hasLayoutDiff(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 4
    .param p0, "a"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "b"    # Landroid/view/WindowManager$LayoutParams;

    .line 5797
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v1, :cond_53

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_53

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v0, v1, :cond_53

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v0, v1, :cond_53

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_53

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_53

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v0, v1, :cond_53

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v0, v1, :cond_53

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 5801
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    if-ne v0, v1, :cond_53

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    if-ne v0, v1, :cond_53

    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    if-eq v0, v1, :cond_51

    goto :goto_53

    :cond_51
    const/4 v0, 0x0

    goto :goto_54

    :cond_53
    :goto_53
    const/4 v0, 0x1

    .line 5797
    :goto_54
    return v0
.end method

.method private static blacklist inputFeaturesToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "inputFeatures"    # I

    .line 6237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6238
    .local v0, "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_10

    .line 6239
    and-int/lit8 p0, p0, -0x2

    .line 6240
    const-string v1, "INPUT_FEATURE_NO_INPUT_CHANNEL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6242
    :cond_10
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1b

    .line 6243
    and-int/lit8 p0, p0, -0x3

    .line 6244
    const-string v1, "INPUT_FEATURE_DISABLE_USER_ACTIVITY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6246
    :cond_1b
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_26

    .line 6247
    and-int/lit8 p0, p0, -0x5

    .line 6248
    const-string v1, "INPUT_FEATURE_SPY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6250
    :cond_26
    if-eqz p0, :cond_2f

    .line 6251
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6253
    :cond_2f
    const-string v1, " | "

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o isSystemAlertWindowType(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 2741
    sparse-switch p0, :sswitch_data_8

    .line 2750
    const/4 v0, 0x0

    return v0

    .line 2748
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x7d2 -> :sswitch_5
        0x7d3 -> :sswitch_5
        0x7d6 -> :sswitch_5
        0x7d7 -> :sswitch_5
        0x7da -> :sswitch_5
        0x7f6 -> :sswitch_5
    .end sparse-switch
.end method

.method public static greylist-max-o layoutInDisplayCutoutModeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "mode"    # I

    .line 6152
    packed-switch p0, :pswitch_data_2c

    .line 6162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6156
    :pswitch_1e
    const-string v0, "always"

    return-object v0

    .line 6158
    :pswitch_21
    const-string v0, "never"

    return-object v0

    .line 6160
    :pswitch_24
    const-string/jumbo v0, "shortEdges"

    return-object v0

    .line 6154
    :pswitch_28
    const-string v0, "default"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_24
        :pswitch_21
        :pswitch_1e
    .end packed-switch
.end method

.method public static whitelist mayUseInputMethod(I)Z
    .registers 3
    .param p0, "flags"    # I

    .line 3829
    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_e

    const/high16 v0, 0x20000

    and-int v1, p0, v0

    if-eq v1, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static greylist-max-o rotationAnimationToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "rotationAnimation"    # I

    .line 6220
    packed-switch p0, :pswitch_data_18

    .line 6232
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6230
    :pswitch_8
    const-string v0, "SEAMLESS"

    return-object v0

    .line 6228
    :pswitch_b
    const-string v0, "JUMPCUT"

    return-object v0

    .line 6226
    :pswitch_e
    const-string v0, "CROSSFADE"

    return-object v0

    .line 6224
    :pswitch_11
    const-string v0, "ROTATE"

    return-object v0

    .line 6222
    :pswitch_14
    const-string v0, "UNSPECIFIED"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch -0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static greylist-max-o softInputModeToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "softInputMode"    # I

    .line 6167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6168
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0xf

    .line 6169
    .local v1, "state":I
    const/16 v2, 0x20

    if-eqz v1, :cond_3b

    .line 6170
    const-string/jumbo v3, "state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6171
    packed-switch v1, :pswitch_data_7c

    .line 6188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 6185
    :pswitch_18
    const-string v3, "always_visible"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6186
    goto :goto_38

    .line 6182
    :pswitch_1e
    const-string/jumbo v3, "visible"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6183
    goto :goto_38

    .line 6179
    :pswitch_25
    const-string v3, "always_hidden"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6180
    goto :goto_38

    .line 6176
    :pswitch_2b
    const-string v3, "hidden"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6177
    goto :goto_38

    .line 6173
    :pswitch_31
    const-string/jumbo v3, "unchanged"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6174
    nop

    .line 6191
    :goto_38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6193
    :cond_3b
    and-int/lit16 v3, p0, 0xf0

    .line 6194
    .local v3, "adjust":I
    if-eqz v3, :cond_61

    .line 6195
    const-string v4, "adjust="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6196
    sparse-switch v3, :sswitch_data_8a

    .line 6207
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5e

    .line 6204
    :sswitch_4b
    const-string v4, "nothing"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6205
    goto :goto_5e

    .line 6201
    :sswitch_51
    const-string v4, "pan"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6202
    goto :goto_5e

    .line 6198
    :sswitch_57
    const-string/jumbo v4, "resize"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6199
    nop

    .line 6210
    :goto_5e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6212
    :cond_61
    and-int/lit16 v4, p0, 0x100

    if-eqz v4, :cond_6e

    .line 6213
    const-string v4, "forwardNavigation"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6215
    :cond_6e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 6216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2b
        :pswitch_25
        :pswitch_1e
        :pswitch_18
    .end packed-switch

    :sswitch_data_8a
    .sparse-switch
        0x10 -> :sswitch_57
        0x20 -> :sswitch_51
        0x30 -> :sswitch_4b
    .end sparse-switch
.end method


# virtual methods
.method public whitelist areWallpaperTouchEventsEnabled()Z
    .registers 2

    .line 4916
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    return v0
.end method

.method greylist backup()V
    .registers 4

    .line 6095
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6096
    .local v0, "backup":[I
    if-nez v0, :cond_a

    .line 6098
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    move-object v0, v1

    .line 6100
    :cond_a
    const/4 v1, 0x0

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v2, v0, v1

    .line 6101
    const/4 v1, 0x1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    aput v2, v0, v1

    .line 6102
    const/4 v1, 0x2

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    aput v2, v0, v1

    .line 6103
    const/4 v1, 0x3

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    aput v2, v0, v1

    .line 6104
    return-void
.end method

.method public whitelist canPlayMoveAnimation()Z
    .registers 2

    .line 4941
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final whitelist copyFrom(Landroid/view/WindowManager$LayoutParams;)I
    .registers 8
    .param p1, "o"    # Landroid/view/WindowManager$LayoutParams;

    .line 5501
    const/4 v0, 0x0

    .line 5503
    .local v0, "changes":I
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v1, v2, :cond_d

    .line 5504
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 5505
    or-int/lit8 v0, v0, 0x1

    .line 5507
    :cond_d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v1, v2, :cond_19

    .line 5508
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 5509
    or-int/lit8 v0, v0, 0x1

    .line 5511
    :cond_19
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v1, v2, :cond_25

    .line 5512
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 5513
    or-int/lit8 v0, v0, 0x1

    .line 5515
    :cond_25
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v1, v2, :cond_31

    .line 5516
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 5517
    or-int/lit8 v0, v0, 0x1

    .line 5519
    :cond_31
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3f

    .line 5520
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 5521
    or-int/lit8 v0, v0, 0x1

    .line 5523
    :cond_3f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4d

    .line 5524
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 5525
    or-int/lit8 v0, v0, 0x1

    .line 5527
    :cond_4d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5b

    .line 5528
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 5529
    or-int/lit8 v0, v0, 0x1

    .line 5531
    :cond_5b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_69

    .line 5532
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 5533
    or-int/lit8 v0, v0, 0x1

    .line 5535
    :cond_69
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_75

    .line 5536
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5537
    or-int/lit8 v0, v0, 0x2

    .line 5539
    :cond_75
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v2, :cond_8e

    .line 5540
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v1, v2

    .line 5541
    .local v1, "diff":I
    const/high16 v2, 0xc000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_88

    .line 5542
    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    .line 5544
    :cond_88
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5545
    or-int/lit8 v0, v0, 0x4

    .line 5547
    .end local v1    # "diff":I
    :cond_8e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x20000

    if-eq v1, v2, :cond_9b

    .line 5548
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 5549
    or-int/2addr v0, v3

    .line 5551
    :cond_9b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v1, v2, :cond_a7

    .line 5552
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 5553
    or-int/lit16 v0, v0, 0x200

    .line 5555
    :cond_a7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v1, v2, :cond_b3

    .line 5556
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5557
    or-int/lit8 v0, v0, 0x1

    .line 5559
    :cond_b3
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v1, v2, :cond_bf

    .line 5560
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5561
    or-int/lit8 v0, v0, 0x1

    .line 5563
    :cond_bf
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    if-eq v1, v2, :cond_cb

    .line 5564
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 5565
    or-int/lit8 v0, v0, 0x8

    .line 5567
    :cond_cb
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v1, v2, :cond_d7

    .line 5568
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 5569
    or-int/lit8 v0, v0, 0x10

    .line 5571
    :cond_d7
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_df

    .line 5574
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 5576
    :cond_df
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    if-nez v1, :cond_e7

    .line 5579
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 5581
    :cond_e7
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v1, :cond_ef

    .line 5584
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 5586
    :cond_ef
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_103

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_103

    .line 5588
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 5589
    or-int/lit8 v0, v0, 0x40

    .line 5591
    :cond_103
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_111

    .line 5592
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 5593
    or-int/lit16 v0, v0, 0x80

    .line 5595
    :cond_111
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_11f

    .line 5596
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 5597
    or-int/lit8 v0, v0, 0x20

    .line 5599
    :cond_11f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_12d

    .line 5600
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 5601
    or-int/lit16 v0, v0, 0x800

    .line 5603
    :cond_12d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_13b

    .line 5604
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 5605
    or-int/lit16 v0, v0, 0x2000

    .line 5607
    :cond_13b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eq v1, v2, :cond_147

    .line 5608
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 5609
    or-int/lit16 v0, v0, 0x1000

    .line 5612
    :cond_147
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v1, v2, :cond_153

    .line 5613
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 5614
    or-int/lit16 v0, v0, 0x400

    .line 5617
    :cond_153
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_162

    .line 5618
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 5619
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 5622
    :cond_162
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eq v1, v2, :cond_16f

    .line 5623
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 5624
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 5627
    :cond_16f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_17e

    .line 5628
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 5629
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 5632
    :cond_17e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_18d

    .line 5633
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 5634
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 5637
    :cond_18d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    if-eq v1, v2, :cond_19a

    .line 5638
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    .line 5639
    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    .line 5642
    :cond_19a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    if-ne v1, v2, :cond_1a6

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eq v1, v2, :cond_1b0

    .line 5644
    :cond_1a6
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 5645
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 5646
    or-int/lit16 v0, v0, 0x4000

    .line 5649
    :cond_1b0
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v1, v2, :cond_1be

    .line 5650
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 5651
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 5654
    :cond_1be
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-eq v1, v2, :cond_1cb

    .line 5655
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 5656
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 5659
    :cond_1cb
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget-wide v4, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1da

    .line 5660
    iget-wide v1, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 5661
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 5664
    :cond_1da
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x100000

    if-nez v1, :cond_1ee

    .line 5665
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5666
    or-int/2addr v0, v2

    .line 5669
    :cond_1ee
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iget-boolean v4, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-eq v1, v4, :cond_1f9

    .line 5670
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 5671
    or-int/2addr v0, v2

    .line 5674
    :cond_1f9
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    iget-boolean v4, p1, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    if-eq v1, v4, :cond_204

    .line 5675
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    .line 5676
    or-int/2addr v0, v2

    .line 5679
    :cond_204
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    iget-boolean v4, p1, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-eq v1, v4, :cond_20f

    .line 5680
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 5681
    or-int/2addr v0, v2

    .line 5684
    :cond_20f
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iget-wide v4, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_21e

    .line 5685
    iget-wide v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 5686
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 5689
    :cond_21e
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_233

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_233

    .line 5692
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 5693
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 5696
    :cond_233
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    const/high16 v4, 0x4000000

    if-eq v1, v2, :cond_240

    .line 5697
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 5698
    or-int/2addr v0, v4

    .line 5701
    :cond_240
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_24d

    .line 5702
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 5703
    or-int/2addr v0, v4

    .line 5706
    :cond_24d
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    if-eq v1, v2, :cond_25a

    .line 5707
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 5708
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    .line 5711
    :cond_25a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    if-eq v1, v2, :cond_267

    .line 5712
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 5713
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 5717
    :cond_267
    iget-wide v1, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 5719
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->appearance:I

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    const/high16 v4, 0x8000000

    if-eq v1, v2, :cond_280

    .line 5720
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    iput v2, v1, Landroid/view/InsetsFlags;->appearance:I

    .line 5721
    or-int/2addr v0, v4

    .line 5724
    :cond_280
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->behavior:I

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    if-eq v1, v2, :cond_293

    .line 5725
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    iput v2, v1, Landroid/view/InsetsFlags;->behavior:I

    .line 5726
    or-int/2addr v0, v4

    .line 5729
    :cond_293
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    if-eq v1, v2, :cond_29f

    .line 5730
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 5731
    or-int/lit8 v0, v0, 0x1

    .line 5734
    :cond_29f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    if-eq v1, v2, :cond_2ab

    .line 5735
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 5736
    or-int/lit8 v0, v0, 0x1

    .line 5739
    :cond_2ab
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    if-eq v1, v2, :cond_2b7

    .line 5740
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 5741
    or-int/lit8 v0, v0, 0x1

    .line 5744
    :cond_2b7
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c7

    .line 5745
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 5746
    or-int/lit8 v0, v0, 0x1

    .line 5749
    :cond_2c7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    if-eq v1, v2, :cond_2d2

    .line 5750
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    .line 5751
    or-int/2addr v0, v3

    .line 5754
    :cond_2d2
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eq v1, v2, :cond_311

    .line 5755
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_30a

    .line 5756
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_308

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_308

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v1, v1

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v2, v2

    if-ne v1, v2, :cond_308

    .line 5758
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_2f1
    if-ltz v1, :cond_307

    .line 5759
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v2, v2, v1

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Landroid/view/WindowManager$LayoutParams;->hasLayoutDiff(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_304

    .line 5760
    or-int/lit8 v0, v0, 0x1

    .line 5761
    goto :goto_307

    .line 5758
    :cond_304
    add-int/lit8 v1, v1, -0x1

    goto :goto_2f1

    .end local v1    # "i":I
    :cond_307
    :goto_307
    goto :goto_30a

    .line 5765
    :cond_308
    or-int/lit8 v0, v0, 0x1

    .line 5768
    :cond_30a
    :goto_30a
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    .line 5769
    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;->checkNonRecursiveParams()V

    .line 5772
    :cond_311
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    if-eq v1, v2, :cond_31d

    .line 5773
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 5774
    or-int/lit8 v0, v0, 0x1

    .line 5777
    :cond_31d
    sget-boolean v1, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v1, :cond_32d

    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    if-eq v1, v2, :cond_32d

    .line 5779
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 5780
    or-int/lit8 v0, v0, 0x1

    .line 5783
    :cond_32d
    sget-boolean v1, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v1, :cond_33d

    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    if-eq v1, v2, :cond_33d

    .line 5785
    iget-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 5786
    or-int/lit8 v0, v0, 0x1

    .line 5789
    :cond_33d
    return v0
.end method

.method public whitelist debug(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "output"    # Ljava/lang/String;

    .line 5809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Contents of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5810
    const-string v0, "Debug"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5811
    const-string v1, ""

    invoke-super {p0, v1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5812
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5813
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowManager.LayoutParams={title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5815
    return-object v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 5299
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 6040
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 6041
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6042
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6043
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6044
    const-wide v2, 0x10500000004L

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6045
    const-wide v2, 0x10500000005L

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6046
    const-wide v2, 0x10200000006L

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 6047
    const-wide v2, 0x10200000007L

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 6048
    const-wide v2, 0x10500000008L

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6049
    const-wide v2, 0x10500000009L

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6050
    const-wide v2, 0x10e0000000aL

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6051
    const-wide v2, 0x1050000000bL

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6052
    const-wide v2, 0x1020000000cL

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 6053
    const-wide v2, 0x1020000000dL

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 6054
    const-wide v2, 0x1020000000eL

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 6055
    const-wide v2, 0x10e0000000fL

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6056
    const-wide v2, 0x10200000010L

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 6057
    const-wide v2, 0x10500000011L

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6058
    const-wide v2, 0x10800000012L

    iget-boolean v4, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6059
    const-wide v2, 0x10d00000013L

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6060
    const-wide v2, 0x10300000014L

    iget-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 6061
    const-wide v2, 0x10e00000017L

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6062
    const-wide v2, 0x10d00000018L

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6063
    const-wide v2, 0x10d0000001aL

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6064
    const-wide v2, 0x10d0000001bL

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6065
    const-wide v2, 0x10d0000001cL

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6066
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    const-wide v3, 0x10d0000001dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6067
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    const-wide v3, 0x10d0000001eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6068
    const-wide v2, 0x10d0000001fL

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6069
    const-wide v2, 0x10d00000020L

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6070
    const-wide v2, 0x10800000021L

    iget-boolean v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6071
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6072
    return-void
.end method

.method public greylist-max-o dumpDimensions(Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 5827
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5828
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5829
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5830
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5831
    const-string v0, ")("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5832
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const-string/jumbo v1, "wrap"

    const-string v2, "fill"

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-ne v0, v4, :cond_26

    move-object v0, v2

    goto :goto_32

    :cond_26
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v3, :cond_2c

    .line 5833
    move-object v0, v1

    goto :goto_32

    :cond_2c
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 5832
    :goto_32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5834
    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5835
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v4, :cond_40

    move-object v1, v2

    goto :goto_4b

    :cond_40
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v3, :cond_45

    .line 5836
    goto :goto_4b

    :cond_45
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 5835
    :goto_4b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5837
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5838
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 6126
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 6128
    const-string/jumbo v0, "x"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 6129
    const-string/jumbo v0, "y"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 6130
    const-string v0, "horizontalWeight"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 6131
    const-string/jumbo v0, "verticalWeight"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 6132
    const-string/jumbo v0, "type"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 6133
    const-string v0, "flags"

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 6134
    return-void
.end method

.method public blacklist forRotation(I)Landroid/view/WindowManager$LayoutParams;
    .registers 3
    .param p1, "rotation"    # I

    .line 4983
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v0, v0

    if-le v0, p1, :cond_15

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v0, v0, p1

    if-nez v0, :cond_10

    goto :goto_15

    .line 4987
    :cond_10
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v0, v0, p1

    return-object v0

    .line 4985
    :cond_15
    :goto_15
    return-object p0
.end method

.method public whitelist getBlurBehindRadius()I
    .registers 2

    .line 5252
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    return v0
.end method

.method public whitelist getColorMode()I
    .registers 2

    .line 5118
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    return v0
.end method

.method public whitelist getDesiredHdrHeadroom()F
    .registers 2

    .line 5151
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    return v0
.end method

.method public whitelist getFitInsetsSides()I
    .registers 2

    .line 4955
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    return v0
.end method

.method public whitelist getFitInsetsTypes()I
    .registers 2

    .line 4948
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    return v0
.end method

.method public whitelist getFrameRateBoostOnTouchEnabled()Z
    .registers 2

    .line 5174
    sget-boolean v0, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_7

    .line 5175
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    return v0

    .line 5177
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 5050
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    return-object v0
.end method

.method public final whitelist getUserActivityTimeout()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5264
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    return-wide v0
.end method

.method public final blacklist getWindowContextToken()Landroid/os/IBinder;
    .registers 2

    .line 5295
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist isFitInsetsIgnoringVisibility()Z
    .registers 2

    .line 4963
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    return v0
.end method

.method public whitelist isFrameRatePowerSavingsBalanced()Z
    .registers 2

    .line 5204
    sget-boolean v0, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_7

    .line 5205
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    return v0

    .line 5207
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o isFullscreen()Z
    .registers 3

    .line 6142
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_13

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_13

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public whitelist isHdrConversionEnabled()Z
    .registers 3

    .line 5080
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist isModal()Z
    .registers 2

    .line 6263
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x28

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isSystemApplicationOverlay()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4890
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method greylist restore()V
    .registers 3

    .line 6112
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 6113
    .local v0, "backup":[I
    if-eqz v0, :cond_18

    .line 6114
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 6115
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 6116
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6117
    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6119
    :cond_18
    return-void
.end method

.method public greylist-max-o scale(F)V
    .registers 4
    .param p1, "scale"    # F

    .line 6079
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 6080
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 6081
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v0, :cond_1e

    .line 6082
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6084
    :cond_1e
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez v0, :cond_2a

    .line 6085
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6087
    :cond_2a
    return-void
.end method

.method public whitelist setBlurBehindRadius(I)V
    .registers 2
    .param p1, "blurBehindRadius"    # I

    .line 5243
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    .line 5244
    return-void
.end method

.method public whitelist setCanPlayMoveAnimation(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 4926
    if-eqz p1, :cond_9

    .line 4927
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_f

    .line 4929
    :cond_9
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4931
    :goto_f
    return-void
.end method

.method public whitelist setColorMode(I)V
    .registers 2
    .param p1, "colorMode"    # I

    .line 5107
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 5108
    return-void
.end method

.method public whitelist setDesiredHdrHeadroom(F)V
    .registers 5
    .param p1, "desiredHeadroom"    # F

    .line 5133
    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 5137
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_32

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_19

    const v0, 0x461c4000    # 10000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_19

    goto :goto_32

    .line 5138
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desiredHeadroom must be 0.0 or in the range [1.0, 10000.0f], received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5142
    :cond_32
    :goto_32
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    .line 5143
    return-void

    .line 5134
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desiredHeadroom must be finite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFitInsetsIgnoringVisibility(Z)V
    .registers 4
    .param p1, "ignore"    # Z

    .line 4845
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    .line 4846
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4847
    return-void
.end method

.method public whitelist setFitInsetsSides(I)V
    .registers 4
    .param p1, "sides"    # I

    .line 4835
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    .line 4836
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4837
    return-void
.end method

.method public whitelist setFitInsetsTypes(I)V
    .registers 4
    .param p1, "types"    # I

    .line 4824
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    .line 4825
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4826
    return-void
.end method

.method public whitelist setFrameRateBoostOnTouchEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 5161
    sget-boolean v0, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_6

    .line 5162
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    .line 5164
    :cond_6
    return-void
.end method

.method public whitelist setFrameRatePowerSavingsBalanced(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 5189
    sget-boolean v0, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_6

    .line 5190
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    .line 5192
    :cond_6
    return-void
.end method

.method public whitelist setHdrConversionEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 5089
    if-nez p1, :cond_9

    .line 5090
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    goto :goto_f

    .line 5092
    :cond_9
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    .line 5094
    :goto_f
    return-void
.end method

.method public whitelist setInsetsParams(Ljava/util/List;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowManager$InsetsParams;",
            ">;)V"
        }
    .end annotation

    .line 4776
    .local p1, "insetsParams":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowManager$InsetsParams;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4777
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    goto :goto_37

    .line 4779
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/InsetsFrameProvider;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 4780
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 4781
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$InsetsParams;

    .line 4782
    .local v1, "params":Landroid/view/WindowManager$InsetsParams;
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    new-instance v3, Landroid/view/InsetsFrameProvider;

    .line 4784
    invoke-virtual {v1}, Landroid/view/WindowManager$InsetsParams;->getType()I

    move-result v4

    invoke-direct {v3, p0, v0, v4}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    .line 4785
    invoke-virtual {v1}, Landroid/view/WindowManager$InsetsParams;->getInsetsSize()Landroid/graphics/Insets;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    move-result-object v3

    aput-object v3, v2, v0

    .line 4780
    .end local v1    # "params":Landroid/view/WindowManager$InsetsParams;
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 4788
    .end local v0    # "i":I
    :cond_37
    :goto_37
    return-void
.end method

.method public final greylist-max-o setSurfaceInsets(Landroid/view/View;ZZ)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "manual"    # Z
    .param p3, "preservePrevious"    # Z

    .line 5058
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 5064
    .local v0, "surfaceInset":I
    if-nez v0, :cond_16

    .line 5066
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3b

    .line 5068
    :cond_16
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 5069
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 5070
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 5071
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 5072
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 5068
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 5074
    :goto_3b
    iput-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 5075
    iput-boolean p3, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 5076
    return-void
.end method

.method public whitelist setSystemApplicationOverlay(Z)V
    .registers 3
    .param p1, "isSystemApplicationOverlay"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4872
    if-eqz p1, :cond_9

    .line 4873
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_f

    .line 4875
    :cond_9
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4877
    :goto_f
    return-void
.end method

.method public final whitelist setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 5043
    if-nez p1, :cond_4

    .line 5044
    const-string p1, ""

    .line 5046
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 5047
    return-void
.end method

.method public blacklist setTrustedOverlay()V
    .registers 3

    .line 4860
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4861
    return-void
.end method

.method public final whitelist setUserActivityTimeout(J)V
    .registers 3
    .param p1, "timeout"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5258
    iput-wide p1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 5259
    return-void
.end method

.method public whitelist setWallpaperTouchEventsEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 4904
    iput-boolean p1, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    .line 4905
    return-void
.end method

.method public final blacklist setWindowContextToken(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 5276
    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    .line 5277
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 5820
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "prefix"    # Ljava/lang/String;

    .line 5844
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5845
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5846
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->dumpDimensions(Ljava/lang/StringBuilder;)V

    .line 5847
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_20

    .line 5848
    const-string v1, " hm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5849
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5851
    :cond_20
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_30

    .line 5852
    const-string v1, " vm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5853
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5855
    :cond_30
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v1, :cond_42

    .line 5856
    const-string v1, " gr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5857
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v1}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5859
    :cond_42
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v3, 0x7d

    if-eqz v1, :cond_59

    .line 5860
    const-string v1, " sim={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5861
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5862
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5864
    :cond_59
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eqz v1, :cond_6b

    .line 5865
    const-string v1, " layoutInDisplayCutoutMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5866
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5868
    :cond_6b
    const-string v1, " ty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5869
    const-string/jumbo v1, "type"

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-class v5, Landroid/view/WindowManager$LayoutParams;

    invoke-static {v5, v1, v4}, Landroid/view/ViewDebug;->intToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5870
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_91

    .line 5871
    const-string v1, " fmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5872
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5874
    :cond_91
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v1, :cond_a3

    .line 5875
    const-string v1, " wanim=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5876
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5878
    :cond_a3
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v1, v4, :cond_b5

    .line 5879
    const-string v1, " or="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5880
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5882
    :cond_b5
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_c7

    .line 5883
    const-string v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5884
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5886
    :cond_c7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_d9

    .line 5887
    const-string v1, " sbrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5888
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5890
    :cond_d9
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_e9

    .line 5891
    const-string v1, " bbrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5892
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5894
    :cond_e9
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eqz v1, :cond_fb

    .line 5895
    const-string v1, " rotAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5896
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->rotationAnimationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5898
    :cond_fb
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_10b

    .line 5899
    const-string v1, " preferredRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5900
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5902
    :cond_10b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v1, :cond_119

    .line 5903
    const-string v1, " preferredDisplayMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5904
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5906
    :cond_119
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_129

    .line 5907
    const-string v1, " preferredMinDisplayRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5908
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5910
    :cond_129
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_139

    .line 5911
    const-string v1, " preferredMaxDisplayRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5912
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5914
    :cond_139
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    if-eqz v1, :cond_14b

    .line 5915
    const-string v1, " displayFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5916
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5918
    :cond_14b
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v1, :cond_159

    .line 5919
    const-string v1, " sysuil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5920
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5922
    :cond_159
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-eqz v1, :cond_16c

    .line 5923
    const-string v1, " if="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->inputFeaturesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5925
    :cond_16c
    iget-wide v6, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-ltz v1, :cond_17f

    .line 5926
    const-string v1, " userActivityTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5928
    :cond_17f
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_19f

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_19f

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_19f

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-nez v1, :cond_19f

    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-nez v1, :cond_19f

    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-nez v1, :cond_1bc

    .line 5931
    :cond_19f
    const-string v1, " surfaceInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5932
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-eqz v1, :cond_1b3

    .line 5933
    const-string v1, " (manual)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5935
    :cond_1b3
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-nez v1, :cond_1bc

    .line 5936
    const-string v1, " (!preservePreviousSurfaceInsets)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5939
    :cond_1bc
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    if-eqz v1, :cond_1c5

    .line 5940
    const-string v1, " receive insets ignoring z-order"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5942
    :cond_1c5
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    if-eqz v1, :cond_1d8

    .line 5943
    const-string v1, " colorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->colorModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5945
    :cond_1d8
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1e9

    .line 5946
    const-string v1, " desiredHdrHeadroom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5948
    :cond_1e9
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    if-eqz v1, :cond_1f7

    .line 5949
    const-string v1, " preferMinimalPostProcessing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5950
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5952
    :cond_1f7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    if-eqz v1, :cond_205

    .line 5953
    const-string v1, " blurBehindRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5954
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5956
    :cond_205
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5957
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  fl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5958
    const-string v4, "flags"

    invoke-static {v5, v4, v2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 5957
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5959
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    if-eqz v1, :cond_241

    .line 5960
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5961
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  pfl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "privateFlags"

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {v5, v2, v4}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5964
    :cond_241
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const-string v2, "mSystemUiVisibility"

    if-eqz v1, :cond_263

    .line 5965
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5966
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  sysui="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v4, Landroid/view/View;

    iget v6, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-static {v4, v2, v6}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5969
    :cond_263
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-eqz v1, :cond_283

    .line 5970
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5971
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  vsysui="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v4, Landroid/view/View;

    iget v6, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-static {v4, v2, v6}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5974
    :cond_283
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->appearance:I

    if-eqz v1, :cond_2a9

    .line 5975
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5976
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  apr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/view/InsetsFlags;

    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v4, v4, Landroid/view/InsetsFlags;->appearance:I

    const-string v6, "appearance"

    invoke-static {v2, v6, v4}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5979
    :cond_2a9
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->behavior:I

    if-eqz v1, :cond_2cf

    .line 5980
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5981
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  bhv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/view/InsetsFlags;

    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v4, v4, Landroid/view/InsetsFlags;->behavior:I

    const-string v6, "behavior"

    invoke-static {v2, v6, v4}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5984
    :cond_2cf
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    if-eqz v1, :cond_2ef

    .line 5985
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5986
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  fitTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mFitInsetsTypes"

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    invoke-static {v5, v2, v4}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5989
    :cond_2ef
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v2

    if-eq v1, v2, :cond_313

    .line 5990
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5991
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  fitSides="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mFitInsetsSides"

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    invoke-static {v5, v2, v4}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5994
    :cond_313
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    if-eqz v1, :cond_327

    .line 5995
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5996
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  fitIgnoreVis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5998
    :cond_327
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    const-string v2, "    "

    if-eqz v1, :cond_35c

    .line 5999
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6000
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  providedInsets:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6001
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33e
    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    array-length v4, v4

    if-ge v1, v4, :cond_35c

    .line 6002
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6003
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6001
    add-int/lit8 v1, v1, 0x1

    goto :goto_33e

    .line 6006
    .end local v1    # "i":I
    :cond_35c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    if-eqz v1, :cond_37a

    .line 6007
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6008
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  forciblyShownTypes="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    .line 6009
    invoke-static {v4}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 6008
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6011
    :cond_37a
    sget-boolean v1, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v1, :cond_397

    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    if-eqz v1, :cond_397

    .line 6012
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6013
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  frameRateBoostOnTouch="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6014
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 6016
    :cond_397
    sget-boolean v1, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v1, :cond_3b4

    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    if-eqz v1, :cond_3b4

    .line 6017
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6018
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  dvrrWindowFrameRateHint="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6019
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 6021
    :cond_3b4
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_40e

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v1, v1

    if-eqz v1, :cond_40e

    .line 6022
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6023
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  paramsForRotation:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6024
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3ce
    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    array-length v4, v4

    if-ge v1, v4, :cond_40e

    .line 6026
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6027
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6028
    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    aget-object v4, v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6024
    add-int/lit8 v1, v1, 0x1

    goto :goto_3ce

    .line 6032
    .end local v1    # "i":I
    :cond_40e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6033
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 5303
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5304
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5305
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5306
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5307
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5308
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5309
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5310
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5311
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5312
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5313
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5314
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5315
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5316
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5317
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5318
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5319
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5320
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5321
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5322
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5323
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5324
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5325
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 5326
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5327
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5328
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5329
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5330
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5331
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5332
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5333
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5334
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5335
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5336
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5337
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5338
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5339
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5340
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5341
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5342
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5343
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5344
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 5345
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5346
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5347
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5348
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5349
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5350
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsSides:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5351
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFitInsetsIgnoringVisibility:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5352
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5353
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mBlurBehindRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5354
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mWallpaperTouchEventsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5355
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 5356
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->forciblyShownTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5357
    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;->checkNonRecursiveParams()V

    .line 5358
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 5359
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mDisplayFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5360
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mDesiredHdrHeadroom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5361
    sget-boolean v0, Landroid/view/WindowManager$LayoutParams;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_13b

    .line 5362
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mFrameRateBoostOnTouch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5363
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->mIsFrameRatePowerSavingsBalanced:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5365
    :cond_13b
    return-void
.end method
