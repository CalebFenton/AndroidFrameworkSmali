.class public Lcom/android/server/backup/PreferredActivityBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "PreferredActivityBackupHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final KEY_INTENT_VERIFICATION:Ljava/lang/String; = "intent-verification"

.field private static final KEY_PREFERRED:Ljava/lang/String; = "preferred-activity"

.field private static final STATE_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PreferredBackup"


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    .line 42
    new-array v0, v3, [Ljava/lang/String;

    #@3
    .line 43
    const-string/jumbo v1, "preferred-activity"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 44
    const-string/jumbo v1, "default-apps"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 45
    const-string/jumbo v1, "intent-verification"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 42
    invoke-direct {p0, v3, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    #@18
    .line 41
    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    #@0
    .prologue
    .line 73
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v1

    #@4
    .line 78
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    const-string/jumbo v2, "preferred-activity"

    #@7
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 80
    const/4 v2, 0x0

    #@e
    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restorePreferredActivities([BI)V

    #@11
    .line 72
    :goto_0
    return-void

    #@12
    .line 78
    :cond_0
    const-string/jumbo v2, "default-apps"

    #@15
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 83
    const/4 v2, 0x0

    #@1c
    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restoreDefaultApps([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    goto :goto_0

    #@20
    .line 91
    :catch_0
    move-exception v0

    #@21
    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PreferredBackup"

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "Unable to restore key "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    goto :goto_0

    #@3c
    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "intent-verification"

    #@3f
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_2

    #@45
    .line 86
    const/4 v2, 0x0

    #@46
    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restoreIntentFilterVerification([BI)V

    #@49
    goto :goto_0

    #@4a
    .line 89
    :cond_2
    const-string/jumbo v2, "PreferredBackup"

    #@4d
    new-instance v3, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v4, "Unexpected restore key "

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@64
    goto :goto_0
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v1

    #@4
    .line 55
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    const-string/jumbo v2, "preferred-activity"

    #@7
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 57
    const/4 v2, 0x0

    #@e
    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getPreferredActivityBackup(I)[B

    #@11
    move-result-object v2

    #@12
    return-object v2

    #@13
    .line 55
    :cond_0
    const-string/jumbo v2, "default-apps"

    #@16
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 59
    const/4 v2, 0x0

    #@1d
    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getDefaultAppsBackup(I)[B

    #@20
    move-result-object v2

    #@21
    return-object v2

    #@22
    .line 55
    :cond_1
    const-string/jumbo v2, "intent-verification"

    #@25
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2

    #@2b
    .line 61
    const/4 v2, 0x0

    #@2c
    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getIntentFilterVerificationBackup(I)[B

    #@2f
    move-result-object v2

    #@30
    return-object v2

    #@31
    .line 63
    :cond_2
    const-string/jumbo v2, "PreferredBackup"

    #@34
    new-instance v3, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v4, "Unexpected backup key "

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 68
    :goto_0
    const/4 v2, 0x0

    #@4c
    return-object v2

    #@4d
    .line 65
    :catch_0
    move-exception v0

    #@4e
    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PreferredBackup"

    #@51
    new-instance v3, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v4, "Unable to store payload "

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    goto :goto_0
.end method
