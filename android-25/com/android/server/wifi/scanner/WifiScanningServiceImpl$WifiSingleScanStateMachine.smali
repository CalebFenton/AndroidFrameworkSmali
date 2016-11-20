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
.field private mActiveScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

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

.method static synthetic -set0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;Lcom/android/server/wifi/WifiNative$ScanSettings;)Lcom/android/server/wifi/WifiNative$ScanSettings;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@2
    return-object p1
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
    .line 438
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@3
    .line 439
    const-string/jumbo v0, "WifiSingleScanStateMachine"

    #@6
    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    #@9
    .line 429
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

    #@b
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)V

    #@e
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

    #@10
    .line 430
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;

    #@12
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)V

    #@15
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDriverStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;

    #@17
    .line 431
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;

    #@19
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)V

    #@1c
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mIdleState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;

    #@1e
    .line 432
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;

    #@20
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)V

    #@23
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mScanningState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;

    #@25
    .line 434
    iput-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@27
    .line 435
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@29
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;)V

    #@2e
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@30
    .line 436
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@32
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@34
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;)V

    #@37
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@39
    .line 441
    const/16 v0, 0x80

    #@3b
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->setLogRecSize(I)V

    #@3e
    .line 442
    const/4 v0, 0x0

    #@3f
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->setLogOnlyTransitions(Z)V

    #@42
    .line 445
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

    #@44
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@47
    .line 446
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDriverStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;

    #@49
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

    #@4b
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@4e
    .line 447
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mIdleState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;

    #@50
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDriverStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;

    #@52
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@55
    .line 448
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mScanningState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;

    #@57
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDriverStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DriverStartedState;

    #@59
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@5c
    .line 451
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$DefaultState;

    #@5e
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@61
    .line 438
    return-void
.end method


