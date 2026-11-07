.class Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$1;
.super Ljava/lang/Object;
.source "GalileoSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 609
    new-instance v0, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;

    invoke-direct {v0}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;-><init>()V

    .line 611
    .local v0, "galileoSatelliteClockModel":Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->setTimeOfClockSeconds(J)Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->setAf0(D)Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->setAf1(D)Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;

    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->setAf2(D)Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->setBgdSeconds(D)Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;

    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->setSisaMeters(D)Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->setSatelliteClockType(I)Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;

    .line 618
    invoke-virtual {v0}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$Builder;->build()Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;

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

    .line 605
    invoke-virtual {p0, p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;
    .registers 3
    .param p1, "size"    # I

    .line 623
    new-array v0, p1, [Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;

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

    .line 605
    invoke-virtual {p0, p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel$1;->newArray(I)[Landroid/location/GalileoSatelliteEphemeris$GalileoSatelliteClockModel;

    move-result-object p1

    return-object p1
.end method
