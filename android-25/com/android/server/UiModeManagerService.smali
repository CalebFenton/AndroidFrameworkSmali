.class final Lcom/android/server/UiModeManagerService;
.super Lcom/android/server/SystemService;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UiModeManagerService$1;,
        Lcom/android/server/UiModeManagerService$2;,
        Lcom/android/server/UiModeManagerService$3;,
        Lcom/android/server/UiModeManagerService$4;,
        Lcom/android/server/UiModeManagerService$5;
    }
.end annotation


# static fields
.field private static final ENABLE_LAUNCH_DESK_DOCK_APP:Z = true

.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeEnableFlags:I

.field private mCarModeEnabled:Z

.field private mCarModeKeepsScreenOn:Z

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field mCurUiMode:I

.field private mDefaultUiModeType:I

.field private mDeskModeKeepsScreenOn:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private mEnableCarDockLaunch:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field private mLastBroadcastState:I

.field final mLock:Ljava/lang/Object;

.field private mNightMode:I

.field private mNightModeLocked:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Landroid/os/IBinder;

.field private mSetUiMode:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mSystemReady:Z

.field private mTelevision:Z

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field private mUiModeLocked:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWatch:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/UiModeManagerService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/UiModeManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/UiModeManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/UiModeManagerService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "enableFlags"    # I
    .param p3, "disableFlags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateAfterBroadcastLocked(Ljava/lang/String;II)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/UiModeManagerService;I)V
    .locals 0
    .param p1, "newState"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->updateDockState(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 57
    const-class v0, Landroid/app/UiModeManager;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    #@8
    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@5
    .line 63
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    #@c
    .line 64
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    #@e
    .line 66
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    #@10
    .line 67
    iput v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    #@12
    .line 69
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    #@14
    .line 70
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    #@16
    .line 80
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    #@18
    .line 82
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    #@1a
    .line 84
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    #@1c
    .line 86
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    #@1e
    .line 87
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    #@20
    .line 88
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    #@22
    .line 90
    new-instance v0, Landroid/content/res/Configuration;

    #@24
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@27
    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@29
    .line 93
    new-instance v0, Landroid/os/Handler;

    #@2b
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@2e
    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    #@30
    .line 117
    new-instance v0, Lcom/android/server/UiModeManagerService$1;

    #@32
    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    #@35
    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    #@37
    .line 136
    new-instance v0, Lcom/android/server/UiModeManagerService$2;

    #@39
    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    #@3c
    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    #@3e
    .line 145
    new-instance v0, Lcom/android/server/UiModeManagerService$3;

    #@40
    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    #@43
    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    #@45
    .line 157
    new-instance v0, Lcom/android/server/UiModeManagerService$4;

    #@47
    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    #@4a
    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    #@4c
    .line 215
    new-instance v0, Lcom/android/server/UiModeManagerService$5;

    #@4e
    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    #@51
    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/os/IBinder;

    #@53
    .line 101
    return-void
.end method

.method private adjustStatusBarCarModeLocked()V
    .locals 11

    #@0
    .prologue
    const v10, 0x1040486

    #@3
    const/4 v1, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    .line 631
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    .line 632
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    #@b
    if-nez v3, :cond_0

    #@d
    .line 634
    const-string/jumbo v3, "statusbar"

    #@10
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    .line 633
    check-cast v3, Landroid/app/StatusBarManager;

    #@16
    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    #@18
    .line 642
    :cond_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 643
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    #@1e
    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    #@20
    if-eqz v3, :cond_4

    #@22
    .line 644
    const/high16 v3, 0x80000

    #@24
    .line 643
    :goto_0
    invoke-virtual {v5, v3}, Landroid/app/StatusBarManager;->disable(I)V

    #@27
    .line 648
    :cond_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@29
    if-nez v3, :cond_2

    #@2b
    .line 650
    const-string/jumbo v3, "notification"

    #@2e
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    .line 649
    check-cast v3, Landroid/app/NotificationManager;

    #@34
    iput-object v3, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@36
    .line 653
    :cond_2
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@38
    if-eqz v3, :cond_3

    #@3a
    .line 654
    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    #@3c
    if-eqz v3, :cond_5

    #@3e
    .line 655
    new-instance v2, Landroid/content/Intent;

    #@40
    const-class v3, Lcom/android/internal/app/DisableCarModeActivity;

    #@42
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@45
    .line 657
    .local v2, "carModeOffIntent":Landroid/content/Intent;
    new-instance v3, Landroid/app/Notification$Builder;

    #@47
    invoke-direct {v3, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@4a
    .line 658
    const v5, 0x10806cd

    #@4d
    .line 657
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@50
    move-result-object v3

    #@51
    .line 659
    const/4 v5, 0x4

    #@52
    .line 657
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@55
    move-result-object v3

    #@56
    .line 660
    const/4 v5, 0x1

    #@57
    .line 657
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@5a
    move-result-object v3

    #@5b
    .line 661
    const-wide/16 v8, 0x0

    #@5d
    .line 657
    invoke-virtual {v3, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@60
    move-result-object v3

    #@61
    .line 663
    const v5, 0x106005b

    #@64
    .line 662
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    #@67
    move-result v5

    #@68
    .line 657
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@6b
    move-result-object v3

    #@6c
    .line 665
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    .line 657
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@73
    move-result-object v3

    #@74
    .line 667
    const v5, 0x1040487

    #@77
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@7a
    move-result-object v5

    #@7b
    .line 657
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@7e
    move-result-object v7

    #@7f
    .line 670
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@81
    move v3, v1

    #@82
    .line 669
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@85
    move-result-object v1

    #@86
    .line 657
    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@89
    move-result-object v6

    #@8a
    .line 671
    .local v6, "n":Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@8c
    .line 672
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@8f
    move-result-object v3

    #@90
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@92
    .line 671
    invoke-virtual {v1, v4, v10, v3, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@95
    .line 630
    .end local v2    # "carModeOffIntent":Landroid/content/Intent;
    .end local v6    # "n":Landroid/app/Notification$Builder;
    :cond_3
    :goto_1
    return-void

    #@96
    :cond_4
    move v3, v1

    #@97
    .line 645
    goto :goto_0

    #@98
    .line 674
    :cond_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    #@9a
    .line 675
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@9c
    .line 674
    invoke-virtual {v1, v4, v10, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@9f
    goto :goto_1
.end method

.method private static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "category"    # Ljava/lang/String;

    #@0
    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.MAIN"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 107
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@b
    .line 108
    const/high16 v1, 0x10200000

    #@d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@10
    .line 110
    return-object v0
.end method

.method private static isDeskDockState(I)Z
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 392
    packed-switch p0, :pswitch_data_0

    #@3
    .line 398
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 396
    :pswitch_1
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 392
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V
    .locals 15
    .param p1, "category"    # Ljava/lang/String;

    #@0
    .prologue
    .line 590
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    #@3
    .line 591
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    #@6
    .line 594
    const/4 v12, 0x0

    #@7
    .line 595
    .local v12, "dockAppStarted":Z
    if-eqz p1, :cond_0

    #@9
    .line 603
    invoke-static/range {p1 .. p1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    #@c
    move-result-object v3

    #@d
    .line 604
    .local v3, "homeIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0, v3}, Landroid/service/dreams/Sandman;->shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 606
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1a
    move-result-object v0

    #@1b
    .line 608
    iget-object v9, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@1d
    .line 607
    const/4 v1, 0x0

    #@1e
    const/4 v2, 0x0

    #@1f
    const/4 v4, 0x0

    #@20
    const/4 v5, 0x0

    #@21
    const/4 v6, 0x0

    #@22
    const/4 v7, 0x0

    #@23
    const/4 v8, 0x0

    #@24
    .line 608
    const/4 v10, 0x0

    #@25
    const/4 v11, -0x2

    #@26
    .line 606
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result v14

    #@2a
    .line 609
    .local v14, "result":I
    if-ltz v14, :cond_2

    #@2c
    .line 610
    const/4 v12, 0x1

    #@2d
    .line 622
    .end local v3    # "homeIntent":Landroid/content/Intent;
    .end local v14    # "result":I
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->sendConfigurationLocked()V

    #@30
    .line 625
    if-eqz p1, :cond_1

    #@32
    if-eqz v12, :cond_3

    #@34
    .line 588
    :cond_1
    :goto_1
    return-void

    #@35
    .line 611
    .restart local v3    # "homeIntent":Landroid/content/Intent;
    .restart local v14    # "result":I
    :cond_2
    const/4 v0, -0x1

    #@36
    if-eq v14, v0, :cond_0

    #@38
    .line 612
    :try_start_1
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    #@3a
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v2, "Could not start dock app: "

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    .line 613
    const-string/jumbo v2, ", startActivityWithConfig result "

    #@4d
    .line 612
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@5c
    goto :goto_0

    #@5d
    .line 615
    .end local v14    # "result":I
    :catch_0
    move-exception v13

    #@5e
    .line 616
    .local v13, "ex":Landroid/os/RemoteException;
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    #@60
    new-instance v1, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v2, "Could not start dock app: "

    #@68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    invoke-static {v0, v1, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@77
    goto :goto_0

    #@78
    .line 626
    .end local v3    # "homeIntent":Landroid/content/Intent;
    .end local v13    # "ex":Landroid/os/RemoteException;
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    #@7b
    move-result-object v0

    #@7c
    invoke-static {v0}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    #@7f
    goto :goto_1
.end method

.method private sendConfigurationLocked()V
    .locals 3

    #@0
    .prologue
    .line 445
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    #@2
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@4
    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 446
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@a
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    #@c
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    #@e
    .line 449
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@14
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 444
    :cond_0
    :goto_0
    return-void

    #@18
    .line 450
    :catch_0
    move-exception v0

    #@19
    .line 451
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    #@1b
    const-string/jumbo v2, "Failure communicating with activity manager"

    #@1e
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method private updateAfterBroadcastLocked(Ljava/lang/String;II)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "enableFlags"    # I
    .param p3, "disableFlags"    # I

    #@0
    .prologue
    .line 555
    const/4 v0, 0x0

    #@1
    .line 556
    .local v0, "category":Ljava/lang/String;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    #@3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 559
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 560
    and-int/lit8 v1, p2, 0x1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 561
    const-string/jumbo v0, "android.intent.category.CAR_DOCK"

    #@14
    .line 585
    .end local v0    # "category":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    #@17
    .line 553
    return-void

    #@18
    .line 563
    .restart local v0    # "category":Ljava/lang/String;
    :cond_1
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 568
    and-int/lit8 v1, p2, 0x1

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 569
    const-string/jumbo v0, "android.intent.category.DESK_DOCK"

    #@27
    .local v0, "category":Ljava/lang/String;
    goto :goto_0

    #@28
    .line 573
    .local v0, "category":Ljava/lang/String;
    :cond_2
    and-int/lit8 v1, p3, 0x1

    #@2a
    if-eqz v1, :cond_0

    #@2c
    .line 574
    const-string/jumbo v0, "android.intent.category.HOME"

    #@2f
    .local v0, "category":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateComputedNightModeLocked()V
    .locals 2

    #@0
    .prologue
    .line 681
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 682
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    #@6
    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    #@9
    move-result-object v0

    #@a
    .line 683
    .local v0, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v0, :cond_0

    #@c
    .line 684
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    #@f
    move-result v1

    #@10
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    #@12
    .line 680
    .end local v0    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_0
    return-void
.end method

.method private updateConfigurationLocked()V
    .locals 4

    #@0
    .prologue
    .line 403
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    #@2
    .line 404
    .local v0, "uiMode":I
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    #@4
    if-eqz v1, :cond_3

    #@6
    .line 416
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    #@8
    if-nez v1, :cond_8

    #@a
    .line 417
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 418
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    #@10
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    #@12
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    #@14
    invoke-interface {v1, v2, v3}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    #@17
    .line 420
    :cond_1
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    #@1a
    .line 421
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    #@1c
    if-eqz v1, :cond_7

    #@1e
    const/16 v1, 0x20

    #@20
    :goto_1
    or-int/2addr v0, v1

    #@21
    .line 438
    :goto_2
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    #@23
    .line 439
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    #@25
    if-nez v1, :cond_2

    #@27
    .line 440
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@29
    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    #@2b
    .line 402
    :cond_2
    return-void

    #@2c
    .line 406
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    #@2e
    if-eqz v1, :cond_4

    #@30
    .line 407
    const/4 v0, 0x4

    #@31
    goto :goto_0

    #@32
    .line 408
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    #@34
    if-eqz v1, :cond_5

    #@36
    .line 409
    const/4 v0, 0x6

    #@37
    goto :goto_0

    #@38
    .line 410
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    #@3a
    if-eqz v1, :cond_6

    #@3c
    .line 411
    const/4 v0, 0x3

    #@3d
    goto :goto_0

    #@3e
    .line 412
    :cond_6
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    #@40
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_0

    #@46
    .line 413
    const/4 v0, 0x2

    #@47
    goto :goto_0

    #@48
    .line 422
    :cond_7
    const/16 v1, 0x10

    #@4a
    goto :goto_1

    #@4b
    .line 424
    :cond_8
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    #@4d
    if-eqz v1, :cond_9

    #@4f
    .line 425
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    #@51
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    #@53
    invoke-interface {v1, v2}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    #@56
    .line 427
    :cond_9
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    #@58
    shl-int/lit8 v1, v1, 0x4

    #@5a
    or-int/2addr v0, v1

    #@5b
    goto :goto_2
.end method

.method private updateDockState(I)V
    .locals 5
    .param p1, "newState"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 380
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 381
    :try_start_0
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    #@7
    if-eq p1, v3, :cond_0

    #@9
    .line 382
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    #@b
    .line 383
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    #@d
    const/4 v4, 0x2

    #@e
    if-ne v3, v4, :cond_1

    #@10
    :goto_0
    const/4 v1, 0x0

    #@11
    invoke-virtual {p0, v0, v1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    #@14
    .line 384
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 385
    const/4 v0, 0x1

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-virtual {p0, v0, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    :cond_0
    monitor-exit v2

    #@1e
    .line 379
    return-void

    #@1f
    :cond_1
    move v0, v1

    #@20
    .line 383
    goto :goto_0

    #@21
    .line 380
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v2

    #@23
    throw v0
.end method


# virtual methods
.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 337
    :try_start_0
    const-string/jumbo v0, "Current UI Mode Service state:"

    #@6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 338
    const-string/jumbo v0, "  mDockState="

    #@c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    #@11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@14
    .line 339
    const-string/jumbo v0, " mLastBroadcastState="

    #@17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    #@1c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@1f
    .line 340
    const-string/jumbo v0, "  mNightMode="

    #@22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    #@27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@2a
    .line 341
    const-string/jumbo v0, " mNightModeLocked="

    #@2d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    #@32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@35
    .line 342
    const-string/jumbo v0, " mCarModeEnabled="

    #@38
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    #@3d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@40
    .line 343
    const-string/jumbo v0, " mComputedNightMode="

    #@43
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    #@48
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@4b
    .line 344
    const-string/jumbo v0, " mCarModeEnableFlags="

    #@4e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    #@53
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@56
    .line 345
    const-string/jumbo v0, " mEnableCarDockLaunch="

    #@59
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    #@5e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@61
    .line 346
    const-string/jumbo v0, "  mCurUiMode=0x"

    #@64
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@67
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    #@69
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@70
    .line 347
    const-string/jumbo v0, " mUiModeLocked="

    #@73
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    #@78
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@7b
    .line 348
    const-string/jumbo v0, " mSetUiMode=0x"

    #@7e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@81
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    #@83
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@86
    move-result-object v0

    #@87
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8a
    .line 349
    const-string/jumbo v0, "  mHoldingConfiguration="

    #@8d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@90
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    #@92
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@95
    .line 350
    const-string/jumbo v0, " mSystemReady="

    #@98
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9b
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    #@9d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@a0
    .line 351
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    #@a2
    if-eqz v0, :cond_0

    #@a4
    .line 353
    const-string/jumbo v0, "  mTwilightService.getLastTwilightState()="

    #@a7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@aa
    .line 354
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    #@ac
    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    #@af
    move-result-object v0

    #@b0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b3
    :cond_0
    monitor-exit v1

    #@b4
    .line 335
    return-void

    #@b5
    .line 336
    :catchall_0
    move-exception v0

    #@b6
    monitor-exit v1

    #@b7
    throw v0
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 361
    const/16 v0, 0x1f4

    #@4
    if-ne p1, v0, :cond_0

    #@6
    .line 362
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v3

    #@9
    .line 363
    :try_start_0
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    #@b
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    #@11
    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    #@13
    .line 364
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    #@16
    .line 365
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    #@18
    const/4 v4, 0x2

    #@19
    if-ne v0, v4, :cond_1

    #@1b
    move v0, v1

    #@1c
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    #@1e
    .line 366
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    #@21
    .line 367
    const/4 v0, 0x0

    #@22
    const/4 v1, 0x0

    #@23
    invoke-virtual {p0, v0, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v3

    #@27
    .line 360
    :cond_0
    return-void

    #@28
    :cond_1
    move v0, v2

    #@29
    .line 365
    goto :goto_0

    #@2a
    .line 362
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v3

    #@2c
    throw v0
.end method

.method public onStart()V
    .locals 10

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 171
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 174
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v5, "power"

    #@9
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Landroid/os/PowerManager;

    #@f
    .line 175
    .local v3, "powerManager":Landroid/os/PowerManager;
    sget-object v5, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    #@11
    const/16 v8, 0x1a

    #@13
    invoke-virtual {v3, v8, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@16
    move-result-object v5

    #@17
    iput-object v5, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@19
    .line 177
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    #@1b
    .line 178
    new-instance v8, Landroid/content/IntentFilter;

    #@1d
    const-string/jumbo v9, "android.intent.action.DOCK_EVENT"

    #@20
    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@23
    .line 177
    invoke-virtual {v0, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@26
    .line 179
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    #@28
    .line 180
    new-instance v8, Landroid/content/IntentFilter;

    #@2a
    const-string/jumbo v9, "android.intent.action.BATTERY_CHANGED"

    #@2d
    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@30
    .line 179
    invoke-virtual {v0, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@33
    .line 182
    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@35
    invoke-virtual {v5}, Landroid/content/res/Configuration;->setToDefaults()V

    #@38
    .line 184
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3b
    move-result-object v4

    #@3c
    .line 186
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x10e0049

    #@3f
    .line 185
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    #@42
    move-result v5

    #@43
    iput v5, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    #@45
    .line 188
    const v5, 0x10e0047

    #@48
    .line 187
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    #@4b
    move-result v5

    #@4c
    if-ne v5, v6, :cond_2

    #@4e
    move v5, v6

    #@4f
    :goto_0
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    #@51
    .line 190
    const v5, 0x10e0045

    #@54
    .line 189
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    #@57
    move-result v5

    #@58
    if-ne v5, v6, :cond_0

    #@5a
    move v7, v6

    #@5b
    :cond_0
    iput-boolean v7, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    #@5d
    .line 192
    const v5, 0x112003b

    #@60
    .line 191
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@63
    move-result v5

    #@64
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    #@66
    .line 193
    const v5, 0x112003c

    #@69
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@6c
    move-result v5

    #@6d
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    #@6f
    .line 194
    const v5, 0x112003d

    #@72
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@75
    move-result v5

    #@76
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    #@78
    .line 196
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7b
    move-result-object v2

    #@7c
    .line 197
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v5, "android.hardware.type.television"

    #@7f
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@82
    move-result v5

    #@83
    if-nez v5, :cond_1

    #@85
    .line 198
    const-string/jumbo v5, "android.software.leanback"

    #@88
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@8b
    move-result v6

    #@8c
    .line 197
    :cond_1
    iput-boolean v6, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    #@8e
    .line 199
    const-string/jumbo v5, "android.hardware.type.watch"

    #@91
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@94
    move-result v5

    #@95
    iput-boolean v5, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    #@97
    .line 202
    const v5, 0x10e004a

    #@9a
    .line 201
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    #@9d
    move-result v1

    #@9e
    .line 203
    .local v1, "defaultNightMode":I
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a1
    move-result-object v5

    #@a2
    .line 204
    const-string/jumbo v6, "ui_night_mode"

    #@a5
    .line 203
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@a8
    move-result v5

    #@a9
    iput v5, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    #@ab
    .line 207
    monitor-enter p0

    #@ac
    .line 208
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    #@af
    .line 209
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->sendConfigurationLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b2
    monitor-exit p0

    #@b3
    .line 212
    const-string/jumbo v5, "uimode"

    #@b6
    iget-object v6, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/os/IBinder;

    #@b8
    invoke-virtual {p0, v5, v6}, Lcom/android/server/UiModeManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@bb
    .line 170
    return-void

    #@bc
    .end local v1    # "defaultNightMode":I
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    move v5, v7

    #@bd
    .line 187
    goto :goto_0

    #@be
    .line 207
    .restart local v1    # "defaultNightMode":I
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v5

    #@bf
    monitor-exit p0

    #@c0
    throw v5
.end method

.method setCarModeLocked(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 374
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    #@6
    .line 376
    :cond_0
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    #@8
    .line 372
    return-void
.end method

.method updateLocked(II)V
    .locals 13
    .param p1, "enableFlags"    # I
    .param p2, "disableFlags"    # I

    #@0
    .prologue
    .line 457
    const/4 v9, 0x0

    #@1
    .line 458
    .local v9, "action":Ljava/lang/String;
    const/4 v12, 0x0

    #@2
    .line 459
    .local v12, "oldAction":Ljava/lang/String;
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    #@4
    const/4 v2, 0x2

    #@5
    if-ne v0, v2, :cond_4

    #@7
    .line 460
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    #@a
    .line 461
    sget-object v12, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    #@c
    .line 466
    .end local v12    # "oldAction":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    #@e
    if-eqz v0, :cond_5

    #@10
    .line 467
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    #@12
    const/4 v2, 0x2

    #@13
    if-eq v0, v2, :cond_2

    #@15
    .line 468
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    #@18
    .line 470
    if-eqz v12, :cond_1

    #@1a
    .line 471
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v0

    #@1e
    new-instance v2, Landroid/content/Intent;

    #@20
    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@23
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@25
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@28
    .line 473
    :cond_1
    const/4 v0, 0x2

    #@29
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    #@2b
    .line 474
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    #@2d
    .line 489
    .end local v9    # "action":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v9, :cond_8

    #@2f
    .line 502
    new-instance v1, Landroid/content/Intent;

    #@31
    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@34
    .line 503
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "enableFlags"

    #@37
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3a
    .line 504
    const-string/jumbo v0, "disableFlags"

    #@3d
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@40
    .line 505
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    #@43
    move-result-object v0

    #@44
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@46
    .line 506
    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    #@48
    .line 505
    const/4 v3, 0x0

    #@49
    .line 506
    const/4 v5, 0x0

    #@4a
    const/4 v6, -0x1

    #@4b
    const/4 v7, 0x0

    #@4c
    const/4 v8, 0x0

    #@4d
    .line 505
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@50
    .line 511
    const/4 v0, 0x1

    #@51
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    #@53
    .line 512
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    #@56
    .line 540
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    #@58
    if-eqz v0, :cond_e

    #@5a
    .line 541
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    #@5c
    if-eqz v0, :cond_c

    #@5e
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    #@60
    if-eqz v0, :cond_c

    #@62
    .line 542
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    #@64
    and-int/lit8 v0, v0, 0x2

    #@66
    if-nez v0, :cond_c

    #@68
    .line 541
    const/4 v11, 0x1

    #@69
    .line 544
    :goto_3
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@6b
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@6e
    move-result v0

    #@6f
    if-eq v11, v0, :cond_3

    #@71
    .line 545
    if-eqz v11, :cond_f

    #@73
    .line 546
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@75
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@78
    .line 456
    :cond_3
    :goto_4
    return-void

    #@79
    .line 462
    .restart local v9    # "action":Ljava/lang/String;
    .restart local v12    # "oldAction":Ljava/lang/String;
    :cond_4
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    #@7b
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    #@7e
    move-result v0

    #@7f
    if-eqz v0, :cond_0

    #@81
    .line 463
    sget-object v12, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    #@83
    .local v12, "oldAction":Ljava/lang/String;
    goto :goto_0

    #@84
    .line 476
    .end local v12    # "oldAction":Ljava/lang/String;
    :cond_5
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    #@86
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    #@89
    move-result v0

    #@8a
    if-eqz v0, :cond_7

    #@8c
    .line 477
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    #@8e
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    #@91
    move-result v0

    #@92
    if-nez v0, :cond_2

    #@94
    .line 478
    if-eqz v12, :cond_6

    #@96
    .line 479
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    #@99
    move-result-object v0

    #@9a
    new-instance v2, Landroid/content/Intent;

    #@9c
    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@9f
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@a1
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@a4
    .line 481
    :cond_6
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    #@a6
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    #@a8
    .line 482
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    #@aa
    .local v9, "action":Ljava/lang/String;
    goto :goto_1

    #@ab
    .line 485
    .local v9, "action":Ljava/lang/String;
    :cond_7
    const/4 v0, 0x0

    #@ac
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    #@ae
    .line 486
    move-object v9, v12

    #@af
    .local v9, "action":Ljava/lang/String;
    goto/16 :goto_1

    #@b1
    .line 514
    .end local v9    # "action":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    #@b2
    .line 515
    .local v10, "category":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    #@b4
    if-eqz v0, :cond_a

    #@b6
    .line 516
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    #@b8
    if-eqz v0, :cond_9

    #@ba
    .line 517
    and-int/lit8 v0, p1, 0x1

    #@bc
    if-eqz v0, :cond_9

    #@be
    .line 518
    const-string/jumbo v10, "android.intent.category.CAR_DOCK"

    #@c1
    .line 536
    .end local v10    # "category":Ljava/lang/String;
    :cond_9
    :goto_5
    invoke-direct {p0, v10}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    #@c4
    goto :goto_2

    #@c5
    .line 520
    .restart local v10    # "category":Ljava/lang/String;
    :cond_a
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    #@c7
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    #@ca
    move-result v0

    #@cb
    if-eqz v0, :cond_b

    #@cd
    .line 522
    and-int/lit8 v0, p1, 0x1

    #@cf
    if-eqz v0, :cond_9

    #@d1
    .line 523
    const-string/jumbo v10, "android.intent.category.DESK_DOCK"

    #@d4
    .local v10, "category":Ljava/lang/String;
    goto :goto_5

    #@d5
    .line 526
    .local v10, "category":Ljava/lang/String;
    :cond_b
    and-int/lit8 v0, p2, 0x1

    #@d7
    if-eqz v0, :cond_9

    #@d9
    .line 527
    const-string/jumbo v10, "android.intent.category.HOME"

    #@dc
    .local v10, "category":Ljava/lang/String;
    goto :goto_5

    #@dd
    .line 543
    .end local v10    # "category":Ljava/lang/String;
    :cond_c
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    #@df
    const/4 v2, 0x2

    #@e0
    if-ne v0, v2, :cond_d

    #@e2
    iget-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    #@e4
    .local v11, "keepScreenOn":Z
    goto :goto_3

    #@e5
    .end local v11    # "keepScreenOn":Z
    :cond_d
    const/4 v11, 0x0

    #@e6
    .local v11, "keepScreenOn":Z
    goto :goto_3

    #@e7
    .line 540
    .end local v11    # "keepScreenOn":Z
    :cond_e
    const/4 v11, 0x0

    #@e8
    .restart local v11    # "keepScreenOn":Z
    goto :goto_3

    #@e9
    .line 548
    .end local v11    # "keepScreenOn":Z
    :cond_f
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@eb
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@ee
    goto :goto_4
.end method
