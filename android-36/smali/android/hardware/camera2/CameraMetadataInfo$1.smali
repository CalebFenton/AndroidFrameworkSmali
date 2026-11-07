.class Landroid/hardware/camera2/CameraMetadataInfo$1;
.super Ljava/lang/Object;
.source "CameraMetadataInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraMetadataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/camera2/CameraMetadataInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/CameraMetadataInfo;
    .registers 4
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 71
    new-instance v0, Landroid/hardware/camera2/CameraMetadataInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/camera2/CameraMetadataInfo;-><init>(Landroid/os/Parcel;Landroid/hardware/camera2/CameraMetadataInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraMetadataInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/CameraMetadataInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/camera2/CameraMetadataInfo;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 75
    new-array v0, p1, [Landroid/hardware/camera2/CameraMetadataInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraMetadataInfo$1;->newArray(I)[Landroid/hardware/camera2/CameraMetadataInfo;

    move-result-object p1

    return-object p1
.end method
