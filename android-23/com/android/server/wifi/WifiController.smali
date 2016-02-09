.class Lcom/android/server/wifi/WifiController;
.super Lcom/android/internal/util/StateMachine;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiController$DefaultState;,
        Lcom/android/server/wifi/WifiController$ApStaDisabledState;,
        Lcom/android/server/wifi/WifiController$StaEnabledState;,
        Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;,
        Lcom/android/server/wifi/WifiController$ApEnabledState;,
        Lcom/android/server/wifi/WifiController$EcmState;,
        Lcom/android/server/wifi/WifiController$DeviceActiveState;,
        Lcom/android/server/wifi/WifiController$DeviceInactiveState;,
        Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;,
        Lcom/android/server/wifi/WifiController$FullLockHeldState;,
        Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;,
        Lcom/android/server/wifi/WifiController$NoLockHeldState;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WifiManager.action.DEVICE_IDLE"

.field private static final BASE:I = 0x26000

.field static final CMD_AIRPLANE_TOGGLED:I = 0x26009

.field static final CMD_AP_START_FAILURE:I = 0x2600d

.field static final CMD_BATTERY_CHANGED:I = 0x26004

.field static final CMD_DEFERRED_TOGGLE:I = 0x2600b

.field static final CMD_DEVICE_IDLE:I = 0x26005

.field static final CMD_EMERGENCY_MODE_CHANGED:I = 0x26001

.field static final CMD_LOCKS_CHANGED:I = 0x26006

.field static final CMD_SCAN_ALWAYS_MODE_CHANGED:I = 0x26007

.field static final CMD_SCREEN_OFF:I = 0x26003

.field static final CMD_SCREEN_ON:I = 0x26002

.field static final CMD_SET_AP:I = 0x2600a

.field static final CMD_USER_PRESENT:I = 0x2600c

.field static final CMD_WIFI_TOGGLED:I = 0x26008

.field private static final DBG:Z = false

.field private static final DEFAULT_IDLE_MS:J = 0xdbba0L

.field private static final DEFAULT_REENABLE_DELAY_MS:J = 0x1f4L

.field private static final DEFER_MARGIN_MS:J = 0x5L

.field private static final IDLE_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiController"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

.field private mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

.field private mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

.field private mDeviceIdle:Z

.field private mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

.field private mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

.field private mFirstUserSignOnSeen:Z

.field private mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

.field private mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private mIdleMillis:J

.field final mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

.field private mPluggedType:I

.field private mReEnableDelayMillis:J

.field private mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

.field private mScreenOff:Z

.field final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mSleepPolicy:I

.field private mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

.field private mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

.field private mStayAwakeConditions:I

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApEnabledState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/wifi/WifiController;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J

    #@2
    return-wide v0
.end method

