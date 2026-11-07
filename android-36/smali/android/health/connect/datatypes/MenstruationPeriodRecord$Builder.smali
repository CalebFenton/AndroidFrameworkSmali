.class public final Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;
.super Ljava/lang/Object;
.source "MenstruationPeriodRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/MenstruationPeriodRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mEndZoneOffset:Ljava/time/ZoneOffset;

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mStartTime:Ljava/time/Instant;

.field private blacklist mStartZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;)V
    .registers 5
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "endTime"    # Ljava/time/Instant;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 92
    iput-object p2, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 93
    iput-object p3, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 94
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 95
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 96
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/MenstruationPeriodRecord;
    .registers 9

    .line 145
    new-instance v0, Landroid/health/connect/datatypes/MenstruationPeriodRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/MenstruationPeriodRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;ZLandroid/health/connect/datatypes/MenstruationPeriodRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/MenstruationPeriodRecord;
    .registers 9

    .line 138
    new-instance v0, Landroid/health/connect/datatypes/MenstruationPeriodRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/MenstruationPeriodRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;ZLandroid/health/connect/datatypes/MenstruationPeriodRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearEndZoneOffset()Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;
    .registers 2

    .line 128
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 129
    return-object p0
.end method

.method public whitelist clearStartZoneOffset()Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;
    .registers 2

    .line 111
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 112
    return-object p0
.end method

.method public whitelist setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;
    .registers 2
    .param p1, "endZoneOffset"    # Ljava/time/ZoneOffset;

    .line 119
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iput-object p1, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 122
    return-object p0
.end method

.method public whitelist setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;
    .registers 2
    .param p1, "startZoneOffset"    # Ljava/time/ZoneOffset;

    .line 102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iput-object p1, p0, Landroid/health/connect/datatypes/MenstruationPeriodRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 105
    return-object p0
.end method
