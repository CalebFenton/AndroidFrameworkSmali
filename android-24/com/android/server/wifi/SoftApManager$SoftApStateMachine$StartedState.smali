.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;
.super Lcom/android/internal/util/State;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@0
    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V

    #@3
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 343
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 360
    return v3

    #@7
    .line 348
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@9
    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    #@b
    const/16 v2, 0xa

    #@d
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/SoftApManager;->-wrap5(Lcom/android/server/wifi/SoftApManager;II)V

    #@10
    .line 349
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@12
    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    #@14
    invoke-static {v1}, Lcom/android/server/wifi/SoftApManager;->-wrap3(Lcom/android/server/wifi/SoftApManager;)V

    #@17
    .line 350
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@19
    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    #@1b
    const/16 v2, 0xb

    #@1d
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/SoftApManager;->-wrap5(Lcom/android/server/wifi/SoftApManager;II)V

    #@20
    .line 351
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@22
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@24
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    #@27
    move-result-object v2

    #@28
    invoke-static {v1, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-wrap2(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/internal/util/IState;)V

    #@2b
    .line 362
    :cond_0
    :goto_0
    :pswitch_1
    const/4 v1, 0x1

    #@2c
    return v1

    #@2d
    .line 354
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2f
    check-cast v0, Lcom/android/server/wifi/SoftApManager$TetherStateChange;

    #@31
    .line 355
    .local v0, "stateChange":Lcom/android/server/wifi/SoftApManager$TetherStateChange;
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@33
    iget-object v1, v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    #@35
    iget-object v2, v0, Lcom/android/server/wifi/SoftApManager$TetherStateChange;->available:Ljava/util/ArrayList;

    #@37
    invoke-static {v1, v2}, Lcom/android/server/wifi/SoftApManager;->-wrap1(Lcom/android/server/wifi/SoftApManager;Ljava/util/ArrayList;)Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_0

    #@3d
    .line 356
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@3f
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@41
    invoke-static {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get4(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    #@44
    move-result-object v2

    #@45
    invoke-static {v1, v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-wrap2(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/internal/util/IState;)V

    #@48
    goto :goto_0

    #@49
    .line 343
    nop

    #@4a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