.method static synthetic -get11(Lcom/android/server/wifi/WifiController;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mScreenOff:Z

    #@2
    return v0
.end method

.method static synthetic -get12(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiController;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/WifiController;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    #@2
    return v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/WifiController;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/wifi/WifiController;->mIdleMillis:J

    #@2
    return-wide v0
.end method

.method static synthetic -get9(Lcom/android/server/wifi/WifiController;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiController;->mPluggedType:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiController;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/WifiController;->mPluggedType:I

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mScreenOff:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiController;I)Z
    .locals 1
    .param p1, "pluggedType"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController;->shouldWifiStayAwake(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->checkLocksAndTransitionWhenDeviceIdle()V

    #@3
    return-void
.end method

.method static synthetic -wrap10(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->updateBatteryWorkSource()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->deferMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readStayAwakeConditions()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiIdleTime()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiSleepPolicy()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 133
    const-string/jumbo v5, "WifiController"

    #@4
    invoke-direct {p0, v5, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    #@7
    .line 59
    iput-boolean v9, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    #@9
    .line 85
    new-instance v5, Landroid/net/NetworkInfo;

    #@b
    const-string/jumbo v6, "WIFI"

    #@e
    const-string/jumbo v7, ""

    #@11
    const/4 v8, 0x1

    #@12
    invoke-direct {v5, v8, v9, v6, v7}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    #@15
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@17
    .line 99
    new-instance v5, Landroid/os/WorkSource;

    #@19
    invoke-direct {v5}, Landroid/os/WorkSource;-><init>()V

    #@1c
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    #@1e
    .line 119
    new-instance v5, Lcom/android/server/wifi/WifiController$DefaultState;

    #@20
    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$DefaultState;-><init>(Lcom/android/server/wifi/WifiController;)V

    #@23
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    #@25
    .line 120
    new-instance v5, Lcom/android/server/wifi/WifiController$StaEnabledState;

    #@27
    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$StaEnabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    #@2a
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    #@2c
    .line 121
    new-instance v5, Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    #@2e
    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$ApStaDisabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    #@31
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    #@33
    .line 122
    new-instance v5, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    #@35
    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;-><init>(Lcom/android/server/wifi/WifiController;)V

    #@38
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    #@3a
    .line 123
    new-instance v5, Lcom/android/server/wifi/WifiController$ApEnabledState;

    #@3c
    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$ApEnabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    #@3f
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

    #@41
    .line 124
    new-instance v5, Lcom/android/server/wifi/WifiController$DeviceActiveState;

    #@43
    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$DeviceActiveState;-><init>(Lcom/android/server/wifi/WifiController;)V

    #@46
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    #@48
    .line 125
    new-instance v5, Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    #@4a
    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$DeviceInactiveState;-><init>(Lcom/android/server/wifi/WifiController;)V

    #@4d
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    #@4f
    .line 126
    new-instance v5, Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    #@51
    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    #@54
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    #@56
    .line 127
    new-instance v5, Lcom/android/server/wifi/WifiController$FullLockHeldState;

    #@58
    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$FullLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    #@5b
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

    #@5d
    .line 128
    new-instance v5, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    #@5f
    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    #@62
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    #@64
    .line 129
    new-instance v5, Lcom/android/server/wifi/WifiController$NoLockHeldState;

    #@66
    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$NoLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    #@69
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

    #@6b
    .line 130
    new-instance v5, Lcom/android/server/wifi/WifiController$EcmState;

    #@6d
    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiController$EcmState;-><init>(Lcom/android/server/wifi/WifiController;)V

    #@70
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    #@72
    .line 134
    iput-object p1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    #@74
    .line 135
    iget-object v5, p2, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@76
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@78
    .line 136
    iget-object v5, p2, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@7a
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@7c
    .line 137
    iget-object v5, p2, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@7e
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@80
    .line 139
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    #@82
    const-string/jumbo v6, "alarm"

    #@85
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@88
    move-result-object v5

    #@89
    check-cast v5, Landroid/app/AlarmManager;

    #@8b
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;

    #@8d
    .line 140
    new-instance v1, Landroid/content/Intent;

    #@8f
    const-string/jumbo v5, "com.android.server.WifiManager.action.DEVICE_IDLE"

    #@92
    const/4 v6, 0x0

    #@93
    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@96
    .line 141
    .local v1, "idleIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    #@98
    invoke-static {v5, v9, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@9b
    move-result-object v5

    #@9c
    iput-object v5, p0, Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;

    #@9e
    .line 143
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    #@a0
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;)V

    #@a3
    .line 144
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    #@a5
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    #@a7
    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@aa
    .line 145
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    #@ac
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    #@ae
    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@b1
    .line 146
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    #@b3
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    #@b5
    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@b8
    .line 147
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    #@ba
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    #@bc
    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@bf
    .line 148
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    #@c1
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    #@c3
    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@c6
    .line 149
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

    #@c8
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    #@ca
    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@cd
    .line 150
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    #@cf
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    #@d1
    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@d4
    .line 151
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

    #@d6
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    #@d8
    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@db
    .line 152
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    #@dd
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    #@df
    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@e2
    .line 153
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

    #@e4
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    #@e6
    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@e9
    .line 154
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    #@eb
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    #@ed
    invoke-virtual {p0, v5, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@f0
    .line 156
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@f2
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    #@f5
    move-result v2

    #@f6
    .line 157
    .local v2, "isAirplaneModeOn":Z
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@f8
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    #@fb
    move-result v4

    #@fc
    .line 158
    .local v4, "isWifiEnabled":Z
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@fe
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    #@101
    move-result v3

    #@102
    .line 160
    .local v3, "isScanningAlwaysAvailable":Z
    new-instance v5, Ljava/lang/StringBuilder;

    #@104
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@107
    const-string/jumbo v6, "isAirplaneModeOn = "

    #@10a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v5

    #@10e
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@111
    move-result-object v5

    #@112
    .line 161
    const-string/jumbo v6, ", isWifiEnabled = "

    #@115
    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v5

    #@119
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v5

    #@11d
    .line 162
    const-string/jumbo v6, ", isScanningAvailable = "

    #@120
    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v5

    #@124
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@127
    move-result-object v5

    #@128
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12b
    move-result-object v5

    #@12c
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    #@12f
    .line 164
    if-eqz v3, :cond_0

    #@131
    .line 165
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    #@133
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->setInitialState(Lcom/android/internal/util/State;)V

    #@136
    .line 170
    :goto_0
    const/16 v5, 0x64

    #@138
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->setLogRecSize(I)V

    #@13b
    .line 171
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiController;->setLogOnlyTransitions(Z)V

    #@13e
    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    #@140
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@143
    .line 174
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "com.android.server.WifiManager.action.DEVICE_IDLE"

    #@146
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@149
    .line 175
    const-string/jumbo v5, "android.net.wifi.STATE_CHANGE"

    #@14c
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@14f
    .line 176
    const-string/jumbo v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    #@152
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@155
    .line 177
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    #@157
    .line 178
    new-instance v6, Lcom/android/server/wifi/WifiController$1;

    #@159
    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$1;-><init>(Lcom/android/server/wifi/WifiController;)V

    #@15c
    .line 198
    new-instance v7, Landroid/content/IntentFilter;

    #@15e
    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    #@161
    .line 177
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@164
    .line 200
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiController;->initializeAndRegisterForSettingsChange(Landroid/os/Looper;)V

    #@167
    .line 132
    return-void

    #@168
    .line 167
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    #@16a
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->setInitialState(Lcom/android/internal/util/State;)V

    #@16d
    goto :goto_0
.end method

.method private checkLocksAndTransitionWhenDeviceIdle()V
    .locals 2

    #@0
    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->hasLocks()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 749
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@a
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->getStrongestLockMode()I

    #@d
    move-result v0

    #@e
    packed-switch v0, :pswitch_data_0

    #@11
    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v1, "Illegal lock "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@1f
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->getStrongestLockMode()I

    #@22
    move-result v1

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V

    #@2e
    .line 747
    :goto_0
    return-void

    #@2f
    .line 751
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

    #@31
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    #@34
    goto :goto_0

    #@35
    .line 754
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    #@37
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3a
    goto :goto_0

    #@3b
    .line 757
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    #@3d
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    #@40
    goto :goto_0

    #@41
    .line 763
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@43
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_1

    #@49
    .line 764
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    #@4b
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    #@4e
    goto :goto_0

    #@4f
    .line 766
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

    #@51
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    #@54
    goto :goto_0

    #@55
    .line 749
    nop

    #@56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initializeAndRegisterForSettingsChange(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 204
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 205
    .local v0, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readStayAwakeConditions()V

    #@8
    .line 206
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiController;->registerForStayAwakeModeChange(Landroid/os/Handler;)V

    #@b
    .line 207
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiIdleTime()V

    #@e
    .line 208
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiController;->registerForWifiIdleTimeChange(Landroid/os/Handler;)V

    #@11
    .line 209
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiSleepPolicy()V

    #@14
    .line 210
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiController;->registerForWifiSleepPolicyChange(Landroid/os/Handler;)V

    #@17
    .line 211
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiReEnableDelay()V

    #@1a
    .line 203
    return-void
.end method

.method private readStayAwakeConditions()V
    .locals 3

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 216
    const-string/jumbo v1, "stay_on_while_plugged_in"

    #@9
    const/4 v2, 0x0

    #@a
    .line 215
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/android/server/wifi/WifiController;->mStayAwakeConditions:I

    #@10
    .line 214
    return-void
.end method

.method private readWifiIdleTime()V
    .locals 4

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 221
    const-string/jumbo v1, "wifi_idle_ms"

    #@9
    const-wide/32 v2, 0xdbba0

    #@c
    .line 220
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@f
    move-result-wide v0

    #@10
    iput-wide v0, p0, Lcom/android/server/wifi/WifiController;->mIdleMillis:J

    #@12
    .line 219
    return-void
.end method

.method private readWifiReEnableDelay()V
    .locals 4

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 232
    const-string/jumbo v1, "wifi_reenable_delay"

    #@9
    const-wide/16 v2, 0x1f4

    #@b
    .line 231
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@e
    move-result-wide v0

    #@f
    iput-wide v0, p0, Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J

    #@11
    .line 230
    return-void
.end method

.method private readWifiSleepPolicy()V
    .locals 3

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 226
    const-string/jumbo v1, "wifi_sleep_policy"

    #@9
    .line 227
    const/4 v2, 0x2

    #@a
    .line 225
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    #@10
    .line 224
    return-void
.end method

.method private registerForStayAwakeModeChange(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 239
    new-instance v0, Lcom/android/server/wifi/WifiController$2;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiController$2;-><init>(Lcom/android/server/wifi/WifiController;Landroid/os/Handler;)V

    #@5
    .line 246
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v1

    #@b
    .line 247
    const-string/jumbo v2, "stay_on_while_plugged_in"

    #@e
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@11
    move-result-object v2

    #@12
    .line 248
    const/4 v3, 0x0

    #@13
    .line 246
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@16
    .line 238
    return-void
.end method

.method private registerForWifiIdleTimeChange(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 255
    new-instance v0, Lcom/android/server/wifi/WifiController$3;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiController$3;-><init>(Lcom/android/server/wifi/WifiController;Landroid/os/Handler;)V

    #@5
    .line 262
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v1

    #@b
    .line 263
    const-string/jumbo v2, "wifi_idle_ms"

    #@e
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@11
    move-result-object v2

    #@12
    .line 264
    const/4 v3, 0x0

    #@13
    .line 262
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@16
    .line 254
    return-void
.end method

.method private registerForWifiSleepPolicyChange(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 271
    new-instance v0, Lcom/android/server/wifi/WifiController$4;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiController$4;-><init>(Lcom/android/server/wifi/WifiController;Landroid/os/Handler;)V

    #@5
    .line 277
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v1

    #@b
    .line 278
    const-string/jumbo v2, "wifi_sleep_policy"

    #@e
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@11
    move-result-object v2

    #@12
    .line 279
    const/4 v3, 0x0

    #@13
    .line 277
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@16
    .line 270
    return-void
.end method

.method private shouldDeviceStayAwake(I)Z
    .locals 2
    .param p1, "pluggedType"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 314
    iget v1, p0, Lcom/android/server/wifi/WifiController;->mStayAwakeConditions:I

    #@3
    and-int/2addr v1, p1

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method private shouldWifiStayAwake(I)Z
    .locals 3
    .param p1, "pluggedType"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 290
    iget v0, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    #@3
    const/4 v1, 0x2

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 292
    return v2

    #@7
    .line 293
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    #@9
    if-ne v0, v2, :cond_1

    #@b
    .line 294
    if-eqz p1, :cond_1

    #@d
    .line 296
    return v2

    #@e
    .line 299
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController;->shouldDeviceStayAwake(I)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method private updateBatteryWorkSource()V
    .locals 2

    #@0
    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    #@2
    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    #@5
    .line 319
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 320
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@b
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->updateWorkSource(Landroid/os/WorkSource;)V

    #@10
    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@12
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    #@14
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    #@17
    .line 317
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 773
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "mScreenOff "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiController;->mScreenOff:Z

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v1, "mDeviceIdle "

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v1, "mPluggedType "

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    iget v1, p0, Lcom/android/server/wifi/WifiController;->mPluggedType:I

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v1, "mIdleMillis "

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    iget-wide v2, p0, Lcom/android/server/wifi/WifiController;->mIdleMillis:J

    #@5c
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@67
    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v1, "mSleepPolicy "

    #@6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    iget v1, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v0

    #@7d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@80
    .line 772
    return-void
.end method
