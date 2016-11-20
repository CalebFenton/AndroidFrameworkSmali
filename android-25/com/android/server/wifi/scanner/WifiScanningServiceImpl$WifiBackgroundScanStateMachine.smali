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

.method static synthetic -wrap1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$HotlistSettings;)Z
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->addHotlist(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$HotlistSettings;)Z

    #@3
    move-result v0

    #@4
    return v0
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
    .line 862
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@3
    .line 863
    const-string/jumbo v0, "WifiBackgroundScanStateMachine"

    #@6
    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    #@9
    .line 854
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    #@b
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)V

    #@e
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    #@10
    .line 855
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;

    #@12
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)V

    #@15
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;

    #@17
    .line 856
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;

    #@19
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)V

    #@1c
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mPausedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;

    #@1e
    .line 858
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@20
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@22
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;)V

    #@25
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@27
    .line 860
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@29
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;)V

    #@2e
    .line 859
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveHotlistSettings:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@30
    .line 865
    const/16 v0, 0x200

    #@32
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->setLogRecSize(I)V

    #@35
    .line 866
    const/4 v0, 0x0

    #@36
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->setLogOnlyTransitions(Z)V

    #@39
    .line 869
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    #@3b
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@3e
    .line 870
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mStartedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;

    #@40
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    #@42
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@45
    .line 871
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mPausedState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;

    #@47
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    #@49
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@4c
    .line 874
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mDefaultState:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    #@4e
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@51
    .line 862
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
    .line 1118
    if-nez p1, :cond_0

    #@7
    .line 1119
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
    .line 1120
    return v8

    #@22
    .line 1122
    :cond_0
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@24
    if-ge v0, v2, :cond_1

    #@26
    .line 1123
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
    .line 1124
    const-string/jumbo v1, ", min scan period is: "

    #@3b
    .line 1123
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
    .line 1125
    return v8

    #@4b
    .line 1128
    :cond_1
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@4d
    if-nez v0, :cond_2

    #@4f
    iget-object v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@51
    if-nez v0, :cond_2

    #@53
    .line 1129
    const-string/jumbo v0, "Channels was null with unspecified band"

    #@56
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    #@59
    .line 1130
    return v8

    #@5a
    .line 1133
    :cond_2
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@5c
    if-nez v0, :cond_3

    #@5e
    .line 1134
    iget-object v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@60
    array-length v0, v0

    #@61
    if-nez v0, :cond_3

    #@63
    .line 1135
    const-string/jumbo v0, "No channels specified"

    #@66
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    #@69
    .line 1136
    return v8

    #@6a
    .line 1139
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
    .line 1140
    .local v7, "minSupportedPeriodMs":I
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@76
    if-ge v0, v7, :cond_4

    #@78
    .line 1141
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
    .line 1142
    const-string/jumbo v1, " but the request wants "

    #@8b
    .line 1141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    .line 1142
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@91
    .line 1141
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
    .line 1143
    return v8

    #@9d
    .line 1147
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
    .line 1148
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@a9
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@ab
    if-ge v0, v1, :cond_5

    #@ad
    .line 1149
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
    .line 1150
    const-string/jumbo v1, " but less than periodInMs "

    #@c2
    .line 1149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v0

    #@c6
    .line 1150
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@c8
    .line 1149
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
    .line 1151
    return v8

    #@d4
    .line 1153
    :cond_5
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@d6
    const v1, 0xfa000

    #@d9
    if-le v0, v1, :cond_6

    #@db
    .line 1154
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
    .line 1156
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@e9
    .line 1154
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
    .line 1157
    return v8

    #@f5
    .line 1159
    :cond_6
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    #@f7
    if-ge v0, v9, :cond_7

    #@f9
    .line 1160
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
    .line 1161
    const-string/jumbo v1, " which is less than 1"

    #@10e
    .line 1160
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
    .line 1162
    return v8

    #@11a
    .line 1166
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
    .line 1167
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@128
    invoke-virtual {v0, p1, p2, p4, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->addRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Ljava/lang/Object;)V

    #@12b
    .line 1169
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->updateSchedule()Z

    #@12e
    move-result v0

    #@12f
    if-eqz v0, :cond_8

    #@131
    .line 1170
    return v9

    #@132
    .line 1172
    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@134
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    #@137
    .line 1173
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@139
    const-string/jumbo v1, "Failing scan request because failed to reset scan"

    #@13c
    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    #@13f
    .line 1174
    return v8
