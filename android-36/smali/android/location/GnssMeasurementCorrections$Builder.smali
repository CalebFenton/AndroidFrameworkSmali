.class public final Landroid/location/GnssMeasurementCorrections$Builder;
.super Ljava/lang/Object;
.source "GnssMeasurementCorrections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementCorrections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAltitudeMeters:D

.field private blacklist mEnvironmentBearingDegrees:F

.field private blacklist mEnvironmentBearingIsSet:Z

.field private blacklist mEnvironmentBearingUncertaintyDegrees:F

.field private blacklist mEnvironmentBearingUncertaintyIsSet:Z

.field private blacklist mHorizontalPositionUncertaintyMeters:D

.field private blacklist mLatitudeDegrees:D

.field private blacklist mLongitudeDegrees:D

.field private blacklist mSingleSatCorrectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssSingleSatCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mToaGpsNanosecondsOfWeek:J

.field private blacklist mVerticalPositionUncertaintyMeters:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAltitudeMeters(Landroid/location/GnssMeasurementCorrections$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mAltitudeMeters:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnvironmentBearingDegrees(Landroid/location/GnssMeasurementCorrections$Builder;)F
    .registers 1

    iget p0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingDegrees:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnvironmentBearingIsSet(Landroid/location/GnssMeasurementCorrections$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingIsSet:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnvironmentBearingUncertaintyDegrees(Landroid/location/GnssMeasurementCorrections$Builder;)F
    .registers 1

    iget p0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingUncertaintyDegrees:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnvironmentBearingUncertaintyIsSet(Landroid/location/GnssMeasurementCorrections$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingUncertaintyIsSet:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHorizontalPositionUncertaintyMeters(Landroid/location/GnssMeasurementCorrections$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mHorizontalPositionUncertaintyMeters:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLatitudeDegrees(Landroid/location/GnssMeasurementCorrections$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mLatitudeDegrees:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLongitudeDegrees(Landroid/location/GnssMeasurementCorrections$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mLongitudeDegrees:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSingleSatCorrectionList(Landroid/location/GnssMeasurementCorrections$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mSingleSatCorrectionList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToaGpsNanosecondsOfWeek(Landroid/location/GnssMeasurementCorrections$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mToaGpsNanosecondsOfWeek:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVerticalPositionUncertaintyMeters(Landroid/location/GnssMeasurementCorrections$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mVerticalPositionUncertaintyMeters:D

    return-wide v0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingIsSet:Z

    .line 304
    iput-boolean v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingUncertaintyIsSet:Z

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/GnssMeasurementCorrections;
    .registers 3

    .line 399
    iget-boolean v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingIsSet:Z

    iget-boolean v1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingUncertaintyIsSet:Z

    xor-int/2addr v0, v1

    if-nez v0, :cond_e

    .line 403
    new-instance v0, Landroid/location/GnssMeasurementCorrections;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GnssMeasurementCorrections;-><init>(Landroid/location/GnssMeasurementCorrections$Builder;Landroid/location/GnssMeasurementCorrections-IA;)V

    return-object v0

    .line 400
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Both environment bearing and environment bearing uncertainty must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAltitudeMeters(D)Landroid/location/GnssMeasurementCorrections$Builder;
    .registers 3
    .param p1, "altitudeMeters"    # D

    .line 326
    iput-wide p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mAltitudeMeters:D

    .line 327
    return-object p0
.end method

.method public whitelist setEnvironmentBearingDegrees(F)Landroid/location/GnssMeasurementCorrections$Builder;
    .registers 3
    .param p1, "environmentBearingDegrees"    # F

    .line 379
    iput p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingDegrees:F

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingIsSet:Z

    .line 381
    return-object p0
.end method

.method public whitelist setEnvironmentBearingUncertaintyDegrees(F)Landroid/location/GnssMeasurementCorrections$Builder;
    .registers 3
    .param p1, "environmentBearingUncertaintyDegrees"    # F

    .line 392
    iput p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingUncertaintyDegrees:F

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingUncertaintyIsSet:Z

    .line 394
    return-object p0
.end method

.method public whitelist setHorizontalPositionUncertaintyMeters(D)Landroid/location/GnssMeasurementCorrections$Builder;
    .registers 3
    .param p1, "horizontalPositionUncertaintyMeters"    # D

    .line 337
    iput-wide p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mHorizontalPositionUncertaintyMeters:D

    .line 338
    return-object p0
.end method

.method public whitelist setLatitudeDegrees(D)Landroid/location/GnssMeasurementCorrections$Builder;
    .registers 3
    .param p1, "latitudeDegrees"    # D

    .line 309
    iput-wide p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mLatitudeDegrees:D

    .line 310
    return-object p0
.end method

.method public whitelist setLongitudeDegrees(D)Landroid/location/GnssMeasurementCorrections$Builder;
    .registers 3
    .param p1, "longitudeDegrees"    # D

    .line 316
    iput-wide p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mLongitudeDegrees:D

    .line 317
    return-object p0
.end method

.method public whitelist setSingleSatelliteCorrectionList(Ljava/util/List;)Landroid/location/GnssMeasurementCorrections$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssSingleSatCorrection;",
            ">;)",
            "Landroid/location/GnssMeasurementCorrections$Builder;"
        }
    .end annotation

    .line 364
    .local p1, "singleSatCorrectionList":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssSingleSatCorrection;>;"
    iput-object p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mSingleSatCorrectionList:Ljava/util/List;

    .line 365
    return-object p0
.end method

.method public whitelist setToaGpsNanosecondsOfWeek(J)Landroid/location/GnssMeasurementCorrections$Builder;
    .registers 3
    .param p1, "toaGpsNanosecondsOfWeek"    # J

    .line 354
    iput-wide p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mToaGpsNanosecondsOfWeek:J

    .line 355
    return-object p0
.end method

.method public whitelist setVerticalPositionUncertaintyMeters(D)Landroid/location/GnssMeasurementCorrections$Builder;
    .registers 3
    .param p1, "verticalPositionUncertaintyMeters"    # D

    .line 347
    iput-wide p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mVerticalPositionUncertaintyMeters:D

    .line 348
    return-object p0
.end method
