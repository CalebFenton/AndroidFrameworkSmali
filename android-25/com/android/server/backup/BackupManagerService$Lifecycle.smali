.class public final Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 354
    new-instance v0, Lcom/android/server/backup/Trampoline;

    #@5
    invoke-direct {v0, p1}, Lcom/android/server/backup/Trampoline;-><init>(Landroid/content/Context;)V

    #@8
    sput-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    #@a
    .line 352
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 359
    const-string/jumbo v0, "backup"

    #@3
    sget-object v1, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@8
    .line 358
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 364
    if-nez p1, :cond_1

    #@4
    .line 365
    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    #@6
    invoke-virtual {v3, p1}, Lcom/android/server/backup/Trampoline;->initialize(I)V

    #@9
    .line 368
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-wrap4(I)Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    .line 370
    const-string/jumbo v3, "BackupManagerService"

    #@12
    const-string/jumbo v6, "Backup enable apparently not migrated"

    #@15
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 372
    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    #@1a
    iget-object v3, v3, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    #@1c
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1f
    move-result-object v2

    #@20
    .line 374
    .local v2, "r":Landroid/content/ContentResolver;
    const-string/jumbo v3, "backup_enabled"

    #@23
    const/4 v6, -0x1

    #@24
    .line 373
    invoke-static {v2, v3, v6, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@27
    move-result v1

    #@28
    .line 375
    .local v1, "enableState":I
    if-ltz v1, :cond_4

    #@2a
    .line 377
    const-string/jumbo v6, "BackupManagerService"

    #@2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v7, "Migrating enable state "

    #@35
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v7

    #@39
    if-eqz v1, :cond_2

    #@3b
    move v3, v4

    #@3c
    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 379
    if-eqz v1, :cond_3

    #@49
    :goto_1
    invoke-static {v4, p1}, Lcom/android/server/backup/BackupManagerService;->-wrap20(ZI)V

    #@4c
    .line 381
    const-string/jumbo v3, "backup_enabled"

    #@4f
    const/4 v4, 0x0

    #@50
    .line 380
    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@53
    .line 390
    .end local v1    # "enableState":I
    .end local v2    # "r":Landroid/content/ContentResolver;
    :cond_0
    :goto_2
    :try_start_0
    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    #@55
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-wrap5(I)Z

    #@58
    move-result v4

    #@59
    invoke-virtual {v3, v4}, Lcom/android/server/backup/Trampoline;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5c
    .line 363
    :cond_1
    :goto_3
    return-void

    #@5d
    .restart local v1    # "enableState":I
    .restart local v2    # "r":Landroid/content/ContentResolver;
    :cond_2
    move v3, v5

    #@5e
    .line 377
    goto :goto_0

    #@5f
    :cond_3
    move v4, v5

    #@60
    .line 379
    goto :goto_1

    #@61
    .line 384
    :cond_4
    const-string/jumbo v3, "BackupManagerService"

    #@64
    const-string/jumbo v4, "Backup not yet configured; retaining null enable state"

    #@67
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    goto :goto_2

    #@6b
    .line 391
    .end local v1    # "enableState":I
    .end local v2    # "r":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    #@6c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_3
.end method
