.class Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;
.super Landroid/os/Handler;
.source "PublishControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublishHandler"
.end annotation


# static fields
.field private static blacklist EVENT_DESCRIPTION:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MSG_CARRIER_CONFIG_CHANGED:I = 0x4

.field private static final blacklist MSG_DESTROYED:I = 0x3

.field private static final blacklist MSG_IMS_UNREGISTERED:I = 0x10

.field private static final blacklist MSG_NOTIFY_CURRENT_PUBLISH_STATE:I = 0x7

.field private static final blacklist MSG_PUBLISH_SENT:I = 0xe

.field private static final blacklist MSG_PUBLISH_STATE_CHANGED:I = 0x6

.field private static final blacklist MSG_PUBLISH_UPDATED:I = 0xf

.field private static final blacklist MSG_RCS_CAPABILITIES_CHANGED:I = 0x5

.field private static final blacklist MSG_RCS_CONNECTED:I = 0x1

.field private static final blacklist MSG_RCS_DISCONNECTED:I = 0x2

.field private static final blacklist MSG_REQUEST_CANCELED:I = 0xb

.field private static final blacklist MSG_REQUEST_CMD_ERROR:I = 0x9

.field private static final blacklist MSG_REQUEST_NETWORK_RESPONSE:I = 0xa

.field private static final blacklist MSG_REQUEST_PUBLISH:I = 0x8

.field private static final blacklist MSG_RESET_DEVICE_STATE:I = 0xc

.field private static final blacklist MSG_UNPUBLISHED:I = 0xd


# instance fields
.field private final blacklist mPublishControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 833
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    .line 835
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RCS_CONNECTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RCS_DISCONNECTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DESTROYED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CARRIER_CONFIG_CHANGED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RCS_CAPABILITIES_CHANGED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PUBLISH_STATE_CHANGED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NOTIFY_PUBLISH_STATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_PUBLISH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_CMD_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_NETWORK_RESPONSE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_CANCELED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RESET_DEVICE_STATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MSG_UNPUBLISHED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MSG_PUBLISH_SENT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MSG_PUBLISH_UPDATED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MSG_IMS_UNREGISTERED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Landroid/os/Looper;)V
    .registers 4
    .param p1, "publishController"    # Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 481
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 482
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    .line 483
    return-void
.end method


# virtual methods
.method public blacklist clearRequestCanceledTimer()V
    .registers 3

    .line 794
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 795
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    .line 796
    return-void

    .line 798
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 799
    :cond_12
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->removeMessages(I)V

    .line 800
    return-void
.end method

