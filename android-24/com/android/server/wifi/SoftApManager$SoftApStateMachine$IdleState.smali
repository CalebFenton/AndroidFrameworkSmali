.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;
.super Lcom/android/internal/util/State;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@0
    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)V

    #@3
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 317
    iget v2, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 336
    :goto_0
    return v5

    #@8
    .line 319
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@a
    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    #@c
    const/16 v3, 0xc

    #@e
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/SoftApManager;->-wrap5(Lcom/android/server/wifi/SoftApManager;II)V

    #@11
    .line 320
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@13
    iget-object v3, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    #@15
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17
    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    #@19
    invoke-static {v3, v2}, Lcom/android/server/wifi/SoftApManager;->-wrap2(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiConfiguration;)I

    #@1c
    move-result v1

    #@1d
    .line 321
    .local v1, "result":I
    if-nez v1, :cond_0

    #@1f
    .line 322
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@21
    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    #@23
    const/16 v3, 0xd

    #@25
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/SoftApManager;->-wrap5(Lcom/android/server/wifi/SoftApManager;II)V

    #@28
    .line 323
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@2a
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@2c
    invoke-static {v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-get1(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;

    #@2f
    move-result-object v3

    #@30
    invoke-static {v2, v3}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->-wrap2(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/internal/util/IState;)V

    #@33
    goto :goto_0

    #@34
    .line 325
    :cond_0
    const/4 v0, 0x0

    #@35
    .line 326
    .local v0, "reason":I
    if-ne v1, v5, :cond_1

    #@37
    .line 327
    const/4 v0, 0x1

    #@38
    .line 329
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;->this$1:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    #@3a
    iget-object v2, v2, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    #@3c
    const/16 v3, 0xe

    #@3e
    invoke-static {v2, v3, v0}, Lcom/android/server/wifi/SoftApManager;->-wrap5(Lcom/android/server/wifi/SoftApManager;II)V

    #@41
    goto :goto_0

    #@42
    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
