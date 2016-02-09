.class public final Landroid/os/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$WakeLock;
    }
.end annotation


# static fields
.field public static final ACQUIRE_CAUSES_WAKEUP:I = 0x10000000

.field public static final ACTION_DEVICE_IDLE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.DEVICE_IDLE_MODE_CHANGED"

.field public static final ACTION_POWER_SAVE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGED"

.field public static final ACTION_POWER_SAVE_MODE_CHANGING:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGING"

.field public static final ACTION_POWER_SAVE_TEMP_WHITELIST_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

.field public static final ACTION_POWER_SAVE_WHITELIST_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

.field public static final ACTION_SCREEN_BRIGHTNESS_BOOST_CHANGED:Ljava/lang/String; = "android.os.action.SCREEN_BRIGHTNESS_BOOST_CHANGED"

.field public static final BRIGHTNESS_DEFAULT:I = -0x1

.field public static final BRIGHTNESS_OFF:I = 0x0

.field public static final BRIGHTNESS_ON:I = 0xff

.field public static final DOZE_WAKE_LOCK:I = 0x40

.field public static final DRAW_WAKE_LOCK:I = 0x80

.field public static final EXTRA_POWER_SAVE_MODE:Ljava/lang/String; = "mode"

.field public static final FULL_WAKE_LOCK:I = 0x1a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GO_TO_SLEEP_FLAG_NO_DOZE:I = 0x1

.field public static final GO_TO_SLEEP_REASON_APPLICATION:I = 0x0

.field public static final GO_TO_SLEEP_REASON_DEVICE_ADMIN:I = 0x1

.field public static final GO_TO_SLEEP_REASON_HDMI:I = 0x5

.field public static final GO_TO_SLEEP_REASON_LID_SWITCH:I = 0x3

.field public static final GO_TO_SLEEP_REASON_POWER_BUTTON:I = 0x4

.field public static final GO_TO_SLEEP_REASON_SLEEP_BUTTON:I = 0x6

.field public static final GO_TO_SLEEP_REASON_TIMEOUT:I = 0x2

.field public static final ON_AFTER_RELEASE:I = 0x20000000

.field public static final PARTIAL_WAKE_LOCK:I = 0x1

.field public static final PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field public static final REBOOT_RECOVERY:Ljava/lang/String; = "recovery"

.field public static final RELEASE_FLAG_WAIT_FOR_NO_PROXIMITY:I = 0x1

.field public static final SCREEN_BRIGHT_WAKE_LOCK:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCREEN_DIM_WAKE_LOCK:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PowerManager"

.field public static final UNIMPORTANT_FOR_LOGGING:I = 0x40000000

.field public static final USER_ACTIVITY_EVENT_BUTTON:I = 0x1

.field public static final USER_ACTIVITY_EVENT_OTHER:I = 0x0

.field public static final USER_ACTIVITY_EVENT_TOUCH:I = 0x2

.field public static final USER_ACTIVITY_FLAG_INDIRECT:I = 0x2

.field public static final USER_ACTIVITY_FLAG_NO_CHANGE_LIGHTS:I = 0x1

.field public static final WAKE_LOCK_LEVEL_MASK:I = 0xffff


# instance fields
.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field mIDeviceIdleController:Landroid/os/IDeviceIdleController;

.field final mService:Landroid/os/IPowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IPowerManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IPowerManager;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 401
    iput-object p1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    #@5
    .line 402
    iput-object p2, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@7
    .line 403
    iput-object p3, p0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    #@9
    .line 400
    return-void
.end method

