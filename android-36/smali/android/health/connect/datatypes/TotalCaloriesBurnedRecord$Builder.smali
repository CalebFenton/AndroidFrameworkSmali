.class public final Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;
.super Ljava/lang/Object;
.source "TotalCaloriesBurnedRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mEndZoneOffset:Ljava/time/ZoneOffset;

.field private final blacklist mEnergy:Landroid/health/connect/datatypes/units/Energy;

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mStartTime:Ljava/time/Instant;

.field private blacklist mStartZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;Landroid/health/connect/datatypes/units/Energy;)V
    .registers 6
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "endTime"    # Ljava/time/Instant;
    .param p4, "energy"    # Landroid/health/connect/datatypes/units/Energy;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iput-object p1, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 146
    iput-object p2, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 147
    iput-object p3, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 148
    iput-object p4, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mEnergy:Landroid/health/connect/datatypes/units/Energy;

    .line 149
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 150
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 151
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord;
    .registers 10

    .line 206
    new-instance v0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mEnergy:Landroid/health/connect/datatypes/units/Energy;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Energy;ZLandroid/health/connect/datatypes/TotalCaloriesBurnedRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord;
    .registers 10

    .line 191
    new-instance v0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mEnergy:Landroid/health/connect/datatypes/units/Energy;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Energy;ZLandroid/health/connect/datatypes/TotalCaloriesBurnedRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearEndZoneOffset()Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;
    .registers 2

    .line 181
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 182
    return-object p0
.end method

.method public whitelist clearStartZoneOffset()Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;
    .registers 2

    .line 174
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 175
    return-object p0
.end method

.method public whitelist setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;
    .registers 2
    .param p1, "endZoneOffset"    # Ljava/time/ZoneOffset;

    .line 165
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iput-object p1, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 168
    return-object p0
.end method

.method public whitelist setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;
    .registers 2
    .param p1, "startZoneOffset"    # Ljava/time/ZoneOffset;

    .line 156
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iput-object p1, p0, Landroid/health/connect/datatypes/TotalCaloriesBurnedRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 159
    return-object p0
.end method
