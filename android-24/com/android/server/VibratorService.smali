.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$1;,
        Lcom/android/server/VibratorService$2;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$Vibration;,
        Lcom/android/server/VibratorService$VibrationInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "VibratorService"


# instance fields
.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

.field private final mH:Landroid/os/Handler;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLowPowerMode:Z

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPreviousVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrationsLimit:I

.field private mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationRunnable:Ljava/lang/Runnable;

.field private final mVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$Vibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/VibratorService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/VibratorService;JII)V
    .locals 1
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/VibratorService;->doVibratorOn(JII)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/VibratorService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 0
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/VibratorService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 199
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    #@4
    .line 69
    new-instance v2, Landroid/os/WorkSource;

    #@6
    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    #@9
    iput-object v2, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    #@b
    .line 70
    new-instance v2, Landroid/os/Handler;

    #@d
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    #@10
    iput-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    #@12
    .line 83
    new-instance v2, Ljava/util/ArrayList;

    #@14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    #@19
    .line 87
    const/4 v2, -0x1

    #@1a
    iput v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    #@1c
    .line 413
    new-instance v2, Lcom/android/server/VibratorService$1;

    #@1e
    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    #@21
    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    #@23
    .line 740
    new-instance v2, Lcom/android/server/VibratorService$2;

    #@25
    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    #@28
    iput-object v2, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@2a
    .line 200
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorInit()V

    #@2d
    .line 203
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    #@30
    .line 205
    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    #@32
    .line 207
    const-string/jumbo v2, "power"

    #@35
    .line 206
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Landroid/os/PowerManager;

    #@3b
    .line 208
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v2, "*vibrator*"

    #@3e
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@41
    move-result-object v2

    #@42
    iput-object v2, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@44
    .line 209
    iget-object v2, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@46
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@49
    .line 211
    const-string/jumbo v2, "appops"

    #@4c
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@4f
    move-result-object v2

    #@50
    invoke-static {v2}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    #@53
    move-result-object v2

    #@54
    iput-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@56
    .line 213
    const-string/jumbo v2, "batterystats"

    #@59
    .line 212
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@5c
    move-result-object v2

    #@5d
    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    #@60
    move-result-object v2

    #@61
    iput-object v2, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    #@63
    .line 215
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    #@65
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@68
    move-result-object v2

    #@69
    .line 216
    const v3, 0x10e009a

    #@6c
    .line 215
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@6f
    move-result v2

    #@70
    iput v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    #@72
    .line 218
    new-instance v2, Ljava/util/LinkedList;

    #@74
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@77
    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    #@79
    .line 219
    new-instance v2, Ljava/util/LinkedList;

    #@7b
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@7e
    iput-object v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    #@80
    .line 221
    new-instance v0, Landroid/content/IntentFilter;

    #@82
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@85
    .line 222
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    #@88
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@8b
    .line 223
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@8d
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@90
    .line 199
    return-void
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 11
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    #@8
    if-le v0, v1, :cond_0

    #@a
    .line 382
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    #@c
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    #@f
    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    #@11
    new-instance v1, Lcom/android/server/VibratorService$VibrationInfo;

    #@13
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)J

    #@16
    move-result-wide v2

    #@17
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)J

    #@1a
    move-result-wide v4

    #@1b
    .line 385
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)[J

    #@1e
    move-result-object v6

    #@1f
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)I

    #@22
    move-result v7

    #@23
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    #@26
    move-result v8

    #@27
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)I

    #@2a
    move-result v9

    #@2b
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    #@2e
    move-result-object v10

    #@2f
    .line 384
    invoke-direct/range {v1 .. v10}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JJ[JIIILjava/lang/String;)V

    #@32
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    #@35
    .line 380
    return-void
.end method

.method private doCancelVibrateLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 425
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 426
    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    #@7
    monitor-enter v1

    #@8
    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    #@a
    const/4 v2, 0x1

    #@b
    iput-boolean v2, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    #@d
    .line 428
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    #@f
    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 430
    iput-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    #@15
    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    #@18
    .line 433
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    #@1a
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@1f
    .line 434
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    #@22
    .line 424
    return-void

    #@23
    .line 426
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0
.end method