# virtual methods
.method activeScanSatisfies(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 9
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 684
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 685
    return v5

    #@6
    .line 689
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@8
    iget-object v4, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@a
    aget-object v0, v4, v5

    #@c
    .line 692
    .local v0, "activeBucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@e
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/ChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    #@15
    move-result-object v1

    #@16
    .line 693
    .local v1, "activeChannels":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Lcom/android/server/wifi/WifiNative$BucketSettings;)V

    #@19
    .line 694
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_1

    #@1f
    .line 695
    return v5

    #@20
    .line 699
    :cond_1
    iget v4, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@22
    and-int/lit8 v4, v4, 0x2

    #@24
    if-eqz v4, :cond_2

    #@26
    .line 700
    iget v4, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@28
    and-int/lit8 v4, v4, 0x2

    #@2a
    if-nez v4, :cond_2

    #@2c
    .line 702
    return v5

    #@2d
    .line 705
    :cond_2
    iget-object v4, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    #@2f
    if-eqz v4, :cond_6

    #@31
    .line 706
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@33
    iget-object v4, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworkIds:[I

    #@35
    if-nez v4, :cond_3

    #@37
    .line 707
    return v5

    #@38
    .line 709
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    #@3a
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@3d
    .line 710
    .local v2, "activeHiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@3f
    iget-object v6, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworkIds:[I

    #@41
    array-length v7, v6

    #@42
    move v4, v5

    #@43
    :goto_0
    if-ge v4, v7, :cond_4

    #@45
    aget v3, v6, v4

    #@47
    .line 711
    .local v3, "id":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a
    move-result-object v8

    #@4b
    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4e
    .line 710
    add-int/lit8 v4, v4, 0x1

    #@50
    goto :goto_0

    #@51
    .line 713
    .end local v3    # "id":I
    :cond_4
    iget-object v6, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    #@53
    array-length v7, v6

    #@54
    move v4, v5

    #@55
    :goto_1
    if-ge v4, v7, :cond_6

    #@57
    aget v3, v6, v4

    #@59
    .line 714
    .restart local v3    # "id":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5c
    move-result-object v8

    #@5d
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@60
    move-result v8

    #@61
    if-nez v8, :cond_5

    #@63
    .line 715
    return v5

    #@64
    .line 713
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@66
    goto :goto_1

    #@67
    .line 720
    .end local v2    # "activeHiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v3    # "id":I
    :cond_6
    const/4 v4, 0x1

    #@68
    return v4
.end method

.method public onFullScanResult(Landroid/net/wifi/ScanResult;I)V
    .locals 2
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "bucketsScanned"    # I

    #@0
    .prologue
    .line 482
    const v0, 0x27101

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@7
    .line 480
    return-void
.end method

.method public onScanPaused([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 2
    .param p1, "scanData"    # [Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    .line 488
    const-string/jumbo v0, "WifiScanningService"

    #@3
    const-string/jumbo v1, "Got scan paused for single scan"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 486
    return-void
.end method

.method public onScanRestarted()V
    .locals 2

    #@0
    .prologue
    .line 494
    const-string/jumbo v0, "WifiScanningService"

    #@3
    const-string/jumbo v1, "Got scan restarted for single scan"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 492
    return-void
.end method

.method public onScanStatus(I)V
    .locals 3
    .param p1, "event"    # I

    #@0
    .prologue
    .line 461
    packed-switch p1, :pswitch_data_0

    #@3
    .line 471
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
    .line 459
    :goto_0
    return-void

    #@1e
    .line 465
    :pswitch_0
    const v0, 0x27100

    #@21
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendMessage(I)V

    #@24
    goto :goto_0

    #@25
    .line 468
    :pswitch_1
    const v0, 0x2710a

    #@28
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendMessage(I)V

    #@2b
    goto :goto_0

    #@2c
    .line 461
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
    .line 724
    if-eqz p1, :cond_0

    #@3
    .line 725
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
    .line 726
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@11
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    #@14
    .line 727
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@16
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    #@19
    .line 723
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
    .line 732
    if-eqz p1, :cond_0

    #@3
    .line 733
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
    .line 734
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@11
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeAllForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    #@14
    .line 735
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@16
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeAllForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    #@19
    .line 731
    :cond_0
    return-void
.end method

.method reportFullScanResult(Landroid/net/wifi/ScanResult;I)V
    .locals 8
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "bucketsScanned"    # I

    #@0
    .prologue
    const v7, 0x27014

    #@3
    const/4 v6, 0x0

    #@4
    .line 808
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@16
    .line 809
    .local v0, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@18
    invoke-static {v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    #@1b
    move-result-object v4

    #@1c
    .line 810
    iget-object v3, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@1e
    check-cast v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@20
    const/4 v5, -0x1

    #@21
    .line 809
    invoke-static {v4, p1, p2, v3, v5}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->shouldReportFullScanResultForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/net/wifi/ScanResult;ILandroid/net/wifi/WifiScanner$ScanSettings;I)Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_0

    #@27
    .line 811
    invoke-virtual {v0, v7, v6, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->reportEvent(IILjava/lang/Object;)V

    #@2a
    goto :goto_0

    #@2b
    .line 815
    .end local v0    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2d
    invoke-static {v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get14(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@30
    move-result-object v3

    #@31
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v2

    #@35
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_2

    #@3b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v1

    #@3f
    check-cast v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@41
    .line 816
    .local v1, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Ljava/lang/Void;>;"
    invoke-virtual {v1, v7, v6, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->reportEvent(IILjava/lang/Object;)V

    #@44
    goto :goto_1

    #@45
    .line 807
    .end local v1    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Ljava/lang/Void;>;"
    :cond_2
    return-void
.end method

.method reportScanResults(Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 12
    .param p1, "results"    # Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    .line 821
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    #@5
    move-result-object v7

    #@6
    if-eqz v7, :cond_0

    #@8
    .line 822
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    #@b
    move-result-object v7

    #@c
    array-length v7, v7

    #@d
    if-lez v7, :cond_1

    #@f
    .line 823
    iget-object v7, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@11
    invoke-static {v7}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get17(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    #@14
    move-result-object v7

    #@15
    invoke-virtual {v7}, Lcom/android/server/wifi/WifiMetrics;->incrementNonEmptyScanResultCount()V

    #@18
    .line 828
    :cond_0
    :goto_0
    const/4 v7, 0x1

    #@19
    new-array v0, v7, [Landroid/net/wifi/WifiScanner$ScanData;

    #@1b
    const/4 v7, 0x0

    #@1c
    aput-object p1, v0, v7

    #@1e
    .line 829
    .local v0, "allResults":[Landroid/net/wifi/WifiScanner$ScanData;
    iget-object v7, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@20
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v3

    #@24
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_2

    #@2a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@30
    .line 831
    .local v1, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v7, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@32
    invoke-static {v7}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    #@35
    move-result-object v8

    #@36
    iget-object v7, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@38
    check-cast v7, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@3a
    const/4 v9, -0x1

    #@3b
    .line 830
    invoke-static {v8, v0, v7, v9}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->filterResultsForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;[Landroid/net/wifi/WifiScanner$ScanData;Landroid/net/wifi/WifiScanner$ScanSettings;I)[Landroid/net/wifi/WifiScanner$ScanData;

    #@3e
    move-result-object v6

    #@3f
    .line 833
    .local v6, "resultsToDeliver":[Landroid/net/wifi/WifiScanner$ScanData;
    new-instance v5, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    #@41
    invoke-direct {v5, v6}, Landroid/net/wifi/WifiScanner$ParcelableScanData;-><init>([Landroid/net/wifi/WifiScanner$ScanData;)V

    #@44
    .line 834
    .local v5, "parcelableResultsToDeliver":Landroid/net/wifi/WifiScanner$ParcelableScanData;
    iget-object v7, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@46
    const-string/jumbo v8, "singleScanResults"

    #@49
    iget-object v9, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@4b
    iget v10, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    #@4d
    .line 835
    invoke-static {v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->describeForLog([Landroid/net/wifi/WifiScanner$ScanData;)Ljava/lang/String;

    #@50
    move-result-object v11

    #@51
    .line 834
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logCallback(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILjava/lang/String;)V

    #@54
    .line 836
    const v7, 0x27005

    #@57
    const/4 v8, 0x0

    #@58
    invoke-virtual {v1, v7, v8, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->reportEvent(IILjava/lang/Object;)V

    #@5b
    .line 838
    const v7, 0x27017

    #@5e
    const/4 v8, 0x0

    #@5f
    const/4 v9, 0x0

    #@60
    invoke-virtual {v1, v7, v8, v9}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->reportEvent(IILjava/lang/Object;)V

    #@63
    goto :goto_1

    #@64
    .line 825
    .end local v0    # "allResults":[Landroid/net/wifi/WifiScanner$ScanData;
    .end local v1    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v5    # "parcelableResultsToDeliver":Landroid/net/wifi/WifiScanner$ParcelableScanData;
    .end local v6    # "resultsToDeliver":[Landroid/net/wifi/WifiScanner$ScanData;
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@66
    invoke-static {v7}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get17(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    #@69
    move-result-object v7

    #@6a
    invoke-virtual {v7}, Lcom/android/server/wifi/WifiMetrics;->incrementEmptyScanResultCount()V

    #@6d
    goto :goto_0

    #@6e
    .line 842
    .restart local v0    # "allResults":[Landroid/net/wifi/WifiScanner$ScanData;
    .restart local v3    # "entry$iterator":Ljava/util/Iterator;
    :cond_2
    new-instance v4, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    #@70
    invoke-direct {v4, v0}, Landroid/net/wifi/WifiScanner$ParcelableScanData;-><init>([Landroid/net/wifi/WifiScanner$ScanData;)V

    #@73
    .line 843
    .local v4, "parcelableAllResults":Landroid/net/wifi/WifiScanner$ParcelableScanData;
    iget-object v7, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@75
    invoke-static {v7}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get14(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@78
    move-result-object v7

    #@79
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7c
    move-result-object v3

    #@7d
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@80
    move-result v7

    #@81
    if-eqz v7, :cond_3

    #@83
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@86
    move-result-object v2

    #@87
    check-cast v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@89
    .line 844
    .local v2, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Ljava/lang/Void;>;"
    iget-object v7, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@8b
    const-string/jumbo v8, "singleScanResults"

    #@8e
    iget-object v9, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@90
    iget v10, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    #@92
    .line 845
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->describeForLog([Landroid/net/wifi/WifiScanner$ScanData;)Ljava/lang/String;

    #@95
    move-result-object v11

    #@96
    .line 844
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logCallback(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILjava/lang/String;)V

    #@99
    .line 846
    const v7, 0x27005

    #@9c
    const/4 v8, 0x0

    #@9d
    invoke-virtual {v2, v7, v8, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->reportEvent(IILjava/lang/Object;)V

    #@a0
    goto :goto_2

    #@a1
    .line 820
    .end local v2    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Ljava/lang/Void;>;"
    :cond_3
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
    .line 798
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
    .line 799
    .local v0, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<*>;"
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@12
    const-string/jumbo v3, "singleScanFailed"

    #@15
    iget-object v4, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@17
    iget v5, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    #@19
    .line 800
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
    .line 799
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logCallback(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILjava/lang/String;)V

    #@3b
    .line 802
    new-instance v2, Landroid/net/wifi/WifiScanner$OperationResult;

    #@3d
    invoke-direct {v2, p2, p3}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    #@40
    .line 801
    const v3, 0x27012

    #@43
    const/4 v4, 0x0

    #@44
    invoke-virtual {v0, v3, v4, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->reportEvent(IILjava/lang/Object;)V

    #@47
    goto :goto_0

    #@48
    .line 804
    .end local v0    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<*>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    #@4b
    .line 797
    return-void
.end method

.method tryToStartNewScan()V
    .locals 15

    #@0
    .prologue
    .line 740
    iget-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2
    invoke-virtual {v12}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->size()I

    #@5
    move-result v12

    #@6
    if-nez v12, :cond_0

    #@8
    .line 741
    return-void

    #@9
    .line 743
    :cond_0
    iget-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@b
    invoke-static {v12}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    #@e
    move-result-object v12

    #@f
    invoke-virtual {v12}, Lcom/android/server/wifi/scanner/ChannelHelper;->updateChannels()V

    #@12
    .line 745
    new-instance v10, Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@14
    invoke-direct {v10}, Lcom/android/server/wifi/WifiNative$ScanSettings;-><init>()V

    #@17
    .line 746
    .local v10, "settings":Lcom/android/server/wifi/WifiNative$ScanSettings;
    const/4 v12, 0x1

    #@18
    iput v12, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@1a
    .line 747
    new-instance v0, Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@1c
    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$BucketSettings;-><init>()V

    #@1f
    .line 748
    .local v0, "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    const/4 v12, 0x0

    #@20
    iput v12, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    #@22
    .line 749
    const/4 v12, 0x0

    #@23
    iput v12, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    #@25
    .line 750
    const/4 v12, 0x1

    #@26
    iput v12, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@28
    .line 752
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
    .line 753
    .local v1, "channels":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    new-instance v6, Ljava/util/HashSet;

    #@34
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@37
    .line 754
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
    .line 755
    .local v2, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v12, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@4b
    check-cast v12, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@4d
    invoke-virtual {v1, v12}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    #@50
    .line 756
    iget-object v12, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@52
    check-cast v12, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@54
    iget-object v12, v12, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    #@56
    if-eqz v12, :cond_2

    #@58
    .line 757
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
    .line 758
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
    .line 757
    add-int/lit8 v7, v7, 0x1

    #@73
    goto :goto_1

    #@74
    .line 761
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
    .line 763
    iget v12, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@80
    or-int/lit8 v12, v12, 0x2

    #@82
    iput v12, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@84
    goto :goto_0

    #@85
    .line 766
    .end local v2    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_3
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    #@88
    move-result v12

    #@89
    if-lez v12, :cond_4

    #@8b
    .line 767
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    #@8e
    move-result v12

    #@8f
    new-array v12, v12, [I

    #@91
    iput-object v12, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworkIds:[I

    #@93
    .line 768
    const/4 v8, 0x0

    #@94
    .line 769
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
    .line 770
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
    .line 774
    .end local v4    # "hiddenNetworkId":Ljava/lang/Integer;
    .end local v5    # "hiddenNetworkId$iterator":Ljava/util/Iterator;
    .end local v8    # "numHiddenNetworks":I
    :cond_4
    const v12, 0x7fffffff

    #@b3
    invoke-virtual {v1, v0, v12}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->fillBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;I)V

    #@b6
    .line 776
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
    .line 777
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
    .line 779
    iput-object v10, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@cc
    .line 781
    iget-object v11, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@ce
    .line 782
    .local v11, "tmp":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@d0
    iput-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mActiveScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@d2
    .line 783
    iput-object v11, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@d4
    .line 785
    iget-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@d6
    invoke-virtual {v12}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    #@d9
    .line 786
    iget-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mScanningState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;

    #@db
    invoke-virtual {p0, v12}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    #@de
    .line 739
    .end local v11    # "tmp":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :goto_3
    return-void

    #@df
    .line 788
    :cond_5
    iget-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@e1
    invoke-static {v12}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get17(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    #@e4
    move-result-object v12

    #@e5
    .line 789
    iget-object v13, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@e7
    invoke-virtual {v13}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->size()I

    #@ea
    move-result v13

    #@eb
    const/4 v14, 0x0

    #@ec
    .line 788
    invoke-virtual {v12, v14, v13}, Lcom/android/server/wifi/WifiMetrics;->incrementScanReturnEntry(II)V

    #@ef
    .line 791
    iget-object v12, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->mPendingScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@f1
    .line 792
    const-string/jumbo v13, "Failed to start single scan"

    #@f4
    .line 791
    const/4 v14, -0x1

    #@f5
    invoke-virtual {p0, v12, v14, v13}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendOpFailedToAllAndClear(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;ILjava/lang/String;)V

    #@f8
    goto :goto_3
.end method

.method validateScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)Z
    .locals 4
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p4, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 670
    if-nez p1, :cond_0

    #@3
    .line 671
    const-string/jumbo v0, "WifiScanningService"

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Failing single scan request ClientInfo not found "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 672
    return v3

    #@1e
    .line 674
    :cond_0
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@20
    if-nez v0, :cond_2

    #@22
    .line 675
    iget-object v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@24
    if-eqz v0, :cond_1

    #@26
    iget-object v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@28
    array-length v0, v0

    #@29
    if-nez v0, :cond_2

    #@2b
    .line 676
    :cond_1
    const-string/jumbo v0, "WifiScanningService"

    #@2e
    const-string/jumbo v1, "Failing single scan because channel list was empty"

    #@31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 677
    return v3

    #@35
    .line 680
    :cond_2
    const/4 v0, 0x1

    #@36
    return v0
.end method
