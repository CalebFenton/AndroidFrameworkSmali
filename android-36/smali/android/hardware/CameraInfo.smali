.class public Landroid/hardware/CameraInfo;
.super Ljava/lang/Object;
.source "CameraInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/CameraInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o info:Landroid/hardware/Camera$CameraInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/hardware/CameraInfo$1;

    invoke-direct {v0}, Landroid/hardware/CameraInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/CameraInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 44
    iget-object v0, p0, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 45
    iget-object v0, p0, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 46
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 39
    iget-object v0, p0, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object v0, p0, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    return-void
.end method
