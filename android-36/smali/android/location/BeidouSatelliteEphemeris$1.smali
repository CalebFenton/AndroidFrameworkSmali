.class Landroid/location/BeidouSatelliteEphemeris$1;
.super Ljava/lang/Object;
.source "BeidouSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/BeidouSatelliteEphemeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/BeidouSatelliteEphemeris;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/BeidouSatelliteEphemeris;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 106
    new-instance v0, Landroid/location/BeidouSatelliteEphemeris$Builder;

    invoke-direct {v0}, Landroid/location/BeidouSatelliteEphemeris$Builder;-><init>()V

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/BeidouSatelliteEphemeris$Builder;->setSvid(I)Landroid/location/BeidouSatelliteEphemeris$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;

    .line 109
    invoke-virtual {v0, v1}, Landroid/location/BeidouSatelliteEphemeris$Builder;->setSatelliteClockModel(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteClockModel;)Landroid/location/BeidouSatelliteEphemeris$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/KeplerianOrbitModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 112
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/KeplerianOrbitModel;

    .line 111
    invoke-virtual {v0, v1}, Landroid/location/BeidouSatelliteEphemeris$Builder;->setSatelliteOrbitModel(Landroid/location/KeplerianOrbitModel;)Landroid/location/BeidouSatelliteEphemeris$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 114
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;

    .line 113
    invoke-virtual {v0, v1}, Landroid/location/BeidouSatelliteEphemeris$Builder;->setSatelliteHealth(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;)Landroid/location/BeidouSatelliteEphemeris$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 116
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;

    .line 115
    invoke-virtual {v0, v1}, Landroid/location/BeidouSatelliteEphemeris$Builder;->setSatelliteEphemerisTime(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteEphemerisTime;)Landroid/location/BeidouSatelliteEphemeris$Builder;

    move-result-object v0

    .line 118
    .local v0, "beidouSatelliteEphemeris":Landroid/location/BeidouSatelliteEphemeris$Builder;
    invoke-virtual {v0}, Landroid/location/BeidouSatelliteEphemeris$Builder;->build()Landroid/location/BeidouSatelliteEphemeris;

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

    .line 102
    invoke-virtual {p0, p1}, Landroid/location/BeidouSatelliteEphemeris$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/BeidouSatelliteEphemeris;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/BeidouSatelliteEphemeris;
    .registers 3
    .param p1, "size"    # I

    .line 123
    new-array v0, p1, [Landroid/location/BeidouSatelliteEphemeris;

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

    .line 102
    invoke-virtual {p0, p1}, Landroid/location/BeidouSatelliteEphemeris$1;->newArray(I)[Landroid/location/BeidouSatelliteEphemeris;

    move-result-object p1

    return-object p1
.end method
