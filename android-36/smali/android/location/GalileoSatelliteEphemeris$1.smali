.class Landroid/location/GalileoSatelliteEphemeris$1;
.super Ljava/lang/Object;
.source "GalileoSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GalileoSatelliteEphemeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GalileoSatelliteEphemeris;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GalileoSatelliteEphemeris;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 114
    new-instance v0, Landroid/location/GalileoSatelliteEphemeris$Builder;

    invoke-direct {v0}, Landroid/location/GalileoSatelliteEphemeris$Builder;-><init>()V

    .line 116
    .local v0, "galileoSatelliteEphemeris":Landroid/location/GalileoSatelliteEphemeris$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GalileoSatelliteEphemeris$Builder;->setSvid(I)Landroid/location/GalileoSatelliteEphemeris$Builder;

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v1, "satelliteClockModels":Ljava/util/List;, "Ljava/util/List<Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;>;"
    sget-object v2, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/location/GalileoSatelliteEphemeris$Builder;->setSatelliteClockModels(Ljava/util/List;)Landroid/location/GalileoSatelliteEphemeris$Builder;

    .line 120
    sget-object v2, Landroid/location/KeplerianOrbitModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 121
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/KeplerianOrbitModel;

    .line 120
    invoke-virtual {v0, v2}, Landroid/location/GalileoSatelliteEphemeris$Builder;->setSatelliteOrbitModel(Landroid/location/KeplerianOrbitModel;)Landroid/location/GalileoSatelliteEphemeris$Builder;

    .line 122
    sget-object v2, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 123
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;

    .line 122
    invoke-virtual {v0, v2}, Landroid/location/GalileoSatelliteEphemeris$Builder;->setSatelliteHealth(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;)Landroid/location/GalileoSatelliteEphemeris$Builder;

    .line 124
    sget-object v2, Landroid/location/SatelliteEphemerisTime;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 125
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/SatelliteEphemerisTime;

    .line 124
    invoke-virtual {v0, v2}, Landroid/location/GalileoSatelliteEphemeris$Builder;->setSatelliteEphemerisTime(Landroid/location/SatelliteEphemerisTime;)Landroid/location/GalileoSatelliteEphemeris$Builder;

    .line 126
    invoke-virtual {v0}, Landroid/location/GalileoSatelliteEphemeris$Builder;->build()Landroid/location/GalileoSatelliteEphemeris;

    move-result-object v2

    return-object v2
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

    .line 110
    invoke-virtual {p0, p1}, Landroid/location/GalileoSatelliteEphemeris$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GalileoSatelliteEphemeris;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GalileoSatelliteEphemeris;
    .registers 3
    .param p1, "size"    # I

    .line 131
    new-array v0, p1, [Landroid/location/GalileoSatelliteEphemeris;

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

    .line 110
    invoke-virtual {p0, p1}, Landroid/location/GalileoSatelliteEphemeris$1;->newArray(I)[Landroid/location/GalileoSatelliteEphemeris;

    move-result-object p1

    return-object p1
.end method
