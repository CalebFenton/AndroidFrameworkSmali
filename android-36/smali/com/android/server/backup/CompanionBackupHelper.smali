.class public Lcom/android/server/backup/CompanionBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "CompanionBackupHelper.java"


# static fields
.field private static final blacklist BLOB_VERSION:I = 0x1

.field private static final blacklist KEY_COMPANION:Ljava/lang/String; = "companion"

.field private static final blacklist TAG:Ljava/lang/String; = "CompanionBackupHelper"


# instance fields
.field private final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 43
    const-string v0, "companion"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 45
    iput p1, p0, Lcom/android/server/backup/CompanionBackupHelper;->mUserId:I

    .line 46
    return-void
.end method


# virtual methods
.method protected blacklist applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 65
    const-string v0, "Got companion backup data."

    const-string v1, "CompanionBackupHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v0, "companion"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 68
    :try_start_f
    const-string v0, "companiondevice"

    .line 69
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    .line 70
    .local v0, "cdm":Landroid/companion/ICompanionDeviceManager;
    iget v2, p0, Lcom/android/server/backup/CompanionBackupHelper;->mUserId:I

    invoke-interface {v0, p2, v2}, Landroid/companion/ICompanionDeviceManager;->applyRestoredPayload([BI)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_1f

    .line 73
    .end local v0    # "cdm":Landroid/companion/ICompanionDeviceManager;
    goto :goto_25

    .line 71
    :catch_1f
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error applying restored payload to CompanionDeviceManager."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_25
    :goto_25
    return-void
.end method

.method protected blacklist getBackupPayload(Ljava/lang/String;)[B
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "payload":[B
    const-string v1, "companion"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 53
    :try_start_9
    const-string v1, "companiondevice"

    .line 54
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 53
    invoke-static {v1}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v1

    .line 55
    .local v1, "cdm":Landroid/companion/ICompanionDeviceManager;
    iget v2, p0, Lcom/android/server/backup/CompanionBackupHelper;->mUserId:I

    invoke-interface {v1, v2}, Landroid/companion/ICompanionDeviceManager;->getBackupPayload(I)[B

    move-result-object v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1b

    move-object v0, v2

    .line 58
    .end local v1    # "cdm":Landroid/companion/ICompanionDeviceManager;
    goto :goto_23

    .line 56
    :catch_1b
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CompanionBackupHelper"

    const-string v3, "Error getting backup from CompanionDeviceManager."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_23
    :goto_23
    return-object v0
.end method
