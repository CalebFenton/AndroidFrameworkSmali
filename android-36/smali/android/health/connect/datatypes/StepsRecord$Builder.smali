.class public final Landroid/health/connect/datatypes/StepsRecord$Builder;
.super Ljava/lang/Object;
.source "StepsRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/StepsRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mCount:J

.field private final blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mEndZoneOffset:Ljava/time/ZoneOffset;

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mStartTime:Ljava/time/Instant;

.field private blacklist mStartZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;J)V
    .registers 7
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "endTime"    # Ljava/time/Instant;
    .param p4, "count"    # J

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 60
    iput-object p2, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 61
    iput-object p3, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 62
    iput-wide p4, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mCount:J

    .line 63
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 64
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/StepsRecord;
    .registers 11

    .line 120
    new-instance v0, Landroid/health/connect/datatypes/StepsRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-wide v6, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mCount:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/health/connect/datatypes/StepsRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;JZLandroid/health/connect/datatypes/StepsRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/StepsRecord;
    .registers 11

    .line 105
    new-instance v0, Landroid/health/connect/datatypes/StepsRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-wide v6, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mCount:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/health/connect/datatypes/StepsRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;JZLandroid/health/connect/datatypes/StepsRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearEndZoneOffset()Landroid/health/connect/datatypes/StepsRecord$Builder;
    .registers 2

    .line 95
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 96
    return-object p0
.end method

.method public whitelist clearStartZoneOffset()Landroid/health/connect/datatypes/StepsRecord$Builder;
    .registers 2

    .line 88
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 89
    return-object p0
.end method

.method public whitelist setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/StepsRecord$Builder;
    .registers 2
    .param p1, "endZoneOffset"    # Ljava/time/ZoneOffset;

    .line 79
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iput-object p1, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 82
    return-object p0
.end method

.method public whitelist setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/StepsRecord$Builder;
    .registers 2
    .param p1, "startZoneOffset"    # Ljava/time/ZoneOffset;

    .line 70
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Landroid/health/connect/datatypes/StepsRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 73
    return-object p0
.end method
