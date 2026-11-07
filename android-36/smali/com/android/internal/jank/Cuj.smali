.class public Lcom/android/internal/jank/Cuj;
.super Ljava/lang/Object;
.source "Cuj.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/Cuj$CujType;
    }
.end annotation


# static fields
.field public static final blacklist CUJ_BACK_PANEL_ARROW:I = 0x58

.field public static final blacklist CUJ_BIOMETRIC_PROMPT_TRANSITION:I = 0x38

.field public static final blacklist CUJ_DEFAULT_TASK_TO_TASK_ANIMATION:I = 0x80

.field public static final blacklist CUJ_DESKTOP_MODE_APP_LAUNCH_FROM_ICON:I = 0x7c

.field public static final blacklist CUJ_DESKTOP_MODE_APP_LAUNCH_FROM_INTENT:I = 0x7b

.field public static final blacklist CUJ_DESKTOP_MODE_CLOSE_TASK:I = 0x7a

.field public static final blacklist CUJ_DESKTOP_MODE_DRAG_WINDOW:I = 0x6e

.field public static final blacklist CUJ_DESKTOP_MODE_ENTER_APP_HANDLE_DRAG_HOLD:I = 0x6b

.field public static final blacklist CUJ_DESKTOP_MODE_ENTER_APP_HANDLE_DRAG_RELEASE:I = 0x74

.field public static final blacklist CUJ_DESKTOP_MODE_ENTER_FROM_OVERVIEW_MENU:I = 0x78

.field public static final blacklist CUJ_DESKTOP_MODE_ENTER_MODE_APP_HANDLE_MENU:I = 0x70

.field public static final blacklist CUJ_DESKTOP_MODE_EXIT_MODE:I = 0x6c

.field public static final blacklist CUJ_DESKTOP_MODE_EXIT_MODE_ON_LAST_WINDOW_CLOSE:I = 0x75

.field public static final blacklist CUJ_DESKTOP_MODE_KEYBOARD_QUICK_SWITCH_APP_LAUNCH:I = 0x7d

.field public static final blacklist CUJ_DESKTOP_MODE_MAXIMIZE_WINDOW:I = 0x68

.field public static final blacklist CUJ_DESKTOP_MODE_MINIMIZE_WINDOW:I = 0x6d

.field public static final blacklist CUJ_DESKTOP_MODE_MOVE_WINDOW_TO_DISPLAY:I = 0x81

.field public static final blacklist CUJ_DESKTOP_MODE_RESIZE_WINDOW:I = 0x6a

.field public static final blacklist CUJ_DESKTOP_MODE_SNAP_RESIZE:I = 0x76

.field public static final blacklist CUJ_DESKTOP_MODE_UNMAXIMIZE_WINDOW:I = 0x77

.field public static final blacklist CUJ_FOLD_ANIM:I = 0x69

.field public static final blacklist CUJ_IME_INSETS_HIDE_ANIMATION:I = 0x51

.field public static final blacklist CUJ_IME_INSETS_SHOW_ANIMATION:I = 0x50

.field public static final blacklist CUJ_LAUNCHER_ALL_APPS_SCROLL:I = 0x1a

.field public static final blacklist CUJ_LAUNCHER_ALL_APPS_SEARCH_BACK:I = 0x5f

.field public static final blacklist CUJ_LAUNCHER_APP_CLOSE_TO_HOME:I = 0x9

.field public static final blacklist CUJ_LAUNCHER_APP_CLOSE_TO_HOME_FALLBACK:I = 0x4e

.field public static final blacklist CUJ_LAUNCHER_APP_CLOSE_TO_PIP:I = 0xa

.field public static final blacklist CUJ_LAUNCHER_APP_LAUNCH_FROM_ICON:I = 0x8

.field public static final blacklist CUJ_LAUNCHER_APP_LAUNCH_FROM_RECENTS:I = 0x7

.field public static final blacklist CUJ_LAUNCHER_APP_LAUNCH_FROM_WIDGET:I = 0x1b

.field public static final blacklist CUJ_LAUNCHER_APP_SWIPE_TO_RECENTS:I = 0x42

.field public static final blacklist CUJ_LAUNCHER_CLOSE_ALL_APPS_BACK:I = 0x59

.field public static final blacklist CUJ_LAUNCHER_CLOSE_ALL_APPS_SWIPE:I = 0x43

.field public static final blacklist CUJ_LAUNCHER_CLOSE_ALL_APPS_TO_HOME:I = 0x44

.field public static final blacklist CUJ_LAUNCHER_KEYBOARD_QUICK_SWITCH_APP_LAUNCH:I = 0x73

.field public static final blacklist CUJ_LAUNCHER_KEYBOARD_QUICK_SWITCH_CLOSE:I = 0x72

.field public static final blacklist CUJ_LAUNCHER_KEYBOARD_QUICK_SWITCH_OPEN:I = 0x71

.field public static final blacklist CUJ_LAUNCHER_LAUNCH_APP_PAIR_FROM_TASKBAR:I = 0x5c

.field public static final blacklist CUJ_LAUNCHER_LAUNCH_APP_PAIR_FROM_WORKSPACE:I = 0x5b

.field public static final blacklist CUJ_LAUNCHER_OPEN_ALL_APPS:I = 0x19

.field public static final blacklist CUJ_LAUNCHER_OPEN_SEARCH_RESULT:I = 0x47

