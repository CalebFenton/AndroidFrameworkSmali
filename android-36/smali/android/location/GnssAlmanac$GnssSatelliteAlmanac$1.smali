.class Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$1;
.super Ljava/lang/Object;
.source "GnssAlmanac.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 481
    new-instance v0, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;

    new-instance v1, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;

    invoke-direct {v1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;-><init>()V

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->setSvid(I)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;

    move-result-object v1

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->setSvHealth(I)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;

    move-result-object v1

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->setEccentricity(D)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;

    move-result-object v1

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->setInclination(D)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;

    move-result-object v1

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->setOmega(D)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;

    move-result-object v1

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->setOmega0(D)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;

    move-result-object v1

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->setOmegaDot(D)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;

    move-result-object v1

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->setRootA(D)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;

    move-result-object v1

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->setM0(D)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;

    move-result-object v1

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->setAf0(D)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;

    move-result-object v1

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;->setAf1(D)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;-><init>(Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$Builder;Landroid/location/GnssAlmanac-IA;)V

    .line 481
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

    .line 478
    invoke-virtual {p0, p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;
    .registers 3
    .param p1, "size"    # I

    .line 498
    new-array v0, p1, [Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;

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

    .line 478
    invoke-virtual {p0, p1}, Landroid/location/GnssAlmanac$GnssSatelliteAlmanac$1;->newArray(I)[Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;

    move-result-object p1

    return-object p1
.end method
