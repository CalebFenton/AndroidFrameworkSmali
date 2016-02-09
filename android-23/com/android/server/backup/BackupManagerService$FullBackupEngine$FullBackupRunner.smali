.class Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupRunner"
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mPackage:Landroid/content/pm/PackageInfo;

.field mPipe:Landroid/os/ParcelFileDescriptor;

.field mSendApk:Z

.field mToken:I

.field mWidgetData:[B

.field mWriteManifest:Z

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ[B)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .param p2, "pack"    # Landroid/content/pm/PackageInfo;
    .param p3, "agent"    # Landroid/app/IBackupAgent;
    .param p4, "pipe"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "token"    # I
    .param p6, "sendApk"    # Z
    .param p7, "writeManifest"    # Z
    .param p8, "widgetData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3281
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3284
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    #@7
    .line 3285
    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mWidgetData:[B

    #@9
    .line 3286
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    #@b
    .line 3287
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    #@15
    .line 3288
    iput p5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mToken:I

    #@17
    .line 3289
    iput-boolean p6, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mSendApk:Z

    #@19
    .line 3290
    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mWriteManifest:Z

    #@1b
    .line 3283
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    #@0
    .prologue
    .line 3296
    :try_start_0
    new-instance v5, Landroid/app/backup/FullBackupDataOutput;

    #@2
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    #@4
    invoke-direct {v5, v0}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@7
    .line 3298
    .local v5, "output":Landroid/app/backup/FullBackupDataOutput;
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mWriteManifest:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 3299
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mWidgetData:[B

    #@d
    if-eqz v0, :cond_2

    #@f
    const/4 v8, 0x1

    #@10
    .line 3301
    .local v8, "writeWidgetData":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@12
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    #@14
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@16
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    #@18
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mSendApk:Z

    #@1a
    invoke-static {v0, v1, v2, v3, v8}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->-wrap1(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V

    #@1d
    .line 3302
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    #@1f
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@21
    .line 3303
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@23
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    #@25
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    .line 3304
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@2b
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    #@2d
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    .line 3302
    const/4 v1, 0x0

    #@32
    const/4 v2, 0x0

    #@33
    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    #@36
    .line 3306
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@38
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    #@3a
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@3d
    .line 3309
    if-eqz v8, :cond_0

    #@3f
    .line 3310
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@41
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    #@43
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@45
    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    #@47
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mWidgetData:[B

    #@49
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->-wrap2(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V

    #@4c
    .line 3311
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    #@4e
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@50
    .line 3312
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@52
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    #@54
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    .line 3313
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@5a
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    #@5c
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    .line 3311
    const/4 v1, 0x0

    #@61
    const/4 v2, 0x0

    #@62
    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    #@65
    .line 3315
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@67
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    #@69
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@6c
    .line 3319
    .end local v8    # "writeWidgetData":Z
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mSendApk:Z

    #@6e
    if-eqz v0, :cond_1

    #@70
    .line 3320
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@72
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    #@74
    invoke-static {v0, v1, v5}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->-wrap0(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V

    #@77
    .line 3323
    :cond_1
    const-string/jumbo v0, "BackupManagerService"

    #@7a
    new-instance v1, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v2, "Calling doFullBackup() on "

    #@82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    #@88
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@8a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v1

    #@92
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@95
    .line 3324
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@97
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@99
    iget v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mToken:I

    #@9b
    const-wide/32 v2, 0x493e0

    #@9e
    const/4 v4, 0x0

    #@9f
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    #@a2
    .line 3325
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mAgent:Landroid/app/IBackupAgent;

    #@a4
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    #@a6
    iget v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mToken:I

    #@a8
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    #@aa
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@ac
    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    #@ae
    invoke-interface {v0, v1, v2, v3}, Landroid/app/IBackupAgent;->doFullBackup(Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b1
    .line 3333
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    #@b3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    #@b6
    .line 3294
    .end local v5    # "output":Landroid/app/backup/FullBackupDataOutput;
    :goto_1
    return-void

    #@b7
    .line 3299
    .restart local v5    # "output":Landroid/app/backup/FullBackupDataOutput;
    :cond_2
    const/4 v8, 0x0

    #@b8
    .restart local v8    # "writeWidgetData":Z
    goto/16 :goto_0

    #@ba
    .line 3328
    .end local v5    # "output":Landroid/app/backup/FullBackupDataOutput;
    .end local v8    # "writeWidgetData":Z
    :catch_0
    move-exception v6

    #@bb
    .line 3329
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v0, "BackupManagerService"

    #@be
    new-instance v1, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v2, "Remote agent vanished during full backup of "

    #@c6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v1

    #@ca
    .line 3330
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    #@cc
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@ce
    .line 3329
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v1

    #@d2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v1

    #@d6
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d9
    .line 3333
    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    #@db
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@de
    goto :goto_1

    #@df
    .line 3334
    :catch_1
    move-exception v7

    #@e0
    .local v7, "e":Ljava/io/IOException;
    goto :goto_1

    #@e1
    .line 3326
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v7    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v7

    #@e2
    .line 3327
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v0, "BackupManagerService"

    #@e5
    new-instance v1, Ljava/lang/StringBuilder;

    #@e7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ea
    const-string/jumbo v2, "Error running full backup for "

    #@ed
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v1

    #@f1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPackage:Landroid/content/pm/PackageInfo;

    #@f3
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@f5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v1

    #@f9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fc
    move-result-object v1

    #@fd
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@100
    .line 3333
    :try_start_5
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    #@102
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@105
    goto :goto_1

    #@106
    .line 3334
    :catch_3
    move-exception v7

    #@107
    goto :goto_1

    #@108
    .line 3331
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    #@109
    .line 3333
    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;->mPipe:Landroid/os/ParcelFileDescriptor;

    #@10b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@10e
    .line 3331
    :goto_2
    throw v0

    #@10f
    .line 3334
    :catch_4
    move-exception v7

    #@110
    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_2

    #@111
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v5    # "output":Landroid/app/backup/FullBackupDataOutput;
    :catch_5
    move-exception v7

    #@112
    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_1
.end method
