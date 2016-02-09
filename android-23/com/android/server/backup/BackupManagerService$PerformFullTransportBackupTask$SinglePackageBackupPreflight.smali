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

.field final mResult:Ljava/util/concurrent/atomic/AtomicInteger;

.field final mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Lcom/android/internal/backup/IBackupTransport;)V
    .locals 2
    .param p1, "this$1"    # Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    #@0
    .prologue
    .line 4230
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 4226
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@7
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    #@c
    .line 4227
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@e
    const/4 v1, 0x1

    #@f
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@12
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@14
    .line 4231
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@16
    .line 4230
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    #@0
    .prologue
    .line 4262
    return-void
.end method

.method public handleTimeout()V
    .locals 2

    #@0
    .prologue
    .line 4281
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    const/16 v1, -0x3eb

    #@4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@7
    .line 4282
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@9
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@c
    .line 4277
    return-void
.end method

.method public operationComplete(I)V
    .locals 1
    .param p1, "result"    # I

    #@0
    .prologue
    .line 4272
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@5
    .line 4273
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@7
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@a
    .line 4267
    return-void
.end method

.method public preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "agent"    # Landroid/app/IBackupAgent;

    #@0
    .prologue
    .line 4238
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@2
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@4
    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    #@7
    move-result v2

    #@8
    .line 4239
    .local v2, "token":I
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@a
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@c
    const-wide/32 v6, 0x493e0

    #@f
    invoke-virtual {v4, v2, v6, v7, p0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    #@12
    .line 4240
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@14
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@16
    const-string/jumbo v5, "preflighting"

    #@19
    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    #@1c
    .line 4244
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@1e
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@20
    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    #@22
    invoke-interface {p2, v2, v4}, Landroid/app/IBackupAgent;->doMeasureFullBackup(ILandroid/app/backup/IBackupManager;)V

    #@25
    .line 4247
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@27
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V

    #@2a
    .line 4248
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2c
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@2f
    move-result v3

    #@30
    .line 4253
    .local v3, "totalSize":I
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    #@32
    int-to-long v6, v3

    #@33
    invoke-interface {v4, v6, v7}, Lcom/android/internal/backup/IBackupTransport;->checkFullBackupSize(J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    move-result v1

    #@37
    .line 4258
    .end local v2    # "token":I
    .end local v3    # "totalSize":I
    .local v1, "result":I
    :goto_0
    return v1

    #@38
    .line 4254
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    #@39
    .line 4255
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PFTBT"

    #@3c
    new-instance v5, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v6, "Exception preflighting "

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    const-string/jumbo v6, ": "

    #@51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 4256
    const/16 v1, -0x3eb

    #@66
    .restart local v1    # "result":I
    goto :goto_0
.end method
