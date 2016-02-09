.class public Lcom/android/server/backup/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SystemBackupAgent.java"


# static fields
.field private static final NOTIFICATION_HELPER:Ljava/lang/String; = "notifications"

.field private static final PREFERRED_HELPER:Ljava/lang/String; = "preferred_activities"

.field private static final SYNC_SETTINGS_HELPER:Ljava/lang/String; = "account_sync_settings"

.field private static final TAG:Ljava/lang/String; = "SystemBackupAgent"

.field private static final WALLPAPER_HELPER:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_IMAGE:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_DIR:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_FILENAME:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field private static final WALLPAPER_INFO:Ljava/lang/String;

.field private static final WALLPAPER_INFO_DIR:Ljava/lang/String;

.field private static final WALLPAPER_INFO_FILENAME:Ljava/lang/String; = "wallpaper_info.xml"

.field private static final WALLPAPER_INFO_KEY:Ljava/lang/String; = "/data/system/wallpaper_info.xml"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 58
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 57
    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    #@b
    .line 59
    sget-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_IMAGE:Ljava/lang/String;

    #@d
    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    #@f
    .line 63
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 62
    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    #@19
    .line 64
    sget-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_INFO:Ljava/lang/String;

    #@1b
    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    #@1d
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    #@3
    return-void
.end method

