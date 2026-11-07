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
.field final synthetic blacklist this$0:Landroid/telecom/ConnectionServiceAdapterServant;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/ConnectionServiceAdapterServant;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telecom/ConnectionServiceAdapterServant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 85
    iput-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private blacklist internalHandleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_42a

    goto/16 :goto_428

    .line 380
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 382
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_f
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/os/ResultReceiver;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/telecom/Logging/Session$Info;

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->queryLocation(Ljava/lang/String;JLjava/lang/String;Landroid/os/ResultReceiver;Landroid/telecom/Logging/Session$Info;)V
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_3a

    .line 386
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 387
    nop

    .line 388
    goto/16 :goto_428

    .line 386
    :catchall_3a
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 387
    throw v0

    .line 370
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_3f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 372
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_44
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallDirection(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_57
    .catchall {:try_start_44 .. :try_end_57} :catchall_5d

    .line 375
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 376
    nop

    .line 377
    goto/16 :goto_428

    .line 375
    :catchall_5d
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 376
    throw v0

    .line 111
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_62
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 113
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_67
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/ConnectionRequest;

    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/ParcelableConference;

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    :try_end_7c
    .catchall {:try_start_67 .. :try_end_7c} :catchall_82

    .line 119
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 120
    nop

    .line 121
    goto/16 :goto_428

    .line 119
    :catchall_82
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 120
    throw v0

    .line 360
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_87
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 362
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_8c
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/Logging/Session$Info;

    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceState(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    :try_end_a5
    .catchall {:try_start_8c .. :try_end_a5} :catchall_ab

    .line 365
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 366
    nop

    .line 367
    goto/16 :goto_428

    .line 365
    :catchall_ab
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 366
    throw v0

    .line 357
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_b0
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onConnectionServiceFocusReleased(Landroid/telecom/Logging/Session$Info;)V

    .line 358
    goto/16 :goto_428

    .line 347
    :pswitch_bb
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 349
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_c0
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    invoke-interface {v0, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_d1
    .catchall {:try_start_c0 .. :try_end_d1} :catchall_d7

    .line 352
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 353
    nop

    .line 354
    goto/16 :goto_428

    .line 352
    :catchall_d7
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 353
    throw v0

    .line 344
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_dc
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 345
    goto/16 :goto_428

    .line 340
    :pswitch_eb
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 342
    goto/16 :goto_428

    .line 336
    :pswitch_fa
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 338
    goto/16 :goto_428

    .line 333
    :pswitch_10b
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 334
    goto/16 :goto_428

    .line 323
    :pswitch_11a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 325
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_11f
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/Logging/Session$Info;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAudioRoute(Ljava/lang/String;ILjava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_136
    .catchall {:try_start_11f .. :try_end_136} :catchall_13c

    .line 328
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 329
    nop

    .line 330
    goto/16 :goto_428

    .line 328
    :catchall_13c
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 329
    throw v0

    .line 133
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_141
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 134
    goto/16 :goto_428

    .line 157
    :pswitch_150
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 159
    goto/16 :goto_428

    .line 313
    :pswitch_161
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 315
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_166
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_17b
    .catchall {:try_start_166 .. :try_end_17b} :catchall_181

    .line 318
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 319
    nop

    .line 320
    goto/16 :goto_428

    .line 318
    :catchall_181
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 319
    throw v0

    .line 303
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_186
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 305
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_18b
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v0, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    :try_end_19c
    .catchall {:try_start_18b .. :try_end_19c} :catchall_1a2

    .line 308
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 309
    nop

    .line 310
    goto/16 :goto_428

    .line 308
    :catchall_1a2
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 309
    throw v0

    .line 293
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1a7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 295
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1ac
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-interface {v0, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1bd
    .catchall {:try_start_1ac .. :try_end_1bd} :catchall_1c3

    .line 298
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 299
    nop

    .line 300
    goto/16 :goto_428

    .line 298
    :catchall_1c3
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 299
    throw v0

    .line 283
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1c8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 285
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1cd
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1da
    .catchall {:try_start_1cd .. :try_end_1da} :catchall_1e0

    .line 288
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 289
    nop

    .line 290
    goto/16 :goto_428

    .line 288
    :catchall_1e0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 289
    throw v0

    .line 196
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1e5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 198
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1ea
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-char v4, v4

    invoke-interface {v0, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    :try_end_1fa
    .catchall {:try_start_1ea .. :try_end_1fa} :catchall_200

    .line 201
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 202
    nop

    .line 203
    goto/16 :goto_428

    .line 201
    :catchall_200
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 202
    throw v0

    .line 273
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_205
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 275
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_20a
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/ParcelableConnection;

    invoke-interface {v0, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    :try_end_21b
    .catchall {:try_start_20a .. :try_end_21b} :catchall_221

    .line 278
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 279
    nop

    .line 280
    goto/16 :goto_428

    .line 278
    :catchall_221
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 279
    throw v0

    .line 263
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_226
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 265
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_22b
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v0, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    :try_end_23c
    .catchall {:try_start_22b .. :try_end_23c} :catchall_242

    .line 268
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 269
    nop

    .line 270
    goto/16 :goto_428

    .line 268
    :catchall_242
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 269
    throw v0

    .line 252
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_247
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 254
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_24c
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_25f
    .catchall {:try_start_24c .. :try_end_25f} :catchall_265

    .line 258
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 259
    nop

    .line 260
    goto/16 :goto_428

    .line 258
    :catchall_265
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 259
    throw v0

    .line 242
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_26a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 244
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_26f
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_282
    .catchall {:try_start_26f .. :try_end_282} :catchall_288

    .line 247
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 248
    nop

    .line 249
    goto/16 :goto_428

    .line 247
    :catchall_288
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 248
    throw v0

    .line 232
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_28d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 234
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_292
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/StatusHints;

    invoke-interface {v0, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V
    :try_end_2a3
    .catchall {:try_start_292 .. :try_end_2a3} :catchall_2a9

    .line 237
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 238
    nop

    .line 239
    goto/16 :goto_428

    .line 237
    :catchall_2a9
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 238
    throw v0

    .line 228
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2ae
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_2bd

    move v1, v2

    :cond_2bd
    invoke-interface {v0, v4, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 230
    goto/16 :goto_428

    .line 218
    :pswitch_2c2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 220
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2c7
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V
    :try_end_2d8
    .catchall {:try_start_2c7 .. :try_end_2d8} :catchall_2de

    .line 223
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 224
    nop

    .line 225
    goto/16 :goto_428

    .line 223
    :catchall_2de
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 224
    throw v0

    .line 215
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2e3
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 216
    goto/16 :goto_428

    .line 206
    :pswitch_2f4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 208
    .local v1, "args2":Lcom/android/internal/os/SomeArgs;
    :try_start_2f9
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telecom/RemoteServiceCallback;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_30a
    .catchall {:try_start_2f9 .. :try_end_30a} :catchall_310

    .line 211
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 212
    nop

    .line 213
    goto/16 :goto_428

    .line 211
    :catchall_310
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 212
    throw v0

    .line 186
    .end local v1    # "args2":Lcom/android/internal/os/SomeArgs;
    :pswitch_315
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 188
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_31a
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_32b
    .catchall {:try_start_31a .. :try_end_32b} :catchall_331

    .line 191
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 192
    nop

    .line 193
    goto/16 :goto_428

    .line 191
    :catchall_331
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 192
    throw v0

    .line 182
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_336
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 184
    goto/16 :goto_428

    .line 171
    :pswitch_345
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 173
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_34a
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/ParcelableConference;

    invoke-interface {v0, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    :try_end_35b
    .catchall {:try_start_34a .. :try_end_35b} :catchall_361

    .line 177
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 178
    nop

    .line 179
    goto/16 :goto_428

    .line 177
    :catchall_361
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 178
    throw v0

    .line 161
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_366
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 163
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_36b
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_37c
    .catchall {:try_start_36b .. :try_end_37c} :catchall_382

    .line 166
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 167
    nop

    .line 168
    goto/16 :goto_428

    .line 166
    :catchall_382
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 167
    throw v0

    .line 153
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_387
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 155
    goto/16 :goto_428

    .line 149
    :pswitch_398
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_3a7

    move v1, v2

    :cond_3a7
    invoke-interface {v0, v4, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 151
    goto/16 :goto_428

    .line 146
    :pswitch_3ac
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 147
    goto :goto_428

    .line 136
    :pswitch_3ba
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 138
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3bf
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/DisconnectCause;

    invoke-interface {v0, v2, v4, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V
    :try_end_3d0
    .catchall {:try_start_3bf .. :try_end_3d0} :catchall_3d5

    .line 141
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 142
    nop

    .line 143
    goto :goto_428

    .line 141
    :catchall_3d5
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 142
    throw v0

    .line 130
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_3da
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 131
    goto :goto_428

    .line 127
    :pswitch_3e8
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 128
    goto :goto_428

    .line 124
    :pswitch_3f6
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 125
    goto :goto_428

    .line 98
    :pswitch_404
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 100
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_409
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$1;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmDelegate(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/ConnectionRequest;

    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/ParcelableConnection;

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    :try_end_41e
    .catchall {:try_start_409 .. :try_end_41e} :catchall_423

    .line 106
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 107
    nop

    .line 108
    goto :goto_428

    .line 106
    :catchall_423
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 107
    throw v0

    .line 391
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_428
    return-void

    nop

    :pswitch_data_42a
    .packed-switch 0x1
        :pswitch_404
        :pswitch_3f6
        :pswitch_3e8
        :pswitch_3da
        :pswitch_3ba
        :pswitch_3ac
        :pswitch_398
        :pswitch_387
        :pswitch_366
        :pswitch_345
        :pswitch_336
        :pswitch_315
        :pswitch_2f4
        :pswitch_2e3
        :pswitch_2c2
        :pswitch_2ae
        :pswitch_28d
        :pswitch_26a
        :pswitch_247
        :pswitch_226
        :pswitch_205
        :pswitch_1e5
        :pswitch_1c8
        :pswitch_1a7
        :pswitch_186
        :pswitch_161
        :pswitch_150
        :pswitch_141
        :pswitch_11a
        :pswitch_10b
        :pswitch_fa
        :pswitch_eb
        :pswitch_dc
        :pswitch_bb
        :pswitch_b0
        :pswitch_87
        :pswitch_62
        :pswitch_3f
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 89
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionServiceAdapterServant$1;->internalHandleMessage(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 91
    goto :goto_5

    .line 90
    :catch_4
    move-exception v0

    .line 92
    :goto_5
    return-void
.end method
