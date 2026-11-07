.class Landroid/location/SatelliteEphemerisTime$1;
.super Ljava/lang/Object;
.source "SatelliteEphemerisTime.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/SatelliteEphemerisTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/SatelliteEphemerisTime;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/SatelliteEphemerisTime;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    new-instance v0, Landroid/location/SatelliteEphemerisTime$Builder;

    invoke-direct {v0}, Landroid/location/SatelliteEphemerisTime$Builder;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/SatelliteEphemerisTime$Builder;->setIode(I)Landroid/location/SatelliteEphemerisTime$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/SatelliteEphemerisTime$Builder;->setWeekNumber(I)Landroid/location/SatelliteEphemerisTime$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/SatelliteEphemerisTime$Builder;->setToeSeconds(I)Landroid/location/SatelliteEphemerisTime$Builder;

    move-result-object v0

    .line 86
    .local v0, "satelliteEphemerisTime":Landroid/location/SatelliteEphemerisTime$Builder;
    invoke-virtual {v0}, Landroid/location/SatelliteEphemerisTime$Builder;->build()Landroid/location/SatelliteEphemerisTime;

    move-result-object v1

    return-object v1
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

    .line 78
    invoke-virtual {p0, p1}, Landroid/location/SatelliteEphemerisTime$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/SatelliteEphemerisTime;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/SatelliteEphemerisTime;
    .registers 3
    .param p1, "size"    # I

    .line 91
    new-array v0, p1, [Landroid/location/SatelliteEphemerisTime;

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

    .line 78
    invoke-virtual {p0, p1}, Landroid/location/SatelliteEphemerisTime$1;->newArray(I)[Landroid/location/SatelliteEphemerisTime;

    move-result-object p1

    return-object p1
.end method
