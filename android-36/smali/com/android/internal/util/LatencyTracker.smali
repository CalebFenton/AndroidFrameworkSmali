.class public Lcom/android/internal/util/LatencyTracker;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/LatencyTracker$ActionProperties;,
        Lcom/android/internal/util/LatencyTracker$SLatencyTrackerHolder;,
        Lcom/android/internal/util/LatencyTracker$Session;,
        Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;,
        Lcom/android/internal/util/LatencyTracker$Action;
    }
.end annotation


# static fields
.field private static final blacklist ACTIONS_ALL:[I

.field public static final blacklist ACTION_BACK_SYSTEM_ANIMATION:I = 0x19

.field public static final blacklist ACTION_CHECK_CREDENTIAL:I = 0x3

.field public static final blacklist ACTION_CHECK_CREDENTIAL_UNLOCKED:I = 0x4

.field public static final blacklist ACTION_DESKTOP_MODE_ENTER_APP_HANDLE_DRAG:I = 0x1e

.field public static final blacklist ACTION_DESKTOP_MODE_ENTER_APP_HANDLE_MENU:I = 0x1f

.field public static final blacklist ACTION_DESKTOP_MODE_EXIT_MODE:I = 0x20

.field public static final blacklist ACTION_EXPAND_PANEL:I = 0x0

.field public static final blacklist ACTION_FACE_WAKE_AND_UNLOCK:I = 0x7

.field public static final blacklist ACTION_FINGERPRINT_WAKE_AND_UNLOCK:I = 0x2

.field public static final blacklist ACTION_FOLD_TO_AOD:I = 0x12

.field public static final blacklist ACTION_KEYGUARD_FACE_UNLOCK_TO_HOME:I = 0x1c

.field public static final blacklist ACTION_KEYGUARD_FPS_UNLOCK_TO_HOME:I = 0x18

.field public static final blacklist ACTION_LOAD_SHARE_SHEET:I = 0x10

.field public static final blacklist ACTION_LOCKSCREEN_UNLOCK:I = 0xb

.field public static final blacklist ACTION_NOTIFICATIONS_HIDDEN_FOR_MEASURE:I = 0x1a

.field public static final blacklist ACTION_NOTIFICATIONS_HIDDEN_FOR_MEASURE_WITH_SHADE_OPEN:I = 0x1b

.field public static final blacklist ACTION_NOTIFICATION_BIG_PICTURE_LOADED:I = 0x17

.field public static final blacklist ACTION_REQUEST_IME_HIDDEN:I = 0x15

.field public static final blacklist ACTION_REQUEST_IME_SHOWN:I = 0x14

.field public static final blacklist ACTION_ROTATE_SCREEN:I = 0x6

.field public static final blacklist ACTION_ROTATE_SCREEN_CAMERA_CHECK:I = 0x9

.field public static final blacklist ACTION_ROTATE_SCREEN_SENSOR:I = 0xa

.field public static final blacklist ACTION_SHADE_WINDOW_DISPLAY_CHANGE:I = 0x1d

.field public static final blacklist ACTION_SHOW_BACK_ARROW:I = 0xf

.field public static final blacklist ACTION_SHOW_SELECTION_TOOLBAR:I = 0x11

.field public static final blacklist ACTION_SHOW_VOICE_INTERACTION:I = 0x13

.field public static final blacklist ACTION_SMARTSPACE_DOORBELL:I = 0x16

.field public static final blacklist ACTION_START_RECENTS_ANIMATION:I = 0x8

.field public static final blacklist ACTION_SWITCH_DISPLAY_UNFOLD:I = 0xd

.field public static final blacklist ACTION_TOGGLE_RECENTS:I = 0x1

.field public static final blacklist ACTION_TURN_ON_SCREEN:I = 0x5

.field public static final blacklist ACTION_UDFPS_ILLUMINATE:I = 0xe

.field public static final blacklist ACTION_USER_SWITCH:I = 0xc

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_ENABLED:Z

.field private static final blacklist DEFAULT_SAMPLING_INTERVAL:I = 0x5

.field public static final blacklist SETTINGS_ENABLED_KEY:Ljava/lang/String; = "enabled"

.field private static final blacklist SETTINGS_SAMPLING_INTERVAL_KEY:Ljava/lang/String; = "sampling_interval"

.field public static final blacklist STATSD_ACTION:[I

.field private static final blacklist TAG:Ljava/lang/String; = "LatencyTracker"


# instance fields
.field private final blacklist mActionPropertiesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/LatencyTracker$ActionProperties;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEnabled:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final blacklist mSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/LatencyTracker$Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$GEhnnM5WqqSsZoU7jDo0aVrxC_k(Lcom/android/internal/util/LatencyTracker;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/util/LatencyTracker;->updateProperties(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Y9m-lxB8Y_JCGfiPUyJnYUMmGg4(Lcom/android/internal/util/LatencyTracker;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/util/LatencyTracker;->lambda$startListeningForLatencyTrackerConfigChanges$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bfKG0XUlZp6yLm2EoLfYk1sdLw8(Lcom/android/internal/util/LatencyTracker;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/util/LatencyTracker;->lambda$onActionStart$1(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetTraceNameOfAction(ILjava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/util/LatencyTracker;->getTraceNameOfAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 103
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/util/LatencyTracker;->DEFAULT_ENABLED:Z

    .line 304
    const/16 v0, 0x21

    new-array v1, v0, [I

    fill-array-data v1, :array_16

    sput-object v1, Lcom/android/internal/util/LatencyTracker;->ACTIONS_ALL:[I

    .line 380
    new-array v0, v0, [I

    fill-array-data v0, :array_5c

    sput-object v0, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    return-void

    nop

    :array_16
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
    .end array-data

    :array_5c
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    .line 417
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    .line 419
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mActionPropertiesMap:Landroid/util/SparseArray;

    .line 423
    new-instance v0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/util/LatencyTracker;)V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 453
    sget-boolean v0, Lcom/android/internal/util/LatencyTracker;->DEFAULT_ENABLED:Z

    iput-boolean v0, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    .line 454
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 437
    invoke-static {}, Lcom/android/internal/util/LatencyTracker$SLatencyTrackerHolder;->-$$Nest$sfgetsLatencyTracker()Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNameOfAction(I)Ljava/lang/String;
    .registers 3
    .param p0, "atomsProtoAction"    # I

    .line 551
    packed-switch p0, :pswitch_data_72

    .line 621
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :pswitch_b
    const-string v0, "ACTION_DESKTOP_MODE_EXIT_MODE"

    return-object v0

    .line 617
    :pswitch_e
    const-string v0, "ACTION_DESKTOP_MODE_ENTER_APP_HANDLE_MENU"

    return-object v0

    .line 615
    :pswitch_11
    const-string v0, "ACTION_DESKTOP_MODE_ENTER_APP_HANDLE_DRAG"

    return-object v0

    .line 613
    :pswitch_14
    const-string v0, "ACTION_SHADE_WINDOW_DISPLAY_CHANGE"

    return-object v0

    .line 611
    :pswitch_17
    const-string v0, "ACTION_KEYGUARD_FACE_UNLOCK_TO_HOME"

    return-object v0

    .line 609
    :pswitch_1a
    const-string v0, "ACTION_NOTIFICATIONS_HIDDEN_FOR_MEASURE_WITH_SHADE_OPEN"

    return-object v0

    .line 607
    :pswitch_1d
    const-string v0, "ACTION_NOTIFICATIONS_HIDDEN_FOR_MEASURE"

    return-object v0

    .line 605
    :pswitch_20
    const-string v0, "ACTION_BACK_SYSTEM_ANIMATION"

    return-object v0

    .line 603
    :pswitch_23
    const-string v0, "ACTION_KEYGUARD_FPS_UNLOCK_TO_HOME"

    return-object v0

    .line 601
    :pswitch_26
    const-string v0, "ACTION_NOTIFICATION_BIG_PICTURE_LOADED"

    return-object v0

    .line 599
    :pswitch_29
    const-string v0, "ACTION_SMARTSPACE_DOORBELL"

    return-object v0

    .line 597
    :pswitch_2c
    const-string v0, "ACTION_REQUEST_IME_HIDDEN"

    return-object v0

    .line 595
    :pswitch_2f
    const-string v0, "ACTION_REQUEST_IME_SHOWN"

    return-object v0

    .line 593
    :pswitch_32
    const-string v0, "ACTION_SHOW_VOICE_INTERACTION"

    return-object v0

    .line 591
    :pswitch_35
    const-string v0, "ACTION_FOLD_TO_AOD"

    return-object v0

    .line 589
    :pswitch_38
    const-string v0, "ACTION_SHOW_SELECTION_TOOLBAR"

    return-object v0

    .line 587
    :pswitch_3b
    const-string v0, "ACTION_LOAD_SHARE_SHEET"

    return-object v0

    .line 585
    :pswitch_3e
    const-string v0, "ACTION_SHOW_BACK_ARROW"

    return-object v0

    .line 583
    :pswitch_41
    const-string v0, "ACTION_UDFPS_ILLUMINATE"

    return-object v0

    .line 581
    :pswitch_44
    const-string v0, "ACTION_SWITCH_DISPLAY_UNFOLD"

    return-object v0

    .line 579
    :pswitch_47
    const-string v0, "ACTION_USER_SWITCH"

    return-object v0

    .line 577
    :pswitch_4a
    const-string v0, "ACTION_LOCKSCREEN_UNLOCK"

    return-object v0

    .line 575
    :pswitch_4d
    const-string v0, "ACTION_ROTATE_SCREEN_SENSOR"

    return-object v0

    .line 573
    :pswitch_50
    const-string v0, "ACTION_ROTATE_SCREEN_CAMERA_CHECK"

    return-object v0

    .line 571
    :pswitch_53
    const-string v0, "ACTION_START_RECENTS_ANIMATION"

    return-object v0

    .line 569
    :pswitch_56
    const-string v0, "ACTION_FACE_WAKE_AND_UNLOCK"

    return-object v0

    .line 567
    :pswitch_59
    const-string v0, "ACTION_ROTATE_SCREEN"

    return-object v0

    .line 565
    :pswitch_5c
    const-string v0, "ACTION_TURN_ON_SCREEN"

    return-object v0

    .line 563
    :pswitch_5f
    const-string v0, "ACTION_CHECK_CREDENTIAL_UNLOCKED"

    return-object v0

    .line 561
    :pswitch_62
    const-string v0, "ACTION_CHECK_CREDENTIAL"

    return-object v0

    .line 559
    :pswitch_65
    const-string v0, "ACTION_FINGERPRINT_WAKE_AND_UNLOCK"

    return-object v0

    .line 557
    :pswitch_68
    const-string v0, "ACTION_TOGGLE_RECENTS"

    return-object v0

    .line 555
    :pswitch_6b
    const-string v0, "ACTION_EXPAND_PANEL"

    return-object v0

    .line 553
    :pswitch_6e
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_72
    .packed-switch 0x0
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
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_3
        :pswitch_3
        :pswitch_3
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
    .end packed-switch
.end method

.method private static blacklist getTraceNameOfAction(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "action"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .line 626
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ">"

    const-string v2, "L<"

    if-eqz v0, :cond_28

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v2, v2, p0

    invoke-static {v2}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 629
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v2, v2, p0

    invoke-static {v2}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getTraceTriggerNameForAction(I)Ljava/lang/String;
    .registers 3
    .param p0, "action"    # I

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.telemetry.latency-tracker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v1, v1, p0

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isEnabled(Landroid/content/Context;)Z
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 642
    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist isEnabled(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "action"    # I

    .line 656
    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$onActionStart$1(I)V
    .registers 2
    .param p1, "action"    # I

    .line 694
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    return-void
.end method

.method private synthetic blacklist lambda$startListeningForLatencyTrackerConfigChanges$0(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 514
    const-string v0, "latency_tracker"

    const/4 v1, 0x0

    :try_start_3
    new-array v1, v1, [Ljava/lang/String;

    .line 515
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    .line 514
    invoke-direct {p0, v1}, Lcom/android/internal/util/LatencyTracker;->updateProperties(Landroid/provider/DeviceConfig$Properties;)V

    .line 516
    nop

    .line 517
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 516
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_16} :catch_17

    .line 525
    goto :goto_44

    .line 518
    :catch_17
    move-exception v0

    .line 522
    .local v0, "ex":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get properties: READ_DEVICE_CONFIG granted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 523
    const-string v2, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 524
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 522
    const-string v2, "LatencyTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :goto_44
    return-void
.end method

.method private blacklist updateProperties(Landroid/provider/DeviceConfig$Properties;)V
    .registers 19
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 457
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 458
    :try_start_7
    const-string/jumbo v0, "sampling_interval"

    const/4 v4, 0x5

    invoke-virtual {v2, v0, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 460
    .local v0, "samplingInterval":I
    iget-boolean v4, v1, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    .line 461
    .local v4, "wasEnabled":Z
    const-string v5, "enabled"

    sget-boolean v6, Lcom/android/internal/util/LatencyTracker;->DEFAULT_ENABLED:Z

    invoke-virtual {v2, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    .line 462
    iget-boolean v5, v1, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    if-eq v4, v5, :cond_46

    .line 463
    const-string v5, "LatencyTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Latency tracker "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v1, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    if-eqz v7, :cond_33

    const-string v7, "enabled"

    goto :goto_35

    :cond_33
    const-string v7, "disabled"

    :goto_35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_46
    sget-object v5, Lcom/android/internal/util/LatencyTracker;->ACTIONS_ALL:[I

    array-length v6, v5

    const/4 v7, 0x0

    :goto_4a
    if-ge v7, v6, :cond_cd

    aget v8, v5, v7

    .line 466
    .local v8, "action":I
    sget-object v9, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v9, v9, v8

    invoke-static {v9}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 467
    .local v9, "actionName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v2, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 469
    .local v10, "legacyActionTraceThreshold":I
    iget-object v11, v1, Lcom/android/internal/util/LatencyTracker;->mActionPropertiesMap:Landroid/util/SparseArray;

    new-instance v12, Lcom/android/internal/util/LatencyTracker$ActionProperties;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_enable"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-boolean v14, v1, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    .line 470
    invoke-virtual {v2, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_sample_interval"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 471
    invoke-virtual {v2, v14, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v0

    .end local v0    # "samplingInterval":I
    .local v16, "samplingInterval":I
    const-string v0, "_trace_threshold"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {v2, v0, v10}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v12, v8, v13, v14, v0}, Lcom/android/internal/util/LatencyTracker$ActionProperties;-><init>(IZII)V

    .line 469
    invoke-virtual {v11, v8, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    .end local v8    # "action":I
    .end local v9    # "actionName":Ljava/lang/String;
    .end local v10    # "legacyActionTraceThreshold":I
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v16

    goto/16 :goto_4a

    .line 475
    .end local v16    # "samplingInterval":I
    .restart local v0    # "samplingInterval":I
    :cond_cd
    move/from16 v16, v0

    .end local v0    # "samplingInterval":I
    .restart local v16    # "samplingInterval":I
    iget-object v0, v1, Lcom/android/internal/util/LatencyTracker;->mActionPropertiesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/LatencyTracker;->onDeviceConfigPropertiesUpdated(Landroid/util/SparseArray;)V

    .line 476
    .end local v4    # "wasEnabled":Z
    .end local v16    # "samplingInterval":I
    monitor-exit v3

    .line 477
    return-void

    .line 476
    :catchall_d6
    move-exception v0

    monitor-exit v3
    :try_end_d8
    .catchall {:try_start_7 .. :try_end_d8} :catchall_d6

    throw v0
.end method


# virtual methods
.method public blacklist getActiveActionStartTime(I)J
    .registers 5
    .param p1, "action"    # I

    .line 758
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 760
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/LatencyTracker$Session;

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker$Session;->-$$Nest$fgetmStartRtc(Lcom/android/internal/util/LatencyTracker$Session;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 762
    :cond_19
    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 763
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public blacklist isEnabled()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 651
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    monitor-exit v0

    return v1

    .line 652
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist isEnabled(I)Z
    .registers 5
    .param p1, "action"    # I

    .line 660
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 661
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mActionPropertiesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/LatencyTracker$ActionProperties;

    .line 662
    .local v1, "actionProperties":Lcom/android/internal/util/LatencyTracker$ActionProperties;
    if-eqz v1, :cond_13

    .line 663
    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$ActionProperties;->isEnabled()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 665
    :cond_13
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 666
    .end local v1    # "actionProperties":Lcom/android/internal/util/LatencyTracker$ActionProperties;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public blacklist logAction(II)V
    .registers 16
    .param p1, "action"    # I
    .param p2, "duration"    # I

    .line 775
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 776
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(I)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_6c

    if-nez v0, :cond_10

    .line 777
    :try_start_9
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_b

    return-void

    .line 787
    :catchall_b
    move-exception v0

    move v8, p1

    move v11, p2

    goto/16 :goto_6f

    .line 779
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mActionPropertiesMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/LatencyTracker$ActionProperties;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_6c

    .line 780
    .local v0, "actionProperties":Lcom/android/internal/util/LatencyTracker$ActionProperties;
    if-nez v0, :cond_1c

    .line 781
    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_b

    return-void

    .line 783
    :cond_1c
    :try_start_1c
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    .line 784
    invoke-virtual {v0}, Lcom/android/internal/util/LatencyTracker$ActionProperties;->getSamplingInterval()I

    move-result v3

    .line 783
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v2

    .line 785
    .local v2, "nextRandNum":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2e

    move v5, v3

    goto :goto_2f

    :cond_2e
    move v5, v4

    .line 786
    .local v5, "shouldSample":Z
    :goto_2f
    invoke-virtual {v0}, Lcom/android/internal/util/LatencyTracker$ActionProperties;->getTraceThreshold()I

    move-result v6

    .line 787
    .end local v0    # "actionProperties":Lcom/android/internal/util/LatencyTracker$ActionProperties;
    .end local v2    # "nextRandNum":I
    .local v6, "traceThreshold":I
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_6c

    .line 789
    if-lez v6, :cond_39

    if-lt p2, v6, :cond_39

    goto :goto_3a

    :cond_39
    move v3, v4

    .line 798
    .local v3, "shouldTriggerPerfettoTrace":Z
    :goto_3a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x8ce6

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 799
    if-eqz v3, :cond_55

    .line 800
    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getTraceTriggerNameForAction(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LatencyTracker;->onTriggerPerfetto(Ljava/lang/String;)V

    .line 802
    :cond_55
    if-eqz v5, :cond_69

    .line 803
    new-instance v7, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;

    sget-object v0, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v10, v0, p1

    const/4 v12, 0x0

    const/16 v9, 0x132

    move v8, p1

    move v11, p2

    .end local p1    # "action":I
    .end local p2    # "duration":I
    .local v8, "action":I
    .local v11, "duration":I
    invoke-direct/range {v7 .. v12}, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;-><init>(IIIILcom/android/internal/util/LatencyTracker-IA;)V

    invoke-virtual {p0, v7}, Lcom/android/internal/util/LatencyTracker;->onLogToFrameworkStats(Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;)V

    goto :goto_6b

    .line 802
    .end local v8    # "action":I
    .end local v11    # "duration":I
    .restart local p1    # "action":I
    .restart local p2    # "duration":I
    :cond_69
    move v8, p1

    move v11, p2

    .line 808
    .end local p1    # "action":I
    .end local p2    # "duration":I
    .restart local v8    # "action":I
    .restart local v11    # "duration":I
    :goto_6b
    return-void

    .line 787
    .end local v3    # "shouldTriggerPerfettoTrace":Z
    .end local v5    # "shouldSample":Z
    .end local v6    # "traceThreshold":I
    .end local v8    # "action":I
    .end local v11    # "duration":I
    .restart local p1    # "action":I
    .restart local p2    # "duration":I
    :catchall_6c
    move-exception v0

    move v8, p1

    move v11, p2

    .end local p1    # "action":I
    .end local p2    # "duration":I
    .restart local v8    # "action":I
    .restart local v11    # "duration":I
    :goto_6f
    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_71

    throw v0

    :catchall_71
    move-exception v0

    goto :goto_6f
.end method

.method public blacklist onActionCancel(I)V
    .registers 5
    .param p1, "action"    # I

    .line 734
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 735
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/LatencyTracker$Session;

    .line 736
    .local v1, "session":Lcom/android/internal/util/LatencyTracker$Session;
    if-nez v1, :cond_f

    .line 737
    monitor-exit v0

    return-void

    .line 739
    :cond_f
    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$Session;->cancel()V

    .line 740
    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 745
    .end local v1    # "session":Lcom/android/internal/util/LatencyTracker$Session;
    monitor-exit v0

    .line 746
    return-void

    .line 745
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public blacklist onActionEnd(I)V
    .registers 5
    .param p1, "action"    # I

    .line 709
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 711
    monitor-exit v0

    return-void

    .line 713
    :cond_b
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/LatencyTracker$Session;

    .line 714
    .local v1, "session":Lcom/android/internal/util/LatencyTracker$Session;
    if-nez v1, :cond_17

    .line 715
    monitor-exit v0

    return-void

    .line 717
    :cond_17
    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$Session;->end()V

    .line 718
    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 719
    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$Session;->duration()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/util/LatencyTracker;->logAction(II)V

    .line 724
    .end local v1    # "session":Lcom/android/internal/util/LatencyTracker$Session;
    monitor-exit v0

    .line 725
    return-void

    .line 724
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public blacklist onActionStart(I)V
    .registers 3
    .param p1, "action"    # I

    .line 675
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    .line 676
    return-void
.end method

.method public blacklist onActionStart(ILjava/lang/String;)V
    .registers 6
    .param p1, "action"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 685
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 686
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 687
    monitor-exit v0

    return-void

    .line 690
    :cond_b
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 691
    monitor-exit v0

    return-void

    .line 693
    :cond_15
    new-instance v1, Lcom/android/internal/util/LatencyTracker$Session;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/util/LatencyTracker$Session;-><init>(ILjava/lang/String;)V

    .line 694
    .local v1, "session":Lcom/android/internal/util/LatencyTracker$Session;
    new-instance v2, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/LatencyTracker;I)V

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker$Session;->begin(Ljava/lang/Runnable;)V

    .line 695
    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 700
    .end local v1    # "session":Lcom/android/internal/util/LatencyTracker$Session;
    monitor-exit v0

    .line 701
    return-void

    .line 700
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist onDeviceConfigPropertiesUpdated(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/LatencyTracker$ActionProperties;",
            ">;)V"
        }
    .end annotation

    .line 964
    .local p1, "actionProperties":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/util/LatencyTracker$ActionProperties;>;"
    return-void
.end method

.method public blacklist onLogToFrameworkStats(Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;

    .line 986
    iget v0, p1, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;->logCode:I

    iget v1, p1, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;->statsdAction:I

    iget v2, p1, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;->durationMillis:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 987
    return-void
.end method

.method public blacklist onTriggerPerfetto(Ljava/lang/String;)V
    .registers 2
    .param p1, "triggerName"    # Ljava/lang/String;

    .line 974
    invoke-static {p1}, Lcom/android/internal/util/PerfettoTrigger;->trigger(Ljava/lang/String;)V

    .line 975
    return-void
.end method

.method public blacklist startListeningForLatencyTrackerConfigChanges()V
    .registers 4

    .line 491
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 492
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1b

    .line 493
    nop

    .line 497
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 495
    const-string v2, "No application for package: %s. Latency Tracker Disabled"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 493
    const-string v2, "LatencyTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-void

    .line 500
    :cond_1b
    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_24

    .line 508
    return-void

    .line 512
    :cond_24
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/util/LatencyTracker;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 527
    return-void
.end method

.method public blacklist stopListeningForLatencyTrackerConfigChanges()V
    .registers 2

    .line 540
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 541
    return-void
.end method
