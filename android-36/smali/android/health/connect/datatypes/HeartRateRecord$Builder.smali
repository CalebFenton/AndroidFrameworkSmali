.class public final Landroid/health/connect/datatypes/HeartRateRecord$Builder;
.super Ljava/lang/Object;
.source "HeartRateRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/HeartRateRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mEndZoneOffset:Ljava/time/ZoneOffset;

.field private final blacklist mHeartRateSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mStartTime:Ljava/time/Instant;

.field private blacklist mStartZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;Ljava/util/List;)V
    .registers 7
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
            "Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p4, "heartRateSamples":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 256
    iput-object p1, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 257
    iput-object p2, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 258
    iput-object p3, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 259
    iput-object p4, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mHeartRateSamples:Ljava/util/List;

    .line 260
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 261
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 262
    return-void

    .line 253
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "record samples should not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/HeartRateRecord;
    .registers 10

    .line 323
    new-instance v0, Landroid/health/connect/datatypes/HeartRateRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mHeartRateSamples:Ljava/util/List;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/health/connect/datatypes/HeartRateRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/util/List;ZLandroid/health/connect/datatypes/HeartRateRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/HeartRateRecord;
    .registers 10

    .line 308
    new-instance v0, Landroid/health/connect/datatypes/HeartRateRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mHeartRateSamples:Ljava/util/List;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/health/connect/datatypes/HeartRateRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/util/List;ZLandroid/health/connect/datatypes/HeartRateRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearEndZoneOffset()Landroid/health/connect/datatypes/HeartRateRecord$Builder;
    .registers 2

    .line 298
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 299
    return-object p0
.end method

.method public whitelist clearStartZoneOffset()Landroid/health/connect/datatypes/HeartRateRecord$Builder;
    .registers 2

    .line 291
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 292
    return-object p0
.end method

.method public whitelist setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/HeartRateRecord$Builder;
    .registers 2
    .param p1, "endZoneOffset"    # Ljava/time/ZoneOffset;

    .line 282
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iput-object p1, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 285
    return-object p0
.end method

.method public whitelist setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/HeartRateRecord$Builder;
    .registers 2
    .param p1, "startZoneOffset"    # Ljava/time/ZoneOffset;

    .line 270
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iput-object p1, p0, Landroid/health/connect/datatypes/HeartRateRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 273
    return-object p0
.end method
