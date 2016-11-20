.class public Lcom/android/server/backup/ShortcutBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "ShortcutBackupHelper.java"


# static fields
.field private static final BLOB_VERSION:I = 0x1

.field private static final KEY_USER_FILE:Ljava/lang/String; = "shortcutuser.xml"

.field private static final TAG:Ljava/lang/String; = "ShortcutBackupAgent"


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 32
    new-array v0, v3, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "shortcutuser.xml"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    invoke-direct {p0, v3, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    #@c
    .line 31
    return-void
.end method

.method private getShortcutService()Landroid/content/pm/IShortcutService;
    .locals 1

    #@0
    .prologue
    .line 37
    const-string/jumbo v0, "shortcut"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 36
    invoke-static {v0}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    #@0
    .prologue
    .line 58
    const-string/jumbo v1, "shortcutuser.xml"

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 61
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/ShortcutBackupHelper;->getShortcutService()Landroid/content/pm/IShortcutService;

    #@c
    move-result-object v1

    #@d
    const/4 v2, 0x0

    #@e
    invoke-interface {v1, p2, v2}, Landroid/content/pm/IShortcutService;->applyRestore([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 57
    :goto_0
    return-void

    #@12
    .line 62
    :catch_0
    move-exception v0

    #@13
    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ShortcutBackupAgent"

    #@16
    const-string/jumbo v2, "Restore failed"

    #@19
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_0

    #@1d
    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v1, "ShortcutBackupAgent"

    #@20
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "Unknown key: "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    goto :goto_0
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 42
    const-string/jumbo v1, "shortcutuser.xml"

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 45
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/ShortcutBackupHelper;->getShortcutService()Landroid/content/pm/IShortcutService;

    #@c
    move-result-object v1

    #@d
    const/4 v2, 0x0

    #@e
    invoke-interface {v1, v2}, Landroid/content/pm/IShortcutService;->getBackupPayload(I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 46
    :catch_0
    move-exception v0

    #@14
    .line 47
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ShortcutBackupAgent"

    #@17
    const-string/jumbo v2, "Backup failed"

    #@1a
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    #@1e
    return-object v1

    #@1f
    .line 51
    :cond_0
    const-string/jumbo v1, "ShortcutBackupAgent"

    #@22
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v3, "Unknown key: "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    goto :goto_0
.end method
