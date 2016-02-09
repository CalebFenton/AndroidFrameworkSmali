.class public Landroid/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# static fields
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
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    iput-object p1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    #@5
    .line 80
    return-void
.end method

.method private static checkServiceBinder()V
    .locals 1

    #@0
    .prologue
    .line 66
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 68
    const-string/jumbo v0, "backup"

    #@7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v0

    #@b
    .line 67
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@e
    move-result-object v0

    #@f
    sput-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@11
    .line 65
    :cond_0
    return-void
.end method

.method public static dataChanged(Ljava/lang/String;)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@3
    .line 114
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 116
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@9
    invoke-interface {v1, p0}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 112
    :cond_0
    :goto_0
    return-void

    #@d
    .line 117
    :catch_0
    move-exception v0

    #@e
    .line 118
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
    .line 333
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@3
    .line 334
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 336
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@9
    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->backupNow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 332
    :cond_0
    :goto_0
    return-void

    #@d
    .line 337
    :catch_0
    move-exception v0

    #@e
    .line 338
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
    .line 173
    const/4 v2, 0x0

    #@1
    .line 174
    .local v2, "session":Landroid/app/backup/RestoreSession;
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@4
    .line 175
    sget-object v4, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 178
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
    .line 179
    .local v0, "binder":Landroid/app/backup/IRestoreSession;
    if-eqz v0, :cond_0

    #@12
    .line 180
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
    .line 186
    .end local v0    # "binder":Landroid/app/backup/IRestoreSession;
    .end local v2    # "session":Landroid/app/backup/RestoreSession;
    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    :cond_0
    :goto_0
    return-object v2

    #@1b
    .line 182
    .restart local v2    # "session":Landroid/app/backup/RestoreSession;
    :catch_0
    move-exception v1

    #@1c
    .line 183
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
    .line 91
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@3
    .line 92
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 94
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
    .line 90
    :cond_0
    :goto_0
    return-void

    #@13
    .line 95
    :catch_0
    move-exception v0

    #@14
    .line 96
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
    .line 358
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@3
    .line 359
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 361
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
    .line 362
    :catch_0
    move-exception v0

    #@f
    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManager"

    #@12
    const-string/jumbo v2, "getAvailableRestoreToken() couldn\'t connect"

    #@15
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 366
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
    .line 264
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@4
    .line 265
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 267
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
    .line 268
    :catch_0
    move-exception v0

    #@10
    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManager"

    #@13
    const-string/jumbo v2, "getCurrentTransport() couldn\'t connect"

    #@16
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 272
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public isBackupEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 221
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@3
    .line 222
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 224
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
    .line 225
    :catch_0
    move-exception v0

    #@f
    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManager"

    #@12
    const-string/jumbo v2, "isBackupEnabled() couldn\'t connect"

    #@15
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 229
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
    .line 283
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@4
    .line 284
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 286
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
    .line 287
    :catch_0
    move-exception v0

    #@10
    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManager"

    #@13
    const-string/jumbo v2, "listAllTransports() couldn\'t connect"

    #@16
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 291
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public requestRestore(Landroid/app/backup/RestoreObserver;)I
    .locals 8
    .param p1, "observer"    # Landroid/app/backup/RestoreObserver;

    #@0
    .prologue
    .line 142
    const/4 v2, -0x1

    #@1
    .line 143
    .local v2, "result":I
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@4
    .line 144
    sget-object v5, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@6
    if-eqz v5, :cond_1

    #@8
    .line 145
    const/4 v3, 0x0

    #@9
    .line 147
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
    .line 148
    const/4 v7, 0x0

    #@12
    .line 147
    invoke-interface {v5, v6, v7}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    #@15
    move-result-object v0

    #@16
    .line 149
    .local v0, "binder":Landroid/app/backup/IRestoreSession;
    if-eqz v0, :cond_0

    #@18
    .line 150
    new-instance v4, Landroid/app/backup/RestoreSession;

    #@1a
    iget-object v5, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    #@1c
    invoke-direct {v4, v5, v0}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 151
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
    .line 156
    .end local v4    # "session":Landroid/app/backup/RestoreSession;
    :cond_0
    if-eqz v3, :cond_1

    #@2c
    .line 157
    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    #@2f
    .line 161
    .end local v0    # "binder":Landroid/app/backup/IRestoreSession;
    :cond_1
    :goto_0
    return v2

    #@30
    .line 153
    .restart local v3    # "session":Landroid/app/backup/RestoreSession;
    :catch_0
    move-exception v1

    #@31
    .line 154
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
    .line 156
    if-eqz v3, :cond_1

    #@3c
    .line 157
    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    #@3f
    goto :goto_0

    #@40
    .line 155
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    #@41
    .line 156
    :goto_2
    if-eqz v3, :cond_2

    #@43
    .line 157
    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    #@46
    .line 155
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
    .line 153
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
    .line 308
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@4
    .line 309
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 311
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
    .line 312
    :catch_0
    move-exception v0

    #@10
    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManager"

    #@13
    const-string/jumbo v2, "selectBackupTransport() couldn\'t connect"

    #@16
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public setAutoRestore(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    #@0
    .prologue
    .line 244
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@3
    .line 245
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 247
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@9
    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 243
    :cond_0
    :goto_0
    return-void

    #@d
    .line 248
    :catch_0
    move-exception v0

    #@e
    .line 249
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
    .line 202
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    #@3
    .line 203
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 205
    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    #@9
    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 201
    :cond_0
    :goto_0
    return-void

    #@d
    .line 206
    :catch_0
    move-exception v0

    #@e
    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManager"

    #@11
    const-string/jumbo v2, "setBackupEnabled() couldn\'t connect"

    #@14
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    goto :goto_0
.end method
