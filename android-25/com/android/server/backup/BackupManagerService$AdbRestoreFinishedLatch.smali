.class Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdbRestoreFinishedLatch"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AdbRestoreFinishedLatch"


# instance fields
.field final mLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    #@0
    .prologue
    .line 6487
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 6488
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@7
    const/4 v1, 0x1

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@b
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@d
    .line 6487
    return-void
.end method


# virtual methods
.method await()V
    .locals 6

    #@0
    .prologue
    .line 6492
    const/4 v1, 0x0

    #@1
    .line 6494
    .local v1, "latched":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@3
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@5
    const-wide/32 v4, 0x493e0

    #@8
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    .line 6491
    .end local v1    # "latched":Z
    :goto_0
    return-void

    #@d
    .line 6495
    .restart local v1    # "latched":Z
    :catch_0
    move-exception v0

    #@e
    .line 6496
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "AdbRestoreFinishedLatch"

    #@11
    const-string/jumbo v3, "Interrupted!"

    #@14
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    goto :goto_0
.end method

.method public execute()V
    .locals 0

    #@0
    .prologue
    .line 6501
    return-void
.end method

.method public handleTimeout()V
    .locals 2

    #@0
    .prologue
    .line 6516
    const-string/jumbo v0, "AdbRestoreFinishedLatch"

    #@3
    const-string/jumbo v1, "adb onRestoreFinished() timed out"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 6518
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@b
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@e
    .line 6514
    return-void
.end method

.method public operationComplete(J)V
    .locals 1
    .param p1, "result"    # J

    #@0
    .prologue
    .line 6510
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@5
    .line 6506
    return-void
.end method