.field public static final blacklist CUJ_LAUNCHER_OVERVIEW_TASK_DISMISS:I = 0x79

.field public static final blacklist CUJ_LAUNCHER_PRIVATE_SPACE_LOCK:I = 0x66

.field public static final blacklist CUJ_LAUNCHER_PRIVATE_SPACE_UNLOCK:I = 0x67

.field public static final blacklist CUJ_LAUNCHER_QUICK_SWITCH:I = 0xb

.field public static final blacklist CUJ_LAUNCHER_SAVE_APP_PAIR:I = 0x5d

.field public static final blacklist CUJ_LAUNCHER_SEARCH_QSB_WEB_SEARCH:I = 0x5a

.field public static final blacklist CUJ_LAUNCHER_TASKBAR_ALL_APPS_CLOSE_BACK:I = 0x60

.field public static final blacklist CUJ_LAUNCHER_TASKBAR_ALL_APPS_SEARCH_BACK:I = 0x61

.field public static final blacklist CUJ_LAUNCHER_UNFOLD_ANIM:I = 0x53

.field public static final blacklist CUJ_LAUNCHER_UNLOCK_ENTRANCE_ANIMATION:I = 0x3f

.field public static final blacklist CUJ_LAUNCHER_WIDGET_BOTTOM_SHEET_CLOSE_BACK:I = 0x64

.field public static final blacklist CUJ_LAUNCHER_WIDGET_EDU_SHEET_CLOSE_BACK:I = 0x65

.field public static final blacklist CUJ_LAUNCHER_WIDGET_PICKER_CLOSE_BACK:I = 0x62

.field public static final blacklist CUJ_LAUNCHER_WIDGET_PICKER_SEARCH_BACK:I = 0x63

.field public static final blacklist CUJ_LAUNCHER_WORK_UTILITY_VIEW_EXPAND:I = 0x7e

.field public static final blacklist CUJ_LAUNCHER_WORK_UTILITY_VIEW_SHRINK:I = 0x7f

.field public static final blacklist CUJ_LOCKSCREEN_CLOCK_MOVE_ANIMATION:I = 0x46

.field public static final blacklist CUJ_LOCKSCREEN_LAUNCH_CAMERA:I = 0x33

.field public static final blacklist CUJ_LOCKSCREEN_OCCLUSION:I = 0x40

.field public static final blacklist CUJ_LOCKSCREEN_PASSWORD_APPEAR:I = 0x11

.field public static final blacklist CUJ_LOCKSCREEN_PASSWORD_DISAPPEAR:I = 0x14

.field public static final blacklist CUJ_LOCKSCREEN_PATTERN_APPEAR:I = 0x12

.field public static final blacklist CUJ_LOCKSCREEN_PATTERN_DISAPPEAR:I = 0x15

.field public static final blacklist CUJ_LOCKSCREEN_PIN_APPEAR:I = 0x13

.field public static final blacklist CUJ_LOCKSCREEN_PIN_DISAPPEAR:I = 0x16

.field public static final blacklist CUJ_LOCKSCREEN_TRANSITION_FROM_AOD:I = 0x17

.field public static final blacklist CUJ_LOCKSCREEN_TRANSITION_TO_AOD:I = 0x18

.field public static final blacklist CUJ_LOCKSCREEN_UNLOCK_ANIMATION:I = 0x1d

.field public static final blacklist CUJ_NOTIFICATION_ADD:I = 0xe

.field public static final blacklist CUJ_NOTIFICATION_APP_START:I = 0x10

.field public static final blacklist CUJ_NOTIFICATION_HEADS_UP_APPEAR:I = 0xc

.field public static final blacklist CUJ_NOTIFICATION_HEADS_UP_DISAPPEAR:I = 0xd

.field public static final blacklist CUJ_NOTIFICATION_REMOVE:I = 0xf

.field public static final blacklist CUJ_NOTIFICATION_SHADE_EXPAND_COLLAPSE:I = 0x0

.field public static final blacklist CUJ_NOTIFICATION_SHADE_QS_EXPAND_COLLAPSE:I = 0x5

.field public static final blacklist CUJ_NOTIFICATION_SHADE_QS_SCROLL_SWIPE:I = 0x6

.field public static final blacklist CUJ_NOTIFICATION_SHADE_ROW_EXPAND:I = 0x3

.field public static final blacklist CUJ_NOTIFICATION_SHADE_ROW_SWIPE:I = 0x4

.field public static final blacklist CUJ_NOTIFICATION_SHADE_SCROLL_FLING:I = 0x2

.field public static final blacklist CUJ_ONE_HANDED_ENTER_TRANSITION:I = 0x2a

.field public static final blacklist CUJ_ONE_HANDED_EXIT_TRANSITION:I = 0x2b

.field public static final blacklist CUJ_PIP_TRANSITION:I = 0x23

.field public static final blacklist CUJ_PREDICTIVE_BACK_CROSS_ACTIVITY:I = 0x54

.field public static final blacklist CUJ_PREDICTIVE_BACK_CROSS_TASK:I = 0x55

.field public static final blacklist CUJ_PREDICTIVE_BACK_HOME:I = 0x56

.field public static final blacklist CUJ_RECENTS_SCROLLING:I = 0x41

.field public static final blacklist CUJ_SCREEN_OFF:I = 0x28

.field public static final blacklist CUJ_SCREEN_OFF_SHOW_AOD:I = 0x29

