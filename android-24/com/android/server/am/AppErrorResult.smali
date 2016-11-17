.class final Lcom/android/server/am/AppErrorResult;
.super Ljava/lang/Object;
.source "AppErrorResult.java"


# instance fields
.field mHasResult:Z

.field mResult:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    #@6
    .line 19
    return-void
.end method


# virtual methods
.method public get()I
    .locals 2

    #@0
    .prologue
    .line 29
    monitor-enter p0

    #@1
    .line 30
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v1, :cond_0

    #@5
    .line 32
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorResult;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8
    goto :goto_0

    #@9
    .line 33
    :catch_0
    move-exception v0

    #@a
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@b
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0

    #@c
    .line 37
    iget v1, p0, Lcom/android/server/am/AppErrorResult;->mResult:I

    #@e
    return v1

    #@f
    .line 29
    :catchall_0
    move-exception v1

    #@10
    monitor-exit p0

    #@11
    throw v1
.end method

.method public set(I)V
    .locals 1
    .param p1, "res"    # I

    #@0
    .prologue
    .line 21
    monitor-enter p0

    #@1
    .line 22
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    #@4
    .line 23
    iput p1, p0, Lcom/android/server/am/AppErrorResult;->mResult:I

    #@6
    .line 24
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorResult;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 20
    return-void

    #@b
    .line 21
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method
