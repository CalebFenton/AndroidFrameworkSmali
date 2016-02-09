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
    .line 146
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
    .line 149
    const/4 v2, 0x0

    #@3
    .line 150
    .local v2, "cInfo":Lcom/android/server/NsdService$ClientInfo;
    iget v3, p1, Landroid/os/Message;->what:I

    #@5
    sparse-switch v3, :sswitch_data_0

    #@8
    .line 210
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
    .line 211
    return v6

    #@23
    .line 152
    :sswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@25
    if-nez v3, :cond_1

    #@27
    .line 153
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29
    check-cast v1, Lcom/android/internal/util/AsyncChannel;

    #@2b
    .line 154
    .local v1, "c":Lcom/android/internal/util/AsyncChannel;
    const-string/jumbo v3, "NsdService"

    #@2e
    const-string/jumbo v4, "New client listening to asynchronous messages"

    #@31
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 155
    const v3, 0x11002

    #@37
    invoke-virtual {v1, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@3a
    .line 156
    new-instance v2, Lcom/android/server/NsdService$ClientInfo;

    #@3c
    .end local v2    # "cInfo":Lcom/android/server/NsdService$ClientInfo;
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@3e
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@40
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@42
    invoke-direct {v2, v3, v1, v4, v5}, Lcom/android/server/NsdService$ClientInfo;-><init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;Lcom/android/server/NsdService$ClientInfo;)V

    #@45
    .line 157
    .local v2, "cInfo":Lcom/android/server/NsdService$ClientInfo;
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@47
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@49
    invoke-static {v3}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@4c
    move-result-object v3

    #@4d
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@4f
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    .line 213
    .end local v1    # "c":Lcom/android/internal/util/AsyncChannel;
    .end local v2    # "cInfo":Lcom/android/server/NsdService$ClientInfo;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    #@53
    return v3

    #@54
    .line 159
    .local v2, "cInfo":Lcom/android/server/NsdService$ClientInfo;
    :cond_1
    const-string/jumbo v3, "NsdService"

    #@57
    new-instance v4, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v5, "Client connection failure, error="

    #@5f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v4

    #@6d
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    goto :goto_0

    #@71
    .line 163
    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@73
    packed-switch v3, :pswitch_data_0

    #@76
    .line 171
    :pswitch_0
    const-string/jumbo v3, "NsdService"

    #@79
    new-instance v4, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v5, "Client connection lost with reason: "

    #@81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v4

    #@8f
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    .line 174
    :goto_1
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@94
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@96
    invoke-static {v3}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@99
    move-result-object v3

    #@9a
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@9c
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9f
    move-result-object v2

    #@a0
    .end local v2    # "cInfo":Lcom/android/server/NsdService$ClientInfo;
    check-cast v2, Lcom/android/server/NsdService$ClientInfo;

    #@a2
    .line 175
    .local v2, "cInfo":Lcom/android/server/NsdService$ClientInfo;
    if-eqz v2, :cond_2

    #@a4
    .line 176
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-wrap1(Lcom/android/server/NsdService$ClientInfo;)V

    #@a7
    .line 177
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@a9
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@ab
    invoke-static {v3}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@ae
    move-result-object v3

    #@af
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@b1
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b4
    .line 180
    :cond_2
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@b6
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@b8
    invoke-static {v3}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    #@bb
    move-result-object v3

    #@bc
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@bf
    move-result v3

    #@c0
    if-nez v3, :cond_0

    #@c2
    .line 181
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@c4
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@c6
    invoke-static {v3}, Lcom/android/server/NsdService;->-wrap7(Lcom/android/server/NsdService;)Z

    #@c9
    goto :goto_0

    #@ca
    .line 165
    .local v2, "cInfo":Lcom/android/server/NsdService$ClientInfo;
    :pswitch_1
    const-string/jumbo v3, "NsdService"

    #@cd
    const-string/jumbo v4, "Send failed, client connection lost"

    #@d0
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d3
    goto :goto_1

    #@d4
    .line 168
    :pswitch_2
    const-string/jumbo v3, "NsdService"

    #@d7
    const-string/jumbo v4, "Client disconnected"

    #@da
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@dd
    goto :goto_1

    #@de
    .line 185
    :sswitch_2
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@e0
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@e3
    .line 186
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@e5
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@e7
    invoke-static {v3}, Lcom/android/server/NsdService;->-get1(Lcom/android/server/NsdService;)Landroid/content/Context;

    #@ea
    move-result-object v3

    #@eb
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@ed
    invoke-virtual {v4}, Lcom/android/server/NsdService$NsdStateMachine;->getHandler()Landroid/os/Handler;

    #@f0
    move-result-object v4

    #@f1
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@f3
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    #@f6
    goto/16 :goto_0

    #@f8
    .line 189
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_3
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@fa
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@fc
    const v4, 0x60003

    #@ff
    invoke-static {v3, p1, v4, v6}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@102
    goto/16 :goto_0

    #@104
    .line 193
    :sswitch_4
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@106
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@108
    const v4, 0x60007

    #@10b
    invoke-static {v3, p1, v4, v6}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@10e
    goto/16 :goto_0

    #@110
    .line 197
    :sswitch_5
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@112
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@114
    const v4, 0x6000a

    #@117
    invoke-static {v3, p1, v4, v6}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@11a
    goto/16 :goto_0

    #@11c
    .line 201
    :sswitch_6
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@11e
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@120
    const v4, 0x6000d

    #@123
    invoke-static {v3, p1, v4, v6}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@126
    goto/16 :goto_0

    #@128
    .line 205
    :sswitch_7
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    #@12a
    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@12c
    const v4, 0x60013

    #@12f
    invoke-static {v3, p1, v4, v6}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    #@132
    goto/16 :goto_0

    #@134
    .line 150
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

    #@156
    .line 163
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
