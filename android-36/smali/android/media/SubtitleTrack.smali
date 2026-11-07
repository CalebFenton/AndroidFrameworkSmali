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
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SubtitleTrack"


# instance fields
.field public greylist-max-o DEBUG:Z

.field protected final greylist-max-o mActiveCues:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist-max-o mCues:Landroid/media/SubtitleTrack$CueList;

.field private greylist-max-o mFormat:Landroid/media/MediaFormat;

.field protected greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mLastTimeMs:J

.field private greylist-max-o mLastUpdateTimeMs:J

.field private greylist-max-o mNextScheduledTimeMs:J

.field private greylist-max-o mRunnable:Ljava/lang/Runnable;

.field protected final greylist-max-o mRunsByEndTime:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/media/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field protected final greylist-max-o mRunsByID:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/media/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist-max-o mTimeProvider:Landroid/media/MediaTimeProvider;

.field protected greylist-max-o mVisible:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmRunnable(Landroid/media/SubtitleTrack;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/MediaFormat;)V
    .registers 5
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    .line 49
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    .line 54
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 67
    iput-object p1, p0, Landroid/media/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    .line 68
    new-instance v2, Landroid/media/SubtitleTrack$CueList;

    invoke-direct {v2}, Landroid/media/SubtitleTrack$CueList;-><init>()V

    iput-object v2, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    .line 69
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    .line 70
    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    .line 71
    return-void
.end method

.method private greylist-max-o removeRunsByEndTimeIndex(I)V
    .registers 8
    .param p1, "ix"    # I

    .line 171
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleTrack$Run;

    .line 172
    .local v0, "run":Landroid/media/SubtitleTrack$Run;
    :goto_8
    if-eqz v0, :cond_29

    .line 173
    iget-object v1, v0, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    .line 174
    .local v1, "cue":Landroid/media/SubtitleTrack$Cue;
    :goto_c
    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 175
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    invoke-virtual {v3, v1}, Landroid/media/SubtitleTrack$CueList;->remove(Landroid/media/SubtitleTrack$Cue;)V

    .line 176
    iget-object v3, v1, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    .line 177
    .local v3, "nextCue":Landroid/media/SubtitleTrack$Cue;
    iput-object v2, v1, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    .line 178
    move-object v1, v3

    .line 179
    .end local v3    # "nextCue":Landroid/media/SubtitleTrack$Cue;
    goto :goto_c

    .line 180
    :cond_1a
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Landroid/media/SubtitleTrack$Run;->mRunID:J

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 181
    iget-object v3, v0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 182
    .local v3, "nextRun":Landroid/media/SubtitleTrack$Run;
    iput-object v2, v0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 183
    iput-object v2, v0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 184
    move-object v0, v3

    .line 185
    .end local v1    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v3    # "nextRun":Landroid/media/SubtitleTrack$Run;
    goto :goto_8

    .line 186
    :cond_29
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 187
    return-void
.end method

.method private declared-synchronized greylist-max-o takeTime(J)V
    .registers 3
    .param p1, "timeMs"    # J

    monitor-enter p0

    .line 201
    :try_start_1
    iput-wide p1, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 202
    monitor-exit p0

    return-void

    .line 200
    .end local p0    # "this":Landroid/media/SubtitleTrack;
    .end local p1    # "timeMs":J
    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method


