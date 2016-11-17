.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;
.super Lcom/android/internal/util/State;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UntetheringState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@0
    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V

    #@3
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@2
    .line 440
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@4
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@6
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get2(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)I

    #@9
    move-result v3

    #@a
    add-int/lit8 v3, v3, 0x1

    #@c
    invoke-static {v2, v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-set0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;I)I

    #@f
    move-result v2

    #@10
    const/4 v3, 0x3

    #@11
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->obtainMessage(II)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    .line 441
    const-wide/16 v2, 0x1388

    #@17
    .line 439
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@1a
    .line 437
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 446
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 467
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@8
    invoke-static {v1, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-wrap0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Landroid/os/Message;)V

    #@b
    .line 470
    :cond_0
    :goto_0
    return v3

    #@c
    .line 448
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e
    check-cast v0, Lcom/android/server/wifi/SoftApManager$TetherStateChange;

    #@10
    .line 450
    .local v0, "stateChange":Lcom/android/server/wifi/SoftApManager$TetherStateChange;
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@12
    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    #@14
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$TetherStateChange;->active:Ljava/util/ArrayList;

    #@16
    invoke-static {v1, v2}, Lcom/android/server/wifi/SoftApManager;->-wrap0(Lcom/android/server/wifi/SoftApManager;Ljava/util/ArrayList;)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_0

    #@1c
    .line 451
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@1e
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@20
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get1(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-wrap2(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/internal/util/IState;)V

    #@27
    .line 453
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@29
    invoke-static {v1, v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-wrap1(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;I)V

    #@2c
    goto :goto_0

    #@2d
    .line 457
    .end local v0    # "stateChange":Lcom/android/server/wifi/SoftApManager$TetherStateChange;
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@2f
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@31
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get2(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)I

    #@34
    move-result v2

    #@35
    if-ne v1, v2, :cond_0

    #@37
    .line 458
    const-string/jumbo v1, "SoftApManager"

    #@3a
    const-string/jumbo v2, "Failed to get tether update, force stop access point"

    #@3d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 460
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@42
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@44
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get1(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    #@47
    move-result-object v2

    #@48
    invoke-static {v1, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-wrap2(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/internal/util/IState;)V

    #@4b
    .line 462
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@4d
    invoke-static {v1, v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-wrap1(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;I)V

    #@50
    goto :goto_0

    #@51
    .line 446
    nop

    #@52
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
