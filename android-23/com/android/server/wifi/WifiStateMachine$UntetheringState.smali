.class Lcom/android/server/wifi/WifiStateMachine$UntetheringState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UntetheringState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 9590
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    #@0
    .prologue
    .line 9594
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4
    .line 9595
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)I

    #@9
    move-result v3

    #@a
    add-int/lit8 v3, v3, 0x1

    #@c
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set44(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@f
    move-result v2

    #@10
    .line 9594
    const v3, 0x2001e

    #@13
    .line 9595
    const/4 v4, 0x0

    #@14
    .line 9594
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@17
    move-result-object v1

    #@18
    .line 9595
    const-wide/16 v2, 0x1388

    #@1a
    .line 9594
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@1d
    .line 9592
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 9600
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-static {v1, p1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@d
    .line 9602
    iget v1, p1, Landroid/os/Message;->what:I

    #@f
    sparse-switch v1, :sswitch_data_0

    #@12
    .line 9631
    const/4 v1, 0x0

    #@13
    return v1

    #@14
    .line 9604
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    check-cast v0, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;

    #@18
    .line 9607
    .local v0, "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    #@1c
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap6(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 9633
    .end local v0    # "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@23
    return v1

    #@24
    .line 9609
    .restart local v0    # "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@26
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@28
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@2f
    goto :goto_0

    #@30
    .line 9612
    .end local v0    # "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@32
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@34
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)I

    #@37
    move-result v2

    #@38
    if-ne v1, v2, :cond_0

    #@3a
    .line 9613
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3c
    const-string/jumbo v2, "Failed to get tether update, force stop access point"

    #@3f
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@42
    .line 9614
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@44
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@46
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@49
    move-result-object v2

    #@4a
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@4d
    goto :goto_0

    #@4e
    .line 9628
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@50
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@53
    goto :goto_0

    #@54
    .line 9602
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x2000c -> :sswitch_2
        0x2000d -> :sswitch_2
        0x2000e -> :sswitch_2
        0x20015 -> :sswitch_2
        0x20018 -> :sswitch_2
        0x2001d -> :sswitch_0
        0x2001e -> :sswitch_1
        0x20048 -> :sswitch_2
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_2
        0x20055 -> :sswitch_2
        0x2005a -> :sswitch_2
    .end sparse-switch
.end method