.method private doVibratorExists()Z
    .locals 1

    #@0
    .prologue
    .line 608
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private doVibratorOff()V
    .locals 6

    #@0
    .prologue
    .line 635
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    #@2
    monitor-enter v4

    #@3
    .line 639
    :try_start_0
    iget v3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-ltz v3, :cond_0

    #@7
    .line 641
    :try_start_1
    iget-object v3, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    #@9
    iget v5, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    #@b
    invoke-interface {v3, v5}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    .line 644
    :goto_0
    const/4 v3, -0x1

    #@f
    :try_start_2
    iput v3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    #@11
    .line 646
    :cond_0
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v2

    #@17
    .line 647
    .local v2, "vibratorCount":I
    if-eqz v2, :cond_1

    #@19
    .line 648
    const/4 v1, 0x0

    #@1a
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    #@1c
    .line 649
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Landroid/os/Vibrator;

    #@24
    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    #@27
    .line 648
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 652
    .end local v1    # "i":I
    :cond_1
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    :cond_2
    monitor-exit v4

    #@2e
    .line 634
    return-void

    #@2f
    .line 635
    .end local v2    # "vibratorCount":I
    :catchall_0
    move-exception v3

    #@30
    monitor-exit v4

    #@31
    throw v3

    #@32
    .line 642
    :catch_0
    move-exception v0

    #@33
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private doVibratorOn(JII)V
    .locals 7
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I

    #@0
    .prologue
    .line 612
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    #@2
    monitor-enter v5

    #@3
    .line 617
    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    #@5
    invoke-interface {v4, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    #@8
    .line 618
    iput p3, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 621
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v3

    #@10
    .line 622
    .local v3, "vibratorCount":I
    if-eqz v3, :cond_0

    #@12
    .line 623
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    #@14
    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@17
    invoke-virtual {v4, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@1e
    move-result-object v0

    #@1f
    .line 625
    .local v0, "attributes":Landroid/media/AudioAttributes;
    const/4 v2, 0x0

    #@20
    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    #@22
    .line 626
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Landroid/os/Vibrator;

    #@2a
    invoke-virtual {v4, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    #@2d
    .line 625
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 629
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    .end local v2    # "i":I
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    :cond_1
    monitor-exit v5

    #@34
    .line 611
    return-void

    #@35
    .line 612
    .end local v3    # "vibratorCount":I
    :catchall_0
    move-exception v4

    #@36
    monitor-exit v5

    #@37
    throw v4

    #@38
    .line 619
    :catch_0
    move-exception v1

    #@39
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private isAll0([J)Z
    .locals 6
    .param p1, "pattern"    # [J

    #@0
    .prologue
    .line 318
    array-length v0, p1

    #@1
    .line 319
    .local v0, "N":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@4
    .line 320
    aget-wide v2, p1, v1

    #@6
    const-wide/16 v4, 0x0

    #@8
    cmp-long v2, v2, v4

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 321
    const/4 v2, 0x0

    #@d
    return v2

    #@e
    .line 319
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 324
    :cond_1
    const/4 v2, 0x1

    #@12
    return v2
.end method

.method private removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 514
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    #@3
    const/4 v3, 0x0

    #@4
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    #@7
    move-result-object v0

    #@8
    .line 515
    .local v0, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 516
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/VibratorService$Vibration;

    #@14
    .line 517
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    #@17
    move-result-object v2

    #@18
    if-ne v2, p1, :cond_0

    #@1a
    .line 518
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    #@1d
    .line 519
    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    #@20
    .line 520
    return-object v1

    #@21
    .line 525
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :cond_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    #@23
    if-eqz v2, :cond_2

    #@25
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    #@27
    invoke-static {v2}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    #@2a
    move-result-object v2

    #@2b
    if-ne v2, p1, :cond_2

    #@2d
    .line 526
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    #@2f
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    #@32
    .line 527
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    #@34
    return-object v2

    #@35
    .line 529
    :cond_2
    return-object v4
.end method

.method private reportFinishVibrationLocked()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 501
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@7
    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@9
    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    #@c
    move-result-object v2

    #@d
    .line 504
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    #@f
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)I

    #@12
    move-result v3

    #@13
    .line 505
    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    #@15
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    .line 504
    const/4 v5, 0x3

    #@1a
    .line 503
    invoke-interface {v1, v2, v5, v3, v4}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 508
    :goto_0
    iput-object v6, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    #@1f
    .line 500
    :cond_0
    return-void

    #@20
    .line 506
    :catch_0
    move-exception v0

    #@21
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private shouldVibrateForRingtone()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 489
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v5, "audio"

    #@7
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/media/AudioManager;

    #@d
    .line 490
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    #@10
    move-result v1

    #@11
    .line 493
    .local v1, "ringerMode":I
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@16
    move-result-object v4

    #@17
    const-string/jumbo v5, "vibrate_when_ringing"

    #@1a
    .line 492
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_1

    #@20
    .line 494
    if-eqz v1, :cond_0

    #@22
    :goto_0
    return v2

    #@23
    :cond_0
    move v2, v3

    #@24
    goto :goto_0

    #@25
    .line 496
    :cond_1
    if-ne v1, v2, :cond_2

    #@27
    :goto_1
    return v2

    #@28
    :cond_2
    move v2, v3

    #@29
    goto :goto_1
.end method

.method private startNextVibrationLocked()V
    .locals 1

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    #@5
    move-result v0

    #@6
    if-gtz v0, :cond_0

    #@8
    .line 440
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    #@b
    .line 441
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    #@e
    .line 442
    return-void

    #@f
    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    #@11
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/server/VibratorService$Vibration;

    #@17
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    #@1a
    .line 438
    return-void
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 7
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    #@0
    .prologue
    const/4 v3, 0x6

    #@1
    .line 450
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 451
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    #@8
    move-result v2

    #@9
    if-eq v2, v3, :cond_0

    #@b
    .line 452
    return-void

    #@c
    .line 455
    :cond_0
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    #@f
    move-result v2

    #@10
    if-ne v2, v3, :cond_1

    #@12
    .line 456
    invoke-direct {p0}, Lcom/android/server/VibratorService;->shouldVibrateForRingtone()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_3

    #@18
    .line 460
    :cond_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@1a
    .line 461
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    #@1d
    move-result v3

    #@1e
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)I

    #@21
    move-result v4

    #@22
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    .line 460
    const/4 v6, 0x3

    #@27
    invoke-interface {v2, v6, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    #@2a
    move-result v1

    #@2b
    .line 462
    .local v1, "mode":I
    if-nez v1, :cond_2

    #@2d
    .line 463
    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@2f
    iget-object v3, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    #@31
    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    #@34
    move-result-object v3

    #@35
    .line 464
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)I

    #@38
    move-result v4

    #@39
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    const/4 v6, 0x3

    #@3e
    .line 463
    invoke-interface {v2, v3, v6, v4, v5}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    #@41
    move-result v1

    #@42
    .line 466
    :cond_2
    if-nez v1, :cond_4

    #@44
    .line 467
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    .line 477
    .end local v1    # "mode":I
    :goto_0
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)J

    #@49
    move-result-wide v2

    #@4a
    const-wide/16 v4, 0x0

    #@4c
    cmp-long v2, v2, v4

    #@4e
    if-eqz v2, :cond_6

    #@50
    .line 478
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)J

    #@53
    move-result-wide v2

    #@54
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)I

    #@57
    move-result v4

    #@58
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    #@5b
    move-result v5

    #@5c
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/VibratorService;->doVibratorOn(JII)V

    #@5f
    .line 479
    iget-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    #@61
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    #@63
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)J

    #@66
    move-result-wide v4

    #@67
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@6a
    .line 448
    :goto_1
    return-void

    #@6b
    .line 457
    :cond_3
    return-void

    #@6c
    .line 469
    .restart local v1    # "mode":I
    :cond_4
    const/4 v2, 0x2

    #@6d
    if-ne v1, v2, :cond_5

    #@6f
    .line 470
    :try_start_1
    const-string/jumbo v2, "VibratorService"

    #@72
    new-instance v3, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v4, "Would be an error: vibrate from uid "

    #@7a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)I

    #@81
    move-result v4

    #@82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v3

    #@8a
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    .line 472
    :cond_5
    iget-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    #@8f
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrationRunnable:Ljava/lang/Runnable;

    #@91
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@94
    .line 473
    return-void

    #@95
    .line 483
    .end local v1    # "mode":I
    :cond_6
    new-instance v2, Lcom/android/server/VibratorService$VibrateThread;

    #@97
    invoke-direct {v2, p0, p1}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    #@9a
    iput-object v2, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    #@9c
    .line 484
    iget-object v2, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    #@9e
    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    #@a1
    goto :goto_1

    #@a2
    .line 475
    :catch_0
    move-exception v0

    #@a3
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    #@0
    .prologue
    .line 533
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)[J

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 536
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    const/4 v1, 0x0

    #@b
    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@e
    .line 532
    :cond_0
    return-void
.end method

.method private updateInputDeviceVibrators()V
    .locals 12

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 541
    iget-object v7, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    #@4
    monitor-enter v7

    #@5
    .line 542
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    #@8
    .line 544
    iget-object v8, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    #@a
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@b
    .line 545
    const/4 v9, 0x0

    #@c
    :try_start_1
    iput-boolean v9, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    .line 548
    :try_start_2
    iget-object v9, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@13
    move-result-object v9

    #@14
    .line 549
    const-string/jumbo v10, "vibrate_input_devices"

    #@17
    const/4 v11, -0x2

    #@18
    .line 547
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1b
    move-result v9

    #@1c
    if-lez v9, :cond_2

    #@1e
    :goto_0
    iput-boolean v5, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    .line 553
    :goto_1
    :try_start_3
    iget-object v5, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@22
    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    #@25
    move-result v5

    #@26
    iput-boolean v5, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    #@28
    .line 555
    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    #@2a
    if-eqz v5, :cond_3

    #@2c
    .line 556
    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    #@2e
    if-nez v5, :cond_0

    #@30
    .line 557
    const/4 v5, 0x1

    #@31
    iput-boolean v5, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    #@33
    .line 558
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    #@35
    iget-object v6, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    #@37
    invoke-virtual {v5, p0, v6}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    #@3a
    .line 567
    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@3f
    .line 568
    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    #@41
    if-eqz v5, :cond_4

    #@43
    .line 569
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    #@45
    invoke-virtual {v5}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    #@48
    move-result-object v2

    #@49
    .line 570
    .local v2, "ids":[I
    const/4 v1, 0x0

    #@4a
    .local v1, "i":I
    :goto_3
    array-length v5, v2

    #@4b
    if-ge v1, v5, :cond_4

    #@4d
    .line 571
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    #@4f
    aget v6, v2, v1

    #@51
    invoke-virtual {v5, v6}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    #@54
    move-result-object v0

    #@55
    .line 572
    .local v0, "device":Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    #@58
    move-result-object v4

    #@59
    .line 573
    .local v4, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    #@5c
    move-result v5

    #@5d
    if-eqz v5, :cond_1

    #@5f
    .line 574
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    #@61
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@64
    .line 570
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@66
    goto :goto_3

    #@67
    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    .end local v4    # "vibrator":Landroid/os/Vibrator;
    :cond_2
    move v5, v6

    #@68
    .line 547
    goto :goto_0

    #@69
    .line 561
    :cond_3
    iget-boolean v5, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    #@6b
    if-eqz v5, :cond_0

    #@6d
    .line 562
    const/4 v5, 0x0

    #@6e
    iput-boolean v5, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    #@70
    .line 563
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    #@72
    invoke-virtual {v5, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@75
    goto :goto_2

    #@76
    .line 544
    :catchall_0
    move-exception v5

    #@77
    :try_start_4
    monitor-exit v8

    #@78
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@79
    .line 541
    :catchall_1
    move-exception v5

    #@7a
    monitor-exit v7

    #@7b
    throw v5

    #@7c
    :cond_4
    :try_start_5
    monitor-exit v8

    #@7d
    .line 580
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@80
    monitor-exit v7

    #@81
    .line 540
    return-void

    #@82
    .line 550
    :catch_0
    move-exception v3

    #@83
    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_1
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 270
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_0

    #@6
    .line 271
    return-void

    #@7
    .line 273
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@a
    move-result v0

    #@b
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@e
    move-result v1

    #@f
    if-ne v0, v1, :cond_1

    #@11
    .line 274
    return-void

    #@12
    .line 276
    :cond_1
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    #@14
    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    #@17
    .line 277
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v2

    #@1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1e
    move-result v3

    #@1f
    const/4 v4, 0x0

    #@20
    .line 276
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@23
    .line 269
    return-void
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorInit()V
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 390
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    #@2
    .line 391
    const-string/jumbo v4, "android.permission.VIBRATE"

    #@5
    .line 392
    const-string/jumbo v5, "cancelVibrate"

    #@8
    .line 390
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 395
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 397
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    #@11
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@12
    .line 398
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    #@15
    move-result-object v2

    #@16
    .line 399
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    #@18
    if-ne v2, v3, :cond_0

    #@1a
    .line 403
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    #@1d
    .line 404
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    :cond_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@21
    .line 409
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 389
    return-void

    #@25
    .line 397
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_0
    move-exception v3

    #@26
    :try_start_3
    monitor-exit v4

    #@27
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@28
    .line 408
    :catchall_1
    move-exception v3

    #@29
    .line 409
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 408
    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 771
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.DUMP"

    #@5
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 774
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Permission Denial: can\'t dump vibrator service from from pid="

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 775
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v3

    #@1b
    .line 774
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 776
    const-string/jumbo v3, ", uid="

    #@22
    .line 774
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 776
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v3

    #@2a
    .line 774
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 777
    return-void

    #@36
    .line 779
    :cond_0
    const-string/jumbo v2, "Previous vibrations:"

    #@39
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 780
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    #@3e
    monitor-enter v3

    #@3f
    .line 781
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    #@41
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@44
    move-result-object v1

    #@45
    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@48
    move-result v2

    #@49
    if-eqz v2, :cond_1

    #@4b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4e
    move-result-object v0

    #@4f
    check-cast v0, Lcom/android/server/VibratorService$VibrationInfo;

    #@51
    .line 782
    .local v0, "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string/jumbo v2, "  "

    #@54
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    .line 783
    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5e
    goto :goto_0

    #@5f
    .line 780
    .end local v0    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@60
    monitor-exit v3

    #@61
    throw v2

    #@62
    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v3

    #@63
    .line 770
    return-void
.end method

.method public hasVibrator()Z
    .locals 1

    #@0
    .prologue
    .line 266
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 586
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    #@3
    .line 585
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 591
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    #@3
    .line 590
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 596
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    #@3
    .line 595
    return-void
.end method

.method public systemReady()V
    .locals 5

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    #@2
    const-class v1, Landroid/hardware/input/InputManager;

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/hardware/input/InputManager;

    #@a
    iput-object v0, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    #@c
    .line 228
    new-instance v0, Lcom/android/server/VibratorService$SettingsObserver;

    #@e
    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    #@10
    invoke-direct {v0, p0, v1}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    #@13
    iput-object v0, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    #@15
    .line 230
    const-class v0, Landroid/os/PowerManagerInternal;

    #@17
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/os/PowerManagerInternal;

    #@1d
    iput-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@1f
    .line 231
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@21
    .line 232
    new-instance v1, Lcom/android/server/VibratorService$3;

    #@23
    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    #@26
    .line 231
    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    #@29
    .line 239
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    #@2b
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2e
    move-result-object v0

    #@2f
    .line 240
    const-string/jumbo v1, "vibrate_input_devices"

    #@32
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@35
    move-result-object v1

    #@36
    .line 241
    iget-object v2, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    #@38
    const/4 v3, 0x1

    #@39
    const/4 v4, -0x1

    #@3a
    .line 239
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@3d
    .line 243
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    #@3f
    new-instance v1, Lcom/android/server/VibratorService$4;

    #@41
    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    #@44
    .line 248
    new-instance v2, Landroid/content/IntentFilter;

    #@46
    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    #@49
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@4c
    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    #@4e
    const/4 v4, 0x0

    #@4f
    .line 243
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@52
    .line 250
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibrators()V

    #@55
    .line 226
    return-void
.end method

.method public vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V
    .locals 15
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 283
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.VIBRATE"

    #@5
    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 285
    new-instance v2, Ljava/lang/SecurityException;

    #@d
    const-string/jumbo v4, "Requires VIBRATE permission"

    #@10
    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2

    #@14
    .line 287
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    #@17
    .line 291
    const-wide/16 v4, 0x0

    #@19
    cmp-long v2, p3, v4

    #@1b
    if-lez v2, :cond_1

    #@1d
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    #@1f
    if-eqz v2, :cond_2

    #@21
    .line 292
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    #@23
    move-wide/from16 v0, p3

    #@25
    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    #@28
    move-result v2

    #@29
    .line 291
    if-eqz v2, :cond_2

    #@2b
    .line 295
    :cond_1
    return-void

    #@2c
    .line 302
    :cond_2
    new-instance v3, Lcom/android/server/VibratorService$Vibration;

    #@2e
    move-object v4, p0

    #@2f
    move-object/from16 v5, p6

    #@31
    move-wide/from16 v6, p3

    #@33
    move/from16 v8, p5

    #@35
    move/from16 v9, p1

    #@37
    move-object/from16 v10, p2

    #@39
    invoke-direct/range {v3 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;)V

    #@3c
    .line 304
    .local v3, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3f
    move-result-wide v12

    #@40
    .line 306
    .local v12, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    #@42
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@43
    .line 307
    :try_start_1
    move-object/from16 v0, p6

    #@45
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    #@48
    .line 308
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    #@4b
    .line 309
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V

    #@4e
    .line 310
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@52
    .line 313
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@55
    .line 282
    return-void

    #@56
    .line 306
    :catchall_0
    move-exception v2

    #@57
    :try_start_3
    monitor-exit v4

    #@58
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@59
    .line 312
    :catchall_1
    move-exception v2

    #@5a
    .line 313
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5d
    .line 312
    throw v2
.end method

.method public vibratePattern(ILjava/lang/String;[JIILandroid/os/IBinder;)V
    .locals 14
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 330
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.VIBRATE"

    #@5
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 332
    new-instance v3, Ljava/lang/SecurityException;

    #@d
    const-string/jumbo v4, "Requires VIBRATE permission"

    #@10
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@13
    throw v3

    #@14
    .line 334
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    #@17
    .line 336
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1a
    move-result-wide v12

    #@1b
    .line 348
    .local v12, "identity":J
    if-eqz p3, :cond_1

    #@1d
    :try_start_0
    move-object/from16 v0, p3

    #@1f
    array-length v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@20
    if-nez v3, :cond_2

    #@22
    .line 376
    :cond_1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 351
    return-void

    #@26
    .line 349
    :cond_2
    :try_start_1
    move-object/from16 v0, p3

    #@28
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->isAll0([J)Z

    #@2b
    move-result v3

    #@2c
    .line 348
    if-nez v3, :cond_1

    #@2e
    .line 350
    move-object/from16 v0, p3

    #@30
    array-length v3, v0

    #@31
    move/from16 v0, p4

    #@33
    if-ge v0, v3, :cond_1

    #@35
    if-eqz p6, :cond_1

    #@37
    .line 354
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    #@39
    move-object v3, p0

    #@3a
    move-object/from16 v4, p6

    #@3c
    move-object/from16 v5, p3

    #@3e
    move/from16 v6, p4

    #@40
    move/from16 v7, p5

    #@42
    move v8, p1

    #@43
    move-object/from16 v9, p2

    #@45
    invoke-direct/range {v2 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@48
    .line 356
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    const/4 v3, 0x0

    #@49
    :try_start_2
    move-object/from16 v0, p6

    #@4b
    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4e
    .line 361
    :try_start_3
    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    #@50
    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@51
    .line 362
    :try_start_4
    move-object/from16 v0, p6

    #@53
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    #@56
    .line 363
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    #@59
    .line 364
    if-ltz p4, :cond_3

    #@5b
    .line 365
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;

    #@5d
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@60
    .line 366
    invoke-direct {p0}, Lcom/android/server/VibratorService;->startNextVibrationLocked()V

    #@63
    .line 372
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@66
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@67
    .line 376
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6a
    .line 329
    return-void

    #@6b
    .line 357
    :catch_0
    move-exception v10

    #@6c
    .line 376
    .local v10, "e":Landroid/os/RemoteException;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6f
    .line 358
    return-void

    #@70
    .line 370
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_6
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@73
    goto :goto_0

    #@74
    .line 361
    :catchall_0
    move-exception v3

    #@75
    :try_start_7
    monitor-exit v4

    #@76
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@77
    .line 375
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_1
    move-exception v3

    #@78
    .line 376
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@7b
    .line 375
    throw v3
.end method
