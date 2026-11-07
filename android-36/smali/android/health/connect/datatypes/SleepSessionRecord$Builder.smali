.class public final Landroid/health/connect/datatypes/SleepSessionRecord$Builder;
.super Ljava/lang/Object;
.source "SleepSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/SleepSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mEndZoneOffset:Ljava/time/ZoneOffset;

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private blacklist mNotes:Ljava/lang/CharSequence;

.field private final blacklist mStages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/SleepSessionRecord$Stage;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStartTime:Ljava/time/Instant;

.field private blacklist mStartZoneOffset:Ljava/time/ZoneOffset;

.field private blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;)V
    .registers 5
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "endTime"    # Ljava/time/Instant;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iput-object p1, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 311
    iput-object p2, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 312
    iput-object p3, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mStages:Ljava/util/List;

    .line 314
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 315
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 316
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/SleepSessionRecord;
    .registers 12

    .line 407
    new-instance v0, Landroid/health/connect/datatypes/SleepSessionRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mStages:Ljava/util/List;

    iget-object v7, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mNotes:Ljava/lang/CharSequence;

    iget-object v8, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mTitle:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/health/connect/datatypes/SleepSessionRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/health/connect/datatypes/SleepSessionRecord-IA;)V

    return-object v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/SleepSessionRecord;
    .registers 12

    .line 392
    new-instance v0, Landroid/health/connect/datatypes/SleepSessionRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mStages:Ljava/util/List;

    iget-object v7, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mNotes:Ljava/lang/CharSequence;

    iget-object v8, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mTitle:Ljava/lang/CharSequence;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/health/connect/datatypes/SleepSessionRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/health/connect/datatypes/SleepSessionRecord-IA;)V

    return-object v0
.end method

.method public whitelist clearEndZoneOffset()Landroid/health/connect/datatypes/SleepSessionRecord$Builder;
    .registers 2

    .line 345
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 346
    return-object p0
.end method

.method public whitelist clearStartZoneOffset()Landroid/health/connect/datatypes/SleepSessionRecord$Builder;
    .registers 2

    .line 338
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 339
    return-object p0
.end method

.method public whitelist setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/SleepSessionRecord$Builder;
    .registers 2
    .param p1, "endZoneOffset"    # Ljava/time/ZoneOffset;

    .line 330
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iput-object p1, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 332
    return-object p0
.end method

.method public whitelist setNotes(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/SleepSessionRecord$Builder;
    .registers 2
    .param p1, "notes"    # Ljava/lang/CharSequence;

    .line 357
    iput-object p1, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mNotes:Ljava/lang/CharSequence;

    .line 358
    return-object p0
.end method

.method public whitelist setStages(Ljava/util/List;)Landroid/health/connect/datatypes/SleepSessionRecord$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/SleepSessionRecord$Stage;",
            ">;)",
            "Landroid/health/connect/datatypes/SleepSessionRecord$Builder;"
        }
    .end annotation

    .line 380
    .local p1, "stages":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/SleepSessionRecord$Stage;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mStages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 382
    iget-object v0, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mStages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 383
    return-object p0
.end method

.method public whitelist setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/SleepSessionRecord$Builder;
    .registers 2
    .param p1, "startZoneOffset"    # Ljava/time/ZoneOffset;

    .line 321
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iput-object p1, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 324
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/SleepSessionRecord$Builder;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 369
    iput-object p1, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 370
    return-object p0
.end method
