.class public Landroid/net/DhcpStateMachine;
.super Landroid/net/BaseDhcpStateMachine;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DhcpStateMachine$DefaultState;,
        Landroid/net/DhcpStateMachine$StoppedState;,
        Landroid/net/DhcpStateMachine$WaitBeforeStartState;,
        Landroid/net/DhcpStateMachine$PollingState;,
        Landroid/net/DhcpStateMachine$RunningState;,
        Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;
    }
.end annotation


# static fields
.field private static final ACTION_DHCP_RENEW:Ljava/lang/String; = "android.net.wifi.DHCP_RENEW"

.field private static final BASE:I = 0x30000

.field private static final CMD_GET_DHCP_RESULTS:I = 0x30008

.field public static final CMD_ON_QUIT:I = 0x30006

.field public static final CMD_POST_DHCP_ACTION:I = 0x30005

.field public static final CMD_PRE_DHCP_ACTION:I = 0x30004

.field public static final CMD_PRE_DHCP_ACTION_COMPLETE:I = 0x30007

.field public static final CMD_RENEW_DHCP:I = 0x30003

.field public static final CMD_START_DHCP:I = 0x30001

.field public static final CMD_STOP_DHCP:I = 0x30002

.field private static final DBG:Z = false

.field public static final DHCP_FAILURE:I = 0x2

.field private static final DHCP_RENEW:I = 0x0

.field public static final DHCP_SUCCESS:I = 0x1

.field private static final MIN_RENEWAL_TIME_SECS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "DhcpStateMachine"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "DHCP"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/internal/util/StateMachine;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mDhcpRenewalIntent:Landroid/app/PendingIntent;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private final mInterfaceName:Ljava/lang/String;

.field private mPollingState:Lcom/android/internal/util/State;

.field private mRegisteredForPreDhcpNotification:Z

.field private mRunningState:Lcom/android/internal/util/State;

.field private mStoppedState:Lcom/android/internal/util/State;

.field private mWaitBeforeRenewalState:Lcom/android/internal/util/State;

.field private mWaitBeforeStartState:Lcom/android/internal/util/State;


# direct methods
.method static synthetic -get0(Landroid/net/DhcpStateMachine;)Landroid/app/AlarmManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/net/DhcpStateMachine;)Landroid/content/BroadcastReceiver;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/net/DhcpStateMachine;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/StateMachine;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/net/DhcpStateMachine;)Landroid/app/PendingIntent;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/net/DhcpStateMachine;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mPollingState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/net/DhcpStateMachine;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    #@2
    return v0
.end method

