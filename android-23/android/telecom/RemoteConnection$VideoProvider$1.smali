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
.field final synthetic this$1:Landroid/telecom/RemoteConnection$VideoProvider;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnection$VideoProvider;)V
    .locals 0
    .param p1, "this$1"    # Landroid/telecom/RemoteConnection$VideoProvider;

    #@0
    .prologue
    .line 322
    iput-object p1, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 380
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public changeCallDataUsage(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    #@0
    .prologue
    .line 358
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    #@2
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->-get0(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    #@16
    .line 359
    .local v0, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    #@18
    invoke-virtual {v0, v2, p1, p2}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onCallDataUsageChanged(Landroid/telecom/RemoteConnection$VideoProvider;J)V

    #@1b
    goto :goto_0

    #@1c
    .line 357
    .end local v0    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_0
    return-void
.end method

.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 3
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    #@0
    .prologue
    .line 366
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    #@2
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->-get0(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    #@16
    .line 367
    .local v0, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    #@18
    invoke-virtual {v0, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onCameraCapabilitiesChanged(Landroid/telecom/RemoteConnection$VideoProvider;Landroid/telecom/VideoProfile$CameraCapabilities;)V

    #@1b
    goto :goto_0

    #@1c
    .line 365
    .end local v0    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_0
    return-void
.end method

.method public changePeerDimensions(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 351
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    #@2
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->-get0(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    #@16
    .line 352
    .local v0, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    #@18
    invoke-virtual {v0, v2, p1, p2}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onPeerDimensionsChanged(Landroid/telecom/RemoteConnection$VideoProvider;II)V

    #@1b
    goto :goto_0

    #@1c
    .line 350
    .end local v0    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_0
    return-void
.end method

.method public changeVideoQuality(I)V
    .locals 3
    .param p1, "videoQuality"    # I

    #@0
    .prologue
    .line 373
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    #@2
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->-get0(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    #@16
    .line 374
    .local v0, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    #@18
    invoke-virtual {v0, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onVideoQualityChanged(Landroid/telecom/RemoteConnection$VideoProvider;I)V

    #@1b
    goto :goto_0

    #@1c
    .line 372
    .end local v0    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_0
    return-void
.end method

.method public handleCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    #@0
    .prologue
    .line 344
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    #@2
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->-get0(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    #@16
    .line 345
    .local v0, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    #@18
    invoke-virtual {v0, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onCallSessionEvent(Landroid/telecom/RemoteConnection$VideoProvider;I)V

    #@1b
    goto :goto_0

    #@1c
    .line 343
    .end local v0    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_0
    return-void
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 325
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    #@2
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->-get0(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    #@16
    .line 326
    .local v0, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    #@18
    invoke-virtual {v0, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onSessionModifyRequestReceived(Landroid/telecom/RemoteConnection$VideoProvider;Landroid/telecom/VideoProfile;)V

    #@1b
    goto :goto_0

    #@1c
    .line 324
    .end local v0    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_0
    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 333
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    #@2
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->-get0(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    #@16
    .line 335
    .local v0, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider$1;->this$1:Landroid/telecom/RemoteConnection$VideoProvider;

    #@18
    .line 334
    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onSessionModifyResponseReceived(Landroid/telecom/RemoteConnection$VideoProvider;ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    #@1b
    goto :goto_0

    #@1c
    .line 332
    .end local v0    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_0
    return-void
.end method