.field public static final blacklist CUJ_SETTINGS_PAGE_SCROLL:I = 0x1c

.field public static final blacklist CUJ_SETTINGS_SLIDER:I = 0x35

.field public static final blacklist CUJ_SETTINGS_TOGGLE:I = 0x39

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_HISTORY_BUTTON:I = 0x1e

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_MEDIA_PLAYER:I = 0x1f

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_QS_TILE:I = 0x20

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_SETTINGS_BUTTON:I = 0x21

.field public static final blacklist CUJ_SHADE_CLEAR_ALL:I = 0x3e

.field public static final blacklist CUJ_SHADE_DIALOG_OPEN:I = 0x3a

.field public static final blacklist CUJ_SPLASHSCREEN_AVD:I = 0x26

.field public static final blacklist CUJ_SPLASHSCREEN_EXIT_ANIM:I = 0x27

.field public static final blacklist CUJ_SPLIT_SCREEN_DOUBLE_TAP_DIVIDER:I = 0x52

.field public static final blacklist CUJ_SPLIT_SCREEN_ENTER:I = 0x31

.field public static final blacklist CUJ_SPLIT_SCREEN_EXIT:I = 0x32

.field public static final blacklist CUJ_SPLIT_SCREEN_RESIZE:I = 0x34

.field public static final blacklist CUJ_STATUS_BAR_APP_LAUNCH_FROM_CALL_CHIP:I = 0x22

.field public static final blacklist CUJ_STATUS_BAR_APP_RETURN_TO_CALL_CHIP:I = 0x82

.field public static final blacklist CUJ_STATUS_BAR_LAUNCH_DIALOG_FROM_CHIP:I = 0x6f

.field public static final blacklist CUJ_SUW_LOADING_SCREEN_FOR_STATUS:I = 0x30

.field public static final blacklist CUJ_SUW_LOADING_TO_NEXT_FLOW:I = 0x2f

.field public static final blacklist CUJ_SUW_LOADING_TO_SHOW_INFO_WITH_ACTIONS:I = 0x2d

.field public static final blacklist CUJ_SUW_SHOW_FUNCTION_SCREEN_WITH_ACTIONS:I = 0x2e

.field public static final blacklist CUJ_TAKE_SCREENSHOT:I = 0x36

.field public static final blacklist CUJ_TASKBAR_COLLAPSE:I = 0x3d

.field public static final blacklist CUJ_TASKBAR_EXPAND:I = 0x3c

