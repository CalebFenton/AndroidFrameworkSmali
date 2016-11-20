.class Lcom/android/server/NsdService$NsdStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService$NsdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/NsdService$NsdStateMachine;

    #@0
    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 147
    const/4 v2, 0x0

    #@3
    .line 148
    .local v2, "cInfo":Lcom/android/server/NsdService$ClientInfo;
    iget v3, p1, Landroid/os/Message;->what:I

    #@5
    sparse-switch v3, :sswitch_data_0

    #@8
    .line 208
    const-string/jumbo v3, "NsdService"

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "Unhandled "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 209
    return v6

    #@23
    .line 150
    :sswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@25
    if-nez v3, :cond_1

    #@27
    .line 151
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29
    check-cast v1, Lcom/android/internal/util/AsyncChannel;

    #@2b
    .line 153
    .local v1, "c":Lcom/android/internal/util/AsyncChannel;
    const v3, 0x11002

    #@2e
    invoke-virtual {v1, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@31
    .line 154
    new-instance v2, Lcom/android/server/NsdService$ClientInfo;

    #@33
    .end local v2    # "cInfo":Lcom/android/server/NsdService$ClientInfo;
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@35
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@37
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@39
    invoke-direct {v2, v3, v1, v4, v5}, Lcom/android/server/NsdService$ClientInfo;-><init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;Lcom/android/server/NsdService$ClientInfo;)V

    #@3c
    .line 155
    .local v2, "cInfo":Lcom/android/server/NsdService$ClientInfo;
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@3e
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@40
    invoke-static {v3}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@43
    move-result-object v3

    #@44
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@46
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 211
    .end local v1    # "c":Lcom/android/internal/util/AsyncChannel;
    .end local v2    # "cInfo":Lcom/android/server/NsdService$ClientInfo;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    #@4a
    return v3

    #@4b
    .line 157
    .local v2, "cInfo":Lcom/android/server/NsdService$ClientInfo;
    :cond_1
    const-string/jumbo v3, "NsdService"

    #@4e
    new-instance v4, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v5, "Client connection failure, error="

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    goto :goto_0

    #@68
    .line 161
    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@6a
    packed-switch v3, :pswitch_data_0

    #@6d
    .line 172
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@6f
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@71
    invoke-static {v3}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@74
    move-result-object v3

    #@75
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@77
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7a
    move-result-object v2

    #@7b
    .end local v2    # "cInfo":Lcom/android/server/NsdService$ClientInfo;
    check-cast v2, Lcom/android/server/NsdService$ClientInfo;

    #@7d
    .line 173
    .local v2, "cInfo":Lcom/android/server/NsdService$ClientInfo;
    if-eqz v2, :cond_2

    #@7f
    .line 174
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-wrap1(Lcom/android/server/NsdService$ClientInfo;)V

    #@82
    .line 175
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@84
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@86
    invoke-static {v3}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@89
    move-result-object v3

    #@8a
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@8c
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8f
    .line 178
    :cond_2
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@91
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@93
    invoke-static {v3}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@96
    move-result-object v3

    #@97
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@9a
    move-result v3

    #@9b
    if-nez v3, :cond_0

    #@9d
    .line 179
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@9f
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@a1
    invoke-static {v3}, Lcom/android/server/NsdService;->-wrap7(Lcom/android/server/NsdService;)Z

    #@a4
    goto :goto_0

    #@a5
    .line 163
    .local v2, "cInfo":Lcom/android/server/NsdService$ClientInfo;
    :pswitch_1
    const-string/jumbo v3, "NsdService"

    #@a8
    const-string/jumbo v4, "Send failed, client connection lost"

    #@ab
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ae
    goto :goto_1

    #@af
    .line 183
    :sswitch_2
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@b1
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@b4
    .line 184
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@b6
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@b8
    invoke-static {v3}, Lcom/android/server/NsdService;->-get1(Lcom/android/server/NsdService;)Landroid/content/Context;

    #@bb
    move-result-object v3

    #@bc
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@be
    invoke-virtual {v4}, Lcom/android/server/NsdService$NsdStateMachine;->getHandler()Landroid/os/Handler;

    #@c1
    move-result-object v4

    #@c2
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@c4
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@c7
    goto :goto_0

    #@c8
    .line 187
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_3
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@ca
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@cc
    const v4, 0x60003

    #@cf
    invoke-static {v3, p1, v4, v6}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@d2
    goto/16 :goto_0

    #@d4
    .line 191
    :sswitch_4
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@d6
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@d8
    const v4, 0x60007

    #@db
    invoke-static {v3, p1, v4, v6}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@de
    goto/16 :goto_0

    #@e0
    .line 195
    :sswitch_5
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@e2
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@e4
    const v4, 0x6000a

    #@e7
    invoke-static {v3, p1, v4, v6}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@ea
    goto/16 :goto_0

    #@ec
    .line 199
    :sswitch_6
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@ee
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@f0
    const v4, 0x6000d

    #@f3
    invoke-static {v3, p1, v4, v6}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@f6
    goto/16 :goto_0

    #@f8
    .line 203
    :sswitch_7
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@fa
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@fc
    const v4, 0x60013

    #@ff
    invoke-static {v3, p1, v4, v6}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@102
    goto/16 :goto_0

    #@104
    .line 148
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11001 -> :sswitch_2
        0x11004 -> :sswitch_1
        0x60001 -> :sswitch_3
        0x60006 -> :sswitch_4
        0x60009 -> :sswitch_5
        0x6000c -> :sswitch_6
        0x60012 -> :sswitch_7
    .end sparse-switch

    #@126
    .line 161
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
