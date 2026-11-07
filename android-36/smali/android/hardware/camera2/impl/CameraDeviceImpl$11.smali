.class Landroid/hardware/camera2/impl/CameraDeviceImpl$11;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;->switchToOffline(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;)Landroid/hardware/camera2/CameraOfflineSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field final synthetic blacklist val$offlineStreamIds:Ljava/util/HashSet;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/HashSet;)V
    .registers 3
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1278
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;->val$offlineStreamIds:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 1286
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v2

    .line 1287
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;->val$offlineStreamIds:Ljava/util/HashSet;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;->val$offlineStreamIds:Ljava/util/HashSet;

    .line 1289
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Integer;

    .line 1288
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    .line 1289
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v3

    .line 1290
    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v3

    .line 1286
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->switchToOffline(Landroid/hardware/camera2/ICameraDeviceCallbacks;[I)Landroid/hardware/camera2/ICameraOfflineSession;

    move-result-object v1

    .line 1291
    .local v1, "remoteOfflineSession":Landroid/hardware/camera2/ICameraOfflineSession;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->setRemoteSession(Landroid/hardware/camera2/ICameraOfflineSession;)V
    :try_end_3f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_3f} :catch_42
    .catchall {:try_start_1 .. :try_end_3f} :catchall_40

    .end local v1    # "remoteOfflineSession":Landroid/hardware/camera2/ICameraOfflineSession;
    goto :goto_4c

    .line 1295
    :catchall_40
    move-exception v1

    goto :goto_53

    .line 1292
    :catch_42
    move-exception v1

    .line 1293
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_43
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->notifyFailedSwitch()V
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_40

    .line 1295
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_4c
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fputmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    .line 1296
    nop

    .line 1297
    return-void

    .line 1295
    :goto_53
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fputmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    .line 1296
    throw v1
.end method
