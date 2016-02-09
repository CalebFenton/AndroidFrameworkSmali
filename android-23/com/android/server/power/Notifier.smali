.class final Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/Notifier$NotifierHandler;,
        Lcom/android/server/power/Notifier$1;,
        Lcom/android/server/power/Notifier$2;,
        Lcom/android/server/power/Notifier$3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INTERACTIVE_STATE_ASLEEP:I = 0x2

.field private static final INTERACTIVE_STATE_AWAKE:I = 0x1

.field private static final INTERACTIVE_STATE_UNKNOWN:I = 0x0

.field private static final MSG_BROADCAST:I = 0x2

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_CHANGED:I = 0x4

.field private static final MSG_USER_ACTIVITY:I = 0x1

.field private static final MSG_WIRELESS_CHARGING_STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PowerManagerNotifier"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBroadcastInProgress:Z

.field private mBroadcastStartTime:J

.field private mBroadcastedInteractiveState:I

.field private final mContext:Landroid/content/Context;

.field private final mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

.field private final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field private final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private final mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

.field private mInteractive:Z

.field private mInteractiveChangeReason:I

.field private mInteractiveChanging:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingGoToSleepBroadcast:Z

.field private mPendingInteractiveState:I

.field private mPendingWakeUpBroadcast:Z

.field private final mPolicy:Landroid/view/WindowManagerPolicy;

.field private final mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

.field private final mScreenBrightnessBoostIntent:Landroid/content/Intent;

.field private final mScreenOffIntent:Landroid/content/Intent;

.field private final mScreenOnIntent:Landroid/content/Intent;

.field private final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mSuspendWhenScreenOffDueToProximityConfig:Z

.field private mUserActivityPending:Z

