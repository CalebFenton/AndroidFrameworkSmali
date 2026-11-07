.class Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$1;
.super Ljava/lang/Object;
.source "GlonassAlmanac.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 301
    new-instance v0, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;

    invoke-direct {v0}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;-><init>()V

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->setSlotNumber(I)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;

    move-result-object v0

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->setHealthState(I)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;

    move-result-object v0

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->setFrequencyChannelNumber(I)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->setCalendarDayNumber(I)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->setGlonassM(Z)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->setTau(D)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->setTLambda(D)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->setLambda(D)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;

    move-result-object v0

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->setDeltaI(D)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->setDeltaT(D)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;

    move-result-object v0

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->setDeltaTDot(D)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->setEccentricity(D)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;

    move-result-object v0

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->setOmega(D)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$Builder;->build()Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;

    move-result-object v0

    .line 301
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

    .line 298
    invoke-virtual {p0, p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;
    .registers 3
    .param p1, "size"    # I

    .line 320
    new-array v0, p1, [Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;

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

    .line 298
    invoke-virtual {p0, p1}, Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac$1;->newArray(I)[Landroid/location/GlonassAlmanac$GlonassSatelliteAlmanac;

    move-result-object p1

    return-object p1
.end method
