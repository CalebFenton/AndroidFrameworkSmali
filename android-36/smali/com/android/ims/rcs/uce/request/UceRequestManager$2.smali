.class Lcom/android/ims/rcs/uce/request/UceRequestManager$2;
.super Ljava/lang/Object;
.source "UceRequestManager.java"

# interfaces
.implements Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/request/UceRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/rcs/uce/request/UceRequestManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/rcs/uce/request/UceRequestManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 306
    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addToThrottlingList(Ljava/util/List;I)V
    .registers 4
    .param p2, "sipCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation

    .line 431
    .local p1, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmThrottlingList(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/request/ContactThrottlingList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->addToThrottlingList(Ljava/util/List;I)V

    .line 432
    return-void
.end method

.method public blacklist getAvailabilityFromCache(Landroid/net/Uri;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 324
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmControllerCallback(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->getAvailabilityFromCache(Landroid/net/Uri;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAvailabilityFromCacheIncludingExpired(Landroid/net/Uri;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 329
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmControllerCallback(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->getAvailabilityFromCacheIncludingExpired(Landroid/net/Uri;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCapabilitiesFromCache(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;",
            ">;"
        }
    .end annotation

    .line 314
    .local p1, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmControllerCallback(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->getCapabilitiesFromCache(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCapabilitiesFromCacheIncludingExpired(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;",
            ">;"
        }
    .end annotation

    .line 319
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmControllerCallback(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->getCapabilitiesFromCacheIncludingExpired(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDeviceCapabilities(I)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 3
    .param p1, "mechanism"    # I

    .line 339
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmControllerCallback(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->getDeviceCapabilities(I)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDeviceState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmControllerCallback(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->getDeviceState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInThrottlingListUris(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 426
    .local p1, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmThrottlingList(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/request/ContactThrottlingList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->getInThrottlingListUris(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist notifyCachedCapabilitiesUpdated(JJ)V
    .registers 9
    .param p1, "requestCoordinatorId"    # J
    .param p3, "taskId"    # J

    .line 388
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmHandler(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendRequestUpdatedMessage(Ljava/lang/Long;Ljava/lang/Long;I)V

    .line 390
    return-void
.end method

.method public blacklist notifyCapabilitiesUpdated(JJ)V
    .registers 9
    .param p1, "requestCoordinatorId"    # J
    .param p3, "taskId"    # J

    .line 382
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmHandler(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendRequestUpdatedMessage(Ljava/lang/Long;Ljava/lang/Long;I)V

    .line 384
    return-void
.end method

.method public blacklist notifyCommandError(JJ)V
    .registers 9
    .param p1, "requestCoordinatorId"    # J
    .param p3, "taskId"    # J

    .line 361
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmHandler(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendRequestUpdatedMessage(Ljava/lang/Long;Ljava/lang/Long;I)V

    .line 363
    return-void
.end method

.method public blacklist notifyNetworkResponse(JJ)V
    .registers 9
    .param p1, "requestCoordinatorId"    # J
    .param p3, "taskId"    # J

    .line 367
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmHandler(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendRequestUpdatedMessage(Ljava/lang/Long;Ljava/lang/Long;I)V

    .line 369
    return-void
.end method

.method public blacklist notifyNoNeedRequestFromNetwork(JJ)V
    .registers 9
    .param p1, "requestCoordinatorId"    # J
    .param p3, "taskId"    # J

    .line 394
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmHandler(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendRequestUpdatedMessage(Ljava/lang/Long;Ljava/lang/Long;I)V

    .line 396
    return-void
.end method

.method public blacklist notifyRemoteRequestDone(JJ)V
    .registers 9
    .param p1, "requestCoordinatorId"    # J
    .param p3, "taskId"    # J

    .line 400
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmHandler(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendRequestUpdatedMessage(Ljava/lang/Long;Ljava/lang/Long;I)V

    .line 402
    return-void
.end method

.method public blacklist notifyRequestCoordinatorFinished(J)V
    .registers 5
    .param p1, "requestCoordinatorId"    # J

    .line 421
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmHandler(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendRequestCoordinatorFinishedMessage(Ljava/lang/Long;)V

    .line 422
    return-void
.end method

.method public blacklist notifyRequestError(JJ)V
    .registers 9
    .param p1, "requestCoordinatorId"    # J
    .param p3, "taskId"    # J

    .line 355
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmHandler(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendRequestUpdatedMessage(Ljava/lang/Long;Ljava/lang/Long;I)V

    .line 357
    return-void
.end method

.method public blacklist notifyResourceTerminated(JJ)V
    .registers 9
    .param p1, "requestCoordinatorId"    # J
    .param p3, "taskId"    # J

    .line 377
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmHandler(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendRequestUpdatedMessage(Ljava/lang/Long;Ljava/lang/Long;I)V

    .line 379
    return-void
.end method

.method public blacklist notifySendingRequest(JJJ)V
    .registers 10
    .param p1, "coordinatorId"    # J
    .param p3, "taskId"    # J
    .param p5, "delayTimeMs"    # J

    .line 309
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmHandler(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p5, p6}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendRequestMessage(Ljava/lang/Long;Ljava/lang/Long;J)V

    .line 310
    return-void
.end method

.method public blacklist notifyTerminated(JJ)V
    .registers 9
    .param p1, "requestCoordinatorId"    # J
    .param p3, "taskId"    # J

    .line 372
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmHandler(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendRequestUpdatedMessage(Ljava/lang/Long;Ljava/lang/Long;I)V

    .line 374
    return-void
.end method

.method public blacklist notifyUceRequestFinished(JJ)V
    .registers 8
    .param p1, "requestCoordinatorId"    # J
    .param p3, "taskId"    # J

    .line 416
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmHandler(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendRequestFinishedMessage(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 417
    return-void
.end method

.method public blacklist refreshDeviceState(ILjava/lang/String;)V
    .registers 5
    .param p1, "sipCode"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmControllerCallback(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, p1, p2, v1}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->refreshDeviceState(ILjava/lang/String;I)V

    .line 351
    return-void
.end method

.method public blacklist removeRequestTimeoutTimer(J)V
    .registers 5
    .param p1, "taskId"    # J

    .line 411
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmHandler(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->removeRequestTimeoutTimer(Ljava/lang/Long;)V

    .line 412
    return-void
.end method

.method public blacklist saveCapabilities(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation

    .line 334
    .local p1, "contactCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmControllerCallback(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->saveCapabilities(Ljava/util/List;)V

    .line 335
    return-void
.end method

.method public blacklist sendSubscribeRetryRequest(Lcom/android/ims/rcs/uce/request/UceRequest;)V
    .registers 3
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/UceRequest;

    .line 436
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$msendSubscribeRetryRequest(Lcom/android/ims/rcs/uce/request/UceRequestManager;Lcom/android/ims/rcs/uce/request/UceRequest;)V

    .line 437
    return-void
.end method

.method public blacklist setRequestTimeoutTimer(JJJ)V
    .registers 11
    .param p1, "coordinatorId"    # J
    .param p3, "taskId"    # J
    .param p5, "timeoutAfterMs"    # J

    .line 406
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;->this$0:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->-$$Nest$fgetmHandler(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendRequestTimeoutTimerMessage(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 407
    return-void
.end method