.method static synthetic -get9(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/net/DhcpStateMachine;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/DhcpStateMachine;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->dhcpSucceeded()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/net/DhcpStateMachine;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->runDhcpRenew()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/net/DhcpStateMachine;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->runDhcpStart()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Landroid/net/DhcpStateMachine;I)V
    .locals 0
    .param p1, "what"    # I

    #@0
    .prologue
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->removeMessages(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p3, "intf"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 112
    const-string/jumbo v2, "DhcpStateMachine"

    #@4
    invoke-direct {p0, v2}, Landroid/net/BaseDhcpStateMachine;-><init>(Ljava/lang/String;)V

    #@7
    .line 76
    iput-boolean v4, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    #@9
    .line 104
    new-instance v2, Landroid/net/DhcpStateMachine$DefaultState;

    #@b
    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$DefaultState;-><init>(Landroid/net/DhcpStateMachine;)V

    #@e
    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@10
    .line 105
    new-instance v2, Landroid/net/DhcpStateMachine$StoppedState;

    #@12
    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$StoppedState;-><init>(Landroid/net/DhcpStateMachine;)V

    #@15
    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    #@17
    .line 106
    new-instance v2, Landroid/net/DhcpStateMachine$WaitBeforeStartState;

    #@19
    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$WaitBeforeStartState;-><init>(Landroid/net/DhcpStateMachine;)V

    #@1c
    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    #@1e
    .line 107
    new-instance v2, Landroid/net/DhcpStateMachine$RunningState;

    #@20
    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$RunningState;-><init>(Landroid/net/DhcpStateMachine;)V

    #@23
    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    #@25
    .line 108
    new-instance v2, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;

    #@27
    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;-><init>(Landroid/net/DhcpStateMachine;)V

    #@2a
    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    #@2c
    .line 109
    new-instance v2, Landroid/net/DhcpStateMachine$PollingState;

    #@2e
    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$PollingState;-><init>(Landroid/net/DhcpStateMachine;)V

    #@31
    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mPollingState:Lcom/android/internal/util/State;

    #@33
    .line 114
    iput-object p1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    #@35
    .line 115
    iput-object p2, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    #@37
    .line 116
    iput-object p3, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    #@39
    .line 118
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    #@3b
    const-string/jumbo v3, "alarm"

    #@3e
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Landroid/app/AlarmManager;

    #@44
    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    #@46
    .line 119
    new-instance v0, Landroid/content/Intent;

    #@48
    const-string/jumbo v2, "android.net.wifi.DHCP_RENEW"

    #@4b
    const/4 v3, 0x0

    #@4c
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@4f
    .line 120
    .local v0, "dhcpRenewalIntent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    #@51
    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@54
    move-result-object v2

    #@55
    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    #@57
    .line 122
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    #@59
    const-string/jumbo v3, "power"

    #@5c
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5f
    move-result-object v1

    #@60
    check-cast v1, Landroid/os/PowerManager;

    #@62
    .line 123
    .local v1, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v2, "DHCP"

    #@65
    const/4 v3, 0x1

    #@66
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@69
    move-result-object v2

    #@6a
    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    #@6c
    .line 124
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    #@6e
    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@71
    .line 126
    new-instance v2, Landroid/net/DhcpStateMachine$1;

    #@73
    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$1;-><init>(Landroid/net/DhcpStateMachine;)V

    #@76
    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@78
    .line 136
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    #@7a
    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@7c
    new-instance v4, Landroid/content/IntentFilter;

    #@7e
    const-string/jumbo v5, "android.net.wifi.DHCP_RENEW"

    #@81
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@84
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@87
    .line 138
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@89
    invoke-virtual {p0, v2}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@8c
    .line 139
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    #@8e
    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@90
    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@93
    .line 140
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    #@95
    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@97
    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@9a
    .line 141
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mPollingState:Lcom/android/internal/util/State;

    #@9c
    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@9e
    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@a1
    .line 142
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    #@a3
    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@a5
    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@a8
    .line 143
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    #@aa
    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@ac
    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@af
    .line 145
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    #@b1
    invoke-virtual {p0, v2}, Landroid/net/DhcpStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@b4
    .line 111
    return-void
.end method

.method private dhcpSucceeded()Z
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 399
    new-instance v0, Landroid/net/DhcpResults;

    #@4
    invoke-direct {v0}, Landroid/net/DhcpResults;-><init>()V

    #@7
    .line 400
    .local v0, "dhcpResults":Landroid/net/DhcpResults;
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    #@9
    invoke-static {v1, v0}, Landroid/net/NetworkUtils;->getDhcpResults(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 401
    return v8

    #@10
    .line 405
    :cond_0
    iget v1, v0, Landroid/net/DhcpResults;->leaseDuration:I

    #@12
    int-to-long v2, v1

    #@13
    .line 408
    .local v2, "leaseDuration":J
    const-wide/16 v4, 0x0

    #@15
    cmp-long v1, v2, v4

    #@17
    if-ltz v1, :cond_2

    #@19
    .line 411
    const-wide/16 v4, 0x12c

    #@1b
    cmp-long v1, v2, v4

    #@1d
    if-gez v1, :cond_1

    #@1f
    .line 412
    const-wide/16 v2, 0x12c

    #@21
    .line 417
    :cond_1
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    #@23
    .line 418
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@26
    move-result-wide v4

    #@27
    .line 419
    const-wide/16 v6, 0x1e0

    #@29
    mul-long/2addr v6, v2

    #@2a
    .line 418
    add-long/2addr v4, v6

    #@2b
    .line 420
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    #@2d
    .line 417
    const/4 v7, 0x2

    #@2e
    invoke-virtual {v1, v7, v4, v5, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    #@31
    .line 428
    :cond_2
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    #@33
    invoke-virtual {v0, v1}, Landroid/net/DhcpResults;->updateFromDhcpRequest(Landroid/net/DhcpResults;)V

    #@36
    .line 429
    iput-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    #@38
    .line 430
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    #@3a
    const v4, 0x30005

    #@3d
    invoke-virtual {v1, v4, v9, v8, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@44
    .line 432
    return v9
.end method

.method public static makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p2, "intf"    # Ljava/lang/String;

    #@0
    .prologue
    .line 150
    new-instance v0, Landroid/net/DhcpStateMachine;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/net/DhcpStateMachine;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V

    #@5
    .line 151
    .local v0, "dsm":Landroid/net/DhcpStateMachine;
    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->start()V

    #@8
    .line 152
    return-object v0
.end method

.method private runDhcpRenew()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 453
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    #@3
    invoke-static {v0}, Landroid/net/NetworkUtils;->startDhcpRenew(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->dhcpSucceeded()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 460
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 454
    :cond_0
    const-string/jumbo v0, "DhcpStateMachine"

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "DHCP renew failed on "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, ": "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 455
    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 456
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    #@3e
    const v1, 0x30005

    #@41
    const/4 v2, 0x2

    #@42
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@49
    .line 458
    return v3
.end method

.method private runDhcpStart()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 437
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    #@3
    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    #@6
    .line 438
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    #@9
    .line 441
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    #@b
    invoke-static {v0}, Landroid/net/NetworkUtils;->startDhcp(Ljava/lang/String;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->dhcpSucceeded()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 448
    const/4 v0, 0x1

    #@18
    return v0

    #@19
    .line 442
    :cond_0
    const-string/jumbo v0, "DhcpStateMachine"

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "DHCP request failed on "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, ": "

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 443
    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    .line 442
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 444
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    #@46
    const v1, 0x30005

    #@49
    const/4 v2, 0x2

    #@4a
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@51
    .line 446
    return v3
.end method


# virtual methods
.method public doQuit()V
    .locals 0

    #@0
    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/net/DhcpStateMachine;->quit()V

    #@3
    .line 175
    return-void
.end method

.method protected onQuitting()V
    .locals 2

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    #@2
    const v1, 0x30006

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@8
    .line 179
    return-void
.end method

.method public registerForPreDhcpNotification()V
    .locals 1

    #@0
    .prologue
    .line 166
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    #@3
    .line 165
    return-void
.end method
