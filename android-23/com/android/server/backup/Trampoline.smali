.class public Lcom/android/server/backup/Trampoline;
.super Landroid/app/backup/IBackupManager$Stub;
.source "Trampoline.java"


# static fields
.field static final BACKUP_DISABLE_PROPERTY:Ljava/lang/String; = "ro.backup.disable"

.field static final BACKUP_SUPPRESS_FILENAME:Ljava/lang/String; = "backup-suppress"

.field static final DEBUG_TRAMPOLINE:Z = false

.field static final TAG:Ljava/lang/String; = "BackupManagerService"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mGlobalDisable:Z

.field volatile mService:Lcom/android/server/backup/BackupManagerService;

.field final mSuppressFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    #@3
    .line 55
    iput-object p1, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    #@5
    .line 56
    new-instance v0, Ljava/io/File;

    #@7
    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, "backup"

    #@e
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@11
    .line 57
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@14
    .line 58
    new-instance v1, Ljava/io/File;

    #@16
    const-string/jumbo v2, "backup-suppress"

    #@19
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1c
    iput-object v1, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    #@1e
    .line 59
    const-string/jumbo v1, "ro.backup.disable"

    #@21
    const/4 v2, 0x0

    #@22
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@25
    move-result v1

    #@26
    iput-boolean v1, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    #@28
    .line 54
    return-void
.end method


# virtual methods
.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encryptionPassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 256
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v4, p4

    #@8
    move-object v5, p5

    #@9
    .line 257
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/BackupManagerService;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    #@c
    .line 254
    :cond_0
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 152
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    .line 153
    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    #@7
    .line 150
    :cond_0
    return-void
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 160
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    .line 161
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->agentDisconnected(Ljava/lang/String;)V

    #@7
    .line 158
    :cond_0
    return-void
.end method

.method public backupNow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 218
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    .line 219
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->backupNow()V

    #@7
    .line 216
    :cond_0
    return-void
.end method

.method beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .locals 2
    .param p1, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    #@0
    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 341
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z

    #@7
    move-result v1

    #@8
    :goto_0
    return v1

    #@9
    :cond_0
    const/4 v1, 0x0

    #@a
    goto :goto_0
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transportID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 307
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@3
    .line 308
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    #@8
    move-result-object v1

    #@9
    :cond_0
    return-object v1
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 144
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    .line 145
    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 142
    :cond_0
    return-void
.end method

.method public dataChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 135
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    .line 136
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChanged(Ljava/lang/String;)V

    #@7
    .line 133
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 327
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v2, "android.permission.DUMP"

    #@5
    const-string/jumbo v3, "BackupManagerService"

    #@8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 329
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@d
    .line 330
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@f
    .line 331
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@12
    .line 326
    :goto_0
    return-void

    #@13
    .line 333
    :cond_0
    const-string/jumbo v1, "Inactive"

    #@16
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    goto :goto_0
.end method

.method endFullBackup()V
    .locals 1

    #@0
    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 346
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    .line 347
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->endFullBackup()V

    #@7
    .line 344
    :cond_0
    return-void
.end method

.method public fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "includeApks"    # Z
    .param p3, "includeObbs"    # Z
    .param p4, "includeShared"    # Z
    .param p5, "doWidgets"    # Z
    .param p6, "allApps"    # Z
    .param p7, "allIncludesSystem"    # Z
    .param p8, "doCompress"    # Z
    .param p9, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 229
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    move-object v1, p1

    #@5
    move v2, p2

    #@6
    move v3, p3

    #@7
    move v4, p4

    #@8
    move v5, p5

    #@9
    move/from16 v6, p6

    #@b
    move/from16 v7, p7

    #@d
    move/from16 v8, p8

    #@f
    move-object/from16 v9, p9

    #@11
    .line 230
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/backup/BackupManagerService;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V

    #@14
    .line 227
    :cond_0
    return-void
.end method

