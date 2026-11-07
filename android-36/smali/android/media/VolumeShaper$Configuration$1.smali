.class Landroid/media/VolumeShaper$Configuration$1;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/VolumeShaper$Configuration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumeShaper$Configuration;
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 556
    sget-object v0, Landroid/media/VolumeShaperConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumeShaperConfiguration;

    invoke-static {v0}, Landroid/media/VolumeShaper$Configuration;->fromParcelable(Landroid/media/VolumeShaperConfiguration;)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

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

    .line 553
    invoke-virtual {p0, p1}, Landroid/media/VolumeShaper$Configuration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumeShaper$Configuration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/VolumeShaper$Configuration;
    .registers 3
    .param p1, "size"    # I

    .line 561
    new-array v0, p1, [Landroid/media/VolumeShaper$Configuration;

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

    .line 553
    invoke-virtual {p0, p1}, Landroid/media/VolumeShaper$Configuration$1;->newArray(I)[Landroid/media/VolumeShaper$Configuration;

    move-result-object p1

    return-object p1
.end method
