.class public Landroid/hardware/camera2/extension/IProcessResultImpl$Default;
.super Ljava/lang/Object;
.source "IProcessResultImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IProcessResultImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IProcessResultImpl;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCaptureCompleted(JLandroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 4
    .param p1, "shutterTimestamp"    # J
    .param p3, "results"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onCaptureProcessProgressed(I)V
    .registers 2
    .param p1, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
