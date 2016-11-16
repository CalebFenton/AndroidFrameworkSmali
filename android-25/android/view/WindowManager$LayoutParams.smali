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
        Landroid/view/WindowManager$LayoutParams$1;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_ANCHOR_CHANGED:I = 0x1000000

.field public static final ACCESSIBILITY_TITLE_CHANGED:I = 0x2000000

.field public static final ALPHA_CHANGED:I = 0x80

.field public static final ANIMATION_CHANGED:I = 0x10

.field public static final BRIGHTNESS_OVERRIDE_FULL:F = 1.0f

.field public static final BRIGHTNESS_OVERRIDE_NONE:F = -1.0f

.field public static final BRIGHTNESS_OVERRIDE_OFF:F = 0.0f

.field public static final BUTTON_BRIGHTNESS_CHANGED:I = 0x2000

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIM_AMOUNT_CHANGED:I = 0x20

.field public static final EVERYTHING_CHANGED:I = -0x1

.field public static final FIRST_APPLICATION_WINDOW:I = 0x1

.field public static final FIRST_SUB_WINDOW:I = 0x3e8

.field public static final FIRST_SYSTEM_WINDOW:I = 0x7d0

.field public static final FLAGS_CHANGED:I = 0x4

.field public static final FLAG_ALLOW_LOCK_WHILE_SCREEN_ON:I = 0x1

.field public static final FLAG_ALT_FOCUSABLE_IM:I = 0x20000

.field public static final FLAG_BLUR_BEHIND:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DIM_BEHIND:I = 0x2

.field public static final FLAG_DISMISS_KEYGUARD:I = 0x400000

.field public static final FLAG_DITHER:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS:I = -0x80000000

.field public static final FLAG_FORCE_NOT_FULLSCREEN:I = 0x800

.field public static final FLAG_FULLSCREEN:I = 0x400

.field public static final FLAG_HARDWARE_ACCELERATED:I = 0x1000000

.field public static final FLAG_IGNORE_CHEEK_PRESSES:I = 0x8000

.field public static final FLAG_KEEP_SCREEN_ON:I = 0x80

.field public static final FLAG_LAYOUT_ATTACHED_IN_DECOR:I = 0x40000000

.field public static final FLAG_LAYOUT_INSET_DECOR:I = 0x10000

.field public static final FLAG_LAYOUT_IN_OVERSCAN:I = 0x2000000

.field public static final FLAG_LAYOUT_IN_SCREEN:I = 0x100

.field public static final FLAG_LAYOUT_NO_LIMITS:I = 0x200

.field public static final FLAG_LOCAL_FOCUS_MODE:I = 0x10000000

.field public static final FLAG_NOT_FOCUSABLE:I = 0x8

.field public static final FLAG_NOT_TOUCHABLE:I = 0x10

.field public static final FLAG_NOT_TOUCH_MODAL:I = 0x20

.field public static final FLAG_SCALED:I = 0x4000

.field public static final FLAG_SECURE:I = 0x2000

.field public static final FLAG_SHOW_WALLPAPER:I = 0x100000

.field public static final FLAG_SHOW_WHEN_LOCKED:I = 0x80000

.field public static final FLAG_SLIPPERY:I = 0x20000000

.field public static final FLAG_SPLIT_TOUCH:I = 0x800000

.field public static final FLAG_TOUCHABLE_WHEN_WAKING:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_TRANSLUCENT_NAVIGATION:I = 0x8000000

.field public static final FLAG_TRANSLUCENT_STATUS:I = 0x4000000

.field public static final FLAG_TURN_SCREEN_ON:I = 0x200000

.field public static final FLAG_WATCH_OUTSIDE_TOUCH:I = 0x40000

.field public static final FORMAT_CHANGED:I = 0x8

.field public static final INPUT_FEATURES_CHANGED:I = 0x10000

.field public static final INPUT_FEATURE_DISABLE_POINTER_GESTURES:I = 0x1

.field public static final INPUT_FEATURE_DISABLE_USER_ACTIVITY:I = 0x4

.field public static final INPUT_FEATURE_NO_INPUT_CHANNEL:I = 0x2

.field public static final LAST_APPLICATION_WINDOW:I = 0x63

.field public static final LAST_SUB_WINDOW:I = 0x7cf

.field public static final LAST_SYSTEM_WINDOW:I = 0xbb7

.field public static final LAYOUT_CHANGED:I = 0x1

.field public static final MEMORY_TYPE_CHANGED:I = 0x100

.field public static final MEMORY_TYPE_GPU:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_HARDWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_PUSH_BUFFERS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NEEDS_MENU_KEY_CHANGED:I = 0x400000

.field public static final NEEDS_MENU_SET_FALSE:I = 0x2

.field public static final NEEDS_MENU_SET_TRUE:I = 0x1

.field public static final NEEDS_MENU_UNSET:I = 0x0

.field public static final PREFERRED_DISPLAY_MODE_ID:I = 0x800000

.field public static final PREFERRED_REFRESH_RATE_CHANGED:I = 0x200000

.field public static final PRIVATE_FLAGS_CHANGED:I = 0x20000

.field public static final PRIVATE_FLAG_COMPATIBLE_WINDOW:I = 0x80

.field public static final PRIVATE_FLAG_DISABLE_WALLPAPER_TOUCH_EVENTS:I = 0x800

.field public static final PRIVATE_FLAG_FAKE_HARDWARE_ACCELERATED:I = 0x1

.field public static final PRIVATE_FLAG_FORCE_DECOR_VIEW_VISIBILITY:I = 0x4000

.field public static final PRIVATE_FLAG_FORCE_DRAW_STATUS_BAR_BACKGROUND:I = 0x20000

.field public static final PRIVATE_FLAG_FORCE_HARDWARE_ACCELERATED:I = 0x2

.field public static final PRIVATE_FLAG_FORCE_STATUS_BAR_VISIBLE_TRANSPARENT:I = 0x1000

.field public static final PRIVATE_FLAG_INHERIT_TRANSLUCENT_DECOR:I = 0x200

.field public static final PRIVATE_FLAG_KEYGUARD:I = 0x400

.field public static final PRIVATE_FLAG_LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME:I = 0x10000

.field public static final PRIVATE_FLAG_NO_MOVE_ANIMATION:I = 0x40

.field public static final PRIVATE_FLAG_PRESERVE_GEOMETRY:I = 0x2000

.field public static final PRIVATE_FLAG_SHOW_FOR_ALL_USERS:I = 0x10

.field public static final PRIVATE_FLAG_SUSTAINED_PERFORMANCE_MODE:I = 0x40000

.field public static final PRIVATE_FLAG_SYSTEM_ERROR:I = 0x100

.field public static final PRIVATE_FLAG_WANTS_OFFSET_NOTIFICATIONS:I = 0x4

.field public static final PRIVATE_FLAG_WILL_NOT_REPLACE_ON_RELAUNCH:I = 0x8000

.field public static final ROTATION_ANIMATION_CHANGED:I = 0x1000

