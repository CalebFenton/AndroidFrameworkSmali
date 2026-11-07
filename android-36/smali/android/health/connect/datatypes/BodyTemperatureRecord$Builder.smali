.class public final Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;
.super Ljava/lang/Object;
.source "BodyTemperatureRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/BodyTemperatureRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mMeasurementLocation:I

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mTemperature:Landroid/health/connect/datatypes/units/Temperature;

.field private final blacklist mTime:Ljava/time/Instant;

.field private blacklist mZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;ILandroid/health/connect/datatypes/units/Temperature;)V
    .registers 6
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "measurementLocation"    # I
    .param p4, "temperature"    # Landroid/health/connect/datatypes/units/Temperature;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iput-object p1, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 136
    iput-object p2, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;->mTime:Ljava/time/Instant;

    .line 137
    iput p3, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;->mMeasurementLocation:I

    .line 138
    iput-object p4, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;->mTemperature:Landroid/health/connect/datatypes/units/Temperature;

    .line 139
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 140
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/BodyTemperatureRecord;
    .registers 9

    .line 172
    new-instance v0, Landroid/health/connect/datatypes/BodyTemperatureRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget v4, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;->mMeasurementLocation:I

    iget-object v5, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;->mTemperature:Landroid/health/connect/datatypes/units/Temperature;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/BodyTemperatureRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;ILandroid/health/connect/datatypes/units/Temperature;ZLandroid/health/connect/datatypes/BodyTemperatureRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/BodyTemperatureRecord;
    .registers 9

    .line 163
    new-instance v0, Landroid/health/connect/datatypes/BodyTemperatureRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget v4, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;->mMeasurementLocation:I

    iget-object v5, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;->mTemperature:Landroid/health/connect/datatypes/units/Temperature;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/BodyTemperatureRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;ILandroid/health/connect/datatypes/units/Temperature;ZLandroid/health/connect/datatypes/BodyTemperatureRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearZoneOffset()Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;
    .registers 2

    .line 153
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 154
    return-object p0
.end method

.method public whitelist setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;
    .registers 2
    .param p1, "zoneOffset"    # Ljava/time/ZoneOffset;

    .line 145
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iput-object p1, p0, Landroid/health/connect/datatypes/BodyTemperatureRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 147
    return-object p0
.end method
