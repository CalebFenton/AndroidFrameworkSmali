.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@0
    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    #@3
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const v2, 0x11002

    #@3
    const/4 v5, 0x0

    #@4
    const/4 v7, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    .line 403
    iget v0, p1, Landroid/os/Message;->what:I

    #@8
    sparse-switch v0, :sswitch_data_0

    #@b
    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "DefaultState: shouldn\'t happen but ignore msg.what=0x"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 450
    iget v2, p1, Landroid/os/Message;->what:I

    #@1b
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 449
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    #@2a
    .line 454
    :goto_0
    return v7

    #@2b
    .line 405
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@2d
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@30
    move-result-object v0

    #@31
    if-eqz v0, :cond_0

    #@33
    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@35
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@38
    move-result-object v0

    #@39
    .line 408
    const/4 v1, 0x3

    #@3a
    .line 407
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    #@3d
    goto :goto_0

    #@3e
    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@40
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    #@42
    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@45
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-set0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@48
    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@4a
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@4d
    move-result-object v0

    #@4e
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@50
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getHandler()Landroid/os/Handler;

    #@53
    move-result-object v1

    #@54
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@56
    invoke-virtual {v0, v5, v1, v4}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@59
    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@5b
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@5e
    move-result-object v0

    #@5f
    .line 414
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@61
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get5(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    #@64
    move-result v4

    #@65
    const-string/jumbo v5, "hi"

    #@68
    move-object v1, p1

    #@69
    .line 413
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;IIILjava/lang/Object;)V

    #@6c
    goto :goto_0

    #@6d
    .line 420
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@6f
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@72
    move-result-object v0

    #@73
    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    #@76
    goto :goto_0

    #@77
    .line 425
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@79
    invoke-static {v0, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-set0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    #@7c
    goto :goto_0

    #@7d
    .line 429
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@7f
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    #@82
    move-result-object v0

    #@83
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@85
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    #@88
    move-result-object v1

    #@89
    if-ne v0, v1, :cond_2

    #@8b
    const/4 v6, 0x1

    #@8c
    .line 431
    .local v6, "val":Z
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@8e
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@91
    move-result-object v0

    #@92
    if-eqz v6, :cond_1

    #@94
    move v3, v7

    #@95
    :cond_1
    const v1, 0x44004

    #@98
    invoke-virtual {v0, p1, v1, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    #@9b
    goto :goto_0

    #@9c
    .line 429
    .end local v6    # "val":Z
    :cond_2
    const/4 v6, 0x0

    #@9d
    .restart local v6    # "val":Z
    goto :goto_1

    #@9e
    .line 435
    .end local v6    # "val":Z
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@a0
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    #@a3
    move-result-object v0

    #@a4
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@a6
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    #@a9
    move-result-object v1

    #@aa
    if-eq v0, v1, :cond_4

    #@ac
    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@ae
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    #@b1
    move-result-object v0

    #@b2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@b4
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    #@b7
    move-result-object v1

    #@b8
    if-ne v0, v1, :cond_5

    #@ba
    const/4 v6, 0x1

    #@bb
    .line 438
    .restart local v6    # "val":Z
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@bd
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@c0
    move-result-object v0

    #@c1
    .line 439
    if-eqz v6, :cond_3

    #@c3
    move v3, v7

    #@c4
    :cond_3
    const v1, 0x44006

    #@c7
    .line 438
    invoke-virtual {v0, p1, v1, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    #@ca
    goto/16 :goto_0

    #@cc
    .line 435
    .end local v6    # "val":Z
    :cond_4
    const/4 v6, 0x1

    #@cd
    .restart local v6    # "val":Z
    goto :goto_2

    #@ce
    .line 436
    .end local v6    # "val":Z
    :cond_5
    const/4 v6, 0x0

    #@cf
    .restart local v6    # "val":Z
    goto :goto_2

    #@d0
    .line 443
    .end local v6    # "val":Z
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@d2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@d4
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    #@d7
    move-result-object v1

    #@d8
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-set1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)Lcom/android/internal/util/IState;

    #@db
    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@dd
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@df
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

    #@e2
    move-result-object v1

    #@e3
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    #@e6
    goto/16 :goto_0

    #@e8
    .line 403
    :sswitch_data_0
    .sparse-switch
        0x11001 -> :sswitch_0
        0x11003 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x44003 -> :sswitch_3
        0x44005 -> :sswitch_4
        0x44009 -> :sswitch_5
    .end sparse-switch
.end method
