.class public final Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;
.super Ljava/lang/Object;
.source "CyclingPedalingCadenceRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mCyclingPedalingCadenceRecordSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mEndZoneOffset:Ljava/time/ZoneOffset;

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mStartTime:Ljava/time/Instant;

.field private blacklist mStartZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;Ljava/util/List;)V
    .registers 6
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "endTime"    # Ljava/time/Instant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/health/connect/datatypes/Metadata;",
            "Ljava/time/Instant;",
            "Ljava/time/Instant;",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;",
            ">;)V"
        }
    .end annotation

    .line 223
    .local p4, "cyclingPedalingCadenceRecordSamples":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iput-object p1, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 229
    iput-object p2, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 230
    iput-object p3, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 231
    iput-object p4, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mCyclingPedalingCadenceRecordSamples:Ljava/util/List;

    .line 232
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 233
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 234
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;
    .registers 10

    .line 287
    new-instance v0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mCyclingPedalingCadenceRecordSamples:Ljava/util/List;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/util/List;ZLandroid/health/connect/datatypes/CyclingPedalingCadenceRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;
    .registers 10

    .line 272
    new-instance v0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mCyclingPedalingCadenceRecordSamples:Ljava/util/List;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/util/List;ZLandroid/health/connect/datatypes/CyclingPedalingCadenceRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearEndZoneOffset()Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;
    .registers 2

    .line 262
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 263
    return-object p0
.end method

.method public whitelist clearStartZoneOffset()Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;
    .registers 2

    .line 255
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 256
    return-object p0
.end method

.method public whitelist setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;
    .registers 2
    .param p1, "endZoneOffset"    # Ljava/time/ZoneOffset;

    .line 247
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iput-object p1, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 249
    return-object p0
.end method

.method public whitelist setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;
    .registers 2
    .param p1, "startZoneOffset"    # Ljava/time/ZoneOffset;

    .line 239
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iput-object p1, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 241
    return-object p0
.end method
