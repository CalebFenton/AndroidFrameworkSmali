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
    .line 68
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
    .line 79
    iget v1, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 78
    :goto_0
    return-void

    #@8
    .line 81
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@c
    .line 83
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@e
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@11
    move-result-object v4

    #@12
    .line 84
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@14
    check-cast v1, Ljava/lang/String;

    #@16
    .line 85
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@18
    check-cast v2, Landroid/telecom/ConnectionRequest;

    #@1a
    .line 86
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@1c
    check-cast v3, Landroid/telecom/ParcelableConnection;

    #@1e
    .line 83
    invoke-interface {v4, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 88
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@24
    goto :goto_0

    #@25
    .line 87
    :catchall_0
    move-exception v1

    #@26
    .line 88
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@29
    .line 87
    throw v1

    #@2a
    .line 93
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
    .line 96
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
    .line 99
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
    .line 102
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@56
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@58
    .line 104
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
    .line 106
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@6c
    goto :goto_0

    #@6d
    .line 105
    :catchall_1
    move-exception v1

    #@6e
    .line 106
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@71
    .line 105
    throw v1

    #@72
    .line 111
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
    .line 114
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
    .line 117
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
    .line 120
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a8
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@aa
    .line 122
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@ac
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@af
    move-result-object v3

    #@b0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@b2
    check-cast v1, Ljava/lang/String;

    #@b4
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@b6
    check-cast v2, Ljava/lang/String;

    #@b8
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@bb
    .line 124
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@be
    goto/16 :goto_0

    #@c0
    .line 123
    :catchall_2
    move-exception v1

    #@c1
    .line 124
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@c4
    .line 123
    throw v1

    #@c5
    .line 129
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c7
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@c9
    .line 131
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@cb
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@ce
    move-result-object v3

    #@cf
    .line 132
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@d1
    check-cast v1, Ljava/lang/String;

    #@d3
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@d5
    check-cast v2, Landroid/telecom/ParcelableConference;

    #@d7
    .line 131
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@da
    .line 134
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@dd
    goto/16 :goto_0

    #@df
    .line 133
    :catchall_3
    move-exception v1

    #@e0
    .line 134
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@e3
    .line 133
    throw v1

    #@e4
    .line 139
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@e6
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@e9
    move-result-object v2

    #@ea
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ec
    check-cast v1, Ljava/lang/String;

    #@ee
    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    #@f1
    goto/16 :goto_0

    #@f3
    .line 142
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f5
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@f7
    .line 144
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@f9
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@fc
    move-result-object v3

    #@fd
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@ff
    check-cast v1, Ljava/lang/String;

    #@101
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@103
    check-cast v2, Ljava/lang/String;

    #@105
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    #@108
    .line 146
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@10b
    goto/16 :goto_0

    #@10d
    .line 145
    :catchall_4
    move-exception v1

    #@10e
    .line 146
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@111
    .line 145
    throw v1

    #@112
    .line 151
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@114
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@116
    .line 153
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@118
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@11b
    move-result-object v2

    #@11c
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@11e
    check-cast v1, Ljava/lang/String;

    #@120
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@122
    int-to-char v3, v3

    #@123
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;C)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    #@126
    .line 155
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@129
    goto/16 :goto_0

    #@12b
    .line 154
    :catchall_5
    move-exception v1

    #@12c
    .line 155
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@12f
    .line 154
    throw v1

    #@130
    .line 160
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_d
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@132
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@135
    move-result-object v2

    #@136
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@138
    check-cast v1, Lcom/android/internal/telecom/RemoteServiceCallback;

    #@13a
    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    #@13d
    goto/16 :goto_0

    #@13f
    .line 163
    :pswitch_e
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@141
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@144
    move-result-object v2

    #@145
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@147
    check-cast v1, Ljava/lang/String;

    #@149
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@14b
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    #@14e
    goto/16 :goto_0

    #@150
    .line 166
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@152
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@154
    .line 168
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_6
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@156
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@159
    move-result-object v3

    #@15a
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@15c
    check-cast v1, Ljava/lang/String;

    #@15e
    .line 169
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@160
    check-cast v2, Lcom/android/internal/telecom/IVideoProvider;

    #@162
    .line 168
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    #@165
    .line 171
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@168
    goto/16 :goto_0

    #@16a
    .line 170
    :catchall_6
    move-exception v1

    #@16b
    .line 171
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@16e
    .line 170
    throw v1

    #@16f
    .line 176
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_10
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@171
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@174
    move-result-object v4

    #@175
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@177
    check-cast v1, Ljava/lang/String;

    #@179
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@17b
    if-ne v5, v2, :cond_1

    #@17d
    :goto_2
    invoke-interface {v4, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;Z)V

    #@180
    goto/16 :goto_0

    #@182
    :cond_1
    move v2, v3

    #@183
    goto :goto_2

    #@184
    .line 179
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@186
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@188
    .line 181
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_7
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@18a
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@18d
    move-result-object v3

    #@18e
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@190
    check-cast v1, Ljava/lang/String;

    #@192
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@194
    check-cast v2, Landroid/telecom/StatusHints;

    #@196
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    #@199
    .line 183
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@19c
    goto/16 :goto_0

    #@19e
    .line 182
    :catchall_7
    move-exception v1

    #@19f
    .line 183
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1a2
    .line 182
    throw v1

    #@1a3
    .line 188
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a5
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@1a7
    .line 190
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_8
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@1a9
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@1ac
    move-result-object v3

    #@1ad
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@1af
    check-cast v1, Ljava/lang/String;

    #@1b1
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1b3
    check-cast v2, Landroid/net/Uri;

    #@1b5
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@1b7
    invoke-interface {v3, v1, v2, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    #@1ba
    .line 192
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1bd
    goto/16 :goto_0

    #@1bf
    .line 191
    :catchall_8
    move-exception v1

    #@1c0
    .line 192
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1c3
    .line 191
    throw v1

    #@1c4
    .line 197
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c6
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@1c8
    .line 199
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_9
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@1ca
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@1cd
    move-result-object v3

    #@1ce
    .line 200
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@1d0
    check-cast v1, Ljava/lang/String;

    #@1d2
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1d4
    check-cast v2, Ljava/lang/String;

    #@1d6
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@1d8
    .line 199
    invoke-interface {v3, v1, v2, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    #@1db
    .line 202
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1de
    goto/16 :goto_0

    #@1e0
    .line 201
    :catchall_9
    move-exception v1

    #@1e1
    .line 202
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1e4
    .line 201
    throw v1

    #@1e5
    .line 207
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e7
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@1e9
    .line 209
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_a
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@1eb
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@1ee
    move-result-object v3

    #@1ef
    .line 210
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@1f1
    check-cast v1, Ljava/lang/String;

    #@1f3
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1f5
    check-cast v2, Ljava/util/List;

    #@1f7
    .line 209
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    #@1fa
    .line 212
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1fd
    goto/16 :goto_0

    #@1ff
    .line 211
    :catchall_a
    move-exception v1

    #@200
    .line 212
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@203
    .line 211
    throw v1

    #@204
    .line 217
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@206
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@208
    .line 219
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_b
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@20a
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@20d
    move-result-object v3

    #@20e
    .line 220
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@210
    check-cast v1, Ljava/lang/String;

    #@212
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@214
    check-cast v2, Landroid/telecom/ParcelableConnection;

    #@216
    .line 219
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    #@219
    .line 222
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@21c
    goto/16 :goto_0

    #@21e
    .line 221
    :catchall_b
    move-exception v1

    #@21f
    .line 222
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@222
    .line 221
    throw v1

    #@223
    .line 227
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@225
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@227
    .line 229
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_c
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@229
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@22c
    move-result-object v2

    #@22d
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@22f
    check-cast v1, Ljava/lang/String;

    #@231
    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceMergeFailed(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    #@234
    .line 231
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@237
    goto/16 :goto_0

    #@239
    .line 230
    :catchall_c
    move-exception v1

    #@23a
    .line 231
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@23d
    .line 230
    throw v1

    #@23e
    .line 236
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@240
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@242
    .line 238
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_d
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@244
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@247
    move-result-object v3

    #@248
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@24a
    check-cast v1, Ljava/lang/String;

    #@24c
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@24e
    check-cast v2, Landroid/os/Bundle;

    #@250
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    #@253
    .line 240
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@256
    goto/16 :goto_0

    #@258
    .line 239
    :catchall_d
    move-exception v1

    #@259
    .line 240
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@25c
    .line 239
    throw v1

    #@25d
    .line 79
    nop

    #@25e
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_c
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 72
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionServiceAdapterServant$1;->internalHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 70
    :goto_0
    return-void

    #@4
    .line 73
    :catch_0
    move-exception v0

    #@5
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