# virtual methods
.method protected declared-synchronized greylist-max-o addCue(Landroid/media/SubtitleTrack$Cue;)Z
    .registers 13
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;

    monitor-enter p0

    .line 308
    :try_start_1
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    invoke-virtual {v0, p1}, Landroid/media/SubtitleTrack$CueList;->add(Landroid/media/SubtitleTrack$Cue;)V

    .line 310
    iget-wide v0, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3f

    .line 311
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleTrack$Run;

    .line 312
    .local v0, "run":Landroid/media/SubtitleTrack$Run;
    if-nez v0, :cond_2d

    .line 313
    new-instance v1, Landroid/media/SubtitleTrack$Run;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/media/SubtitleTrack$Run;-><init>(Landroid/media/SubtitleTrack-IA;)V

    move-object v0, v1

    .line 314
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    invoke-virtual {v1, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 315
    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iput-wide v4, v0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    goto :goto_39

    .line 316
    .end local p0    # "this":Landroid/media/SubtitleTrack;
    :cond_2d
    iget-wide v4, v0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    iget-wide v6, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_39

    .line 317
    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iput-wide v4, v0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    .line 321
    :cond_39
    :goto_39
    iget-object v1, v0, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    iput-object v1, p1, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    .line 322
    iput-object p1, v0, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    .line 326
    .end local v0    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_3f
    const-wide/16 v0, -0x1

    .line 327
    .local v0, "nowMs":J
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_109

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_53

    .line 329
    :try_start_47
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v4, v6, v5}, Landroid/media/MediaTimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9
    :try_end_50
    .catch Ljava/lang/IllegalStateException; {:try_start_47 .. :try_end_50} :catch_52
    .catchall {:try_start_47 .. :try_end_50} :catchall_109

    move-wide v0, v7

    .line 333
    goto :goto_53

    .line 331
    :catch_52
    move-exception v4

    .line 336
    :cond_53
    :goto_53
    :try_start_53
    iget-boolean v4, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v4, :cond_9f

    const-string v4, "SubtitleTrack"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mVisible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " <= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_9f
    iget-boolean v4, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-eqz v4, :cond_ea

    iget-wide v7, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    cmp-long v4, v7, v0

    if-gtz v4, :cond_ea

    iget-wide v7, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-wide v9, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    cmp-long v4, v7, v9

    if-ltz v4, :cond_ea

    .line 344
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_bc

    .line 345
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 347
    :cond_bc
    move-object v2, p0

    .line 348
    .local v2, "track":Landroid/media/SubtitleTrack;
    move-wide v3, v0

    .line 349
    .local v3, "thenMs":J
    new-instance v6, Landroid/media/SubtitleTrack$1;

    invoke-direct {v6, p0, v2, v3, v4}, Landroid/media/SubtitleTrack$1;-><init>(Landroid/media/SubtitleTrack;Landroid/media/SubtitleTrack;J)V

    iput-object v6, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    .line 363
    iget-object v6, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0xa

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v6

    if-eqz v6, :cond_dd

    .line 364
    iget-boolean v6, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v6, :cond_e8

    const-string v6, "SubtitleTrack"

    const-string v7, "scheduling update"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e8

    .line 366
    :cond_dd
    iget-boolean v6, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v6, :cond_e8

    const-string v6, "SubtitleTrack"

    const-string v7, "failed to schedule subtitle view update"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catchall {:try_start_53 .. :try_end_e8} :catchall_109

    .line 368
    :cond_e8
    :goto_e8
    monitor-exit p0

    return v5

    .line 371
    .end local v2    # "track":Landroid/media/SubtitleTrack;
    .end local v3    # "thenMs":J
    :cond_ea
    :try_start_ea
    iget-boolean v4, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-eqz v4, :cond_107

    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-wide v7, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    cmp-long v4, v4, v7

    if-ltz v4, :cond_107

    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-wide v7, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    cmp-long v4, v4, v7

    if-ltz v4, :cond_104

    iget-wide v4, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    cmp-long v2, v4, v2

    if-gez v2, :cond_107

    .line 375
    :cond_104
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V
    :try_end_107
    .catchall {:try_start_ea .. :try_end_107} :catchall_109

    .line 378
    :cond_107
    monitor-exit p0

    return v6

    .line 307
    .end local v0    # "nowMs":J
    .end local p1    # "cue":Landroid/media/SubtitleTrack$Cue;
    :catchall_109
    move-exception p1

    :try_start_10a
    monitor-exit p0
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    throw p1
.end method

.method protected declared-synchronized greylist-max-o clearActiveCues()V
    .registers 4

    monitor-enter p0

    .line 206
    :try_start_1
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_29

    const-string v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " active cues"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local p0    # "this":Landroid/media/SubtitleTrack;
    :cond_29
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 208
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 209
    monitor-exit p0

    return-void

    .line 205
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 193
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "ix":I
    :goto_8
    if-ltz v1, :cond_10

    .line 194
    invoke-direct {p0, v1}, Landroid/media/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    .line 193
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 197
    .end local v1    # "ix":I
    :cond_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 198
    return-void
.end method

.method protected greylist-max-o finishedRun(J)V
    .registers 5
    .param p1, "runID"    # J

    .line 596
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1b

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1b

    .line 597
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleTrack$Run;

    .line 598
    .local v0, "run":Landroid/media/SubtitleTrack$Run;
    if-eqz v0, :cond_1b

    .line 599
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack$Run;->storeByEndTimeMs(Landroid/util/LongSparseArray;)V

    .line 602
    .end local v0    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_1b
    return-void