.method public static useTwilightAdjustmentFeature()Z
    .locals 2

    #@0
    .prologue
    .line 443
    const-string/jumbo v0, "persist.power.usetwilightadj"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static validateWakeLockParameters(ILjava/lang/String;)V
    .locals 2
    .param p0, "levelAndFlags"    # I
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 507
    const v0, 0xffff

    #@3
    and-int/2addr v0, p0

    #@4
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Must specify a valid wake lock level."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 519
    :sswitch_0
    if-nez p1, :cond_0

    #@12
    .line 520
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "The tag must not be null."

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 506
    :cond_0
    return-void

    #@1c
    .line 507
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public boostScreenBrightness(J)V
    .locals 3
    .param p1, "time"    # J

    #@0
    .prologue
    .line 721
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/IPowerManager;->boostScreenBrightness(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 719
    :goto_0
    return-void

    #@6
    .line 722
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDefaultScreenBrightnessSetting()I
    .locals 2

    #@0
    .prologue
    .line 433
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 434
    const v1, 0x10e005d

    #@9
    .line 433
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getMaximumScreenBrightnessSetting()I
    .locals 2

    #@0
    .prologue
    .line 424
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 425
    const v1, 0x10e005c

    #@9
    .line 424
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getMinimumScreenBrightnessSetting()I
    .locals 2

    #@0
    .prologue
    .line 413
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 414
    const v1, 0x10e005b

    #@9
    .line 413
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public goToSleep(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 609
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/os/PowerManager;->goToSleep(JII)V

    #@4
    .line 608
    return-void
.end method

.method public goToSleep(JII)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 635
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@2
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/IPowerManager;->goToSleep(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 633
    :goto_0
    return-void

    #@6
    .line 636
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isDeviceIdleMode()Z
    .locals 2

    #@0
    .prologue
    .line 900
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@2
    invoke-interface {v1}, Landroid/os/IPowerManager;->isDeviceIdleMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 901
    :catch_0
    move-exception v0

    #@8
    .line 902
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public isIgnoringBatteryOptimizations(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 912
    monitor-enter p0

    #@1
    .line 913
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mIDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 915
    const-string/jumbo v1, "deviceidle"

    #@8
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v1

    #@c
    .line 914
    invoke-static {v1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Landroid/os/PowerManager;->mIDeviceIdleController:Landroid/os/IDeviceIdleController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 919
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager;->mIDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@15
    invoke-interface {v1, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@18
    move-result v1

    #@19
    return v1

    #@1a
    .line 912
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit p0

    #@1c
    throw v1

    #@1d
    .line 920
    :catch_0
    move-exception v0

    #@1e
    .line 921
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@1f
    return v1
.end method

.method public isInteractive()Z
    .locals 2

    #@0
    .prologue
    .line 831
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@2
    invoke-interface {v1}, Landroid/os/IPowerManager;->isInteractive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 832
    :catch_0
    move-exception v0

    #@8
    .line 833
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public isPowerSaveMode()Z
    .locals 2

    #@0
    .prologue
    .line 863
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@2
    invoke-interface {v1}, Landroid/os/IPowerManager;->isPowerSaveMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 864
    :catch_0
    move-exception v0

    #@8
    .line 865
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public isScreenBrightnessBoosted()Z
    .locals 2

    #@0
    .prologue
    .line 736
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@2
    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenBrightnessBoosted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 737
    :catch_0
    move-exception v0

    #@8
    .line 738
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public isScreenOn()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 792
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isWakeLockLevelSupported(I)Z
    .locals 2
    .param p1, "level"    # I

    #@0
    .prologue
    .line 767
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->isWakeLockLevelSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 768
    :catch_0
    move-exception v0

    #@8
    .line 769
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public nap(J)V
    .locals 3
    .param p1, "time"    # J

    #@0
    .prologue
    .line 699
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/IPowerManager;->nap(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 697
    :goto_0
    return-void

    #@6
    .line 700
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 2
    .param p1, "levelAndFlags"    # I
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 501
    invoke-static {p1, p2}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    #@3
    .line 502
    new-instance v0, Landroid/os/PowerManager$WakeLock;

    #@5
    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-direct {v0, p0, p1, p2, v1}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;)V

    #@e
    return-object v0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 848
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x1

    #@4
    invoke-interface {v1, v2, p1, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 846
    :goto_0
    return-void

    #@8
    .line 849
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setBacklightBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    #@0
    .prologue
    .line 754
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 752
    :goto_0
    return-void

    #@6
    .line 755
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setPowerSaveMode(Z)Z
    .locals 2
    .param p1, "mode"    # Z

    #@0
    .prologue
    .line 880
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setPowerSaveMode(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 881
    :catch_0
    move-exception v0

    #@8
    .line 882
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public shutdown(ZZ)V
    .locals 2
    .param p1, "confirm"    # Z
    .param p2, "wait"    # Z

    #@0
    .prologue
    .line 935
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/IPowerManager;->shutdown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 933
    :goto_0
    return-void

    #@6
    .line 936
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public userActivity(JII)V
    .locals 3
    .param p1, "when"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 584
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@2
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/IPowerManager;->userActivity(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 582
    :goto_0
    return-void

    #@6
    .line 585
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public userActivity(JZ)V
    .locals 3
    .param p1, "when"    # J
    .param p3, "noChangeLights"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 554
    if-eqz p3, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    .line 553
    :goto_0
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/os/PowerManager;->userActivity(JII)V

    #@7
    .line 552
    return-void

    #@8
    :cond_0
    move v0, v1

    #@9
    .line 554
    goto :goto_0
.end method

.method public wakeUp(J)V
    .locals 5
    .param p1, "time"    # J

    #@0
    .prologue
    .line 661
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@2
    const-string/jumbo v2, "wakeUp"

    #@5
    iget-object v3, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v1, p1, p2, v2, v3}, Landroid/os/IPowerManager;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 659
    :goto_0
    return-void

    #@f
    .line 662
    :catch_0
    move-exception v0

    #@10
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public wakeUp(JLjava/lang/String;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 671
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@2
    iget-object v2, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, p1, p2, p3, v2}, Landroid/os/IPowerManager;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 669
    :goto_0
    return-void

    #@c
    .line 672
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
