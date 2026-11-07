.class public Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
.super Ljava/lang/Object;
.source "PhysicalCaptureResultInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o cameraId:Ljava/lang/String;

.field private blacklist cameraMetadataInfo:Landroid/hardware/camera2/CameraMetadataInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo$1;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "cameraMetadata"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraId:Ljava/lang/String;

    .line 50
    invoke-static {p2}, Landroid/hardware/camera2/CameraMetadataInfo;->metadata(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/CameraMetadataInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraMetadataInfo:Landroid/hardware/camera2/CameraMetadataInfo;

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCameraId()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getCameraMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraMetadataInfo:Landroid/hardware/camera2/CameraMetadataInfo;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraMetadataInfo;->getMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCameraMetadataInfo()Landroid/hardware/camera2/CameraMetadataInfo;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraMetadataInfo:Landroid/hardware/camera2/CameraMetadataInfo;

    return-object v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraId:Ljava/lang/String;

    .line 66
    sget-object v0, Landroid/hardware/camera2/CameraMetadataInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraMetadataInfo;

    iput-object v0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraMetadataInfo:Landroid/hardware/camera2/CameraMetadataInfo;

    .line 67
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->cameraMetadataInfo:Landroid/hardware/camera2/CameraMetadataInfo;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraMetadataInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    return-void
.end method
