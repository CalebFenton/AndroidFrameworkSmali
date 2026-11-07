.class public Landroid/hardware/camera2/extension/IRequestProcessorImpl$Default;
.super Ljava/lang/Object;
.source "IRequestProcessorImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IRequestProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IRequestProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist abortCaptures()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setImageProcessor(Landroid/hardware/camera2/extension/OutputConfigId;Landroid/hardware/camera2/extension/IImageProcessorImpl;)V
    .registers 3
    .param p1, "outputConfigId"    # Landroid/hardware/camera2/extension/OutputConfigId;
    .param p2, "imageProcessor"    # Landroid/hardware/camera2/extension/IImageProcessorImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist setRepeating(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)I
    .registers 4
    .param p1, "request"    # Landroid/hardware/camera2/extension/Request;
    .param p2, "callback"    # Landroid/hardware/camera2/extension/IRequestCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopRepeating()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist submit(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)I
    .registers 4
    .param p1, "request"    # Landroid/hardware/camera2/extension/Request;
    .param p2, "callback"    # Landroid/hardware/camera2/extension/IRequestCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist submitBurst(Ljava/util/List;Landroid/hardware/camera2/extension/IRequestCallback;)I
    .registers 4
    .param p2, "callback"    # Landroid/hardware/camera2/extension/IRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/Request;",
            ">;",
            "Landroid/hardware/camera2/extension/IRequestCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/Request;>;"
    const/4 v0, 0x0

    return v0
.end method
