.class Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
.implements Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SinglePackageBackupPreflight"
.end annotation


# instance fields
.field final mLatch:Ljava/util/concurrent/CountDownLatch;

.field final mResult:Ljava/util/concurrent/atomic/AtomicLong;

.field final mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Lcom/android/internal/backup/IBackupTransport;)V
    .locals 4
    .param p1, "this$1"    # Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    #@0
    .prologue
    .line 4743
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 4739
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@7
    const-wide/16 v2, -0x3eb

    #@9
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    #@c
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicLong;

    #@e
    .line 4740
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@10
    const/4 v1, 0x1

    #@11
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@14
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@16
    .line 4744
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@18
    .line 4743
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    #@0
    .prologue
    .line 4792
    return-void
.end method

.method public getExpectedSizeOrErrorCode()J
    .locals 6

    #@0
    .prologue
    .line 4818
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@4
    const-wide/32 v4, 0x493e0

    #@7
    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    #@a
    .line 4819
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicLong;

    #@c
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-wide v2

    #@10
    return-wide v2

    #@11
    .line 4820
    :catch_0
    move-exception v0

    #@12
    .line 4821
    .local v0, "e":Ljava/lang/InterruptedException;
    const-wide/16 v2, -0x1

    #@14
    return-wide v2
.end method

.method public handleTimeout()V
    .locals 4

    #@0
    .prologue
    .line 4811
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    const-wide/16 v2, -0x3eb

    #@4
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    #@7
    .line 4812
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@9
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@c
    .line 4807
    return-void
.end method

.method public operationComplete(J)V
    .locals 1
    .param p1, "result"    # J

    #@0
    .prologue
    .line 4802
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    #@5
    .line 4803
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@7
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@a
    .line 4797
    return-void
.end method

.method public preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I
    .locals 12
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "agent"    # Landroid/app/IBackupAgent;

    #@0
    .prologue
    .line 4751
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@2
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4
    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    #@7
    move-result v4

    #@8
    .line 4752
    .local v4, "token":I
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@a
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@c
    const-wide/32 v8, 0x493e0

    #@f
    invoke-virtual {v5, v4, v8, v9, p0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    #@12
    .line 4753
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@14
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@16
    const-string/jumbo v8, "preflighting"

    #@19
    invoke-virtual {v5, v8}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@1c
    .line 4757
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@1e
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@20
    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    #@22
    invoke-interface {p2, v4, v5}, Landroid/app/IBackupAgent;->doMeasureFullBackup(ILandroid/app/backup/IBackupManager;)V

    #@25
    .line 4764
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@27
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@29
    const-wide/32 v10, 0x493e0

    #@2c
    invoke-virtual {v5, v10, v11, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    #@2f
    .line 4766
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicLong;

    #@31
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@34
    move-result-wide v6

    #@35
    .line 4768
    .local v6, "totalSize":J
    const-wide/16 v8, 0x0

    #@37
    cmp-long v5, v6, v8

    #@39
    if-gez v5, :cond_0

    #@3b
    .line 4769
    long-to-int v5, v6

    #@3c
    return v5

    #@3d
    .line 4775
    :cond_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@3f
    invoke-interface {v5, v6, v7}, Lcom/android/internal/backup/IBackupTransport;->checkFullBackupSize(J)I

    #@42
    move-result v1

    #@43
    .line 4776
    .local v1, "result":I
    const/16 v5, -0x3ed

    #@45
    if-ne v1, v5, :cond_1

    #@47
    .line 4777
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@49
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@4b
    const/4 v9, 0x1

    #@4c
    invoke-interface {v5, v8, v9}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    #@4f
    move-result-wide v2

    #@50
    .line 4782
    .local v2, "quota":J
    invoke-interface {p2, v6, v7, v2, v3}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@53
    .line 4788
    .end local v2    # "quota":J
    .end local v4    # "token":I
    .end local v6    # "totalSize":J
    :cond_1
    :goto_0
    return v1

    #@54
    .line 4784
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    #@55
    .line 4785
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PFTBT"

    #@58
    new-instance v8, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v9, "Exception preflighting "

    #@60
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v8

    #@64
    iget-object v9, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@66
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v8

    #@6a
    const-string/jumbo v9, ": "

    #@6d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v8

    #@71
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@74
    move-result-object v9

    #@75
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v8

    #@79
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v8

    #@7d
    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    .line 4786
    const/16 v1, -0x3eb

    #@82
    .restart local v1    # "result":I
    goto :goto_0
.end method
