.class Landroid/media/VolumeShaper$State$1;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/VolumeShaper$State;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumeShaper$State;
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 1560
    sget-object v0, Landroid/media/VolumeShaperState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumeShaperState;

    invoke-static {v0}, Landroid/media/VolumeShaper$State;->fromParcelable(Landroid/media/VolumeShaperState;)Landroid/media/VolumeShaper$State;

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

    .line 1557
    invoke-virtual {p0, p1}, Landroid/media/VolumeShaper$State$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumeShaper$State;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/VolumeShaper$State;
    .registers 3
    .param p1, "size"    # I

    .line 1565
    new-array v0, p1, [Landroid/media/VolumeShaper$State;

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

    .line 1557
    invoke-virtual {p0, p1}, Landroid/media/VolumeShaper$State$1;->newArray(I)[Landroid/media/VolumeShaper$State;

    move-result-object p1

    return-object p1
.end method
