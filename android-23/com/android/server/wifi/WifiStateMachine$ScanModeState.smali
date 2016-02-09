.class Lcom/android/server/wifi/WifiStateMachine$ScanModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanModeState"
.end annotation


# instance fields
.field private mLastOperationMode:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 6465
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    #@0
    .prologue
    .line 6469
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->mLastOperationMode:I

    #@8
    .line 6468
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x3

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    .line 6473
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@11
    .line 6475
    iget v0, p1, Landroid/os/Message;->what:I

    #@13
    packed-switch v0, :pswitch_data_0

    #@16
    .line 6513
    return v3

    #@17
    .line 6477
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@19
    if-ne v0, v2, :cond_2

    #@1b
    .line 6479
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->mLastOperationMode:I

    #@1d
    if-ne v0, v4, :cond_1

    #@1f
    .line 6480
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@21
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@24
    .line 6483
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@26
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->loadAndEnableAllNetworks()V

    #@2d
    .line 6484
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2f
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@32
    move-result-object v0

    #@33
    const v1, 0x20083

    #@36
    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@39
    .line 6492
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3b
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get98(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    #@42
    move-result v0

    #@43
    if-nez v0, :cond_0

    #@45
    .line 6493
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@47
    const/4 v1, -0x5

    #@48
    invoke-virtual {v0, v1, v3, v5, v5}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@4b
    .line 6497
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4d
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@50
    move-result-object v0

    #@51
    .line 6498
    const/4 v1, -0x1

    #@52
    .line 6497
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    #@55
    .line 6500
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@57
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set33(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@5a
    .line 6501
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5c
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5e
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@61
    move-result-object v1

    #@62
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@65
    .line 6515
    :goto_1
    return v2

    #@66
    .line 6486
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@68
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    #@6f
    goto :goto_0

    #@70
    .line 6504
    :cond_2
    return v2

    #@71
    .line 6510
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@73
    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    #@76
    goto :goto_1

    #@77
    .line 6475
    nop

    #@78
    :pswitch_data_0
    .packed-switch 0x20047
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