.method public fullRestore(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 246
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    .line 247
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    #@7
    .line 244
    :cond_0
    return-void
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 238
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    .line 239
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->fullTransportBackup([Ljava/lang/String;)V

    #@7
    .line 236
    :cond_0
    return-void
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 322
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    #@7
    move-result-wide v2

    #@8
    :goto_0
    return-wide v2

    #@9
    :cond_0
    const-wide/16 v2, 0x0

    #@b
    goto :goto_0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 282
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@3
    .line 283
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    #@8
    move-result-object v1

    #@9
    :cond_0
    return-object v1
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 264
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@3
    .line 265
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransport()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    :cond_0
    return-object v1
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 294
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@3
    .line 295
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    #@8
    move-result-object v1

    #@9
    :cond_0
    return-object v1
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 300
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@3
    .line 301
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    :cond_0
    return-object v1
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 288
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@3
    .line 289
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    :cond_0
    return-object v1
.end method

.method public hasBackupPassword()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 212
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->hasBackupPassword()Z

    #@7
    move-result v1

    #@8
    :goto_0
    return v1

    #@9
    :cond_0
    const/4 v1, 0x0

    #@a
    goto :goto_0
.end method

.method public initialize(I)V
    .locals 3
    .param p1, "whichUser"    # I

    #@0
    .prologue
    .line 65
    if-nez p1, :cond_1

    #@2
    .line 67
    iget-boolean v0, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 68
    const-string/jumbo v0, "BackupManagerService"

    #@9
    const-string/jumbo v1, "Backup/restore not supported"

    #@c
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 69
    return-void

    #@10
    .line 72
    :cond_0
    monitor-enter p0

    #@11
    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    #@13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_2

    #@19
    .line 74
    new-instance v0, Lcom/android/server/backup/BackupManagerService;

    #@1b
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    #@1d
    invoke-direct {v0, v1, p0}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;)V

    #@20
    iput-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :goto_0
    monitor-exit p0

    #@23
    .line 63
    :cond_1
    return-void

    #@24
    .line 76
    :cond_2
    :try_start_1
    const-string/jumbo v0, "BackupManagerService"

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "Backup inactive in user "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 72
    :catchall_0
    move-exception v0

    #@40
    monitor-exit p0

    #@41
    throw v0
.end method

.method public isBackupEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 200
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isBackupEnabled()Z

    #@7
    move-result v1

    #@8
    :goto_0
    return v1

    #@9
    :cond_0
    const/4 v1, 0x0

    #@a
    goto :goto_0
.end method

.method public isBackupServiceActive(I)Z
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 123
    if-nez p1, :cond_1

    #@3
    .line 124
    monitor-enter p0

    #@4
    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    monitor-exit p0

    #@a
    return v0

    #@b
    .line 124
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0

    #@e
    .line 128
    :cond_1
    return v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 270
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@3
    .line 271
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    :cond_0
    return-object v1
.end method

.method public opComplete(IJ)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "result"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 314
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    .line 315
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->opComplete(IJ)V

    #@7
    .line 312
    :cond_0
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 168
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    .line 169
    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->restoreAtInstall(Ljava/lang/String;I)V

    #@7
    .line 166
    :cond_0
    return-void
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 276
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@3
    .line 277
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    :cond_0
    return-object v1
.end method

.method public setAutoRestore(Z)V
    .locals 1
    .param p1, "doAutoRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 184
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    .line 185
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->setAutoRestore(Z)V

    #@7
    .line 182
    :cond_0
    return-void
.end method

.method public setBackupEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 176
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    .line 177
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->setBackupEnabled(Z)V

    #@7
    .line 174
    :cond_0
    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 206
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    :goto_0
    return v1

    #@9
    :cond_0
    const/4 v1, 0x0

    #@a
    goto :goto_0
.end method

.method public setBackupProvisioned(Z)V
    .locals 1
    .param p1, "isProvisioned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@2
    .line 192
    .local v0, "svc":Lcom/android/server/backup/BackupManagerService;
    if-eqz v0, :cond_0

    #@4
    .line 193
    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->setBackupProvisioned(Z)V

    #@7
    .line 190
    :cond_0
    return-void
.end method

.method public setBackupServiceActive(IZ)V
    .locals 5
    .param p1, "userHandle"    # I
    .param p2, "makeActive"    # Z

    #@0
    .prologue
    .line 84
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 85
    .local v0, "caller":I
    const/16 v2, 0x3e8

    #@6
    if-eq v0, v2, :cond_0

    #@8
    .line 86
    if-eqz v0, :cond_0

    #@a
    .line 87
    new-instance v2, Ljava/lang/SecurityException;

    #@c
    const-string/jumbo v3, "No permission to configure backup activity"

    #@f
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 90
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 91
    const-string/jumbo v2, "BackupManagerService"

    #@1a
    const-string/jumbo v3, "Backup/restore not supported"

    #@1d
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 92
    return-void

    #@21
    .line 95
    :cond_1
    if-nez p1, :cond_3

    #@23
    .line 96
    monitor-enter p0

    #@24
    .line 97
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/Trampoline;->isBackupServiceActive(I)Z

    #@27
    move-result v2

    #@28
    if-eq p2, v2, :cond_2

    #@2a
    .line 98
    const-string/jumbo v3, "BackupManagerService"

    #@2d
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "Making backup "

    #@35
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    .line 99
    if-eqz p2, :cond_4

    #@3b
    const-string/jumbo v2, ""

    #@3e
    .line 98
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 99
    const-string/jumbo v4, "active in user "

    #@45
    .line 98
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 100
    if-eqz p2, :cond_5

    #@56
    .line 101
    new-instance v2, Lcom/android/server/backup/BackupManagerService;

    #@58
    iget-object v3, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    #@5a
    invoke-direct {v2, v3, p0}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;)V

    #@5d
    iput-object v2, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;

    #@5f
    .line 102
    iget-object v2, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    #@61
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@64
    :cond_2
    :goto_1
    monitor-exit p0

    #@65
    .line 82
    :cond_3
    return-void

    #@66
    .line 99
    :cond_4
    :try_start_1
    const-string/jumbo v2, "in"

    #@69
    goto :goto_0

    #@6a
    .line 104
    :cond_5
    const/4 v2, 0x0

    #@6b
    iput-object v2, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6d
    .line 106
    :try_start_2
    iget-object v2, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    #@6f
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@72
    goto :goto_1

    #@73
    .line 107
    :catch_0
    move-exception v1

    #@74
    .line 108
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "BackupManagerService"

    #@77
    const-string/jumbo v3, "Unable to persist backup service inactivity"

    #@7a
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7d
    goto :goto_1

    #@7e
    .line 96
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@7f
    monitor-exit p0

    #@80
    throw v2
.end method
