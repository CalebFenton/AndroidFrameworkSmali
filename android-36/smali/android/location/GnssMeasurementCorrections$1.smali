.class Landroid/location/GnssMeasurementCorrections$1;
.super Ljava/lang/Object;
.source "GnssMeasurementCorrections.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementCorrections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssMeasurementCorrections;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurementCorrections;
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 218
    new-instance v0, Landroid/location/GnssMeasurementCorrections$Builder;

    invoke-direct {v0}, Landroid/location/GnssMeasurementCorrections$Builder;-><init>()V

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GnssMeasurementCorrections$Builder;->setLatitudeDegrees(D)Landroid/location/GnssMeasurementCorrections$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GnssMeasurementCorrections$Builder;->setLongitudeDegrees(D)Landroid/location/GnssMeasurementCorrections$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GnssMeasurementCorrections$Builder;->setAltitudeMeters(D)Landroid/location/GnssMeasurementCorrections$Builder;

    move-result-object v0

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GnssMeasurementCorrections$Builder;->setHorizontalPositionUncertaintyMeters(D)Landroid/location/GnssMeasurementCorrections$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GnssMeasurementCorrections$Builder;->setVerticalPositionUncertaintyMeters(D)Landroid/location/GnssMeasurementCorrections$Builder;

    move-result-object v0

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/GnssMeasurementCorrections$Builder;->setToaGpsNanosecondsOfWeek(J)Landroid/location/GnssMeasurementCorrections$Builder;

    move-result-object v0

    .line 226
    .local v0, "gnssMeasurementCorrectons":Landroid/location/GnssMeasurementCorrections$Builder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v1, "singleSatCorrectionList":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssSingleSatCorrection;>;"
    sget-object v2, Landroid/location/GnssSingleSatCorrection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 228
    invoke-virtual {v0, v1}, Landroid/location/GnssMeasurementCorrections$Builder;->setSingleSatelliteCorrectionList(Ljava/util/List;)Landroid/location/GnssMeasurementCorrections$Builder;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 231
    .local v2, "hasEnvironmentBearing":Z
    if-eqz v2, :cond_57

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/location/GnssMeasurementCorrections$Builder;->setEnvironmentBearingDegrees(F)Landroid/location/GnssMeasurementCorrections$Builder;

    .line 233
    nop

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 233
    invoke-virtual {v0, v3}, Landroid/location/GnssMeasurementCorrections$Builder;->setEnvironmentBearingUncertaintyDegrees(F)Landroid/location/GnssMeasurementCorrections$Builder;

    .line 236
    :cond_57
    invoke-virtual {v0}, Landroid/location/GnssMeasurementCorrections$Builder;->build()Landroid/location/GnssMeasurementCorrections;

    move-result-object v3

    return-object v3
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

    .line 214
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurementCorrections$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurementCorrections;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssMeasurementCorrections;
    .registers 3
    .param p1, "i"    # I

    .line 241
    new-array v0, p1, [Landroid/location/GnssMeasurementCorrections;

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

    .line 214
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurementCorrections$1;->newArray(I)[Landroid/location/GnssMeasurementCorrections;

    move-result-object p1

    return-object p1
.end method
