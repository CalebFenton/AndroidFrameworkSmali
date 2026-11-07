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
.field final synthetic blacklist this$0:Landroid/telecom/InCallService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/telecom/InCallService;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 283
    iput-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 286
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_e

    .line 287
    return-void

    .line 290
    :cond_e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_186

    goto/16 :goto_184

    .line 381
    :pswitch_16
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService;->onMuteStateChanged(Z)V

    .line 382
    goto/16 :goto_184

    .line 376
    :pswitch_25
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService;->onAvailableCallEndpointsChanged(Ljava/util/List;)V

    .line 378
    goto/16 :goto_184

    .line 368
    :pswitch_30
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/CallEndpoint;

    .line 369
    .local v0, "endpoint":Landroid/telecom/CallEndpoint;
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-$$Nest$fgetmCallEndpoint(Landroid/telecom/InCallService;)Landroid/telecom/CallEndpoint;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_184

    .line 370
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1, v0}, Landroid/telecom/InCallService;->-$$Nest$fputmCallEndpoint(Landroid/telecom/InCallService;Landroid/telecom/CallEndpoint;)V

    .line 371
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$fgetmCallEndpoint(Landroid/telecom/InCallService;)Landroid/telecom/CallEndpoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService;->onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V

    goto/16 :goto_184

    .line 363
    .end local v0    # "endpoint":Landroid/telecom/CallEndpoint;
    :pswitch_52
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 364
    .local v0, "callId":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/Phone;->internalOnHandoverComplete(Ljava/lang/String;)V

    .line 365
    goto/16 :goto_184

    .line 357
    .end local v0    # "callId":Ljava/lang/String;
    :pswitch_61
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 358
    .restart local v0    # "callId":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 359
    .local v1, "error":I
    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telecom/Phone;->internalOnHandoverFailed(Ljava/lang/String;I)V

    .line 360
    goto/16 :goto_184

    .line 351
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "error":I
    :pswitch_72
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 352
    .restart local v0    # "callId":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 353
    .local v1, "reason":I
    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telecom/Phone;->internalOnRttInitiationFailure(Ljava/lang/String;I)V

    .line 354
    goto/16 :goto_184

    .line 345
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "reason":I
    :pswitch_83
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 346
    .restart local v0    # "callId":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 347
    .local v1, "requestId":I
    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telecom/Phone;->internalOnRttUpgradeRequest(Ljava/lang/String;I)V

    .line 348
    goto/16 :goto_184

    .line 333
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "requestId":I
    :pswitch_94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 335
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_98
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 336
    .local v1, "callId":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 337
    .local v2, "event":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 338
    .local v3, "extras":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v4}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Landroid/telecom/Phone;->internalOnConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_ad
    .catchall {:try_start_98 .. :try_end_ad} :catchall_b3

    .line 340
    .end local v1    # "callId":Ljava/lang/String;
    .end local v2    # "event":Ljava/lang/String;
    .end local v3    # "extras":Landroid/os/Bundle;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 341
    nop

    .line 342
    goto/16 :goto_184

    .line 340
    :catchall_b3
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 341
    throw v1

    .line 330
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_b8
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Phone;->internalSilenceRinger()V

    .line 331
    goto/16 :goto_184

    .line 327
    :pswitch_c3
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_ce

    goto :goto_cf

    :cond_ce
    move v1, v2

    :goto_cf
    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalSetCanAddCall(Z)V

    .line 328
    goto/16 :goto_184

    .line 324
    :pswitch_d4
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_df

    goto :goto_e0

    :cond_df
    move v1, v2

    :goto_e0
    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalBringToForeground(Z)V

    .line 325
    goto/16 :goto_184

    .line 321
    :pswitch_e5
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/CallAudioState;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 322
    goto/16 :goto_184

    .line 310
    :pswitch_f4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 312
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_f8
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 313
    .restart local v1    # "callId":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 314
    .local v2, "remaining":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v3}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/telecom/Phone;->internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_109
    .catchall {:try_start_f8 .. :try_end_109} :catchall_10e

    .line 316
    .end local v1    # "callId":Ljava/lang/String;
    .end local v2    # "remaining":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 317
    nop

    .line 318
    goto :goto_184

    .line 316
    :catchall_10e
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 317
    throw v1

    .line 307
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_113
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ParcelableCall;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalUpdateCall(Landroid/telecom/ParcelableCall;)V

    .line 308
    goto :goto_184

    .line 304
    :pswitch_121
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/ParcelableCall;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalAddCall(Landroid/telecom/ParcelableCall;)V

    .line 305
    goto :goto_184

    .line 292
    :pswitch_12f
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    if-eqz v0, :cond_140

    .line 293
    const-string/jumbo v0, "mPhone is already instantiated, ignoring request to reset adapter."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    goto :goto_184

    .line 297
    :cond_140
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0}, Landroid/telecom/InCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "callingPackage":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    new-instance v2, Landroid/telecom/Phone;

    new-instance v3, Landroid/telecom/InCallAdapter;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telecom/IInCallAdapter;

    invoke-direct {v3, v4}, Landroid/telecom/InCallAdapter;-><init>(Lcom/android/internal/telecom/IInCallAdapter;)V

    iget-object v4, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    .line 299
    invoke-virtual {v4}, Landroid/telecom/InCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {v2, v3, v0, v4}, Landroid/telecom/Phone;-><init>(Landroid/telecom/InCallAdapter;Ljava/lang/String;I)V

    invoke-static {v1, v2}, Landroid/telecom/InCallService;->-$$Nest$fputmPhone(Landroid/telecom/InCallService;Landroid/telecom/Phone;)V

    .line 300
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhoneListener(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/Phone;->addListener(Landroid/telecom/Phone$Listener;)V

    .line 301
    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    iget-object v2, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v2}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService;->onPhoneCreated(Landroid/telecom/Phone;)V

    .line 302
    nop

    .line 387
    .end local v0    # "callingPackage":Ljava/lang/String;
    :cond_184
    :goto_184
    return-void

    nop

    :pswitch_data_186
    .packed-switch 0x1
        :pswitch_12f
        :pswitch_121
        :pswitch_113
        :pswitch_f4
        :pswitch_e5
        :pswitch_d4
        :pswitch_c3
        :pswitch_b8
        :pswitch_94
        :pswitch_83
        :pswitch_72
        :pswitch_61
        :pswitch_52
        :pswitch_30
        :pswitch_25
        :pswitch_16
    .end packed-switch
.end method
