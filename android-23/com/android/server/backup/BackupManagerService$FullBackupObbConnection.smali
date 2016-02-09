.class Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupObbConnection"
.end annotation


# instance fields
.field volatile mService:Lcom/android/internal/backup/IObbBackupService;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    #@0
    .prologue
    .line 3118
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3119
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    #@8
    .line 3118
    return-void
.end method

.method private waitForConnection()V
    .locals 2

    #@0
    .prologue
    .line 3177
    monitor-enter p0

    #@1
    .line 3178
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v1, :cond_0

    #@5
    .line 3181
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8
    goto :goto_0

    #@9
    .line 3182
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
    .line 3176
    return-void

    #@d
    .line 3177
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
    throw v1
.end method


# virtual methods
.method public backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 3136
    const/4 v3, 0x0

    #@1
    .line 3137
    .local v3, "success":Z
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->waitForConnection()V

    #@4
    .line 3139
    const/4 v2, 0x0

    #@5
    .line 3141
    .local v2, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    #@8
    move-result-object v2

    #@9
    .line 3142
    .local v2, "pipes":[Landroid/os/ParcelFileDescriptor;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@b
    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    #@e
    move-result v4

    #@f
    .line 3143
    .local v4, "token":I
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@11
    const-wide/32 v6, 0x493e0

    #@14
    const/4 v8, 0x0

    #@15
    invoke-virtual {v5, v4, v6, v7, v8}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    #@18
    .line 3144
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    #@1a
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@1c
    const/4 v7, 0x1

    #@1d
    aget-object v7, v2, v7

    #@1f
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@21
    iget-object v8, v8, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    #@23
    invoke-interface {v5, v6, v7, v4, v8}, Lcom/android/internal/backup/IObbBackupService;->backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    #@26
    .line 3145
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@28
    const/4 v6, 0x0

    #@29
    aget-object v6, v2, v6

    #@2b
    invoke-static {v5, v6, p2}, Lcom/android/server/backup/BackupManagerService;->-wrap10(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    #@2e
    .line 3146
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@30
    invoke-virtual {v5, v4}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result v3

    #@34
    .line 3151
    .local v3, "success":Z
    :try_start_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    #@37
    .line 3152
    if-eqz v2, :cond_1

    #@39
    .line 3153
    const/4 v5, 0x0

    #@3a
    aget-object v5, v2, v5

    #@3c
    if-eqz v5, :cond_0

    #@3e
    const/4 v5, 0x0

    #@3f
    aget-object v5, v2, v5

    #@41
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    #@44
    .line 3154
    :cond_0
    const/4 v5, 0x1

    #@45
    aget-object v5, v2, v5

    #@47
    if-eqz v5, :cond_1

    #@49
    const/4 v5, 0x1

    #@4a
    aget-object v5, v2, v5

    #@4c
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@4f
    .line 3160
    .end local v2    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "success":Z
    .end local v4    # "token":I
    :cond_1
    :goto_0
    return v3

    #@50
    .line 3156
    .restart local v2    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "success":Z
    .restart local v4    # "token":I
    :catch_0
    move-exception v0

    #@51
    .line 3157
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "BackupManagerService"

    #@54
    const-string/jumbo v6, "I/O error closing down OBB backup"

    #@57
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5a
    goto :goto_0

    #@5b
    .line 3147
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .end local v4    # "token":I
    .local v3, "success":Z
    :catch_1
    move-exception v1

    #@5c
    .line 3148
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v5, "BackupManagerService"

    #@5f
    new-instance v6, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v7, "Unable to back up OBBs for "

    #@67
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v6

    #@73
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@76
    .line 3151
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    #@79
    .line 3152
    if-eqz v2, :cond_1

    #@7b
    .line 3153
    const/4 v5, 0x0

    #@7c
    aget-object v5, v2, v5

    #@7e
    if-eqz v5, :cond_2

    #@80
    const/4 v5, 0x0

    #@81
    aget-object v5, v2, v5

    #@83
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    #@86
    .line 3154
    :cond_2
    const/4 v5, 0x1

    #@87
    aget-object v5, v2, v5

    #@89
    if-eqz v5, :cond_1

    #@8b
    const/4 v5, 0x1

    #@8c
    aget-object v5, v2, v5

    #@8e
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@91
    goto :goto_0

    #@92
    .line 3156
    :catch_2
    move-exception v0

    #@93
    .line 3157
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "BackupManagerService"

    #@96
    const-string/jumbo v6, "I/O error closing down OBB backup"

    #@99
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9c
    goto :goto_0

    #@9d
    .line 3149
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@9e
    .line 3151
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    #@a1
    .line 3152
    if-eqz v2, :cond_4

    #@a3
    .line 3153
    const/4 v6, 0x0

    #@a4
    aget-object v6, v2, v6

    #@a6
    if-eqz v6, :cond_3

    #@a8
    const/4 v6, 0x0

    #@a9
    aget-object v6, v2, v6

    #@ab
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    #@ae
    .line 3154
    :cond_3
    const/4 v6, 0x1

    #@af
    aget-object v6, v2, v6

    #@b1
    if-eqz v6, :cond_4

    #@b3
    const/4 v6, 0x1

    #@b4
    aget-object v6, v2, v6

    #@b6
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@b9
    .line 3149
    :cond_4
    :goto_1
    throw v5

    #@ba
    .line 3156
    :catch_3
    move-exception v0

    #@bb
    .line 3157
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "BackupManagerService"

    #@be
    const-string/jumbo v7, "I/O error closing down OBB backup"

    #@c1
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c4
    goto :goto_1
.end method

.method public establish()V
    .locals 5

    #@0
    .prologue
    .line 3124
    new-instance v1, Landroid/content/Intent;

    #@2
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@5
    new-instance v2, Landroid/content/ComponentName;

    #@7
    .line 3125
    const-string/jumbo v3, "com.android.sharedstoragebackup"

    #@a
    .line 3126
    const-string/jumbo v4, "com.android.sharedstoragebackup.ObbBackupService"

    #@d
    .line 3124
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@13
    move-result-object v0

    #@14
    .line 3127
    .local v0, "obbIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@16
    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@18
    .line 3128
    const/4 v2, 0x1

    #@19
    .line 3127
    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@1c
    .line 3122
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 3190
    monitor-enter p0

    #@1
    .line 3191
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/backup/IObbBackupService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IObbBackupService;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    #@7
    .line 3194
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 3189
    return-void

    #@c
    .line 3190
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 3200
    monitor-enter p0

    #@1
    .line 3201
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    #@4
    .line 3203
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 3199
    return-void

    #@9
    .line 3200
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .locals 17
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "fileSize"    # J
    .param p5, "type"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .param p11, "token"    # I
    .param p12, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    #@0
    .prologue
    .line 3166
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->waitForConnection()V

    #@3
    .line 3169
    :try_start_0
    move-object/from16 v0, p0

    #@5
    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    #@7
    move-object/from16 v4, p1

    #@9
    move-object/from16 v5, p2

    #@b
    move-wide/from16 v6, p3

    #@d
    move/from16 v8, p5

    #@f
    move-object/from16 v9, p6

    #@11
    move-wide/from16 v10, p7

    #@13
    move-wide/from16 v12, p9

    #@15
    move/from16 v14, p11

    #@17
    move-object/from16 v15, p12

    #@19
    invoke-interface/range {v3 .. v15}, Lcom/android/internal/backup/IObbBackupService;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 3165
    :goto_0
    return-void

    #@1d
    .line 3171
    :catch_0
    move-exception v2

    #@1e
    .line 3172
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    #@21
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v5, "Unable to restore OBBs for "

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    move-object/from16 v0, p1

    #@2f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    goto :goto_0
.end method

.method public tearDown()V
    .locals 1

    #@0
    .prologue
    .line 3132
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@7
    .line 3131
    return-void
.end method
