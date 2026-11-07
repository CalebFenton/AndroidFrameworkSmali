.class public final Lcom/android/internal/app/procstats/AssociationState$SourceState;
.super Ljava/lang/Object;
.source "AssociationState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/AssociationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceState"
.end annotation


# instance fields
.field blacklist mActiveCount:I

.field blacklist mActiveDuration:J

.field blacklist mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field blacklist mActiveNesting:I

.field blacklist mActiveProcState:I

.field blacklist mActiveStartUptime:J

.field private final blacklist mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

.field private blacklist mCommonSourceState:Lcom/android/internal/app/procstats/AssociationState$SourceState;

.field blacklist mCount:I

.field blacklist mDuration:J

.field blacklist mInTrackingList:Z

.field final blacklist mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

.field blacklist mNesting:I

.field blacklist mProcState:I

.field blacklist mProcStateSeq:I

.field private final blacklist mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

.field blacklist mStartUptime:J

.field private final blacklist mTargetProcess:Lcom/android/internal/app/procstats/ProcessState;

.field blacklist mTrackingUptime:J


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V
    .registers 6
    .param p1, "processStats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "associationState"    # Lcom/android/internal/app/procstats/AssociationState;
    .param p3, "targetProcess"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p4, "key"    # Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    .line 70
    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    .line 79
    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    .line 86
    iput-object p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 87
    iput-object p2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    .line 88
    iput-object p3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mTargetProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 89
    iput-object p4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 90
    return-void
.end method

.method private blacklist getCommonSourceState(Z)Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .registers 4
    .param p1, "createIfNeeded"    # Z

    .line 107
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCommonSourceState:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 108
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mTargetProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->getOrCreateSourceState(Lcom/android/internal/app/procstats/AssociationState$SourceKey;)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCommonSourceState:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 110
    :cond_10
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCommonSourceState:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    return-object v0
.end method

.method private blacklist stopTracking(J)V
    .registers 8
    .param p1, "now"    # J

    .line 353
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v0, :cond_29

    .line 354
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v0}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalNesting(Lcom/android/internal/app/procstats/AssociationState;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fputmTotalNesting(Lcom/android/internal/app/procstats/AssociationState;I)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v0}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalNesting(Lcom/android/internal/app/procstats/AssociationState;)I

    move-result v0

    if-nez v0, :cond_29

    .line 356
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v0}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalDuration(Lcom/android/internal/app/procstats/AssociationState;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v3}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalStartUptime(Lcom/android/internal/app/procstats/AssociationState;)J

    move-result-wide v3

    sub-long v3, p1, v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fputmTotalDuration(Lcom/android/internal/app/procstats/AssociationState;J)V

    .line 360
    :cond_29
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopActive(J)V

    .line 361
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    if-eqz v0, :cond_6b

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    .line 363
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    .line 364
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v0, :cond_6b

    .line 367
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    .line 368
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/AssociationState$SourceState;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_44
    if-ltz v1, :cond_53

    .line 369
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_50

    .line 370
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 371
    return-void

    .line 368
    :cond_50
    add-int/lit8 v1, v1, -0x1

    goto :goto_44

    .line 374
    .end local v1    # "i":I
    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop tracking didn\'t find in tracking list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProcessStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/AssociationState$SourceState;>;"
    :cond_6b
    return-void
.end method

