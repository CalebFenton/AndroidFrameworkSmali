.class public abstract Landroid/content/AsyncTaskLoader;
.super Landroid/content/Loader;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/AsyncTaskLoader$LoadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/Loader<",
        "TD;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final greylist-max-o DEBUG:Z = false

.field static final greylist-max-o TAG:Ljava/lang/String; = "AsyncTaskLoader"


# instance fields
.field volatile greylist-max-o mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field private final greylist mExecutor:Ljava/util/concurrent/Executor;

.field greylist-max-o mHandler:Landroid/os/Handler;

.field greylist-max-o mLastLoadCompleteTime:J

.field volatile greylist-max-o mTask:Landroid/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field greylist-max-o mUpdateThrottle:J


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 143
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 144
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 148
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 139
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 149
    iput-object p2, p0, Landroid/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    .line 150
    return-void
.end method


# virtual methods
.method public whitelist cancelLoadInBackground()V
    .registers 1

    .line 336
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    return-void
.end method

.method greylist-max-o dispatchOnCancelled(Landroid/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .line 249
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    .local p1, "task":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0, p2}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-ne v0, p1, :cond_19

    .line 252
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->rollbackContentChanged()V

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 256
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->deliverCancellation()V

    .line 257
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->executePendingTask()V

    .line 259
    :cond_19
    return-void
.end method

.method greylist-max-o dispatchOnLoadComplete(Landroid/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .line 262
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    .local p1, "task":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-eq v0, p1, :cond_8

    .line 264
    invoke-virtual {p0, p1, p2}, Landroid/content/AsyncTaskLoader;->dispatchOnCancelled(Landroid/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V

    goto :goto_21

    .line 266
    :cond_8
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->isAbandoned()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 268
    invoke-virtual {p0, p2}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    goto :goto_21

    .line 270
    :cond_12
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->commitContentChanged()V

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 274
    invoke-virtual {p0, p2}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 277
    :goto_21
    return-void
.end method

.method public whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 369
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    const-string v1, " waiting="

    if-eqz v0, :cond_21

    .line 371
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 372
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 374
    :cond_21
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_3d

    .line 375
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancellingTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 376
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 378
    :cond_3d
    iget-wide v0, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_64

    .line 379
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUpdateThrottle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 380
    iget-wide v0, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    invoke-static {v0, v1, p3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 381
    const-string v0, " mLastLoadCompleteTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    iget-wide v0, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 382
    invoke-static {v0, v1, v2, v3, p3}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 384
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 386
    :cond_64
    return-void
.end method

.method greylist-max-o executePendingTask()V
    .registers 9

    .line 226
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-nez v0, :cond_4c

    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_4c

    .line 227
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v0, :cond_1a

    .line 228
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 229
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    :cond_1a
    iget-wide v0, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_41

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 233
    .local v0, "now":J
    iget-wide v2, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_41

    .line 238
    iget-object v2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 239
    iget-object v2, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-wide v4, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    iget-wide v6, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 240
    return-void

    .line 244
    .end local v0    # "now":J
    :cond_41
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/content/AsyncTaskLoader$LoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 246
    :cond_4c
    return-void
.end method

.method public whitelist isLoadInBackgroundCanceled()Z
    .registers 2

    .line 346
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public abstract whitelist loadInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected whitelist onCancelLoad()Z
    .registers 5

    .line 178
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    .line 179
    iget-boolean v0, p0, Landroid/content/AsyncTaskLoader;->mStarted:Z

    if-nez v0, :cond_c

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/AsyncTaskLoader;->mContentChanged:Z

    .line 182
    :cond_c
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    .line 187
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v0, :cond_22

    .line 188
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iput-boolean v1, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 189
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    :cond_22
    iput-object v2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 192
    return v1

    .line 193
    :cond_25
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v0, :cond_39

    .line 197
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iput-boolean v1, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 198
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    iput-object v2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 200
    return v1

    .line 202
    :cond_39
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v1}, Landroid/content/AsyncTaskLoader$LoadTask;->cancel(Z)Z

    move-result v0

    .line 204
    .local v0, "cancelled":Z
    if-eqz v0, :cond_48

    .line 205
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iput-object v1, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 206
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 208
    :cond_48
    iput-object v2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 209
    return v0

    .line 212
    .end local v0    # "cancelled":Z
    :cond_4b
    return v1
.end method

.method public whitelist onCanceled(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 223
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    return-void
.end method

.method protected whitelist onForceLoad()V
    .registers 2

    .line 168
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    invoke-super {p0}, Landroid/content/Loader;->onForceLoad()V

    .line 169
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->cancelLoad()Z

    .line 170
    new-instance v0, Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-direct {v0, p0}, Landroid/content/AsyncTaskLoader$LoadTask;-><init>(Landroid/content/AsyncTaskLoader;)V

    iput-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 172
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->executePendingTask()V

    .line 173
    return-void
.end method

.method protected whitelist onLoadInBackground()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 321
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setUpdateThrottle(J)V
    .registers 5
    .param p1, "delayMS"    # J

    .line 160
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    iput-wide p1, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    .line 161
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_f

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    .line 164
    :cond_f
    return-void
.end method

.method public greylist waitForLoader()V
    .registers 2

    .line 361
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 362
    .local v0, "task":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    if-eqz v0, :cond_7

    .line 363
    invoke-virtual {v0}, Landroid/content/AsyncTaskLoader$LoadTask;->waitForLoader()V

    .line 365
    :cond_7
    return-void
.end method
