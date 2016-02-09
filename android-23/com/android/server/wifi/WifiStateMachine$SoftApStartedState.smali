.class Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 9477
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 9480
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    invoke-static {v2, p1, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@e
    .line 9482
    iget v2, p1, Landroid/os/Message;->what:I

    #@10
    sparse-switch v2, :sswitch_data_0

    #@13
    .line 9509
    return v4

    #@14
    .line 9484
    :sswitch_0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1c
    const-string/jumbo v3, "Stopping Soft AP"

    #@1f
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@22
    .line 9487
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@24
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    #@27
    move-result-object v2

    #@28
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2a
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 9491
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@33
    const/16 v3, 0xb

    #@35
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;II)V

    #@38
    .line 9492
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3a
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3c
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@3f
    move-result-object v3

    #@40
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@43
    .line 9511
    :cond_1
    :goto_1
    :sswitch_1
    const/4 v2, 0x1

    #@44
    return v2

    #@45
    .line 9488
    :catch_0
    move-exception v0

    #@46
    .line 9489
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@48
    const-string/jumbo v3, "Exception in stopAccessPoint()"

    #@4b
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@4e
    goto :goto_0

    #@4f
    .line 9499
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@51
    const-string/jumbo v3, "Cannot start supplicant with a running soft AP"

    #@54
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@57
    .line 9500
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@59
    const/4 v3, 0x4

    #@5a
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@5d
    goto :goto_1

    #@5e
    .line 9503
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@60
    check-cast v1, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;

    #@62
    .line 9504
    .local v1, "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@64
    iget-object v3, v1, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;->available:Ljava/util/ArrayList;

    #@66
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap13(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    #@69
    move-result v2

    #@6a
    if-eqz v2, :cond_1

    #@6c
    .line 9505
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6e
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@70
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@73
    move-result-object v3

    #@74
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@77
    goto :goto_1

    #@78
    .line 9482
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x20015 -> :sswitch_1
        0x20018 -> :sswitch_0
        0x2001d -> :sswitch_3
    .end sparse-switch
.end method