.end method

.method public final greylist-max-o getFormat()Landroid/media/MediaFormat;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public abstract greylist-max-o getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
.end method

.method public greylist-max-o getTrackType()I
    .registers 2

    .line 617
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    if-nez v0, :cond_8

    .line 618
    const/4 v0, 0x3

    goto :goto_9

    .line 619
    :cond_8
    const/4 v0, 0x4

    .line 617
    :goto_9
    return v0
.end method

.method public greylist-max-o hide()V
    .registers 3

    .line 292
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-nez v0, :cond_5

    .line 293
    return-void

    .line 296
    :cond_5
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_e

    .line 297
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v0, p0}, Landroid/media/MediaTimeProvider;->cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 299
    :cond_e
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    .line 300
    .local v0, "renderingWidget":Landroid/media/SubtitleTrack$RenderingWidget;
    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 301
    invoke-interface {v0, v1}, Landroid/media/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    .line 303
    :cond_18
    iput-boolean v1, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    .line 304
    return-void
.end method

.method protected greylist-max-o onData(Landroid/media/SubtitleData;)V
    .registers 8
    .param p1, "data"    # Landroid/media/SubtitleData;

    .line 81
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 82
    .local v0, "runID":J
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/media/SubtitleTrack;->onData([BZJ)V

    .line 83
    nop

    .line 85
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 83
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/SubtitleTrack;->setRunDiscardTimeMs(JJ)V

    .line 86
    return-void
.end method

.method public abstract greylist-max-o onData([BZJ)V
.end method

.method public greylist-max-o onSeek(J)V
    .registers 6
    .param p1, "timeUs"    # J

    .line 244
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1c
    monitor-enter p0

    .line 246
    const-wide/16 v0, 0x3e8

    :try_start_1f
    div-long v0, p1, v0

    .line 247
    .local v0, "timeMs":J
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    .line 248
    invoke-direct {p0, v0, v1}, Landroid/media/SubtitleTrack;->takeTime(J)V

    .line 249
    .end local v0    # "timeMs":J
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_32

    .line 250
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 251
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V

    .line 252
    return-void

    .line 249
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public greylist-max-o onStop()V
    .registers 4

    .line 259
    monitor-enter p0

    .line 260
    :try_start_1
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "SubtitleTrack"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_c
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    .line 262
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    .line 263
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_25

    .line 264
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {p0, v2}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 265
    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 266
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v2, :cond_24

    .line 267
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v2, v0, v1, p0}, Landroid/media/MediaTimeProvider;->notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 269
    :cond_24
    return-void

    .line 263
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public greylist-max-o onTimedEvent(J)V
    .registers 6
    .param p1, "timeUs"    # J

    .line 229
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimedEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1c
    monitor-enter p0

    .line 231
    const-wide/16 v0, 0x3e8

    :try_start_1f
    div-long v0, p1, v0

    .line 232
    .local v0, "timeMs":J
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    .line 233
    invoke-direct {p0, v0, v1}, Landroid/media/SubtitleTrack;->takeTime(J)V

    .line 234
    .end local v0    # "timeMs":J
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_32

    .line 235
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 236
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V

    .line 237
    return-void

    .line 234
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method protected greylist-max-o scheduleTimedEvents()V
    .registers 6

    .line 214
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_4d

    .line 215
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    iget-wide v1, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v0, v1, v2}, Landroid/media/SubtitleTrack$CueList;->nextTimeAfter(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 216
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sched @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_38
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 218
    iget-wide v1, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_48

    .line 219
    iget-wide v1, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    goto :goto_4a

    :cond_48
    const-wide/16 v1, -0x1

    .line 217
    :goto_4a
    invoke-interface {v0, v1, v2, p0}, Landroid/media/MediaTimeProvider;->notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 222
    :cond_4d
    return-void
.end method

.method public greylist-max-o setRunDiscardTimeMs(JJ)V
    .registers 7
    .param p1, "runID"    # J
    .param p3, "timeMs"    # J

    .line 606
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1d

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1d

    .line 607
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleTrack$Run;

    .line 608
    .local v0, "run":Landroid/media/SubtitleTrack$Run;
    if-eqz v0, :cond_1d

    .line 609
    iput-wide p3, v0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    .line 610
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack$Run;->storeByEndTimeMs(Landroid/util/LongSparseArray;)V

    .line 613
    .end local v0    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_1d
    return-void
.end method

.method public declared-synchronized greylist-max-o setTimeProvider(Landroid/media/MediaTimeProvider;)V
    .registers 3
    .param p1, "timeProvider"    # Landroid/media/MediaTimeProvider;

    monitor-enter p0

    .line 383
    :try_start_1
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-ne v0, p1, :cond_7

    .line 384
    monitor-exit p0

    return-void

    .line 386
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_10

    .line 387
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v0, p0}, Landroid/media/MediaTimeProvider;->cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 389
    .end local p0    # "this":Landroid/media/SubtitleTrack;
    :cond_10
    iput-object p1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 390
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_1b

    .line 391
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v0, p0}, Landroid/media/MediaTimeProvider;->scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1d

    .line 393
    :cond_1b
    monitor-exit p0

    return-void

    .line 382
    .end local p1    # "timeProvider":Landroid/media/MediaTimeProvider;
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public greylist-max-o show()V
    .registers 3

    .line 276
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-eqz v0, :cond_5

    .line 277
    return-void

    .line 280
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    .line 281
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v1

    .line 282
    .local v1, "renderingWidget":Landroid/media/SubtitleTrack$RenderingWidget;
    if-eqz v1, :cond_11

    .line 283
    invoke-interface {v1, v0}, Landroid/media/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    .line 285
    :cond_11
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_1a

    .line 286
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v0, p0}, Landroid/media/MediaTimeProvider;->scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 288
    :cond_1a
    return-void
