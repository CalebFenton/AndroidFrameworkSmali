.class public Landroid/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupManager$BackupObserverWrapper;
    }
.end annotation


# static fields
.field public static final ERROR_AGENT_FAILURE:I = -0x3eb

.field public static final ERROR_BACKUP_NOT_ALLOWED:I = -0x7d1

.field public static final ERROR_PACKAGE_NOT_FOUND:I = -0x7d2

.field public static final ERROR_TRANSPORT_ABORTED:I = -0x3e8

.field public static final ERROR_TRANSPORT_PACKAGE_REJECTED:I = -0x3ea

.field public static final ERROR_TRANSPORT_QUOTA_EXCEEDED:I = -0x3ed

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BackupManager"

.field private static sService:Landroid/app/backup/IBackupManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 150
    iput-object p1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    #@5
    .line 149
    return-void
.end method

.method private static checkServiceBinder()V
    .locals 1

    #@0
    .prologue
    .line 135
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 137
    const-string/jumbo v0, "backup"

    #@7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v0

    #@b
    .line 136
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@e
    move-result-object v0

    #@f
    sput-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@11
    .line 134
    :cond_0
    return-void
.end method

.method public static dataChanged(Ljava/lang/String;)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 182
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@3
    .line 183
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 185
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@9
    invoke-interface {v1, p0}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 181
    :cond_0
    :goto_0
    return-void

    #@d
    .line 186
    :catch_0
    move-exception v0

    #@e
    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManager"

    #@11
    const-string/jumbo v2, "dataChanged(pkg) couldn\'t connect"

    #@14
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    goto :goto_0
.end method


# virtual methods
.method public backupNow()V
    .locals 3

    #@0
    .prologue
    .line 402
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@3
    .line 403
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 405
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@9
    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->backupNow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 401
    :cond_0
    :goto_0
    return-void

    #@d
    .line 406
    :catch_0
    move-exception v0

    #@e
    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManager"

    #@11
    const-string/jumbo v2, "backupNow() couldn\'t connect"

    #@14
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    goto :goto_0
.end method

.method public beginRestoreSession()Landroid/app/backup/RestoreSession;
    .locals 7

    #@0
    .prologue
    .line 242
    const/4 v2, 0x0

    #@1
    .line 243
    .local v2, "session":Landroid/app/backup/RestoreSession;
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@4
    .line 244
    sget-object v4, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 247
    :try_start_0
    sget-object v4, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@a
    const/4 v5, 0x0

    #@b
    const/4 v6, 0x0

    #@c
    invoke-interface {v4, v5, v6}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    #@f
    move-result-object v0

    #@10
    .line 248
    .local v0, "binder":Landroid/app/backup/IRestoreSession;
    if-eqz v0, :cond_0

    #@12
    .line 249
    new-instance v3, Landroid/app/backup/RestoreSession;

    #@14
    iget-object v4, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    #@16
    invoke-direct {v3, v4, v0}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .local v3, "session":Landroid/app/backup/RestoreSession;
    move-object v2, v3

    #@1a
    .line 255
    .end local v0    # "binder":Landroid/app/backup/IRestoreSession;
    .end local v2    # "session":Landroid/app/backup/RestoreSession;
    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    :cond_0
    :goto_0
    return-object v2

    #@1b
    .line 251
    .restart local v2    # "session":Landroid/app/backup/RestoreSession;
    :catch_0
    move-exception v1

    #@1c
    .line 252
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "BackupManager"

    #@1f
    const-string/jumbo v5, "beginRestoreSession() couldn\'t connect"

    #@22
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    goto :goto_0
.end method

.method public dataChanged()V
    .locals 3

    #@0
    .prologue
    .line 160
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@3
    .line 161
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 163
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@9
    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v1, v2}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 159
    :cond_0
    :goto_0
    return-void

    #@13
    .line 164
    :catch_0
    move-exception v0

    #@14
    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManager"

    #@17
    const-string/jumbo v2, "dataChanged() couldn\'t connect"

    #@1a
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    goto :goto_0
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 427
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@3
    .line 428
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 430
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@9
    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->getAvailableRestoreToken(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-wide v2

    #@d
    return-wide v2

    #@e
    .line 431
    :catch_0
    move-exception v0

    #@f
    .line 432
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManager"

    #@12
    const-string/jumbo v2, "getAvailableRestoreToken() couldn\'t connect"

    #@15
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 435
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    #@1a
    return-wide v2
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 333
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@4
    .line 334
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 336
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@a
    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 337
    :catch_0
    move-exception v0

    #@10
    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManager"

    #@13
    const-string/jumbo v2, "getCurrentTransport() couldn\'t connect"

    #@16
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 341
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 450
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@3
    .line 451
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 453
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@9
    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->isAppEligibleForBackup(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 454
    :catch_0
    move-exception v0

    #@f
    .line 455
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManager"

    #@12
    const-string/jumbo v2, "isAppEligibleForBackup(pkg) couldn\'t connect"

    #@15
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 458
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@19
    return v1
.end method

.method public isBackupEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 290
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@3
    .line 291
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 293
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@9
    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 294
    :catch_0
    move-exception v0

    #@f
    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManager"

    #@12
    const-string/jumbo v2, "isBackupEnabled() couldn\'t connect"

    #@15
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 298
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@19
    return v1
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 352
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@4
    .line 353
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 355
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@a
    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->listAllTransports()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 356
    :catch_0
    move-exception v0

    #@10
    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManager"

    #@13
    const-string/jumbo v2, "listAllTransports() couldn\'t connect"

    #@16
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 360
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;)I
    .locals 4
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/BackupObserver;

    #@0
    .prologue
    .line 479
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@3
    .line 480
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 482
    if-nez p2, :cond_0

    #@9
    .line 483
    const/4 v1, 0x0

    #@a
    .line 485
    :goto_0
    :try_start_0
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@c
    invoke-interface {v2, p1, v1}, Landroid/app/backup/IBackupManager;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)I

    #@f
    move-result v2

    #@10
    return v2

    #@11
    .line 484
    :cond_0
    new-instance v1, Landroid/app/backup/BackupManager$BackupObserverWrapper;

    #@13
    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    #@15
    invoke-direct {v1, p0, v2, p2}, Landroid/app/backup/BackupManager$BackupObserverWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/BackupObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .local v1, "observerWrapper":Landroid/app/backup/BackupManager$BackupObserverWrapper;
    goto :goto_0

    #@19
    .line 486
    .end local v1    # "observerWrapper":Landroid/app/backup/BackupManager$BackupObserverWrapper;
    :catch_0
    move-exception v0

    #@1a
    .line 487
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BackupManager"

    #@1d
    const-string/jumbo v3, "requestBackup() couldn\'t connect"

    #@20
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 490
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, -0x1

    #@24
    return v2
