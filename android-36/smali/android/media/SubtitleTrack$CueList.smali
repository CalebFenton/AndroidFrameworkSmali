.class Landroid/media/SubtitleTrack$CueList;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CueList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleTrack$CueList$EntryIterator;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "CueList"


# instance fields
.field public greylist-max-o DEBUG:Z

.field private greylist-max-o mCues:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCues(Landroid/media/SubtitleTrack$CueList;)Ljava/util/SortedMap;
    .registers 1

    iget-object p0, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveEvent(Landroid/media/SubtitleTrack$CueList;Landroid/media/SubtitleTrack$Cue;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleTrack$CueList;->DEBUG:Z

    .line 577
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    .line 578
    return-void
.end method

.method private greylist-max-o addEvent(Landroid/media/SubtitleTrack$Cue;J)Z
    .registers 7
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;
    .param p2, "timeMs"    # J

    .line 404
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 405
    .local v0, "cues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    if-nez v0, :cond_1f

    .line 406
    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    move-object v0, v1

    .line 407
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 408
    :cond_1f
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 410
    const/4 v1, 0x0

    return v1

    .line 413
    :cond_27
    :goto_27
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 414
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o removeEvent(Landroid/media/SubtitleTrack$Cue;J)V
    .registers 7
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;
    .param p2, "timeMs"    # J

    .line 418
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 419
    .local v0, "cues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    if-eqz v0, :cond_20

    .line 420
    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 421
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_20

    .line 422
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_20
    return-void
.end method


# virtual methods
.method public greylist-max-o add(Landroid/media/SubtitleTrack$Cue;)V
    .registers 11
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;

    .line 429
    iget-wide v0, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-wide v2, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    .line 430
    return-void

    .line 432
    :cond_9
    iget-wide v0, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-direct {p0, p1, v0, v1}, Landroid/media/SubtitleTrack$CueList;->addEvent(Landroid/media/SubtitleTrack$Cue;J)Z

    move-result v0

    if-nez v0, :cond_12

    .line 433
    return-void

    .line 436
    :cond_12
    iget-wide v0, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    .line 437
    .local v0, "lastTimeMs":J
    iget-object v2, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v2, :cond_31

    .line 438
    iget-object v2, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_31

    aget-wide v5, v2, v4

    .line 439
    .local v5, "timeMs":J
    cmp-long v7, v5, v0

    if-lez v7, :cond_2e

    iget-wide v7, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_2e

    .line 440
    invoke-direct {p0, p1, v5, v6}, Landroid/media/SubtitleTrack$CueList;->addEvent(Landroid/media/SubtitleTrack$Cue;J)Z

    .line 441
    move-wide v0, v5

    .line 438
    .end local v5    # "timeMs":J
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 446
    :cond_31
    iget-wide v2, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-direct {p0, p1, v2, v3}, Landroid/media/SubtitleTrack$CueList;->addEvent(Landroid/media/SubtitleTrack$Cue;J)Z

    .line 447
    return-void
.end method

.method public greylist-max-o entriesBetween(JJ)Ljava/lang/Iterable;
    .registers 11
    .param p1, "lastTimeMs"    # J
    .param p3, "timeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/lang/Iterable<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation

    .line 461
    new-instance v0, Landroid/media/SubtitleTrack$CueList$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "lastTimeMs":J
    .end local p3    # "timeMs":J
    .local v2, "lastTimeMs":J
    .local v4, "timeMs":J
    invoke-direct/range {v0 .. v5}, Landroid/media/SubtitleTrack$CueList$1;-><init>(Landroid/media/SubtitleTrack$CueList;JJ)V

    return-object v0
.end method

.method public greylist-max-o nextTimeAfter(J)J
    .registers 9
    .param p1, "timeMs"    # J

    .line 476
    const/4 v0, 0x0

    .line 478
    .local v0, "tail":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;>;"
    const-wide/16 v1, -0x1

    :try_start_3
    iget-object v3, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    const-wide/16 v4, 0x1

    add-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    move-object v0, v3

    .line 479
    if-eqz v0, :cond_1e

    .line 480
    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_1d} :catch_21
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_1d} :catch_1f

    return-wide v1

    .line 482
    :cond_1e
    return-wide v1

    .line 486
    :catch_1f
    move-exception v3

    .line 487
    .local v3, "e":Ljava/util/NoSuchElementException;
    return-wide v1

    .line 484
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    :catch_21
    move-exception v3

    .line 485
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    return-wide v1
.end method

.method public greylist-max-o remove(Landroid/media/SubtitleTrack$Cue;)V
    .registers 7
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;

    .line 450
    iget-wide v0, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-direct {p0, p1, v0, v1}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    .line 451
    iget-object v0, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v0, :cond_17

    .line 452
    iget-object v0, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-wide v3, v0, v2

    .line 453
    .local v3, "timeMs":J
    invoke-direct {p0, p1, v3, v4}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    .line 452
    .end local v3    # "timeMs":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 456
    :cond_17
    iget-wide v0, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-direct {p0, p1, v0, v1}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    .line 457
    return-void
.end method
