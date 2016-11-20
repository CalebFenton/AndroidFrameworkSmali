.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiScanningServiceImpl.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$ScanEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiSingleScanStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;
    }
.end annotation


# instance fields
.field private mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

.field private final mDriverStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;

.field private final mIdleState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;

.field private mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanningState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;

.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mIdleState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mScanningState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/internal/util/IState;
    .locals 1

    #@0
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->loge(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Landroid/os/Looper;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 425
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@3
    .line 426
    const-string/jumbo v0, "WifiSingleScanStateMachine"

    #@6
    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    #@9
    .line 417
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

    #@b
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)V

    #@e
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

    #@10
    .line 418
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;

    #@12
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)V

    #@15
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDriverStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;

    #@17
    .line 419
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;

    #@19
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)V

    #@1c
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mIdleState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;

    #@1e
    .line 420
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;

    #@20
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)V

    #@23
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mScanningState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;

    #@25
    .line 422
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@27
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@29
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;)V

    #@2c
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2e
    .line 423
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@30
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@32
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;)V

    #@35
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@37
    .line 428
    const/16 v0, 0x80

    #@39
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->setLogRecSize(I)V

    #@3c
    .line 429
    const/4 v0, 0x0

    #@3d
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->setLogOnlyTransitions(Z)V

    #@40
    .line 432
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

    #@42
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@45
    .line 433
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDriverStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;

    #@47
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

    #@49
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@4c
    .line 434
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mIdleState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;

    #@4e
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDriverStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;

    #@50
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@53
    .line 435
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mScanningState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;

    #@55
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDriverStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;

    #@57
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@5a
    .line 438
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

    #@5c
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@5f
    .line 425
    return-void
.end method


# virtual methods
.method public onFullScanResult(Landroid/net/wifi/ScanResult;I)V
    .locals 2
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "bucketsScanned"    # I

    #@0
    .prologue
    .line 469
    const v0, 0x27101

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@7
    .line 467
    return-void
.end method

