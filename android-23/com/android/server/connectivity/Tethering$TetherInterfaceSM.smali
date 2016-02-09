.class Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
.super Lcom/android/internal/util/StateMachine;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherInterfaceSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;
    }
.end annotation


# static fields
.field static final CMD_CELL_DUN_ERROR:I = 0x6

.field static final CMD_INTERFACE_DOWN:I = 0x4

.field static final CMD_INTERFACE_UP:I = 0x5

.field static final CMD_IP_FORWARDING_DISABLE_ERROR:I = 0x8

.field static final CMD_IP_FORWARDING_ENABLE_ERROR:I = 0x7

.field static final CMD_SET_DNS_FORWARDERS_ERROR:I = 0xb

.field static final CMD_START_TETHERING_ERROR:I = 0x9

.field static final CMD_STOP_TETHERING_ERROR:I = 0xa

.field static final CMD_TETHER_CONNECTION_CHANGED:I = 0xc

.field static final CMD_TETHER_MODE_DEAD:I = 0x1

.field static final CMD_TETHER_REQUESTED:I = 0x2

.field static final CMD_TETHER_UNREQUESTED:I = 0x3


# instance fields
.field private mAvailable:Z

.field private mDefaultState:Lcom/android/internal/util/State;

.field mIfaceName:Ljava/lang/String;

.field private mInitialState:Lcom/android/internal/util/State;

.field mLastError:I

.field mMyUpstreamIfaceName:Ljava/lang/String;

.field private mStartingState:Lcom/android/internal/util/State;

.field private mTethered:Z

.field private mTetheredState:Lcom/android/internal/util/State;

.field private mUnavailableState:Lcom/android/internal/util/State;

