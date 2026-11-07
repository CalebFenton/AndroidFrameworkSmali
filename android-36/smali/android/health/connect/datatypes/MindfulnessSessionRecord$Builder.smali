.class public final Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;
.super Ljava/lang/Object;
.source "MindfulnessSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/MindfulnessSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mEndZoneOffset:Ljava/time/ZoneOffset;

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private final blacklist mMindfulnessSessionType:I

.field private blacklist mNotes:Ljava/lang/CharSequence;

.field private final blacklist mStartTime:Ljava/time/Instant;

.field private blacklist mStartZoneOffset:Ljava/time/ZoneOffset;

.field private blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;I)V
    .registers 6
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "endTime"    # Ljava/time/Instant;
    .param p4, "mindfulnessSessionType"    # I

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iput-object p1, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 214
    iput-object p2, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 215
    iput-object p3, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 216
    iput p4, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mMindfulnessSessionType:I

    .line 217
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 218
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 219
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/MindfulnessSessionRecord;
    .registers 12

    .line 281
    new-instance v0, Landroid/health/connect/datatypes/MindfulnessSessionRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget v6, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mMindfulnessSessionType:I

    iget-object v7, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v8, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mNotes:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;ILjava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/health/connect/datatypes/MindfulnessSessionRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/MindfulnessSessionRecord;
    .registers 12

    .line 266
    new-instance v0, Landroid/health/connect/datatypes/MindfulnessSessionRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget v6, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mMindfulnessSessionType:I

    iget-object v7, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v8, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mNotes:Ljava/lang/CharSequence;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/health/connect/datatypes/MindfulnessSessionRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;ILjava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/health/connect/datatypes/MindfulnessSessionRecord-IA;)V

    return-object v0
.end method

.method public whitelist setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;
    .registers 2
    .param p1, "endZoneOffset"    # Ljava/time/ZoneOffset;

    .line 233
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iput-object p1, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 235
    return-object p0
.end method

.method public whitelist setNotes(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;
    .registers 2
    .param p1, "notes"    # Ljava/lang/CharSequence;

    .line 256
    iput-object p1, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mNotes:Ljava/lang/CharSequence;

    .line 257
    return-object p0
.end method

.method public whitelist setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;
    .registers 2
    .param p1, "startZoneOffset"    # Ljava/time/ZoneOffset;

    .line 224
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iput-object p1, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 227
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 245
    iput-object p1, p0, Landroid/health/connect/datatypes/MindfulnessSessionRecord$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 246
    return-object p0
.end method
