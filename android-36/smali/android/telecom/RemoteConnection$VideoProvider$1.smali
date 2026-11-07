.class Landroid/telecom/RemoteConnection$VideoProvider$1;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Lcom/android/internal/telecom/IVideoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/RemoteConnection$VideoProvider;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/RemoteConnection$VideoProvider;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telecom/RemoteConnection$VideoProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 384
    iput-object p1, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 442
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist changeCallDataUsage(J)V
    .registers 6
    .param p1, "dataUsage"    # J

    .line 420
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/RemoteConnection$VideoProvider;->-$$Nest$fgetmCallbacks(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 421
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1, p2}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onCallDataUsageChanged(Landroid/telecom/RemoteConnection$VideoProvider;J)V

    .line 422
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    goto :goto_a

    .line 423
    :cond_1c
    return-void
.end method

.method public blacklist changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .registers 5
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 428
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/RemoteConnection$VideoProvider;->-$$Nest$fgetmCallbacks(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 429
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onCameraCapabilitiesChanged(Landroid/telecom/RemoteConnection$VideoProvider;Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 430
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    goto :goto_a

    .line 431
    :cond_1c
    return-void
.end method

.method public blacklist changePeerDimensions(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 413
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/RemoteConnection$VideoProvider;->-$$Nest$fgetmCallbacks(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 414
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1, p2}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onPeerDimensionsChanged(Landroid/telecom/RemoteConnection$VideoProvider;II)V

    .line 415
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    goto :goto_a

    .line 416
    :cond_1c
    return-void
.end method

.method public blacklist changeVideoQuality(I)V
    .registers 5
    .param p1, "videoQuality"    # I

    .line 435
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/RemoteConnection$VideoProvider;->-$$Nest$fgetmCallbacks(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 436
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onVideoQualityChanged(Landroid/telecom/RemoteConnection$VideoProvider;I)V

    .line 437
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    goto :goto_a

    .line 438
    :cond_1c
    return-void
.end method

.method public blacklist handleCallSessionEvent(I)V
    .registers 5
    .param p1, "event"    # I

    .line 406
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/RemoteConnection$VideoProvider;->-$$Nest$fgetmCallbacks(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 407
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onCallSessionEvent(Landroid/telecom/RemoteConnection$VideoProvider;I)V

    .line 408
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    goto :goto_a

    .line 409
    :cond_1c
    return-void
.end method

.method public blacklist receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .registers 5
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .line 387
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/RemoteConnection$VideoProvider;->-$$Nest$fgetmCallbacks(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 388
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onSessionModifyRequestReceived(Landroid/telecom/RemoteConnection$VideoProvider;Landroid/telecom/VideoProfile;)V

    .line 389
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    goto :goto_a

    .line 390
    :cond_1c
    return-void
.end method

.method public blacklist receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 395
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/RemoteConnection$VideoProvider;->-$$Nest$fgetmCallbacks(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 396
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onSessionModifyResponseReceived(Landroid/telecom/RemoteConnection$VideoProvider;ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 401
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    goto :goto_a

    .line 402
    :cond_1c
    return-void
.end method
