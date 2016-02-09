.class Lcom/android/server/wifi/WifiStateMachine$TetheringState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheringState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 9515
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

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
    .line 9519
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4
    .line 9520
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

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
    .line 9519
    const v3, 0x2001e

    #@13
    .line 9520
    const/4 v4, 0x0

    #@14
    .line 9519
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@17
    move-result-object v1

    #@18
    .line 9520
    const-wide/16 v2, 0x1388

    #@1a
    .line 9519
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@1d
    .line 9517
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 9524
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-static {v1, p1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@e
    .line 9526
    iget v1, p1, Landroid/os/Message;->what:I

    #@10
    sparse-switch v1, :sswitch_data_0

    #@13
    .line 9555
    const/4 v1, 0x0

    #@14
    return v1

    #@15
    .line 9528
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17
    check-cast v0, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;

    #@19
    .line 9529
    .local v0, "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    #@1d
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap6(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_0

    #@23
    .line 9530
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@25
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@27
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@2e
    .line 9532
    :cond_0
    return v3

    #@2f
    .line 9534
    .end local v0    # "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@31
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@33
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)I

    #@36
    move-result v2

    #@37
    if-ne v1, v2, :cond_1

    #@39
    .line 9535
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3b
    const-string/jumbo v2, "Failed to get tether update, shutdown soft access point"

    #@3e
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    #@41
    .line 9536
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@43
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@45
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@48
    move-result-object v2

    #@49
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@4c
    .line 9538
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4e
    const v2, 0x20018

    #@51
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@54
    .line 9557
    :cond_1
    :goto_0
    return v3

    #@55
    .line 9552
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@57
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@5a
    goto :goto_0

    #@5b
    .line 9526
    nop

    #@5c
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
