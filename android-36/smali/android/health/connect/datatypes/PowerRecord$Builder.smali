.class public final Landroid/health/connect/datatypes/PowerRecord$Builder;
.super Ljava/lang/Object;
.source "PowerRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/PowerRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mEndZoneOffset:Ljava/time/ZoneOffset;

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mPowerRecordSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/PowerRecord$PowerRecordSample;",
            ">;"
        }
    .end annotation
.end field

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
            "Landroid/health/connect/datatypes/PowerRecord$PowerRecordSample;",
            ">;)V"
        }
    .end annotation

    .line 182
    .local p4, "powerRecordSamples":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/PowerRecord$PowerRecordSample;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iput-object p1, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 188
    iput-object p2, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 189
    iput-object p3, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 190
    iput-object p4, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mPowerRecordSamples:Ljava/util/List;

    .line 191
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 192
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 193
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/PowerRecord;
    .registers 10

    .line 246
    new-instance v0, Landroid/health/connect/datatypes/PowerRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mPowerRecordSamples:Ljava/util/List;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/health/connect/datatypes/PowerRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/util/List;ZLandroid/health/connect/datatypes/PowerRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/PowerRecord;
    .registers 10

    .line 231
    new-instance v0, Landroid/health/connect/datatypes/PowerRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mPowerRecordSamples:Ljava/util/List;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/health/connect/datatypes/PowerRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/util/List;ZLandroid/health/connect/datatypes/PowerRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearEndZoneOffset()Landroid/health/connect/datatypes/PowerRecord$Builder;
    .registers 2

    .line 221
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 222
    return-object p0
.end method

.method public whitelist clearStartZoneOffset()Landroid/health/connect/datatypes/PowerRecord$Builder;
    .registers 2

    .line 214
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 215
    return-object p0
.end method

.method public whitelist setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/PowerRecord$Builder;
    .registers 2
    .param p1, "endZoneOffset"    # Ljava/time/ZoneOffset;

    .line 206
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iput-object p1, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 208
    return-object p0
.end method

.method public whitelist setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/PowerRecord$Builder;
    .registers 2
    .param p1, "startZoneOffset"    # Ljava/time/ZoneOffset;

    .line 198
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iput-object p1, p0, Landroid/health/connect/datatypes/PowerRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 200
    return-object p0
.end method
