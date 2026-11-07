.class Landroid/location/GlonassSatelliteEphemeris$1;
.super Ljava/lang/Object;
.source "GlonassSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GlonassSatelliteEphemeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GlonassSatelliteEphemeris;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GlonassSatelliteEphemeris;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 191
    new-instance v0, Landroid/location/GlonassSatelliteEphemeris$Builder;

    invoke-direct {v0}, Landroid/location/GlonassSatelliteEphemeris$Builder;-><init>()V

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->setSlotNumber(I)Landroid/location/GlonassSatelliteEphemeris$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->setHealthState(I)Landroid/location/GlonassSatelliteEphemeris$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassSatelliteEphemeris$Builder;->setFrameTimeSeconds(D)Landroid/location/GlonassSatelliteEphemeris$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->setAgeInDays(I)Landroid/location/GlonassSatelliteEphemeris$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->setUpdateIntervalMinutes(I)Landroid/location/GlonassSatelliteEphemeris$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->setUpdateIntervalOdd(Z)Landroid/location/GlonassSatelliteEphemeris$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->setGlonassM(Z)Landroid/location/GlonassSatelliteEphemeris$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 200
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;

    .line 199
    invoke-virtual {v0, v1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->setSatelliteClockModel(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;)Landroid/location/GlonassSatelliteEphemeris$Builder;

    move-result-object v0

    sget-object v1, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 202
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;

    .line 201
    invoke-virtual {v0, v1}, Landroid/location/GlonassSatelliteEphemeris$Builder;->setSatelliteOrbitModel(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;)Landroid/location/GlonassSatelliteEphemeris$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/location/GlonassSatelliteEphemeris$Builder;->build()Landroid/location/GlonassSatelliteEphemeris;

    move-result-object v0

    .line 191
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

    .line 188
    invoke-virtual {p0, p1}, Landroid/location/GlonassSatelliteEphemeris$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GlonassSatelliteEphemeris;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GlonassSatelliteEphemeris;
    .registers 3
    .param p1, "size"    # I

    .line 208
    new-array v0, p1, [Landroid/location/GlonassSatelliteEphemeris;

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

    .line 188
    invoke-virtual {p0, p1}, Landroid/location/GlonassSatelliteEphemeris$1;->newArray(I)[Landroid/location/GlonassSatelliteEphemeris;

    move-result-object p1

    return-object p1
.end method
