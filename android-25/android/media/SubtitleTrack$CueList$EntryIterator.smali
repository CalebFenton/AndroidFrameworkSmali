.class Landroid/media/SubtitleTrack$CueList$EntryIterator;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleTrack$CueList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Long;",
        "Landroid/media/SubtitleTrack$Cue;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mCurrentTimeMs:J

.field private mDone:Z

.field private mLastEntry:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field private mLastListIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field private mListIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field private mRemainingCues:Ljava/util/SortedMap;
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

.field final synthetic this$1:Landroid/media/SubtitleTrack$CueList;


# direct methods
.method public constructor <init>(Landroid/media/SubtitleTrack$CueList;Ljava/util/SortedMap;)V
    .locals 3
    .param p1, "this$1"    # Landroid/media/SubtitleTrack$CueList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 533
    .local p2, "cues":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;>;"
    iput-object p1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$1:Landroid/media/SubtitleTrack$CueList;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 534
    iget-boolean v0, p1, Landroid/media/SubtitleTrack$CueList;->DEBUG:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    const-string/jumbo v0, "CueList"

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, ""

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 535
    :cond_0
    iput-object p2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    #@25
    .line 536
    const/4 v0, 0x0

    #@26
    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    #@28
    .line 537
    invoke-direct {p0}, Landroid/media/SubtitleTrack$CueList$EntryIterator;->nextKey()V

    #@2b
    .line 533
    return-void
.end method

.method private nextKey()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 543
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    #@3
    if-nez v2, :cond_1

    #@5
    .line 544
    new-instance v2, Ljava/util/NoSuchElementException;

    #@7
    const-string/jumbo v3, ""

    #@a
    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 556
    :catch_0
    move-exception v1

    #@f
    .line 557
    .local v1, "e":Ljava/util/NoSuchElementException;
    const/4 v2, 0x1

    #@10
    iput-boolean v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mDone:Z

    #@12
    .line 558
    iput-object v8, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    #@14
    .line 559
    iput-object v8, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    #@16
    .line 560
    return-void

    #@17
    .line 546
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    #@19
    invoke-interface {v2}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Ljava/lang/Long;

    #@1f
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@22
    move-result-wide v2

    #@23
    iput-wide v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    #@25
    .line 548
    iget-object v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    #@27
    iget-wide v4, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    #@29
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2c
    move-result-object v3

    #@2d
    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Ljava/util/Vector;

    #@33
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v2

    #@37
    .line 547
    iput-object v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    #@39
    .line 551
    :try_start_2
    iget-object v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    #@3b
    iget-wide v4, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    #@3d
    const-wide/16 v6, 0x1

    #@3f
    add-long/2addr v4, v6

    #@40
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@43
    move-result-object v3

    #@44
    invoke-interface {v2, v3}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    #@47
    move-result-object v2

    #@48
    .line 550
    iput-object v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    #@4a
    .line 555
    :goto_0
    const/4 v2, 0x0

    #@4b
    :try_start_3
    iput-boolean v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mDone:Z
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0

    #@4d
    .line 562
    iget-object v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    #@4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_0

    #@55
    .line 540
    return-void

    #@56
    .line 552
    :catch_1
    move-exception v0

    #@57
    .line 553
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    #@58
    :try_start_4
    iput-object v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    #@5a
    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 491
    iget-boolean v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mDone:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method public next()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 496
    iget-boolean v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mDone:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 497
    new-instance v0, Ljava/util/NoSuchElementException;

    #@6
    const-string/jumbo v1, ""

    #@9
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 499
    :cond_0
    new-instance v1, Landroid/util/Pair;

    #@f
    .line 500
    iget-wide v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    #@11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14
    move-result-object v2

    #@15
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    #@17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/media/SubtitleTrack$Cue;

    #@1d
    .line 499
    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@20
    iput-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    #@22
    .line 501
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    #@24
    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    #@26
    .line 502
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    #@28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v0

    #@2c
    if-nez v0, :cond_1

    #@2e
    .line 503
    invoke-direct {p0}, Landroid/media/SubtitleTrack$CueList$EntryIterator;->nextKey()V

    #@31
    .line 505
    :cond_1
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    #@33
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 495
    invoke-virtual {p0}, Landroid/media/SubtitleTrack$CueList$EntryIterator;->next()Landroid/util/Pair;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .locals 10

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 511
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 512
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    #@8
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@a
    check-cast v1, Landroid/media/SubtitleTrack$Cue;

    #@c
    iget-wide v6, v1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    #@e
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    #@10
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@12
    check-cast v1, Ljava/lang/Long;

    #@14
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@17
    move-result-wide v8

    #@18
    cmp-long v1, v6, v8

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 513
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1e
    const-string/jumbo v4, ""

    #@21
    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 517
    :cond_1
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@2a
    .line 518
    iput-object v5, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    #@2c
    .line 519
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$1:Landroid/media/SubtitleTrack$CueList;

    #@2e
    invoke-static {v1}, Landroid/media/SubtitleTrack$CueList;->-get0(Landroid/media/SubtitleTrack$CueList;)Ljava/util/SortedMap;

    #@31
    move-result-object v1

    #@32
    iget-object v5, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    #@34
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@36
    invoke-interface {v1, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    check-cast v1, Ljava/util/Vector;

    #@3c
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@3f
    move-result v1

    #@40
    if-nez v1, :cond_2

    #@42
    .line 520
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$1:Landroid/media/SubtitleTrack$CueList;

    #@44
    invoke-static {v1}, Landroid/media/SubtitleTrack$CueList;->-get0(Landroid/media/SubtitleTrack$CueList;)Ljava/util/SortedMap;

    #@47
    move-result-object v1

    #@48
    iget-object v5, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    #@4a
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@4c
    invoke-interface {v1, v5}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    .line 524
    :cond_2
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    #@51
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@53
    check-cast v0, Landroid/media/SubtitleTrack$Cue;

    #@55
    .line 525
    .local v0, "cue":Landroid/media/SubtitleTrack$Cue;
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$1:Landroid/media/SubtitleTrack$CueList;

    #@57
    iget-wide v6, v0, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    #@59
    invoke-static {v1, v0, v6, v7}, Landroid/media/SubtitleTrack$CueList;->-wrap0(Landroid/media/SubtitleTrack$CueList;Landroid/media/SubtitleTrack$Cue;J)V

    #@5c
    .line 526
    iget-object v1, v0, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    #@5e
    if-eqz v1, :cond_3

    #@60
    .line 527
    iget-object v5, v0, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    #@62
    array-length v6, v5

    #@63
    move v1, v4

    #@64
    :goto_0
    if-ge v1, v6, :cond_3

    #@66
    aget-wide v2, v5, v1

    #@68
    .line 528
    .local v2, "timeMs":J
    iget-object v4, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$1:Landroid/media/SubtitleTrack$CueList;

    #@6a
    invoke-static {v4, v0, v2, v3}, Landroid/media/SubtitleTrack$CueList;->-wrap0(Landroid/media/SubtitleTrack$CueList;Landroid/media/SubtitleTrack$Cue;J)V

    #@6d
    .line 527
    add-int/lit8 v1, v1, 0x1

    #@6f
    goto :goto_0

    #@70
    .line 509
    .end local v2    # "timeMs":J
    :cond_3
    return-void
.end method
