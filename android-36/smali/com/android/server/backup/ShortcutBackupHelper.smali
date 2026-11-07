.class public Lcom/android/server/backup/ShortcutBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "ShortcutBackupHelper.java"


# static fields
.field private static final blacklist BLOB_VERSION:I = 0x1

.field private static final blacklist KEY_USER_FILE:Ljava/lang/String; = "shortcutuser.xml"

.field private static final blacklist TAG:Ljava/lang/String; = "ShortcutBackupAgent"


# instance fields
.field private final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 33
    const-string/jumbo v0, "shortcutuser.xml"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 34
    iput p1, p0, Lcom/android/server/backup/ShortcutBackupHelper;->mUserId:I

    .line 35
    return-void
.end method

.method private blacklist getShortcutService()Landroid/content/pm/IShortcutService;
    .registers 2

    .line 38
    nop

    .line 39
    const-string/jumbo v0, "shortcut"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected blacklist applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_42

    :cond_7
    goto :goto_13

    :pswitch_8
    const-string/jumbo v0, "shortcutuser.xml"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_14

    :goto_13
    const/4 v0, -0x1

    :goto_14
    const-string v1, "ShortcutBackupAgent"

    packed-switch v0, :pswitch_data_48

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 63
    :pswitch_30
    :try_start_30
    invoke-direct {p0}, Lcom/android/server/backup/ShortcutBackupHelper;->getShortcutService()Landroid/content/pm/IShortcutService;

    move-result-object v0

    iget v2, p0, Lcom/android/server/backup/ShortcutBackupHelper;->mUserId:I

    invoke-interface {v0, p2, v2}, Landroid/content/pm/IShortcutService;->applyRestore([BI)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_39} :catch_3a

    .line 66
    goto :goto_41

    .line 64
    :catch_3a
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Restore failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 71
    :goto_41
    return-void

    :pswitch_data_42
    .packed-switch -0x2f430246
        :pswitch_8
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_30
    .end packed-switch
.end method

.method protected blacklist getBackupPayload(Ljava/lang/String;)[B
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    :cond_7
    goto :goto_13

    :pswitch_8
    const-string/jumbo v0, "shortcutuser.xml"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_14

    :goto_13
    const/4 v0, -0x1

    :goto_14
    const-string v1, "ShortcutBackupAgent"

    packed-switch v0, :pswitch_data_4a

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 47
    :pswitch_30
    :try_start_30
    invoke-direct {p0}, Lcom/android/server/backup/ShortcutBackupHelper;->getShortcutService()Landroid/content/pm/IShortcutService;

    move-result-object v0

    iget v2, p0, Lcom/android/server/backup/ShortcutBackupHelper;->mUserId:I

    invoke-interface {v0, v2}, Landroid/content/pm/IShortcutService;->getBackupPayload(I)[B

    move-result-object v0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3a} :catch_3b

    return-object v0

    .line 48
    :catch_3b
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Backup failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 55
    :goto_42
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_44
    .packed-switch -0x2f430246
        :pswitch_8
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_30
    .end packed-switch
.end method
