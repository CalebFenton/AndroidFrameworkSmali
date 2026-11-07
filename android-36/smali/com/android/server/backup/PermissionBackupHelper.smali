.class public Lcom/android/server/backup/PermissionBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "PermissionBackupHelper.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist KEY_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final blacklist STATE_VERSION:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "PermissionBackup"


# instance fields
.field private final blacklist mPermissionManager:Landroid/permission/PermissionManagerInternal;

.field private final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 42
    const-string/jumbo v0, "permissions"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 44
    iput p1, p0, Lcom/android/server/backup/PermissionBackupHelper;->mUserId:I

    .line 45
    const-class v0, Landroid/permission/PermissionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManagerInternal;

    iput-object v0, p0, Lcom/android/server/backup/PermissionBackupHelper;->mPermissionManager:Landroid/permission/PermissionManagerInternal;

    .line 46
    return-void
.end method


# virtual methods
.method protected blacklist applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 73
    const-string v0, "PermissionBackup"

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_52

    :cond_9
    goto :goto_15

    :pswitch_a
    const-string/jumbo v1, "permissions"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_16

    :goto_15
    const/4 v1, -0x1

    :goto_16
    packed-switch v1, :pswitch_data_58

    .line 79
    goto :goto_22

    .line 75
    :pswitch_1a
    iget-object v1, p0, Lcom/android/server/backup/PermissionBackupHelper;->mPermissionManager:Landroid/permission/PermissionManagerInternal;

    iget v2, p0, Lcom/android/server/backup/PermissionBackupHelper;->mUserId:I

    invoke-interface {v1, p2, v2}, Landroid/permission/PermissionManagerInternal;->restoreRuntimePermissions([BI)V

    .line 76
    goto :goto_38

    .line 79
    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected restore key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_39

    .line 83
    :goto_38
    goto :goto_50

    .line 81
    :catch_39
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to restore key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_50
    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x4392f484
        :pswitch_a
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_1a
    .end packed-switch
.end method

.method protected blacklist getBackupPayload(Ljava/lang/String;)[B
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 54
    const-string v0, "PermissionBackup"

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_54

    :cond_9
    goto :goto_15

    :pswitch_a
    const-string/jumbo v1, "permissions"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_16

    :goto_15
    const/4 v1, -0x1

    :goto_16
    packed-switch v1, :pswitch_data_5a

    .line 59
    goto :goto_23

    .line 56
    :pswitch_1a
    iget-object v1, p0, Lcom/android/server/backup/PermissionBackupHelper;->mPermissionManager:Landroid/permission/PermissionManagerInternal;

    iget v2, p0, Lcom/android/server/backup/PermissionBackupHelper;->mUserId:I

    invoke-interface {v1, v2}, Landroid/permission/PermissionManagerInternal;->backupRuntimePermissions(I)[B

    move-result-object v0

    return-object v0

    .line 59
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected backup key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_3a

    .line 63
    goto :goto_51

    .line 61
    :catch_3a
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to store payload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_51
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_54
    .packed-switch 0x4392f484
        :pswitch_a
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_1a
    .end packed-switch
.end method