.end method

.method protected declared-synchronized greylist-max-o updateActiveCues(ZJ)V
    .registers 11
    .param p1, "rebuild"    # Z
    .param p2, "timeMs"    # J

    monitor-enter p0

    .line 132
    if-nez p1, :cond_9

    :try_start_3
    iget-wide v0, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J

    cmp-long v0, v0, p2

    if-lez v0, :cond_c

    .line 133
    .end local p0    # "this":Landroid/media/SubtitleTrack;
    :cond_9
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    .line 136
    :cond_c
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    iget-wide v1, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J

    .line 137
    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/media/SubtitleTrack$CueList;->entriesBetween(JJ)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;>;"
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 139
    .local v1, "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/media/SubtitleTrack$Cue;

    .line 141
    .local v2, "cue":Landroid/media/SubtitleTrack$Cue;
    iget-wide v3, v2, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_63

    .line 143
    iget-boolean v3, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v3, :cond_52

    const-string v3, "SubtitleTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_52
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 145
    iget-wide v3, v2, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_a1

    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a1

    .line 148
    :cond_63
    iget-wide v3, v2, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_9a

    .line 151
    iget-boolean v3, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v3, :cond_8d

    const-string v3, "SubtitleTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_8d
    iget-object v3, v2, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v3, :cond_94

    .line 153
    invoke-virtual {v2, p2, p3}, Landroid/media/SubtitleTrack$Cue;->onTime(J)V

    .line 155
    :cond_94
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 156
    :cond_9a
    iget-object v3, v2, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v3, :cond_a1

    .line 158
    invoke-virtual {v2, p2, p3}, Landroid/media/SubtitleTrack$Cue;->onTime(J)V

    .line 160
    .end local v1    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    .end local v2    # "cue":Landroid/media/SubtitleTrack$Cue;
    :cond_a1
    :goto_a1
    goto/16 :goto_18

    .line 163
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;>;"
    :cond_a3
    :goto_a3
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_ba

    iget-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    .line 164
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    cmp-long v0, v2, p2

    if-gtz v0, :cond_ba

    .line 165
    invoke-direct {p0, v1}, Landroid/media/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    goto :goto_a3

    .line 167
    :cond_ba
    iput-wide p2, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_bc
    .catchall {:try_start_3 .. :try_end_bc} :catchall_be

    .line 168
    monitor-exit p0

    return-void

    .line 131
    .end local p1    # "rebuild":Z
    .end local p2    # "timeMs":J
    :catchall_be
    move-exception p1

    :try_start_bf
    monitor-exit p0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw p1
.end method

.method public abstract greylist-max-o updateView(Ljava/util/Vector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation
.end method
