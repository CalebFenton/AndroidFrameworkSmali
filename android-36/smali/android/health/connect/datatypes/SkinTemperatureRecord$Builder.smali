.class public final Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;
.super Ljava/lang/Object;
.source "SkinTemperatureRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/SkinTemperatureRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBaseline:Landroid/health/connect/datatypes/units/Temperature;

.field private final blacklist mDeltas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mEndZoneOffset:Ljava/time/ZoneOffset;

.field private blacklist mMeasurementLocation:I

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mStartTime:Ljava/time/Instant;

.field private blacklist mStartZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;)V
    .registers 5
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "endTime"    # Ljava/time/Instant;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iput-object p1, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 355
    iput-object p2, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 356
    iput-object p3, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mDeltas:Ljava/util/List;

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mMeasurementLocation:I

    .line 359
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 360
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 361
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/SkinTemperatureRecord;
    .registers 12

    .line 440
    new-instance v0, Landroid/health/connect/datatypes/SkinTemperatureRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mBaseline:Landroid/health/connect/datatypes/units/Temperature;

    iget-object v7, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mDeltas:Ljava/util/List;

    iget v8, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mMeasurementLocation:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/health/connect/datatypes/SkinTemperatureRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Temperature;Ljava/util/List;IZLandroid/health/connect/datatypes/SkinTemperatureRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/SkinTemperatureRecord;
    .registers 12

    .line 423
    new-instance v0, Landroid/health/connect/datatypes/SkinTemperatureRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mBaseline:Landroid/health/connect/datatypes/units/Temperature;

    iget-object v7, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mDeltas:Ljava/util/List;

    iget v8, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mMeasurementLocation:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/health/connect/datatypes/SkinTemperatureRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Temperature;Ljava/util/List;IZLandroid/health/connect/datatypes/SkinTemperatureRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearEndZoneOffset()Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;
    .registers 2

    .line 389
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 390
    return-object p0
.end method

.method public whitelist clearStartZoneOffset()Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;
    .registers 2

    .line 382
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 383
    return-object p0
.end method

.method public whitelist setBaseline(Landroid/health/connect/datatypes/units/Temperature;)Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;
    .registers 2
    .param p1, "baseline"    # Landroid/health/connect/datatypes/units/Temperature;

    .line 396
    iput-object p1, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mBaseline:Landroid/health/connect/datatypes/units/Temperature;

    .line 397
    return-object p0
.end method

.method public whitelist setDeltas(Ljava/util/List;)Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;",
            ">;)",
            "Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;"
        }
    .end annotation

    .line 403
    .local p1, "deltas":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mDeltas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 405
    iget-object v0, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mDeltas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 406
    return-object p0
.end method

.method public whitelist setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;
    .registers 2
    .param p1, "endZoneOffset"    # Ljava/time/ZoneOffset;

    .line 374
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iput-object p1, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 376
    return-object p0
.end method

.method public whitelist setMeasurementLocation(I)Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;
    .registers 2
    .param p1, "measurementLocation"    # I

    .line 413
    iput p1, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mMeasurementLocation:I

    .line 414
    return-object p0
.end method

.method public whitelist setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;
    .registers 2
    .param p1, "startZoneOffset"    # Ljava/time/ZoneOffset;

    .line 366
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iput-object p1, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 368
    return-object p0
.end method