.method private fullWallpaperBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 6
    .param p1, "output"    # Landroid/app/backup/FullBackupDataOutput;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 110
    invoke-virtual {p0}, Lcom/android/server/backup/SystemBackupAgent;->getPackageName()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    const-string/jumbo v1, "r"

    #@8
    .line 111
    sget-object v3, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    #@a
    sget-object v4, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    #@c
    move-object v5, p1

    #@d
    .line 110
    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    #@10
    .line 112
    invoke-virtual {p0}, Lcom/android/server/backup/SystemBackupAgent;->getPackageName()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "r"

    #@17
    .line 113
    sget-object v3, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    #@19
    sget-object v4, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    #@1b
    move-object v5, p1

    #@1c
    .line 112
    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    #@1f
    .line 105
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 11
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
    const/4 v10, 0x2

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 74
    const-string/jumbo v7, "wallpaper"

    #@6
    .line 73
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@9
    move-result-object v5

    #@a
    check-cast v5, Landroid/app/IWallpaperManager;

    #@c
    .line 75
    .local v5, "wallpaper":Landroid/app/IWallpaperManager;
    new-array v0, v10, [Ljava/lang/String;

    #@e
    sget-object v7, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    #@10
    aput-object v7, v0, v8

    #@12
    sget-object v7, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    #@14
    aput-object v7, v0, v9

    #@16
    .line 76
    .local v0, "files":[Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    #@18
    const-string/jumbo v7, "/data/data/com.android.settings/files/wallpaper"

    #@1b
    aput-object v7, v2, v8

    #@1d
    const-string/jumbo v7, "/data/system/wallpaper_info.xml"

    #@20
    aput-object v7, v2, v9

    #@22
    .line 77
    .local v2, "keys":[Ljava/lang/String;
    if-eqz v5, :cond_0

    #@24
    .line 79
    :try_start_0
    invoke-interface {v5}, Landroid/app/IWallpaperManager;->getName()Ljava/lang/String;

    #@27
    move-result-object v6

    #@28
    .line 80
    .local v6, "wallpaperName":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@2a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@2d
    move-result v7

    #@2e
    if-lez v7, :cond_0

    #@30
    .line 84
    const/4 v7, 0x1

    #@31
    new-array v1, v7, [Ljava/lang/String;

    #@33
    sget-object v7, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    #@35
    const/4 v8, 0x0

    #@36
    aput-object v7, v1, v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 85
    .end local v0    # "files":[Ljava/lang/String;
    .local v1, "files":[Ljava/lang/String;
    const/4 v7, 0x1

    #@39
    :try_start_1
    new-array v3, v7, [Ljava/lang/String;

    #@3b
    const-string/jumbo v7, "/data/system/wallpaper_info.xml"

    #@3e
    const/4 v8, 0x0

    #@3f
    aput-object v7, v3, v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@41
    .end local v2    # "keys":[Ljava/lang/String;
    .local v3, "keys":[Ljava/lang/String;
    move-object v2, v3

    #@42
    .end local v3    # "keys":[Ljava/lang/String;
    .restart local v2    # "keys":[Ljava/lang/String;
    move-object v0, v1

    #@43
    .line 91
    .end local v1    # "files":[Ljava/lang/String;
    .end local v6    # "wallpaperName":Ljava/lang/String;
    .restart local v0    # "files":[Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v7, "wallpaper"

    #@46
    new-instance v8, Landroid/app/backup/WallpaperBackupHelper;

    #@48
    invoke-direct {v8, p0, v0, v2}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    #@4b
    invoke-virtual {p0, v7, v8}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@4e
    .line 92
    const-string/jumbo v7, "account_sync_settings"

    #@51
    new-instance v8, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    #@53
    invoke-direct {v8, p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;)V

    #@56
    invoke-virtual {p0, v7, v8}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@59
    .line 93
    const-string/jumbo v7, "preferred_activities"

    #@5c
    new-instance v8, Lcom/android/server/backup/PreferredActivityBackupHelper;

    #@5e
    invoke-direct {v8}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>()V

    #@61
    invoke-virtual {p0, v7, v8}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@64
    .line 94
    const-string/jumbo v7, "notifications"

    #@67
    new-instance v8, Lcom/android/server/backup/NotificationBackupHelper;

    #@69
    invoke-direct {v8, p0}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(Landroid/content/Context;)V

    #@6c
    invoke-virtual {p0, v7, v8}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@6f
    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    #@72
    .line 71
    return-void

    #@73
    .line 87
    :catch_0
    move-exception v4

    #@74
    .line 88
    .local v4, "re":Landroid/os/RemoteException;
    :goto_1
    const-string/jumbo v7, "SystemBackupAgent"

    #@77
    new-instance v8, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v9, "Couldn\'t get wallpaper name\n"

    #@7f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v8

    #@83
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v8

    #@87
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v8

    #@8b
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    goto :goto_0

    #@8f
    .line 87
    .end local v0    # "files":[Ljava/lang/String;
    .end local v4    # "re":Landroid/os/RemoteException;
    .restart local v1    # "files":[Ljava/lang/String;
    .restart local v6    # "wallpaperName":Ljava/lang/String;
    :catch_1
    move-exception v4

    #@90
    .restart local v4    # "re":Landroid/os/RemoteException;
    move-object v0, v1

    #@91
    .end local v1    # "files":[Ljava/lang/String;
    .restart local v0    # "files":[Ljava/lang/String;
    goto :goto_1
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
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/backup/SystemBackupAgent;->fullWallpaperBackup(Landroid/app/backup/FullBackupDataOutput;)V

    #@3
    .line 100
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 10
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
    const/4 v7, 0x2

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 120
    const-string/jumbo v3, "wallpaper"

    #@6
    new-instance v4, Landroid/app/backup/WallpaperBackupHelper;

    #@8
    .line 121
    new-array v5, v7, [Ljava/lang/String;

    #@a
    sget-object v6, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    #@c
    aput-object v6, v5, v8

    #@e
    sget-object v6, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    #@10
    aput-object v6, v5, v9

    #@12
    .line 122
    new-array v6, v7, [Ljava/lang/String;

    #@14
    const-string/jumbo v7, "/data/data/com.android.settings/files/wallpaper"

    #@17
    aput-object v7, v6, v8

    #@19
    const-string/jumbo v7, "/data/system/wallpaper_info.xml"

    #@1c
    aput-object v7, v6, v9

    #@1e
    .line 120
    invoke-direct {v4, p0, v5, v6}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    #@21
    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@24
    .line 123
    const-string/jumbo v3, "system_files"

    #@27
    new-instance v4, Landroid/app/backup/WallpaperBackupHelper;

    #@29
    .line 124
    new-array v5, v9, [Ljava/lang/String;

    #@2b
    sget-object v6, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    #@2d
    aput-object v6, v5, v8

    #@2f
    .line 125
    new-array v6, v9, [Ljava/lang/String;

    #@31
    const-string/jumbo v7, "/data/data/com.android.settings/files/wallpaper"

    #@34
    aput-object v7, v6, v8

    #@36
    .line 123
    invoke-direct {v4, p0, v5, v6}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    #@39
    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@3c
    .line 126
    const-string/jumbo v3, "account_sync_settings"

    #@3f
    new-instance v4, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    #@41
    invoke-direct {v4, p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;)V

    #@44
    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@47
    .line 127
    const-string/jumbo v3, "preferred_activities"

    #@4a
    new-instance v4, Lcom/android/server/backup/PreferredActivityBackupHelper;

    #@4c
    invoke-direct {v4}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>()V

    #@4f
    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@52
    .line 128
    const-string/jumbo v3, "notifications"

    #@55
    new-instance v4, Lcom/android/server/backup/NotificationBackupHelper;

    #@57
    invoke-direct {v4, p0}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(Landroid/content/Context;)V

    #@5a
    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    #@5d
    .line 131
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    #@60
    .line 134
    const-string/jumbo v3, "wallpaper"

    #@63
    .line 133
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@66
    move-result-object v2

    #@67
    check-cast v2, Landroid/app/IWallpaperManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@69
    .line 135
    .local v2, "wallpaper":Landroid/app/IWallpaperManager;
    if-eqz v2, :cond_0

    #@6b
    .line 137
    :try_start_1
    invoke-interface {v2}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@6e
    .line 118
    .end local v2    # "wallpaper":Landroid/app/IWallpaperManager;
    :cond_0
    :goto_0
    return-void

    #@6f
    .line 138
    .restart local v2    # "wallpaper":Landroid/app/IWallpaperManager;
    :catch_0
    move-exception v1

    #@70
    .line 139
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "SystemBackupAgent"

    #@73
    new-instance v4, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v5, "Couldn\'t restore settings\n"

    #@7b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v4

    #@87
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@8a
    goto :goto_0

    #@8b
    .line 142
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "wallpaper":Landroid/app/IWallpaperManager;
    :catch_1
    move-exception v0

    #@8c
    .line 145
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "SystemBackupAgent"

    #@8f
    const-string/jumbo v4, "restore failed"

    #@92
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@95
    .line 146
    new-instance v3, Ljava/io/File;

    #@97
    sget-object v4, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    #@99
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9c
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@9f
    .line 147
    new-instance v3, Ljava/io/File;

    #@a1
    sget-object v4, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    #@a3
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@a6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@a9
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
    .line 155
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
    .line 158
    const/4 v13, 0x0

    #@2a
    .line 160
    .local v13, "restoredWallpaper":Z
    const/4 v10, 0x0

    #@2b
    .line 162
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
    .line 163
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
    .line 164
    new-instance v10, Ljava/io/File;

    #@43
    .end local v10    # "outFile":Ljava/io/File;
    sget-object v2, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    #@45
    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@48
    .line 165
    .local v10, "outFile":Ljava/io/File;
    const/4 v13, 0x1

    #@49
    .line 173
    .end local v10    # "outFile":Ljava/io/File;
    :cond_0
    :goto_0
    if-nez v10, :cond_1

    #@4b
    .line 174
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
    .line 176
    invoke-static/range {v2 .. v10}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    #@88
    .line 178
    if-eqz v13, :cond_2

    #@8a
    .line 181
    const-string/jumbo v2, "wallpaper"

    #@8d
    .line 180
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@90
    move-result-object v14

    #@91
    check-cast v14, Landroid/app/IWallpaperManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@93
    .line 182
    .local v14, "wallpaper":Landroid/app/IWallpaperManager;
    if-eqz v14, :cond_2

    #@95
    .line 184
    :try_start_1
    invoke-interface {v14}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@98
    .line 154
    .end local v14    # "wallpaper":Landroid/app/IWallpaperManager;
    :cond_2
    :goto_1
    return-void

    #@99
    .line 166
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
    .line 167
    new-instance v10, Ljava/io/File;

    #@a6
    .end local v10    # "outFile":Ljava/io/File;
    sget-object v2, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    #@a8
    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@ab
    .line 168
    .local v10, "outFile":Ljava/io/File;
    const/4 v13, 0x1

    #@ac
    goto :goto_0

    #@ad
    .line 185
    .end local v10    # "outFile":Ljava/io/File;
    .restart local v14    # "wallpaper":Landroid/app/IWallpaperManager;
    :catch_0
    move-exception v12

    #@ae
    .line 186
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
    .line 190
    .end local v12    # "re":Landroid/os/RemoteException;
    .end local v14    # "wallpaper":Landroid/app/IWallpaperManager;
    :catch_1
    move-exception v11

    #@ca
    .line 191
    .local v11, "e":Ljava/io/IOException;
    if-eqz v13, :cond_2

    #@cc
    .line 193
    new-instance v2, Ljava/io/File;

    #@ce
    sget-object v3, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    #@d0
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@d6
    .line 194
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