.field public static final ROTATION_ANIMATION_CROSSFADE:I = 0x1

.field public static final ROTATION_ANIMATION_JUMPCUT:I = 0x2

.field public static final ROTATION_ANIMATION_ROTATE:I = 0x0

.field public static final ROTATION_ANIMATION_SEAMLESS:I = 0x3

.field public static final SCREEN_BRIGHTNESS_CHANGED:I = 0x800

.field public static final SCREEN_ORIENTATION_CHANGED:I = 0x400

.field public static final SOFT_INPUT_ADJUST_NOTHING:I = 0x30

.field public static final SOFT_INPUT_ADJUST_PAN:I = 0x20

.field public static final SOFT_INPUT_ADJUST_RESIZE:I = 0x10

.field public static final SOFT_INPUT_ADJUST_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_IS_FORWARD_NAVIGATION:I = 0x100

.field public static final SOFT_INPUT_MASK_ADJUST:I = 0xf0

.field public static final SOFT_INPUT_MASK_STATE:I = 0xf

.field public static final SOFT_INPUT_MODE_CHANGED:I = 0x200

.field public static final SOFT_INPUT_STATE_ALWAYS_HIDDEN:I = 0x3

.field public static final SOFT_INPUT_STATE_ALWAYS_VISIBLE:I = 0x5

.field public static final SOFT_INPUT_STATE_HIDDEN:I = 0x2

.field public static final SOFT_INPUT_STATE_UNCHANGED:I = 0x1

.field public static final SOFT_INPUT_STATE_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_STATE_VISIBLE:I = 0x4

.field public static final SURFACE_INSETS_CHANGED:I = 0x100000

.field public static final SYSTEM_UI_LISTENER_CHANGED:I = 0x8000

.field public static final SYSTEM_UI_VISIBILITY_CHANGED:I = 0x4000

.field public static final TITLE_CHANGED:I = 0x40

.field public static final TRANSLUCENT_FLAGS_CHANGED:I = 0x80000

.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x7f0

.field public static final TYPE_APPLICATION:I = 0x2

.field public static final TYPE_APPLICATION_ABOVE_SUB_PANEL:I = 0x3ed

.field public static final TYPE_APPLICATION_ATTACHED_DIALOG:I = 0x3eb

.field public static final TYPE_APPLICATION_MEDIA:I = 0x3e9

.field public static final TYPE_APPLICATION_MEDIA_OVERLAY:I = 0x3ec

.field public static final TYPE_APPLICATION_PANEL:I = 0x3e8

.field public static final TYPE_APPLICATION_STARTING:I = 0x3

.field public static final TYPE_APPLICATION_SUB_PANEL:I = 0x3ea

.field public static final TYPE_BASE_APPLICATION:I = 0x1

.field public static final TYPE_BOOT_PROGRESS:I = 0x7e5

.field public static final TYPE_CHANGED:I = 0x2

.field public static final TYPE_DISPLAY_OVERLAY:I = 0x7ea

.field public static final TYPE_DOCK_DIVIDER:I = 0x7f2

.field public static final TYPE_DRAG:I = 0x7e0

.field public static final TYPE_DRAWN_APPLICATION:I = 0x4

.field public static final TYPE_DREAM:I = 0x7e7

.field public static final TYPE_INPUT_CONSUMER:I = 0x7e6

.field public static final TYPE_INPUT_METHOD:I = 0x7db

.field public static final TYPE_INPUT_METHOD_DIALOG:I = 0x7dc

.field public static final TYPE_KEYGUARD:I = 0x7d4

.field public static final TYPE_KEYGUARD_DIALOG:I = 0x7d9

.field public static final TYPE_KEYGUARD_SCRIM:I = 0x7ed

.field public static final TYPE_MAGNIFICATION_OVERLAY:I = 0x7eb

.field public static final TYPE_NAVIGATION_BAR:I = 0x7e3

.field public static final TYPE_NAVIGATION_BAR_PANEL:I = 0x7e8

.field public static final TYPE_PHONE:I = 0x7d2

.field public static final TYPE_POINTER:I = 0x7e2

.field public static final TYPE_PRIORITY_PHONE:I = 0x7d7

.field public static final TYPE_PRIVATE_PRESENTATION:I = 0x7ee

.field public static final TYPE_QS_DIALOG:I = 0x7f3

.field public static final TYPE_SCREENSHOT:I = 0x7f4

.field public static final TYPE_SEARCH_BAR:I = 0x7d1

.field public static final TYPE_SECURE_SYSTEM_OVERLAY:I = 0x7df

.field public static final TYPE_STATUS_BAR:I = 0x7d0

.field public static final TYPE_STATUS_BAR_PANEL:I = 0x7de

.field public static final TYPE_STATUS_BAR_SUB_PANEL:I = 0x7e1

.field public static final TYPE_SYSTEM_ALERT:I = 0x7d3

.field public static final TYPE_SYSTEM_DIALOG:I = 0x7d8

.field public static final TYPE_SYSTEM_ERROR:I = 0x7da

.field public static final TYPE_SYSTEM_OVERLAY:I = 0x7d6

.field public static final TYPE_TOAST:I = 0x7d5

.field public static final TYPE_VOICE_INTERACTION:I = 0x7ef

.field public static final TYPE_VOICE_INTERACTION_STARTING:I = 0x7f1

.field public static final TYPE_VOLUME_OVERLAY:I = 0x7e4

.field public static final TYPE_WALLPAPER:I = 0x7dd

.field public static final USER_ACTIVITY_TIMEOUT_CHANGED:I = 0x40000


# instance fields
.field public accessibilityIdOfAnchor:I

.field public accessibilityTitle:Ljava/lang/CharSequence;

.field public alpha:F

.field public buttonBrightness:F

.field public dimAmount:F

.field public flags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "FLAG_ALLOW_LOCK_WHILE_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "FLAG_DIM_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "FLAG_BLUR_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "FLAG_NOT_FOCUSABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "FLAG_NOT_TOUCHABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "FLAG_NOT_TOUCH_MODAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "FLAG_TOUCHABLE_WHEN_WAKING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "FLAG_KEEP_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "FLAG_LAYOUT_IN_SCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200
                mask = 0x200
                name = "FLAG_LAYOUT_NO_LIMITS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400
                mask = 0x400
                name = "FLAG_FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "FLAG_FORCE_NOT_FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FLAG_DITHER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "FLAG_SECURE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "FLAG_SCALED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "FLAG_IGNORE_CHEEK_PRESSES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "FLAG_LAYOUT_INSET_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "FLAG_ALT_FOCUSABLE_IM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "FLAG_WATCH_OUTSIDE_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80000
                mask = 0x80000
                name = "FLAG_SHOW_WHEN_LOCKED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100000
                mask = 0x100000
                name = "FLAG_SHOW_WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "FLAG_TURN_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "FLAG_DISMISS_KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "FLAG_SPLIT_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = 0x1000000
                name = "FLAG_HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000000
                mask = 0x10000000
                name = "FLAG_LOCAL_FOCUS_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000000
                mask = 0x4000000
                name = "FLAG_TRANSLUCENT_STATUS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000000
                mask = 0x8000000
                name = "FLAG_TRANSLUCENT_NAVIGATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x80000000
                mask = -0x80000000
                name = "FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field public format:I