.method public onScanPaused([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 2
    .param p1, "scanData"    # [Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    .line 475
    const-string/jumbo v0, "WifiScanningService"

    #@3
    const-string/jumbo v1, "Got scan paused for single scan"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 473
    return-void
.end method

.method public onScanRestarted()V
    .locals 2

    #@0
    .prologue
    .line 481
    const-string/jumbo v0, "WifiScanningService"

    #@3
    const-string/jumbo v1, "Got scan restarted for single scan"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 479
    return-void
.end method

.method public onScanStatus(I)V
    .locals 3
    .param p1, "event"    # I

    #@0
    .prologue
    .line 448
    packed-switch p1, :pswitch_data_0

    #@3
    .line 458
    const-string/jumbo v0, "WifiScanningService"

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Unknown scan status event: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 446
    :goto_0
    return-void

    #@1e
    .line 452
    :pswitch_0
    const v0, 0x27100

    #@21
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendMessage(I)V

    #@24
    goto :goto_0

    #@25
    .line 455
    :pswitch_1
    const v0, 0x2710a

    #@28
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendMessage(I)V

    #@2b
    goto :goto_0

    #@2c
    .line 448
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method removeSingleScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 7
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 660
    if-eqz p1, :cond_0

    #@3
    .line 661
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@5
    const-string/jumbo v1, "removeSingleScanRequest"

    #@8
    move-object v2, p1

    #@9
    move v3, p2

    #@a
    move-object v5, v4

    #@b
    move-object v6, v4

    #@c
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    #@f
    .line 662
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@11
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    #@14
    .line 663
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@16
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    #@19
    .line 659
    :cond_0
    return-void
.end method

.method removeSingleScanRequests(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V
    .locals 7
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 668
    if-eqz p1, :cond_0

    #@3
    .line 669
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@5
    const-string/jumbo v1, "removeSingleScanRequests"

    #@8
    const/4 v3, -0x1

    #@9
    move-object v2, p1

    #@a
    move-object v5, v4

    #@b
    move-object v6, v4

    #@c
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    #@f
    .line 670
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@11
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeAllForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    #@14
    .line 671
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@16
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeAllForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    #@19
    .line 667
    :cond_0
    return-void
.end method

.method reportFullScanResult(Landroid/net/wifi/ScanResult;I)V
    .locals 5
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "bucketsScanned"    # I

    #@0
    .prologue
    .line 742
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@12
    .line 743
    .local v0, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@14
    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    #@17
    move-result-object v3

    #@18
    .line 744
    iget-object v2, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@1a
    check-cast v2, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@1c
    const/4 v4, -0x1

    #@1d
    .line 743
    invoke-static {v3, p1, p2, v2, v4}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->shouldReportFullScanResultForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/net/wifi/ScanResult;ILandroid/net/wifi/WifiScanner$ScanSettings;I)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 745
    const v2, 0x27014

    #@26
    const/4 v3, 0x0

    #@27
    invoke-virtual {v0, v2, v3, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->reportEvent(IILjava/lang/Object;)V

    #@2a
    goto :goto_0

    #@2b
    .line 741
    .end local v0    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_1
    return-void
.end method

.method reportScanResults(Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 12
    .param p1, "results"    # Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 751
    if-eqz p1, :cond_0

    #@4
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    #@7
    move-result-object v5

    #@8
    if-eqz v5, :cond_0

    #@a
    .line 752
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    #@d
    move-result-object v5

    #@e
    array-length v5, v5

    #@f
    if-lez v5, :cond_1

    #@11
    .line 753
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@13
    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get16(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiMetrics;->incrementNonEmptyScanResultCount()V

    #@1a
    .line 758
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@1c
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v1

    #@20
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_2

    #@26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@2c
    .line 759
    .local v0, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    const/4 v5, 0x1

    #@2d
    new-array v3, v5, [Landroid/net/wifi/WifiScanner$ScanData;

    #@2f
    aput-object p1, v3, v10

    #@31
    .line 761
    .local v3, "resultsArray":[Landroid/net/wifi/WifiScanner$ScanData;
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@33
    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    #@36
    move-result-object v6

    #@37
    iget-object v5, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@39
    check-cast v5, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@3b
    const/4 v7, -0x1

    #@3c
    .line 760
    invoke-static {v6, v3, v5, v7}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->filterResultsForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;[Landroid/net/wifi/WifiScanner$ScanData;Landroid/net/wifi/WifiScanner$ScanSettings;I)[Landroid/net/wifi/WifiScanner$ScanData;

    #@3f
    move-result-object v4

    #@40
    .line 763
    .local v4, "resultsToDeliver":[Landroid/net/wifi/WifiScanner$ScanData;
    new-instance v2, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    #@42
    invoke-direct {v2, v4}, Landroid/net/wifi/WifiScanner$ParcelableScanData;-><init>([Landroid/net/wifi/WifiScanner$ScanData;)V

    #@45
    .line 764
    .local v2, "parcelableScanData":Landroid/net/wifi/WifiScanner$ParcelableScanData;
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@47
    const-string/jumbo v6, "singleScanResults"

    #@4a
    iget-object v7, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@4c
    iget v8, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    #@4e
    .line 765
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->describeForLog([Landroid/net/wifi/WifiScanner$ScanData;)Ljava/lang/String;

    #@51
    move-result-object v9

    #@52
    .line 764
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logCallback(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILjava/lang/String;)V

    #@55
    .line 766
    const v5, 0x27005

    #@58
    invoke-virtual {v0, v5, v10, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->reportEvent(IILjava/lang/Object;)V

    #@5b
    .line 768
    const v5, 0x27017

    #@5e
    invoke-virtual {v0, v5, v10, v11}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->reportEvent(IILjava/lang/Object;)V

    #@61
    goto :goto_1

    #@62
    .line 755
    .end local v0    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "parcelableScanData":Landroid/net/wifi/WifiScanner$ParcelableScanData;
    .end local v3    # "resultsArray":[Landroid/net/wifi/WifiScanner$ScanData;
    .end local v4    # "resultsToDeliver":[Landroid/net/wifi/WifiScanner$ScanData;
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@64
    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get16(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiMetrics;->incrementEmptyScanResultCount()V

    #@6b
    goto :goto_0

    #@6c
    .line 750
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method sendOpFailedToAllAndClear(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;ILjava/lang/String;)V
    .locals 8
    .param p2, "reason"    # I
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList",
            "<*>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 732
    .local p1, "clientHandlers":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@10
    .line 733
    .local v0, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<*>;"
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@12
    const-string/jumbo v3, "singleScanFailed"

    #@15
    iget-object v4, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@17
    iget v5, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    #@19
    .line 734
    new-instance v6, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v7, "reason="

    #@21
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    const-string/jumbo v7, ", "

    #@2c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v6

    #@38
    .line 733
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logCallback(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILjava/lang/String;)V

    #@3b
    .line 736
    new-instance v2, Landroid/net/wifi/WifiScanner$OperationResult;

    #@3d
    invoke-direct {v2, p2, p3}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    #@40
    .line 735
    const v3, 0x27012

    #@43
    const/4 v4, 0x0

    #@44
    invoke-virtual {v0, v3, v4, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->reportEvent(IILjava/lang/Object;)V

    #@47
    goto :goto_0

    #@48
    .line 738
    .end local v0    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<*>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    #@4b
    .line 731
    return-void
.end method

.method tryToStartNewScan()V
    .locals 15

    #@0
    .prologue
    .line 676
    iget-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2
    invoke-virtual {v12}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->size()I

    #@5
    move-result v12

    #@6
    if-nez v12, :cond_0

    #@8
    .line 677
    return-void

    #@9
    .line 679
    :cond_0
    iget-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@b
    invoke-static {v12}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    #@e
    move-result-object v12

    #@f
    invoke-virtual {v12}, Lcom/android/server/wifi/scanner/ChannelHelper;->updateChannels()V

    #@12
    .line 681
    new-instance v10, Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@14
    invoke-direct {v10}, Lcom/android/server/wifi/WifiNative$ScanSettings;-><init>()V

    #@17
    .line 682
    .local v10, "settings":Lcom/android/server/wifi/WifiNative$ScanSettings;
    const/4 v12, 0x1

    #@18
    iput v12, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@1a
    .line 683
    new-instance v0, Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@1c
    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$BucketSettings;-><init>()V

    #@1f
    .line 684
    .local v0, "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    const/4 v12, 0x0

    #@20
    iput v12, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    #@22
    .line 685
    const/4 v12, 0x0

    #@23
    iput v12, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    #@25
    .line 686
    const/4 v12, 0x1

    #@26
    iput v12, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@28
    .line 688
    iget-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2a
    invoke-static {v12}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    #@2d
    move-result-object v12

    #@2e
    invoke-virtual {v12}, Lcom/android/server/wifi/scanner/ChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@31
    move-result-object v1

    #@32
    .line 689
    .local v1, "channels":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    new-instance v6, Ljava/util/HashSet;

    #@34
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@37
    .line 690
    .local v6, "hiddenNetworkIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@39
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v3

    #@3d
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v12

    #@41
    if-eqz v12, :cond_3

    #@43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v2

    #@47
    check-cast v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@49
    .line 691
    .local v2, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v12, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@4b
    check-cast v12, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@4d
    invoke-virtual {v1, v12}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    #@50
    .line 692
    iget-object v12, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@52
    check-cast v12, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@54
    iget-object v12, v12, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    #@56
    if-eqz v12, :cond_2

    #@58
    .line 693
    const/4 v7, 0x0

    #@59
    .local v7, "i":I
    :goto_1
    iget-object v12, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@5b
    check-cast v12, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@5d
    iget-object v12, v12, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    #@5f
    array-length v12, v12

    #@60
    if-ge v7, v12, :cond_2

    #@62
    .line 694
    iget-object v12, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@64
    check-cast v12, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@66
    iget-object v12, v12, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    #@68
    aget v12, v12, v7

    #@6a
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6d
    move-result-object v12

    #@6e
    invoke-virtual {v6, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@71
    .line 693
    add-int/lit8 v7, v7, 0x1

    #@73
    goto :goto_1

    #@74
    .line 697
    .end local v7    # "i":I
    :cond_2
    iget-object v12, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@76
    check-cast v12, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@78
    iget v12, v12, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@7a
    and-int/lit8 v12, v12, 0x2

    #@7c
    if-eqz v12, :cond_1

    #@7e
    .line 699
    iget v12, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@80
    or-int/lit8 v12, v12, 0x2

    #@82
    iput v12, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@84
    goto :goto_0

    #@85
    .line 702
    .end local v2    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_3
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    #@88
    move-result v12

    #@89
    if-lez v12, :cond_4

    #@8b
    .line 703
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    #@8e
    move-result v12

    #@8f
    new-array v12, v12, [I

    #@91
    iput-object v12, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworkIds:[I

    #@93
    .line 704
    const/4 v8, 0x0

    #@94
    .line 705
    .local v8, "numHiddenNetworks":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@97
    move-result-object v5

    #@98
    .local v5, "hiddenNetworkId$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@9b
    move-result v12

    #@9c
    if-eqz v12, :cond_4

    #@9e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a1
    move-result-object v4

    #@a2
    check-cast v4, Ljava/lang/Integer;

    #@a4
    .line 706
    .local v4, "hiddenNetworkId":Ljava/lang/Integer;
    iget-object v12, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworkIds:[I

    #@a6
    add-int/lit8 v9, v8, 0x1

    #@a8
    .end local v8    # "numHiddenNetworks":I
    .local v9, "numHiddenNetworks":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@ab
    move-result v13

    #@ac
    aput v13, v12, v8

    #@ae
    move v8, v9

    #@af
    .end local v9    # "numHiddenNetworks":I
    .restart local v8    # "numHiddenNetworks":I
    goto :goto_2

    #@b0
    .line 710
    .end local v4    # "hiddenNetworkId":Ljava/lang/Integer;
    .end local v5    # "hiddenNetworkId$iterator":Ljava/util/Iterator;
    .end local v8    # "numHiddenNetworks":I
    :cond_4
    const v12, 0x7fffffff

    #@b3
    invoke-virtual {v1, v0, v12}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->fillBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;I)V

    #@b6
    .line 712
    const/4 v12, 0x1

    #@b7
    new-array v12, v12, [Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@b9
    const/4 v13, 0x0

    #@ba
    aput-object v0, v12, v13

    #@bc
    iput-object v12, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@be
    .line 713
    iget-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@c0
    invoke-static {v12}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@c3
    move-result-object v12

    #@c4
    invoke-virtual {v12, v10, p0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->startSingleScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    #@c7
    move-result v12

    #@c8
    if-eqz v12, :cond_5

    #@ca
    .line 715
    iget-object v11, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@cc
    .line 716
    .local v11, "tmp":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@ce
    iput-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@d0
    .line 717
    iput-object v11, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@d2
    .line 719
    iget-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@d4
    invoke-virtual {v12}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    #@d7
    .line 720
    iget-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mScanningState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;

    #@d9
    invoke-virtual {p0, v12}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    #@dc
    .line 675
    .end local v11    # "tmp":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :goto_3
    return-void

    #@dd
    .line 722
    :cond_5
    iget-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@df
    invoke-static {v12}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get16(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    #@e2
    move-result-object v12

    #@e3
    .line 723
    iget-object v13, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@e5
    invoke-virtual {v13}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->size()I

    #@e8
    move-result v13

    #@e9
    const/4 v14, 0x0

    #@ea
    .line 722
    invoke-virtual {v12, v14, v13}, Lcom/android/server/wifi/WifiMetrics;->incrementScanReturnEntry(II)V

    #@ed
    .line 725
    iget-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@ef
    .line 726
    const-string/jumbo v13, "Failed to start single scan"

    #@f2
    .line 725
    const/4 v14, -0x1

    #@f3
    invoke-virtual {p0, v12, v14, v13}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendOpFailedToAllAndClear(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;ILjava/lang/String;)V

    #@f6
    goto :goto_3
.end method

.method validateAndAddToScanQueue(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)Z
    .locals 7
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p4, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 644
    if-nez p1, :cond_0

    #@4
    .line 645
    const-string/jumbo v0, "WifiScanningService"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Failing single scan request ClientInfo not found "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 646
    return v3

    #@1f
    .line 648
    :cond_0
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@21
    if-nez v0, :cond_2

    #@23
    .line 649
    iget-object v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@25
    if-eqz v0, :cond_1

    #@27
    iget-object v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@29
    array-length v0, v0

    #@2a
    if-nez v0, :cond_2

    #@2c
    .line 650
    :cond_1
    const-string/jumbo v0, "WifiScanningService"

    #@2f
    const-string/jumbo v1, "Failing single scan because channel list was empty"

    #@32
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 651
    return v3

    #@36
    .line 654
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@38
    const-string/jumbo v1, "addSingleScanRequest"

    #@3b
    move-object v2, p1

    #@3c
    move v3, p2

    #@3d
    move-object v4, p4

    #@3e
    move-object v5, p3

    #@3f
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    #@42
    .line 655
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@44
    invoke-virtual {v0, p1, p2, p4, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->addRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Ljava/lang/Object;)V

    #@47
    .line 656
    const/4 v0, 0x1

    #@48
    return v0
.end method
