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
.field private static final TAG:Ljava/lang/String; = "CueList"


# instance fields
.field public DEBUG:Z

.field private mCues:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/media/SubtitleTrack$CueList;)Ljava/util/SortedMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/SubtitleTrack$CueList;Landroid/media/SubtitleTrack$Cue;J)V
    .locals 0
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;
    .param p2, "timeMs"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    #@3
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 398
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/media/SubtitleTrack$CueList;->DEBUG:Z

    #@6
    .line 574
    new-instance v0, Ljava/util/TreeMap;

    #@8
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@b
    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    #@d
    .line 573
    return-void
.end method

.method private addEvent(Landroid/media/SubtitleTrack$Cue;J)Z
    .locals 4
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;
    .param p2, "timeMs"    # J

    #@0
    .prologue
    .line 401
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    #@2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/Vector;

    #@c
    .line 402
    .local v0, "cues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    if-nez v0, :cond_1

    #@e
    .line 403
    new-instance v0, Ljava/util/Vector;

    #@10
    .end local v0    # "cues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    const/4 v1, 0x2

    #@11
    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    #@14
    .line 404
    .restart local v0    # "cues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    #@16
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 410
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@20
    .line 411
    const/4 v1, 0x1

    #@21
    return v1

    #@22
    .line 405
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_0

    #@28
    .line 407
    const/4 v1, 0x0

    #@29
    return v1
.end method

.method private removeEvent(Landroid/media/SubtitleTrack$Cue;J)V
    .locals 4
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;
    .param p2, "timeMs"    # J

    #@0
    .prologue
    .line 415
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    #@2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/Vector;

    #@c
    .line 416
    .local v0, "cues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    if-eqz v0, :cond_0

    #@e
    .line 417
    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    #@11
    .line 418
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_0

    #@17
    .line 419
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    #@19
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v1, v2}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 414
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Landroid/media/SubtitleTrack$Cue;)V
    .locals 10
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;

    #@0
    .prologue
    .line 426
    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    #@2
    iget-wide v6, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    #@4
    cmp-long v4, v4, v6

    #@6
    if-ltz v4, :cond_0

    #@8
    .line 427
    return-void

    #@9
    .line 429
    :cond_0
    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    #@b
    invoke-direct {p0, p1, v4, v5}, Landroid/media/SubtitleTrack$CueList;->addEvent(Landroid/media/SubtitleTrack$Cue;J)Z

    #@e
    move-result v4

    #@f
    if-nez v4, :cond_1

    #@11
    .line 430
    return-void

    #@12
    .line 433
    :cond_1
    iget-wide v0, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    #@14
    .line 434
    .local v0, "lastTimeMs":J
    iget-object v4, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    #@16
    if-eqz v4, :cond_3

    #@18
    .line 435
    iget-object v5, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    #@1a
    const/4 v4, 0x0

    #@1b
    array-length v6, v5

    #@1c
    :goto_0
    if-ge v4, v6, :cond_3

    #@1e
    aget-wide v2, v5, v4

    #@20
    .line 436
    .local v2, "timeMs":J
    cmp-long v7, v2, v0

    #@22
    if-lez v7, :cond_2

    #@24
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    #@26
    cmp-long v7, v2, v8

    #@28
    if-gez v7, :cond_2

    #@2a
    .line 437
    invoke-direct {p0, p1, v2, v3}, Landroid/media/SubtitleTrack$CueList;->addEvent(Landroid/media/SubtitleTrack$Cue;J)Z

    #@2d
    .line 438
    move-wide v0, v2

    #@2e
    .line 435
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@30
    goto :goto_0

    #@31
    .line 443
    .end local v2    # "timeMs":J
    :cond_3
    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    #@33
    invoke-direct {p0, p1, v4, v5}, Landroid/media/SubtitleTrack$CueList;->addEvent(Landroid/media/SubtitleTrack$Cue;J)Z

    #@36
    .line 424
    return-void
.end method

.method public entriesBetween(JJ)Ljava/lang/Iterable;
    .locals 7
    .param p1, "lastTimeMs"    # J
    .param p3, "timeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 458
    new-instance v0, Landroid/media/SubtitleTrack$CueList$1;

    #@2
    move-object v1, p0

    #@3
    move-wide v2, p1

    #@4
    move-wide v4, p3

    #@5
    invoke-direct/range {v0 .. v5}, Landroid/media/SubtitleTrack$CueList$1;-><init>(Landroid/media/SubtitleTrack$CueList;JJ)V

    #@8
    return-object v0
.end method

.method public nextTimeAfter(J)J
    .locals 9
    .param p1, "timeMs"    # J

    #@0
    .prologue
    const-wide/16 v6, -0x1

    #@2
    .line 473
    const/4 v2, 0x0

    #@3
    .line 475
    .local v2, "tail":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;>;"
    :try_start_0
    iget-object v3, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    #@5
    const-wide/16 v4, 0x1

    #@7
    add-long/2addr v4, p1

    #@8
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b
    move-result-object v4

    #@c
    invoke-interface {v3, v4}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    #@f
    move-result-object v2

    #@10
    .line 476
    .local v2, "tail":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;>;"
    if-eqz v2, :cond_0

    #@12
    .line 477
    invoke-interface {v2}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Ljava/lang/Long;

    #@18
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result-wide v4

    #@1c
    return-wide v4

    #@1d
    .line 479
    :cond_0
    return-wide v6

    #@1e
    .line 483
    .end local v2    # "tail":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;>;"
    :catch_0
    move-exception v1

    #@1f
    .line 484
    .local v1, "e":Ljava/util/NoSuchElementException;
    return-wide v6

    #@20
    .line 481
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v0

    #@21
    .line 482
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-wide v6
.end method

.method public remove(Landroid/media/SubtitleTrack$Cue;)V
    .locals 5
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;

    #@0
    .prologue
    .line 447
    iget-wide v2, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    #@2
    invoke-direct {p0, p1, v2, v3}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    #@5
    .line 448
    iget-object v2, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 449
    iget-object v3, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    #@b
    const/4 v2, 0x0

    #@c
    array-length v4, v3

    #@d
    :goto_0
    if-ge v2, v4, :cond_0

    #@f
    aget-wide v0, v3, v2

    #@11
    .line 450
    .local v0, "timeMs":J
    invoke-direct {p0, p1, v0, v1}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    #@14
    .line 449
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 453
    .end local v0    # "timeMs":J
    :cond_0
    iget-wide v2, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    #@19
    invoke-direct {p0, p1, v2, v3}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    #@1c
    .line 446
    return-void
.end method
