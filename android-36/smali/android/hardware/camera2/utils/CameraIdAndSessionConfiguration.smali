.class public Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
.super Ljava/lang/Object;
.source "CameraIdAndSessionConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCameraId:Ljava/lang/String;

.field private blacklist mSessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    .line 57
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/camera2/params/SessionConfiguration;)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "sessionConfiguration"    # Landroid/hardware/camera2/params/SessionConfiguration;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->mCameraId:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->mSessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration;

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCameraId()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSessionConfiguration()Landroid/hardware/camera2/params/SessionConfiguration;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->mSessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->mCameraId:Ljava/lang/String;

    .line 75
    sget-object v0, Landroid/hardware/camera2/params/SessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/SessionConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->mSessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration;

    .line 76
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 66
    iget-object v0, p0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->mSessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/params/SessionConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    return-void
.end method