.field public gravity:I

.field public hasManualSurfaceInsets:Z

.field public hasSystemUiListeners:Z

.field public hideTimeoutMilliseconds:J

.field public horizontalMargin:F

.field public horizontalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public inputFeatures:I

.field private mCompatibilityParamsBackup:[I

.field private mTitle:Ljava/lang/CharSequence;

.field public memoryType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public needsMenuKey:I

.field public packageName:Ljava/lang/String;

.field public preferredDisplayModeId:I

.field public preferredRefreshRate:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public preservePreviousSurfaceInsets:Z

.field public privateFlags:I

.field public rotationAnimation:I

.field public screenBrightness:F

.field public screenOrientation:I

.field public softInputMode:I

.field public subtreeSystemUiVisibility:I

.field public final surfaceInsets:Landroid/graphics/Rect;

.field public systemUiVisibility:I

.field public token:Landroid/os/IBinder;

.field public type:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "TYPE_BASE_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TYPE_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TYPE_APPLICATION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "TYPE_DRAWN_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e8
                to = "TYPE_APPLICATION_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e9
                to = "TYPE_APPLICATION_MEDIA"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ea
                to = "TYPE_APPLICATION_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ed
                to = "TYPE_APPLICATION_ABOVE_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3eb
                to = "TYPE_APPLICATION_ATTACHED_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ec
                to = "TYPE_APPLICATION_MEDIA_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d0
                to = "TYPE_STATUS_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d1
                to = "TYPE_SEARCH_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d2
                to = "TYPE_PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d3
                to = "TYPE_SYSTEM_ALERT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d5
                to = "TYPE_TOAST"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d6
                to = "TYPE_SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d7
                to = "TYPE_PRIORITY_PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d8
                to = "TYPE_SYSTEM_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d9
                to = "TYPE_KEYGUARD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7da
                to = "TYPE_SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7db
                to = "TYPE_INPUT_METHOD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dc
                to = "TYPE_INPUT_METHOD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dd
                to = "TYPE_WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7de
                to = "TYPE_STATUS_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7df
                to = "TYPE_SECURE_SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e0
                to = "TYPE_DRAG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e1
                to = "TYPE_STATUS_BAR_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e2
                to = "TYPE_POINTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e3
                to = "TYPE_NAVIGATION_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e4
                to = "TYPE_VOLUME_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e5
                to = "TYPE_BOOT_PROGRESS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e6
                to = "TYPE_INPUT_CONSUMER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e7
                to = "TYPE_DREAM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e8
                to = "TYPE_NAVIGATION_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ea
                to = "TYPE_DISPLAY_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7eb
                to = "TYPE_MAGNIFICATION_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ee
                to = "TYPE_PRIVATE_PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ef
                to = "TYPE_VOICE_INTERACTION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f1
                to = "TYPE_VOICE_INTERACTION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f2
                to = "TYPE_DOCK_DIVIDER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f3
                to = "TYPE_QS_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f4
                to = "TYPE_SCREENSHOT"
            .end subannotation
        }
    .end annotation
.end field

.field public userActivityTimeout:J

.field public verticalMargin:F

