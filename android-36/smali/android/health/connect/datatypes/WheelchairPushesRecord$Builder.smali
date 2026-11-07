.class public final Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;
.super Ljava/lang/Object;
.source "WheelchairPushesRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/WheelchairPushesRecord;
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

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iput-object p1, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 143
    iput-object p2, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 144
    iput-object p3, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 145
    iput-wide p4, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mCount:J

    .line 146
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 147
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 148
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/WheelchairPushesRecord;
    .registers 11

    .line 203
    new-instance v0, Landroid/health/connect/datatypes/WheelchairPushesRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-wide v6, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mCount:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/health/connect/datatypes/WheelchairPushesRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;JZLandroid/health/connect/datatypes/WheelchairPushesRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/WheelchairPushesRecord;
    .registers 11

    .line 188
    new-instance v0, Landroid/health/connect/datatypes/WheelchairPushesRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-wide v6, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mCount:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/health/connect/datatypes/WheelchairPushesRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;JZLandroid/health/connect/datatypes/WheelchairPushesRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearEndZoneOffset()Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;
    .registers 2

    .line 178
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 179
    return-object p0
.end method

.method public whitelist clearStartZoneOffset()Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;
    .registers 2

    .line 171
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 172
    return-object p0
.end method

.method public whitelist setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;
    .registers 2
    .param p1, "endZoneOffset"    # Ljava/time/ZoneOffset;

    .line 162
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iput-object p1, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 165
    return-object p0
.end method

.method public whitelist setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;
    .registers 2
    .param p1, "startZoneOffset"    # Ljava/time/ZoneOffset;

    .line 153
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iput-object p1, p0, Landroid/health/connect/datatypes/WheelchairPushesRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 156
    return-object p0
.end method
