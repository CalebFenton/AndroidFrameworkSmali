.class public Lcom/android/server/backup/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SystemBackupAgent.java"


# static fields
.field private static final NOTIFICATION_HELPER:Ljava/lang/String; = "notifications"

.field private static final PERMISSION_HELPER:Ljava/lang/String; = "permissions"

.field private static final PREFERRED_HELPER:Ljava/lang/String; = "preferred_activities"

.field private static final SHORTCUT_MANAGER_HELPER:Ljava/lang/String; = "shortcut_manager"

.field private static final SYNC_SETTINGS_HELPER:Ljava/lang/String; = "account_sync_settings"

.field private static final TAG:Ljava/lang/String; = "SystemBackupAgent"

.field private static final USAGE_STATS_HELPER:Ljava/lang/String; = "usage_stats"

.field private static final WALLPAPER_HELPER:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_IMAGE:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_DIR:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_FILENAME:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field private static final WALLPAPER_INFO:Ljava/lang/String;

.field private static final WALLPAPER_INFO_DIR:Ljava/lang/String;

.field private static final WALLPAPER_INFO_FILENAME:Ljava/lang/String; = "wallpaper_info.xml"

.field private static final WALLPAPER_INFO_KEY:Ljava/lang/String; = "/data/system/wallpaper_info.xml"


