.class public final Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;
.super Ljava/lang/Object;
.source "ExerciseSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExerciseSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mEndZoneOffset:Ljava/time/ZoneOffset;

.field private final blacklist mExerciseType:I

.field private blacklist mHasRoute:Z

.field private final blacklist mLaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExerciseLap;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private blacklist mNotes:Ljava/lang/CharSequence;

.field private blacklist mPlannedExerciseSessionId:Ljava/lang/String;

.field private blacklist mRoute:Landroid/health/connect/datatypes/ExerciseRoute;

.field private final blacklist mSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExerciseSegment;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStartTime:Ljava/time/Instant;

.field private blacklist mStartZoneOffset:Ljava/time/ZoneOffset;

.field private blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;I)V
    .registers 6
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "endTime"    # Ljava/time/Instant;
    .param p4, "exerciseType"    # I

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 254
    iput-object p2, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 255
    iput-object p3, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 256
    iput p4, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mExerciseType:I

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mSegments:Ljava/util/List;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mLaps:Ljava/util/List;

    .line 259
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 260
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 261
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/ExerciseSessionRecord;
    .registers 18

    .line 405
    move-object/from16 v0, p0

    new-instance v1, Landroid/health/connect/datatypes/ExerciseSessionRecord;

    iget-object v2, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v3, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v4, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v5, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v6, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v7, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mNotes:Ljava/lang/CharSequence;

    iget v8, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mExerciseType:I

    iget-object v9, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v10, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mRoute:Landroid/health/connect/datatypes/ExerciseRoute;

    iget-boolean v11, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mHasRoute:Z

    iget-object v12, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mSegments:Ljava/util/List;

    iget-object v13, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mLaps:Ljava/util/List;

    iget-object v14, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mPlannedExerciseSessionId:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v16}, Landroid/health/connect/datatypes/ExerciseSessionRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/health/connect/datatypes/ExerciseRoute;ZLjava/util/List;Ljava/util/List;Ljava/lang/String;ZLandroid/health/connect/datatypes/ExerciseSessionRecord-IA;)V

    return-object v1
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/ExerciseSessionRecord;
    .registers 18

    .line 385
    move-object/from16 v0, p0

    new-instance v1, Landroid/health/connect/datatypes/ExerciseSessionRecord;

    iget-object v2, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v3, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v4, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v5, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v6, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v7, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mNotes:Ljava/lang/CharSequence;

    iget v8, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mExerciseType:I

    iget-object v9, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v10, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mRoute:Landroid/health/connect/datatypes/ExerciseRoute;

    iget-boolean v11, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mHasRoute:Z

    iget-object v12, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mSegments:Ljava/util/List;

    iget-object v13, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mLaps:Ljava/util/List;

    iget-object v14, v0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mPlannedExerciseSessionId:Ljava/lang/String;

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v16}, Landroid/health/connect/datatypes/ExerciseSessionRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/health/connect/datatypes/ExerciseRoute;ZLjava/util/List;Ljava/util/List;Ljava/lang/String;ZLandroid/health/connect/datatypes/ExerciseSessionRecord-IA;)V

    return-object v1
.end method

.method public whitelist clearEndZoneOffset()Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;
    .registers 2

    .line 291
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 292
    return-object p0
.end method

.method public whitelist clearStartZoneOffset()Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;
    .registers 2

    .line 284
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 285
    return-object p0
.end method

.method public whitelist setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;
    .registers 2
    .param p1, "endZoneOffset"    # Ljava/time/ZoneOffset;

    .line 275
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 278
    return-object p0
.end method

.method public blacklist setHasRoute(Z)Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;
    .registers 2
    .param p1, "hasRoute"    # Z

    .line 367
    iput-boolean p1, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mHasRoute:Z

    .line 368
    return-object p0
.end method

.method public whitelist setLaps(Ljava/util/List;)Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExerciseLap;",
            ">;)",
            "Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;"
        }
    .end annotation

    .line 339
    .local p1, "laps":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/ExerciseLap;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mLaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 341
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mLaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 342
    return-object p0
.end method

.method public whitelist setNotes(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;
    .registers 2
    .param p1, "notes"    # Ljava/lang/CharSequence;

    .line 303
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mNotes:Ljava/lang/CharSequence;

    .line 304
    return-object p0
.end method

.method public whitelist setPlannedExerciseSessionId(Ljava/lang/String;)Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 375
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mPlannedExerciseSessionId:Ljava/lang/String;

    .line 376
    return-object p0
.end method

.method public whitelist setRoute(Landroid/health/connect/datatypes/ExerciseRoute;)Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;
    .registers 3
    .param p1, "route"    # Landroid/health/connect/datatypes/ExerciseRoute;

    .line 327
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mRoute:Landroid/health/connect/datatypes/ExerciseRoute;

    .line 328
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mHasRoute:Z

    .line 329
    return-object p0
.end method

.method public whitelist setSegments(Ljava/util/List;)Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExerciseSegment;",
            ">;)",
            "Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;"
        }
    .end annotation

    .line 352
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/ExerciseSegment;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 354
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 355
    return-object p0
.end method

.method public whitelist setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;
    .registers 2
    .param p1, "startZoneOffset"    # Ljava/time/ZoneOffset;

    .line 266
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 269
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 315
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseSessionRecord$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 316
    return-object p0
.end method
