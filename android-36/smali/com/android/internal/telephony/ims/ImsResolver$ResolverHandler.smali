.class Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;
.super Landroid/os/Handler;
.source "ImsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolverHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsResolver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/os/Looper;)V
    .registers 3
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

    .line 499
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    .line 500
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 505
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "ImsResolver"

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_12a

    goto/16 :goto_92

    .line 517
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 518
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/os/UserHandle;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mmaybeRemovedImsServiceForUser(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;Landroid/os/UserHandle;)Z

    return-void

    .line 590
    :pswitch_1d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/UserHandle;

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserSwitched="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mmaybeAddedImsService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;)V

    return-void

    .line 586
    :pswitch_3b
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mclearCarrierServiceOverrides(Lcom/android/internal/telephony/ims/ImsResolver;I)V

    return-void

    .line 581
    :pswitch_43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 582
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mhandleMsimConfigChange(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/Integer;)V

    return-void

    .line 522
    :pswitch_51
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmBootCompletedHandlerRan(Lcom/android/internal/telephony/ims/ImsResolver;)Z

    move-result p1

    if-nez p1, :cond_92

    .line 523
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fputmBootCompletedHandlerRan(Lcom/android/internal/telephony/ims/ImsResolver;Z)V

    .line 524
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmEventLog(Lcom/android/internal/telephony/ims/ImsResolver;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    const-string v0, "handling BOOT_COMPLETE"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 525
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmCarrierConfigReceived(Lcom/android/internal/telephony/ims/ImsResolver;)Z

    move-result p1

    if-eqz p1, :cond_82

    .line 526
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmEventLog(Lcom/android/internal/telephony/ims/ImsResolver;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    const-string v0, "boot complete - reeval"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 529
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mmaybeAddedImsService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;)V

    return-void

    .line 531
    :cond_82
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmEventLog(Lcom/android/internal/telephony/ims/ImsResolver;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    const-string v0, "boot complete - update cache"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 534
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mupdateInstalledServicesCache(Lcom/android/internal/telephony/ims/ImsResolver;)V

    :cond_92
    :goto_92
    return-void

    .line 567
    :pswitch_93
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;

    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    iget-object v1, p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->userId:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$msetPackageNameUserOverride(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;I)V

    .line 569
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 570
    iget-object v1, p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->featureTypes:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_a9
    if-ge v3, v2, :cond_b9

    aget v4, v1, v3

    .line 571
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a9

    .line 573
    :cond_b9
    iget-boolean v1, p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->isCarrierService:Z

    if-eqz v1, :cond_c5

    .line 574
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    iget p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;->slotId:I

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$moverrideCarrierService(Lcom/android/internal/telephony/ims/ImsResolver;ILjava/util/Map;)V

    return-void

    .line 576
    :cond_c5
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$moverrideDeviceService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/util/Map;)V

    return-void

    .line 558
    :pswitch_cb
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SomeArgs;

    .line 559
    iget-object v0, p1, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    .line 560
    iget-object v1, p1, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    .line 562
    invoke-virtual {p1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    .line 563
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mdynamicQueryComplete(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;Ljava/util/Set;)V

    return-void

    .line 553
    :pswitch_e0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 554
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mstartDynamicQuery(Lcom/android/internal/telephony/ims/ImsResolver;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    return-void

    .line 540
    :pswitch_ea
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 541
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 544
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmNumSlots(Lcom/android/internal/telephony/ims/ImsResolver;)I

    move-result v1

    if-lt v0, v1, :cond_10b

    .line 545
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "HANDLER_CONFIG_CHANGED for invalid slotid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 548
    :cond_10b
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fputmCarrierConfigReceived(Lcom/android/internal/telephony/ims/ImsResolver;Z)V

    .line 549
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mcarrierConfigChanged(Lcom/android/internal/telephony/ims/ImsResolver;II)V

    return-void

    .line 512
    :pswitch_116
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 513
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mmaybeRemovedImsService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;)Z

    return-void

    .line 507
    :pswitch_120
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 508
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$mmaybeAddedImsService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;)V

    return-void

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_120
        :pswitch_116
        :pswitch_ea
        :pswitch_e0
        :pswitch_cb
        :pswitch_93
        :pswitch_51
        :pswitch_43
        :pswitch_3b
        :pswitch_1d
        :pswitch_b
    .end packed-switch
.end method
