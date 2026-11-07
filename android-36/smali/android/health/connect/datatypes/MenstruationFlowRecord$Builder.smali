.class public final Landroid/health/connect/datatypes/MenstruationFlowRecord$Builder;
.super Ljava/lang/Object;
.source "MenstruationFlowRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/MenstruationFlowRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mFlow:I

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mTime:Ljava/time/Instant;

.field private blacklist mZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;I)V
    .registers 5
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "flow"    # I

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iput-object p1, p0, Landroid/health/connect/datatypes/MenstruationFlowRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 134
    iput-object p2, p0, Landroid/health/connect/datatypes/MenstruationFlowRecord$Builder;->mTime:Ljava/time/Instant;

    .line 135
    iput p3, p0, Landroid/health/connect/datatypes/MenstruationFlowRecord$Builder;->mFlow:I

    .line 136
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/MenstruationFlowRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 137
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/MenstruationFlowRecord;
    .registers 8

    .line 168
    new-instance v0, Landroid/health/connect/datatypes/MenstruationFlowRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/MenstruationFlowRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/MenstruationFlowRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/MenstruationFlowRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget v4, p0, Landroid/health/connect/datatypes/MenstruationFlowRecord$Builder;->mFlow:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/health/connect/datatypes/MenstruationFlowRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;IZLandroid/health/connect/datatypes/MenstruationFlowRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/MenstruationFlowRecord;
    .registers 8

    .line 160
    new-instance v0, Landroid/health/connect/datatypes/MenstruationFlowRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/MenstruationFlowRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/MenstruationFlowRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/MenstruationFlowRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget v4, p0, Landroid/health/connect/datatypes/MenstruationFlowRecord$Builder;->mFlow:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/health/connect/datatypes/MenstruationFlowRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;IZLandroid/health/connect/datatypes/MenstruationFlowRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearZoneOffset()Landroid/health/connect/datatypes/MenstruationFlowRecord$Builder;
    .registers 2

    .line 150
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/MenstruationFlowRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 151
    return-object p0
.end method

.method public whitelist setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/MenstruationFlowRecord$Builder;
    .registers 2
    .param p1, "zoneOffset"    # Ljava/time/ZoneOffset;

    .line 142
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iput-object p1, p0, Landroid/health/connect/datatypes/MenstruationFlowRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 144
    return-object p0
.end method