.method private blacklist stopTrackingProcState()V
    .registers 3

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    .line 294
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    .line 295
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_13

    .line 296
    invoke-direct {p0, v0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getCommonSourceState(Z)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v0

    .line 297
    .local v0, "commonSource":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    if-eqz v0, :cond_13

    .line 298
    invoke-direct {v0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopTrackingProcState()V

    .line 301
    .end local v0    # "commonSource":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    :cond_13
    return-void
.end method


# virtual methods
.method blacklist add(Lcom/android/internal/app/procstats/AssociationState$SourceState;)V
    .registers 9
    .param p1, "otherSrc"    # Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 380
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    .line 381
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    iget-wide v2, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    .line 382
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    .line 383
    iget-wide v0, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_21

    iget-object v0, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v0, :cond_94

    .line 385
    :cond_21
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v0, :cond_3b

    .line 388
    iget-object v0, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v0, :cond_31

    .line 389
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    goto :goto_94

    .line 391
    :cond_31
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v1, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    iget-wide v2, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_94

    .line 394
    :cond_3b
    iget-object v0, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    const/4 v1, -0x1

    if-eqz v0, :cond_5e

    .line 397
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->makeDurations()V

    .line 398
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v4, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 399
    iget-wide v4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_94

    .line 400
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    iget-wide v5, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 401
    iput-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    .line 402
    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    goto :goto_94

    .line 404
    :cond_5e
    iget-wide v4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8c

    .line 407
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    iget v4, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    if-ne v0, v4, :cond_72

    .line 408
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    iget-wide v2, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    goto :goto_94

    .line 412
    :cond_72
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->makeDurations()V

    .line 413
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v4, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    iget-wide v5, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v4, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    iget-wide v5, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 416
    iput-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    .line 417
    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    goto :goto_94

    .line 421
    :cond_8c
    iget v0, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    .line 422
    iget-wide v0, p1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    .line 425
    :cond_94
    :goto_94
    return-void
.end method

.method blacklist commitStateTime(J)V
    .registers 7
    .param p1, "nowUptime"    # J

    .line 333
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    if-lez v0, :cond_f

    .line 334
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    .line 335
    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    .line 337
    :cond_f
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2e

    .line 338
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    sub-long v0, p1, v0

    .line 339
    .local v0, "addedDuration":J
    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    .line 340
    iget-object v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v2, :cond_29

    .line 341
    iget-object v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_2e

    .line 343
    :cond_29
    iget-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    .line 346
    .end local v0    # "addedDuration":J
    :cond_2e
    :goto_2e
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAssociationState()Lcom/android/internal/app/procstats/AssociationState;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    return-object v0
.end method

.method public blacklist getProcessName()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v0, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget v0, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    return v0
.end method

.method blacklist isInUse()Z
    .registers 2

    .line 304
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method blacklist makeDurations()V
    .registers 3

    .line 349
    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 350
    return-void
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_47

    .line 452
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->makeDurations()V

    .line 453
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duration table corrupt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 457
    :cond_47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    .line 460
    :cond_53
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist resetSafely(J)V
    .registers 10
    .param p1, "now"    # J

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->isInUse()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    .line 309
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    .line 310
    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    .line 311
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    .line 312
    iget-wide v5, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_1c

    .line 313
    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    .line 314
    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    goto :goto_1e

    .line 316
    :cond_1c
    iput v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    .line 318
    :goto_1e
    iput-wide v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    .line 319
    iput-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 323
    :cond_22
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v0, :cond_31

    .line 324
    invoke-direct {p0, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getCommonSourceState(Z)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v0

    .line 325
    .local v0, "commonSource":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    if-eqz v0, :cond_31

    .line 326
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->resetSafely(J)V

    .line 327
    iput-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCommonSourceState:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 330
    .end local v0    # "commonSource":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    :cond_31
    return-void
.end method

.method blacklist start()J
    .registers 4

    .line 144
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->start(J)J

    move-result-wide v0

    .line 145
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v2, :cond_14

    .line 146
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getCommonSourceState(Z)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v2

    .line 147
    .local v2, "commonSource":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    if-eqz v2, :cond_14

    .line 148
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->start(J)J

    .line 151
    .end local v2    # "commonSource":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    :cond_14
    return-wide v0
.end method

.method blacklist start(J)J
    .registers 7
    .param p1, "now"    # J

    .line 155
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    .line 156
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    if-ne v0, v1, :cond_1b

    .line 157
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_14

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 160
    :cond_14
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    .line 161
    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    .line 163
    :cond_1b
    return-wide p1
.end method

.method blacklist startActive(J)V
    .registers 12
    .param p1, "now"    # J

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "startActive":Z
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_7b

    .line 191
    iget-wide v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_41

    .line 192
    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    .line 193
    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveNesting:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveNesting:I

    .line 194
    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    .line 195
    const/4 v0, 0x1

    .line 196
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_4a

    .line 197
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v1}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalActiveNesting(Lcom/android/internal/app/procstats/AssociationState;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fputmTotalActiveNesting(Lcom/android/internal/app/procstats/AssociationState;I)V

    .line 198
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v1}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalActiveNesting(Lcom/android/internal/app/procstats/AssociationState;)I

    move-result v1

    if-ne v1, v2, :cond_4a

    .line 199
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v1}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalActiveCount(Lcom/android/internal/app/procstats/AssociationState;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fputmTotalActiveCount(Lcom/android/internal/app/procstats/AssociationState;I)V

    .line 200
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fputmTotalActiveStartUptime(Lcom/android/internal/app/procstats/AssociationState;J)V

    goto :goto_4a

    .line 203
    :cond_41
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-nez v1, :cond_4a

    .line 204
    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveNesting:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveNesting:I

    .line 206
    :cond_4a
    :goto_4a
    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    iget v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    if-eq v1, v3, :cond_98

    .line 207
    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_76

    .line 210
    iget-wide v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    add-long/2addr v3, p1

    iget-wide v7, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    sub-long/2addr v3, v7

    .line 211
    .local v3, "addedDuration":J
    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    .line 212
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_62

    .line 213
    const/4 v0, 0x1

    .line 215
    :cond_62
    cmp-long v1, v3, v5

    if-eqz v1, :cond_76

    .line 216
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-nez v1, :cond_6d

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->makeDurations()V

    .line 219
    :cond_6d
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v7, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    invoke-virtual {v1, v7, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 220
    iput-wide v5, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    .line 223
    .end local v3    # "addedDuration":J
    :cond_76
    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    goto :goto_98

    .line 225
    :cond_7b
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_98

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActive while not tracking: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ProcessStats"

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_98
    :goto_98
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_a7

    .line 229
    invoke-direct {p0, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getCommonSourceState(Z)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v1

    .line 230
    .local v1, "commonSource":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    if-eqz v1, :cond_a7

    if-eqz v0, :cond_a7

    .line 231
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->startActive(J)V

    .line 234
    .end local v1    # "commonSource":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    :cond_a7
    return-void
.end method

.method blacklist stop(J)J
    .registers 7
    .param p1, "now"    # J

    .line 177
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    .line 178
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    if-nez v0, :cond_20

    .line 179
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_14

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 182
    :cond_14
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopTracking(J)V

    .line 185
    :cond_20
    return-wide p1
.end method

.method public blacklist stop()V
    .registers 4

    .line 167
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stop(J)J

    move-result-wide v0

    .line 168
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v2, :cond_14

    .line 169
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getCommonSourceState(Z)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v2

    .line 170
    .local v2, "commonSource":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    if-eqz v2, :cond_14

    .line 171
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stop(J)J

    .line 174
    .end local v2    # "commonSource":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    :cond_14
    return-void
.end method

.method blacklist stopActive(J)V
    .registers 15
    .param p1, "now"    # J

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "stopActive":Z
    iget-wide v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_8b

    .line 239
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_2b

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopActive while not tracking: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ProcessStats"

    invoke-static {v5, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_2b
    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveNesting:I

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveNesting:I

    .line 243
    iget-wide v6, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    sub-long v6, p1, v6

    .line 244
    .local v6, "addedDuration":J
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-nez v1, :cond_40

    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveNesting:I

    if-nez v1, :cond_3e

    goto :goto_40

    :cond_3e
    move-wide v8, p1

    goto :goto_41

    :cond_40
    :goto_40
    move-wide v8, v3

    :goto_41
    iput-wide v8, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    .line 245
    iget-wide v8, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    cmp-long v1, v8, v3

    if-nez v1, :cond_4b

    move v1, v5

    goto :goto_4c

    :cond_4b
    move v1, v2

    :goto_4c
    move v0, v1

    .line 246
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v1, :cond_59

    .line 247
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v8, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    invoke-virtual {v1, v8, v6, v7}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_5e

    .line 249
    :cond_59
    iget-wide v8, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    .line 251
    :goto_5e
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_8b

    .line 252
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v1}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalActiveNesting(Lcom/android/internal/app/procstats/AssociationState;)I

    move-result v8

    sub-int/2addr v8, v5

    invoke-static {v1, v8}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fputmTotalActiveNesting(Lcom/android/internal/app/procstats/AssociationState;I)V

    .line 253
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v1}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalActiveNesting(Lcom/android/internal/app/procstats/AssociationState;)I

    move-result v1

    if-nez v1, :cond_8b

    .line 254
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v1}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalActiveDuration(Lcom/android/internal/app/procstats/AssociationState;)J

    move-result-wide v8

    iget-object v5, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v5}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fgetmTotalActiveStartUptime(Lcom/android/internal/app/procstats/AssociationState;)J

    move-result-wide v10

    sub-long v10, p1, v10

    add-long/2addr v8, v10

    invoke-static {v1, v8, v9}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fputmTotalActiveDuration(Lcom/android/internal/app/procstats/AssociationState;J)V

    .line 256
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    invoke-static {v1, v3, v4}, Lcom/android/internal/app/procstats/AssociationState;->-$$Nest$fputmTotalActiveStartUptime(Lcom/android/internal/app/procstats/AssociationState;J)V

    .line 272
    .end local v6    # "addedDuration":J
    :cond_8b
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_9a

    .line 273
    invoke-direct {p0, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getCommonSourceState(Z)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v1

    .line 274
    .local v1, "commonSource":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    if-eqz v1, :cond_9a

    if-eqz v0, :cond_9a

    .line 275
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopActive(J)V

    .line 278
    .end local v1    # "commonSource":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    :cond_9a
    return-void
.end method

.method blacklist stopActiveIfNecessary(IJ)Z
    .registers 6
    .param p1, "curSeq"    # I
    .param p2, "now"    # J

    .line 281
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    if-ne v0, p1, :cond_d

    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_b

    goto :goto_d

    .line 289
    :cond_b
    const/4 v0, 0x0

    return v0

    .line 285
    :cond_d
    :goto_d
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopActive(J)V

    .line 286
    invoke-direct {p0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stopTrackingProcState()V

    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 466
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SourceState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 467
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v3, v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget v3, v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_52

    .line 469
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    .line 470
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    :cond_52
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist trackProcState(IIJ)V
    .registers 8
    .param p1, "procState"    # I
    .param p2, "seq"    # I
    .param p3, "now"    # J

    .line 114
    move v0, p1

    .line 115
    .local v0, "processState":I
    sget-object v1, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    aget p1, v1, p1

    .line 116
    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    if-eq p2, v1, :cond_e

    .line 117
    iput p2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    .line 118
    iput p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    goto :goto_14

    .line 119
    :cond_e
    iget v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    if-ge p1, v1, :cond_14

    .line 120
    iput p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    .line 122
    :cond_14
    :goto_14
    const/16 v1, 0xc

    const/4 v2, 0x1

    if-ge p1, v1, :cond_2c

    .line 127
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    if-nez v1, :cond_2c

    .line 128
    iput-boolean v2, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    .line 129
    iput-wide p3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mTrackingUptime:J

    .line 130
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_2c

    .line 131
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTrackingAssociations:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mAssociationState:Lcom/android/internal/app/procstats/AssociationState;

    if-eqz v1, :cond_39

    .line 136
    invoke-direct {p0, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->getCommonSourceState(Z)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v1

    .line 137
    .local v1, "commonSource":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    if-eqz v1, :cond_39

    .line 138
    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->trackProcState(IIJ)V

    .line 141
    .end local v1    # "commonSource":Lcom/android/internal/app/procstats/AssociationState$SourceState;
    :cond_39
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 429
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 431
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v0, :cond_1d

    .line 433
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_2b

    .line 436
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 440
    :goto_2b
    return-void
.end method
