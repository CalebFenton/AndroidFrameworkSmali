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
    .line 329
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 330
    new-instance v0, Lcom/android/server/backup/Trampoline;

    #@5
    invoke-direct {v0, p1}, Lcom/android/server/backup/Trampoline;-><init>(Landroid/content/Context;)V

    #@8
    sput-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    #@a
    .line 328
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 340
    const/16 v3, 0x1f4

    #@3
    if-ne p1, v3, :cond_1

    #@5
    .line 341
    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    #@7
    invoke-virtual {v3, v4}, Lcom/android/server/backup/Trampoline;->initialize(I)V

    #@a
    .line 339
    :cond_0
    :goto_0
    return-void

    #@b
    .line 342
    :cond_1
    const/16 v3, 0x258

    #@d
    if-ne p1, v3, :cond_0

    #@f
    .line 343
    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    #@11
    iget-object v3, v3, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@16
    move-result-object v2

    #@17
    .line 345
    .local v2, "r":Landroid/content/ContentResolver;
    const-string/jumbo v3, "backup_enabled"

    #@1a
    .line 344
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_2

    #@20
    const/4 v0, 0x1

    #@21
    .line 347
    .local v0, "areEnabled":Z
    :goto_1
    :try_start_0
    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    #@23
    invoke-virtual {v3, v0}, Lcom/android/server/backup/Trampoline;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    goto :goto_0

    #@27
    .line 348
    :catch_0
    move-exception v1

    #@28
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@29
    .line 344
    .end local v0    # "areEnabled":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v0, 0x0

    #@2a
    .restart local v0    # "areEnabled":Z
    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 335
    const-string/jumbo v0, "backup"

    #@3
    sget-object v1, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@8
    .line 334
    return-void
.end method
