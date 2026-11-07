.class public final Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;
.super Ljava/lang/Object;
.source "ActivityIntensityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ActivityIntensityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mActivityIntensityType:I

.field private final blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mEndZoneOffset:Ljava/time/ZoneOffset;

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mStartTime:Ljava/time/Instant;

.field private blacklist mStartZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;I)V
    .registers 6
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "endTime"    # Ljava/time/Instant;
    .param p4, "activityIntensityType"    # I

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iput-object p1, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 207
    iput-object p2, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 208
    iput-object p3, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 209
    iput p4, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mActivityIntensityType:I

    .line 210
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 211
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 212
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/ActivityIntensityRecord;
    .registers 10

    .line 258
    new-instance v0, Landroid/health/connect/datatypes/ActivityIntensityRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget v6, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mActivityIntensityType:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/health/connect/datatypes/ActivityIntensityRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;IZLandroid/health/connect/datatypes/ActivityIntensityRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/ActivityIntensityRecord;
    .registers 10

    .line 245
    new-instance v0, Landroid/health/connect/datatypes/ActivityIntensityRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget v6, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mActivityIntensityType:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/health/connect/datatypes/ActivityIntensityRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;IZLandroid/health/connect/datatypes/ActivityIntensityRecord-IA;)V

    return-object v0
.end method

.method public whitelist setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;
    .registers 2
    .param p1, "endZoneOffset"    # Ljava/time/ZoneOffset;

    .line 234
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iput-object p1, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 236
    return-object p0
.end method

.method public whitelist setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;
    .registers 2
    .param p1, "startZoneOffset"    # Ljava/time/ZoneOffset;

    .line 221
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iput-object p1, p0, Landroid/health/connect/datatypes/ActivityIntensityRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 224
    return-object p0
.end method