# instance fields
.field private mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 62
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 61
    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    #@b
    .line 63
    sget-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_IMAGE:Ljava/lang/String;

    #@d
    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    #@f
    .line 68
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 67
    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    #@19
    .line 69
    sget-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_INFO:Ljava/lang/String;

    #@1b
    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    #@1d
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    #@3
    .line 74
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;

    #@6
    .line 40
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    const-string/jumbo v0, "account_sync_settings"

    #@3
    new-instance v1, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    #@5
    invoke-direct {v1, p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;)V

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@b
    .line 80
    const-string/jumbo v0, "preferred_activities"

    #@e
    new-instance v1, Lcom/android/server/backup/PreferredActivityBackupHelper;

    #@10
    invoke-direct {v1}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>()V

    #@13
    invoke-virtual {p0, v0, v1}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@16
    .line 81
    const-string/jumbo v0, "notifications"

    #@19
    new-instance v1, Lcom/android/server/backup/NotificationBackupHelper;

    #@1b
    invoke-direct {v1, p0}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(Landroid/content/Context;)V

    #@1e
    invoke-virtual {p0, v0, v1}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@21
    .line 82
    const-string/jumbo v0, "permissions"

    #@24
    new-instance v1, Lcom/android/server/backup/PermissionBackupHelper;

    #@26
    invoke-direct {v1}, Lcom/android/server/backup/PermissionBackupHelper;-><init>()V

    #@29
    invoke-virtual {p0, v0, v1}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@2c
    .line 83
    const-string/jumbo v0, "usage_stats"

    #@2f
    new-instance v1, Lcom/android/server/backup/UsageStatsBackupHelper;

    #@31
    invoke-direct {v1, p0}, Lcom/android/server/backup/UsageStatsBackupHelper;-><init>(Landroid/content/Context;)V

    #@34
    invoke-virtual {p0, v0, v1}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@37
    .line 84
    const-string/jumbo v0, "shortcut_manager"

    #@3a
    new-instance v1, Lcom/android/server/backup/ShortcutBackupHelper;

    #@3c
    invoke-direct {v1}, Lcom/android/server/backup/ShortcutBackupHelper;-><init>()V

    #@3f
    invoke-virtual {p0, v0, v1}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@42
    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    #@45
    .line 78
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 9
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 98
    new-instance v3, Landroid/app/backup/WallpaperBackupHelper;

    #@5
    .line 99
    new-array v4, v6, [Ljava/lang/String;

    #@7
    sget-object v5, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    #@9
    aput-object v5, v4, v8

    #@b
    sget-object v5, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    #@d
    aput-object v5, v4, v7

    #@f
    .line 100
    new-array v5, v6, [Ljava/lang/String;

    #@11
    const-string/jumbo v6, "/data/data/com.android.settings/files/wallpaper"

    #@14
    aput-object v6, v5, v8

    #@16
    const-string/jumbo v6, "/data/system/wallpaper_info.xml"

    #@19
    aput-object v6, v5, v7

    #@1b
    .line 98
    invoke-direct {v3, p0, v4, v5}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    #@1e
    iput-object v3, p0, Lcom/android/server/backup/SystemBackupAgent;->mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;

    #@20
    .line 101
    const-string/jumbo v3, "wallpaper"

    #@23
    iget-object v4, p0, Lcom/android/server/backup/SystemBackupAgent;->mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;

    #@25
    invoke-virtual {p0, v3, v4}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@28
    .line 104
    const-string/jumbo v3, "system_files"

    #@2b
    new-instance v4, Landroid/app/backup/WallpaperBackupHelper;

    #@2d
    .line 105
    new-array v5, v7, [Ljava/lang/String;

    #@2f
    sget-object v6, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    #@31
    aput-object v6, v5, v8

    #@33
    .line 106
    new-array v6, v7, [Ljava/lang/String;

    #@35
    const-string/jumbo v7, "/data/data/com.android.settings/files/wallpaper"

    #@38
    aput-object v7, v6, v8

    #@3a
    .line 104
    invoke-direct {v4, p0, v5, v6}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    #@3d
    invoke-virtual {p0, v3, v4}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@40
    .line 108
    const-string/jumbo v3, "account_sync_settings"

    #@43
    new-instance v4, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    #@45
    invoke-direct {v4, p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;)V

    #@48
    invoke-virtual {p0, v3, v4}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@4b
    .line 109
    const-string/jumbo v3, "preferred_activities"

    #@4e
    new-instance v4, Lcom/android/server/backup/PreferredActivityBackupHelper;

    #@50
    invoke-direct {v4}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>()V

    #@53
    invoke-virtual {p0, v3, v4}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@56
    .line 110
    const-string/jumbo v3, "notifications"

    #@59
    new-instance v4, Lcom/android/server/backup/NotificationBackupHelper;

    #@5b
    invoke-direct {v4, p0}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(Landroid/content/Context;)V

    #@5e
    invoke-virtual {p0, v3, v4}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@61
    .line 111
    const-string/jumbo v3, "permissions"

    #@64
    new-instance v4, Lcom/android/server/backup/PermissionBackupHelper;

    #@66
    invoke-direct {v4}, Lcom/android/server/backup/PermissionBackupHelper;-><init>()V

    #@69
    invoke-virtual {p0, v3, v4}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@6c
    .line 112
    const-string/jumbo v3, "usage_stats"

    #@6f
    new-instance v4, Lcom/android/server/backup/UsageStatsBackupHelper;

    #@71
    invoke-direct {v4, p0}, Lcom/android/server/backup/UsageStatsBackupHelper;-><init>(Landroid/content/Context;)V

    #@74
    invoke-virtual {p0, v3, v4}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@77
    .line 113
    const-string/jumbo v3, "shortcut_manager"

    #@7a
    new-instance v4, Lcom/android/server/backup/ShortcutBackupHelper;

    #@7c
    invoke-direct {v4}, Lcom/android/server/backup/ShortcutBackupHelper;-><init>()V

    #@7f
    invoke-virtual {p0, v3, v4}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@82
    .line 116
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    #@85
    .line 119
    const-string/jumbo v3, "wallpaper"

    #@88
    .line 118
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@8b
    move-result-object v2

    #@8c
    check-cast v2, Landroid/app/IWallpaperManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@8e
    .line 120
    .local v2, "wallpaper":Landroid/app/IWallpaperManager;
    if-eqz v2, :cond_0

    #@90
    .line 122
    :try_start_1
    invoke-interface {v2}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@93
    .line 95
    .end local v2    # "wallpaper":Landroid/app/IWallpaperManager;
    :cond_0
    :goto_0
    return-void

    #@94
    .line 123
    .restart local v2    # "wallpaper":Landroid/app/IWallpaperManager;
    :catch_0
    move-exception v1

    #@95
    .line 124
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "SystemBackupAgent"

    #@98
    new-instance v4, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v5, "Couldn\'t restore settings\n"

    #@a0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v4

    #@a4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v4

    #@ac
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@af
    goto :goto_0

    #@b0
    .line 127
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "wallpaper":Landroid/app/IWallpaperManager;
    :catch_1
    move-exception v0

    #@b1
    .line 130
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "SystemBackupAgent"

    #@b4
    const-string/jumbo v4, "restore failed"

    #@b7
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ba
    .line 131
    new-instance v3, Ljava/io/File;

    #@bc
    sget-object v4, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    #@be
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@c1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@c4
    .line 132
    new-instance v3, Ljava/io/File;

    #@c6
    sget-object v4, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    #@c8
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@cb
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@ce
    goto :goto_0
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 15
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    const-string/jumbo v2, "SystemBackupAgent"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "Restoring file domain="

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    move-object/from16 v0, p5

    #@11
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    const-string/jumbo v4, " path="

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    move-object/from16 v0, p6

    #@1e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 143
    const/4 v13, 0x0

    #@2a
    .line 145
    .local v13, "restoredWallpaper":Z
    const/4 v10, 0x0

    #@2b
    .line 147
    .local v10, "outFile":Ljava/io/File;
    const-string/jumbo v2, "r"

    #@2e
    move-object/from16 v0, p5

    #@30
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_0

    #@36
    .line 148
    const-string/jumbo v2, "wallpaper_info.xml"

    #@39
    move-object/from16 v0, p6

    #@3b
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_3

    #@41
    .line 149
    new-instance v10, Ljava/io/File;

    #@43
    .end local v10    # "outFile":Ljava/io/File;
    sget-object v2, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    #@45
    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@48
    .line 150
    .local v10, "outFile":Ljava/io/File;
    const/4 v13, 0x1

    #@49
    .line 158
    .end local v10    # "outFile":Ljava/io/File;
    :cond_0
    :goto_0
    if-nez v10, :cond_1

    #@4b
    .line 159
    :try_start_0
    const-string/jumbo v2, "SystemBackupAgent"

    #@4e
    new-instance v3, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v4, "Skipping unrecognized system file: [ "

    #@56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    move-object/from16 v0, p5

    #@5c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    const-string/jumbo v4, " : "

    #@63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    move-object/from16 v0, p6

    #@69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    const-string/jumbo v4, " ]"

    #@70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    :cond_1
    move-object/from16 v2, p1

    #@7d
    move-wide/from16 v3, p2

    #@7f
    move/from16 v5, p4

    #@81
    move-wide/from16 v6, p7

    #@83
    move-wide/from16 v8, p9

    #@85
    .line 161
    invoke-static/range {v2 .. v10}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    #@88
    .line 163
    if-eqz v13, :cond_2

    #@8a
    .line 166
    const-string/jumbo v2, "wallpaper"

    #@8d
    .line 165
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@90
    move-result-object v14

    #@91
    check-cast v14, Landroid/app/IWallpaperManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@93
    .line 167
    .local v14, "wallpaper":Landroid/app/IWallpaperManager;
    if-eqz v14, :cond_2

    #@95
    .line 169
    :try_start_1
    invoke-interface {v14}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@98
    .line 139
    .end local v14    # "wallpaper":Landroid/app/IWallpaperManager;
    :cond_2
    :goto_1
    return-void

    #@99
    .line 151
    .local v10, "outFile":Ljava/io/File;
    :cond_3
    const-string/jumbo v2, "wallpaper"

    #@9c
    move-object/from16 v0, p6

    #@9e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v2

    #@a2
    if-eqz v2, :cond_0

    #@a4
    .line 152
    new-instance v10, Ljava/io/File;

    #@a6
    .end local v10    # "outFile":Ljava/io/File;
    sget-object v2, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    #@a8
    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@ab
    .line 153
    .local v10, "outFile":Ljava/io/File;
    const/4 v13, 0x1

    #@ac
    goto :goto_0

    #@ad
    .line 170
    .end local v10    # "outFile":Ljava/io/File;
    .restart local v14    # "wallpaper":Landroid/app/IWallpaperManager;
    :catch_0
    move-exception v12

    #@ae
    .line 171
    .local v12, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v2, "SystemBackupAgent"

    #@b1
    new-instance v3, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v4, "Couldn\'t restore settings\n"

    #@b9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v3

    #@bd
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v3

    #@c1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v3

    #@c5
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@c8
    goto :goto_1

    #@c9
    .line 175
    .end local v12    # "re":Landroid/os/RemoteException;
    .end local v14    # "wallpaper":Landroid/app/IWallpaperManager;
    :catch_1
    move-exception v11

    #@ca
    .line 176
    .local v11, "e":Ljava/io/IOException;
    if-eqz v13, :cond_2

    #@cc
    .line 178
    new-instance v2, Ljava/io/File;

    #@ce
    sget-object v3, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    #@d0
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@d6
    .line 179
    new-instance v2, Ljava/io/File;

    #@d8
    sget-object v3, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    #@da
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@dd
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@e0
    goto :goto_1
.end method

.method public onRestoreFinished()V
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 188
    iget-object v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;

    #@6
    invoke-virtual {v0}, Landroid/app/backup/WallpaperBackupHelper;->onRestoreFinished()V

    #@9
    .line 185
    :cond_0
    return-void
.end method
