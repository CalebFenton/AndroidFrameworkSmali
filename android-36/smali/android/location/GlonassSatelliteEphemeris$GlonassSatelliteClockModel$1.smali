.class Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$1;
.super Ljava/lang/Object;
.source "GlonassSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 422
    new-instance v0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;

    invoke-direct {v0}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;-><init>()V

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->setTimeOfClockSeconds(J)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;

    move-result-object v0

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->setClockBias(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;

    move-result-object v0

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->setFrequencyBias(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;

    move-result-object v0

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->setFrequencyChannelNumber(I)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;

    move-result-object v0

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->setGroupDelayDiffSeconds(D)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;

    move-result-object v0

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->setGroupDelayDiffSecondsAvailable(Z)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$Builder;->build()Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;

    move-result-object v0

    .line 422
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

    .line 419
    invoke-virtual {p0, p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;
    .registers 3
    .param p1, "size"    # I

    .line 434
    new-array v0, p1, [Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;

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

    .line 419
    invoke-virtual {p0, p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel$1;->newArray(I)[Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteClockModel;

    move-result-object p1

    return-object p1
.end method
