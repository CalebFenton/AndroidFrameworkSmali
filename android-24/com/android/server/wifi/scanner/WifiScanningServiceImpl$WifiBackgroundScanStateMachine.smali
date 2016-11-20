.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiScanningServiceImpl.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$ScanEventHandler;
.implements Lcom/android/server/wifi/WifiNative$HotlistEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiBackgroundScanStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;
    }
.end annotation


# instance fields
.field private final mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mActiveHotlistSettings:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList",
            "<",
            "Landroid/net/wifi/WifiScanner$HotlistSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

.field private final mPausedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;

.field private final mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;

.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveHotlistSettings:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mPausedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)Z
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p4, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->addBackgroundScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$HotlistSettings;)V
    .locals 0
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->addHotlist(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$HotlistSettings;)V

    #@3
    return-void
.end method

.method static synthetic -wrap10(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;ILjava/lang/String;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendHotlistFailedToAllAndClear(ILjava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->deferMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 0
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->removeBackgroundScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 0
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->removeHotlist(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Landroid/net/wifi/ScanResult;I)V
    .locals 0
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "bucketsScanned"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->reportFullScanResult(Landroid/net/wifi/ScanResult;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;I[Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->reportHotlistResults(I[Landroid/net/wifi/ScanResult;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;[Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 0
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;ILjava/lang/String;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendBackgroundScanFailedToAllAndClear(ILjava/lang/String;)V

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
    .line 784
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@3
    .line 785
    const-string/jumbo v0, "WifiBackgroundScanStateMachine"

    #@6
    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    #@9
    .line 776
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    #@b
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)V

    #@e
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    #@10
    .line 777
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;

    #@12
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)V

    #@15
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;

    #@17
    .line 778
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;

    #@19
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)V

    #@1c
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mPausedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;

    #@1e
    .line 780
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@20
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@22
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;)V

    #@25
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@27
    .line 782
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@29
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;)V

    #@2e
    .line 781
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveHotlistSettings:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@30
    .line 787
    const/16 v0, 0x200

    #@32
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->setLogRecSize(I)V

    #@35
    .line 788
    const/4 v0, 0x0

    #@36
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->setLogOnlyTransitions(Z)V

    #@39
    .line 791
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    #@3b
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@3e
    .line 792
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;

    #@40
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    #@42
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@45
    .line 793
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mPausedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;

    #@47
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    #@49
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@4c
    .line 796
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    #@4e
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@51
    .line 784
    return-void
.end method

.method private addBackgroundScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)Z
    .locals 10
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p4, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    const/16 v2, 0x3e8

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v8, 0x0

    #@5
    .line 1037
    if-nez p1, :cond_0

    #@7
    .line 1038
    const-string/jumbo v0, "WifiScanningService"

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Failing scan request ClientInfo not found "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 1039
    return v8

    #@22
    .line 1041
    :cond_0
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@24
    if-ge v0, v2, :cond_1

    #@26
    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v1, "Failing scan request because periodInMs is "

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 1043
    const-string/jumbo v1, ", min scan period is: "

    #@3b
    .line 1042
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    #@4a
    .line 1044
    return v8

    #@4b
    .line 1047
    :cond_1
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@4d
    if-nez v0, :cond_2

    #@4f
    iget-object v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@51
    if-nez v0, :cond_2

    #@53
    .line 1048
    const-string/jumbo v0, "Channels was null with unspecified band"

    #@56
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    #@59
    .line 1049
    return v8

    #@5a
    .line 1052
    :cond_2
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@5c
    if-nez v0, :cond_3

    #@5e
    .line 1053
    iget-object v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@60
    array-length v0, v0

    #@61
    if-nez v0, :cond_3

    #@63
    .line 1054
    const-string/jumbo v0, "No channels specified"

    #@66
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    #@69
    .line 1055
    return v8

    #@6a
    .line 1058
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@6c
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {v0, p3}, Lcom/android/server/wifi/scanner/ChannelHelper;->estimateScanDuration(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    #@73
    move-result v7

    #@74
    .line 1059
    .local v7, "minSupportedPeriodMs":I
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@76
    if-ge v0, v7, :cond_4

    #@78
    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v1, "Failing scan request because minSupportedPeriodMs is "

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    .line 1061
    const-string/jumbo v1, " but the request wants "

    #@8b
    .line 1060
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    .line 1061
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@91
    .line 1060
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v0

    #@99
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    #@9c
    .line 1062
    return v8

    #@9d
    .line 1066
    :cond_4
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@9f
    if-eqz v0, :cond_7

    #@a1
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@a3
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@a5
    if-eq v0, v1, :cond_7

    #@a7
    .line 1067
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@a9
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@ab
    if-ge v0, v1, :cond_5

    #@ad
    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v1, "Failing scan request because maxPeriodInMs is "

    #@b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v0

    #@b9
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@be
    move-result-object v0

    #@bf
    .line 1069
    const-string/jumbo v1, " but less than periodInMs "

    #@c2
    .line 1068
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v0

    #@c6
    .line 1069
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@c8
    .line 1068
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v0

    #@cc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v0

    #@d0
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    #@d3
    .line 1070
    return v8

    #@d4
    .line 1072
    :cond_5
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@d6
    const v1, 0xfa000

    #@d9
    if-le v0, v1, :cond_6

    #@db
    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v1, "Failing scan request because maxSupportedPeriodMs is 1024000 but the request wants "

    #@e3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v0

    #@e7
    .line 1075
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@e9
    .line 1073
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v0

    #@ed
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v0

    #@f1
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    #@f4
    .line 1076
    return v8

    #@f5
    .line 1078
    :cond_6
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    #@f7
    if-ge v0, v9, :cond_7

    #@f9
    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    #@fb
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@fe
    const-string/jumbo v1, "Failing scan request because stepCount is "

    #@101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v0

    #@105
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    #@107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v0

    #@10b
    .line 1080
    const-string/jumbo v1, " which is less than 1"

    #@10e
    .line 1079
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v0

    #@112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@115
    move-result-object v0

    #@116
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    #@119
    .line 1081
    return v8

    #@11a
    .line 1085
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@11c
    const-string/jumbo v1, "addBackgroundScanRequest"

    #@11f
    move-object v2, p1

    #@120
    move v3, p2

    #@121
    move-object v5, p3

    #@122
    move-object v6, v4

    #@123
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    #@126
    .line 1086
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@128
    invoke-virtual {v0, p1, p2, p4, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->addRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Ljava/lang/Object;)V

    #@12b
    .line 1088
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->updateSchedule()Z

    #@12e
    move-result v0

    #@12f
    if-eqz v0, :cond_8

    #@131
    .line 1089
    return v9

    #@132
    .line 1091
    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@134
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    #@137
    .line 1092
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@139
    const-string/jumbo v1, "Failing scan request because failed to reset scan"

    #@13c
    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    #@13f
    .line 1093
    return v8
.end method

.method private addHotlist(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$HotlistSettings;)V
    .locals 2
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@0
    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveHotlistSettings:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->addRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Ljava/lang/Object;)V

    #@6
    .line 1219
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->resetHotlist()V

    #@9
    .line 1217
    return-void
.end method

.method private removeBackgroundScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 7
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1155
    if-eqz p1, :cond_0

    #@3
    .line 1156
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    #@8
    move-result-object v5

    #@9
    check-cast v5, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@b
    .line 1157
    .local v5, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@d
    const-string/jumbo v1, "removeBackgroundScanRequest"

    #@10
    move-object v2, p1

    #@11
    move v3, p2

    #@12
    move-object v6, v4

    #@13
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)V

    #@16
    .line 1158
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->updateSchedule()Z

    #@19
    .line 1154
    .end local v5    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_0
    return-void
