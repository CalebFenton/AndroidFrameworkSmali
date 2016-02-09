.class Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiScanningServiceImpl.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$ScanEventHandler;
.implements Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
.implements Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiScanningStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;
    }
.end annotation


# instance fields
.field private final mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

.field private final mPausedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;

.field private final mStartedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

.field final synthetic this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mPausedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mStartedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->deferMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->loge(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@2
    .line 272
    const-string/jumbo v0, "WifiScanningService"

    #@5
    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    #@8
    .line 267
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    #@a
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)V

    #@d
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    #@f
    .line 268
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

    #@11
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)V

    #@14
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mStartedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

    #@16
    .line 269
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;

    #@18
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;)V

    #@1b
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mPausedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;

    #@1d
    .line 274
    const/16 v0, 0x200

    #@1f
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->setLogRecSize(I)V

    #@22
    .line 275
    const/4 v0, 0x0

    #@23
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->setLogOnlyTransitions(Z)V

    #@26
    .line 278
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    #@28
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@2b
    .line 279
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mStartedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$StartedState;

    #@2d
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    #@2f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@32
    .line 280
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mPausedState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$PausedState;

    #@34
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    #@36
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@39
    .line 282
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine$DefaultState;

    #@3b
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@3e
    .line 271
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
    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "number of clients : "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@e
    iget-object v3, v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@10
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@13
    move-result v3

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f
    .line 542
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@21
    iget-object v2, v2, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@23
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@26
    move-result-object v2

    #@27
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v1

    #@2b
    .local v1, "client$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_0

    #@31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@37
    .line 543
    .local v0, "client":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3a
    .line 544
    const-string/jumbo v2, "------\n"

    #@3d
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@40
    goto :goto_0

    #@41
    .line 546
    .end local v0    # "client":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@44
    .line 547
    const-string/jumbo v2, "localLog : "

    #@47
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4a
    .line 548
    invoke-static {}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get3()Landroid/util/LocalLog;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@51
    .line 549
    const-string/jumbo v2, "\n\n"

    #@54
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@57
    .line 550
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5a
    .line 540
    return-void
.end method

.method public onChangesFound([Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 329
    const v0, 0x27104

    #@4
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@7
    .line 327
    return-void
.end method

.method public onFullScanResult(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 300
    const v0, 0x27101

    #@4
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@7
    .line 298
    return-void
.end method

.method public onHotlistApFound([Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 317
    const v0, 0x27102

    #@4
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@7
    .line 315
    return-void
.end method

.method public onHotlistApLost([Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 323
    const v0, 0x27103

    #@4
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@7
    .line 321
    return-void
.end method

.method public onScanPaused([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 1
    .param p1, "scanData"    # [Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    .line 305
    const v0, 0x27108

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@6
    .line 304
    return-void
.end method

.method public onScanRestarted()V
    .locals 1

    #@0
    .prologue
    .line 311
    const v0, 0x27109

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(I)V

    #@6
    .line 309
    return-void
.end method

.method public onScanResultsAvailable()V
    .locals 1

    #@0
    .prologue
    .line 288
    const v0, 0x27100

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(I)V

    #@6
    .line 286
    return-void
.end method

.method public onScanStatus()V
    .locals 1

    #@0
    .prologue
    .line 294
    const v0, 0x27100

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(I)V

    #@6
    .line 292
    return-void
.end method
