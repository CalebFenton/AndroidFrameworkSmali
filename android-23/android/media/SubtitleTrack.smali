.class public abstract Landroid/media/SubtitleTrack;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Landroid/media/MediaTimeProvider$OnMediaTimeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleTrack$CueList;,
        Landroid/media/SubtitleTrack$Cue;,
        Landroid/media/SubtitleTrack$Run;,
        Landroid/media/SubtitleTrack$RenderingWidget;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SubtitleTrack"


# instance fields
.field public DEBUG:Z

.field protected final mActiveCues:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field protected mCues:Landroid/media/SubtitleTrack$CueList;

.field private mFormat:Landroid/media/MediaFormat;

.field protected mHandler:Landroid/os/Handler;

.field private mLastTimeMs:J

.field private mLastUpdateTimeMs:J

.field private mNextScheduledTimeMs:J

.field private mRunnable:Ljava/lang/Runnable;

.field protected final mRunsByEndTime:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/media/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRunsByID:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/media/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field protected mTimeProvider:Landroid/media/MediaTimeProvider;

.field protected mVisible:Z


# direct methods
.method static synthetic -set0(Landroid/media/SubtitleTrack;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    #@2
    return-object p1
.end method

.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 46
    new-instance v0, Landroid/util/LongSparseArray;

    #@7
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    #@a
    iput-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    #@c
    .line 48
    new-instance v0, Landroid/util/LongSparseArray;

    #@e
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    #@11
    iput-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    #@13
    .line 53
    new-instance v0, Ljava/util/Vector;

    #@15
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@18
    iput-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    #@1a
    .line 58
    const/4 v0, 0x0

    #@1b
    iput-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    #@1d
    .line 61
    new-instance v0, Landroid/os/Handler;

    #@1f
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@22
    iput-object v0, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    #@24
    .line 77
    iput-wide v2, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    #@26
    .line 66
    iput-object p1, p0, Landroid/media/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    #@28
    .line 67
    new-instance v0, Landroid/media/SubtitleTrack$CueList;

    #@2a
    invoke-direct {v0}, Landroid/media/SubtitleTrack$CueList;-><init>()V

    #@2d
    iput-object v0, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    #@2f
    .line 68
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    #@32
    .line 69
    iput-wide v2, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    #@34
    .line 65
    return-void
.end method

.method private removeRunsByEndTimeIndex(I)V
    .locals 8
    .param p1, "ix"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 170
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    #@3
    invoke-virtual {v4, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    check-cast v3, Landroid/media/SubtitleTrack$Run;

    #@9
    .line 171
    .local v3, "run":Landroid/media/SubtitleTrack$Run;
    :goto_0
    if-eqz v3, :cond_1

    #@b
    .line 172
    iget-object v0, v3, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    #@d
    .line 173
    .local v0, "cue":Landroid/media/SubtitleTrack$Cue;
    :goto_1
    if-eqz v0, :cond_0

    #@f
    .line 174
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    #@11
    invoke-virtual {v4, v0}, Landroid/media/SubtitleTrack$CueList;->remove(Landroid/media/SubtitleTrack$Cue;)V

    #@14
    .line 175
    iget-object v1, v0, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    #@16
    .line 176
    .local v1, "nextCue":Landroid/media/SubtitleTrack$Cue;
    iput-object v5, v0, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    #@18
    .line 177
    move-object v0, v1

    #@19
    goto :goto_1

    #@1a
    .line 179
    .end local v1    # "nextCue":Landroid/media/SubtitleTrack$Cue;
    :cond_0
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    #@1c
    iget-wide v6, v3, Landroid/media/SubtitleTrack$Run;->mRunID:J

    #@1e
    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseArray;->remove(J)V

    #@21
    .line 180
    iget-object v2, v3, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@23
    .line 181
    .local v2, "nextRun":Landroid/media/SubtitleTrack$Run;
    iput-object v5, v3, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@25
    .line 182
    iput-object v5, v3, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    #@27
    .line 183
    move-object v3, v2

    #@28
    goto :goto_0

    #@29
    .line 185
    .end local v0    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v2    # "nextRun":Landroid/media/SubtitleTrack$Run;
    :cond_1
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    #@2b
    invoke-virtual {v4, p1}, Landroid/util/LongSparseArray;->removeAt(I)V

    #@2e
    .line 169
    return-void
.end method

.method private declared-synchronized takeTime(J)V
    .locals 1
    .param p1, "timeMs"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 200
    :try_start_0
    iput-wide p1, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 199
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method


# virtual methods
.method protected declared-synchronized addCue(Landroid/media/SubtitleTrack$Cue;)Z
    .locals 12
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 305
    :try_start_0
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    #@3
    invoke-virtual {v7, p1}, Landroid/media/SubtitleTrack$CueList;->add(Landroid/media/SubtitleTrack$Cue;)V

    #@6
    .line 307
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    #@8
    const-wide/16 v10, 0x0

    #@a
    cmp-long v7, v8, v10

    #@c
    if-eqz v7, :cond_1

    #@e
    .line 308
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    #@10
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    #@12
    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/media/SubtitleTrack$Run;

    #@18
    .line 309
    .local v1, "run":Landroid/media/SubtitleTrack$Run;
    if-nez v1, :cond_6

    #@1a
    .line 310
    new-instance v1, Landroid/media/SubtitleTrack$Run;

    #@1c
    .end local v1    # "run":Landroid/media/SubtitleTrack$Run;
    const/4 v7, 0x0

    #@1d
    invoke-direct {v1, v7}, Landroid/media/SubtitleTrack$Run;-><init>(Landroid/media/SubtitleTrack$Run;)V

    #@20
    .line 311
    .restart local v1    # "run":Landroid/media/SubtitleTrack$Run;
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    #@22
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    #@24
    invoke-virtual {v7, v8, v9, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@27
    .line 312
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    #@29
    iput-wide v8, v1, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    #@2b
    .line 318
    :cond_0
    :goto_0
    iget-object v7, v1, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    #@2d
    iput-object v7, p1, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    #@2f
    .line 319
    iput-object p1, v1, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    #@31
    .line 323
    .end local v1    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_1
    const-wide/16 v2, -0x1

    #@33
    .line 324
    .local v2, "nowMs":J
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    if-eqz v7, :cond_2

    #@37
    .line 326
    :try_start_1
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@39
    .line 327
    const/4 v8, 0x0

    #@3a
    const/4 v9, 0x1

    #@3b
    .line 326
    invoke-interface {v7, v8, v9}, Landroid/media/MediaTimeProvider;->getCurrentTimeUs(ZZ)J

    #@3e
    move-result-wide v8

    #@3f
    .line 327
    const-wide/16 v10, 0x3e8

    #@41
    .line 326
    div-long v2, v8, v10
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    .line 333
    :cond_2
    :goto_1
    :try_start_2
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    #@45
    if-eqz v7, :cond_3

    #@47
    const-string/jumbo v7, "SubtitleTrack"

    #@4a
    new-instance v8, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v9, "mVisible="

    #@52
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v8

    #@56
    iget-boolean v9, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    #@58
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v8

    #@5c
    const-string/jumbo v9, ", "

    #@5f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v8

    #@63
    .line 334
    iget-wide v10, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    #@65
    .line 333
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@68
    move-result-object v8

    #@69
    .line 334
    const-string/jumbo v9, " <= "

    #@6c
    .line 333
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v8

    #@70
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@73
    move-result-object v8

    #@74
    .line 334
    const-string/jumbo v9, ", "

    #@77
    .line 333
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v8

    #@7b
    .line 335
    iget-wide v10, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    #@7d
    .line 333
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@80
    move-result-object v8

    #@81
    .line 335
    const-string/jumbo v9, " >= "

    #@84
    .line 333
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v8

    #@88
    .line 335
    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    #@8a
    .line 333
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v8

    #@8e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v8

    #@92
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@95
    .line 337
    :cond_3
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    #@97
    if-eqz v7, :cond_8

    #@99
    .line 338
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    #@9b
    cmp-long v7, v8, v2

    #@9d
    if-gtz v7, :cond_8

    #@9f
    .line 340
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    #@a1
    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    #@a3
    cmp-long v7, v8, v10

    #@a5
    if-ltz v7, :cond_8

    #@a7
    .line 341
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    #@a9
    if-eqz v7, :cond_4

    #@ab
    .line 342
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    #@ad
    iget-object v8, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    #@af
    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@b2
    .line 344
    :cond_4
    move-object v6, p0

    #@b3
    .line 345
    .local v6, "track":Landroid/media/SubtitleTrack;
    move-wide v4, v2

    #@b4
    .line 346
    .local v4, "thenMs":J
    new-instance v7, Landroid/media/SubtitleTrack$1;

    #@b6
    invoke-direct {v7, p0, v6, v4, v5}, Landroid/media/SubtitleTrack$1;-><init>(Landroid/media/SubtitleTrack;Landroid/media/SubtitleTrack;J)V

    #@b9
    iput-object v7, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    #@bb
    .line 360
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    #@bd
    iget-object v8, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    #@bf
    const-wide/16 v10, 0xa

    #@c1
    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@c4
    move-result v7

    #@c5
    if-eqz v7, :cond_7

    #@c7
    .line 361
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    #@c9
    if-eqz v7, :cond_5

    #@cb
    const-string/jumbo v7, "SubtitleTrack"

    #@ce
    const-string/jumbo v8, "scheduling update"

    #@d1
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d4
    .line 365
    :cond_5
    :goto_2
    const/4 v7, 0x1

    #@d5
    monitor-exit p0

    #@d6
    return v7

    #@d7
    .line 313
    .end local v2    # "nowMs":J
    .end local v4    # "thenMs":J
    .end local v6    # "track":Landroid/media/SubtitleTrack;
    .restart local v1    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_6
    :try_start_3
    iget-wide v8, v1, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    #@d9
    iget-wide v10, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    #@db
    cmp-long v7, v8, v10

    #@dd
    if-gez v7, :cond_0

    #@df
    .line 314
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    #@e1
    iput-wide v8, v1, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@e3
    goto/16 :goto_0

    #@e5
    .end local v1    # "run":Landroid/media/SubtitleTrack$Run;
    :catchall_0
    move-exception v7

    #@e6
    monitor-exit p0

    #@e7
    throw v7

    #@e8
    .line 363
    .restart local v2    # "nowMs":J
    .restart local v4    # "thenMs":J
    .restart local v6    # "track":Landroid/media/SubtitleTrack;
    :cond_7
    :try_start_4
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    #@ea
    if-eqz v7, :cond_5

    #@ec
    const-string/jumbo v7, "SubtitleTrack"

    #@ef
    const-string/jumbo v8, "failed to schedule subtitle view update"

    #@f2
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f5
    goto :goto_2

    #@f6
    .line 368
    .end local v4    # "thenMs":J
    .end local v6    # "track":Landroid/media/SubtitleTrack;
    :cond_8
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    #@f8
    if-eqz v7, :cond_a

    #@fa
    .line 369
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    #@fc
    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    #@fe
    cmp-long v7, v8, v10

    #@100
    if-ltz v7, :cond_a

    #@102
    .line 370
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    #@104
    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    #@106
    cmp-long v7, v8, v10

    #@108
    if-ltz v7, :cond_9

    #@10a
    .line 371
    iget-wide v8, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    #@10c
    const-wide/16 v10, 0x0

    #@10e
    cmp-long v7, v8, v10

    #@110
    if-gez v7, :cond_a

    #@112
    .line 372
    :cond_9
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@115
    .line 375
    :cond_a
    const/4 v7, 0x0

    #@116
    monitor-exit p0

    #@117
    return v7

    #@118
    .line 328
    :catch_0
    move-exception v0

    #@119
    .local v0, "e":Ljava/lang/IllegalStateException;
    goto/16 :goto_1
.end method

.method protected declared-synchronized clearActiveCues()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 205
    :try_start_0
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "SubtitleTrack"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Clearing "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    #@16
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@19
    move-result v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, " active cues"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 206
    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    #@2e
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    #@31
    .line 207
    const-wide/16 v0, -0x1

    #@33
    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    monitor-exit p0

    #@36
    .line 204
    return-void

    #@37
    :catchall_0
    move-exception v0

    #@38
    monitor-exit p0

    #@39
    throw v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    #@2
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    #@5
    move-result v1

    #@6
    .line 192
    .local v1, "size":I
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "ix":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 193
    invoke-direct {p0, v0}, Landroid/media/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    #@d
    .line 192
    add-int/lit8 v0, v0, -0x1

    #@f
    goto :goto_0

    #@10
    .line 196
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@13
    .line 189
    return-void
.end method

.method protected finishedRun(J)V
    .locals 5
    .param p1, "runID"    # J

    #@0
    .prologue
    .line 593
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p1, v2

    #@4
    if-eqz v1, :cond_0

    #@6
    const-wide/16 v2, -0x1

    #@8
    cmp-long v1, p1, v2

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 594
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    #@e
    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/media/SubtitleTrack$Run;

    #@14
    .line 595
    .local v0, "run":Landroid/media/SubtitleTrack$Run;
    if-eqz v0, :cond_0

    #@16
    .line 596
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    #@18
    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack$Run;->storeByEndTimeMs(Landroid/util/LongSparseArray;)V

    #@1b
    .line 592
    .end local v0    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_0
    return-void
.end method

.method public final getFormat()Landroid/media/MediaFormat;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    #@2
    return-object v0
.end method

.method public abstract getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
.end method

.method public getTrackType()I
    .locals 1

    #@0
    .prologue
    .line 614
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 615
    const/4 v0, 0x3

    #@7
    .line 614
    :goto_0
    return v0

    #@8
    .line 616
    :cond_0
    const/4 v0, 0x4

    #@9
    goto :goto_0
.end method

.method public hide()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 289
    iget-boolean v1, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 290
    return-void

    #@6
    .line 293
    :cond_0
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 294
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@c
    invoke-interface {v1, p0}, Landroid/media/MediaTimeProvider;->cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    #@f
    .line 296
    :cond_1
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    #@12
    move-result-object v0

    #@13
    .line 297
    .local v0, "renderingWidget":Landroid/media/SubtitleTrack$RenderingWidget;
    if-eqz v0, :cond_2

    #@15
    .line 298
    invoke-interface {v0, v2}, Landroid/media/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    #@18
    .line 300
    :cond_2
    iput-boolean v2, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    #@1a
    .line 288
    return-void
.end method

.method protected onData(Landroid/media/SubtitleData;)V
    .locals 6
    .param p1, "data"    # Landroid/media/SubtitleData;

    #@0
    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    #@3
    move-result-wide v2

    #@4
    const-wide/16 v4, 0x1

    #@6
    add-long v0, v2, v4

    #@8
    .line 81
    .local v0, "runID":J
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getData()[B

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x1

    #@d
    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/media/SubtitleTrack;->onData([BZJ)V

    #@10
    .line 84
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    #@13
    move-result-wide v2

    #@14
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getDurationUs()J

    #@17
    move-result-wide v4

    #@18
    add-long/2addr v2, v4

    #@19
    const-wide/16 v4, 0x3e8

    #@1b
    div-long/2addr v2, v4

    #@1c
    .line 82
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/SubtitleTrack;->setRunDiscardTimeMs(JJ)V

    #@1f
    .line 79
    return-void
.end method

.method public abstract onData([BZJ)V
.end method

.method public onSeek(J)V
    .locals 5
    .param p1, "timeUs"    # J

    #@0
    .prologue
    .line 243
    iget-boolean v2, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    const-string/jumbo v2, "SubtitleTrack"

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "onSeek "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 244
    :cond_0
    monitor-enter p0

    #@1f
    .line 245
    const-wide/16 v2, 0x3e8

    #@21
    :try_start_0
    div-long v0, p1, v2

    #@23
    .line 246
    .local v0, "timeMs":J
    const/4 v2, 0x1

    #@24
    invoke-virtual {p0, v2, v0, v1}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    #@27
    .line 247
    invoke-direct {p0, v0, v1}, Landroid/media/SubtitleTrack;->takeTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit p0

    #@2b
    .line 249
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    #@2d
    invoke-virtual {p0, v2}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    #@30
    .line 250
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V

    #@33
    .line 242
    return-void

    #@34
    .line 244
    .end local v0    # "timeMs":J
    :catchall_0
    move-exception v2

    #@35
    monitor-exit p0

    #@36
    throw v2
.end method

.method public onStop()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 258
    monitor-enter p0

    #@3
    .line 259
    :try_start_0
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    const-string/jumbo v0, "SubtitleTrack"

    #@a
    const-string/jumbo v1, "onStop"

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 260
    :cond_0
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    #@13
    .line 261
    const-wide/16 v0, -0x1

    #@15
    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 263
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    #@1a
    invoke-virtual {p0, v0}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    #@1d
    .line 264
    iput-wide v2, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    #@1f
    .line 265
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@21
    invoke-interface {v0, v2, v3, p0}, Landroid/media/MediaTimeProvider;->notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    #@24
    .line 257
    return-void

    #@25
    .line 258
    :catchall_0
    move-exception v0

    #@26
    monitor-exit p0

    #@27
    throw v0
.end method

.method public onTimedEvent(J)V
    .locals 5
    .param p1, "timeUs"    # J

    #@0
    .prologue
    .line 228
    iget-boolean v2, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    const-string/jumbo v2, "SubtitleTrack"

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "onTimedEvent "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 229
    :cond_0
    monitor-enter p0

    #@1f
    .line 230
    const-wide/16 v2, 0x3e8

    #@21
    :try_start_0
    div-long v0, p1, v2

    #@23
    .line 231
    .local v0, "timeMs":J
    const/4 v2, 0x0

    #@24
    invoke-virtual {p0, v2, v0, v1}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    #@27
    .line 232
    invoke-direct {p0, v0, v1}, Landroid/media/SubtitleTrack;->takeTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit p0

    #@2b
    .line 234
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    #@2d
    invoke-virtual {p0, v2}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    #@30
    .line 235
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V

    #@33
    .line 227
    return-void

    #@34
    .line 229
    .end local v0    # "timeMs":J
    :catchall_0
    move-exception v2

    #@35
    monitor-exit p0

    #@36
    throw v2
.end method

.method protected scheduleTimedEvents()V
    .locals 6

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 214
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    #@6
    iget-wide v2, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    #@8
    invoke-virtual {v0, v2, v3}, Landroid/media/SubtitleTrack$CueList;->nextTimeAfter(J)J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    #@e
    .line 215
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    #@10
    if-eqz v0, :cond_0

    #@12
    const-string/jumbo v0, "SubtitleTrack"

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "sched @"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    iget-wide v2, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    #@23
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string/jumbo v2, " after "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    iget-wide v2, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    #@30
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 216
    :cond_0
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@3d
    .line 217
    iget-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    #@3f
    const-wide/16 v4, 0x0

    #@41
    cmp-long v0, v0, v4

    #@43
    if-ltz v0, :cond_2

    #@45
    .line 218
    iget-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    #@47
    const-wide/16 v4, 0x3e8

    #@49
    mul-long/2addr v0, v4

    #@4a
    .line 216
    :goto_0
    invoke-interface {v2, v0, v1, p0}, Landroid/media/MediaTimeProvider;->notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    #@4d
    .line 211
    :cond_1
    return-void

    #@4e
    .line 218
    :cond_2
    const-wide/16 v0, -0x1

    #@50
    goto :goto_0
.end method

.method public setRunDiscardTimeMs(JJ)V
    .locals 5
    .param p1, "runID"    # J
    .param p3, "timeMs"    # J

    #@0
    .prologue
    .line 603
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p1, v2

    #@4
    if-eqz v1, :cond_0

    #@6
    const-wide/16 v2, -0x1

    #@8
    cmp-long v1, p1, v2

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 604
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    #@e
    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/media/SubtitleTrack$Run;

    #@14
    .line 605
    .local v0, "run":Landroid/media/SubtitleTrack$Run;
    if-eqz v0, :cond_0

    #@16
    .line 606
    iput-wide p3, v0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    #@18
    .line 607
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    #@1a
    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack$Run;->storeByEndTimeMs(Landroid/util/LongSparseArray;)V

    #@1d
    .line 602
    .end local v0    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_0
    return-void
.end method

.method public declared-synchronized setTimeProvider(Landroid/media/MediaTimeProvider;)V
    .locals 1
    .param p1, "timeProvider"    # Landroid/media/MediaTimeProvider;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 380
    :try_start_0
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-ne v0, p1, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 381
    return-void

    #@7
    .line 383
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 384
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@d
    invoke-interface {v0, p0}, Landroid/media/MediaTimeProvider;->cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    #@10
    .line 386
    :cond_1
    iput-object p1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@12
    .line 387
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 388
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@18
    invoke-interface {v0, p0}, Landroid/media/MediaTimeProvider;->scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    :cond_2
    monitor-exit p0

    #@1c
    .line 379
    return-void

    #@1d
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method public show()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 273
    iget-boolean v1, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 274
    return-void

    #@6
    .line 277
    :cond_0
    iput-boolean v2, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    #@8
    .line 278
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    #@b
    move-result-object v0

    #@c
    .line 279
    .local v0, "renderingWidget":Landroid/media/SubtitleTrack$RenderingWidget;
    if-eqz v0, :cond_1

    #@e
    .line 280
    invoke-interface {v0, v2}, Landroid/media/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    #@11
    .line 282
    :cond_1
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@13
    if-eqz v1, :cond_2

    #@15
    .line 283
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@17
    invoke-interface {v1, p0}, Landroid/media/MediaTimeProvider;->scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    #@1a
    .line 272
    :cond_2
    return-void
.end method

.method protected declared-synchronized updateActiveCues(ZJ)V
    .locals 8
    .param p1, "rebuild"    # Z
    .param p2, "timeMs"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 131
    if-nez p1, :cond_0

    #@3
    :try_start_0
    iget-wide v4, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J

    #@5
    cmp-long v3, v4, p2

    #@7
    if-lez v3, :cond_1

    #@9
    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    #@c
    .line 136
    :cond_1
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    #@e
    iget-wide v4, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J

    #@10
    invoke-virtual {v3, v4, v5, p2, p3}, Landroid/media/SubtitleTrack$CueList;->entriesBetween(JJ)Ljava/lang/Iterable;

    #@13
    move-result-object v3

    #@14
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v2

    #@18
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v3

    #@1c
    .line 135
    if-eqz v3, :cond_8

    #@1e
    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/util/Pair;

    #@24
    .line 138
    .local v1, "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@26
    check-cast v0, Landroid/media/SubtitleTrack$Cue;

    #@28
    .line 140
    .local v0, "cue":Landroid/media/SubtitleTrack$Cue;
    iget-wide v4, v0, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    #@2a
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2c
    check-cast v3, Ljava/lang/Long;

    #@2e
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@31
    move-result-wide v6

    #@32
    cmp-long v3, v4, v6

    #@34
    if-nez v3, :cond_4

    #@36
    .line 142
    iget-boolean v3, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    #@38
    if-eqz v3, :cond_3

    #@3a
    const-string/jumbo v3, "SubtitleTrack"

    #@3d
    new-instance v4, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v5, "Removing "

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 143
    :cond_3
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    #@56
    invoke-virtual {v3, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    #@59
    .line 144
    iget-wide v4, v0, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    #@5b
    const-wide/16 v6, 0x0

    #@5d
    cmp-long v3, v4, v6

    #@5f
    if-nez v3, :cond_2

    #@61
    .line 145
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@64
    goto :goto_0

    #@65
    .end local v0    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v1    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;>;"
    :catchall_0
    move-exception v3

    #@66
    monitor-exit p0

    #@67
    throw v3

    #@68
    .line 147
    .restart local v0    # "cue":Landroid/media/SubtitleTrack$Cue;
    .restart local v1    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;>;"
    :cond_4
    :try_start_1
    iget-wide v4, v0, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    #@6a
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@6c
    check-cast v3, Ljava/lang/Long;

    #@6e
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@71
    move-result-wide v6

    #@72
    cmp-long v3, v4, v6

    #@74
    if-nez v3, :cond_7

    #@76
    .line 150
    iget-boolean v3, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    #@78
    if-eqz v3, :cond_5

    #@7a
    const-string/jumbo v3, "SubtitleTrack"

    #@7d
    new-instance v4, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v5, "Adding "

    #@85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v4

    #@89
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v4

    #@8d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v4

    #@91
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@94
    .line 151
    :cond_5
    iget-object v3, v0, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    #@96
    if-eqz v3, :cond_6

    #@98
    .line 152
    invoke-virtual {v0, p2, p3}, Landroid/media/SubtitleTrack$Cue;->onTime(J)V

    #@9b
    .line 154
    :cond_6
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    #@9d
    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@a0
    goto/16 :goto_0

    #@a2
    .line 155
    :cond_7
    iget-object v3, v0, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    #@a4
    if-eqz v3, :cond_2

    #@a6
    .line 157
    invoke-virtual {v0, p2, p3}, Landroid/media/SubtitleTrack$Cue;->onTime(J)V

    #@a9
    goto/16 :goto_0

    #@ab
    .line 162
    .end local v0    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v1    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    :cond_8
    :goto_1
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    #@ad
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    #@b0
    move-result v3

    #@b1
    if-lez v3, :cond_9

    #@b3
    .line 163
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    #@b5
    const/4 v4, 0x0

    #@b6
    invoke-virtual {v3, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    #@b9
    move-result-wide v4

    #@ba
    cmp-long v3, v4, p2

    #@bc
    if-gtz v3, :cond_9

    #@be
    .line 164
    const/4 v3, 0x0

    #@bf
    invoke-direct {p0, v3}, Landroid/media/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    #@c2
    goto :goto_1

    #@c3
    .line 166
    :cond_9
    iput-wide p2, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c5
    monitor-exit p0

    #@c6
    .line 128
    return-void
.end method

.method public abstract updateView(Ljava/util/Vector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation
.end method
