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
        "Ljava/util/Iterator<",
        "Landroid/util/Pair<",
        "Ljava/lang/Long;",
        "Landroid/media/SubtitleTrack$Cue;",
        ">;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o mCurrentTimeMs:J

.field private greylist-max-o mDone:Z

.field private greylist-max-o mLastEntry:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mLastListIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mListIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRemainingCues:Ljava/util/SortedMap;
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

.field final synthetic blacklist this$0:Landroid/media/SubtitleTrack$CueList;


# direct methods
.method public constructor blacklist <init>(Landroid/media/SubtitleTrack$CueList;Ljava/util/SortedMap;)V
    .registers 5
    .param p1, "this$0"    # Landroid/media/SubtitleTrack$CueList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;)V"
        }
    .end annotation

    .line 536
    .local p2, "cues":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;>;"
    iput-object p1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$0:Landroid/media/SubtitleTrack$CueList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iget-boolean v0, p1, Landroid/media/SubtitleTrack$CueList;->DEBUG:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CueList"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_21
    iput-object p2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    .line 540
    invoke-direct {p0}, Landroid/media/SubtitleTrack$CueList$EntryIterator;->nextKey()V

    .line 541
    return-void
.end method

.method private greylist-max-o nextKey()V
    .registers 7

    .line 546
    nop

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    if-eqz v1, :cond_4a

    .line 549
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    .line 550
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    iget-wide v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    .line 551
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;
    :try_end_28
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_28} :catch_52

    .line 553
    :try_start_28
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    iget-wide v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 554
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iput-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_39} :catch_3a
    .catch Ljava/util/NoSuchElementException; {:try_start_28 .. :try_end_39} :catch_52

    .line 557
    goto :goto_3d

    .line 555
    :catch_3a
    move-exception v1

    .line 556
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3b
    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    .line 558
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3d
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mDone:Z
    :try_end_40
    .catch Ljava/util/NoSuchElementException; {:try_start_3b .. :try_end_40} :catch_52

    .line 564
    nop

    .line 565
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    return-void

    .line 547
    :cond_4a
    :try_start_4a
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/SubtitleTrack$CueList$EntryIterator;
    throw v1
    :try_end_52
    .catch Ljava/util/NoSuchElementException; {:try_start_4a .. :try_end_52} :catch_52

    .line 559
    .restart local p0    # "this":Landroid/media/SubtitleTrack$CueList$EntryIterator;
    :catch_52
    move-exception v1

    .line 560
    .local v1, "e":Ljava/util/NoSuchElementException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mDone:Z

    .line 561
    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    .line 562
    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    .line 563
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 494
    iget-boolean v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mDone:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist next()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation

    .line 499
    iget-boolean v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mDone:Z

    if-nez v0, :cond_2b

    .line 502
    new-instance v0, Landroid/util/Pair;

    iget-wide v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    .line 503
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/SubtitleTrack$Cue;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    .line 504
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    .line 505
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_28

    .line 506
    invoke-direct {p0}, Landroid/media/SubtitleTrack$CueList$EntryIterator;->nextKey()V

    .line 508
    :cond_28
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    return-object v0

    .line 500
    :cond_2b
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 491
    invoke-virtual {p0}, Landroid/media/SubtitleTrack$CueList$EntryIterator;->next()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 8

    .line 514
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_67

    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack$Cue;

    iget-wide v0, v0, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-object v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 515
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_67

    .line 520
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    .line 522
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$0:Landroid/media/SubtitleTrack$CueList;

    invoke-static {v0}, Landroid/media/SubtitleTrack$CueList;->-$$Nest$fgetmCues(Landroid/media/SubtitleTrack$CueList;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_45

    .line 523
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$0:Landroid/media/SubtitleTrack$CueList;

    invoke-static {v0}, Landroid/media/SubtitleTrack$CueList;->-$$Nest$fgetmCues(Landroid/media/SubtitleTrack$CueList;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_45
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack$Cue;

    .line 528
    .local v0, "cue":Landroid/media/SubtitleTrack$Cue;
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$0:Landroid/media/SubtitleTrack$CueList;

    iget-wide v2, v0, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-static {v1, v0, v2, v3}, Landroid/media/SubtitleTrack$CueList;->-$$Nest$mremoveEvent(Landroid/media/SubtitleTrack$CueList;Landroid/media/SubtitleTrack$Cue;J)V

    .line 529
    iget-object v1, v0, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v1, :cond_66

    .line 530
    iget-object v1, v0, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5a
    if-ge v3, v2, :cond_66

    aget-wide v4, v1, v3

    .line 531
    .local v4, "timeMs":J
    iget-object v6, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$0:Landroid/media/SubtitleTrack$CueList;

    invoke-static {v6, v0, v4, v5}, Landroid/media/SubtitleTrack$CueList;->-$$Nest$mremoveEvent(Landroid/media/SubtitleTrack$CueList;Landroid/media/SubtitleTrack$Cue;J)V

    .line 530
    .end local v4    # "timeMs":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 534
    :cond_66
    return-void

    .line 516
    .end local v0    # "cue":Landroid/media/SubtitleTrack$Cue;
    :cond_67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
