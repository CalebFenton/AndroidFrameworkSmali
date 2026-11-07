.class public final Landroid/location/GnssMeasurementCorrections;
.super Ljava/lang/Object;
.source "GnssMeasurementCorrections.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssMeasurementCorrections$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssMeasurementCorrections;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAltitudeMeters:D

.field private final blacklist mEnvironmentBearingDegrees:F

.field private final blacklist mEnvironmentBearingUncertaintyDegrees:F

.field private final blacklist mHasEnvironmentBearing:Z

.field private final blacklist mHorizontalPositionUncertaintyMeters:D

.field private final blacklist mLatitudeDegrees:D

.field private final blacklist mLongitudeDegrees:D

.field private final blacklist mSingleSatCorrectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssSingleSatCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mToaGpsNanosecondsOfWeek:J

.field private final blacklist mVerticalPositionUncertaintyMeters:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 213
    new-instance v0, Landroid/location/GnssMeasurementCorrections$1;

    invoke-direct {v0}, Landroid/location/GnssMeasurementCorrections$1;-><init>()V

    sput-object v0, Landroid/location/GnssMeasurementCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GnssMeasurementCorrections$Builder;)V
    .registers 6
    .param p1, "builder"    # Landroid/location/GnssMeasurementCorrections$Builder;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->-$$Nest$fgetmLatitudeDegrees(Landroid/location/GnssMeasurementCorrections$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mLatitudeDegrees:D

    .line 103
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->-$$Nest$fgetmLongitudeDegrees(Landroid/location/GnssMeasurementCorrections$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mLongitudeDegrees:D

    .line 104
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->-$$Nest$fgetmAltitudeMeters(Landroid/location/GnssMeasurementCorrections$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mAltitudeMeters:D

    .line 105
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->-$$Nest$fgetmHorizontalPositionUncertaintyMeters(Landroid/location/GnssMeasurementCorrections$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mHorizontalPositionUncertaintyMeters:D

    .line 106
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->-$$Nest$fgetmVerticalPositionUncertaintyMeters(Landroid/location/GnssMeasurementCorrections$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mVerticalPositionUncertaintyMeters:D

    .line 107
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->-$$Nest$fgetmToaGpsNanosecondsOfWeek(Landroid/location/GnssMeasurementCorrections$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mToaGpsNanosecondsOfWeek:J

    .line 108
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->-$$Nest$fgetmSingleSatCorrectionList(Landroid/location/GnssMeasurementCorrections$Builder;)Ljava/util/List;

    move-result-object v0

    .line 109
    .local v0, "singleSatCorrList":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssSingleSatCorrection;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_37

    move v3, v1

    goto :goto_38

    :cond_37
    move v3, v2

    :goto_38
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/location/GnssMeasurementCorrections;->mSingleSatCorrectionList:Ljava/util/List;

    .line 111
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->-$$Nest$fgetmEnvironmentBearingIsSet(Landroid/location/GnssMeasurementCorrections$Builder;)Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->-$$Nest$fgetmEnvironmentBearingUncertaintyIsSet(Landroid/location/GnssMeasurementCorrections$Builder;)Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_54

    :cond_53
    move v1, v2

    :goto_54
    iput-boolean v1, p0, Landroid/location/GnssMeasurementCorrections;->mHasEnvironmentBearing:Z

    .line 113
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->-$$Nest$fgetmEnvironmentBearingDegrees(Landroid/location/GnssMeasurementCorrections$Builder;)F

    move-result v1

    iput v1, p0, Landroid/location/GnssMeasurementCorrections;->mEnvironmentBearingDegrees:F

    .line 114
    invoke-static {p1}, Landroid/location/GnssMeasurementCorrections$Builder;->-$$Nest$fgetmEnvironmentBearingUncertaintyDegrees(Landroid/location/GnssMeasurementCorrections$Builder;)F

    move-result v1

    iput v1, p0, Landroid/location/GnssMeasurementCorrections;->mEnvironmentBearingUncertaintyDegrees:F

    .line 115
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GnssMeasurementCorrections$Builder;Landroid/location/GnssMeasurementCorrections-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GnssMeasurementCorrections;-><init>(Landroid/location/GnssMeasurementCorrections$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAltitudeMeters()D
    .registers 3

    .line 135
    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mAltitudeMeters:D

    return-wide v0
.end method

.method public whitelist getEnvironmentBearingDegrees()F
    .registers 2

    .line 189
    iget v0, p0, Landroid/location/GnssMeasurementCorrections;->mEnvironmentBearingDegrees:F

    return v0
.end method

.method public whitelist getEnvironmentBearingUncertaintyDegrees()F
    .registers 2

    .line 205
    iget v0, p0, Landroid/location/GnssMeasurementCorrections;->mEnvironmentBearingUncertaintyDegrees:F

    return v0
.end method

.method public whitelist getHorizontalPositionUncertaintyMeters()D
    .registers 3

    .line 144
    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mHorizontalPositionUncertaintyMeters:D

    return-wide v0
.end method

.method public whitelist getLatitudeDegrees()D
    .registers 3

    .line 120
    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mLatitudeDegrees:D

    return-wide v0
.end method

.method public whitelist getLongitudeDegrees()D
    .registers 3

    .line 126
    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mLongitudeDegrees:D

    return-wide v0
.end method

.method public whitelist getSingleSatelliteCorrectionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GnssSingleSatCorrection;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Landroid/location/GnssMeasurementCorrections;->mSingleSatCorrectionList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getToaGpsNanosecondsOfWeek()J
    .registers 3

    .line 159
    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mToaGpsNanosecondsOfWeek:J

    return-wide v0
.end method

.method public whitelist getVerticalPositionUncertaintyMeters()D
    .registers 3

    .line 153
    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mVerticalPositionUncertaintyMeters:D

    return-wide v0
.end method

.method public whitelist hasEnvironmentBearing()Z
    .registers 2

    .line 175
    iget-boolean v0, p0, Landroid/location/GnssMeasurementCorrections;->mHasEnvironmentBearing:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 248
    const-string v0, "   %-29s = %s\n"

    .line 249
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GnssMeasurementCorrections:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Landroid/location/GnssMeasurementCorrections;->mLatitudeDegrees:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "LatitudeDegrees = "

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "   %-29s = %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-wide v4, p0, Landroid/location/GnssMeasurementCorrections;->mLongitudeDegrees:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v4, "LongitudeDegrees = "

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-wide v4, p0, Landroid/location/GnssMeasurementCorrections;->mAltitudeMeters:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v4, "AltitudeMeters = "

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-wide v4, p0, Landroid/location/GnssMeasurementCorrections;->mHorizontalPositionUncertaintyMeters:D

    .line 254
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v4, "HorizontalPositionUncertaintyMeters = "

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 253
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-wide v4, p0, Landroid/location/GnssMeasurementCorrections;->mVerticalPositionUncertaintyMeters:D

    .line 256
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v4, "VerticalPositionUncertaintyMeters = "

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 255
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-wide v4, p0, Landroid/location/GnssMeasurementCorrections;->mToaGpsNanosecondsOfWeek:J

    .line 258
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "ToaGpsNanosecondsOfWeek = "

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v2, "mSingleSatCorrectionList = "

    iget-object v4, p0, Landroid/location/GnssMeasurementCorrections;->mSingleSatCorrectionList:Ljava/util/List;

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 260
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-boolean v2, p0, Landroid/location/GnssMeasurementCorrections;->mHasEnvironmentBearing:Z

    .line 262
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "HasEnvironmentBearing = "

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget v2, p0, Landroid/location/GnssMeasurementCorrections;->mEnvironmentBearingDegrees:F

    .line 265
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v4, "EnvironmentBearingDegrees = "

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 264
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget v2, p0, Landroid/location/GnssMeasurementCorrections;->mEnvironmentBearingUncertaintyDegrees:F

    .line 268
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v4, "EnvironmentBearingUncertaintyDegrees = "

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 267
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 274
    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mLatitudeDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 275
    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mLongitudeDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 276
    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mAltitudeMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 277
    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mHorizontalPositionUncertaintyMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 278
    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mVerticalPositionUncertaintyMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 279
    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections;->mToaGpsNanosecondsOfWeek:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 280
    iget-object v0, p0, Landroid/location/GnssMeasurementCorrections;->mSingleSatCorrectionList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 281
    iget-boolean v0, p0, Landroid/location/GnssMeasurementCorrections;->mHasEnvironmentBearing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 282
    iget-boolean v0, p0, Landroid/location/GnssMeasurementCorrections;->mHasEnvironmentBearing:Z

    if-eqz v0, :cond_36

    .line 283
    iget v0, p0, Landroid/location/GnssMeasurementCorrections;->mEnvironmentBearingDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 284
    iget v0, p0, Landroid/location/GnssMeasurementCorrections;->mEnvironmentBearingUncertaintyDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 286
    :cond_36
    return-void
.end method
