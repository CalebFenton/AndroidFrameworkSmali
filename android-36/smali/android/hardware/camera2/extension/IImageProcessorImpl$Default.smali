.class public Landroid/hardware/camera2/extension/IImageProcessorImpl$Default;
.super Ljava/lang/Object;
.source "IImageProcessorImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IImageProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IImageProcessorImpl;
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

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onNextImageAvailable(Landroid/hardware/camera2/extension/OutputConfigId;Landroid/hardware/camera2/extension/ParcelImage;Ljava/lang/String;)V
    .registers 4
    .param p1, "outputConfigId"    # Landroid/hardware/camera2/extension/OutputConfigId;
    .param p2, "image"    # Landroid/hardware/camera2/extension/ParcelImage;
    .param p3, "physicalCameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
