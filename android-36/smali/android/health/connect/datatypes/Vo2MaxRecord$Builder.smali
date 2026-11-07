.class public final Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;
.super Ljava/lang/Object;
.source "Vo2MaxRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/Vo2MaxRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mMeasurementMethod:I

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mTime:Ljava/time/Instant;

.field private final blacklist mVo2MillilitersPerMinuteKilogram:D

.field private blacklist mZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;ID)V
    .registers 7
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "measurementMethod"    # I
    .param p4, "vo2MillilitersPerMinuteKilogram"    # D

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iput-object p1, p0, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 175
    iput-object p2, p0, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->mTime:Ljava/time/Instant;

    .line 176
    iput p3, p0, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->mMeasurementMethod:I

    .line 177
    iput-wide p4, p0, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->mVo2MillilitersPerMinuteKilogram:D

    .line 178
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 179
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/Vo2MaxRecord;
    .registers 10

    .line 216
    new-instance v0, Landroid/health/connect/datatypes/Vo2MaxRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget v4, p0, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->mMeasurementMethod:I

    iget-wide v5, p0, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->mVo2MillilitersPerMinuteKilogram:D

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/health/connect/datatypes/Vo2MaxRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;IDZLandroid/health/connect/datatypes/Vo2MaxRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/Vo2MaxRecord;
    .registers 10

    .line 202
    new-instance v0, Landroid/health/connect/datatypes/Vo2MaxRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget v4, p0, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->mMeasurementMethod:I

    iget-wide v5, p0, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->mVo2MillilitersPerMinuteKilogram:D

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/health/connect/datatypes/Vo2MaxRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;IDZLandroid/health/connect/datatypes/Vo2MaxRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearZoneOffset()Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;
    .registers 2

    .line 192
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 193
    return-object p0
.end method

.method public whitelist setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;
    .registers 2
    .param p1, "zoneOffset"    # Ljava/time/ZoneOffset;

    .line 184
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iput-object p1, p0, Landroid/health/connect/datatypes/Vo2MaxRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 186
    return-object p0
.end method
