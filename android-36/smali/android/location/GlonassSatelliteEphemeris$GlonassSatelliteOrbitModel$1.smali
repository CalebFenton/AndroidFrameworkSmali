.class Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$1;
.super Ljava/lang/Object;
.source "GlonassSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 646
    new-instance v0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;

    invoke-direct {v0}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;-><init>()V

    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->setX(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;

    move-result-object v0

    .line 648
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->setXDot(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;

    move-result-object v0

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->setXAccel(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;

    move-result-object v0

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->setY(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;

    move-result-object v0

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->setYDot(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;

    move-result-object v0

    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->setYAccel(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;

    move-result-object v0

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->setZ(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;

    move-result-object v0

    .line 654
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->setZDot(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;

    move-result-object v0

    .line 655
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->setZAccel(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->build()Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;

    move-result-object v0

    .line 646
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

    .line 643
    invoke-virtual {p0, p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;
    .registers 3
    .param p1, "size"    # I

    .line 661
    new-array v0, p1, [Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;

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

    .line 643
    invoke-virtual {p0, p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$1;->newArray(I)[Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;

    move-result-object p1

    return-object p1
.end method