.field mUsb:Z

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mStartingState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTetheredState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUnavailableState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V
    .locals 0
    .param p1, "available"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setAvailable(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V
    .locals 0
    .param p1, "error"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V
    .locals 0
    .param p1, "tethered"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setTethered(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "usb"    # Z

    #@0
    .prologue
    .line 785
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@2
    .line 786
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    #@5
    .line 787
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    #@7
    .line 788
    iput-boolean p4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    #@9
    .line 789
    const/4 v0, 0x0

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V

    #@d
    .line 791
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;

    #@f
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;-><init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V

    #@12
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;

    #@14
    .line 792
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;

    #@16
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->addState(Lcom/android/internal/util/State;)V

    #@19
    .line 793
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;

    #@1b
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;-><init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V

    #@1e
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mStartingState:Lcom/android/internal/util/State;

    #@20
    .line 794
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mStartingState:Lcom/android/internal/util/State;

    #@22
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->addState(Lcom/android/internal/util/State;)V

    #@25
    .line 795
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;

    #@27
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;-><init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V

    #@2a
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTetheredState:Lcom/android/internal/util/State;

    #@2c
    .line 796
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTetheredState:Lcom/android/internal/util/State;

    #@2e
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->addState(Lcom/android/internal/util/State;)V

    #@31
    .line 797
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;

    #@33
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;-><init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V

    #@36
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUnavailableState:Lcom/android/internal/util/State;

    #@38
    .line 798
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUnavailableState:Lcom/android/internal/util/State;

    #@3a
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->addState(Lcom/android/internal/util/State;)V

    #@3d
    .line 800
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;

    #@3f
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setInitialState(Lcom/android/internal/util/State;)V

    #@42
    .line 785
    return-void
.end method

.method private setAvailable(Z)V
    .locals 2
    .param p1, "available"    # Z

    #@0
    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@2
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    monitor-enter v0

    #@7
    .line 845
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    .line 843
    return-void

    #@b
    .line 844
    :catchall_0
    move-exception v1

    #@c
    monitor-exit v0

    #@d
    throw v1
.end method

.method private setLastError(I)V
    .locals 3
    .param p1, "error"    # I

    #@0
    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@2
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 825
    :try_start_0
    iput p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mLastError:I

    #@9
    .line 827
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 828
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 831
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@15
    const/4 v2, 0x0

    #@16
    invoke-static {v0, v2}, Lcom/android/server/connectivity/Tethering;->-wrap1(Lcom/android/server/connectivity/Tethering;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v1

    #@1a
    .line 823
    return-void

    #@1b
    .line 824
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method private setTethered(Z)V
    .locals 2
    .param p1, "tethered"    # Z

    #@0
    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@2
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    monitor-enter v0

    #@7
    .line 857
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTethered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    .line 855
    return-void

    #@b
    .line 856
    :catchall_0
    move-exception v1

    #@c
    monitor-exit v0

    #@d
    throw v1
.end method


# virtual methods
.method public getLastError()I
    .locals 2

    #@0
    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@2
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    monitor-enter v0

    #@7
    .line 819
    :try_start_0
    iget v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mLastError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    return v1

    #@b
    .line 818
    :catchall_0
    move-exception v1

    #@c
    monitor-exit v0

    #@d
    throw v1
.end method

.method public isAvailable()Z
    .locals 2

    #@0
    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@2
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    monitor-enter v0

    #@7
    .line 839
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    return v1

    #@b
    .line 838
    :catchall_0
    move-exception v1

    #@c
    monitor-exit v0

    #@d
    throw v1
.end method

.method public isErrored()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 862
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@3
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    monitor-enter v1

    #@8
    .line 863
    :try_start_0
    iget v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mLastError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-eqz v2, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 862
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public isTethered()Z
    .locals 2

    #@0
    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #@2
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    monitor-enter v0

    #@7
    .line 851
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTethered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v0

    #@a
    return v1

    #@b
    .line 850
    :catchall_0
    move-exception v1

    #@c
    monitor-exit v0

    #@d
    throw v1
.end method

.method setLastErrorAndTransitionToInitialState(I)V
    .locals 1
    .param p1, "error"    # I

    #@0
    .prologue
    .line 1125
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V

    #@3
    .line 1126
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;

    #@5
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V

    #@8
    .line 1124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 804
    new-instance v1, Ljava/lang/String;

    #@2
    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    #@5
    .line 805
    .local v1, "res":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, " - "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 806
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getCurrentState()Lcom/android/internal/util/IState;

    #@22
    move-result-object v0

    #@23
    .line 807
    .local v0, "current":Lcom/android/internal/util/IState;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;

    #@25
    if-ne v0, v2, :cond_0

    #@27
    new-instance v2, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    const-string/jumbo v3, "InitialState"

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .line 808
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mStartingState:Lcom/android/internal/util/State;

    #@3d
    if-ne v0, v2, :cond_1

    #@3f
    new-instance v2, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    const-string/jumbo v3, "StartingState"

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    .line 809
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTetheredState:Lcom/android/internal/util/State;

    #@55
    if-ne v0, v2, :cond_2

    #@57
    new-instance v2, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    const-string/jumbo v3, "TetheredState"

    #@63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    .line 810
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUnavailableState:Lcom/android/internal/util/State;

    #@6d
    if-ne v0, v2, :cond_3

    #@6f
    new-instance v2, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v2

    #@78
    const-string/jumbo v3, "UnavailableState"

    #@7b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v1

    #@83
    .line 811
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mAvailable:Z

    #@85
    if-eqz v2, :cond_4

    #@87
    new-instance v2, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    const-string/jumbo v3, " - Available"

    #@93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v1

    #@9b
    .line 812
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTethered:Z

    #@9d
    if-eqz v2, :cond_5

    #@9f
    new-instance v2, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v2

    #@a8
    const-string/jumbo v3, " - Tethered"

    #@ab
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v2

    #@af
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v1

    #@b3
    .line 813
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v2

    #@bc
    const-string/jumbo v3, " - lastError ="

    #@bf
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v2

    #@c3
    iget v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mLastError:I

    #@c5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v2

    #@c9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v1

    #@cd
    .line 814
    return-object v1
.end method