.method public blacklist clearResetDeviceStateTimer()V
    .registers 3

    .line 816
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 817
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    .line 818
    return-void

    .line 820
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 821
    :cond_12
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->removeMessages(I)V

    .line 822
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .line 487
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 488
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    .line 489
    return-void

    .line 491
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 492
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 493
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_12a

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    goto/16 :goto_105

    .line 582
    :pswitch_55
    nop

    .line 583
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    .line 582
    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleUnpublishedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;ILjava/time/Instant;)V

    .line 584
    goto/16 :goto_105

    .line 576
    :pswitch_60
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ims/SipDetails;

    .line 577
    .local v1, "details":Landroid/telephony/ims/SipDetails;
    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandlePublishUpdatedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Landroid/telephony/ims/SipDetails;)V

    .line 578
    goto/16 :goto_105

    .line 572
    .end local v1    # "details":Landroid/telephony/ims/SipDetails;
    :pswitch_69
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandlePublishSentMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    .line 573
    goto/16 :goto_105

    .line 563
    :pswitch_6e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/SomeArgs;

    .line 564
    .local v1, "args":Lcom/android/ims/SomeArgs;
    iget-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 565
    .local v2, "newPublishState":I
    iget-object v3, v1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/time/Instant;

    .line 566
    .local v3, "updatedTimestamp":Ljava/time/Instant;
    invoke-virtual {v1}, Lcom/android/ims/SomeArgs;->recycle()V

    .line 567
    invoke-static {v0, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleUnpublishedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;ILjava/time/Instant;)V

    .line 568
    goto/16 :goto_105

    .line 559
    .end local v1    # "args":Lcom/android/ims/SomeArgs;
    .end local v2    # "newPublishState":I
    .end local v3    # "updatedTimestamp":Ljava/time/Instant;
    :pswitch_86
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleResetDeviceStateMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    .line 560
    goto/16 :goto_105

    .line 554
    :pswitch_8b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 555
    .local v1, "taskId":J
    invoke-static {v0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleRequestCanceledMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;J)V

    .line 556
    goto/16 :goto_105

    .line 549
    .end local v1    # "taskId":J
    :pswitch_98
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 550
    .local v1, "networkResponse":Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmPublishProcessor(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->onNetworkResponse(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 551
    goto :goto_105

    .line 544
    .end local v1    # "networkResponse":Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    :pswitch_a4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 545
    .local v1, "cmdErrorResponse":Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmPublishProcessor(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->onCommandError(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 546
    goto :goto_105

    .line 539
    .end local v1    # "cmdErrorResponse":Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    :pswitch_b0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 540
    .local v1, "type":I
    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleRequestPublishMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;I)V

    .line 541
    goto :goto_105

    .line 530
    .end local v1    # "type":I
    :pswitch_b6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    .line 531
    .local v1, "c":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    const/4 v2, 0x0

    .line 532
    .local v2, "supportPublishingState":Z
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c1

    .line 533
    const/4 v2, 0x1

    .line 535
    :cond_c1
    invoke-static {v0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleNotifyCurrentPublishStateMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V

    .line 536
    goto :goto_105

    .line 519
    .end local v1    # "c":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    .end local v2    # "supportPublishingState":Z
    :pswitch_c5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/SomeArgs;

    .line 520
    .local v1, "args":Lcom/android/ims/SomeArgs;
    iget-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 521
    .local v2, "newPublishState":I
    iget-object v3, v1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/time/Instant;

    .line 522
    .restart local v3    # "updatedTimestamp":Ljava/time/Instant;
    iget-object v4, v1, Lcom/android/ims/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 523
    .local v4, "pidfXml":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/ims/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/ims/SipDetails;

    .line 524
    .local v5, "details":Landroid/telephony/ims/SipDetails;
    invoke-virtual {v1}, Lcom/android/ims/SomeArgs;->recycle()V

    .line 525
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandlePublishStateChangedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;ILjava/time/Instant;Ljava/lang/String;Landroid/telephony/ims/SipDetails;)V

    .line 527
    goto :goto_105

    .line 514
    .end local v1    # "args":Lcom/android/ims/SomeArgs;
    .end local v2    # "newPublishState":I
    .end local v3    # "updatedTimestamp":Ljava/time/Instant;
    .end local v4    # "pidfXml":Ljava/lang/String;
    .end local v5    # "details":Landroid/telephony/ims/SipDetails;
    :pswitch_e4
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 515
    .local v1, "RcsCapabilities":I
    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleRcsCapabilitiesChangedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;I)V

    .line 516
    goto :goto_105

    .line 510
    .end local v1    # "RcsCapabilities":I
    :pswitch_ea
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleCarrierConfigChangedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    .line 511
    goto :goto_105

    .line 506
    :pswitch_ee
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleDestroyedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    .line 507
    goto :goto_105

    .line 502
    :pswitch_f2
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleRcsDisconnectedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    .line 503
    goto :goto_105

    .line 495
    :pswitch_f6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/SomeArgs;

    .line 496
    .local v1, "args":Lcom/android/ims/SomeArgs;
    iget-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/ims/RcsFeatureManager;

    .line 497
    .local v2, "manager":Lcom/android/ims/RcsFeatureManager;
    invoke-virtual {v1}, Lcom/android/ims/SomeArgs;->recycle()V

    .line 498
    invoke-static {v0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mhandleRcsConnectedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Lcom/android/ims/RcsFeatureManager;)V

    .line 499
    nop

    .line 590
    .end local v1    # "args":Lcom/android/ims/SomeArgs;
    .end local v2    # "manager":Lcom/android/ims/RcsFeatureManager;
    :goto_105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage done: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->EVENT_DESCRIPTION:Ljava/util/Map;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 591
    return-void

    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_f6
        :pswitch_f2
        :pswitch_ee
        :pswitch_ea
        :pswitch_e4
        :pswitch_c5
        :pswitch_b6
        :pswitch_b0
        :pswitch_a4
        :pswitch_98
        :pswitch_8b
        :pswitch_86
        :pswitch_6e
        :pswitch_69
        :pswitch_60
        :pswitch_55
    .end packed-switch
.end method

.method public blacklist onDestroy()V
    .registers 2

    .line 597
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 598
    return-void
.end method

.method public blacklist sendCarrierConfigChangedMsg()V
    .registers 4

    .line 634
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 635
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 636
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 638
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 639
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 640
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 641
    return-void
.end method

.method public blacklist sendDestroyedMsg()V
    .registers 4

    .line 624
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 625
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 626
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 628
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 629
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 630
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 631
    return-void
.end method

.method public blacklist sendImsUnregisteredMessage()V
    .registers 4

    .line 825
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 826
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 827
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 828
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 829
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 830
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 831
    return-void
.end method

.method public blacklist sendNotifyCurrentPublishStateMessage(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V
    .registers 6
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    .param p2, "supportPublishingState"    # Z

    .line 710
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 711
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 712
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 714
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 715
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 716
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 717
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 718
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 719
    return-void
.end method

.method public blacklist sendPublishMessage(I)V
    .registers 4
    .param p1, "type"    # I

    .line 734
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishMessage(IJ)V

    .line 735
    return-void
.end method

.method public blacklist sendPublishMessage(IJ)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "delay"    # J

    .line 738
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 739
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 740
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 744
    :cond_12
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$misPresencePublishEnabled(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-nez v1, :cond_32

    const/4 v1, 0x1

    if-eq p1, v1, :cond_32

    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPublishMessage: disallowed type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 746
    return-void

    .line 749
    :cond_32
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 750
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 751
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 752
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 753
    return-void
.end method

.method public blacklist sendPublishSentMessage()V
    .registers 4

    .line 725
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 726
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 727
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 728
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 729
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0xe

    iput v2, v1, Landroid/os/Message;->what:I

    .line 730
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 731
    return-void
.end method

.method public blacklist sendPublishStateChangedMessage(ILjava/time/Instant;Ljava/lang/String;Landroid/telephony/ims/SipDetails;)V
    .registers 9
    .param p1, "publishState"    # I
    .param p2, "updatedTimestamp"    # Ljava/time/Instant;
    .param p3, "pidfXml"    # Ljava/lang/String;
    .param p4, "details"    # Landroid/telephony/ims/SipDetails;

    .line 659
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 660
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 661
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 663
    :cond_12
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v1

    .line 664
    .local v1, "args":Lcom/android/ims/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 665
    iput-object p2, v1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 666
    iput-object p3, v1, Lcom/android/ims/SomeArgs;->arg3:Ljava/lang/Object;

    .line 667
    iput-object p4, v1, Lcom/android/ims/SomeArgs;->arg4:Ljava/lang/Object;

    .line 668
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 669
    .local v2, "message":Landroid/os/Message;
    const/4 v3, 0x6

    iput v3, v2, Landroid/os/Message;->what:I

    .line 670
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 671
    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 672
    return-void
.end method

.method public blacklist sendPublishUpdatedMessage(Landroid/telephony/ims/SipDetails;)V
    .registers 5
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;

    .line 695
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 696
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 697
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 699
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 700
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0xf

    iput v2, v1, Landroid/os/Message;->what:I

    .line 701
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 702
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 703
    return-void
.end method

.method public blacklist sendRcsCapabilitiesStatusChangedMsg(I)V
    .registers 5
    .param p1, "capabilities"    # I

    .line 644
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 645
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 646
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 648
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 649
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 650
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 651
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 652
    return-void
.end method

.method public blacklist sendRcsConnectedMsg(Lcom/android/ims/RcsFeatureManager;)V
    .registers 6
    .param p1, "manager"    # Lcom/android/ims/RcsFeatureManager;

    .line 601
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 602
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 603
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 605
    :cond_12
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v1

    .line 606
    .local v1, "args":Lcom/android/ims/SomeArgs;
    iput-object p1, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 607
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 608
    .local v2, "message":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 609
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 610
    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 611
    return-void
.end method

.method public blacklist sendRcsDisconnectedMsg()V
    .registers 4

    .line 614
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 615
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 616
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 618
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 619
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 620
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 621
    return-void
.end method

.method public blacklist sendRequestCanceledTimerMessage(JJ)V
    .registers 8
    .param p1, "taskId"    # J
    .param p3, "delay"    # J

    .line 780
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 781
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    .line 782
    return-void

    .line 784
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 785
    :cond_12
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->removeMessages(ILjava/lang/Object;)V

    .line 787
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 788
    .local v1, "message":Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->what:I

    .line 789
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 790
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 791
    return-void
.end method

.method public blacklist sendRequestCommandErrorMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 756
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 757
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    .line 758
    return-void

    .line 760
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 761
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 762
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 763
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 764
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 765
    return-void
.end method

.method public blacklist sendRequestNetworkRespMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 768
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 769
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    .line 770
    return-void

    .line 772
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 773
    :cond_12
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 774
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->what:I

    .line 775
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 776
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 777
    return-void
.end method

.method public blacklist sendResetDeviceStateTimerMessage(J)V
    .registers 8
    .param p1, "resetAfterSec"    # J

    .line 803
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 804
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    .line 805
    return-void

    .line 807
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 809
    :cond_12
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->removeMessages(I)V

    .line 810
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 811
    .local v2, "message":Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->what:I

    .line 812
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 813
    return-void
.end method

.method public blacklist sendUnpublishedMessage(I)V
    .registers 6
    .param p1, "publishState"    # I

    .line 678
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->mPublishControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    .line 679
    .local v0, "publishCtrl":Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    if-nez v0, :cond_b

    return-void

    .line 680
    :cond_b
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 682
    :cond_12
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v1

    .line 683
    .local v1, "args":Lcom/android/ims/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 684
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    iput-object v2, v1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 685
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 686
    .local v2, "message":Landroid/os/Message;
    const/16 v3, 0xd

    iput v3, v2, Landroid/os/Message;->what:I

    .line 687
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 688
    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendMessage(Landroid/os/Message;)Z

    .line 689
    return-void
.end method
