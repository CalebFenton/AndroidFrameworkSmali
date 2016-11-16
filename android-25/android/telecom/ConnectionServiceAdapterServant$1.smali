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
    .line 72
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
    .line 83
    iget v1, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 82
    :goto_0
    return-void

    #@8
    .line 85
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@c
    .line 87
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@e
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@11
    move-result-object v4

    #@12
    .line 88
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@14
    check-cast v1, Ljava/lang/String;

    #@16
    .line 89
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@18
    check-cast v2, Landroid/telecom/ConnectionRequest;

    #@1a
    .line 90
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@1c
    check-cast v3, Landroid/telecom/ParcelableConnection;

    #@1e
    .line 87
    invoke-interface {v4, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 92
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@24
    goto :goto_0

    #@25
    .line 91
    :catchall_0
    move-exception v1

    #@26
    .line 92
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@29
    .line 91
    throw v1

    #@2a
    .line 97
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
    .line 100
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
    .line 103
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
    .line 106
    :pswitch_4
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@56
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@59
    move-result-object v2

    #@5a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5c
    check-cast v1, Ljava/lang/String;

    #@5e
    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setPulling(Ljava/lang/String;)V

    #@61
    goto :goto_0

    #@62
    .line 109
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@64
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@66
    .line 111
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@68
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@6b
    move-result-object v3

    #@6c
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6e
    check-cast v1, Ljava/lang/String;

    #@70
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@72
    check-cast v2, Landroid/telecom/DisconnectCause;

    #@74
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@77
    .line 113
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@7a
    goto :goto_0

    #@7b
    .line 112
    :catchall_1
    move-exception v1

    #@7c
    .line 113
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@7f
    .line 112
    throw v1

    #@80
    .line 118
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@82
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@85
    move-result-object v2

    #@86
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@88
    check-cast v1, Ljava/lang/String;

    #@8a
    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setOnHold(Ljava/lang/String;)V

    #@8d
    goto/16 :goto_0

    #@8f
    .line 121
    :pswitch_7
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@91
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@94
    move-result-object v4

    #@95
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@97
    check-cast v1, Ljava/lang/String;

    #@99
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@9b
    if-ne v5, v2, :cond_0

    #@9d
    :goto_1
    invoke-interface {v4, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;Z)V

    #@a0
    goto/16 :goto_0

    #@a2
    :cond_0
    move v2, v3

    #@a3
    goto :goto_1

    #@a4
    .line 124
    :pswitch_8
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@a6
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@a9
    move-result-object v2

    #@aa
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ac
    check-cast v1, Ljava/lang/String;

    #@ae
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@b0
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;I)V

    #@b3
    goto/16 :goto_0

    #@b5
    .line 127
    :pswitch_9
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@b7
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@ba
    move-result-object v2

    #@bb
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@bd
    check-cast v1, Ljava/lang/String;

    #@bf
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@c1
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionProperties(Ljava/lang/String;I)V

    #@c4
    goto/16 :goto_0

    #@c6
    .line 130
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c8
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@ca
    .line 132
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@cc
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@cf
    move-result-object v3

    #@d0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@d2
    check-cast v1, Ljava/lang/String;

    #@d4
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@d6
    check-cast v2, Ljava/lang/String;

    #@d8
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@db
    .line 134
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@de
    goto/16 :goto_0

    #@e0
    .line 133
    :catchall_2
    move-exception v1

    #@e1
    .line 134
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@e4
    .line 133
    throw v1

    #@e5
    .line 139
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e7
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@e9
    .line 141
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@eb
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@ee
    move-result-object v3

    #@ef
    .line 142
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@f1
    check-cast v1, Ljava/lang/String;

    #@f3
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@f5
    check-cast v2, Landroid/telecom/ParcelableConference;

    #@f7
    .line 141
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@fa
    .line 144
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@fd
    goto/16 :goto_0

    #@ff
    .line 143
    :catchall_3
    move-exception v1

    #@100
    .line 144
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@103
    .line 143
    throw v1

    #@104
    .line 149
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_c
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@106
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@109
    move-result-object v2

    #@10a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10c
    check-cast v1, Ljava/lang/String;

    #@10e
    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    #@111
    goto/16 :goto_0

    #@113
    .line 152
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@115
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@117
    .line 154
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@119
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@11c
    move-result-object v3

    #@11d
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@11f
    check-cast v1, Ljava/lang/String;

    #@121
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@123
    check-cast v2, Ljava/lang/String;

    #@125
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    #@128
    .line 156
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@12b
    goto/16 :goto_0

    #@12d
    .line 155
    :catchall_4
    move-exception v1

    #@12e
    .line 156
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@131
    .line 155
    throw v1

    #@132
    .line 161
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@134
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@136
    .line 163
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@138
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@13b
    move-result-object v2

    #@13c
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@13e
    check-cast v1, Ljava/lang/String;

    #@140
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@142
    int-to-char v3, v3

    #@143
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;C)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    #@146
    .line 165
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@149
    goto/16 :goto_0

    #@14b
    .line 164
    :catchall_5
    move-exception v1

    #@14c
    .line 165
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@14f
    .line 164
    throw v1

    #@150
    .line 170
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_f
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@152
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@155
    move-result-object v2

    #@156
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@158
    check-cast v1, Lcom/android/internal/telecom/RemoteServiceCallback;

    #@15a
    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    #@15d
    goto/16 :goto_0

    #@15f
    .line 173
    :pswitch_10
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@161
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@164
    move-result-object v2

    #@165
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@167
    check-cast v1, Ljava/lang/String;

    #@169
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@16b
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    #@16e
    goto/16 :goto_0

    #@170
    .line 176
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@172
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@174
    .line 178
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_6
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@176
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@179
    move-result-object v3

    #@17a
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@17c
    check-cast v1, Ljava/lang/String;

    #@17e
    .line 179
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@180
    check-cast v2, Lcom/android/internal/telecom/IVideoProvider;

    #@182
    .line 178
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    #@185
    .line 181
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@188
    goto/16 :goto_0

    #@18a
    .line 180
    :catchall_6
    move-exception v1

    #@18b
    .line 181
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@18e
    .line 180
    throw v1

    #@18f
    .line 186
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_12
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@191
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@194
    move-result-object v4

    #@195
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@197
    check-cast v1, Ljava/lang/String;

    #@199
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@19b
    if-ne v5, v2, :cond_1

    #@19d
    :goto_2
    invoke-interface {v4, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;Z)V

    #@1a0
    goto/16 :goto_0

    #@1a2
    :cond_1
    move v2, v3

    #@1a3
    goto :goto_2

    #@1a4
    .line 189
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a6
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@1a8
    .line 191
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_7
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@1aa
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@1ad
    move-result-object v3

    #@1ae
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@1b0
    check-cast v1, Ljava/lang/String;

    #@1b2
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1b4
    check-cast v2, Landroid/telecom/StatusHints;

    #@1b6
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    #@1b9
    .line 193
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1bc
    goto/16 :goto_0

    #@1be
    .line 192
    :catchall_7
    move-exception v1

    #@1bf
    .line 193
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1c2
    .line 192
    throw v1

    #@1c3
    .line 198
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c5
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@1c7
    .line 200
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_8
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@1c9
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@1cc
    move-result-object v3

    #@1cd
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@1cf
    check-cast v1, Ljava/lang/String;

    #@1d1
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1d3
    check-cast v2, Landroid/net/Uri;

    #@1d5
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@1d7
    invoke-interface {v3, v1, v2, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    #@1da
    .line 202
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1dd
    goto/16 :goto_0

    #@1df
    .line 201
    :catchall_8
    move-exception v1

    #@1e0
    .line 202
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1e3
    .line 201
    throw v1

    #@1e4
    .line 207
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e6
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@1e8
    .line 209
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_9
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@1ea
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@1ed
    move-result-object v3

    #@1ee
    .line 210
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@1f0
    check-cast v1, Ljava/lang/String;

    #@1f2
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1f4
    check-cast v2, Ljava/lang/String;

    #@1f6
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@1f8
    .line 209
    invoke-interface {v3, v1, v2, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    #@1fb
    .line 212
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1fe
    goto/16 :goto_0

    #@200
    .line 211
    :catchall_9
    move-exception v1

    #@201
    .line 212
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@204
    .line 211
    throw v1

    #@205
    .line 217
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@207
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@209
    .line 219
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_a
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@20b
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@20e
    move-result-object v3

    #@20f
    .line 220
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@211
    check-cast v1, Ljava/lang/String;

    #@213
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@215
    check-cast v2, Ljava/util/List;

    #@217
    .line 219
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    #@21a
    .line 222
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@21d
    goto/16 :goto_0

    #@21f
    .line 221
    :catchall_a
    move-exception v1

    #@220
    .line 222
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@223
    .line 221
    throw v1

    #@224
    .line 227
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@226
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@228
    .line 229
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_b
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@22a
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@22d
    move-result-object v3

    #@22e
    .line 230
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@230
    check-cast v1, Ljava/lang/String;

    #@232
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@234
    check-cast v2, Landroid/telecom/ParcelableConnection;

    #@236
    .line 229
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    #@239
    .line 232
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@23c
    goto/16 :goto_0

    #@23e
    .line 231
    :catchall_b
    move-exception v1

    #@23f
    .line 232
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@242
    .line 231
    throw v1

    #@243
    .line 237
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@245
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@247
    .line 239
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_c
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@249
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@24c
    move-result-object v2

    #@24d
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@24f
    check-cast v1, Ljava/lang/String;

    #@251
    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceMergeFailed(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    #@254
    .line 241
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@257
    goto/16 :goto_0

    #@259
    .line 240
    :catchall_c
    move-exception v1

    #@25a
    .line 241
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@25d
    .line 240
    throw v1

    #@25e
    .line 246
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@260
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@262
    .line 248
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_d
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@264
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@267
    move-result-object v3

    #@268
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@26a
    check-cast v1, Ljava/lang/String;

    #@26c
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@26e
    check-cast v2, Landroid/os/Bundle;

    #@270
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    #@273
    .line 250
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@276
    goto/16 :goto_0

    #@278
    .line 249
    :catchall_d
    move-exception v1

    #@279
    .line 250
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@27c
    .line 249
    throw v1

    #@27d
    .line 255
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@27f
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@281
    .line 257
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_e
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@283
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@286
    move-result-object v3

    #@287
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@289
    check-cast v1, Ljava/lang/String;

    #@28b
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@28d
    check-cast v2, Ljava/util/List;

    #@28f
    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    #@292
    .line 259
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@295
    goto/16 :goto_0

    #@297
    .line 258
    :catchall_e
    move-exception v1

    #@298
    .line 259
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@29b
    .line 258
    throw v1

    #@29c
    .line 264
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29e
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@2a0
    .line 266
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_f
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@2a2
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@2a5
    move-result-object v4

    #@2a6
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@2a8
    check-cast v1, Ljava/lang/String;

    #@2aa
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@2ac
    check-cast v2, Ljava/lang/String;

    #@2ae
    .line 267
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@2b0
    check-cast v3, Landroid/os/Bundle;

    #@2b2
    .line 266
    invoke-interface {v4, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    #@2b5
    .line 269
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@2b8
    goto/16 :goto_0

    #@2ba
    .line 268
    :catchall_f
    move-exception v1

    #@2bb
    .line 269
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@2be
    .line 268
    throw v1

    #@2bf
    .line 83
    nop

    #@2c0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_e
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_9
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 76
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionServiceAdapterServant$1;->internalHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 74
    :goto_0
    return-void

    #@4
    .line 77
    :catch_0
    move-exception v0

    #@5
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