.field private static final blacklist CUJ_TO_STATSD_INTERACTION_TYPE:[I

.field public static final blacklist CUJ_UNFOLD_ANIM:I = 0x2c

.field public static final blacklist CUJ_USER_DIALOG_OPEN:I = 0x3b

.field public static final blacklist CUJ_USER_SWITCH:I = 0x25

.field public static final blacklist CUJ_VOLUME_CONTROL:I = 0x37

.field public static final blacklist CUJ_WALLPAPER_TRANSITION:I = 0x24

.field static final blacklist LAST_CUJ:I = 0x82

.field public static final blacklist MAX_LENGTH_OF_CUJ_NAME:I = 0x52

.field private static final blacklist NO_STATSD_LOGGING:I = -0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 467
    const/16 v0, 0x83

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    .line 469
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 471
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 472
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/4 v1, 0x2

    const/4 v2, 0x3

    aput v2, v0, v1

    .line 473
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/4 v1, 0x4

    aput v1, v0, v2

    .line 474
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 475
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/4 v1, 0x6

    aput v1, v0, v2

    .line 476
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/4 v2, 0x7

    aput v2, v0, v1

    .line 477
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    .line 478
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v2, 0x9

    aput v2, v0, v1

    .line 479
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0xa

    aput v1, v0, v2

    .line 480
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v2, 0xb

    aput v2, v0, v1

    .line 481
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0xc

    aput v1, v0, v2

    .line 482
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v2, 0xd

    aput v2, v0, v1

    .line 483
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0xe

    aput v1, v0, v2

    .line 484
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v2, 0xf

    aput v2, v0, v1

    .line 485
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x10

    aput v1, v0, v2

    .line 486
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v2, 0x11

    aput v2, v0, v1

    .line 487
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x12

    aput v1, v0, v2

    .line 488
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v2, 0x13

    aput v2, v0, v1

    .line 489
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x14

    aput v1, v0, v2

    .line 490
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v2, 0x15

    aput v2, v0, v1

    .line 491
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x16

    aput v1, v0, v2

    .line 492
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v2, 0x17

    aput v2, v0, v1

    .line 493
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x18

    aput v1, v0, v2

    .line 494
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v2, 0x19

    aput v2, v0, v1

    .line 495
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x19

    const/16 v2, 0x1a

    aput v2, v0, v1

    .line 496
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x1a

    const/16 v2, 0x1b

    aput v2, v0, v1

    .line 497
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x1b

    const/16 v2, 0x1c

    aput v2, v0, v1

    .line 498
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x1c

    const/16 v2, 0x1d

    aput v2, v0, v1

    .line 499
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x1d

    const/16 v2, 0x1e

    aput v2, v0, v1

    .line 500
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x1e

    const/16 v2, 0x1f

    aput v2, v0, v1

    .line 501
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x1f

    const/16 v2, 0x20

    aput v2, v0, v1

    .line 502
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x20

    const/16 v2, 0x21

    aput v2, v0, v1

    .line 503
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x21

    const/16 v2, 0x22

    aput v2, v0, v1

    .line 504
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x22

    const/16 v2, 0x23

    aput v2, v0, v1

    .line 505
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x23

    const/16 v2, 0x24

    aput v2, v0, v1

    .line 506
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x24

    const/16 v2, 0x25

    aput v2, v0, v1

    .line 507
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x25

    const/16 v2, 0x26

    aput v2, v0, v1

    .line 508
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x26

    const/16 v2, 0x27

    aput v2, v0, v1

    .line 509
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x27

    const/16 v2, 0x28

    aput v2, v0, v1

    .line 510
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x28

    const/16 v2, 0x29

    aput v2, v0, v1

    .line 511
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x29

    const/16 v2, 0x2a

    aput v2, v0, v1

    .line 512
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x2a

    const/16 v2, 0x2b

    aput v2, v0, v1

    .line 513
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x2b

    const/16 v2, 0x2c

    aput v2, v0, v1

    .line 514
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x2c

    const/16 v2, 0x2d

    aput v2, v0, v1

    .line 515
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x2d

    const/16 v2, 0x2e

    aput v2, v0, v1

    .line 516
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    aput v2, v0, v1

    .line 517
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x2f

    const/16 v2, 0x30

    aput v2, v0, v1

    .line 518
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x30

    const/16 v2, 0x31

    aput v2, v0, v1

    .line 519
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x31

    const/16 v2, 0x32

    aput v2, v0, v1

    .line 520
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x32

    const/16 v2, 0x33

    aput v2, v0, v1

    .line 521
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x33

    const/16 v2, 0x34

    aput v2, v0, v1

    .line 522
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x34

    const/16 v2, 0x35

    aput v2, v0, v1

    .line 523
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x35

    const/16 v2, 0x36

    aput v2, v0, v1

    .line 524
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x36

    const/16 v2, 0x37

    aput v2, v0, v1

    .line 525
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x37

    const/16 v2, 0x38

    aput v2, v0, v1

    .line 526
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x38

    const/16 v2, 0x39

    aput v2, v0, v1

    .line 527
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x39

    const/16 v2, 0x3a

    aput v2, v0, v1

    .line 528
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x3a

    const/16 v2, 0x3b

    aput v2, v0, v1

    .line 529
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x3b

    const/16 v2, 0x3c

    aput v2, v0, v1

    .line 530
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x3c

    const/16 v2, 0x3d

    aput v2, v0, v1

    .line 531
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x3d

    const/16 v2, 0x3e

    aput v2, v0, v1

    .line 532
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x3e

    const/16 v2, 0x3f

    aput v2, v0, v1

    .line 533
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x3f

    const/16 v2, 0x40

    aput v2, v0, v1

    .line 534
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x40

    const/16 v2, 0x41

    aput v2, v0, v1

    .line 535
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x41

    const/16 v2, 0x42

    aput v2, v0, v1

    .line 536
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x42

    const/16 v2, 0x43

    aput v2, v0, v1

    .line 537
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x43

    const/16 v2, 0x44

    aput v2, v0, v1

    .line 538
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x44

    const/16 v2, 0x45

    aput v2, v0, v1

    .line 539
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x46

    const/16 v2, 0x47

    aput v2, v0, v1

    .line 540
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x47

    const/16 v2, 0x48

    aput v2, v0, v1

    .line 541
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x4e

    const/16 v2, 0x4f

    aput v2, v0, v1

    .line 542
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x50

    const/16 v2, 0x51

    aput v2, v0, v1

    .line 543
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x51

    const/16 v2, 0x52

    aput v2, v0, v1

    .line 544
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x52

    const/16 v2, 0x53

    aput v2, v0, v1

    .line 545
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x53

    const/16 v2, 0x54

    aput v2, v0, v1

    .line 546
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x54

    const/16 v2, 0x55

    aput v2, v0, v1

    .line 547
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x55

    const/16 v2, 0x56

    aput v2, v0, v1

    .line 548
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x56

    const/16 v2, 0x57

    aput v2, v0, v1

    .line 549
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x58

    const/16 v2, 0x59

    aput v2, v0, v1

    .line 550
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x59

    const/16 v2, 0x5a

    aput v2, v0, v1

    .line 551
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x5a

    const/16 v2, 0x5b

    aput v2, v0, v1

    .line 552
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x5b

    const/16 v2, 0x5c

    aput v2, v0, v1

    .line 553
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x5c

    const/16 v2, 0x5d

    aput v2, v0, v1

    .line 554
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x5d

    const/16 v2, 0x5e

    aput v2, v0, v1

    .line 555
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x5f

    const/16 v2, 0x5f

    aput v2, v0, v1

    .line 556
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x60

    const/16 v2, 0x60

    aput v2, v0, v1

    .line 557
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x61

    const/16 v2, 0x61

    aput v2, v0, v1

    .line 558
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x62

    const/16 v2, 0x62

    aput v2, v0, v1

    .line 559
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x63

    const/16 v2, 0x63

    aput v2, v0, v1

    .line 560
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x64

    const/16 v2, 0x64

    aput v2, v0, v1

    .line 561
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x65

    const/16 v2, 0x65

    aput v2, v0, v1

    .line 562
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x66

    const/16 v2, 0x66

    aput v2, v0, v1

    .line 563
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x67

    const/16 v2, 0x67

    aput v2, v0, v1

    .line 564
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x68

    const/16 v2, 0x68

    aput v2, v0, v1

    .line 565
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x69

    const/16 v2, 0x69

    aput v2, v0, v1

    .line 566
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x6a

    const/16 v2, 0x6a

    aput v2, v0, v1

    .line 567
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x6b

    const/16 v2, 0x6b

    aput v2, v0, v1

    .line 568
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x70

    const/16 v2, 0x70

    aput v2, v0, v1

    .line 569
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x6c

    const/16 v2, 0x6c

    aput v2, v0, v1

    .line 570
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x6d

    const/16 v2, 0x6d

    aput v2, v0, v1

    .line 571
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x6e

    const/16 v2, 0x6e

    aput v2, v0, v1

    .line 572
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x6f

    const/16 v2, 0x6f

    aput v2, v0, v1

    .line 573
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x71

    const/16 v2, 0x71

    aput v2, v0, v1

    .line 574
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x72

    const/16 v2, 0x72

    aput v2, v0, v1

    .line 575
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x73

    const/16 v2, 0x73

    aput v2, v0, v1

    .line 576
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x74

    const/16 v2, 0x74

    aput v2, v0, v1

    .line 577
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x75

    const/16 v2, 0x75

    aput v2, v0, v1

    .line 578
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x76

    const/16 v2, 0x76

    aput v2, v0, v1

    .line 579
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x77

    const/16 v2, 0x77

    aput v2, v0, v1

    .line 580
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x78

    const/16 v2, 0x78

    aput v2, v0, v1

    .line 581
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x79

    const/16 v2, 0x79

    aput v2, v0, v1

    .line 582
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x7a

    const/16 v2, 0x7a

    aput v2, v0, v1

    .line 583
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x7b

    const/16 v2, 0x7b

    aput v2, v0, v1

    .line 584
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x7c

    const/16 v2, 0x7c

    aput v2, v0, v1

    .line 585
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x7d

    const/16 v2, 0x7d

    aput v2, v0, v1

    .line 586
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x7e

    const/16 v2, 0x7e

    aput v2, v0, v1

    .line 587
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x7f

    const/16 v2, 0x7f

    aput v2, v0, v1

    .line 588
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x80

    const/16 v2, 0x80

    aput v2, v0, v1

    .line 589
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x81

    const/16 v2, 0x81

    aput v2, v0, v1

    .line 590
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/16 v1, 0x82

    const/16 v2, 0x82

    aput v2, v0, v1

    .line 591
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    return-void
.end method

.method private static blacklist getCujTypeFromInteraction(I)I
    .registers 2
    .param p0, "interactionType"    # I

    .line 878
    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method public static blacklist getNameOfCuj(I)Ljava/lang/String;
    .registers 2
    .param p0, "cujType"    # I

    .line 606
    packed-switch p0, :pswitch_data_16e

    .line 848
    :pswitch_3
    const-string v0, "UNKNOWN"

    return-object v0

    .line 846
    :pswitch_6
    const-string v0, "STATUS_BAR_APP_RETURN_TO_CALL_CHIP"

    return-object v0

    .line 844
    :pswitch_9
    const-string v0, "DESKTOP_MODE_MOVE_WINDOW_TO_DISPLAY"

    return-object v0

    .line 842
    :pswitch_c
    const-string v0, "DEFAULT_TASK_TO_TASK_ANIMATION"

    return-object v0

    .line 840
    :pswitch_f
    const-string v0, "LAUNCHER_WORK_UTILITY_VIEW_SHRINK"

    return-object v0

    .line 838
    :pswitch_12
    const-string v0, "LAUNCHER_WORK_UTILITY_VIEW_EXPAND"

    return-object v0

    .line 836
    :pswitch_15
    const-string v0, "DESKTOP_MODE_KEYBOARD_QUICK_SWITCH_APP_LAUNCH"

    return-object v0

    .line 834
    :pswitch_18
    const-string v0, "DESKTOP_MODE_APP_LAUNCH_FROM_ICON"

    return-object v0

    .line 832
    :pswitch_1b
    const-string v0, "DESKTOP_MODE_APP_LAUNCH_FROM_INTENT"

    return-object v0

    .line 830
    :pswitch_1e
    const-string v0, "DESKTOP_MODE_CLOSE_TASK"

    return-object v0

    .line 828
    :pswitch_21
    const-string v0, "LAUNCHER_OVERVIEW_TASK_DISMISS"

    return-object v0

    .line 826
    :pswitch_24
    const-string v0, "DESKTOP_MODE_ENTER_FROM_OVERVIEW_MENU"

    return-object v0

    .line 824
    :pswitch_27
    const-string v0, "DESKTOP_MODE_UNMAXIMIZE_WINDOW"

    return-object v0

    .line 822
    :pswitch_2a
    const-string v0, "DESKTOP_MODE_SNAP_RESIZE"

    return-object v0

    .line 820
    :pswitch_2d
    const-string v0, "DESKTOP_MODE_EXIT_MODE_ON_LAST_WINDOW_CLOSE"

    return-object v0

    .line 818
    :pswitch_30
    const-string v0, "DESKTOP_MODE_ENTER_APP_HANDLE_DRAG_RELEASE"

    return-object v0

    .line 816
    :pswitch_33
    const-string v0, "LAUNCHER_KEYBOARD_QUICK_SWITCH_APP_LAUNCH"

    return-object v0

    .line 814
    :pswitch_36
    const-string v0, "LAUNCHER_KEYBOARD_QUICK_SWITCH_CLOSE"

    return-object v0

    .line 812
    :pswitch_39
    const-string v0, "LAUNCHER_KEYBOARD_QUICK_SWITCH_OPEN"

    return-object v0

    .line 802
    :pswitch_3c
    const-string v0, "DESKTOP_MODE_ENTER_MODE_APP_HANDLE_MENU"

    return-object v0

    .line 810
    :pswitch_3f
    const-string v0, "STATUS_BAR_LAUNCH_DIALOG_FROM_CHIP"

    return-object v0

    .line 808
    :pswitch_42
    const-string v0, "DESKTOP_MODE_DRAG_WINDOW"

    return-object v0

    .line 806
    :pswitch_45
    const-string v0, "DESKTOP_MODE_MINIMIZE_WINDOW"

    return-object v0

    .line 804
    :pswitch_48
    const-string v0, "DESKTOP_MODE_EXIT_MODE"

    return-object v0

    .line 800
    :pswitch_4b
    const-string v0, "DESKTOP_MODE_ENTER_APP_HANDLE_DRAG_HOLD"

    return-object v0

    .line 798
    :pswitch_4e
    const-string v0, "DESKTOP_MODE_RESIZE_WINDOW"

    return-object v0

    .line 796
    :pswitch_51
    const-string v0, "FOLD_ANIM"

    return-object v0

    .line 794
    :pswitch_54
    const-string v0, "DESKTOP_MODE_MAXIMIZE_WINDOW"

    return-object v0

    .line 792
    :pswitch_57
    const-string v0, "LAUNCHER_PRIVATE_SPACE_UNLOCK"

    return-object v0

    .line 790
    :pswitch_5a
    const-string v0, "LAUNCHER_PRIVATE_SPACE_LOCK"

    return-object v0

    .line 788
    :pswitch_5d
    const-string v0, "LAUNCHER_WIDGET_EDU_SHEET_CLOSE_BACK"

    return-object v0

    .line 786
    :pswitch_60
    const-string v0, "LAUNCHER_WIDGET_BOTTOM_SHEET_CLOSE_BACK"

    return-object v0

    .line 784
    :pswitch_63
    const-string v0, "LAUNCHER_WIDGET_PICKER_SEARCH_BACK"

    return-object v0

    .line 782
    :pswitch_66
    const-string v0, "LAUNCHER_WIDGET_PICKER_CLOSE_BACK"

    return-object v0

    .line 780
    :pswitch_69
    const-string v0, "LAUNCHER_TASKBAR_ALL_APPS_SEARCH_BACK"

    return-object v0

    .line 778
    :pswitch_6c
    const-string v0, "LAUNCHER_TASKBAR_ALL_APPS_CLOSE_BACK"

    return-object v0

    .line 776
    :pswitch_6f
    const-string v0, "LAUNCHER_ALL_APPS_SEARCH_BACK"

    return-object v0

    .line 774
    :pswitch_72
    const-string v0, "LAUNCHER_SAVE_APP_PAIR"

    return-object v0

    .line 772
    :pswitch_75
    const-string v0, "LAUNCHER_LAUNCH_APP_PAIR_FROM_TASKBAR"

    return-object v0

    .line 770
    :pswitch_78
    const-string v0, "LAUNCHER_LAUNCH_APP_PAIR_FROM_WORKSPACE"

    return-object v0

    .line 768
    :pswitch_7b
    const-string v0, "LAUNCHER_SEARCH_QSB_WEB_SEARCH"

    return-object v0

    .line 766
    :pswitch_7e
    const-string v0, "LAUNCHER_CLOSE_ALL_APPS_BACK"

    return-object v0

    .line 764
    :pswitch_81
    const-string v0, "BACK_PANEL_ARROW"

    return-object v0

    .line 762
    :pswitch_84
    const-string v0, "PREDICTIVE_BACK_HOME"

    return-object v0

    .line 760
    :pswitch_87
    const-string v0, "PREDICTIVE_BACK_CROSS_TASK"

    return-object v0

    .line 758
    :pswitch_8a
    const-string v0, "PREDICTIVE_BACK_CROSS_ACTIVITY"

    return-object v0

    .line 756
    :pswitch_8d
    const-string v0, "LAUNCHER_UNFOLD_ANIM"

    return-object v0

    .line 754
    :pswitch_90
    const-string v0, "SPLIT_SCREEN_DOUBLE_TAP_DIVIDER"

    return-object v0

    .line 752
    :pswitch_93
    const-string v0, "IME_INSETS_HIDE_ANIMATION"

    return-object v0

    .line 750
    :pswitch_96
    const-string v0, "IME_INSETS_SHOW_ANIMATION"

    return-object v0

    .line 748
    :pswitch_99
    const-string v0, "LAUNCHER_APP_CLOSE_TO_HOME_FALLBACK"

    return-object v0

    .line 746
    :pswitch_9c
    const-string v0, "LAUNCHER_OPEN_SEARCH_RESULT"

    return-object v0

    .line 744
    :pswitch_9f
    const-string v0, "LOCKSCREEN_CLOCK_MOVE_ANIMATION"

    return-object v0

    .line 742
    :pswitch_a2
    const-string v0, "LAUNCHER_CLOSE_ALL_APPS_TO_HOME"

    return-object v0

    .line 740
    :pswitch_a5
    const-string v0, "LAUNCHER_CLOSE_ALL_APPS_SWIPE"

    return-object v0

    .line 738
    :pswitch_a8
    const-string v0, "LAUNCHER_APP_SWIPE_TO_RECENTS"

    return-object v0

    .line 736
    :pswitch_ab
    const-string v0, "RECENTS_SCROLLING"

    return-object v0

    .line 734
    :pswitch_ae
    const-string v0, "LOCKSCREEN_OCCLUSION"

    return-object v0

    .line 732
    :pswitch_b1
    const-string v0, "LAUNCHER_UNLOCK_ENTRANCE_ANIMATION"

    return-object v0

    .line 730
    :pswitch_b4
    const-string v0, "SHADE_CLEAR_ALL"

    return-object v0

    .line 728
    :pswitch_b7
    const-string v0, "TASKBAR_COLLAPSE"

    return-object v0

    .line 726
    :pswitch_ba
    const-string v0, "TASKBAR_EXPAND"

    return-object v0

    .line 724
    :pswitch_bd
    const-string v0, "USER_DIALOG_OPEN"

    return-object v0

    .line 722
    :pswitch_c0
    const-string v0, "SHADE_DIALOG_OPEN"

    return-object v0

    .line 720
    :pswitch_c3
    const-string v0, "SETTINGS_TOGGLE"

    return-object v0

    .line 718
    :pswitch_c6
    const-string v0, "BIOMETRIC_PROMPT_TRANSITION"

    return-object v0

    .line 716
    :pswitch_c9
    const-string v0, "VOLUME_CONTROL"

    return-object v0

    .line 714
    :pswitch_cc
    const-string v0, "TAKE_SCREENSHOT"

    return-object v0

    .line 712
    :pswitch_cf
    const-string v0, "SETTINGS_SLIDER"

    return-object v0

    .line 710
    :pswitch_d2
    const-string v0, "SPLIT_SCREEN_RESIZE"

    return-object v0

    .line 708
    :pswitch_d5
    const-string v0, "LOCKSCREEN_LAUNCH_CAMERA"

    return-object v0

    .line 706
    :pswitch_d8
    const-string v0, "SPLIT_SCREEN_EXIT"

    return-object v0

    .line 704
    :pswitch_db
    const-string v0, "SPLIT_SCREEN_ENTER"

    return-object v0

    .line 702
    :pswitch_de
    const-string v0, "SUW_LOADING_SCREEN_FOR_STATUS"

    return-object v0

    .line 700
    :pswitch_e1
    const-string v0, "SUW_LOADING_TO_NEXT_FLOW"

    return-object v0

    .line 698
    :pswitch_e4
    const-string v0, "SUW_SHOW_FUNCTION_SCREEN_WITH_ACTIONS"

    return-object v0

    .line 696
    :pswitch_e7
    const-string v0, "SUW_LOADING_TO_SHOW_INFO_WITH_ACTIONS"

    return-object v0

    .line 694
    :pswitch_ea
    const-string v0, "UNFOLD_ANIM"

    return-object v0

    .line 692
    :pswitch_ed
    const-string v0, "ONE_HANDED_EXIT_TRANSITION"

    return-object v0

    .line 690
    :pswitch_f0
    const-string v0, "ONE_HANDED_ENTER_TRANSITION"

    return-object v0

    .line 688
    :pswitch_f3
    const-string v0, "SCREEN_OFF_SHOW_AOD"

    return-object v0

    .line 686
    :pswitch_f6
    const-string v0, "SCREEN_OFF"

    return-object v0

    .line 684
    :pswitch_f9
    const-string v0, "SPLASHSCREEN_EXIT_ANIM"

    return-object v0

    .line 682
    :pswitch_fc
    const-string v0, "SPLASHSCREEN_AVD"

    return-object v0

    .line 680
    :pswitch_ff
    const-string v0, "USER_SWITCH"

    return-object v0

    .line 678
    :pswitch_102
    const-string v0, "WALLPAPER_TRANSITION"

    return-object v0

    .line 676
    :pswitch_105
    const-string v0, "PIP_TRANSITION"

    return-object v0

    .line 674
    :pswitch_108
    const-string v0, "STATUS_BAR_APP_LAUNCH_FROM_CALL_CHIP"

    return-object v0

    .line 672
    :pswitch_10b
    const-string v0, "SHADE_APP_LAUNCH_FROM_SETTINGS_BUTTON"

    return-object v0

    .line 670
    :pswitch_10e
    const-string v0, "SHADE_APP_LAUNCH_FROM_QS_TILE"

    return-object v0

    .line 668
    :pswitch_111
    const-string v0, "SHADE_APP_LAUNCH_FROM_MEDIA_PLAYER"

    return-object v0

    .line 666
    :pswitch_114
    const-string v0, "SHADE_APP_LAUNCH_FROM_HISTORY_BUTTON"

    return-object v0

    .line 664
    :pswitch_117
    const-string v0, "LOCKSCREEN_UNLOCK_ANIMATION"

    return-object v0

    .line 662
    :pswitch_11a
    const-string v0, "SETTINGS_PAGE_SCROLL"

    return-object v0

    .line 660
    :pswitch_11d
    const-string v0, "LAUNCHER_APP_LAUNCH_FROM_WIDGET"

    return-object v0

    .line 658
    :pswitch_120
    const-string v0, "LAUNCHER_ALL_APPS_SCROLL"

    return-object v0

    .line 656
    :pswitch_123
    const-string v0, "LAUNCHER_OPEN_ALL_APPS"

    return-object v0

    .line 654
    :pswitch_126
    const-string v0, "LOCKSCREEN_TRANSITION_TO_AOD"

    return-object v0

    .line 652
    :pswitch_129
    const-string v0, "LOCKSCREEN_TRANSITION_FROM_AOD"

    return-object v0

    .line 650
    :pswitch_12c
    const-string v0, "LOCKSCREEN_PIN_DISAPPEAR"

    return-object v0

    .line 648
    :pswitch_12f
    const-string v0, "LOCKSCREEN_PATTERN_DISAPPEAR"

    return-object v0

    .line 646
    :pswitch_132
    const-string v0, "LOCKSCREEN_PASSWORD_DISAPPEAR"

    return-object v0

    .line 644
    :pswitch_135
    const-string v0, "LOCKSCREEN_PIN_APPEAR"

    return-object v0

    .line 642
    :pswitch_138
    const-string v0, "LOCKSCREEN_PATTERN_APPEAR"

    return-object v0

    .line 640
    :pswitch_13b
    const-string v0, "LOCKSCREEN_PASSWORD_APPEAR"

    return-object v0

    .line 638
    :pswitch_13e
    const-string v0, "NOTIFICATION_APP_START"

    return-object v0

    .line 636
    :pswitch_141
    const-string v0, "NOTIFICATION_REMOVE"

    return-object v0

    .line 634
    :pswitch_144
    const-string v0, "NOTIFICATION_ADD"

    return-object v0

    .line 632
    :pswitch_147
    const-string v0, "NOTIFICATION_HEADS_UP_DISAPPEAR"

    return-object v0

    .line 630
    :pswitch_14a
    const-string v0, "NOTIFICATION_HEADS_UP_APPEAR"

    return-object v0

    .line 628
    :pswitch_14d
    const-string v0, "LAUNCHER_QUICK_SWITCH"

    return-object v0

    .line 626
    :pswitch_150
    const-string v0, "LAUNCHER_APP_CLOSE_TO_PIP"

    return-object v0

    .line 624
    :pswitch_153
    const-string v0, "LAUNCHER_APP_CLOSE_TO_HOME"

    return-object v0

    .line 622
    :pswitch_156
    const-string v0, "LAUNCHER_APP_LAUNCH_FROM_ICON"

    return-object v0

    .line 620
    :pswitch_159
    const-string v0, "LAUNCHER_APP_LAUNCH_FROM_RECENTS"

    return-object v0

    .line 618
    :pswitch_15c
    const-string v0, "NOTIFICATION_SHADE_QS_SCROLL_SWIPE"

    return-object v0

    .line 616
    :pswitch_15f
    const-string v0, "NOTIFICATION_SHADE_QS_EXPAND_COLLAPSE"

    return-object v0

    .line 614
    :pswitch_162
    const-string v0, "NOTIFICATION_SHADE_ROW_SWIPE"

    return-object v0

    .line 612
    :pswitch_165
    const-string v0, "NOTIFICATION_SHADE_ROW_EXPAND"

    return-object v0

    .line 610
    :pswitch_168
    const-string v0, "NOTIFICATION_SHADE_SCROLL_FLING"

    return-object v0

    .line 608
    :pswitch_16b
    const-string v0, "NOTIFICATION_SHADE_EXPAND_COLLAPSE"

    return-object v0

    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_16b
        :pswitch_3
        :pswitch_168
        :pswitch_165
        :pswitch_162
        :pswitch_15f
        :pswitch_15c
        :pswitch_159
        :pswitch_156
        :pswitch_153
        :pswitch_150
        :pswitch_14d
        :pswitch_14a
        :pswitch_147
        :pswitch_144
        :pswitch_141
        :pswitch_13e
        :pswitch_13b
        :pswitch_138
        :pswitch_135
        :pswitch_132
        :pswitch_12f
        :pswitch_12c
        :pswitch_129
        :pswitch_126
        :pswitch_123
        :pswitch_120
        :pswitch_11d
        :pswitch_11a
        :pswitch_117
        :pswitch_114
        :pswitch_111
        :pswitch_10e
        :pswitch_10b
        :pswitch_108
        :pswitch_105
        :pswitch_102
        :pswitch_ff
        :pswitch_fc
        :pswitch_f9
        :pswitch_f6
        :pswitch_f3
        :pswitch_f0
        :pswitch_ed
        :pswitch_ea
        :pswitch_e7
        :pswitch_e4
        :pswitch_e1
        :pswitch_de
        :pswitch_db
        :pswitch_d8
        :pswitch_d5
        :pswitch_d2
        :pswitch_cf
        :pswitch_cc
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_3
        :pswitch_9f
        :pswitch_9c
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_99
        :pswitch_3
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_3
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_3
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist getNameOfInteraction(I)Ljava/lang/String;
    .registers 2
    .param p0, "interactionType"    # I

    .line 868
    invoke-static {p0}, Lcom/android/internal/jank/Cuj;->getCujTypeFromInteraction(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getStatsdInteractionType(I)I
    .registers 2
    .param p0, "cujType"    # I

    .line 852
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    aget v0, v0, p0

    return v0
.end method

.method public static blacklist logToStatsd(I)Z
    .registers 3
    .param p0, "cujType"    # I

    .line 857
    invoke-static {p0}, Lcom/android/internal/jank/Cuj;->getStatsdInteractionType(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
