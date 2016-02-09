.class public abstract Landroid/support/v4/content/AsyncTaskLoader;
.super Landroid/support/v4/content/Loader;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/content/Loader",
        "<TD;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncTaskLoader"


# instance fields
.field volatile mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mHandler:Landroid/os/Handler;

.field mLastLoadCompleteTime:J

.field volatile mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field mUpdateThrottle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 122
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@2
    invoke-direct {p0, p1, v0}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    #@5
    .line 121
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 126
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/content/Loader;-><init>(Landroid/content/Context;)V

    #@3
    .line 118
    const-wide/16 v0, -0x2710

    #@5
    iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    #@7
    .line 127
    iput-object p2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    #@9
    .line 125
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 0

    #@0
    .prologue
    .line 310
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    return-void
.end method

.method dispatchOnCancelled(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 224
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    .local p1, "task":Landroid/support/v4/content/AsyncTaskLoader$LoadTask;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    #@3
    .line 225
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@5
    if-ne v0, p1, :cond_0

    #@7
    .line 227
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->rollbackContentChanged()V

    #@a
    .line 228
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    #@10
    .line 229
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@13
    .line 231
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->deliverCancellation()V

    #@16
    .line 232
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->executePendingTask()V

    #@19
    .line 223
    :cond_0
    return-void
.end method

.method dispatchOnLoadComplete(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 237
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    .local p1, "task":Landroid/support/v4/content/AsyncTaskLoader$LoadTask;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 239
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/content/AsyncTaskLoader;->dispatchOnCancelled(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V

    #@7
    .line 236
    :goto_0
    return-void

    #@8
    .line 241
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->isAbandoned()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 243
    invoke-virtual {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    #@11
    goto :goto_0

    #@12
    .line 245
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->commitContentChanged()V

    #@15
    .line 246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    #@1b
    .line 247
    const/4 v0, 0x0

    #@1c
    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@1e
    .line 249
    invoke-virtual {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    #@21
    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 343
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    .line 344
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 345
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a
    const-string/jumbo v0, "mTask="

    #@d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@12
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@15
    .line 346
    const-string/jumbo v0, " waiting="

    #@18
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@1d
    iget-boolean v0, v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    #@1f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@22
    .line 348
    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@24
    if-eqz v0, :cond_1

    #@26
    .line 349
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    const-string/jumbo v0, "mCancellingTask="

    #@2c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@31
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@34
    .line 350
    const-string/jumbo v0, " waiting="

    #@37
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@3c
    iget-boolean v0, v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    #@3e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@41
    .line 352
    :cond_1
    iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    #@43
    const-wide/16 v2, 0x0

    #@45
    cmp-long v0, v0, v2

    #@47
    if-eqz v0, :cond_2

    #@49
    .line 353
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c
    const-string/jumbo v0, "mUpdateThrottle="

    #@4f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52
    .line 354
    iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    #@54
    invoke-static {v0, v1, p3}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@57
    .line 355
    const-string/jumbo v0, " mLastLoadCompleteTime="

    #@5a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d
    .line 356
    iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    #@5f
    .line 357
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@62
    move-result-wide v2

    #@63
    .line 356
    invoke-static {v0, v1, v2, v3, p3}, Landroid/support/v4/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@66
    .line 358
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    #@69
    .line 342
    :cond_2
    return-void
.end method

.method executePendingTask()V
    .locals 8

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    const/4 v2, 0x0

    #@1
    .line 201
    iget-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@3
    if-nez v3, :cond_2

    #@5
    iget-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@7
    if-eqz v3, :cond_2

    #@9
    .line 202
    iget-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@b
    iget-boolean v3, v3, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 203
    iget-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@11
    const/4 v4, 0x0

    #@12
    iput-boolean v4, v3, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    #@14
    .line 204
    iget-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    #@16
    iget-object v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@18
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@1b
    .line 206
    :cond_0
    iget-wide v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    #@1d
    const-wide/16 v6, 0x0

    #@1f
    cmp-long v3, v4, v6

    #@21
    if-lez v3, :cond_1

    #@23
    .line 207
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@26
    move-result-wide v0

    #@27
    .line 208
    .local v0, "now":J
    iget-wide v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    #@29
    iget-wide v6, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    #@2b
    add-long/2addr v4, v6

    #@2c
    cmp-long v3, v0, v4

    #@2e
    if-gez v3, :cond_1

    #@30
    .line 213
    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@32
    const/4 v3, 0x1

    #@33
    iput-boolean v3, v2, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    #@35
    .line 214
    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    #@37
    iget-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@39
    iget-wide v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    #@3b
    iget-wide v6, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    #@3d
    add-long/2addr v4, v6

    #@3e
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    #@41
    .line 215
    return-void

    #@42
    .line 219
    .end local v0    # "now":J
    :cond_1
    iget-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@44
    iget-object v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    #@46
    check-cast v2, [Ljava/lang/Void;

    #@48
    invoke-virtual {v3, v4, v2}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;

    #@4b
    .line 200
    :cond_2
    return-void
.end method

.method public isLoadInBackgroundCanceled()Z
    .locals 1

    #@0
    .prologue
    .line 321
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected onCancelLoad()Z
    .locals 5

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 156
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@4
    if-eqz v1, :cond_4

    #@6
    .line 157
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 162
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@c
    iget-boolean v1, v1, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 163
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@12
    iput-boolean v3, v1, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    #@14
    .line 164
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    #@16
    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@1b
    .line 166
    :cond_0
    iput-object v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@1d
    .line 167
    return v3

    #@1e
    .line 168
    :cond_1
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@20
    iget-boolean v1, v1, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    #@22
    if-eqz v1, :cond_2

    #@24
    .line 172
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@26
    iput-boolean v3, v1, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    #@28
    .line 173
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    #@2a
    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@2c
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@2f
    .line 174
    iput-object v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@31
    .line 175
    return v3

    #@32
    .line 177
    :cond_2
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@34
    invoke-virtual {v1, v3}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->cancel(Z)Z

    #@37
    move-result v0

    #@38
    .line 179
    .local v0, "cancelled":Z
    if-eqz v0, :cond_3

    #@3a
    .line 180
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@3c
    iput-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@3e
    .line 181
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->cancelLoadInBackground()V

    #@41
    .line 183
    :cond_3
    iput-object v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@43
    .line 184
    return v0

    #@44
    .line 187
    .end local v0    # "cancelled":Z
    :cond_4
    return v3
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 197
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    return-void
.end method

.method protected onForceLoad()V
    .locals 1

    #@0
    .prologue
    .line 146
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    invoke-super {p0}, Landroid/support/v4/content/Loader;->onForceLoad()V

    #@3
    .line 147
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->cancelLoad()Z

    #@6
    .line 148
    new-instance v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@8
    invoke-direct {v0, p0}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;-><init>(Landroid/support/v4/content/AsyncTaskLoader;)V

    #@b
    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@d
    .line 150
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->executePendingTask()V

    #@10
    .line 145
    return-void
.end method

.method protected onLoadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    #@0
    .prologue
    .line 296
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->loadInBackground()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .locals 3
    .param p1, "delayMS"    # J

    #@0
    .prologue
    .line 138
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    iput-wide p1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    #@2
    .line 139
    const-wide/16 v0, 0x0

    #@4
    cmp-long v0, p1, v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 140
    new-instance v0, Landroid/os/Handler;

    #@a
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@d
    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    #@f
    .line 137
    :cond_0
    return-void
.end method

.method public waitForLoader()V
    .locals 1

    #@0
    .prologue
    .line 335
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    #@2
    .line 336
    .local v0, "task":Landroid/support/v4/content/AsyncTaskLoader$LoadTask;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;"
    if-eqz v0, :cond_0

    #@4
    .line 337
    invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waitForLoader()V

    #@7
    .line 334
    :cond_0
    return-void
.end method
