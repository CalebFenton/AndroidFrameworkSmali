.class public final Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;
.super Ljava/lang/Object;
.source "PlannedExerciseSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/PlannedExerciseBlock;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCompletedExerciseSessionId:Ljava/lang/String;

.field private blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mEndZoneOffset:Ljava/time/ZoneOffset;

.field private blacklist mExerciseType:I

.field private blacklist mHasExplicitTime:Ljava/lang/Boolean;

.field private blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private blacklist mNotes:Ljava/lang/CharSequence;

.field private blacklist mStartTime:Ljava/time/Instant;

.field private blacklist mStartZoneOffset:Ljava/time/ZoneOffset;

.field private blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;ILjava/time/Instant;Ljava/time/Instant;)V
    .registers 7
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "exerciseType"    # I
    .param p3, "startTime"    # Ljava/time/Instant;
    .param p4, "endTime"    # Ljava/time/Instant;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mBlocks:Ljava/util/List;

    .line 214
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iput-object p1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 218
    iput p2, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mExerciseType:I

    .line 219
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mHasExplicitTime:Ljava/lang/Boolean;

    .line 220
    iput-object p3, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 221
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    iget-object v1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mStartTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 222
    iput-object p4, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 223
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    iget-object v1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mEndTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 224
    return-void
.end method

.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;ILjava/time/LocalDate;Ljava/time/Duration;)V
    .registers 7
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "exerciseType"    # I
    .param p3, "startDate"    # Ljava/time/LocalDate;
    .param p4, "duration"    # Ljava/time/Duration;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mBlocks:Ljava/util/List;

    .line 240
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iput-object p1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 244
    iput p2, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mExerciseType:I

    .line 245
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mHasExplicitTime:Ljava/lang/Boolean;

    .line 246
    sget-object v0, Ljava/time/LocalTime;->NOON:Ljava/time/LocalTime;

    .line 247
    invoke-virtual {p3, v0}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 248
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    iget-object v1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mStartTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 249
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mStartTime:Ljava/time/Instant;

    invoke-virtual {v0, p4}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 250
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    iget-object v1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mEndTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 251
    return-void
.end method


# virtual methods
.method public whitelist addBlock(Landroid/health/connect/datatypes/PlannedExerciseBlock;)Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;
    .registers 3
    .param p1, "block"    # Landroid/health/connect/datatypes/PlannedExerciseBlock;

    .line 345
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mBlocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    return-object p0
.end method

.method public whitelist build()Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;
    .registers 16

    .line 405
    iget v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mExerciseType:I

    invoke-static {v0}, Landroid/health/connect/datatypes/ExerciseSessionType;->isKnownSessionType(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 408
    new-instance v1, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;

    iget-object v2, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v3, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v4, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v5, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v6, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v7, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mHasExplicitTime:Ljava/lang/Boolean;

    iget-object v8, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v9, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mNotes:Ljava/lang/CharSequence;

    iget v10, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mExerciseType:I

    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mBlocks:Ljava/util/List;

    .line 418
    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mCompletedExerciseSessionId:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v14}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/lang/Boolean;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/util/List;Ljava/lang/String;ZLandroid/health/connect/datatypes/PlannedExerciseSessionRecord-IA;)V

    .line 408
    return-object v1

    .line 406
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid exercise session type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;
    .registers 15

    .line 387
    new-instance v0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;

    iget-object v1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v2, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v5, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v6, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mHasExplicitTime:Ljava/lang/Boolean;

    iget-object v7, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v8, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mNotes:Ljava/lang/CharSequence;

    iget v9, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mExerciseType:I

    iget-object v10, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mBlocks:Ljava/util/List;

    .line 397
    invoke-static {v10}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mCompletedExerciseSessionId:Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/lang/Boolean;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/util/List;Ljava/lang/String;ZLandroid/health/connect/datatypes/PlannedExerciseSessionRecord-IA;)V

    .line 387
    return-object v0
.end method

.method public whitelist clearBlocks()Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;
    .registers 2

    .line 366
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 367
    return-object p0
.end method

.method public whitelist clearEndZoneOffset()Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;
    .registers 2

    .line 312
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 313
    return-object p0
.end method

.method public whitelist clearStartZoneOffset()Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;
    .registers 2

    .line 305
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 306
    return-object p0
.end method

.method public whitelist setBlocks(Ljava/util/List;)Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/PlannedExerciseBlock;",
            ">;)",
            "Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;"
        }
    .end annotation

    .line 357
    .local p1, "blocks":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/PlannedExerciseBlock;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 359
    iget-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mBlocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 360
    return-object p0
.end method

.method public blacklist setCompletedExerciseSessionId(Ljava/lang/String;)Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 377
    iput-object p1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mCompletedExerciseSessionId:Ljava/lang/String;

    .line 378
    return-object p0
.end method

.method public whitelist setEndTime(Ljava/time/Instant;)Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;
    .registers 4
    .param p1, "endTime"    # Ljava/time/Instant;

    .line 280
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iput-object p1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 282
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    iget-object v1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mEndTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 283
    return-object p0
.end method

.method public whitelist setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;
    .registers 2
    .param p1, "endZoneOffset"    # Ljava/time/ZoneOffset;

    .line 297
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iput-object p1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 299
    return-object p0
.end method

.method public whitelist setExerciseType(I)Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;
    .registers 2
    .param p1, "exerciseType"    # I

    .line 264
    iput p1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mExerciseType:I

    .line 265
    return-object p0
.end method

.method public whitelist setMetadata(Landroid/health/connect/datatypes/Metadata;)Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;
    .registers 2
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;

    .line 256
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iput-object p1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 258
    return-object p0
.end method

.method public whitelist setNotes(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;
    .registers 2
    .param p1, "notes"    # Ljava/lang/CharSequence;

    .line 323
    iput-object p1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mNotes:Ljava/lang/CharSequence;

    .line 324
    return-object p0
.end method

.method public whitelist setStartTime(Ljava/time/Instant;)Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;
    .registers 4
    .param p1, "startTime"    # Ljava/time/Instant;

    .line 271
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iput-object p1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 273
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    iget-object v1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mStartTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 274
    return-object p0
.end method

.method public whitelist setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;
    .registers 2
    .param p1, "startZoneOffset"    # Ljava/time/ZoneOffset;

    .line 289
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iput-object p1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 291
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 334
    iput-object p1, p0, Landroid/health/connect/datatypes/PlannedExerciseSessionRecord$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 335
    return-object p0
.end method
