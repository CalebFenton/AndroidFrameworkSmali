.class Landroid/hardware/CameraSessionStats$1;
.super Ljava/lang/Object;
.source "CameraSessionStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/CameraSessionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/CameraSessionStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/CameraSessionStats;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 125
    new-instance v0, Landroid/hardware/CameraSessionStats;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/CameraSessionStats;-><init>(Landroid/os/Parcel;Landroid/hardware/CameraSessionStats-IA;)V

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

    .line 122
    invoke-virtual {p0, p1}, Landroid/hardware/CameraSessionStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/CameraSessionStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/CameraSessionStats;
    .registers 3
    .param p1, "size"    # I

    .line 130
    new-array v0, p1, [Landroid/hardware/CameraSessionStats;

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

    .line 122
    invoke-virtual {p0, p1}, Landroid/hardware/CameraSessionStats$1;->newArray(I)[Landroid/hardware/CameraSessionStats;

    move-result-object p1

    return-object p1
.end method
