.class public final Landroid/hardware/input/KeyGestureEvent;
.super Ljava/lang/Object;
.source "KeyGestureEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyGestureEvent$Builder;,
        Landroid/hardware/input/KeyGestureEvent$KeyGestureType;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_GESTURE_COMPLETE:I = 0x2

.field public static final blacklist ACTION_GESTURE_START:I = 0x1

.field public static final blacklist DEPRECATED_KEY_GESTURE_TYPE_ACCESSIBILITY_ALL_APPS:I = 0x18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist DEPRECATED_KEY_GESTURE_TYPE_TV_ACCESSIBILITY_SHORTCUT_CHORD:I = 0x3a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FLAG_CANCELLED:I = 0x1

.field public static final blacklist KEY_GESTURE_TYPE_ACCESSIBILITY_SHORTCUT:I = 0x3c

.field public static final blacklist KEY_GESTURE_TYPE_ACCESSIBILITY_SHORTCUT_CHORD:I = 0x37

.field public static final blacklist KEY_GESTURE_TYPE_ACTIVATE_SELECT_TO_SPEAK:I = 0x49

.field public static final blacklist KEY_GESTURE_TYPE_ALL_APPS:I = 0x15

.field public static final blacklist KEY_GESTURE_TYPE_APP_SWITCH:I = 0x4

.field public static final blacklist KEY_GESTURE_TYPE_BACK:I = 0x3

.field public static final blacklist KEY_GESTURE_TYPE_BRIGHTNESS_DOWN:I = 0xe

.field public static final blacklist KEY_GESTURE_TYPE_BRIGHTNESS_UP:I = 0xd

.field public static final blacklist KEY_GESTURE_TYPE_CHANGE_SPLITSCREEN_FOCUS_LEFT:I = 0x1d

.field public static final blacklist KEY_GESTURE_TYPE_CHANGE_SPLITSCREEN_FOCUS_RIGHT:I = 0x1e

.field public static final blacklist KEY_GESTURE_TYPE_CLOSE_ALL_DIALOGS:I = 0x3d

.field public static final blacklist KEY_GESTURE_TYPE_DESKTOP_MODE:I = 0x34

.field public static final blacklist KEY_GESTURE_TYPE_GLOBAL_ACTIONS:I = 0x39

.field public static final blacklist KEY_GESTURE_TYPE_HOME:I = 0x1

.field public static final blacklist KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_DOWN:I = 0x10

.field public static final blacklist KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_TOGGLE:I = 0x11

.field public static final blacklist KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_UP:I = 0xf

.field public static final blacklist KEY_GESTURE_TYPE_LANGUAGE_SWITCH:I = 0x17

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_APPLICATION:I = 0x33

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_ASSISTANT:I = 0x5

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_BROWSER:I = 0x27

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CALCULATOR:I = 0x2b

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CALENDAR:I = 0x2a

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CONTACTS:I = 0x29

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_EMAIL:I = 0x28

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_FILES:I = 0x30

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_FITNESS:I = 0x32

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_GALLERY:I = 0x2f

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MAPS:I = 0x2d

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MESSAGING:I = 0x2e

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MUSIC:I = 0x2c

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_WEATHER:I = 0x31

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_SEARCH:I = 0x16

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_SYSTEM_SETTINGS:I = 0x7

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_VOICE_ASSISTANT:I = 0x6

.field public static final blacklist KEY_GESTURE_TYPE_LOCK_SCREEN:I = 0x20

.field public static final blacklist KEY_GESTURE_TYPE_MAXIMIZE_FREEFORM_WINDOW:I = 0x4a

.field public static final blacklist KEY_GESTURE_TYPE_MEDIA_KEY:I = 0x26

.field public static final blacklist KEY_GESTURE_TYPE_MINIMIZE_FREEFORM_WINDOW:I = 0x46

.field public static final blacklist KEY_GESTURE_TYPE_MOVE_TO_NEXT_DISPLAY:I = 0x3e

