.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheringState;
.super Lcom/android/internal/util/State;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetheringState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@0
    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheringState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheringState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V

    #@3
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@2
    .line 376
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@4
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

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
    .line 377
    const-wide/16 v2, 0x1388

    #@17
    .line 375
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@1a
    .line 373
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 382
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 399
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 384
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v0, Lcom/android/server/wifi/SoftApManager$TetherStateChange;

    #@c
    .line 385
    .local v0, "stateChange":Lcom/android/server/wifi/SoftApManager$TetherStateChange;
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@e
    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    #@10
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$TetherStateChange;->active:Ljava/util/ArrayList;

    #@12
    invoke-static {v1, v2}, Lcom/android/server/wifi/SoftApManager;->-wrap0(Lcom/android/server/wifi/SoftApManager;Ljava/util/ArrayList;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 386
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@1a
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@1c
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get3(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-wrap2(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/internal/util/IState;)V

    #@23
    .line 401
    .end local v0    # "stateChange":Lcom/android/server/wifi/SoftApManager$TetherStateChange;
    :cond_0
    :goto_0
    return v3

    #@24
    .line 390
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@26
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@28
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get2(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)I

    #@2b
    move-result v2

    #@2c
    if-ne v1, v2, :cond_0

    #@2e
    .line 391
    const-string/jumbo v1, "SoftApManager"

    #@31
    const-string/jumbo v2, "Failed to get tether update, shutdown soft access point"

    #@34
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 393
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@39
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@3b
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get1(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    #@3e
    move-result-object v2

    #@3f
    invoke-static {v1, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-wrap2(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/internal/util/IState;)V

    #@42
    .line 395
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheringState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@44
    invoke-static {v1, v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-wrap1(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;I)V

    #@47
    goto :goto_0

    #@48
    .line 382
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
