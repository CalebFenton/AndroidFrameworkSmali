.class abstract Lcom/android/server/backup/BackupManagerService$RestoreEngine;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "RestoreEngine"
.end annotation


# static fields
.field public static final SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "RestoreEngine"

.field public static final TARGET_FAILURE:I = -0x2

.field public static final TRANSPORT_FAILURE:I = -0x3


# instance fields
.field private mResult:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4539
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 4546
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@b
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@d
    .line 4547
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@f
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@12
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    #@14
    .line 4539
    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    #@0
    .prologue
    .line 4572
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isRunning()Z
    .locals 1

    #@0
    .prologue
    .line 4550
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setResult(I)V
    .locals 1
    .param p1, "result"    # I

    #@0
    .prologue
    .line 4576
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@5
    .line 4575
    return-void
.end method

.method public setRunning(Z)V
    .locals 2
    .param p1, "stillRunning"    # Z

    #@0
    .prologue
    .line 4554
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    monitor-enter v1

    #@3
    .line 4555
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@8
    .line 4556
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 4553
    return-void

    #@f
    .line 4554
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public waitForResult()I
    .locals 3

    #@0
    .prologue
    .line 4561
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    monitor-enter v2

    #@3
    .line 4562
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->isRunning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 4564
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@b
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    goto :goto_0

    #@f
    .line 4565
    :catch_0
    move-exception v0

    #@10
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@11
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit v2

    #@12
    .line 4568
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$RestoreEngine;->getResult()I

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 4561
    :catchall_0
    move-exception v1

    #@18
    monitor-exit v2

    #@19
    throw v1
.end method
