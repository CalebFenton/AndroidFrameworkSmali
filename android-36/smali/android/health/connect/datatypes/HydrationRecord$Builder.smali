.class public final Landroid/health/connect/datatypes/HydrationRecord$Builder;
.super Ljava/lang/Object;
.source "HydrationRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/HydrationRecord;
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

.field private final blacklist mVolume:Landroid/health/connect/datatypes/units/Volume;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;Landroid/health/connect/datatypes/units/Volume;)V
    .registers 6
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "endTime"    # Ljava/time/Instant;
    .param p4, "volume"    # Landroid/health/connect/datatypes/units/Volume;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iput-object p1, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 136
    iput-object p2, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 137
    iput-object p3, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 138
    iput-object p4, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mVolume:Landroid/health/connect/datatypes/units/Volume;

    .line 139
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 140
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 141
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/HydrationRecord;
    .registers 10

    .line 196
    new-instance v0, Landroid/health/connect/datatypes/HydrationRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mVolume:Landroid/health/connect/datatypes/units/Volume;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/health/connect/datatypes/HydrationRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Volume;ZLandroid/health/connect/datatypes/HydrationRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/HydrationRecord;
    .registers 10

    .line 181
    new-instance v0, Landroid/health/connect/datatypes/HydrationRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mVolume:Landroid/health/connect/datatypes/units/Volume;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/health/connect/datatypes/HydrationRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Volume;ZLandroid/health/connect/datatypes/HydrationRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearEndZoneOffset()Landroid/health/connect/datatypes/HydrationRecord$Builder;
    .registers 2

    .line 171
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 172
    return-object p0
.end method

.method public whitelist clearStartZoneOffset()Landroid/health/connect/datatypes/HydrationRecord$Builder;
    .registers 2

    .line 164
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 165
    return-object p0
.end method

.method public whitelist setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/HydrationRecord$Builder;
    .registers 2
    .param p1, "endZoneOffset"    # Ljava/time/ZoneOffset;

    .line 155
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iput-object p1, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 158
    return-object p0
.end method

.method public whitelist setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/HydrationRecord$Builder;
    .registers 2
    .param p1, "startZoneOffset"    # Ljava/time/ZoneOffset;

    .line 146
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iput-object p1, p0, Landroid/health/connect/datatypes/HydrationRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 149
    return-object p0
.end method
