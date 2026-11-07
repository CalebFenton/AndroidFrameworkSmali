.class Landroid/location/GpsSatelliteEphemeris$1;
.super Ljava/lang/Object;
.source "GpsSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsSatelliteEphemeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GpsSatelliteEphemeris;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsSatelliteEphemeris;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 119
    new-instance v0, Landroid/location/GpsSatelliteEphemeris$Builder;

    invoke-direct {v0}, Landroid/location/GpsSatelliteEphemeris$Builder;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GpsSatelliteEphemeris$Builder;->setSvid(I)Landroid/location/GpsSatelliteEphemeris$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GpsSatelliteEphemeris$GpsL2Params;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 122
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    invoke-virtual {v0, v1}, Landroid/location/GpsSatelliteEphemeris$Builder;->setGpsL2Params(Landroid/location/GpsSatelliteEphemeris$GpsL2Params;)Landroid/location/GpsSatelliteEphemeris$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 124
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    .line 123
    invoke-virtual {v0, v1}, Landroid/location/GpsSatelliteEphemeris$Builder;->setSatelliteClockModel(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;)Landroid/location/GpsSatelliteEphemeris$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/KeplerianOrbitModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 126
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/KeplerianOrbitModel;

    .line 125
    invoke-virtual {v0, v1}, Landroid/location/GpsSatelliteEphemeris$Builder;->setSatelliteOrbitModel(Landroid/location/KeplerianOrbitModel;)Landroid/location/GpsSatelliteEphemeris$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 128
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    .line 127
    invoke-virtual {v0, v1}, Landroid/location/GpsSatelliteEphemeris$Builder;->setSatelliteHealth(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;)Landroid/location/GpsSatelliteEphemeris$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/SatelliteEphemerisTime;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 130
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/SatelliteEphemerisTime;

    .line 129
    invoke-virtual {v0, v1}, Landroid/location/GpsSatelliteEphemeris$Builder;->setSatelliteEphemerisTime(Landroid/location/SatelliteEphemerisTime;)Landroid/location/GpsSatelliteEphemeris$Builder;

    move-result-object v0

    .line 131
    .local v0, "gpsSatelliteEphemeris":Landroid/location/GpsSatelliteEphemeris$Builder;
    invoke-virtual {v0}, Landroid/location/GpsSatelliteEphemeris$Builder;->build()Landroid/location/GpsSatelliteEphemeris;

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

    .line 115
    invoke-virtual {p0, p1}, Landroid/location/GpsSatelliteEphemeris$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsSatelliteEphemeris;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GpsSatelliteEphemeris;
    .registers 3
    .param p1, "size"    # I

    .line 136
    new-array v0, p1, [Landroid/location/GpsSatelliteEphemeris;

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

    .line 115
    invoke-virtual {p0, p1}, Landroid/location/GpsSatelliteEphemeris$1;->newArray(I)[Landroid/location/GpsSatelliteEphemeris;

    move-result-object p1

    return-object p1
.end method
