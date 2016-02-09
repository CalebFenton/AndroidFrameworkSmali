.class Lcom/android/commands/am/Am$StopUserCallback;
.super Landroid/app/IStopUserCallback$Stub;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/am/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StopUserCallback"
.end annotation


# instance fields
.field private mFinished:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1308
    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    #@3
    .line 1309
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/commands/am/Am$StopUserCallback;->mFinished:Z

    #@6
    .line 1308
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/am/Am$StopUserCallback;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/commands/am/Am$StopUserCallback;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public declared-synchronized userStopAborted(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1327
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Lcom/android/commands/am/Am$StopUserCallback;->mFinished:Z

    #@4
    .line 1328
    invoke-virtual {p0}, Lcom/android/commands/am/Am$StopUserCallback;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 1326
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized userStopped(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1321
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Lcom/android/commands/am/Am$StopUserCallback;->mFinished:Z

    #@4
    .line 1322
    invoke-virtual {p0}, Lcom/android/commands/am/Am$StopUserCallback;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 1320
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized waitForFinish()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1313
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/commands/am/Am$StopUserCallback;->mFinished:Z

    #@3
    if-nez v1, :cond_0

    #@5
    invoke-virtual {p0}, Lcom/android/commands/am/Am$StopUserCallback;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    goto :goto_0

    #@9
    .line 1314
    :catch_0
    move-exception v0

    #@a
    .line 1315
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@f
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 1311
    return-void
.end method