.field public static final blacklist KEY_GESTURE_TYPE_MULTI_WINDOW_NAVIGATION:I = 0x35

.field public static final blacklist KEY_GESTURE_TYPE_OPEN_NOTES:I = 0x21

.field public static final blacklist KEY_GESTURE_TYPE_OPEN_SHORTCUT_HELPER:I = 0xc

.field public static final blacklist KEY_GESTURE_TYPE_RECENT_APPS:I = 0x2

.field public static final blacklist KEY_GESTURE_TYPE_RECENT_APPS_SWITCHER:I = 0x36

.field public static final blacklist KEY_GESTURE_TYPE_RINGER_TOGGLE_CHORD:I = 0x38

.field public static final blacklist KEY_GESTURE_TYPE_SCREENSHOT_CHORD:I = 0xb

.field public static final blacklist KEY_GESTURE_TYPE_SLEEP:I = 0x24

.field public static final blacklist KEY_GESTURE_TYPE_SNAP_LEFT_FREEFORM_WINDOW:I = 0x44

.field public static final blacklist KEY_GESTURE_TYPE_SNAP_RIGHT_FREEFORM_WINDOW:I = 0x45

.field public static final blacklist KEY_GESTURE_TYPE_SPLIT_SCREEN_NAVIGATION_LEFT:I = 0x1b

.field public static final blacklist KEY_GESTURE_TYPE_SPLIT_SCREEN_NAVIGATION_RIGHT:I = 0x1c

.field public static final blacklist KEY_GESTURE_TYPE_SYSTEM_MUTE:I = 0x1a

.field public static final blacklist KEY_GESTURE_TYPE_SYSTEM_NAVIGATION:I = 0x23

.field public static final blacklist KEY_GESTURE_TYPE_SYSTEM_RESERVED:I = -0x1

.field public static final blacklist KEY_GESTURE_TYPE_TAKE_SCREENSHOT:I = 0xa

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_BOUNCE_KEYS:I = 0x41

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_CAPS_LOCK:I = 0x19

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_DO_NOT_DISTURB:I = 0x4b

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_MAGNIFICATION:I = 0x48

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_MAXIMIZE_FREEFORM_WINDOW:I = 0x47

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_MOUSE_KEYS:I = 0x43

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_NOTIFICATION_PANEL:I = 0x8

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_POWER:I = 0x22

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_SLOW_KEYS:I = 0x42

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_STICKY_KEYS:I = 0x40

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_TALKBACK:I = 0x3f

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_TASKBAR:I = 0x9

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_VOICE_ACCESS:I = 0x4c

.field public static final blacklist KEY_GESTURE_TYPE_TRIGGER_BUG_REPORT:I = 0x1f

.field public static final blacklist KEY_GESTURE_TYPE_TV_TRIGGER_BUG_REPORT:I = 0x3b

.field public static final blacklist KEY_GESTURE_TYPE_UNSPECIFIED:I = 0x0

.field public static final blacklist KEY_GESTURE_TYPE_VOLUME_DOWN:I = 0x13

.field public static final blacklist KEY_GESTURE_TYPE_VOLUME_MUTE:I = 0x14

.field public static final blacklist KEY_GESTURE_TYPE_VOLUME_UP:I = 0x12

.field public static final blacklist KEY_GESTURE_TYPE_WAKEUP:I = 0x25

.field private static final blacklist LOG_EVENT_UNSPECIFIED:I


# instance fields
.field private blacklist mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/input/AidlKeyGestureEvent;)V
    .registers 2
    .param p1, "keyGestureEvent"    # Landroid/hardware/input/AidlKeyGestureEvent;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    .line 249
    return-void
.end method

