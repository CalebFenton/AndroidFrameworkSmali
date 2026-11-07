.class Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;
.super Landroid/os/Handler;
.source "QualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/QualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QualifiedNetworksServiceHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/data/QualifiedNetworksService;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/data/QualifiedNetworksService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 336
    iput-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    .line 337
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 338
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .line 343
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 344
    .local v0, "slotIndex":I
    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v1}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;

    .line 346
    .local v1, "provider":Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_f2

    goto/16 :goto_f0

    .line 407
    :pswitch_15
    if-nez v1, :cond_19

    goto/16 :goto_f0

    .line 408
    :cond_19
    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->-$$Nest$monReconnectQualifiedNetworkType(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;II)V

    goto/16 :goto_f0

    .line 402
    :pswitch_28
    if-nez v1, :cond_2c

    goto/16 :goto_f0

    .line 403
    :cond_2c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;

    invoke-static {v1, v2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->-$$Nest$monRequestNetworkValidation(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;)V

    .line 404
    goto/16 :goto_f0

    .line 373
    :pswitch_35
    if-eqz v1, :cond_f0

    .line 374
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 375
    .local v2, "transportType":I
    invoke-virtual {v1, v2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->reportEmergencyDataNetworkPreferredTransportChanged(I)V

    .line 376
    .end local v2    # "transportType":I
    goto/16 :goto_f0

    .line 366
    :pswitch_3e
    if-eqz v1, :cond_f0

    .line 367
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 368
    .local v2, "statuses":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ThrottleStatus;>;"
    invoke-virtual {v1, v2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->reportThrottleStatusChanged(Ljava/util/List;)V

    .line 369
    .end local v2    # "statuses":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ThrottleStatus;>;"
    goto/16 :goto_f0

    .line 397
    :pswitch_49
    if-nez v1, :cond_4d

    goto/16 :goto_f0

    .line 398
    :cond_4d
    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    invoke-static {v1, v2, v3}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->-$$Nest$monUpdateQualifiedNetworkTypes(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;I[I)V

    .line 399
    goto/16 :goto_f0

    .line 387
    :pswitch_58
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_59
    iget-object v3, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v3}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_7a

    .line 388
    iget-object v3, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v3}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;

    .line 389
    if-eqz v1, :cond_77

    .line 390
    invoke-virtual {v1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->close()V

    .line 387
    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 393
    .end local v2    # "i":I
    :cond_7a
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v2}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 394
    goto :goto_f0

    .line 380
    :pswitch_84
    if-eqz v1, :cond_f0

    .line 381
    invoke-virtual {v1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->close()V

    .line 382
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v2}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_f0

    .line 348
    :pswitch_93
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v2}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_be

    .line 349
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network availability provider for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already existed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    .line 351
    return-void

    .line 354
    :cond_be
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-virtual {v2, v0}, Landroid/telephony/data/QualifiedNetworksService;->onCreateNetworkAvailabilityProvider(I)Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;

    move-result-object v1

    .line 355
    if-eqz v1, :cond_d7

    .line 356
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v2}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    .line 359
    .local v2, "callback":Landroid/telephony/data/IQualifiedNetworksServiceCallback;
    invoke-static {v1, v2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->-$$Nest$mregisterForQualifiedNetworkTypesChanged(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;Landroid/telephony/data/IQualifiedNetworksServiceCallback;)V

    goto :goto_f0

    .line 361
    .end local v2    # "callback":Landroid/telephony/data/IQualifiedNetworksServiceCallback;
    :cond_d7
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create network availability provider. slot index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    .line 364
    nop

    .line 411
    :cond_f0
    :goto_f0
    return-void

    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_93
        :pswitch_84
        :pswitch_58
        :pswitch_49
        :pswitch_3e
        :pswitch_35
        :pswitch_28
        :pswitch_15
    .end packed-switch
.end method