.end method

.method private addHotlist(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$HotlistSettings;)Z
    .locals 3
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1300
    if-nez p1, :cond_0

    #@3
    .line 1301
    const-string/jumbo v0, "WifiScanningService"

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Failing hotlist request ClientInfo not found "

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
    .line 1302
    const/4 v0, 0x0

    #@1e
    return v0

    #@1f
    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveHotlistSettings:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@21
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->addRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/os/WorkSource;Ljava/lang/Object;)V

    #@24
    .line 1305
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->resetHotlist()V

    #@27
    .line 1306
    const/4 v0, 0x1

    #@28
    return v0
.end method

.method private removeBackgroundScanRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 7
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1236
    if-eqz p1, :cond_0

    #@3
    .line 1237
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    #@8
    move-result-object v5

    #@9
    check-cast v5, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@b
    .line 1238
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
    .line 1239
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->updateSchedule()Z

    #@19
    .line 1235
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
    .line 1310
    if-eqz p1, :cond_0

    #@2
    .line 1311
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveHotlistSettings:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeRequest(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Ljava/lang/Object;

    #@7
    .line 1312
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->resetHotlist()V

    #@a
    .line 1309
    :cond_0
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
    .line 1244
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
    .line 1245
    .local v1, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v0, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@15
    .line 1246
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v3, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    #@17
    .line 1247
    .local v3, "handler":I
    iget-object v5, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@19
    check-cast v5, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@1b
    .line 1248
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
    .line 1250
    new-instance v4, Landroid/net/wifi/ScanResult;

    #@29
    invoke-direct {v4, p1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    #@2c
    .line 1251
    .local v4, "newResult":Landroid/net/wifi/ScanResult;
    iget-object v6, p1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@2e
    if-eqz v6, :cond_1

    #@30
    .line 1252
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
    .line 1257
    :goto_1
    const v6, 0x27014

    #@3d
    const/4 v7, 0x0

    #@3e
    invoke-virtual {v0, v6, v7, v3, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    #@41
    goto :goto_0

    #@42
    .line 1255
    :cond_1
    iput-object v8, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@44
    goto :goto_1

    #@45
    .line 1243
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
    .line 1354
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
    .line 1355
    .local v3, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    iget-object v2, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@16
    .line 1356
    .local v2, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v5, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    #@18
    .line 1357
    .local v5, "handler":I
    iget-object v11, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@1a
    check-cast v11, Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@1c
    .line 1358
    .local v11, "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    const/4 v7, 0x0

    #@1d
    .line 1359
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
    .line 1360
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
    .line 1361
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
    .line 1362
    add-int/lit8 v7, v7, 0x1

    #@42
    .line 1359
    .end local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_0
    add-int/lit8 v12, v13, 0x1

    #@44
    move v13, v12

    #@45
    goto :goto_1

    #@46
    .line 1360
    .restart local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    #@48
    goto :goto_2

    #@49
    .line 1367
    .end local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    .end local v9    # "result":Landroid/net/wifi/ScanResult;
    :cond_2
    if-nez v7, :cond_3

    #@4b
    .line 1369
    return-void

    #@4c
    .line 1371
    :cond_3
    new-array v10, v7, [Landroid/net/wifi/ScanResult;

    #@4e
    .line 1372
    .local v10, "results2":[Landroid/net/wifi/ScanResult;
    const/4 v6, 0x0

    #@4f
    .line 1373
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
    .line 1374
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
    .line 1375
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
    .line 1376
    aput-object v9, v10, v6

    #@74
    .line 1377
    add-int/lit8 v6, v6, 0x1

    #@76
    .line 1374
    :cond_4
    add-int/lit8 v12, v12, 0x1

    #@78
    goto :goto_4

    #@79
    .line 1373
    .end local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_5
    add-int/lit8 v12, v13, 0x1

    #@7b
    move v13, v12

    #@7c
    goto :goto_3

    #@7d
    .line 1382
    .end local v9    # "result":Landroid/net/wifi/ScanResult;
    :cond_6
    new-instance v8, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    #@7f
    invoke-direct {v8, v10}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    #@82
    .line 1384
    .local v8, "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    const/4 v12, 0x0

    #@83
    move/from16 v0, p1

    #@85
    invoke-virtual {v2, v0, v12, v5, v8}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    #@88
    goto :goto_0

    #@89
    .line 1352
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
    .line 1263
    array-length v10, p1

    #@2
    move v8, v9

    #@3
    :goto_0
    if-ge v8, v10, :cond_2

    #@5
    aget-object v5, p1, v8

    #@7
    .line 1264
    .local v5, "result":Landroid/net/wifi/WifiScanner$ScanData;
    if-eqz v5, :cond_0

    #@9
    invoke-virtual {v5}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    #@c
    move-result-object v11

    #@d
    if-eqz v11, :cond_0

    #@f
    .line 1265
    invoke-virtual {v5}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    #@12
    move-result-object v11

    #@13
    array-length v11, v11

    #@14
    if-lez v11, :cond_1

    #@16
    .line 1266
    iget-object v11, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@18
    invoke-static {v11}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get17(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    #@1b
    move-result-object v11

    #@1c
    invoke-virtual {v11}, Lcom/android/server/wifi/WifiMetrics;->incrementNonEmptyScanResultCount()V

    #@1f
    .line 1263
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1268
    :cond_1
    iget-object v11, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@24
    invoke-static {v11}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get17(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    #@27
    move-result-object v11

    #@28
    invoke-virtual {v11}, Lcom/android/server/wifi/WifiMetrics;->incrementEmptyScanResultCount()V

    #@2b
    goto :goto_1

    #@2c
    .line 1272
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
    .line 1273
    .local v1, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v0, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@40
    .line 1274
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v3, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    #@42
    .line 1275
    .local v3, "handler":I
    iget-object v7, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->settings:Ljava/lang/Object;

    #@44
    check-cast v7, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@46
    .line 1277
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
    .line 1278
    .local v6, "resultsToDeliver":[Landroid/net/wifi/WifiScanner$ScanData;
    if-eqz v6, :cond_3

    #@52
    .line 1279
    iget-object v8, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@54
    const-string/jumbo v10, "backgroundScanResults"

    #@57
    .line 1280
    invoke-static {v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->describeForLog([Landroid/net/wifi/WifiScanner$ScanData;)Ljava/lang/String;

    #@5a
    move-result-object v11

    #@5b
    .line 1279
    invoke-virtual {v8, v10, v0, v3, v11}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->logCallback(Ljava/lang/String;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILjava/lang/String;)V

    #@5e
    .line 1282
    new-instance v4, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    #@60
    invoke-direct {v4, v6}, Landroid/net/wifi/WifiScanner$ParcelableScanData;-><init>([Landroid/net/wifi/WifiScanner$ScanData;)V

    #@63
    .line 1283
    .local v4, "parcelableScanData":Landroid/net/wifi/WifiScanner$ParcelableScanData;
    const v8, 0x27005

    #@66
    invoke-virtual {v0, v8, v9, v3, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    #@69
    goto :goto_2

    #@6a
    .line 1262
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
    .line 1317
    iget-object v9, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2
    invoke-static {v9}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@5
    move-result-object v9

    #@6
    if-nez v9, :cond_0

    #@8
    .line 1318
    const-string/jumbo v9, "Failed to update hotlist because WifiScanningService is not initialized"

    #@b
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    #@e
    .line 1319
    return-void

    #@f
    .line 1323
    :cond_0
    iget-object v9, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveHotlistSettings:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@11
    invoke-virtual {v9}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->getAllSettings()Ljava/util/Collection;

    #@14
    move-result-object v8

    #@15
    .line 1324
    .local v8, "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    const/4 v5, 0x0

    #@16
    .line 1326
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
    .line 1327
    .local v6, "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iget-object v9, v6, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@28
    array-length v9, v9

    #@29
    add-int/2addr v5, v9

    #@2a
    goto :goto_0

    #@2b
    .line 1330
    .end local v6    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    :cond_1
    if-nez v5, :cond_2

    #@2d
    .line 1331
    iget-object v9, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2f
    invoke-static {v9}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@32
    move-result-object v9

    #@33
    invoke-virtual {v9}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->resetHotlist()V

    #@36
    .line 1316
    :goto_1
    return-void

    #@37
    .line 1333
    :cond_2
    new-array v1, v5, [Landroid/net/wifi/WifiScanner$BssidInfo;

    #@39
    .line 1334
    .local v1, "bssidInfos":[Landroid/net/wifi/WifiScanner$BssidInfo;
    const v0, 0x7fffffff

    #@3c
    .line 1335
    .local v0, "apLostThreshold":I
    const/4 v3, 0x0

    #@3d
    .line 1336
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
    .line 1337
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
    .line 1338
    iget-object v9, v6, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@55
    aget-object v9, v9, v2

    #@57
    aput-object v9, v1, v3

    #@59
    .line 1337
    add-int/lit8 v2, v2, 0x1

    #@5b
    add-int/lit8 v3, v3, 0x1

    #@5d
    goto :goto_3

    #@5e
    .line 1340
    :cond_4
    iget v9, v6, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    #@60
    if-ge v9, v0, :cond_3

    #@62
    .line 1341
    iget v0, v6, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    #@64
    goto :goto_2

    #@65
    .line 1345
    .end local v2    # "i":I
    .end local v6    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    :cond_5
    new-instance v4, Landroid/net/wifi/WifiScanner$HotlistSettings;

    #@67
    invoke-direct {v4}, Landroid/net/wifi/WifiScanner$HotlistSettings;-><init>()V

    #@6a
    .line 1346
    .local v4, "mergedSettings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iput-object v1, v4, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@6c
    .line 1347
    iput v0, v4, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    #@6e
    .line 1348
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
    .line 1289
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
    .line 1290
    .local v1, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v0, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@14
    .line 1291
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v3, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    #@16
    .line 1293
    .local v3, "handler":I
    new-instance v4, Landroid/net/wifi/WifiScanner$OperationResult;

    #@18
    invoke-direct {v4, p1, p2}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    #@1b
    .line 1292
    const v5, 0x27012

    #@1e
    const/4 v6, 0x0

    #@1f
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    #@22
    goto :goto_0

    #@23
    .line 1295
    .end local v0    # "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .end local v1    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v3    # "handler":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@25
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    #@28
    .line 1288
    return-void
.end method

.method private sendHotlistFailedToAllAndClear(ILjava/lang/String;)V
    .locals 7
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1389
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
    .line 1390
    .local v1, "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    iget-object v0, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->clientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@14
    .line 1391
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v3, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;->handlerId:I

    #@16
    .line 1393
    .local v3, "handler":I
    new-instance v4, Landroid/net/wifi/WifiScanner$OperationResult;

    #@18
    invoke-direct {v4, p1, p2}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    #@1b
    .line 1392
    const v5, 0x27012

    #@1e
    const/4 v6, 0x0

    #@1f
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    #@22
    goto :goto_0

    #@23
    .line 1395
    .end local v0    # "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .end local v1    # "entry":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo;, "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestInfo<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    .end local v3    # "handler":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveHotlistSettings:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@25
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    #@28
    .line 1388
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
    .line 1179
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
    .line 1180
    :cond_0
    const-string/jumbo v4, "Failed to update schedule because WifiScanningService is not initialized"

    #@16
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    #@19
    .line 1181
    return v8

    #@1a
    .line 1179
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@1c
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@1f
    move-result-object v4

    #@20
    if-eqz v4, :cond_0

    #@22
    .line 1183
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@24
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/ChannelHelper;->updateChannels()V

    #@2b
    .line 1184
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2d
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->getAllSettings()Ljava/util/Collection;

    #@30
    move-result-object v3

    #@31
    .line 1186
    .local v3, "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@33
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, v3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->updateSchedule(Ljava/util/Collection;)V

    #@3a
    .line 1187
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
    .line 1189
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
    .line 1191
    return v9

    #@51
    .line 1194
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@53
    invoke-static {v4, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-set2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/WifiNative$ScanSettings;)Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@56
    .line 1196
    iget v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@58
    if-nez v4, :cond_3

    #@5a
    .line 1197
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@5c
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->stopBatchedScan()V

    #@63
    .line 1199
    return v9

    #@64
    .line 1201
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@66
    new-instance v5, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v6, "starting scan: base period="

    #@6e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    .line 1202
    iget v6, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    #@74
    .line 1201
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    move-result-object v5

    #@78
    .line 1203
    const-string/jumbo v6, ", max ap per scan="

    #@7b
    .line 1201
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v5

    #@7f
    .line 1203
    iget v6, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@81
    .line 1201
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    move-result-object v5

    #@85
    .line 1204
    const-string/jumbo v6, ", batched scans="

    #@88
    .line 1201
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v5

    #@8c
    .line 1204
    iget v6, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    #@8e
    .line 1201
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91
    move-result-object v5

    #@92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v5

    #@96
    invoke-static {v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    #@99
    .line 1205
    const/4 v0, 0x0

    #@9a
    .local v0, "b":I
    :goto_0
    iget v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@9c
    if-ge v0, v4, :cond_4

    #@9e
    .line 1206
    iget-object v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@a0
    aget-object v1, v4, v0

    #@a2
    .line 1207
    .local v1, "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@a4
    new-instance v5, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v6, "bucket "

    #@ac
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v5

    #@b0
    iget v6, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    #@b2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v5

    #@b6
    const-string/jumbo v6, " ("

    #@b9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v5

    #@bd
    iget v6, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    #@bf
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v5

    #@c3
    const-string/jumbo v6, "ms)"

    #@c6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v5

    #@ca
    .line 1208
    const-string/jumbo v6, "["

    #@cd
    .line 1207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v5

    #@d1
    .line 1208
    iget v6, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@d3
    .line 1207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v5

    #@d7
    .line 1208
    const-string/jumbo v6, "]: "

    #@da
    .line 1207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v5

    #@de
    .line 1209
    invoke-static {v1}, Lcom/android/server/wifi/scanner/ChannelHelper;->toString(Lcom/android/server/wifi/WifiNative$BucketSettings;)Ljava/lang/String;

    #@e1
    move-result-object v6

    #@e2
    .line 1207
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v5

    #@e6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v5

    #@ea
    invoke-static {v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    #@ed
    .line 1205
    add-int/lit8 v0, v0, 0x1

    #@ef
    goto :goto_0

    #@f0
    .line 1212
    .end local v1    # "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@f2
    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@f5
    move-result-object v4

    #@f6
    invoke-virtual {v4, v2, p0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->startBatchedScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    #@f9
    move-result v4

    #@fa
    if-eqz v4, :cond_5

    #@fc
    .line 1217
    return v9

    #@fd
    .line 1219
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@ff
    invoke-static {v4, v7}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-set2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/WifiNative$ScanSettings;)Lcom/android/server/wifi/WifiNative$ScanSettings;

    #@102
    .line 1220
    new-instance v4, Ljava/lang/StringBuilder;

    #@104
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@107
    const-string/jumbo v5, "error starting scan: base period="

    #@10a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v4

    #@10e
    .line 1221
    iget v5, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    #@110
    .line 1220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@113
    move-result-object v4

    #@114
    .line 1222
    const-string/jumbo v5, ", max ap per scan="

    #@117
    .line 1220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v4

    #@11b
    .line 1222
    iget v5, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    #@11d
    .line 1220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@120
    move-result-object v4

    #@121
    .line 1223
    const-string/jumbo v5, ", batched scans="

    #@124
    .line 1220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v4

    #@128
    .line 1223
    iget v5, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    #@12a
    .line 1220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v4

    #@12e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v4

    #@132
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    #@135
    .line 1224
    const/4 v0, 0x0

    #@136
    :goto_1
    iget v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    #@138
    if-ge v0, v4, :cond_6

    #@13a
    .line 1225
    iget-object v4, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@13c
    aget-object v1, v4, v0

    #@13e
    .line 1226
    .restart local v1    # "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    new-instance v4, Ljava/lang/StringBuilder;

    #@140
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@143
    const-string/jumbo v5, "bucket "

    #@146
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v4

    #@14a
    iget v5, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    #@14c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v4

    #@150
    const-string/jumbo v5, " ("

    #@153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v4

    #@157
    iget v5, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    #@159
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v4

    #@15d
    const-string/jumbo v5, "ms)"

    #@160
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v4

    #@164
    .line 1227
    const-string/jumbo v5, "["

    #@167
    .line 1226
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v4

    #@16b
    .line 1227
    iget v5, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    #@16d
    .line 1226
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@170
    move-result-object v4

    #@171
    .line 1227
    const-string/jumbo v5, "]: "

    #@174
    .line 1226
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v4

    #@178
    .line 1228
    invoke-static {v1}, Lcom/android/server/wifi/scanner/ChannelHelper;->toString(Lcom/android/server/wifi/WifiNative$BucketSettings;)Ljava/lang/String;

    #@17b
    move-result-object v5

    #@17c
    .line 1226
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v4

    #@180
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@183
    move-result-object v4

    #@184
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->loge(Ljava/lang/String;)V

    #@187
    .line 1224
    add-int/lit8 v0, v0, 0x1

    #@189
    goto :goto_1

    #@18a
    .line 1230
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
    .line 878
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
    .line 912
    const v0, 0x27101

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@7
    .line 910
    return-void
.end method

.method public onHotlistApFound([Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 930
    const v0, 0x27102

    #@4
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@7
    .line 928
    return-void
.end method

.method public onHotlistApLost([Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 936
    const v0, 0x27103

    #@4
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@7
    .line 934
    return-void
.end method

.method public onScanPaused([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 1
    .param p1, "scanData"    # [Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    .line 918
    const v0, 0x27108

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@6
    .line 916
    return-void
.end method

.method public onScanRestarted()V
    .locals 1

    #@0
    .prologue
    .line 924
    const v0, 0x27109

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(I)V

    #@6
    .line 922
    return-void
.end method

.method public onScanStatus(I)V
    .locals 3
    .param p1, "event"    # I

    #@0
    .prologue
    .line 894
    packed-switch p1, :pswitch_data_0

    #@3
    .line 904
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
    .line 892
    :goto_0
    return-void

    #@1e
    .line 898
    :pswitch_0
    const v0, 0x27100

    #@21
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(I)V

    #@24
    goto :goto_0

    #@25
    .line 901
    :pswitch_1
    const v0, 0x2710a

    #@28
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->sendMessage(I)V

    #@2b
    goto :goto_0

    #@2c
    .line 894
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
    .line 882
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveBackgroundScans:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeAllForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    #@5
    .line 883
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->updateSchedule()Z

    #@8
    .line 881
    return-void
.end method

.method public removeHotlistSettings(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@0
    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->mActiveHotlistSettings:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->removeAllForClient(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V

    #@5
    .line 888
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->resetHotlist()V

    #@8
    .line 886
    return-void
.end method
