.class public Landroid/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;,
        Landroid/app/backup/BackupManager$BackupObserverWrapper;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_AGENT_FAILURE:I = -0x3eb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_BACKUP_CANCELLED:I = -0x7d3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_BACKUP_NOT_ALLOWED:I = -0x7d1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_PACKAGE_NOT_FOUND:I = -0x7d2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_ABORTED:I = -0x3e8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_INVALID:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_PACKAGE_REJECTED:I = -0x3ea
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_QUOTA_EXCEEDED:I = -0x3ed
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_TRANSPORT_UNAVAILABLE:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_BACKUP_SERVICES_AVAILABLE:Ljava/lang/String; = "backup_services_available"

.field public static final whitelist FLAG_NON_INCREMENTAL_BACKUP:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist IS_BACKUP_SERVICE_ACTIVE_ENFORCE_PERMISSION_IN_SERVICE:J = 0x9723ef2L

.field public static final whitelist PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BackupManager"

.field public static greylist sService:Landroid/app/backup/IBackupManager;


# instance fields
.field private greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 232
    return-void
.end method

.method private static greylist checkServiceBinder()V
    .registers 1

    .line 216
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_11

    .line 217
    nop

    .line 218
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 217
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    sput-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    .line 220
    :cond_11
    return-void
.end method

.method public static whitelist dataChanged(Ljava/lang/String;)V
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 268
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 269
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_15

    .line 271
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p0}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 274
    goto :goto_15

    .line 272
    :catch_d
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged(pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method public static blacklist dataChangedForUser(ILjava/lang/String;)V
    .registers 5
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 294
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 295
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_15

    .line 297
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p0, p1}, Landroid/app/backup/IBackupManager;->dataChangedForUser(ILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 300
    goto :goto_15

    .line 298
    :catch_d
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged(userId,pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method


# virtual methods
.method public whitelist backupNow()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 750
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 751
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_15

    .line 753
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->backupNow()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 756
    goto :goto_15

    .line 754
    :catch_d
    move-exception v0

    .line 755
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "backupNow() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method public whitelist beginRestoreSession()Landroid/app/backup/RestoreSession;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, "session":Landroid/app/backup/RestoreSession;
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 381
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_28

    .line 384
    :try_start_8
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 385
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3}, Landroid/app/backup/IBackupManager;->beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v1

    .line 386
    .local v1, "binder":Landroid/app/backup/IRestoreSession;
    if-eqz v1, :cond_1f

    .line 387
    new-instance v2, Landroid/app/backup/RestoreSession;

    iget-object v3, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1e} :catch_20

    move-object v0, v2

    .line 391
    .end local v1    # "binder":Landroid/app/backup/IRestoreSession;
    :cond_1f
    goto :goto_28

    .line 389
    :catch_20
    move-exception v1

    .line 390
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BackupManager"

    const-string v3, "beginRestoreSession() couldn\'t connect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_28
    :goto_28
    return-object v0
.end method

.method public whitelist cancelBackups()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 877
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 878
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_15

    .line 880
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->cancelBackups()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 883
    goto :goto_15

    .line 881
    :catch_d
    move-exception v0

    .line 882
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "cancelBackups() couldn\'t connect."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method public whitelist dataChanged()V
    .registers 4

    .line 244
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 245
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1b

    .line 247
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    .line 250
    goto :goto_1b

    .line 248
    :catch_13
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public whitelist excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1048
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 1049
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_15

    .line 1051
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 1054
    goto :goto_15

    .line 1052
    :catch_d
    move-exception v0

    .line 1053
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "excludeKeysFromRestore() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method public whitelist getAvailableRestoreToken(Ljava/lang/String;)J
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 774
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 775
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1c

    .line 777
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getAvailableRestoreTokenForUser(ILjava/lang/String;)J

    move-result-wide v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    return-wide v0

    .line 778
    :catch_14
    move-exception v0

    .line 779
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getAvailableRestoreToken() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getBackupRestoreEventLogger(Landroid/app/backup/BackupAgent;)Landroid/app/backup/BackupRestoreEventLogger;
    .registers 5
    .param p1, "backupAgent"    # Landroid/app/backup/BackupAgent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1073
    invoke-virtual {p1}, Landroid/app/backup/BackupAgent;->getBackupRestoreEventLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v0

    .line 1074
    .local v0, "logger":Landroid/app/backup/BackupRestoreEventLogger;
    if-eqz v0, :cond_b

    .line 1078
    invoke-virtual {p1}, Landroid/app/backup/BackupAgent;->getBackupRestoreEventLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v1

    return-object v1

    .line 1075
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempting to get logger on an uninitialised BackupAgent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 940
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 941
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1c

    .line 943
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    return-object v0

    .line 944
    :catch_14
    move-exception v0

    .line 945
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getConfigurationIntent() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrentTransport()Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 535
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 536
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_16

    .line 538
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    .line 539
    :catch_e
    move-exception v0

    .line 540
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getCurrentTransport() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrentTransportComponent()Landroid/content/ComponentName;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 556
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 557
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1c

    .line 559
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->getCurrentTransportComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    return-object v0

    .line 560
    :catch_14
    move-exception v0

    .line 561
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getCurrentTransportComponent() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 982
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 983
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1c

    .line 985
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    return-object v0

    .line 986
    :catch_14
    move-exception v0

    .line 987
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getDataManagementIntent() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDataManagementIntentLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1024
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 1025
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1c

    .line 1027
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    return-object v0

    .line 1028
    :catch_14
    move-exception v0

    .line 1029
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getDataManagementIntentLabel() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1008
    invoke-virtual {p0, p1}, Landroid/app/backup/BackupManager;->getDataManagementIntentLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1009
    .local v0, "label":Ljava/lang/CharSequence;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public whitelist getDelayedRestoreLogger()Landroid/app/backup/BackupRestoreEventLogger;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1092
    new-instance v0, Landroid/app/backup/BackupRestoreEventLogger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/app/backup/BackupRestoreEventLogger;-><init>(I)V

    return-object v0
