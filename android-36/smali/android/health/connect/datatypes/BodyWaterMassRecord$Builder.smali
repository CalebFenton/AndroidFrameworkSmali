.class public final Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;
.super Ljava/lang/Object;
.source "BodyWaterMassRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/BodyWaterMassRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mBodyWaterMass:Landroid/health/connect/datatypes/units/Mass;

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mTime:Ljava/time/Instant;

.field private blacklist mZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Landroid/health/connect/datatypes/units/Mass;)V
    .registers 5
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "bodyWaterMass"    # Landroid/health/connect/datatypes/units/Mass;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iput-object p1, p0, Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 102
    iput-object p2, p0, Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;->mTime:Ljava/time/Instant;

    .line 103
    iput-object p3, p0, Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;->mBodyWaterMass:Landroid/health/connect/datatypes/units/Mass;

    .line 104
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/BodyWaterMassRecord;
    .registers 8

    .line 134
    new-instance v0, Landroid/health/connect/datatypes/BodyWaterMassRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;->mBodyWaterMass:Landroid/health/connect/datatypes/units/Mass;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/health/connect/datatypes/BodyWaterMassRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Mass;ZLandroid/health/connect/datatypes/BodyWaterMassRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/BodyWaterMassRecord;
    .registers 8

    .line 128
    new-instance v0, Landroid/health/connect/datatypes/BodyWaterMassRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;->mBodyWaterMass:Landroid/health/connect/datatypes/units/Mass;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/health/connect/datatypes/BodyWaterMassRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Mass;ZLandroid/health/connect/datatypes/BodyWaterMassRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearZoneOffset()Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;
    .registers 2

    .line 118
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 119
    return-object p0
.end method

.method public whitelist setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;
    .registers 2
    .param p1, "zoneOffset"    # Ljava/time/ZoneOffset;

    .line 110
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iput-object p1, p0, Landroid/health/connect/datatypes/BodyWaterMassRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 112
    return-object p0
.end method
