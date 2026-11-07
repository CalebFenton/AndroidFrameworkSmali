.class Landroid/hardware/CameraStatus$1;
.super Ljava/lang/Object;
.source "CameraStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/CameraStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/CameraStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/CameraStatus;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    new-instance v0, Landroid/hardware/CameraStatus;

    invoke-direct {v0}, Landroid/hardware/CameraStatus;-><init>()V

    .line 66
    .local v0, "status":Landroid/hardware/CameraStatus;
    invoke-virtual {v0, p1}, Landroid/hardware/CameraStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 67
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

    .line 62
    invoke-virtual {p0, p1}, Landroid/hardware/CameraStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/CameraStatus;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/CameraStatus;
    .registers 3
    .param p1, "size"    # I

    .line 72
    new-array v0, p1, [Landroid/hardware/CameraStatus;

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

    .line 62
    invoke-virtual {p0, p1}, Landroid/hardware/CameraStatus$1;->newArray(I)[Landroid/hardware/CameraStatus;

    move-result-object p1

    return-object p1
.end method