.end method

.method public whitelist getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 961
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 962
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1c

    .line 964
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    return-object v0

    .line 965
    :catch_14
    move-exception v0

    .line 966
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getDestinationString() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;
    .registers 6
    .param p1, "ancestralSerialNumber"    # J

    .line 899
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 900
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_17

    .line 902
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    .line 903
    :catch_e
    move-exception v0

    .line 904
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "getUserForAncestralSerialNumber() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isAppEligibleForBackup(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 796
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 797
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_1d

    .line 799
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/backup/IBackupManager;->isAppEligibleForBackupForUser(ILjava/lang/String;)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    return v0

    .line 800
    :catch_14
    move-exception v0

    .line 801
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "isAppEligibleForBackup(pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isBackupEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 456
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 457
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_17

    .line 459
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return v0

    .line 460
    :catch_e
    move-exception v0

    .line 461
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "isBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isBackupServiceActive(Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 488
    const-wide/32 v0, 0x9723ef2

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_13

    .line 490
    iget-object v0, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "isBackupServiceActive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_13
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 494
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_2e

    .line 496
    :try_start_1a
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_24} :catch_25

    return v0

    .line 497
    :catch_25
    move-exception v0

    .line 498
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "isBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2e
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist listAllTransports()[Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 575
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 576
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_17

    .line 578
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->listAllTransports()[Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    .line 579
    :catch_e
    move-exception v0

    .line 580
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "listAllTransports() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist reportDelayedRestoreResult(Landroid/app/backup/BackupRestoreEventLogger;)V
    .registers 5
    .param p1, "logger"    # Landroid/app/backup/BackupRestoreEventLogger;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1105
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 1106
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_20

    .line 1108
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1109
    invoke-virtual {p1}, Landroid/app/backup/BackupRestoreEventLogger;->getLoggingResults()Ljava/util/List;

    move-result-object v2

    .line 1108
    invoke-interface {v0, v1, v2}, Landroid/app/backup/IBackupManager;->reportDelayedRestoreResult(Ljava/lang/String;Ljava/util/List;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_17

    .line 1112
    goto :goto_20

    .line 1110
    :catch_17
    move-exception v0

    .line 1111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "reportDelayedRestoreResult() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    :goto_20
    return-void
.end method

.method public whitelist requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;)I
    .registers 5
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/BackupObserver;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 826
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/backup/BackupManager;->requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;Landroid/app/backup/BackupManagerMonitor;I)I

    move-result v0

    return v0
.end method

.method public whitelist requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;Landroid/app/backup/BackupManagerMonitor;I)I
    .registers 8
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/BackupObserver;
    .param p3, "monitor"    # Landroid/app/backup/BackupManagerMonitor;
    .param p4, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 851
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 852
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_2d

    .line 854
    const/4 v0, 0x0

    if-nez p2, :cond_c

    .line 855
    move-object v1, v0

    goto :goto_13

    .line 856
    :cond_c
    :try_start_c
    new-instance v1, Landroid/app/backup/BackupManager$BackupObserverWrapper;

    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p2}, Landroid/app/backup/BackupManager$BackupObserverWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/BackupObserver;)V

    :goto_13
    nop

    .line 857
    .local v1, "observerWrapper":Landroid/app/backup/BackupManager$BackupObserverWrapper;
    if-nez p3, :cond_17

    .line 858
    goto :goto_1c

    .line 859
    :cond_17
    new-instance v0, Landroid/app/backup/BackupManagerMonitorWrapper;

    invoke-direct {v0, p3}, Landroid/app/backup/BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/BackupManagerMonitor;)V

    :goto_1c
    nop

    .line 860
    .local v0, "monitorWrapper":Landroid/app/backup/BackupManagerMonitorWrapper;
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1, v1, v0, p4}, Landroid/app/backup/IBackupManager;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_23} :catch_24

    return v2

    .line 861
    .end local v0    # "monitorWrapper":Landroid/app/backup/BackupManagerMonitorWrapper;
    .end local v1    # "observerWrapper":Landroid/app/backup/BackupManager$BackupObserverWrapper;
    :catch_24
    move-exception v0

    .line 862
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "requestBackup() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2d
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist requestRestore(Landroid/app/backup/RestoreObserver;)I
    .registers 3
    .param p1, "observer"    # Landroid/app/backup/RestoreObserver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupManager;->requestRestore(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I

    move-result v0

    return v0