.end method

.method private removeHotlist(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    #@0
    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveHotlistSettings:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    #@5
    .line 1224
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->resetHotlist()V

    #@8
    .line 1222
    return-void
.end method

.method private reportFullScanResult(Landroid/net/wifi/ScanResult;I)V
    .locals 9
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "bucketsScanned"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1163
    iget-object v6, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@3
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v2

    #@7
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_2

    #@d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@13
    .line 1164
    .local v1, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v0, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@15
    .line 1165
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v3, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    #@17
    .line 1166
    .local v3, "handler":I
    iget-object v5, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@19
    check-cast v5, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@1b
    .line 1167
    .local v5, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v6, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@1d
    invoke-static {v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v6, p1, p2, v5}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->shouldReportFullScanResultForSettings(Landroid/net/wifi/ScanResult;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_0

    #@27
    .line 1169
    new-instance v4, Landroid/net/wifi/ScanResult;

    #@29
    invoke-direct {v4, p1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    #@2c
    .line 1170
    .local v4, "newResult":Landroid/net/wifi/ScanResult;
    iget-object v6, p1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@2e
    if-eqz v6, :cond_1

    #@30
    .line 1171
    iget-object v6, p1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@32
    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@35
    move-result-object v6

    #@36
    check-cast v6, [Landroid/net/wifi/ScanResult$InformationElement;

    #@38
    iput-object v6, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@3a
    .line 1176
    :goto_1
    const v6, 0x27014

    #@3d
    const/4 v7, 0x0

    #@3e
    invoke-virtual {v0, v6, v7, v3, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    #@41
    goto :goto_0

    #@42
    .line 1174
    :cond_1
    iput-object v8, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@44
    goto :goto_1

    #@45
    .line 1162
    .end local v0    # "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .end local v1    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v3    # "handler":I
    .end local v4    # "newResult":Landroid/net/wifi/ScanResult;
    .end local v5    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_2
    return-void
.end method

.method private reportHotlistResults(I[Landroid/net/wifi/ScanResult;)V
    .locals 19
    .param p1, "what"    # I
    .param p2, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 1265
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveHotlistSettings:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@4
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v4

    #@8
    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v12

    #@c
    if-eqz v12, :cond_7

    #@e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@14
    .line 1266
    .local v3, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    iget-object v2, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@16
    .line 1267
    .local v2, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v5, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    #@18
    .line 1268
    .local v5, "handler":I
    iget-object v11, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@1a
    check-cast v11, Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@1c
    .line 1269
    .local v11, "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    const/4 v7, 0x0

    #@1d
    .line 1270
    .local v7, "num_results":I
    const/4 v12, 0x0

    #@1e
    move-object/from16 v0, p2

    #@20
    array-length v14, v0

    #@21
    move v13, v12

    #@22
    :goto_1
    if-ge v13, v14, :cond_2

    #@24
    aget-object v9, p2, v13

    #@26
    .line 1271
    .local v9, "result":Landroid/net/wifi/ScanResult;
    iget-object v15, v11, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@28
    const/4 v12, 0x0

    #@29
    array-length v0, v15

    #@2a
    move/from16 v16, v0

    #@2c
    :goto_2
    move/from16 v0, v16

    #@2e
    if-ge v12, v0, :cond_0

    #@30
    aget-object v1, v15, v12

    #@32
    .line 1272
    .local v1, "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    iget-object v0, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@34
    move-object/from16 v17, v0

    #@36
    iget-object v0, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    #@38
    move-object/from16 v18, v0

    #@3a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3d
    move-result v17

    #@3e
    if-eqz v17, :cond_1

    #@40
    .line 1273
    add-int/lit8 v7, v7, 0x1

    #@42
    .line 1270
    .end local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_0
    add-int/lit8 v12, v13, 0x1

    #@44
    move v13, v12

    #@45
    goto :goto_1

    #@46
    .line 1271
    .restart local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    #@48
    goto :goto_2

    #@49
    .line 1278
    .end local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    .end local v9    # "result":Landroid/net/wifi/ScanResult;
    :cond_2
    if-nez v7, :cond_3

    #@4b
    .line 1280
    return-void

    #@4c
    .line 1282
    :cond_3
    new-array v10, v7, [Landroid/net/wifi/ScanResult;

    #@4e
    .line 1283
    .local v10, "results2":[Landroid/net/wifi/ScanResult;
    const/4 v6, 0x0

    #@4f
    .line 1284
    .local v6, "index":I
    const/4 v12, 0x0

    #@50
    move-object/from16 v0, p2

    #@52
    array-length v14, v0

    #@53
    move v13, v12

    #@54
    :goto_3
    if-ge v13, v14, :cond_6

    #@56
    aget-object v9, p2, v13

    #@58
    .line 1285
    .restart local v9    # "result":Landroid/net/wifi/ScanResult;
    iget-object v15, v11, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@5a
    const/4 v12, 0x0

    #@5b
    array-length v0, v15

    #@5c
    move/from16 v16, v0

    #@5e
    :goto_4
    move/from16 v0, v16

    #@60
    if-ge v12, v0, :cond_5

    #@62
    aget-object v1, v15, v12

    #@64
    .line 1286
    .restart local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    iget-object v0, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@66
    move-object/from16 v17, v0

    #@68
    iget-object v0, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    #@6a
    move-object/from16 v18, v0

    #@6c
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6f
    move-result v17

    #@70
    if-eqz v17, :cond_4

    #@72
    .line 1287
    aput-object v9, v10, v6

    #@74
    .line 1288
    add-int/lit8 v6, v6, 0x1

    #@76
    .line 1285
    :cond_4
    add-int/lit8 v12, v12, 0x1

    #@78
    goto :goto_4

    #@79
    .line 1284
    .end local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_5
    add-int/lit8 v12, v13, 0x1

    #@7b
    move v13, v12

    #@7c
    goto :goto_3

    #@7d
    .line 1293
    .end local v9    # "result":Landroid/net/wifi/ScanResult;
    :cond_6
    new-instance v8, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    #@7f
    invoke-direct {v8, v10}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    #@82
    .line 1295
    .local v8, "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    const/4 v12, 0x0

    #@83
    move/from16 v0, p1

    #@85
    invoke-virtual {v2, v0, v12, v5, v8}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    #@88
    goto :goto_0

    #@89
    .line 1263
    .end local v2    # "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .end local v3    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    .end local v5    # "handler":I
    .end local v6    # "index":I
    .end local v7    # "num_results":I
    .end local v8    # "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    .end local v10    # "results2":[Landroid/net/wifi/ScanResult;
    .end local v11    # "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    :cond_7
    return-void
.end method

.method private reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 12
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1182
    array-length v10, p1

    #@2
    move v8, v9

    #@3
    :goto_0
    if-ge v8, v10, :cond_2

    #@5
    aget-object v5, p1, v8

    #@7
    .line 1183
    .local v5, "result":Landroid/net/wifi/WifiScanner$ScanData;
    if-eqz v5, :cond_0

    #@9
    invoke-virtual {v5}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    #@c
    move-result-object v11

    #@d
    if-eqz v11, :cond_0

    #@f
    .line 1184
    invoke-virtual {v5}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    #@12
    move-result-object v11

    #@13
    array-length v11, v11

    #@14
    if-lez v11, :cond_1

    #@16
    .line 1185
    iget-object v11, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@18
    invoke-static {v11}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get16(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    #@1b
    move-result-object v11

    #@1c
    invoke-virtual {v11}, Lcom/android/server/wifi/WifiMetrics;->incrementNonEmptyScanResultCount()V

    #@1f
    .line 1182
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1187
    :cond_1
    iget-object v11, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@24
    invoke-static {v11}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get16(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    #@27
    move-result-object v11

    #@28
    invoke-virtual {v11}, Lcom/android/server/wifi/WifiMetrics;->incrementEmptyScanResultCount()V

    #@2b
    goto :goto_1

    #@2c
    .line 1191
    .end local v5    # "result":Landroid/net/wifi/WifiScanner$ScanData;
    :cond_2
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2e
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v2

    #@32
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v8

    #@36
    if-eqz v8, :cond_4

    #@38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    check-cast v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@3e
    .line 1192
    .local v1, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v0, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@40
    .line 1193
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v3, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    #@42
    .line 1194
    .local v3, "handler":I
    iget-object v7, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@44
    check-cast v7, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@46
    .line 1196
    .local v7, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@48
    invoke-static {v8}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    #@4b
    move-result-object v8

    #@4c
    invoke-virtual {v8, p1, v7}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->filterResultsForSettings([Landroid/net/wifi/WifiScanner$ScanData;Landroid/net/wifi/WifiScanner$ScanSettings;)[Landroid/net/wifi/WifiScanner$ScanData;

    #@4f
    move-result-object v6

    #@50
    .line 1197
    .local v6, "resultsToDeliver":[Landroid/net/wifi/WifiScanner$ScanData;
    if-eqz v6, :cond_3

    #@52
    .line 1198
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@54
    const-string/jumbo v10, "backgroundScanResults"

    #@57
    .line 1199
    invoke-static {v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->describeForLog([Landroid/net/wifi/WifiScanner$ScanData;)Ljava/lang/String;

    #@5a
    move-result-object v11

    #@5b
    .line 1198
    invoke-virtual {v8, v10, v0, v3, v11}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logCallback(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILjava/lang/String;)V

    #@5e
    .line 1201
    new-instance v4, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    #@60
    invoke-direct {v4, v6}, Landroid/net/wifi/WifiScanner$ParcelableScanData;-><init>([Landroid/net/wifi/WifiScanner$ScanData;)V

    #@63
    .line 1202
    .local v4, "parcelableScanData":Landroid/net/wifi/WifiScanner$ParcelableScanData;
    const v8, 0x27005

    #@66
    invoke-virtual {v0, v8, v9, v3, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    #@69
    goto :goto_2

    #@6a
    .line 1181
    .end local v0    # "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .end local v1    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v3    # "handler":I
    .end local v4    # "parcelableScanData":Landroid/net/wifi/WifiScanner$ParcelableScanData;
    .end local v6    # "resultsToDeliver":[Landroid/net/wifi/WifiScanner$ScanData;
    .end local v7    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_4
    return-void
.end method

.method private resetHotlist()V
    .locals 10

    #@0
    .prologue
    .line 1228
    iget-object v9, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2
    invoke-static {v9}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@5
    move-result-object v9

    #@6
    if-nez v9, :cond_0

    #@8
    .line 1229
    const-string/jumbo v9, "Failed to update hotlist because WifiScanningService is not initialized"

    #@b
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    #@e
    .line 1230
    return-void

    #@f
    .line 1234
    :cond_0
    iget-object v9, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveHotlistSettings:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@11
    invoke-virtual {v9}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->getAllSettings()Ljava/util/Collection;

    #@14
    move-result-object v8

    #@15
    .line 1235
    .local v8, "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    const/4 v5, 0x0

    #@16
    .line 1237
    .local v5, "num_hotlist_ap":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v7

    #@1a
    .local v7, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v9

    #@1e
    if-eqz v9, :cond_1

    #@20
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v6

    #@24
    check-cast v6, Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@26
    .line 1238
    .local v6, "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iget-object v9, v6, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@28
    array-length v9, v9

    #@29
    add-int/2addr v5, v9

    #@2a
    goto :goto_0

    #@2b
    .line 1241
    .end local v6    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    :cond_1
    if-nez v5, :cond_2

    #@2d
    .line 1242
    iget-object v9, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2f
    invoke-static {v9}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@32
    move-result-object v9

    #@33
    invoke-virtual {v9}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->resetHotlist()V

    #@36
    .line 1227
    :goto_1
    return-void

    #@37
    .line 1244
    :cond_2
    new-array v1, v5, [Landroid/net/wifi/WifiScanner$BssidInfo;

    #@39
    .line 1245
    .local v1, "bssidInfos":[Landroid/net/wifi/WifiScanner$BssidInfo;
    const v0, 0x7fffffff

    #@3c
    .line 1246
    .local v0, "apLostThreshold":I
    const/4 v3, 0x0

    #@3d
    .line 1247
    .local v3, "index":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v7

    #@41
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@44
    move-result v9

    #@45
    if-eqz v9, :cond_5

    #@47
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4a
    move-result-object v6

    #@4b
    check-cast v6, Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@4d
    .line 1248
    .restart local v6    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    const/4 v2, 0x0

    #@4e
    .local v2, "i":I
    :goto_3
    iget-object v9, v6, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@50
    array-length v9, v9

    #@51
    if-ge v2, v9, :cond_4

    #@53
    .line 1249
    iget-object v9, v6, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@55
    aget-object v9, v9, v2

    #@57
    aput-object v9, v1, v3

    #@59
    .line 1248
    add-int/lit8 v2, v2, 0x1

    #@5b
    add-int/lit8 v3, v3, 0x1

    #@5d
    goto :goto_3

    #@5e
    .line 1251
    :cond_4
    iget v9, v6, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    #@60
    if-ge v9, v0, :cond_3

    #@62
    .line 1252
    iget v0, v6, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    #@64
    goto :goto_2

    #@65
    .line 1256
    .end local v2    # "i":I
    .end local v6    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    :cond_5
    new-instance v4, Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@67
    invoke-direct {v4}, Landroid/net/wifi/WifiScanner$HotlistSettings;-><init>()V

    #@6a
    .line 1257
    .local v4, "mergedSettings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iput-object v1, v4, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@6c
    .line 1258
    iput v0, v4, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    #@6e
    .line 1259
    iget-object v9, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@70
    invoke-static {v9}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@73
    move-result-object v9

    #@74
    invoke-virtual {v9, v4, p0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->setHotlist(Landroid/net/wifi/WifiScanner$HotlistSettings;Lcom/android/server/wifi/WifiNative$HotlistEventHandler;)Z

    #@77
    goto :goto_1
.end method

.method private sendBackgroundScanFailedToAllAndClear(ILjava/lang/String;)V
    .locals 7
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1208
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@12
    .line 1209
    .local v1, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v0, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@14
    .line 1210
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v3, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    #@16
    .line 1212
    .local v3, "handler":I
    new-instance v4, Landroid/net/wifi/WifiScanner$OperationResult;

    #@18
    invoke-direct {v4, p1, p2}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    #@1b
    .line 1211
    const v5, 0x27012

    #@1e
    const/4 v6, 0x0

    #@1f
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    #@22
    goto :goto_0

    #@23
    .line 1214
    .end local v0    # "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .end local v1    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v3    # "handler":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@25
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    #@28
    .line 1207
    return-void
.end method

.method private sendHotlistFailedToAllAndClear(ILjava/lang/String;)V
    .locals 7
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1300
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveHotlistSettings:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;

    #@12
    .line 1301
    .local v1, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    iget-object v0, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@14
    .line 1302
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v3, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    #@16
    .line 1304
    .local v3, "handler":I
    new-instance v4, Landroid/net/wifi/WifiScanner$OperationResult;

    #@18
    invoke-direct {v4, p1, p2}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    #@1b
    .line 1303
    const v5, 0x27012

    #@1e
    const/4 v6, 0x0

    #@1f
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    #@22
    goto :goto_0

    #@23
    .line 1306
    .end local v0    # "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .end local v1    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    .end local v3    # "handler":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveHotlistSettings:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@25
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    #@28
    .line 1299
    return-void
.end method

.method private updateSchedule()Z
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 1098
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@5
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    #@8
    move-result-object v4

    #@9
    if-eqz v4, :cond_0

    #@b
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@d
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    #@10
    move-result-object v4

    #@11
    if-nez v4, :cond_1

    #@13
    .line 1099
    :cond_0
    const-string/jumbo v4, "Failed to update schedule because WifiScanningService is not initialized"

    #@16
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    #@19
    .line 1100
    return v8

    #@1a
    .line 1098
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@1c
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@1f
    move-result-object v4

    #@20
    if-eqz v4, :cond_0

    #@22
    .line 1102
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@24
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/ChannelHelper;->updateChannels()V

    #@2b
    .line 1103
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2d
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->getAllSettings()Ljava/util/Collection;

    #@30
    move-result-object v3

    #@31
    .line 1105
    .local v3, "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@33
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, v3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->updateSchedule(Ljava/util/Collection;)V

    #@3a
    .line 1106
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@3c
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getSchedule()Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@43
    move-result-object v2

    #@44
    .line 1108
    .local v2, "schedule":Lcom/android/server/wifi/WifiNative$ScanSettings;
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@46
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get11(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@49
    move-result-object v4

    #@4a
    invoke-static {v4, v2}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->scheduleEquals(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanSettings;)Z

    #@4d
    move-result v4

    #@4e
    if-eqz v4, :cond_2

    #@50
    .line 1110
    return v9

    #@51
    .line 1113
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@53
    invoke-static {v4, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-set2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/WifiNative$ScanSettings;)Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@56
    .line 1115
    iget v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@58
    if-nez v4, :cond_3

    #@5a
    .line 1116
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@5c
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->stopBatchedScan()V

    #@63
    .line 1118
    return v9

    #@64
    .line 1120
    :cond_3
    const-string/jumbo v4, "WifiScanningService"

    #@67
    new-instance v5, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v6, "starting scan: base period="

    #@6f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    .line 1121
    iget v6, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    #@75
    .line 1120
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    .line 1122
    const-string/jumbo v6, ", max ap per scan="

    #@7c
    .line 1120
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v5

    #@80
    .line 1122
    iget v6, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@82
    .line 1120
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v5

    #@86
    .line 1123
    const-string/jumbo v6, ", batched scans="

    #@89
    .line 1120
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v5

    #@8d
    .line 1123
    iget v6, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    #@8f
    .line 1120
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    move-result-object v5

    #@93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v5

    #@97
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9a
    .line 1124
    const/4 v0, 0x0

    #@9b
    .local v0, "b":I
    :goto_0
    iget v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@9d
    if-ge v0, v4, :cond_4

    #@9f
    .line 1125
    iget-object v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@a1
    aget-object v1, v4, v0

    #@a3
    .line 1126
    .local v1, "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    const-string/jumbo v4, "WifiScanningService"

    #@a6
    new-instance v5, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v6, "bucket "

    #@ae
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v5

    #@b2
    iget v6, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    #@b4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v5

    #@b8
    const-string/jumbo v6, " ("

    #@bb
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v5

    #@bf
    iget v6, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    #@c1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v5

    #@c5
    const-string/jumbo v6, "ms)"

    #@c8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v5

    #@cc
    .line 1127
    const-string/jumbo v6, "["

    #@cf
    .line 1126
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v5

    #@d3
    .line 1127
    iget v6, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@d5
    .line 1126
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v5

    #@d9
    .line 1127
    const-string/jumbo v6, "]: "

    #@dc
    .line 1126
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v5

    #@e0
    .line 1128
    invoke-static {v1}, Lcom/android/server/wifi/scanner/ChannelHelper;->toString(Lcom/android/server/wifi/WifiNative$BucketSettings;)Ljava/lang/String;

    #@e3
    move-result-object v6

    #@e4
    .line 1126
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v5

    #@e8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v5

    #@ec
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ef
    .line 1124
    add-int/lit8 v0, v0, 0x1

    #@f1
    goto :goto_0

    #@f2
    .line 1131
    .end local v1    # "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@f4
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@f7
    move-result-object v4

    #@f8
    invoke-virtual {v4, v2, p0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->startBatchedScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    #@fb
    move-result v4

    #@fc
    if-eqz v4, :cond_5

    #@fe
    .line 1136
    return v9

    #@ff
    .line 1138
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@101
    invoke-static {v4, v7}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-set2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/WifiNative$ScanSettings;)Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@104
    .line 1139
    new-instance v4, Ljava/lang/StringBuilder;

    #@106
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@109
    const-string/jumbo v5, "error starting scan: base period="

    #@10c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v4

    #@110
    .line 1140
    iget v5, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    #@112
    .line 1139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@115
    move-result-object v4

    #@116
    .line 1141
    const-string/jumbo v5, ", max ap per scan="

    #@119
    .line 1139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v4

    #@11d
    .line 1141
    iget v5, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@11f
    .line 1139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@122
    move-result-object v4

    #@123
    .line 1142
    const-string/jumbo v5, ", batched scans="

    #@126
    .line 1139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v4

    #@12a
    .line 1142
    iget v5, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    #@12c
    .line 1139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v4

    #@130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v4

    #@134
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    #@137
    .line 1143
    const/4 v0, 0x0

    #@138
    :goto_1
    iget v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@13a
    if-ge v0, v4, :cond_6

    #@13c
    .line 1144
    iget-object v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@13e
    aget-object v1, v4, v0

    #@140
    .line 1145
    .restart local v1    # "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    new-instance v4, Ljava/lang/StringBuilder;

    #@142
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@145
    const-string/jumbo v5, "bucket "

    #@148
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v4

    #@14c
    iget v5, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    #@14e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@151
    move-result-object v4

    #@152
    const-string/jumbo v5, " ("

    #@155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v4

    #@159
    iget v5, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    #@15b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v4

    #@15f
    const-string/jumbo v5, "ms)"

    #@162
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v4

    #@166
    .line 1146
    const-string/jumbo v5, "["

    #@169
    .line 1145
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v4

    #@16d
    .line 1146
    iget v5, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@16f
    .line 1145
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@172
    move-result-object v4

    #@173
    .line 1146
    const-string/jumbo v5, "]: "

    #@176
    .line 1145
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@179
    move-result-object v4

    #@17a
    .line 1147
    invoke-static {v1}, Lcom/android/server/wifi/scanner/ChannelHelper;->toString(Lcom/android/server/wifi/WifiNative$BucketSettings;)Ljava/lang/String;

    #@17d
    move-result-object v5

    #@17e
    .line 1145
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v4

    #@182
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@185
    move-result-object v4

    #@186
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    #@189
    .line 1143
    add-int/lit8 v0, v0, 0x1

    #@18b
    goto :goto_1

    #@18c
    .line 1149
    .end local v1    # "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    :cond_6
    return v8
.end method


# virtual methods
.method public getBackgroundScanSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)Ljava/util/Collection;
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->getAllSettingsForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onFullScanResult(Landroid/net/wifi/ScanResult;I)V
    .locals 2
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "bucketsScanned"    # I

    #@0
    .prologue
    .line 834
    const v0, 0x27101

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@7
    .line 832
    return-void
.end method

.method public onHotlistApFound([Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 852
    const v0, 0x27102

    #@4
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@7
    .line 850
    return-void
.end method

.method public onHotlistApLost([Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 858
    const v0, 0x27103

    #@4
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@7
    .line 856
    return-void
.end method

.method public onScanPaused([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 1
    .param p1, "scanData"    # [Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    .line 840
    const v0, 0x27108

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@6
    .line 838
    return-void
.end method

.method public onScanRestarted()V
    .locals 1

    #@0
    .prologue
    .line 846
    const v0, 0x27109

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(I)V

    #@6
    .line 844
    return-void
.end method

.method public onScanStatus(I)V
    .locals 3
    .param p1, "event"    # I

    #@0
    .prologue
    .line 816
    packed-switch p1, :pswitch_data_0

    #@3
    .line 826
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
    .line 814
    :goto_0
    return-void

    #@1e
    .line 820
    :pswitch_0
    const v0, 0x27100

    #@21
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(I)V

    #@24
    goto :goto_0

    #@25
    .line 823
    :pswitch_1
    const v0, 0x2710a

    #@28
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(I)V

    #@2b
    goto :goto_0

    #@2c
    .line 816
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeBackgroundScanSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@0
    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeAllForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    #@5
    .line 805
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->updateSchedule()Z

    #@8
    .line 803
    return-void
.end method

.method public removeHotlistSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@0
    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveHotlistSettings:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeAllForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    #@5
    .line 810
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->resetHotlist()V

    #@8
    .line 808
    return-void
.end method
