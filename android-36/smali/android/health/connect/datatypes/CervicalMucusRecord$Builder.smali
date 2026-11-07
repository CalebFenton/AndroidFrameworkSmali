.class public final Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;
.super Ljava/lang/Object;
.source "CervicalMucusRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/CervicalMucusRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAppearance:I

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mSensation:I

.field private final blacklist mTime:Ljava/time/Instant;

.field private blacklist mZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;II)V
    .registers 6
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "sensation"    # I
    .param p4, "appearance"    # I

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iput-object p1, p0, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 213
    iput-object p2, p0, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->mTime:Ljava/time/Instant;

    .line 214
    iput p3, p0, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->mSensation:I

    .line 215
    iput p4, p0, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->mAppearance:I

    .line 216
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 217
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/CervicalMucusRecord;
    .registers 9

    .line 249
    new-instance v0, Landroid/health/connect/datatypes/CervicalMucusRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget v4, p0, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->mSensation:I

    iget v5, p0, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->mAppearance:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/CervicalMucusRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;IIZLandroid/health/connect/datatypes/CervicalMucusRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/CervicalMucusRecord;
    .registers 9

    .line 240
    new-instance v0, Landroid/health/connect/datatypes/CervicalMucusRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->mTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    iget v4, p0, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->mSensation:I

    iget v5, p0, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->mAppearance:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/health/connect/datatypes/CervicalMucusRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;IIZLandroid/health/connect/datatypes/CervicalMucusRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearZoneOffset()Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;
    .registers 2

    .line 230
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 231
    return-object p0
.end method

.method public whitelist setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;
    .registers 2
    .param p1, "zoneOffset"    # Ljava/time/ZoneOffset;

    .line 222
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iput-object p1, p0, Landroid/health/connect/datatypes/CervicalMucusRecord$Builder;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 224
    return-object p0
.end method