.end method

.method public whitelist requestRestore(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    .registers 5
    .param p1, "observer"    # Landroid/app/backup/RestoreObserver;
    .param p2, "monitor"    # Landroid/app/backup/BackupManagerMonitor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    const-string v0, "BackupManager"

    const-string/jumbo v1, "requestRestore(): Since Android P app can no longer request restoring of its backup."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "transport"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 698
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 699
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_17

    .line 701
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    .line 702
    :catch_e
    move-exception v0

    .line 703
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "selectBackupTransport() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist selectBackupTransport(Landroid/content/ComponentName;Landroid/app/backup/SelectBackupTransportCallback;)V
    .registers 6
    .param p1, "transport"    # Landroid/content/ComponentName;
    .param p2, "listener"    # Landroid/app/backup/SelectBackupTransportCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 724
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 725
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_27

    .line 727
    if-nez p2, :cond_b

    .line 728
    const/4 v0, 0x0

    goto :goto_12

    :cond_b
    :try_start_b
    new-instance v0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;

    iget-object v1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2}, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/SelectBackupTransportCallback;)V

    .line 729
    .local v0, "wrapper":Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;
    :goto_12
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 730
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 729
    invoke-interface {v1, v2, p1, v0}, Landroid/app/backup/IBackupManager;->selectBackupTransportAsyncForUser(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1d} :catch_1e

    .line 733
    .end local v0    # "wrapper":Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;
    goto :goto_27

    .line 731
    :catch_1e
    move-exception v0

    .line 732
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "selectBackupTransportAsync() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_27
    :goto_27
    return-void
.end method