.field private final mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/power/Notifier;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/power/Notifier;)Landroid/view/WindowManagerPolicy;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/power/Notifier;)Lcom/android/server/power/SuspendBlocker;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/power/Notifier;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->playWirelessChargingStartedSound()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/power/Notifier;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendBrightnessBoostChangedBroadcast()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/power/Notifier;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/power/Notifier;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendUserActivity()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "appOps"    # Lcom/android/internal/app/IAppOpsService;
    .param p5, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p6, "policy"    # Landroid/view/WindowManagerPolicy;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/high16 v3, 0x50000000

    #@3
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 84
    new-instance v1, Ljava/lang/Object;

    #@8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    #@d
    .line 107
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    #@f
    .line 592
    new-instance v1, Lcom/android/server/power/Notifier$1;

    #@11
    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;)V

    #@14
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

    #@16
    .line 613
    new-instance v1, Lcom/android/server/power/Notifier$2;

    #@18
    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;)V

    #@1b
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    #@1d
    .line 636
    new-instance v1, Lcom/android/server/power/Notifier$3;

    #@1f
    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;)V

    #@22
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    #@24
    .line 131
    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    #@26
    .line 132
    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@28
    .line 133
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@2a
    .line 134
    iput-object p5, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@2c
    .line 135
    iput-object p6, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@2e
    .line 136
    const-class v1, Landroid/app/ActivityManagerInternal;

    #@30
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Landroid/app/ActivityManagerInternal;

    #@36
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    #@38
    .line 137
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    #@3a
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@3d
    move-result-object v1

    #@3e
    check-cast v1, Landroid/hardware/input/InputManagerInternal;

    #@40
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    #@42
    .line 138
    const-class v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    #@44
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@47
    move-result-object v1

    #@48
    check-cast v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    #@4a
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    #@4c
    .line 140
    new-instance v1, Lcom/android/server/power/Notifier$NotifierHandler;

    #@4e
    invoke-direct {v1, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    #@51
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    #@53
    .line 141
    new-instance v1, Landroid/content/Intent;

    #@55
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    #@58
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5b
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    #@5d
    .line 142
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    #@5f
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@62
    .line 144
    new-instance v1, Landroid/content/Intent;

    #@64
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    #@67
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@6a
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    #@6c
    .line 145
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    #@6e
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@71
    .line 148
    new-instance v1, Landroid/content/Intent;

    #@73
    const-string/jumbo v2, "android.os.action.SCREEN_BRIGHTNESS_BOOST_CHANGED"

    #@76
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@79
    .line 147
    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    #@7b
    .line 149
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    #@7d
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@80
    .line 152
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@83
    move-result-object v1

    #@84
    .line 153
    const v2, 0x1120039

    #@87
    .line 152
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@8a
    move-result v1

    #@8b
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    #@8d
    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@8f
    const/4 v2, 0x1

    #@90
    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@93
    .line 130
    :goto_0
    return-void

    #@94
    .line 158
    :catch_0
    move-exception v0

    #@95
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private finishPendingBroadcastLocked()V
    .locals 1

    #@0
    .prologue
    .line 526
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    #@3
    .line 527
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@5
    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    #@8
    .line 525
    return-void
.end method

.method private getBatteryStatsWakeLockMonitorType(I)I
    .locals 3
    .param p1, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 260
    const v0, 0xffff

    #@5
    and-int/2addr v0, p1

    #@6
    sparse-switch v0, :sswitch_data_0

    #@9
    .line 284
    return v1

    #@a
    .line 262
    :sswitch_0
    return v2

    #@b
    .line 266
    :sswitch_1
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 269
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 270
    return v1

    #@12
    .line 272
    :cond_0
    return v2

    #@13
    .line 275
    :sswitch_3
    const/16 v0, 0x12

    #@15
    return v0

    #@16
    .line 281
    :sswitch_4
    return v1

    #@17
    .line 260
    nop

    #@18
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
        0x40 -> :sswitch_4
        0x80 -> :sswitch_3
    .end sparse-switch
.end method

.method private handleEarlyInteractiveChange()V
    .locals 4

    #@0
    .prologue
    .line 354
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 355
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 357
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    #@9
    new-instance v3, Lcom/android/server/power/Notifier$5;

    #@b
    invoke-direct {v3, p0}, Lcom/android/server/power/Notifier$5;-><init>(Lcom/android/server/power/Notifier;)V

    #@e
    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    #@11
    .line 366
    const/4 v1, 0x1

    #@12
    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    #@14
    .line 367
    const/4 v1, 0x1

    #@15
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    #@17
    .line 368
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :goto_0
    monitor-exit v2

    #@1b
    .line 353
    return-void

    #@1c
    .line 372
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    #@1e
    invoke-static {v1}, Lcom/android/server/power/Notifier;->translateOffReason(I)I

    #@21
    move-result v0

    #@22
    .line 373
    .local v0, "why":I
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    #@24
    new-instance v3, Lcom/android/server/power/Notifier$6;

    #@26
    invoke-direct {v3, p0, v0}, Lcom/android/server/power/Notifier$6;-><init>(Lcom/android/server/power/Notifier;I)V

    #@29
    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .line 354
    .end local v0    # "why":I
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1
.end method

.method private handleLateInteractiveChange()V
    .locals 4

    #@0
    .prologue
    .line 389
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 390
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 392
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    #@9
    new-instance v3, Lcom/android/server/power/Notifier$7;

    #@b
    invoke-direct {v3, p0}, Lcom/android/server/power/Notifier$7;-><init>(Lcom/android/server/power/Notifier;)V

    #@e
    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :goto_0
    monitor-exit v2

    #@12
    .line 388
    return-void

    #@13
    .line 406
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 407
    const/4 v1, 0x0

    #@18
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    #@1a
    .line 408
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    #@1c
    const/4 v3, 0x1

    #@1d
    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->removeMessages(I)V

    #@20
    .line 412
    :cond_1
    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    #@22
    invoke-static {v1}, Lcom/android/server/power/Notifier;->translateOffReason(I)I

    #@25
    move-result v0

    #@26
    .line 413
    .local v0, "why":I
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    #@28
    new-instance v3, Lcom/android/server/power/Notifier$8;

    #@2a
    invoke-direct {v3, p0, v0}, Lcom/android/server/power/Notifier$8;-><init>(Lcom/android/server/power/Notifier;I)V

    #@2d
    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    #@30
    .line 422
    const/4 v1, 0x2

    #@31
    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    #@33
    .line 423
    const/4 v1, 0x1

    #@34
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    #@36
    .line 424
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .line 389
    .end local v0    # "why":I
    :catchall_0
    move-exception v1

    #@3b
    monitor-exit v2

    #@3c
    throw v1
.end method

.method private playWirelessChargingStartedSound()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 646
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v4

    #@7
    .line 647
    const-string/jumbo v5, "charging_sounds_enabled"

    #@a
    .line 646
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    const/4 v0, 0x1

    #@11
    .line 648
    .local v0, "enabled":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@16
    move-result-object v4

    #@17
    .line 649
    const-string/jumbo v5, "wireless_charging_started_sound"

    #@1a
    .line 648
    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 650
    .local v2, "soundPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 651
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "file://"

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@39
    move-result-object v3

    #@3a
    .line 652
    .local v3, "soundUri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    #@3c
    .line 653
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    #@3e
    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    #@41
    move-result-object v1

    #@42
    .line 654
    .local v1, "sfx":Landroid/media/Ringtone;
    if-eqz v1, :cond_0

    #@44
    .line 655
    invoke-virtual {v1, v6}, Landroid/media/Ringtone;->setStreamType(I)V

    #@47
    .line 656
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    #@4a
    .line 661
    .end local v1    # "sfx":Landroid/media/Ringtone;
    .end local v3    # "soundUri":Landroid/net/Uri;
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@4c
    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->release()V

    #@4f
    .line 645
    return-void

    #@50
    .line 646
    .end local v0    # "enabled":Z
    .end local v2    # "soundPath":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    #@51
    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private sendBrightnessBoostChangedBroadcast()V
    .locals 9

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 588
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    #@3
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    #@5
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@7
    .line 589
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

    #@9
    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    #@b
    const/4 v6, 0x0

    #@c
    move-object v7, v3

    #@d
    move-object v8, v3

    #@e
    .line 588
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@11
    .line 583
    return-void
.end method

.method private sendGoToSleepBroadcast()V
    .locals 9

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 627
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 628
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    #@b
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    #@d
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@f
    .line 629
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    #@11
    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    #@13
    move-object v7, v3

    #@14
    move-object v8, v3

    #@15
    .line 628
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@18
    .line 622
    :goto_0
    return-void

    #@19
    .line 631
    :cond_0
    const/4 v0, 0x2

    #@1a
    new-array v0, v0, [Ljava/lang/Object;

    #@1c
    const/4 v1, 0x3

    #@1d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v1

    #@21
    aput-object v1, v0, v6

    #@23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v1

    #@27
    aput-object v1, v0, v2

    #@29
    const/16 v1, 0xaa7

    #@2b
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@2e
    .line 632
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    #@31
    goto :goto_0
.end method

.method private sendNextBroadcast()V
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    .line 543
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 544
    :try_start_0
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    #@7
    if-nez v1, :cond_0

    #@9
    .line 546
    const/4 v1, 0x0

    #@a
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    #@c
    .line 547
    const/4 v1, 0x1

    #@d
    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    #@f
    .line 570
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@12
    move-result-wide v4

    #@13
    iput-wide v4, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    #@15
    .line 571
    iget v0, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .local v0, "powerState":I
    monitor-exit v2

    #@18
    .line 574
    const/16 v1, 0xaa5

    #@1a
    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(II)I

    #@1d
    .line 576
    if-ne v0, v3, :cond_6

    #@1f
    .line 577
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendWakeUpBroadcast()V

    #@22
    .line 541
    :goto_1
    return-void

    #@23
    .line 548
    .end local v0    # "powerState":I
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    #@25
    if-ne v1, v3, :cond_3

    #@27
    .line 550
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    #@29
    if-nez v1, :cond_1

    #@2b
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    #@2d
    if-nez v1, :cond_1

    #@2f
    .line 551
    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    #@31
    if-ne v1, v4, :cond_2

    #@33
    .line 552
    :cond_1
    const/4 v1, 0x0

    #@34
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    #@36
    .line 553
    const/4 v1, 0x2

    #@37
    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .line 543
    :catchall_0
    move-exception v1

    #@3b
    monitor-exit v2

    #@3c
    throw v1

    #@3d
    .line 555
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    monitor-exit v2

    #@41
    .line 556
    return-void

    #@42
    .line 560
    :cond_3
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    #@44
    if-nez v1, :cond_4

    #@46
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    #@48
    if-nez v1, :cond_4

    #@4a
    .line 561
    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    #@4c
    if-ne v1, v3, :cond_5

    #@4e
    .line 562
    :cond_4
    const/4 v1, 0x0

    #@4f
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    #@51
    .line 563
    const/4 v1, 0x1

    #@52
    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    #@54
    goto :goto_0

    #@55
    .line 565
    :cond_5
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@58
    monitor-exit v2

    #@59
    .line 566
    return-void

    #@5a
    .line 579
    .restart local v0    # "powerState":I
    :cond_6
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendGoToSleepBroadcast()V

    #@5d
    goto :goto_1
.end method

.method private sendUserActivity()V
    .locals 2

    #@0
    .prologue
    .line 531
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 532
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 533
    return-void

    #@9
    .line 535
    :cond_0
    const/4 v0, 0x0

    #@a
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 538
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@f
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->userActivity()V

    #@12
    .line 530
    return-void

    #@13
    .line 531
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method private sendWakeUpBroadcast()V
    .locals 9

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    .line 604
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 605
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    #@c
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    #@e
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@10
    .line 606
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    #@12
    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    #@14
    move-object v7, v3

    #@15
    move-object v8, v3

    #@16
    .line 605
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@19
    .line 599
    :goto_0
    return-void

    #@1a
    .line 608
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    #@1c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v1

    #@20
    aput-object v1, v0, v6

    #@22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v1

    #@26
    aput-object v1, v0, v2

    #@28
    const/16 v1, 0xaa7

    #@2a
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@2d
    .line 609
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    #@30
    goto :goto_0
.end method

.method private static translateOffReason(I)I
    .locals 1
    .param p0, "reason"    # I

    #@0
    .prologue
    .line 430
    packed-switch p0, :pswitch_data_0

    #@3
    .line 436
    const/4 v0, 0x2

    #@4
    return v0

    #@5
    .line 432
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 434
    :pswitch_1
    const/4 v0, 0x3

    #@8
    return v0

    #@9
    .line 430
    nop

    #@a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updatePendingBroadcastLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 513
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 514
    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 515
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    #@b
    if-nez v1, :cond_0

    #@d
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    #@f
    if-nez v1, :cond_0

    #@11
    .line 516
    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    #@13
    iget v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    #@15
    if-eq v1, v2, :cond_1

    #@17
    .line 517
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    #@19
    .line 518
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@1b
    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    #@1e
    .line 519
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    #@20
    const/4 v2, 0x2

    #@21
    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    #@24
    move-result-object v0

    #@25
    .line 520
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    #@28
    .line 521
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    #@2a
    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    #@2d
    .line 512
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method public onScreenBrightnessBoostChanged()V
    .locals 3

    #@0
    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@2
    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    #@5
    .line 449
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    #@7
    const/4 v2, 0x4

    #@8
    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    .line 450
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@10
    .line 451
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    #@12
    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    #@15
    .line 443
    return-void
.end method

.method public onUserActivity(II)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 463
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@2
    invoke-interface {v2, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 468
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v3

    #@8
    .line 469
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    #@a
    if-nez v2, :cond_0

    #@c
    .line 470
    const/4 v2, 0x1

    #@d
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    #@f
    .line 471
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    #@11
    const/4 v4, 0x1

    #@12
    invoke-virtual {v2, v4}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    #@15
    move-result-object v1

    #@16
    .line 472
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    #@17
    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    #@1a
    .line 473
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    #@1c
    invoke-virtual {v2, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    monitor-exit v3

    #@20
    .line 457
    return-void

    #@21
    .line 468
    :catchall_0
    move-exception v2

    #@22
    monitor-exit v3

    #@23
    throw v2

    #@24
    .line 464
    :catch_0
    move-exception v0

    #@25
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 8
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    #@3
    move-result v5

    #@4
    .line 174
    .local v5, "monitorType":I
    if-ltz v5, :cond_0

    #@6
    .line 176
    const/16 v0, 0x3e8

    #@8
    if-ne p4, v0, :cond_2

    #@a
    .line 177
    const/high16 v0, 0x40000000    # 2.0f

    #@c
    and-int/2addr v0, p1

    #@d
    if-eqz v0, :cond_1

    #@f
    const/4 v6, 0x1

    #@10
    .line 178
    .local v6, "unimportantForLogging":Z
    :goto_0
    if-eqz p6, :cond_3

    #@12
    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@14
    move-object v1, p6

    #@15
    move v2, p5

    #@16
    move-object v3, p2

    #@17
    move-object v4, p7

    #@18
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    #@1b
    .line 165
    .end local v6    # "unimportantForLogging":Z
    :cond_0
    :goto_1
    return-void

    #@1c
    .line 177
    :cond_1
    const/4 v6, 0x0

    #@1d
    .restart local v6    # "unimportantForLogging":Z
    goto :goto_0

    #@1e
    .line 176
    .end local v6    # "unimportantForLogging":Z
    :cond_2
    const/4 v6, 0x0

    #@1f
    .restart local v6    # "unimportantForLogging":Z
    goto :goto_0

    #@20
    .line 182
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@22
    move v1, p4

    #@23
    move v2, p5

    #@24
    move-object v3, p2

    #@25
    move-object v4, p7

    #@26
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    #@29
    .line 185
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@2b
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@2d
    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    #@30
    move-result-object v1

    #@31
    .line 186
    const/16 v2, 0x28

    #@33
    .line 185
    invoke-interface {v0, v1, v2, p4, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    goto :goto_1

    #@37
    .line 188
    :catch_0
    move-exception v7

    #@38
    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 23
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;
    .param p8, "newFlags"    # I
    .param p9, "newTag"    # Ljava/lang/String;
    .param p10, "newPackageName"    # Ljava/lang/String;
    .param p11, "newOwnerUid"    # I
    .param p12, "newOwnerPid"    # I
    .param p13, "newWorkSource"    # Landroid/os/WorkSource;
    .param p14, "newHistoryTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 202
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    #@3
    move-result v7

    #@4
    .line 203
    .local v7, "monitorType":I
    move-object/from16 v0, p0

    #@6
    move/from16 v1, p8

    #@8
    invoke-direct {v0, v1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    #@b
    move-result v12

    #@c
    .line 204
    .local v12, "newMonitorType":I
    if-eqz p6, :cond_2

    #@e
    if-eqz p13, :cond_2

    #@10
    .line 205
    if-ltz v7, :cond_2

    #@12
    if-ltz v12, :cond_2

    #@14
    .line 213
    const/16 v2, 0x3e8

    #@16
    move/from16 v0, p11

    #@18
    if-ne v0, v2, :cond_1

    #@1a
    .line 214
    const/high16 v2, 0x40000000    # 2.0f

    #@1c
    and-int v2, v2, p8

    #@1e
    if-eqz v2, :cond_0

    #@20
    const/4 v13, 0x1

    #@21
    .line 216
    .local v13, "unimportantForLogging":Z
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    #@23
    iget-object v2, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@25
    move-object/from16 v3, p6

    #@27
    move/from16 v4, p5

    #@29
    move-object/from16 v5, p2

    #@2b
    move-object/from16 v6, p7

    #@2d
    move-object/from16 v8, p13

    #@2f
    move/from16 v9, p12

    #@31
    move-object/from16 v10, p9

    #@33
    move-object/from16 v11, p14

    #@35
    invoke-interface/range {v2 .. v13}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 200
    .end local v13    # "unimportantForLogging":Z
    :goto_1
    return-void

    #@39
    .line 214
    :cond_0
    const/4 v13, 0x0

    #@3a
    .restart local v13    # "unimportantForLogging":Z
    goto :goto_0

    #@3b
    .line 213
    .end local v13    # "unimportantForLogging":Z
    :cond_1
    const/4 v13, 0x0

    #@3c
    .restart local v13    # "unimportantForLogging":Z
    goto :goto_0

    #@3d
    .line 223
    .end local v13    # "unimportantForLogging":Z
    :cond_2
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    #@40
    move-object/from16 v14, p0

    #@42
    move/from16 v15, p8

    #@44
    move-object/from16 v16, p9

    #@46
    move-object/from16 v17, p10

    #@48
    move/from16 v18, p11

    #@4a
    move/from16 v19, p12

    #@4c
    move-object/from16 v20, p13

    #@4e
    move-object/from16 v21, p14

    #@50
    .line 224
    invoke-virtual/range {v14 .. v21}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    #@53
    goto :goto_1

    #@54
    .line 219
    .restart local v13    # "unimportantForLogging":Z
    :catch_0
    move-exception v22

    #@55
    .local v22, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 7
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    #@3
    move-result v5

    #@4
    .line 242
    .local v5, "monitorType":I
    if-ltz v5, :cond_0

    #@6
    .line 244
    if-eqz p6, :cond_1

    #@8
    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@a
    move-object v1, p6

    #@b
    move v2, p5

    #@c
    move-object v3, p2

    #@d
    move-object v4, p7

    #@e
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    #@11
    .line 233
    :cond_0
    :goto_0
    return-void

    #@12
    .line 248
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@14
    move v1, p4

    #@15
    move v2, p5

    #@16
    move-object v3, p2

    #@17
    move-object v4, p7

    #@18
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    #@1b
    .line 250
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@1d
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@1f
    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    #@22
    move-result-object v1

    #@23
    .line 251
    const/16 v2, 0x28

    #@25
    .line 250
    invoke-interface {v0, v1, v2, p4, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    goto :goto_0

    #@29
    .line 253
    :catch_0
    move-exception v6

    #@2a
    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onWakeUp(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "opUid"    # I

    #@0
    .prologue
    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteWakeUp(Ljava/lang/String;I)V

    #@5
    .line 489
    if-eqz p3, :cond_0

    #@7
    .line 490
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@9
    const/16 v2, 0x3d

    #@b
    invoke-interface {v1, v2, p4, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 481
    :cond_0
    :goto_0
    return-void

    #@f
    .line 492
    :catch_0
    move-exception v0

    #@10
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onWakefulnessChangeFinished()V
    .locals 1

    #@0
    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 344
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    #@7
    .line 345
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V

    #@a
    .line 338
    :cond_0
    return-void
.end method

.method public onWakefulnessChangeStarted(II)V
    .locals 4
    .param p1, "wakefulness"    # I
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 295
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    #@3
    move-result v1

    #@4
    .line 303
    .local v1, "interactive":Z
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    #@6
    new-instance v3, Lcom/android/server/power/Notifier$4;

    #@8
    invoke-direct {v3, p0, p1}, Lcom/android/server/power/Notifier$4;-><init>(Lcom/android/server/power/Notifier;I)V

    #@b
    invoke-virtual {v2, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 312
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    #@10
    if-eq v2, v1, :cond_1

    #@12
    .line 314
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 315
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V

    #@19
    .line 319
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    #@1b
    invoke-virtual {v2, v1}, Landroid/hardware/input/InputManagerInternal;->setInteractive(Z)V

    #@1e
    .line 320
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    #@20
    invoke-interface {v2, v1}, Landroid/view/inputmethod/InputMethodManagerInternal;->setInteractive(Z)V

    #@23
    .line 324
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@25
    invoke-interface {v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 328
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    #@2a
    .line 329
    iput p2, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    #@2c
    .line 330
    const/4 v2, 0x1

    #@2d
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    #@2f
    .line 331
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleEarlyInteractiveChange()V

    #@32
    .line 294
    :cond_1
    return-void

    #@33
    .line 325
    :catch_0
    move-exception v0

    #@34
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onWirelessChargingStarted()V
    .locals 3

    #@0
    .prologue
    .line 506
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    #@2
    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    #@5
    .line 507
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    #@7
    const/4 v2, 0x3

    #@8
    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    .line 508
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@10
    .line 509
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    #@12
    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    #@15
    .line 501
    return-void
.end method
