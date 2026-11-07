.class Landroid/location/QzssSatelliteEphemeris$1;
.super Ljava/lang/Object;
.source "QzssSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/QzssSatelliteEphemeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/QzssSatelliteEphemeris;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/QzssSatelliteEphemeris;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 131
    new-instance v0, Landroid/location/QzssSatelliteEphemeris$Builder;

    invoke-direct {v0}, Landroid/location/QzssSatelliteEphemeris$Builder;-><init>()V

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/QzssSatelliteEphemeris$Builder;->setSvid(I)Landroid/location/QzssSatelliteEphemeris$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GpsSatelliteEphemeris$GpsL2Params;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 134
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatelliteEphemeris$GpsL2Params;

    invoke-virtual {v0, v1}, Landroid/location/QzssSatelliteEphemeris$Builder;->setGpsL2Params(Landroid/location/GpsSatelliteEphemeris$GpsL2Params;)Landroid/location/QzssSatelliteEphemeris$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 136
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;

    .line 135
    invoke-virtual {v0, v1}, Landroid/location/QzssSatelliteEphemeris$Builder;->setSatelliteClockModel(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteClockModel;)Landroid/location/QzssSatelliteEphemeris$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/KeplerianOrbitModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 138
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/KeplerianOrbitModel;

    .line 137
    invoke-virtual {v0, v1}, Landroid/location/QzssSatelliteEphemeris$Builder;->setSatelliteOrbitModel(Landroid/location/KeplerianOrbitModel;)Landroid/location/QzssSatelliteEphemeris$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 140
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;

    .line 139
    invoke-virtual {v0, v1}, Landroid/location/QzssSatelliteEphemeris$Builder;->setSatelliteHealth(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;)Landroid/location/QzssSatelliteEphemeris$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/SatelliteEphemerisTime;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 142
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/SatelliteEphemerisTime;

    .line 141
    invoke-virtual {v0, v1}, Landroid/location/QzssSatelliteEphemeris$Builder;->setSatelliteEphemerisTime(Landroid/location/SatelliteEphemerisTime;)Landroid/location/QzssSatelliteEphemeris$Builder;

    move-result-object v0

    .line 143
    .local v0, "qzssSatelliteEphemeris":Landroid/location/QzssSatelliteEphemeris$Builder;
    invoke-virtual {v0}, Landroid/location/QzssSatelliteEphemeris$Builder;->build()Landroid/location/QzssSatelliteEphemeris;

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

    .line 127
    invoke-virtual {p0, p1}, Landroid/location/QzssSatelliteEphemeris$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/QzssSatelliteEphemeris;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/QzssSatelliteEphemeris;
    .registers 3
    .param p1, "size"    # I

    .line 148
    new-array v0, p1, [Landroid/location/QzssSatelliteEphemeris;

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

    .line 127
    invoke-virtual {p0, p1}, Landroid/location/QzssSatelliteEphemeris$1;->newArray(I)[Landroid/location/QzssSatelliteEphemeris;

    move-result-object p1

    return-object p1
.end method