.end method

.method public requestRestore(Landroid/app/backup/RestoreObserver;)I
    .locals 8
    .param p1, "observer"    # Landroid/app/backup/RestoreObserver;

    #@0
    .prologue
    .line 211
    const/4 v2, -0x1

    #@1
    .line 212
    .local v2, "result":I
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@4
    .line 213
    sget-object v5, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@6
    if-eqz v5, :cond_1

    #@8
    .line 214
    const/4 v3, 0x0

    #@9
    .line 216
    .local v3, "session":Landroid/app/backup/RestoreSession;
    :try_start_0
    sget-object v5, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@b
    iget-object v6, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@10
    move-result-object v6

    #@11
    .line 217
    const/4 v7, 0x0

    #@12
    .line 216
    invoke-interface {v5, v6, v7}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    #@15
    move-result-object v0

    #@16
    .line 218
    .local v0, "binder":Landroid/app/backup/IRestoreSession;
    if-eqz v0, :cond_0

    #@18
    .line 219
    new-instance v4, Landroid/app/backup/RestoreSession;

    #@1a
    iget-object v5, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    #@1c
    invoke-direct {v4, v5, v0}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 220
    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    .local v4, "session":Landroid/app/backup/RestoreSession;
    :try_start_1
    iget-object v5, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    #@21
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v4, v5, p1}, Landroid/app/backup/RestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@28
    move-result v2

    #@29
    move-object v3, v4

    #@2a
    .line 225
    .end local v4    # "session":Landroid/app/backup/RestoreSession;
    :cond_0
    if-eqz v3, :cond_1

    #@2c
    .line 226
    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    #@2f
    .line 230
    .end local v0    # "binder":Landroid/app/backup/IRestoreSession;
    :cond_1
    :goto_0
    return v2

    #@30
    .line 222
    .restart local v3    # "session":Landroid/app/backup/RestoreSession;
    :catch_0
    move-exception v1

    #@31
    .line 223
    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    .local v1, "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_2
    const-string/jumbo v5, "BackupManager"

    #@34
    const-string/jumbo v6, "restoreSelf() unable to contact service"

    #@37
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    .line 225
    if-eqz v3, :cond_1

    #@3c
    .line 226
    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    #@3f
    goto :goto_0

    #@40
    .line 224
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    #@41
    .line 225
    :goto_2
    if-eqz v3, :cond_2

    #@43
    .line 226
    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    #@46
    .line 224
    :cond_2
    throw v5

    #@47
    .restart local v0    # "binder":Landroid/app/backup/IRestoreSession;
    .restart local v4    # "session":Landroid/app/backup/RestoreSession;
    :catchall_1
    move-exception v5

    #@48
    move-object v3, v4

    #@49
    .end local v4    # "session":Landroid/app/backup/RestoreSession;
    .local v3, "session":Landroid/app/backup/RestoreSession;
    goto :goto_2

    #@4a
    .line 222
    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    .restart local v4    # "session":Landroid/app/backup/RestoreSession;
    :catch_1
    move-exception v1

    #@4b
    .restart local v1    # "e":Landroid/os/RemoteException;
    move-object v3, v4

    #@4c
    .end local v4    # "session":Landroid/app/backup/RestoreSession;
    .restart local v3    # "session":Landroid/app/backup/RestoreSession;
    goto :goto_1
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "transport"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 377
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@4
    .line 378
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 380
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@a
    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 381
    :catch_0
    move-exception v0

    #@10
    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManager"

    #@13
    const-string/jumbo v2, "selectBackupTransport() couldn\'t connect"

    #@16
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 385
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public setAutoRestore(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    #@0
    .prologue
    .line 313
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@3
    .line 314
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 316
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@9
    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 312
    :cond_0
    :goto_0
    return-void

    #@d
    .line 317
    :catch_0
    move-exception v0

    #@e
    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManager"

    #@11
    const-string/jumbo v2, "setAutoRestore() couldn\'t connect"

    #@14
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    goto :goto_0
.end method

.method public setBackupEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    #@0
    .prologue
    .line 271
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@3
    .line 272
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 274
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@9
    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 270
    :cond_0
    :goto_0
    return-void

    #@d
    .line 275
    :catch_0
    move-exception v0

    #@e
    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManager"

    #@11
    const-string/jumbo v2, "setBackupEnabled() couldn\'t connect"

    #@14
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    goto :goto_0
.end method