.method public whitelist setAncestralSerialNumber(J)V
    .registers 6
    .param p1, "ancestralSerialNumber"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 920
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 921
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_16

    .line 923
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->setAncestralSerialNumber(J)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 926
    goto :goto_16

    .line 924
    :catch_d
    move-exception v0

    .line 925
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "setAncestralSerialNumber() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setAutoRestore(Z)V
    .registers 5
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 515
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 516
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_16

    .line 518
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 521
    goto :goto_16

    .line 519
    :catch_d
    move-exception v0

    .line 520
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "setAutoRestore() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setBackupEnabled(Z)V
    .registers 5
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 408
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 409
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_16

    .line 411
    :try_start_7
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 414
    goto :goto_16

    .line 412
    :catch_d
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "setBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setFrameworkSchedulingEnabled(Z)V
    .registers 6
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 435
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 436
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    const-string/jumbo v1, "setFrameworkSchedulingEnabled() couldn\'t connect"

    const-string v2, "BackupManager"

    if-nez v0, :cond_10

    .line 437
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void

    .line 442
    :cond_10
    :try_start_10
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v3, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v3, p1}, Landroid/app/backup/IBackupManager;->setFrameworkSchedulingEnabledForUser(IZ)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b} :catch_1c

    .line 445
    goto :goto_20

    .line 443
    :catch_1c
    move-exception v0

    .line 444
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public whitelist updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 16
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "configurationIntent"    # Landroid/content/Intent;
    .param p4, "currentDestinationString"    # Ljava/lang/String;
    .param p5, "dataManagementIntent"    # Landroid/content/Intent;
    .param p6, "dataManagementLabel"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 665
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 666
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_2c

    .line 668
    :try_start_7
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v0, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 669
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_1c

    .line 668
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .end local p1    # "transportComponent":Landroid/content/ComponentName;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "configurationIntent":Landroid/content/Intent;
    .end local p4    # "currentDestinationString":Ljava/lang/String;
    .end local p5    # "dataManagementIntent":Landroid/content/Intent;
    .end local p6    # "dataManagementLabel":Ljava/lang/CharSequence;
    .local v3, "transportComponent":Landroid/content/ComponentName;
    .local v4, "name":Ljava/lang/String;
    .local v5, "configurationIntent":Landroid/content/Intent;
    .local v6, "currentDestinationString":Ljava/lang/String;
    .local v7, "dataManagementIntent":Landroid/content/Intent;
    .local v8, "dataManagementLabel":Ljava/lang/CharSequence;
    :try_start_15
    invoke-interface/range {v1 .. v8}, Landroid/app/backup/IBackupManager;->updateTransportAttributesForUser(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    .line 678
    goto :goto_32

    .line 676
    :catch_19
    move-exception v0

    move-object p1, v0

    goto :goto_24

    .end local v3    # "transportComponent":Landroid/content/ComponentName;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "configurationIntent":Landroid/content/Intent;
    .end local v6    # "currentDestinationString":Ljava/lang/String;
    .end local v7    # "dataManagementIntent":Landroid/content/Intent;
    .end local v8    # "dataManagementLabel":Ljava/lang/CharSequence;
    .restart local p1    # "transportComponent":Landroid/content/ComponentName;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "configurationIntent":Landroid/content/Intent;
    .restart local p4    # "currentDestinationString":Ljava/lang/String;
    .restart local p5    # "dataManagementIntent":Landroid/content/Intent;
    .restart local p6    # "dataManagementLabel":Ljava/lang/CharSequence;
    :catch_1c
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    move-object p1, v0

    .line 677
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "configurationIntent":Landroid/content/Intent;
    .end local p4    # "currentDestinationString":Ljava/lang/String;
    .end local p5    # "dataManagementIntent":Landroid/content/Intent;
    .end local p6    # "dataManagementLabel":Ljava/lang/CharSequence;
    .restart local v3    # "transportComponent":Landroid/content/ComponentName;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "configurationIntent":Landroid/content/Intent;
    .restart local v6    # "currentDestinationString":Ljava/lang/String;
    .restart local v7    # "dataManagementIntent":Landroid/content/Intent;
    .restart local v8    # "dataManagementLabel":Ljava/lang/CharSequence;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_24
    const-string p2, "BackupManager"

    const-string p3, "describeTransport() couldn\'t connect"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 666
    .end local v3    # "transportComponent":Landroid/content/ComponentName;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "configurationIntent":Landroid/content/Intent;
    .end local v6    # "currentDestinationString":Ljava/lang/String;
    .end local v7    # "dataManagementIntent":Landroid/content/Intent;
    .end local v8    # "dataManagementLabel":Ljava/lang/CharSequence;
    .local p1, "transportComponent":Landroid/content/ComponentName;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "configurationIntent":Landroid/content/Intent;
    .restart local p4    # "currentDestinationString":Ljava/lang/String;
    .restart local p5    # "dataManagementIntent":Landroid/content/Intent;
    .restart local p6    # "dataManagementLabel":Ljava/lang/CharSequence;
    :cond_2c
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 680
    .end local p1    # "transportComponent":Landroid/content/ComponentName;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "configurationIntent":Landroid/content/Intent;
    .end local p4    # "currentDestinationString":Ljava/lang/String;
    .end local p5    # "dataManagementIntent":Landroid/content/Intent;
    .end local p6    # "dataManagementLabel":Ljava/lang/CharSequence;
    .restart local v3    # "transportComponent":Landroid/content/ComponentName;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "configurationIntent":Landroid/content/Intent;
    .restart local v6    # "currentDestinationString":Ljava/lang/String;
    .restart local v7    # "dataManagementIntent":Landroid/content/Intent;
    .restart local v8    # "dataManagementLabel":Ljava/lang/CharSequence;
    :goto_32
    return-void
.end method

.method public whitelist updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 7
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "configurationIntent"    # Landroid/content/Intent;
    .param p4, "currentDestinationString"    # Ljava/lang/String;
    .param p5, "dataManagementIntent"    # Landroid/content/Intent;
    .param p6, "dataManagementLabel"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 623
    invoke-virtual/range {p0 .. p6}, Landroid/app/backup/BackupManager;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 630
    return-void
.end method
