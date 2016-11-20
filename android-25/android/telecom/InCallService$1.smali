.class Landroid/telecom/InCallService$1;
.super Landroid/os/Handler;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/InCallService;


# direct methods
.method constructor <init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/InCallService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 81
    iput-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 84
    iget-object v7, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    #@4
    invoke-static {v7}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    #@7
    move-result-object v7

    #@8
    if-nez v7, :cond_0

    #@a
    iget v7, p1, Landroid/os/Message;->what:I

    #@c
    if-eq v7, v5, :cond_0

    #@e
    .line 85
    return-void

    #@f
    .line 88
    :cond_0
    iget v7, p1, Landroid/os/Message;->what:I

    #@11
    packed-switch v7, :pswitch_data_0

    #@14
    .line 83
    :goto_0
    return-void

    #@15
    .line 90
    :pswitch_0
    iget-object v6, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    #@17
    new-instance v7, Landroid/telecom/Phone;

    #@19
    new-instance v8, Landroid/telecom/InCallAdapter;

    #@1b
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d
    check-cast v5, Lcom/android/internal/telecom/IInCallAdapter;

    #@1f
    invoke-direct {v8, v5}, Landroid/telecom/InCallAdapter;-><init>(Lcom/android/internal/telecom/IInCallAdapter;)V

    #@22
    invoke-direct {v7, v8}, Landroid/telecom/Phone;-><init>(Landroid/telecom/InCallAdapter;)V

    #@25
    invoke-static {v6, v7}, Landroid/telecom/InCallService;->-set0(Landroid/telecom/InCallService;Landroid/telecom/Phone;)Landroid/telecom/Phone;

    #@28
    .line 91
    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    #@2a
    invoke-static {v5}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    #@2d
    move-result-object v5

    #@2e
    iget-object v6, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    #@30
    invoke-static {v6}, Landroid/telecom/InCallService;->-get2(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v5, v6}, Landroid/telecom/Phone;->addListener(Landroid/telecom/Phone$Listener;)V

    #@37
    .line 92
    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    #@39
    iget-object v6, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    #@3b
    invoke-static {v6}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v5, v6}, Landroid/telecom/InCallService;->onPhoneCreated(Landroid/telecom/Phone;)V

    #@42
    goto :goto_0

    #@43
    .line 95
    :pswitch_1
    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    #@45
    invoke-static {v5}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    #@48
    move-result-object v6

    #@49
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4b
    check-cast v5, Landroid/telecom/ParcelableCall;

    #@4d
    invoke-virtual {v6, v5}, Landroid/telecom/Phone;->internalAddCall(Landroid/telecom/ParcelableCall;)V

    #@50
    goto :goto_0

    #@51
    .line 98
    :pswitch_2
    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    #@53
    invoke-static {v5}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    #@56
    move-result-object v6

    #@57
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@59
    check-cast v5, Landroid/telecom/ParcelableCall;

    #@5b
    invoke-virtual {v6, v5}, Landroid/telecom/Phone;->internalUpdateCall(Landroid/telecom/ParcelableCall;)V

    #@5e
    goto :goto_0

    #@5f
    .line 101
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@61
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@63
    .line 103
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@65
    check-cast v1, Ljava/lang/String;

    #@67
    .line 104
    .local v1, "callId":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@69
    check-cast v4, Ljava/lang/String;

    #@6b
    .line 105
    .local v4, "remaining":Ljava/lang/String;
    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    #@6d
    invoke-static {v5}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v5, v1, v4}, Landroid/telecom/Phone;->internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@74
    .line 107
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@77
    goto :goto_0

    #@78
    .line 106
    .end local v1    # "callId":Ljava/lang/String;
    .end local v4    # "remaining":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@79
    .line 107
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@7c
    .line 106
    throw v5

    #@7d
    .line 112
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    #@7f
    invoke-static {v5}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    #@82
    move-result-object v6

    #@83
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@85
    check-cast v5, Landroid/telecom/CallAudioState;

    #@87
    invoke-virtual {v6, v5}, Landroid/telecom/Phone;->internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    #@8a
    goto :goto_0

    #@8b
    .line 115
    :pswitch_5
    iget-object v7, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    #@8d
    invoke-static {v7}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    #@90
    move-result-object v7

    #@91
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@93
    if-ne v8, v5, :cond_1

    #@95
    :goto_1
    invoke-virtual {v7, v5}, Landroid/telecom/Phone;->internalBringToForeground(Z)V

    #@98
    goto/16 :goto_0

    #@9a
    :cond_1
    move v5, v6

    #@9b
    goto :goto_1

    #@9c
    .line 118
    :pswitch_6
    iget-object v7, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    #@9e
    invoke-static {v7}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    #@a1
    move-result-object v7

    #@a2
    iget v8, p1, Landroid/os/Message;->arg1:I

    #@a4
    if-ne v8, v5, :cond_2

    #@a6
    :goto_2
    invoke-virtual {v7, v5}, Landroid/telecom/Phone;->internalSetCanAddCall(Z)V

    #@a9
    goto/16 :goto_0

    #@ab
    :cond_2
    move v5, v6

    #@ac
    goto :goto_2

    #@ad
    .line 121
    :pswitch_7
    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    #@af
    invoke-static {v5}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    #@b2
    move-result-object v5

    #@b3
    invoke-virtual {v5}, Landroid/telecom/Phone;->internalSilenceRinger()V

    #@b6
    goto/16 :goto_0

    #@b8
    .line 124
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ba
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@bc
    .line 126
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@be
    check-cast v1, Ljava/lang/String;

    #@c0
    .line 127
    .restart local v1    # "callId":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@c2
    check-cast v2, Ljava/lang/String;

    #@c4
    .line 128
    .local v2, "event":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@c6
    check-cast v3, Landroid/os/Bundle;

    #@c8
    .line 129
    .local v3, "extras":Landroid/os/Bundle;
    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    #@ca
    invoke-static {v5}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    #@cd
    move-result-object v5

    #@ce
    invoke-virtual {v5, v1, v2, v3}, Landroid/telecom/Phone;->internalOnConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@d1
    .line 131
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@d4
    goto/16 :goto_0

    #@d6
    .line 130
    .end local v1    # "callId":Ljava/lang/String;
    .end local v2    # "event":Ljava/lang/String;
    .end local v3    # "extras":Landroid/os/Bundle;
    :catchall_1
    move-exception v5

    #@d7
    .line 131
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@da
    .line 130
    throw v5

    #@db
    .line 88
    nop

    #@dc
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