.field public verticalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public windowAnimations:I

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1906
    new-instance v0, Landroid/view/WindowManager$LayoutParams$1;

    #@2
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams$1;-><init>()V

    #@5
    .line 1905
    sput-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 163
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/high16 v4, 0x3f800000    # 1.0f

    #@3
    const/high16 v1, -0x40800000    # -1.0f

    #@5
    const/4 v3, 0x0

    #@6
    const/4 v2, -0x1

    #@7
    .line 1769
    invoke-direct {p0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@a
    .line 1308
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@c
    .line 1488
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@13
    .line 1508
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    #@16
    .line 1527
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@18
    .line 1534
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@1a
    .line 1563
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@1c
    .line 1571
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    #@1e
    .line 1612
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@20
    .line 1618
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@22
    .line 1623
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@24
    .line 1633
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #@26
    .line 1736
    const-wide/16 v0, -0x1

    #@28
    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@2a
    .line 1744
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    #@2c
    .line 1766
    const-wide/16 v0, -0x1

    #@2e
    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    #@30
    .line 2003
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    #@32
    .line 2351
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    #@34
    .line 1770
    const/4 v0, 0x2

    #@35
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@37
    .line 1771
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@39
    .line 1768
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "_type"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/high16 v4, 0x3f800000    # 1.0f

    #@3
    const/high16 v1, -0x40800000    # -1.0f

    #@5
    const/4 v3, 0x0

    #@6
    const/4 v2, -0x1

    #@7
    .line 1775
    invoke-direct {p0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@a
    .line 1308
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@c
    .line 1488
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@13
    .line 1508
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    #@16
    .line 1527
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@18
    .line 1534
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@1a
    .line 1563
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@1c
    .line 1571
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    #@1e
    .line 1612
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@20
    .line 1618
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@22
    .line 1623
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@24
    .line 1633
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #@26
    .line 1736
    const-wide/16 v0, -0x1

    #@28
    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@2a
    .line 1744
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    #@2c
    .line 1766
    const-wide/16 v0, -0x1

    #@2e
    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    #@30
    .line 2003
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    #@32
    .line 2351
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    #@34
    .line 1776
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@36
    .line 1777
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@38
    .line 1774
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .param p1, "_type"    # I
    .param p2, "_flags"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/high16 v4, 0x3f800000    # 1.0f

    #@3
    const/high16 v1, -0x40800000    # -1.0f

    #@5
    const/4 v3, 0x0

    #@6
    const/4 v2, -0x1

    #@7
    .line 1781
    invoke-direct {p0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@a
    .line 1308
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@c
    .line 1488
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@13
    .line 1508
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    #@16
    .line 1527
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@18
    .line 1534
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@1a
    .line 1563
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@1c
    .line 1571
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    #@1e
    .line 1612
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@20
    .line 1618
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@22
    .line 1623
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@24
    .line 1633
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #@26
    .line 1736
    const-wide/16 v0, -0x1

    #@28
    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@2a
    .line 1744
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    #@2c
    .line 1766
    const-wide/16 v0, -0x1

    #@2e
    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    #@30
    .line 2003
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    #@32
    .line 2351
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    #@34
    .line 1782
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@36
    .line 1783
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@38
    .line 1784
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@3a
    .line 1780
    return-void
.end method

.method public constructor <init>(III)V
    .locals 6
    .param p1, "_type"    # I
    .param p2, "_flags"    # I
    .param p3, "_format"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/high16 v4, 0x3f800000    # 1.0f

    #@3
    const/high16 v1, -0x40800000    # -1.0f

    #@5
    const/4 v3, 0x0

    #@6
    const/4 v2, -0x1

    #@7
    .line 1788
    invoke-direct {p0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@a
    .line 1308
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@c
    .line 1488
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@13
    .line 1508
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    #@16
    .line 1527
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@18
    .line 1534
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@1a
    .line 1563
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@1c
    .line 1571
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    #@1e
    .line 1612
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@20
    .line 1618
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@22
    .line 1623
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@24
    .line 1633
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #@26
    .line 1736
    const-wide/16 v0, -0x1

    #@28
    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@2a
    .line 1744
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    #@2c
    .line 1766
    const-wide/16 v0, -0x1

    #@2e
    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    #@30
    .line 2003
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    #@32
    .line 2351
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    #@34
    .line 1789
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@36
    .line 1790
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@38
    .line 1791
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@3a
    .line 1787
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "_type"    # I
    .param p4, "_flags"    # I
    .param p5, "_format"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    const/high16 v3, 0x3f800000    # 1.0f

    #@4
    const/high16 v1, -0x40800000    # -1.0f

    #@6
    const/4 v2, 0x0

    #@7
    .line 1795
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@a
    .line 1308
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@c
    .line 1488
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@13
    .line 1508
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    #@16
    .line 1527
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@18
    .line 1534
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@1a
    .line 1563
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@1c
    .line 1571
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    #@1e
    .line 1612
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@20
    .line 1618
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@22
    .line 1623
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@24
    .line 1633
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #@26
    .line 1736
    const-wide/16 v0, -0x1

    #@28
    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@2a
    .line 1744
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    #@2c
    .line 1766
    const-wide/16 v0, -0x1

    #@2e
    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    #@30
    .line 2003
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    #@32
    .line 2351
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    #@34
    .line 1796
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@36
    .line 1797
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@38
    .line 1798
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@3a
    .line 1794
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "xpos"    # I
    .param p4, "ypos"    # I
    .param p5, "_type"    # I
    .param p6, "_flags"    # I
    .param p7, "_format"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    const/high16 v3, 0x3f800000    # 1.0f

    #@4
    const/high16 v1, -0x40800000    # -1.0f

    #@6
    const/4 v2, 0x0

    #@7
    .line 1803
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@a
    .line 1308
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@c
    .line 1488
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@13
    .line 1508
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    #@16
    .line 1527
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@18
    .line 1534
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@1a
    .line 1563
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@1c
    .line 1571
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    #@1e
    .line 1612
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@20
    .line 1618
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@22
    .line 1623
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@24
    .line 1633
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #@26
    .line 1736
    const-wide/16 v0, -0x1

    #@28
    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@2a
    .line 1744
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    #@2c
    .line 1766
    const-wide/16 v0, -0x1

    #@2e
    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    #@30
    .line 2003
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    #@32
    .line 2351
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    #@34
    .line 1804
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@36
    .line 1805
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@38
    .line 1806
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3a
    .line 1807
    iput p6, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@3c
    .line 1808
    iput p7, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@3e
    .line 1802
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    #@2
    const/high16 v4, -0x40800000    # -1.0f

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v1, 0x1

    #@6
    const/4 v2, 0x0

    #@7
    .line 1917
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    #@a
    .line 1308
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@c
    .line 1488
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@13
    .line 1508
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    #@15
    .line 1527
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@17
    .line 1534
    iput v5, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@19
    .line 1563
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@1b
    .line 1571
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    #@1d
    .line 1612
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@1f
    .line 1618
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@21
    .line 1623
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@23
    .line 1633
    const/4 v0, -0x1

    #@24
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #@26
    .line 1736
    const-wide/16 v4, -0x1

    #@28
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@2a
    .line 1744
    const/4 v0, -0x1

    #@2b
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    #@2d
    .line 1766
    const-wide/16 v4, -0x1

    #@2f
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    #@31
    .line 2003
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    #@33
    .line 2351
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    #@35
    .line 1918
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v0

    #@39
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@3b
    .line 1919
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v0

    #@3f
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@41
    .line 1920
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v0

    #@45
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@47
    .line 1921
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v0

    #@4b
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@4d
    .line 1922
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v0

    #@51
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@53
    .line 1923
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v0

    #@57
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@59
    .line 1924
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v0

    #@5d
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@5f
    .line 1925
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@62
    move-result v0

    #@63
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@65
    .line 1926
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v0

    #@69
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@6b
    .line 1927
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@6e
    move-result v0

    #@6f
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    #@71
    .line 1928
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@74
    move-result v0

    #@75
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    #@77
    .line 1929
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7a
    move-result v0

    #@7b
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@7d
    .line 1930
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@80
    move-result v0

    #@81
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@83
    .line 1931
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@86
    move-result v0

    #@87
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@89
    .line 1932
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@8c
    move-result v0

    #@8d
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@8f
    .line 1933
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@92
    move-result v0

    #@93
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@95
    .line 1934
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@98
    move-result v0

    #@99
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    #@9b
    .line 1935
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9e
    move-result v0

    #@9f
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@a1
    .line 1936
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a4
    move-result-object v0

    #@a5
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@a7
    .line 1937
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@aa
    move-result-object v0

    #@ab
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@ad
    .line 1938
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@af
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b2
    move-result-object v0

    #@b3
    check-cast v0, Ljava/lang/CharSequence;

    #@b5
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    #@b7
    .line 1939
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@ba
    move-result v0

    #@bb
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #@bd
    .line 1940
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@c0
    move-result v0

    #@c1
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    #@c3
    .line 1941
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c6
    move-result v0

    #@c7
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    #@c9
    .line 1942
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@cc
    move-result v0

    #@cd
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@cf
    .line 1943
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d2
    move-result v0

    #@d3
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@d5
    .line 1944
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d8
    move-result v0

    #@d9
    if-eqz v0, :cond_0

    #@db
    move v0, v1

    #@dc
    :goto_0
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    #@de
    .line 1945
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e1
    move-result v0

    #@e2
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    #@e4
    .line 1946
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@e7
    move-result-wide v4

    #@e8
    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@ea
    .line 1947
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@ec
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@ef
    move-result v3

    #@f0
    iput v3, v0, Landroid/graphics/Rect;->left:I

    #@f2
    .line 1948
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@f4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f7
    move-result v3

    #@f8
    iput v3, v0, Landroid/graphics/Rect;->top:I

    #@fa
    .line 1949
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@fc
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@ff
    move-result v3

    #@100
    iput v3, v0, Landroid/graphics/Rect;->right:I

    #@102
    .line 1950
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@107
    move-result v3

    #@108
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    #@10a
    .line 1951
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10d
    move-result v0

    #@10e
    if-eqz v0, :cond_1

    #@110
    move v0, v1

    #@111
    :goto_1
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@113
    .line 1952
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@116
    move-result v0

    #@117
    if-eqz v0, :cond_2

    #@119
    :goto_2
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    #@11b
    .line 1953
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11e
    move-result v0

    #@11f
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@121
    .line 1954
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@124
    move-result v0

    #@125
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    #@127
    .line 1955
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@129
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12c
    move-result-object v0

    #@12d
    check-cast v0, Ljava/lang/CharSequence;

    #@12f
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    #@131
    .line 1956
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@134
    move-result-wide v0

    #@135
    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    #@137
    .line 1917
    return-void

    #@138
    :cond_0
    move v0, v2

    #@139
    .line 1944
    goto :goto_0

    #@13a
    :cond_1
    move v0, v2

    #@13b
    .line 1951
    goto :goto_1

    #@13c
    :cond_2
    move v1, v2

    #@13d
    .line 1952
    goto :goto_2
.end method

.method public static mayUseInputMethod(I)Z
    .locals 1
    .param p0, "flags"    # I

    #@0
    .prologue
    .line 1325
    const v0, 0x20008

    #@3
    and-int/2addr v0, p0

    #@4
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 1330
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 1328
    :sswitch_0
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 1325
    nop

    #@c
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20008 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method backup()V
    .locals 3

    #@0
    .prologue
    .line 2326
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    #@2
    .line 2327
    .local v0, "backup":[I
    if-nez v0, :cond_0

    #@4
    .line 2329
    const/4 v1, 0x4

    #@5
    new-array v0, v1, [I

    #@7
    .end local v0    # "backup":[I
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    #@9
    .line 2331
    .restart local v0    # "backup":[I
    :cond_0
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@b
    const/4 v2, 0x0

    #@c
    aput v1, v0, v2

    #@e
    .line 2332
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@10
    const/4 v2, 0x1

    #@11
    aput v1, v0, v2

    #@13
    .line 2333
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@15
    const/4 v2, 0x2

    #@16
    aput v1, v0, v2

    #@18
    .line 2334
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@1a
    const/4 v2, 0x3

    #@1b
    aput v1, v0, v2

    #@1d
    .line 2325
    return-void
.end method

.method public final copyFrom(Landroid/view/WindowManager$LayoutParams;)I
    .locals 7
    .param p1, "o"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/high16 v6, 0x100000

    #@2
    .line 2006
    const/4 v0, 0x0

    #@3
    .line 2008
    .local v0, "changes":I
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@5
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@7
    if-eq v2, v3, :cond_0

    #@9
    .line 2009
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@b
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@d
    .line 2010
    const/4 v0, 0x1

    #@e
    .line 2012
    :cond_0
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@10
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@12
    if-eq v2, v3, :cond_1

    #@14
    .line 2013
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@16
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@18
    .line 2014
    or-int/lit8 v0, v0, 0x1

    #@1a
    .line 2016
    :cond_1
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@1c
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@1e
    if-eq v2, v3, :cond_2

    #@20
    .line 2017
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@22
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@24
    .line 2018
    or-int/lit8 v0, v0, 0x1

    #@26
    .line 2020
    :cond_2
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@28
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@2a
    if-eq v2, v3, :cond_3

    #@2c
    .line 2021
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@2e
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@30
    .line 2022
    or-int/lit8 v0, v0, 0x1

    #@32
    .line 2024
    :cond_3
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    #@34
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    #@36
    cmpl-float v2, v2, v3

    #@38
    if-eqz v2, :cond_4

    #@3a
    .line 2025
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    #@3c
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    #@3e
    .line 2026
    or-int/lit8 v0, v0, 0x1

    #@40
    .line 2028
    :cond_4
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    #@42
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    #@44
    cmpl-float v2, v2, v3

    #@46
    if-eqz v2, :cond_5

    #@48
    .line 2029
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    #@4a
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    #@4c
    .line 2030
    or-int/lit8 v0, v0, 0x1

    #@4e
    .line 2032
    :cond_5
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    #@50
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    #@52
    cmpl-float v2, v2, v3

    #@54
    if-eqz v2, :cond_6

    #@56
    .line 2033
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    #@58
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    #@5a
    .line 2034
    or-int/lit8 v0, v0, 0x1

    #@5c
    .line 2036
    :cond_6
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    #@5e
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    #@60
    cmpl-float v2, v2, v3

    #@62
    if-eqz v2, :cond_7

    #@64
    .line 2037
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    #@66
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    #@68
    .line 2038
    or-int/lit8 v0, v0, 0x1

    #@6a
    .line 2040
    :cond_7
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@6c
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@6e
    if-eq v2, v3, :cond_8

    #@70
    .line 2041
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@72
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@74
    .line 2042
    or-int/lit8 v0, v0, 0x2

    #@76
    .line 2044
    :cond_8
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@78
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@7a
    if-eq v2, v3, :cond_a

    #@7c
    .line 2045
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@7e
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@80
    xor-int v1, v2, v3

    #@82
    .line 2046
    .local v1, "diff":I
    const/high16 v2, 0xc000000

    #@84
    and-int/2addr v2, v1

    #@85
    if-eqz v2, :cond_9

    #@87
    .line 2047
    const/high16 v2, 0x80000

    #@89
    or-int/2addr v0, v2

    #@8a
    .line 2049
    :cond_9
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@8c
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@8e
    .line 2050
    or-int/lit8 v0, v0, 0x4

    #@90
    .line 2052
    .end local v1    # "diff":I
    :cond_a
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@92
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@94
    if-eq v2, v3, :cond_b

    #@96
    .line 2053
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@98
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@9a
    .line 2054
    const/high16 v2, 0x20000

    #@9c
    or-int/2addr v0, v2

    #@9d
    .line 2056
    :cond_b
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@9f
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@a1
    if-eq v2, v3, :cond_c

    #@a3
    .line 2057
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@a5
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@a7
    .line 2058
    or-int/lit16 v0, v0, 0x200

    #@a9
    .line 2060
    :cond_c
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@ab
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@ad
    if-eq v2, v3, :cond_d

    #@af
    .line 2061
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@b1
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@b3
    .line 2062
    or-int/lit8 v0, v0, 0x1

    #@b5
    .line 2064
    :cond_d
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@b7
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    #@b9
    if-eq v2, v3, :cond_e

    #@bb
    .line 2065
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    #@bd
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@bf
    .line 2066
    or-int/lit8 v0, v0, 0x8

    #@c1
    .line 2068
    :cond_e
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@c3
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@c5
    if-eq v2, v3, :cond_f

    #@c7
    .line 2069
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@c9
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@cb
    .line 2070
    or-int/lit8 v0, v0, 0x10

    #@cd
    .line 2072
    :cond_f
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@cf
    if-nez v2, :cond_10

    #@d1
    .line 2075
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@d3
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@d5
    .line 2077
    :cond_10
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@d7
    if-nez v2, :cond_11

    #@d9
    .line 2080
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@db
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@dd
    .line 2082
    :cond_11
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    #@df
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    #@e1
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@e4
    move-result v2

    #@e5
    if-nez v2, :cond_12

    #@e7
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    #@e9
    if-eqz v2, :cond_12

    #@eb
    .line 2084
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    #@ed
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    #@ef
    .line 2085
    or-int/lit8 v0, v0, 0x40

    #@f1
    .line 2087
    :cond_12
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@f3
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@f5
    cmpl-float v2, v2, v3

    #@f7
    if-eqz v2, :cond_13

    #@f9
    .line 2088
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@fb
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@fd
    .line 2089
    or-int/lit16 v0, v0, 0x80

    #@ff
    .line 2091
    :cond_13
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@101
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@103
    cmpl-float v2, v2, v3

    #@105
    if-eqz v2, :cond_14

    #@107
    .line 2092
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@109
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@10b
    .line 2093
    or-int/lit8 v0, v0, 0x20

    #@10d
    .line 2095
    :cond_14
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@10f
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@111
    cmpl-float v2, v2, v3

    #@113
    if-eqz v2, :cond_15

    #@115
    .line 2096
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@117
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@119
    .line 2097
    or-int/lit16 v0, v0, 0x800

    #@11b
    .line 2099
    :cond_15
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    #@11d
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    #@11f
    cmpl-float v2, v2, v3

    #@121
    if-eqz v2, :cond_16

    #@123
    .line 2100
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    #@125
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    #@127
    .line 2101
    or-int/lit16 v0, v0, 0x2000

    #@129
    .line 2103
    :cond_16
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@12b
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@12d
    if-eq v2, v3, :cond_17

    #@12f
    .line 2104
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@131
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@133
    .line 2105
    or-int/lit16 v0, v0, 0x1000

    #@135
    .line 2108
    :cond_17
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #@137
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #@139
    if-eq v2, v3, :cond_18

    #@13b
    .line 2109
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #@13d
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #@13f
    .line 2110
    or-int/lit16 v0, v0, 0x400

    #@141
    .line 2113
    :cond_18
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    #@143
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    #@145
    cmpl-float v2, v2, v3

    #@147
    if-eqz v2, :cond_19

    #@149
    .line 2114
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    #@14b
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    #@14d
    .line 2115
    const/high16 v2, 0x200000

    #@14f
    or-int/2addr v0, v2

    #@150
    .line 2118
    :cond_19
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    #@152
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    #@154
    if-eq v2, v3, :cond_1a

    #@156
    .line 2119
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    #@158
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    #@15a
    .line 2120
    const/high16 v2, 0x800000

    #@15c
    or-int/2addr v0, v2

    #@15d
    .line 2123
    :cond_1a
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@15f
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@161
    if-ne v2, v3, :cond_1b

    #@163
    .line 2124
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@165
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@167
    if-eq v2, v3, :cond_1c

    #@169
    .line 2125
    :cond_1b
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@16b
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@16d
    .line 2126
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@16f
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@171
    .line 2127
    or-int/lit16 v0, v0, 0x4000

    #@173
    .line 2130
    :cond_1c
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    #@175
    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    #@177
    if-eq v2, v3, :cond_1d

    #@179
    .line 2131
    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    #@17b
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    #@17d
    .line 2132
    const v2, 0x8000

    #@180
    or-int/2addr v0, v2

    #@181
    .line 2135
    :cond_1d
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    #@183
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    #@185
    if-eq v2, v3, :cond_1e

    #@187
    .line 2136
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    #@189
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    #@18b
    .line 2137
    const/high16 v2, 0x10000

    #@18d
    or-int/2addr v0, v2

    #@18e
    .line 2140
    :cond_1e
    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@190
    iget-wide v4, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@192
    cmp-long v2, v2, v4

    #@194
    if-eqz v2, :cond_1f

    #@196
    .line 2141
    iget-wide v2, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@198
    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@19a
    .line 2142
    const/high16 v2, 0x40000

    #@19c
    or-int/2addr v0, v2

    #@19d
    .line 2145
    :cond_1f
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@19f
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1a1
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@1a4
    move-result v2

    #@1a5
    if-nez v2, :cond_20

    #@1a7
    .line 2146
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1a9
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1ab
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1ae
    .line 2147
    or-int/2addr v0, v6

    #@1af
    .line 2150
    :cond_20
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@1b1
    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@1b3
    if-eq v2, v3, :cond_21

    #@1b5
    .line 2151
    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@1b7
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@1b9
    .line 2152
    or-int/2addr v0, v6

    #@1ba
    .line 2155
    :cond_21
    iget-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    #@1bc
    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    #@1be
    if-eq v2, v3, :cond_22

    #@1c0
    .line 2156
    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    #@1c2
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    #@1c4
    .line 2157
    or-int/2addr v0, v6

    #@1c5
    .line 2160
    :cond_22
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@1c7
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@1c9
    if-eq v2, v3, :cond_23

    #@1cb
    .line 2161
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@1cd
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@1cf
    .line 2162
    const/high16 v2, 0x400000

    #@1d1
    or-int/2addr v0, v2

    #@1d2
    .line 2165
    :cond_23
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    #@1d4
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    #@1d6
    if-eq v2, v3, :cond_24

    #@1d8
    .line 2166
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    #@1da
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    #@1dc
    .line 2167
    const/high16 v2, 0x1000000

    #@1de
    or-int/2addr v0, v2

    #@1df
    .line 2170
    :cond_24
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    #@1e1
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    #@1e3
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e6
    move-result v2

    #@1e7
    if-nez v2, :cond_25

    #@1e9
    .line 2171
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    #@1eb
    if-eqz v2, :cond_25

    #@1ed
    .line 2173
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    #@1ef
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    #@1f1
    .line 2174
    const/high16 v2, 0x2000000

    #@1f3
    or-int/2addr v0, v2

    #@1f4
    .line 2178
    :cond_25
    iget-wide v2, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    #@1f6
    iput-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    #@1f8
    .line 2180
    return v0
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "output"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2185
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "Contents of "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, ":"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object p1

    #@1f
    .line 2186
    const-string/jumbo v0, "Debug"

    #@22
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 2187
    const-string/jumbo v0, ""

    #@28
    invoke-super {p0, v0}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object p1

    #@2c
    .line 2188
    const-string/jumbo v0, "Debug"

    #@2f
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 2189
    const-string/jumbo v0, "Debug"

    #@35
    const-string/jumbo v1, ""

    #@38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 2190
    const-string/jumbo v0, "Debug"

    #@3e
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v2, "WindowManager.LayoutParams={title="

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    const-string/jumbo v2, "}"

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 2191
    const-string/jumbo v0, ""

    #@61
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1860
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 2356
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 2358
    const-string/jumbo v0, "x"

    #@6
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@b
    .line 2359
    const-string/jumbo v0, "y"

    #@e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@10
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@13
    .line 2360
    const-string/jumbo v0, "horizontalWeight"

    #@16
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    #@18
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    #@1b
    .line 2361
    const-string/jumbo v0, "verticalWeight"

    #@1e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    #@23
    .line 2362
    const-string/jumbo v0, "type"

    #@26
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@28
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@2b
    .line 2363
    const-string/jumbo v0, "flags"

    #@2e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@30
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@33
    .line 2355
    return-void
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1819
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    const-string/jumbo v0, ""

    #@a
    goto :goto_0
.end method

.method public final getUserActivityTimeout()J
    .locals 2

    #@0
    .prologue
    .line 1856
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@2
    return-wide v0
.end method

.method restore()V
    .locals 2

    #@0
    .prologue
    .line 2342
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    #@2
    .line 2343
    .local v0, "backup":[I
    if-eqz v0, :cond_0

    #@4
    .line 2344
    const/4 v1, 0x0

    #@5
    aget v1, v0, v1

    #@7
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@9
    .line 2345
    const/4 v1, 0x1

    #@a
    aget v1, v0, v1

    #@c
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@e
    .line 2346
    const/4 v1, 0x2

    #@f
    aget v1, v0, v1

    #@11
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@13
    .line 2347
    const/4 v1, 0x3

    #@14
    aget v1, v0, v1

    #@16
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@18
    .line 2341
    :cond_0
    return-void
.end method

.method public scale(F)V
    .locals 2
    .param p1, "scale"    # F

    #@0
    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    #@2
    .line 2311
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@4
    int-to-float v0, v0

    #@5
    mul-float/2addr v0, p1

    #@6
    add-float/2addr v0, v1

    #@7
    float-to-int v0, v0

    #@8
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@a
    .line 2312
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@c
    int-to-float v0, v0

    #@d
    mul-float/2addr v0, p1

    #@e
    add-float/2addr v0, v1

    #@f
    float-to-int v0, v0

    #@10
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@12
    .line 2313
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@14
    if-lez v0, :cond_0

    #@16
    .line 2314
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@18
    int-to-float v0, v0

    #@19
    mul-float/2addr v0, p1

    #@1a
    add-float/2addr v0, v1

    #@1b
    float-to-int v0, v0

    #@1c
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@1e
    .line 2316
    :cond_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@20
    if-lez v0, :cond_1

    #@22
    .line 2317
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@24
    int-to-float v0, v0

    #@25
    mul-float/2addr v0, p1

    #@26
    add-float/2addr v0, v1

    #@27
    float-to-int v0, v0

    #@28
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@2a
    .line 2310
    :cond_1
    return-void
.end method

.method public final setSurfaceInsets(Landroid/view/View;ZZ)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "manual"    # Z
    .param p3, "preservePrevious"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1827
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    #@4
    move-result v1

    #@5
    const/high16 v2, 0x40000000    # 2.0f

    #@7
    mul-float/2addr v1, v2

    #@8
    float-to-double v2, v1

    #@9
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@c
    move-result-wide v2

    #@d
    double-to-int v0, v2

    #@e
    .line 1833
    .local v0, "surfaceInset":I
    if-nez v0, :cond_0

    #@10
    .line 1835
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@12
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@15
    .line 1843
    :goto_0
    iput-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@17
    .line 1844
    iput-boolean p3, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    #@19
    .line 1826
    return-void

    #@1a
    .line 1837
    :cond_0
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1c
    .line 1838
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1e
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@20
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@23
    move-result v2

    #@24
    .line 1839
    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@26
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@28
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    #@2b
    move-result v3

    #@2c
    .line 1840
    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@2e
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@30
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@33
    move-result v4

    #@34
    .line 1841
    iget-object v5, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@36
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@38
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    #@3b
    move-result v5

    #@3c
    .line 1837
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    #@3f
    goto :goto_0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1812
    if-nez p1, :cond_0

    #@2
    .line 1813
    const-string/jumbo p1, ""

    #@5
    .line 1815
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    #@b
    .line 1811
    return-void
.end method

.method public final setUserActivityTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 1850
    iput-wide p1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@2
    .line 1849
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v2, -0x2

    #@1
    const/high16 v5, -0x40800000    # -1.0f

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v3, -0x1

    #@5
    .line 2196
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    const/16 v1, 0x100

    #@9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@c
    .line 2197
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "WM.LayoutParams{"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 2198
    const-string/jumbo v1, "("

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 2199
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    .line 2200
    const/16 v1, 0x2c

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    .line 2201
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    .line 2202
    const-string/jumbo v1, ")("

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 2203
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@2f
    if-ne v1, v3, :cond_18

    #@31
    const-string/jumbo v1, "fill"

    #@34
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    .line 2204
    const/16 v1, 0x78

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    .line 2205
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@3e
    if-ne v1, v3, :cond_1a

    #@40
    const-string/jumbo v1, "fill"

    #@43
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    .line 2206
    const-string/jumbo v1, ")"

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 2207
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    #@4e
    cmpl-float v1, v1, v4

    #@50
    if-eqz v1, :cond_0

    #@52
    .line 2208
    const-string/jumbo v1, " hm="

    #@55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    .line 2209
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@5d
    .line 2211
    :cond_0
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    #@5f
    cmpl-float v1, v1, v4

    #@61
    if-eqz v1, :cond_1

    #@63
    .line 2212
    const-string/jumbo v1, " vm="

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    .line 2213
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@6e
    .line 2215
    :cond_1
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@70
    if-eqz v1, :cond_2

    #@72
    .line 2216
    const-string/jumbo v1, " gr=#"

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 2217
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@7a
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    .line 2219
    :cond_2
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@83
    if-eqz v1, :cond_3

    #@85
    .line 2220
    const-string/jumbo v1, " sim=#"

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    .line 2221
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@8d
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    .line 2223
    :cond_3
    const-string/jumbo v1, " ty="

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    .line 2224
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@9c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9f
    .line 2225
    const-string/jumbo v1, " fl=#"

    #@a2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    .line 2226
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@a7
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@aa
    move-result-object v1

    #@ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    .line 2227
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@b0
    if-eqz v1, :cond_5

    #@b2
    .line 2228
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@b4
    and-int/lit16 v1, v1, 0x80

    #@b6
    if-eqz v1, :cond_4

    #@b8
    .line 2229
    const-string/jumbo v1, " compatible=true"

    #@bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    .line 2231
    :cond_4
    const-string/jumbo v1, " pfl=0x"

    #@c1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v1

    #@c5
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@c7
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@ca
    move-result-object v2

    #@cb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    .line 2233
    :cond_5
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@d0
    if-eq v1, v3, :cond_6

    #@d2
    .line 2234
    const-string/jumbo v1, " fmt="

    #@d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    .line 2235
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dd
    .line 2237
    :cond_6
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@df
    if-eqz v1, :cond_7

    #@e1
    .line 2238
    const-string/jumbo v1, " wanim=0x"

    #@e4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    .line 2239
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@e9
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@ec
    move-result-object v1

    #@ed
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    .line 2241
    :cond_7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #@f2
    if-eq v1, v3, :cond_8

    #@f4
    .line 2242
    const-string/jumbo v1, " or="

    #@f7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    .line 2243
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #@fc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ff
    .line 2245
    :cond_8
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@101
    const/high16 v2, 0x3f800000    # 1.0f

    #@103
    cmpl-float v1, v1, v2

    #@105
    if-eqz v1, :cond_9

    #@107
    .line 2246
    const-string/jumbo v1, " alpha="

    #@10a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    .line 2247
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@10f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@112
    .line 2249
    :cond_9
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@114
    cmpl-float v1, v1, v5

    #@116
    if-eqz v1, :cond_a

    #@118
    .line 2250
    const-string/jumbo v1, " sbrt="

    #@11b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    .line 2251
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@123
    .line 2253
    :cond_a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    #@125
    cmpl-float v1, v1, v5

    #@127
    if-eqz v1, :cond_b

    #@129
    .line 2254
    const-string/jumbo v1, " bbrt="

    #@12c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    .line 2255
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    #@131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@134
    .line 2257
    :cond_b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@136
    if-eqz v1, :cond_c

    #@138
    .line 2258
    const-string/jumbo v1, " rotAnim="

    #@13b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    .line 2259
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@143
    .line 2261
    :cond_c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    #@145
    cmpl-float v1, v1, v4

    #@147
    if-eqz v1, :cond_d

    #@149
    .line 2262
    const-string/jumbo v1, " preferredRefreshRate="

    #@14c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    .line 2263
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    #@151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@154
    .line 2265
    :cond_d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    #@156
    if-eqz v1, :cond_e

    #@158
    .line 2266
    const-string/jumbo v1, " preferredDisplayMode="

    #@15b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e
    .line 2267
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    #@160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@163
    .line 2269
    :cond_e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@165
    if-eqz v1, :cond_f

    #@167
    .line 2270
    const-string/jumbo v1, " sysui=0x"

    #@16a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    .line 2271
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@16f
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@172
    move-result-object v1

    #@173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    .line 2273
    :cond_f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@178
    if-eqz v1, :cond_10

    #@17a
    .line 2274
    const-string/jumbo v1, " vsysui=0x"

    #@17d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    .line 2275
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@182
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@185
    move-result-object v1

    #@186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    .line 2277
    :cond_10
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    #@18b
    if-eqz v1, :cond_11

    #@18d
    .line 2278
    const-string/jumbo v1, " sysuil="

    #@190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    .line 2279
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    #@195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@198
    .line 2281
    :cond_11
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    #@19a
    if-eqz v1, :cond_12

    #@19c
    .line 2282
    const-string/jumbo v1, " if=0x"

    #@19f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v1

    #@1a3
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    #@1a5
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a8
    move-result-object v2

    #@1a9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    .line 2284
    :cond_12
    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@1ae
    const-wide/16 v4, 0x0

    #@1b0
    cmp-long v1, v2, v4

    #@1b2
    if-ltz v1, :cond_13

    #@1b4
    .line 2285
    const-string/jumbo v1, " userActivityTimeout="

    #@1b7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v1

    #@1bb
    iget-wide v2, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@1bd
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1c0
    .line 2287
    :cond_13
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1c2
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@1c4
    if-nez v1, :cond_14

    #@1c6
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1c8
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@1ca
    if-eqz v1, :cond_1c

    #@1cc
    .line 2290
    :cond_14
    const-string/jumbo v1, " surfaceInsets="

    #@1cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v1

    #@1d3
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@1d5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d8
    .line 2291
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@1da
    if-eqz v1, :cond_15

    #@1dc
    .line 2292
    const-string/jumbo v1, " (manual)"

    #@1df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    .line 2294
    :cond_15
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    #@1e4
    if-nez v1, :cond_16

    #@1e6
    .line 2295
    const-string/jumbo v1, " (!preservePreviousSurfaceInsets)"

    #@1e9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec
    .line 2298
    :cond_16
    :goto_2
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@1ee
    if-eqz v1, :cond_17

    #@1f0
    .line 2299
    const-string/jumbo v1, " needsMenuKey="

    #@1f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f6
    .line 2300
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@1f8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1fb
    .line 2302
    :cond_17
    const/16 v1, 0x7d

    #@1fd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@200
    .line 2303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@203
    move-result-object v1

    #@204
    return-object v1

    #@205
    .line 2203
    :cond_18
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@207
    if-ne v1, v2, :cond_19

    #@209
    const-string/jumbo v1, "wrap"

    #@20c
    goto/16 :goto_0

    #@20e
    :cond_19
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@213
    move-result-object v1

    #@214
    goto/16 :goto_0

    #@216
    .line 2205
    :cond_1a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@218
    if-ne v1, v2, :cond_1b

    #@21a
    const-string/jumbo v1, "wrap"

    #@21d
    goto/16 :goto_1

    #@21f
    :cond_1b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@224
    move-result-object v1

    #@225
    goto/16 :goto_1

    #@227
    .line 2287
    :cond_1c
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@229
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@22b
    if-nez v1, :cond_14

    #@22d
    .line 2288
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@22f
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@231
    if-nez v1, :cond_14

    #@233
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@235
    .line 2287
    if-nez v1, :cond_14

    #@237
    .line 2289
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    #@239
    if-eqz v1, :cond_14

    #@23b
    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1864
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 1865
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1866
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1867
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 1868
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1869
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 1870
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 1871
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 1872
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@2c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 1873
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    #@31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@34
    .line 1874
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    #@36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@39
    .line 1875
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@3b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3e
    .line 1876
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@40
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 1877
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@45
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@48
    .line 1878
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@4a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@4d
    .line 1879
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    #@4f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@52
    .line 1880
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    #@54
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@57
    .line 1881
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    #@59
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    .line 1882
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@5e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@61
    .line 1883
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@66
    .line 1884
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    #@68
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@6b
    .line 1885
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #@6d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@70
    .line 1886
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    #@72
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@75
    .line 1887
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    #@77
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7a
    .line 1888
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@7c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7f
    .line 1889
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    #@81
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@84
    .line 1890
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    #@86
    if-eqz v0, :cond_0

    #@88
    move v0, v1

    #@89
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8c
    .line 1891
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    #@8e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@91
    .line 1892
    iget-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    #@93
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@96
    .line 1893
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@98
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@9a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9d
    .line 1894
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@9f
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@a1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a4
    .line 1895
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@a6
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@a8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@ab
    .line 1896
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@ad
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@af
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b2
    .line 1897
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    #@b4
    if-eqz v0, :cond_1

    #@b6
    move v0, v1

    #@b7
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@ba
    .line 1898
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    #@bc
    if-eqz v0, :cond_2

    #@be
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c1
    .line 1899
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@c3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c6
    .line 1900
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    #@c8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@cb
    .line 1901
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    #@cd
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@d0
    .line 1902
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    #@d2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@d5
    .line 1863
    return-void

    #@d6
    :cond_0
    move v0, v2

    #@d7
    .line 1890
    goto :goto_0

    #@d8
    :cond_1
    move v0, v2

    #@d9
    .line 1897
    goto :goto_1

    #@da
    :cond_2
    move v1, v2

    #@db
    .line 1898
    goto :goto_2
.end method
