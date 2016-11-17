.class Landroid/telecom/ConnectionServiceAdapterServant$1;
.super Landroid/os/Handler;
.source "ConnectionServiceAdapterServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionServiceAdapterServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionServiceAdapterServant;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionServiceAdapterServant;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionServiceAdapterServant;

    #@0
    .prologue
    .line 71
    iput-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method

.method private internalHandleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 82
    iget v1, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 81
    :goto_0
    return-void

    #@8
    .line 84
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@c
    .line 86
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@e
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@11
    move-result-object v4

    #@12
    .line 87
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@14
    check-cast v1, Ljava/lang/String;

    #@16
    .line 88
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@18
    check-cast v2, Landroid/telecom/ConnectionRequest;

    #@1a
    .line 89
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@1c
    check-cast v3, Landroid/telecom/ParcelableConnection;

    #@1e
    .line 86
    invoke-interface {v4, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 91
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@24
    goto :goto_0

    #@25
    .line 90
    :catchall_0
    move-exception v1

    #@26
    .line 91
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@29
    .line 90
    throw v1

    #@2a
    .line 96
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@2c
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@2f
    move-result-object v2

    #@30
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@32
    check-cast v1, Ljava/lang/String;

    #@34
    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setActive(Ljava/lang/String;)V

    #@37
    goto :goto_0

    #@38
    .line 99
    :pswitch_2
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@3a
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@3d
    move-result-object v2

    #@3e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@40
    check-cast v1, Ljava/lang/String;

    #@42
    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRinging(Ljava/lang/String;)V

    #@45
    goto :goto_0

    #@46
    .line 102
    :pswitch_3
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@48
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@4b
    move-result-object v2

    #@4c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4e
    check-cast v1, Ljava/lang/String;

    #@50
    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDialing(Ljava/lang/String;)V

    #@53
    goto :goto_0

    #@54
    .line 105
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@56
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@58
    .line 107
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@5a
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@5d
    move-result-object v3

    #@5e
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@60
    check-cast v1, Ljava/lang/String;

    #@62
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@64
    check-cast v2, Landroid/telecom/DisconnectCause;

    #@66
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@69
    .line 109
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@6c
    goto :goto_0

    #@6d
    .line 108
    :catchall_1
    move-exception v1

    #@6e
    .line 109
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@71
    .line 108
    throw v1

    #@72
    .line 114
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@74
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@77
    move-result-object v2

    #@78
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7a
    check-cast v1, Ljava/lang/String;

    #@7c
    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setOnHold(Ljava/lang/String;)V

    #@7f
    goto :goto_0

    #@80
    .line 117
    :pswitch_6
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@82
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@85
    move-result-object v4

    #@86
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@88
    check-cast v1, Ljava/lang/String;

    #@8a
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@8c
    if-ne v5, v2, :cond_0

    #@8e
    :goto_1
    invoke-interface {v4, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;Z)V

    #@91
    goto/16 :goto_0

    #@93
    :cond_0
    move v2, v3

    #@94
    goto :goto_1

    #@95
    .line 120
    :pswitch_7
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@97
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@9a
    move-result-object v2

    #@9b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9d
    check-cast v1, Ljava/lang/String;

    #@9f
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@a1
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;I)V

    #@a4
    goto/16 :goto_0

    #@a6
    .line 123
    :pswitch_8
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@a8
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@ab
    move-result-object v2

    #@ac
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ae
    check-cast v1, Ljava/lang/String;

    #@b0
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@b2
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionProperties(Ljava/lang/String;I)V

    #@b5
    goto/16 :goto_0

    #@b7
    .line 126
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b9
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@bb
    .line 128
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@bd
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@c0
    move-result-object v3

    #@c1
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@c3
    check-cast v1, Ljava/lang/String;

    #@c5
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@c7
    check-cast v2, Ljava/lang/String;

    #@c9
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@cc
    .line 130
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@cf
    goto/16 :goto_0

    #@d1
    .line 129
    :catchall_2
    move-exception v1

    #@d2
    .line 130
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@d5
    .line 129
    throw v1

    #@d6
    .line 135
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d8
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@da
    .line 137
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@dc
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@df
    move-result-object v3

    #@e0
    .line 138
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@e2
    check-cast v1, Ljava/lang/String;

    #@e4
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@e6
    check-cast v2, Landroid/telecom/ParcelableConference;

    #@e8
    .line 137
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@eb
    .line 140
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@ee
    goto/16 :goto_0

    #@f0
    .line 139
    :catchall_3
    move-exception v1

    #@f1
    .line 140
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@f4
    .line 139
    throw v1

    #@f5
    .line 145
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_b
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@f7
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@fa
    move-result-object v2

    #@fb
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@fd
    check-cast v1, Ljava/lang/String;

    #@ff
    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    #@102
    goto/16 :goto_0

    #@104
    .line 148
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@106
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@108
    .line 150
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@10a
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@10d
    move-result-object v3

    #@10e
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@110
    check-cast v1, Ljava/lang/String;

    #@112
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@114
    check-cast v2, Ljava/lang/String;

    #@116
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    #@119
    .line 152
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@11c
    goto/16 :goto_0

    #@11e
    .line 151
    :catchall_4
    move-exception v1

    #@11f
    .line 152
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@122
    .line 151
    throw v1

    #@123
    .line 157
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@125
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@127
    .line 159
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@129
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@12c
    move-result-object v2

    #@12d
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@12f
    check-cast v1, Ljava/lang/String;

    #@131
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@133
    int-to-char v3, v3

    #@134
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;C)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    #@137
    .line 161
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@13a
    goto/16 :goto_0

    #@13c
    .line 160
    :catchall_5
    move-exception v1

    #@13d
    .line 161
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@140
    .line 160
    throw v1

    #@141
    .line 166
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_e
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@143
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@146
    move-result-object v2

    #@147
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@149
    check-cast v1, Lcom/android/internal/telecom/RemoteServiceCallback;

    #@14b
    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    #@14e
    goto/16 :goto_0

    #@150
    .line 169
    :pswitch_f
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@152
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@155
    move-result-object v2

    #@156
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@158
    check-cast v1, Ljava/lang/String;

    #@15a
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@15c
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    #@15f
    goto/16 :goto_0

    #@161
    .line 172
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@163
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@165
    .line 174
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_6
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@167
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@16a
    move-result-object v3

    #@16b
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@16d
    check-cast v1, Ljava/lang/String;

    #@16f
    .line 175
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@171
    check-cast v2, Lcom/android/internal/telecom/IVideoProvider;

    #@173
    .line 174
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    #@176
    .line 177
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@179
    goto/16 :goto_0

    #@17b
    .line 176
    :catchall_6
    move-exception v1

    #@17c
    .line 177
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@17f
    .line 176
    throw v1

    #@180
    .line 182
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_11
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@182
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@185
    move-result-object v4

    #@186
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@188
    check-cast v1, Ljava/lang/String;

    #@18a
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@18c
    if-ne v5, v2, :cond_1

    #@18e
    :goto_2
    invoke-interface {v4, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;Z)V

    #@191
    goto/16 :goto_0

    #@193
    :cond_1
    move v2, v3

    #@194
    goto :goto_2

    #@195
    .line 185
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@197
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@199
    .line 187
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_7
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@19b
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@19e
    move-result-object v3

    #@19f
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@1a1
    check-cast v1, Ljava/lang/String;

    #@1a3
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1a5
    check-cast v2, Landroid/telecom/StatusHints;

    #@1a7
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    #@1aa
    .line 189
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1ad
    goto/16 :goto_0

    #@1af
    .line 188
    :catchall_7
    move-exception v1

    #@1b0
    .line 189
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1b3
    .line 188
    throw v1

    #@1b4
    .line 194
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b6
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@1b8
    .line 196
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_8
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@1ba
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@1bd
    move-result-object v3

    #@1be
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@1c0
    check-cast v1, Ljava/lang/String;

    #@1c2
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1c4
    check-cast v2, Landroid/net/Uri;

    #@1c6
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@1c8
    invoke-interface {v3, v1, v2, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    #@1cb
    .line 198
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1ce
    goto/16 :goto_0

    #@1d0
    .line 197
    :catchall_8
    move-exception v1

    #@1d1
    .line 198
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1d4
    .line 197
    throw v1

    #@1d5
    .line 203
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d7
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@1d9
    .line 205
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_9
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@1db
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@1de
    move-result-object v3

    #@1df
    .line 206
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@1e1
    check-cast v1, Ljava/lang/String;

    #@1e3
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1e5
    check-cast v2, Ljava/lang/String;

    #@1e7
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@1e9
    .line 205
    invoke-interface {v3, v1, v2, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    #@1ec
    .line 208
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1ef
    goto/16 :goto_0

    #@1f1
    .line 207
    :catchall_9
    move-exception v1

    #@1f2
    .line 208
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1f5
    .line 207
    throw v1

    #@1f6
    .line 213
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f8
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@1fa
    .line 215
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_a
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@1fc
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@1ff
    move-result-object v3

    #@200
    .line 216
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@202
    check-cast v1, Ljava/lang/String;

    #@204
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@206
    check-cast v2, Ljava/util/List;

    #@208
    .line 215
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    #@20b
    .line 218
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@20e
    goto/16 :goto_0

    #@210
    .line 217
    :catchall_a
    move-exception v1

    #@211
    .line 218
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@214
    .line 217
    throw v1

    #@215
    .line 223
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@217
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@219
    .line 225
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_b
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@21b
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@21e
    move-result-object v3

    #@21f
    .line 226
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@221
    check-cast v1, Ljava/lang/String;

    #@223
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@225
    check-cast v2, Landroid/telecom/ParcelableConnection;

    #@227
    .line 225
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    #@22a
    .line 228
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@22d
    goto/16 :goto_0

    #@22f
    .line 227
    :catchall_b
    move-exception v1

    #@230
    .line 228
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@233
    .line 227
    throw v1

    #@234
    .line 233
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@236
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@238
    .line 235
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_c
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@23a
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@23d
    move-result-object v2

    #@23e
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@240
    check-cast v1, Ljava/lang/String;

    #@242
    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceMergeFailed(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    #@245
    .line 237
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@248
    goto/16 :goto_0

    #@24a
    .line 236
    :catchall_c
    move-exception v1

    #@24b
    .line 237
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@24e
    .line 236
    throw v1

    #@24f
    .line 242
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@251
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@253
    .line 244
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_d
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@255
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@258
    move-result-object v3

    #@259
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@25b
    check-cast v1, Ljava/lang/String;

    #@25d
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@25f
    check-cast v2, Landroid/os/Bundle;

    #@261
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    #@264
    .line 246
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@267
    goto/16 :goto_0

    #@269
    .line 245
    :catchall_d
    move-exception v1

    #@26a
    .line 246
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@26d
    .line 245
    throw v1

    #@26e
    .line 251
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@270
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@272
    .line 253
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_e
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@274
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@277
    move-result-object v3

    #@278
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@27a
    check-cast v1, Ljava/lang/String;

    #@27c
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@27e
    check-cast v2, Ljava/util/List;

    #@280
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    #@283
    .line 255
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@286
    goto/16 :goto_0

    #@288
    .line 254
    :catchall_e
    move-exception v1

    #@289
    .line 255
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@28c
    .line 254
    throw v1

    #@28d
    .line 260
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@28f
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@291
    .line 262
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_f
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@293
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@296
    move-result-object v4

    #@297
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@299
    check-cast v1, Ljava/lang/String;

    #@29b
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@29d
    check-cast v2, Ljava/lang/String;

    #@29f
    .line 263
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@2a1
    check-cast v3, Landroid/os/Bundle;

    #@2a3
    .line 262
    invoke-interface {v4, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    #@2a6
    .line 265
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@2a9
    goto/16 :goto_0

    #@2ab
    .line 264
    :catchall_f
    move-exception v1

    #@2ac
    .line 265
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@2af
    .line 264
    throw v1

    #@2b0
    .line 82
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_d
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 75
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionServiceAdapterServant$1;->internalHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 73
    :goto_0
    return-void

    #@4
    .line 76
    :catch_0
    move-exception v0

    #@5
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
