.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheredState;
.super Lcom/android/internal/util/State;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@0
    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheredState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheredState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheredState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V

    #@3
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 408
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 424
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 410
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v0, Lcom/android/server/wifi/SoftApManager$TetherStateChange;

    #@c
    .line 411
    .local v0, "stateChange":Lcom/android/server/wifi/SoftApManager$TetherStateChange;
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheredState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@e
    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    #@10
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$TetherStateChange;->active:Ljava/util/ArrayList;

    #@12
    invoke-static {v1, v2}, Lcom/android/server/wifi/SoftApManager;->-wrap0(Lcom/android/server/wifi/SoftApManager;Ljava/util/ArrayList;)Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_0

    #@18
    .line 412
    const-string/jumbo v1, "SoftApManager"

    #@1b
    const-string/jumbo v2, "Tethering reports wifi as untethered!, shut down soft Ap"

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 414
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheredState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@23
    invoke-virtual {v1, v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(I)V

    #@26
    .line 426
    .end local v0    # "stateChange":Lcom/android/server/wifi/SoftApManager$TetherStateChange;
    :cond_0
    :goto_0
    return v3

    #@27
    .line 418
    :pswitch_1
    const-string/jumbo v1, "SoftApManager"

    #@2a
    const-string/jumbo v2, "Untethering before stopping AP"

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 419
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheredState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@32
    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    #@34
    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-wrap4(Lcom/android/server/wifi/SoftApManager;)V

    #@37
    .line 420
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheredState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@39
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheredState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@3b
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get5(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    #@3e
    move-result-object v2

    #@3f
    invoke-static {v1, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-wrap2(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/internal/util/IState;)V

    #@42
    goto :goto_0

    #@43
    .line 408
    nop

    #@44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
