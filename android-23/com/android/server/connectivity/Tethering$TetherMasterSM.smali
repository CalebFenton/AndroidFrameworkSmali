.class Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.super Lcom/android/internal/util/StateMachine;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_TETHERING:I = 0x2

.field private static final CELL_CONNECTION_RENEW_MS:I = 0x9c40

.field static final CMD_CELL_CONNECTION_RENEW:I = 0x4

.field static final CMD_RETRY_UPSTREAM:I = 0x5

.field static final CMD_TETHER_MODE_REQUESTED:I = 0x1

.field static final CMD_TETHER_MODE_UNREQUESTED:I = 0x2

.field static final CMD_UPSTREAM_CHANGED:I = 0x3

.field private static final EXTRA_ADD_TETHER_TYPE:Ljava/lang/String; = "extraAddTetherType"

.field private static final EXTRA_RUN_PROVISION:Ljava/lang/String; = "extraRunProvision"

.field private static final UPSTREAM_SETTLE_TIME_MS:I = 0x2710

.field private static final USB_TETHERING:I = 0x1

.field private static final WIFI_TETHERING:I


# instance fields
.field private mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

.field private mCurrentConnectionSequence:I

.field private mInitialState:Lcom/android/internal/util/State;

.field private mMobileApnReserved:I

.field private mNotifyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;"
        }
    .end annotation
.end field

.field private mSequenceNumber:I

.field private mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

.field private mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

.field private mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

.field private final mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mStartTetheringErrorState:Lcom/android/internal/util/State;

.field private mStopTetheringErrorState:Lcom/android/internal/util/State;

.field private mTetherModeAliveState:Lcom/android/internal/util/State;

.field private mUpstreamIfaceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->startListeningForSimChanges()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->stopListeningForSimChanges()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1168
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@3
    .line 1169
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    #@6
    .line 1161
    const/4 v0, -0x1

    #@7
    iput v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I

    #@9
    .line 1163
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;

    #@b
    .line 1398
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@11
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    #@13
    .line 1399
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    #@15
    .line 1172
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;

    #@17
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@1a
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    #@1c
    .line 1173
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    #@1e
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    #@21
    .line 1174
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;

    #@23
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@26
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;

    #@28
    .line 1175
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;

    #@2a
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    #@2d
    .line 1177
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;

    #@2f
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@32
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    #@34
    .line 1178
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    #@36
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    #@39
    .line 1179
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;

    #@3b
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@3e
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    #@40
    .line 1180
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    #@42
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    #@45
    .line 1181
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;

    #@47
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@4a
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;

    #@4c
    .line 1182
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;

    #@4e
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    #@51
    .line 1183
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;

    #@53
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@56
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;

    #@58
    .line 1184
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;

    #@5a
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    #@5d
    .line 1185
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;

    #@5f
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    #@62
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    #@64
    .line 1186
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    #@66
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    #@69
    .line 1188
    new-instance v0, Ljava/util/ArrayList;

    #@6b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@6e
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    #@70
    .line 1189
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    #@72
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->setInitialState(Lcom/android/internal/util/State;)V

    #@75
    .line 1168
    return-void
.end method

.method private startListeningForSimChanges()V
    .locals 3

    #@0
    .prologue
    .line 1411
    const-string/jumbo v1, "Tethering"

    #@3
    const-string/jumbo v2, "startListeningForSimChanges"

    #@6
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1412
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1413
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    #@f
    .line 1414
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    #@11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@14
    move-result v2

    #@15
    .line 1413
    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)V

    #@18
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    #@1a
    .line 1415
    new-instance v0, Landroid/content/IntentFilter;

    #@1c
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@1f
    .line 1416
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    #@22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@25
    .line 1418
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@27
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get0(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    #@2a
    move-result-object v1

    #@2b
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    #@2d
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@30
    .line 1410
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private stopListeningForSimChanges()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1423
    const-string/jumbo v0, "Tethering"

    #@4
    const-string/jumbo v1, "stopListeningForSimChanges"

    #@7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 1424
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1425
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    #@10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@13
    .line 1426
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@15
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get0(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    #@1b
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@1e
    .line 1427
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    #@20
    .line 1422
    :cond_0
    return-void
.end method