.method private static blacklist getLogEventFromLaunchAppData(Landroid/hardware/input/AppLaunchData;)I
    .registers 3
    .param p0, "data"    # Landroid/hardware/input/AppLaunchData;

    .line 596
    if-nez p0, :cond_4

    .line 597
    const/4 v0, 0x0

    return v0

    .line 599
    :cond_4
    instance-of v0, p0, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz v0, :cond_14

    .line 600
    move-object v0, p0

    check-cast v0, Landroid/hardware/input/AppLaunchData$CategoryData;

    .line 601
    invoke-virtual {v0}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-static {v0}, Landroid/hardware/input/KeyGestureEvent;->getLogEventFromSelectorCategory(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 602
    :cond_14
    instance-of v0, p0, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v0, :cond_24

    .line 603
    move-object v0, p0

    check-cast v0, Landroid/hardware/input/AppLaunchData$RoleData;

    invoke-virtual {v0}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/KeyGestureEvent;->getLogEventFromRole(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 604
    :cond_24
    instance-of v0, p0, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz v0, :cond_2b

    .line 605
    const/16 v0, 0x2f

    return v0

    .line 607
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppLaunchData type is invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getLogEventFromRole(Ljava/lang/String;)I
    .registers 2
    .param p0, "role"    # Ljava/lang/String;

    .line 647
    const-string v0, "android.app.role.BROWSER"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 648
    const/16 v0, 0x23

    return v0

    .line 649
    :cond_b
    const-string v0, "android.app.role.SMS"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 650
    const/16 v0, 0x2a

    return v0

    .line 652
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist getLogEventFromSelectorCategory(Ljava/lang/String;)I
    .registers 3
    .param p0, "category"    # Ljava/lang/String;

    .line 612
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_b2

    :cond_8
    goto/16 :goto_88

    :sswitch_a
    const-string v0, "android.intent.category.APP_GALLERY"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto/16 :goto_89

    :sswitch_16
    const-string v0, "android.intent.category.APP_FITNESS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    goto/16 :goto_89

    :sswitch_22
    const-string v0, "android.intent.category.APP_CALENDAR"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_89

    :sswitch_2c
    const-string v0, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_89

    :sswitch_36
    const-string v0, "android.intent.category.APP_MUSIC"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_89

    :sswitch_40
    const-string v0, "android.intent.category.APP_FILES"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    goto :goto_89

    :sswitch_4b
    const-string v0, "android.intent.category.APP_EMAIL"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_89

    :sswitch_55
    const-string v0, "android.intent.category.APP_CONTACTS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_89

    :sswitch_5f
    const-string v0, "android.intent.category.APP_MESSAGING"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto :goto_89

    :sswitch_69
    const-string v0, "android.intent.category.APP_WEATHER"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    goto :goto_89

    :sswitch_74
    const-string v0, "android.intent.category.APP_BROWSER"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_89

    :sswitch_7e
    const-string v0, "android.intent.category.APP_MAPS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_89

    :goto_88
    const/4 v0, -0x1

    :goto_89
    packed-switch v0, :pswitch_data_e4

    .line 638
    return v1

    .line 636
    :pswitch_8d
    const/16 v0, 0x2e

    return v0

    .line 634
    :pswitch_90
    const/16 v0, 0x2d

    return v0

    .line 632
    :pswitch_93
    const/16 v0, 0x2c

    return v0

    .line 630
    :pswitch_96
    const/16 v0, 0x2b

    return v0

    .line 628
    :pswitch_99
    const/16 v0, 0x2a

    return v0

    .line 626
    :pswitch_9c
    const/16 v0, 0x29

    return v0

    .line 624
    :pswitch_9f
    const/16 v0, 0x28

    return v0

    .line 622
    :pswitch_a2
    const/16 v0, 0x27

    return v0

    .line 620
    :pswitch_a5
    const/16 v0, 0x26

    return v0

    .line 618
    :pswitch_a8
    const/16 v0, 0x25

    return v0

    .line 616
    :pswitch_ab
    const/16 v0, 0x24

    return v0

    .line 614
    :pswitch_ae
    const/16 v0, 0x23

    return v0

    nop

    :sswitch_data_b2
    .sparse-switch
        -0x7ae0672e -> :sswitch_7e
        -0x70f45113 -> :sswitch_74
        -0x31074447 -> :sswitch_69
        -0x20da2677 -> :sswitch_5f
        0x19b1550e -> :sswitch_55
        0x1e6800a1 -> :sswitch_4b
        0x1e746f7c -> :sswitch_40
        0x1edca32a -> :sswitch_36
        0x267d18fd -> :sswitch_2c
        0x30e2eff9 -> :sswitch_22
        0x538b29ad -> :sswitch_16
        0x7a58fb17 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
    .end packed-switch
.end method

.method public static blacklist isVisibleBackgrounduserAllowedGesture(I)Z
    .registers 2
    .param p0, "keyGestureType"    # I

    .line 234
    sparse-switch p0, :sswitch_data_8

    .line 244
    const/4 v0, 0x1

    return v0

    .line 242
    :sswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x2 -> :sswitch_5
        0x4 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_5
        0x14 -> :sswitch_5
        0x24 -> :sswitch_5
        0x25 -> :sswitch_5
    .end sparse-switch
.end method

.method private static blacklist keyGestureTypeToLogEvent(I)I
    .registers 2
    .param p0, "value"    # I

    .line 481
    packed-switch p0, :pswitch_data_94

    .line 587
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 539
    :pswitch_5
    const/16 v0, 0x33

    return v0

    .line 585
    :pswitch_8
    const/16 v0, 0x31

    return v0

    .line 583
    :pswitch_b
    const/16 v0, 0x30

    return v0

    .line 581
    :pswitch_e
    const/16 v0, 0x2f

    return v0

    .line 579
    :pswitch_11
    const/16 v0, 0x2e

    return v0

    .line 577
    :pswitch_14
    const/16 v0, 0x2d

    return v0

    .line 575
    :pswitch_17
    const/16 v0, 0x2c

    return v0

    .line 573
    :pswitch_1a
    const/16 v0, 0x2b

    return v0

    .line 571
    :pswitch_1d
    const/16 v0, 0x2a

    return v0

    .line 569
    :pswitch_20
    const/16 v0, 0x29

    return v0

    .line 567
    :pswitch_23
    const/16 v0, 0x28

    return v0

    .line 565
    :pswitch_26
    const/16 v0, 0x27

    return v0

    .line 563
    :pswitch_29
    const/16 v0, 0x26

    return v0

    .line 561
    :pswitch_2c
    const/16 v0, 0x25

    return v0

    .line 559
    :pswitch_2f
    const/16 v0, 0x24

    return v0

    .line 557
    :pswitch_32
    const/16 v0, 0x23

    return v0

    .line 555
    :pswitch_35
    const/16 v0, 0x22

    return v0

    .line 553
    :pswitch_38
    const/16 v0, 0x21

    return v0

    .line 551
    :pswitch_3b
    const/16 v0, 0x20

    return v0

    .line 549
    :pswitch_3e
    const/16 v0, 0x1f

    return v0

    .line 547
    :pswitch_41
    const/16 v0, 0x1e

    return v0

    .line 545
    :pswitch_44
    const/16 v0, 0x1d

    return v0

    .line 543
    :pswitch_47
    const/16 v0, 0x1c

    return v0

    .line 541
    :pswitch_4a
    const/16 v0, 0x1b

    return v0

    .line 537
    :pswitch_4d
    const/16 v0, 0x32

    return v0

    .line 534
    :pswitch_50
    const/16 v0, 0x1a

    return v0

    .line 531
    :pswitch_53
    const/16 v0, 0x19

    return v0

    .line 529
    :pswitch_56
    const/16 v0, 0x18

    return v0

    .line 527
    :pswitch_59
    const/16 v0, 0x16

    return v0

    .line 525
    :pswitch_5c
    const/16 v0, 0x15

    return v0

    .line 523
    :pswitch_5f
    const/16 v0, 0x14

    return v0

    .line 521
    :pswitch_62
    const/16 v0, 0x13

    return v0

    .line 519
    :pswitch_65
    const/16 v0, 0x12

    return v0

    .line 517
    :pswitch_68
    const/16 v0, 0x11

    return v0

    .line 515
    :pswitch_6b
    const/16 v0, 0x10

    return v0

    .line 513
    :pswitch_6e
    const/16 v0, 0xf

    return v0

    .line 511
    :pswitch_71
    const/16 v0, 0xe

    return v0

    .line 509
    :pswitch_74
    const/16 v0, 0xd

    return v0

    .line 507
    :pswitch_77
    const/16 v0, 0xc

    return v0

    .line 505
    :pswitch_7a
    const/16 v0, 0xb

    return v0

    .line 503
    :pswitch_7d
    const/16 v0, 0xa

    return v0

    .line 500
    :pswitch_80
    const/16 v0, 0x9

    return v0

    .line 498
    :pswitch_83
    const/16 v0, 0x8

    return v0

    .line 496
    :pswitch_86
    const/4 v0, 0x7

    return v0

    .line 494
    :pswitch_88
    const/4 v0, 0x6

    return v0

    .line 492
    :pswitch_8a
    const/4 v0, 0x5

    return v0

    .line 490
    :pswitch_8c
    const/4 v0, 0x4

    return v0

    .line 488
    :pswitch_8e
    const/4 v0, 0x3

    return v0

    .line 486
    :pswitch_90
    const/4 v0, 0x2

    return v0

    .line 483
    :pswitch_92
    const/4 v0, 0x1

    return v0

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_92
        :pswitch_90
        :pswitch_8e
        :pswitch_8c
        :pswitch_8a
        :pswitch_88
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_3
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_50
        :pswitch_4d
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_90
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist keyGestureTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 657
    packed-switch p0, :pswitch_data_ec

    .line 811
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 809
    :pswitch_8
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_VOICE_ACCESS"

    return-object v0

    .line 807
    :pswitch_b
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_DO_NOT_DISTURB"

    return-object v0

    .line 805
    :pswitch_e
    const-string v0, "KEY_GESTURE_TYPE_MAXIMIZE_FREEFORM_WINDOW"

    return-object v0

    .line 803
    :pswitch_11
    const-string v0, "KEY_GESTURE_TYPE_ACTIVATE_SELECT_TO_SPEAK"

    return-object v0

    .line 801
    :pswitch_14
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_MAGNIFICATION"

    return-object v0

    .line 799
    :pswitch_17
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_MAXIMIZE_FREEFORM_WINDOW"

    return-object v0

    .line 797
    :pswitch_1a
    const-string v0, "KEY_GESTURE_TYPE_MINIMIZE_FREEFORM_WINDOW"

    return-object v0

    .line 795
    :pswitch_1d
    const-string v0, "KEY_GESTURE_TYPE_SNAP_RIGHT_FREEFORM_WINDOW"

    return-object v0

    .line 793
    :pswitch_20
    const-string v0, "KEY_GESTURE_TYPE_SNAP_LEFT_FREEFORM_WINDOW"

    return-object v0

    .line 791
    :pswitch_23
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_MOUSE_KEYS"

    return-object v0

    .line 789
    :pswitch_26
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_SLOW_KEYS"

    return-object v0

    .line 787
    :pswitch_29
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_BOUNCE_KEYS"

    return-object v0

    .line 785
    :pswitch_2c
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_STICKY_KEYS"

    return-object v0

    .line 783
    :pswitch_2f
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_TALKBACK"

    return-object v0

    .line 721
    :pswitch_32
    const-string v0, "KEY_GESTURE_TYPE_MOVE_TO_NEXT_DISPLAY"

    return-object v0

    .line 781
    :pswitch_35
    const-string v0, "KEY_GESTURE_TYPE_CLOSE_ALL_DIALOGS"

    return-object v0

    .line 779
    :pswitch_38
    const-string v0, "KEY_GESTURE_TYPE_ACCESSIBILITY_SHORTCUT"

    return-object v0

    .line 777
    :pswitch_3b
    const-string v0, "KEY_GESTURE_TYPE_TV_TRIGGER_BUG_REPORT"

    return-object v0

    .line 775
    :pswitch_3e
    const-string v0, "KEY_GESTURE_TYPE_GLOBAL_ACTIONS"

    return-object v0

    .line 773
    :pswitch_41
    const-string v0, "KEY_GESTURE_TYPE_RINGER_TOGGLE_CHORD"

    return-object v0

    .line 771
    :pswitch_44
    const-string v0, "KEY_GESTURE_TYPE_ACCESSIBILITY_SHORTCUT_CHORD"

    return-object v0

    .line 769
    :pswitch_47
    const-string v0, "KEY_GESTURE_TYPE_RECENT_APPS_SWITCHER"

    return-object v0

    .line 767
    :pswitch_4a
    const-string v0, "KEY_GESTURE_TYPE_MULTI_WINDOW_NAVIGATION"

    return-object v0

    .line 765
    :pswitch_4d
    const-string v0, "KEY_GESTURE_TYPE_DESKTOP_MODE"

    return-object v0

    .line 763
    :pswitch_50
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_APPLICATION"

    return-object v0

    .line 761
    :pswitch_53
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_FITNESS"

    return-object v0

    .line 759
    :pswitch_56
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_WEATHER"

    return-object v0

    .line 757
    :pswitch_59
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_FILES"

    return-object v0

    .line 755
    :pswitch_5c
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_GALLERY"

    return-object v0

    .line 753
    :pswitch_5f
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MESSAGING"

    return-object v0

    .line 751
    :pswitch_62
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MAPS"

    return-object v0

    .line 749
    :pswitch_65
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MUSIC"

    return-object v0

    .line 747
    :pswitch_68
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CALCULATOR"

    return-object v0

    .line 745
    :pswitch_6b
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CALENDAR"

    return-object v0

    .line 743
    :pswitch_6e
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CONTACTS"

    return-object v0

    .line 741
    :pswitch_71
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_EMAIL"

    return-object v0

    .line 739
    :pswitch_74
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_BROWSER"

    return-object v0

    .line 737
    :pswitch_77
    const-string v0, "KEY_GESTURE_TYPE_MEDIA_KEY"

    return-object v0

    .line 735
    :pswitch_7a
    const-string v0, "KEY_GESTURE_TYPE_WAKEUP"

    return-object v0

    .line 733
    :pswitch_7d
    const-string v0, "KEY_GESTURE_TYPE_SLEEP"

    return-object v0

    .line 731
    :pswitch_80
    const-string v0, "KEY_GESTURE_TYPE_SYSTEM_NAVIGATION"

    return-object v0

    .line 729
    :pswitch_83
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_POWER"

    return-object v0

    .line 727
    :pswitch_86
    const-string v0, "KEY_GESTURE_TYPE_OPEN_NOTES"

    return-object v0

    .line 725
    :pswitch_89
    const-string v0, "KEY_GESTURE_TYPE_LOCK_SCREEN"

    return-object v0

    .line 723
    :pswitch_8c
    const-string v0, "KEY_GESTURE_TYPE_TRIGGER_BUG_REPORT"

    return-object v0

    .line 719
    :pswitch_8f
    const-string v0, "KEY_GESTURE_TYPE_CHANGE_SPLITSCREEN_FOCUS_RIGHT"

    return-object v0

    .line 717
    :pswitch_92
    const-string v0, "KEY_GESTURE_TYPE_CHANGE_SPLITSCREEN_FOCUS_LEFT"

    return-object v0

    .line 715
    :pswitch_95
    const-string v0, "KEY_GESTURE_TYPE_SPLIT_SCREEN_NAVIGATION_RIGHT"

    return-object v0

    .line 713
    :pswitch_98
    const-string v0, "KEY_GESTURE_TYPE_SPLIT_SCREEN_NAVIGATION_LEFT"

    return-object v0

    .line 711
    :pswitch_9b
    const-string v0, "KEY_GESTURE_TYPE_SYSTEM_MUTE"

    return-object v0

    .line 709
    :pswitch_9e
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_CAPS_LOCK"

    return-object v0

    .line 707
    :pswitch_a1
    const-string v0, "KEY_GESTURE_TYPE_LANGUAGE_SWITCH"

    return-object v0

    .line 705
    :pswitch_a4
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_SEARCH"

    return-object v0

    .line 703
    :pswitch_a7
    const-string v0, "KEY_GESTURE_TYPE_ALL_APPS"

    return-object v0

    .line 701
    :pswitch_aa
    const-string v0, "KEY_GESTURE_TYPE_VOLUME_MUTE"

    return-object v0

    .line 699
    :pswitch_ad
    const-string v0, "KEY_GESTURE_TYPE_VOLUME_DOWN"

    return-object v0

    .line 697
    :pswitch_b0
    const-string v0, "KEY_GESTURE_TYPE_VOLUME_UP"

    return-object v0

    .line 695
    :pswitch_b3
    const-string v0, "KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_TOGGLE"

    return-object v0

    .line 693
    :pswitch_b6
    const-string v0, "KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_DOWN"

    return-object v0

    .line 691
    :pswitch_b9
    const-string v0, "KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_UP"

    return-object v0

    .line 689
    :pswitch_bc
    const-string v0, "KEY_GESTURE_TYPE_BRIGHTNESS_DOWN"

    return-object v0

    .line 687
    :pswitch_bf
    const-string v0, "KEY_GESTURE_TYPE_BRIGHTNESS_UP"

    return-object v0

    .line 685
    :pswitch_c2
    const-string v0, "KEY_GESTURE_TYPE_OPEN_SHORTCUT_HELPER"

    return-object v0

    .line 683
    :pswitch_c5
    const-string v0, "KEY_GESTURE_TYPE_SCREENSHOT_CHORD"

    return-object v0

    .line 681
    :pswitch_c8
    const-string v0, "KEY_GESTURE_TYPE_TAKE_SCREENSHOT"

    return-object v0

    .line 679
    :pswitch_cb
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_TASKBAR"

    return-object v0

    .line 677
    :pswitch_ce
    const-string v0, "KEY_GESTURE_TYPE_TOGGLE_NOTIFICATION_PANEL"

    return-object v0

    .line 675
    :pswitch_d1
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_SYSTEM_SETTINGS"

    return-object v0

    .line 673
    :pswitch_d4
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_VOICE_ASSISTANT"

    return-object v0

    .line 671
    :pswitch_d7
    const-string v0, "KEY_GESTURE_TYPE_LAUNCH_ASSISTANT"

    return-object v0

    .line 669
    :pswitch_da
    const-string v0, "KEY_GESTURE_TYPE_APP_SWITCH"

    return-object v0

    .line 667
    :pswitch_dd
    const-string v0, "KEY_GESTURE_TYPE_BACK"

    return-object v0

    .line 665
    :pswitch_e0
    const-string v0, "KEY_GESTURE_TYPE_RECENT_APPS"

    return-object v0

    .line 663
    :pswitch_e3
    const-string v0, "KEY_GESTURE_TYPE_HOME"

    return-object v0

    .line 661
    :pswitch_e6
    const-string v0, "KEY_GESTURE_TYPE_UNSPECIFIED"

    return-object v0

    .line 659
    :pswitch_e9
    const-string v0, "KEY_GESTURE_TYPE_SYSTEM_RESERVED"

    return-object v0

    :pswitch_data_ec
    .packed-switch -0x1
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_3
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 440
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 441
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_9b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_9b

    .line 442
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/hardware/input/KeyGestureEvent;

    .line 443
    .local v2, "that":Landroid/hardware/input/KeyGestureEvent;
    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    if-ne v3, v4, :cond_99

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    .line 444
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_99

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    if-ne v3, v4, :cond_99

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    if-ne v3, v4, :cond_99

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    if-ne v3, v4, :cond_99

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    if-ne v3, v4, :cond_99

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    if-ne v3, v4, :cond_99

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    .line 450
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    .line 451
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    .line 452
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v4, v4, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    .line 453
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    goto :goto_9a

    :cond_99
    move v0, v1

    .line 443
    :goto_9a
    return v0

    .line 441
    .end local v2    # "that":Landroid/hardware/input/KeyGestureEvent;
    :cond_9b
    :goto_9b
    return v1
.end method

.method public blacklist getAction()I
    .registers 2

    .line 388
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    return v0
.end method

.method public blacklist getAppLaunchData()Landroid/hardware/input/AppLaunchData;
    .registers 5

    .line 416
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    const/16 v1, 0x33

    if-eq v0, v1, :cond_a

    .line 417
    const/4 v0, 0x0

    return-object v0

    .line 419
    :cond_a
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/input/AppLaunchData;->createLaunchData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDeviceId()I
    .registers 2

    .line 372
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    return v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 392
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    return v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 396
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    return v0
.end method

.method public blacklist getKeyGestureType()I
    .registers 2

    .line 384
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    return v0
.end method

.method public blacklist getKeycodes()[I
    .registers 2

    .line 376
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    return-object v0
.end method

.method public blacklist getLogEvent()I
    .registers 3

    .line 404
    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_11

    .line 405
    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getAppLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/KeyGestureEvent;->getLogEventFromLaunchAppData(Landroid/hardware/input/AppLaunchData;)I

    move-result v0

    return v0

    .line 407
    :cond_11
    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/input/KeyGestureEvent;->keyGestureTypeToLogEvent(I)I

    move-result v0

    return v0
.end method

.method public blacklist getModifierState()I
    .registers 2

    .line 380
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    return v0
.end method

.method public blacklist hasModifiers(I)Z
    .registers 3
    .param p1, "modifiers"    # I

    .line 256
    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getModifierState()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 458
    const/4 v0, 0x1

    .line 459
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    add-int/2addr v1, v2

    .line 460
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    .line 461
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    add-int/2addr v1, v2

    .line 462
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    add-int/2addr v0, v2

    .line 463
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    add-int/2addr v1, v2

    .line 464
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    add-int/2addr v0, v2

    .line 465
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    add-int/2addr v1, v2

    .line 466
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_48

    .line 467
    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_49

    :cond_48
    move v2, v3

    :goto_49
    add-int/2addr v0, v2

    .line 468
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    if-eqz v2, :cond_5b

    .line 469
    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5c

    :cond_5b
    move v2, v3

    :goto_5c
    add-int/2addr v1, v2

    .line 470
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    if-eqz v2, :cond_6e

    .line 471
    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6f

    :cond_6e
    move v2, v3

    :goto_6f
    add-int/2addr v0, v2

    .line 472
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    if-eqz v2, :cond_81

    .line 473
    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_82

    :cond_81
    nop

    :goto_82
    add-int/2addr v1, v3

    .line 474
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public blacklist isCancelled()Z
    .registers 3

    .line 400
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyGestureEvent { deviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keycodes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    .line 428
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifierState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyGestureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    .line 430
    invoke-static {v1}, Landroid/hardware/input/KeyGestureEvent;->keyGestureTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appLaunchData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getAppLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    return-object v0
.end method
