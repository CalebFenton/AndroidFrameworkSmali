.class public Landroid/app/backup/WallpaperBackupHelper;
.super Landroid/app/backup/FileBackupHelperBase;
.source "WallpaperBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o STAGE_FILE:Ljava/lang/String;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WallpaperBackupHelper"

.field public static final greylist-max-o WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field public static final greylist-max-o WALLPAPER_INFO_KEY:Ljava/lang/String; = "/data/system/wallpaper_info.xml"


# instance fields
.field private final greylist-max-o mKeys:[Ljava/lang/String;

.field private final greylist-max-o mWpm:Landroid/app/WallpaperManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 48
    new-instance v0, Ljava/io/File;

    .line 49
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper-tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/backup/WallpaperBackupHelper;->STAGE_FILE:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keys"    # [Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Landroid/app/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object p1, p0, Landroid/app/backup/WallpaperBackupHelper;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Landroid/app/backup/WallpaperBackupHelper;->mKeys:[Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Landroid/app/backup/WallpaperBackupHelper;->mWpm:Landroid/app/WallpaperManager;

    .line 69
    return-void
.end method


# virtual methods
.method public whitelist performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .line 80
    return-void
.end method

.method public whitelist restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .registers 8
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .line 88
    iget-object v0, p0, Landroid/app/backup/WallpaperBackupHelper;->mWpm:Landroid/app/WallpaperManager;

    const-string v1, "WallpaperBackupHelper"

    if-nez v0, :cond_d

    .line 89
    const-string/jumbo v0, "restoreEntity(): no wallpaper service"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 92
    :cond_d
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/backup/WallpaperBackupHelper;->mKeys:[Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/app/backup/WallpaperBackupHelper;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 94
    const-string v2, "/data/data/com.android.settings/files/wallpaper"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 96
    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/app/backup/WallpaperBackupHelper;->STAGE_FILE:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, "stage":Ljava/io/File;
    :try_start_28
    invoke-virtual {p0, v2, p1}, Landroid/app/backup/WallpaperBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_6c

    if-eqz v3, :cond_63

    .line 99
    :try_start_2e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_46
    .catchall {:try_start_2e .. :try_end_33} :catchall_6c

    .line 100
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_33
    iget-object v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mWpm:Landroid/app/WallpaperManager;

    invoke-virtual {v4, v3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_3c

    .line 101
    :try_start_38
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_46
    .catchall {:try_start_38 .. :try_end_3b} :catchall_6c

    .line 103
    .end local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_68

    .line 99
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_3c
    move-exception v4

    :try_start_3d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v5

    :try_start_42
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "stage":Ljava/io/File;
    .end local p0    # "this":Landroid/app/backup/WallpaperBackupHelper;
    .end local p1    # "data":Landroid/app/backup/BackupDataInputStream;
    :goto_45
    throw v4
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_6c

    .line 101
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v2    # "stage":Ljava/io/File;
    .restart local p0    # "this":Landroid/app/backup/WallpaperBackupHelper;
    .restart local p1    # "data":Landroid/app/backup/BackupDataInputStream;
    :catch_46
    move-exception v3

    .line 102
    .local v3, "e":Ljava/io/IOException;
    :try_start_47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to set restored wallpaper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    nop

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_68

    .line 105
    :cond_63
    const-string v3, "Unable to save restored wallpaper"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_47 .. :try_end_68} :catchall_6c

    .line 108
    :goto_68
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 109
    goto :goto_71

    .line 108
    :catchall_6c
    move-exception v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 109
    throw v1

    .line 112
    .end local v2    # "stage":Ljava/io/File;
    :cond_71
    :goto_71
    return-void
.end method

.method public bridge synthetic whitelist writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 37
    invoke-super {p0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
