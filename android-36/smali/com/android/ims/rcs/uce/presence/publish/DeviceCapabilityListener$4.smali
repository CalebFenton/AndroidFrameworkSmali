.class Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;
.super Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.source "DeviceCapabilityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 459
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-direct {p0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 7
    .param p1, "attributes"    # Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 462
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$fgetmLock(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 463
    :try_start_7
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRcsRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$mlogi(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$fgetmIsImsCallbackRegistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Z

    move-result v1

    if-nez v1, :cond_29

    monitor-exit v0

    return-void

    .line 466
    :cond_29
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 467
    .local v1, "featureTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result v2

    .line 469
    .local v2, "registrationTech":I
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$fgetmUceStatsWriter(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Lcom/android/ims/rcs/uce/UceStatsWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v4}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$fgetmSubId(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)I

    move-result v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setImsRegistrationFeatureTagStats(ILjava/util/List;I)V

    .line 471
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v3, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$mhandleImsRcsRegistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 472
    .end local v1    # "featureTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "registrationTech":I
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public blacklist onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .registers 5
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 487
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$fgetmLock(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 488
    :try_start_7
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    const-string v2, "onRcsSubscriberAssociatedUriChanged"

    invoke-static {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$mlogi(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$mhandleRcsSubscriberAssociatedUriChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;[Landroid/net/Uri;Z)V

    .line 490
    monitor-exit v0

    .line 491
    return-void

    .line 490
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 477
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$fgetmLock(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 478
    :try_start_7
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRcsUnregistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$mlogi(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Ljava/lang/String;)V

    .line 479
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$fgetmIsImsCallbackRegistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Z

    move-result v1

    if-nez v1, :cond_29

    monitor-exit v0

    return-void

    .line 480
    :cond_29
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$fgetmUceStatsWriter(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Lcom/android/ims/rcs/uce/UceStatsWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$fgetmSubId(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setStoreCompleteImsRegistrationFeatureTagStats(I)V

    .line 481
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$mhandleImsRcsUnregistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    .line 482
    monitor-exit v0

    .line 483
    return-void

    .line 482
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_3f

    throw v1
.end method
