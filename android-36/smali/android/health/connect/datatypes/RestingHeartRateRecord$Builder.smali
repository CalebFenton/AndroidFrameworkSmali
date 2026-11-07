.class public final Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;
.super Ljava/lang/Object;
.source "RestingHeartRateRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/RestingHeartRateRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mBeatsPerMinute:J

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mTime:Ljava/time/Instant;

.field private blacklist mZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;J)V
    .registers 6
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "beatsPerMinute"    # J

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iput-object p1, p0, Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 144
    iput-object p2, p0, Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;->mTime:Ljava/time/Instant;

    .line 145
    iput-wide p3, p0, Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;->mBeatsPerMinute:J

    .line 146
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 147
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/RestingHeartRateRecord;
    .registers 9

    .line 178
    new-instance v0, Landroid/health/connect/datatypes/RestingHeartRateRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget-wide v4, p0, Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;->mBeatsPerMinute:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/RestingHeartRateRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;JZLandroid/health/connect/datatypes/RestingHeartRateRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/RestingHeartRateRecord;
    .registers 9

    .line 170
    new-instance v0, Landroid/health/connect/datatypes/RestingHeartRateRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget-wide v4, p0, Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;->mBeatsPerMinute:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/RestingHeartRateRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;JZLandroid/health/connect/datatypes/RestingHeartRateRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearZoneOffset()Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;
    .registers 2

    .line 160
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 161
    return-object p0
.end method

.method public whitelist setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;
    .registers 2
    .param p1, "zoneOffset"    # Ljava/time/ZoneOffset;

    .line 152
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iput-object p1, p0, Landroid/health/connect/datatypes/RestingHeartRateRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 154
    return-object p0
.end method
