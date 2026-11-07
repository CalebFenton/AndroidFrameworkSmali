.class public Landroid/widget/photopicker/IEmbeddedPhotoPicker$Default;
.super Ljava/lang/Object;
.source "IEmbeddedPhotoPicker.java"

# interfaces
.implements Landroid/widget/photopicker/IEmbeddedPhotoPicker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/photopicker/IEmbeddedPhotoPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist openSession(Ljava/lang/String;Landroid/os/IBinder;IIILandroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;Landroid/widget/photopicker/IEmbeddedPhotoPickerClient;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hostToken"    # Landroid/os/IBinder;
    .param p3, "displayId"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "featureInfo"    # Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;
    .param p7, "clientCallback"    # Landroid/widget/photopicker/IEmbeddedPhotoPickerClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
