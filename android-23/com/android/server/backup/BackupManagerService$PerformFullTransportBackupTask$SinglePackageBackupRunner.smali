.class Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SinglePackageBackupRunner"
.end annotation


# instance fields
.field final mLatch:Ljava/util/concurrent/CountDownLatch;

.field final mOutput:Landroid/os/ParcelFileDescriptor;

.field final mPreflight:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

.field final mTarget:Landroid/content/pm/PackageInfo;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/IBackupTransport;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    .param p2, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "target"    # Landroid/content/pm/PackageInfo;
    .param p4, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p5, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 4293
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 4295
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    #@f
    .line 4296
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    #@11
    .line 4297
    new-instance v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    #@13
    invoke-direct {v0, p1, p4}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;-><init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Lcom/android/internal/backup/IBackupTransport;)V

    #@16
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflight:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    #@18
    .line 4298
    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@1a
    .line 4294
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 4304
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    #@2
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    #@4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@b
    .line 4305
    .local v2, "out":Ljava/io/FileOutputStream;
    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@d
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    #@f
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@11
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    #@13
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@15
    .line 4306
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflight:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    #@17
    const/4 v5, 0x0

    #@18
    .line 4305
    invoke-direct/range {v0 .. v5}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Ljava/lang/String;Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;Z)V

    #@1b
    .line 4307
    .local v0, "engine":Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    #@1d
    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->backupOnePackage(Landroid/content/pm/PackageInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 4311
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@22
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@25
    .line 4313
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    #@27
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@2a
    .line 4302
    .end local v0    # "engine":Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    #@2b
    .line 4314
    .restart local v0    # "engine":Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    #@2c
    .line 4315
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v1, "PFTBT"

    #@2f
    const-string/jumbo v3, "Error closing transport pipe in runner"

    #@32
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    goto :goto_0

    #@36
    .line 4308
    .end local v0    # "engine":Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    #@37
    .line 4309
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "PFTBT"

    #@3a
    new-instance v3, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v4, "Exception during full package backup of "

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    .line 4311
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@55
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@58
    .line 4313
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    #@5a
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@5d
    goto :goto_0

    #@5e
    .line 4314
    :catch_2
    move-exception v6

    #@5f
    .line 4315
    .restart local v6    # "e":Ljava/io/IOException;
    const-string/jumbo v1, "PFTBT"

    #@62
    const-string/jumbo v3, "Error closing transport pipe in runner"

    #@65
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    goto :goto_0

    #@69
    .line 4310
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@6a
    .line 4311
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mLatch:Ljava/util/concurrent/CountDownLatch;

    #@6c
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@6f
    .line 4313
    :try_start_4
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    #@71
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@74
    .line 4310
    :goto_1
    throw v1

    #@75
    .line 4314
    :catch_3
    move-exception v6

    #@76
    .line 4315
    .restart local v6    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "PFTBT"

    #@79
    const-string/jumbo v4, "Error closing transport pipe in runner"

    #@7c
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    goto :goto_1
.end method
