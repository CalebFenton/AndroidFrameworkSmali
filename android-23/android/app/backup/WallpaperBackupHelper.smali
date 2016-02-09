.class public Landroid/app/backup/WallpaperBackupHelper;
.super Landroid/app/backup/FileBackupHelperBase;
.source "WallpaperBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_HEIGHT_RATIO:D = 1.35

.field private static final MIN_HEIGHT_RATIO:D = 0.0

.field private static final REJECT_OUTSIZED_RESTORE:Z = true

.field private static final STAGE_FILE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WallpaperBackupHelper"

.field public static final WALLPAPER_IMAGE:Ljava/lang/String;

.field public static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field public static final WALLPAPER_INFO:Ljava/lang/String;

.field public static final WALLPAPER_INFO_KEY:Ljava/lang/String; = "/data/system/wallpaper_info.xml"


# instance fields
.field mContext:Landroid/content/Context;

.field mDesiredMinHeight:D

.field mDesiredMinWidth:D

.field mFiles:[Ljava/lang/String;

.field mKeys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 60
    new-instance v0, Ljava/io/File;

    #@3
    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@6
    move-result-object v1

    #@7
    .line 61
    const-string/jumbo v2, "wallpaper"

    #@a
    .line 60
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@d
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 59
    sput-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_IMAGE:Ljava/lang/String;

    #@13
    .line 63
    new-instance v0, Ljava/io/File;

    #@15
    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@18
    move-result-object v1

    #@19
    .line 64
    const-string/jumbo v2, "wallpaper_info.xml"

    #@1c
    .line 63
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1f
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 62
    sput-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_INFO:Ljava/lang/String;

    #@25
    .line 75
    new-instance v0, Ljava/io/File;

    #@27
    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@2a
    move-result-object v1

    #@2b
    .line 76
    const-string/jumbo v2, "wallpaper-tmp"

    #@2e
    .line 75
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@31
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    .line 74
    sput-object v0, Landroid/app/backup/WallpaperBackupHelper;->STAGE_FILE:Ljava/lang/String;

    #@37
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "files"    # [Ljava/lang/String;
    .param p3, "keys"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/app/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    #@3
    .line 94
    iput-object p1, p0, Landroid/app/backup/WallpaperBackupHelper;->mContext:Landroid/content/Context;

    #@5
    .line 95
    iput-object p2, p0, Landroid/app/backup/WallpaperBackupHelper;->mFiles:[Ljava/lang/String;

    #@7
    .line 96
    iput-object p3, p0, Landroid/app/backup/WallpaperBackupHelper;->mKeys:[Ljava/lang/String;

    #@9
    .line 99
    const-string/jumbo v4, "window"

    #@c
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/view/WindowManager;

    #@12
    .line 101
    .local v2, "wm":Landroid/view/WindowManager;
    const-string/jumbo v4, "wallpaper"

    #@15
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Landroid/app/WallpaperManager;

    #@1b
    .line 102
    .local v3, "wpm":Landroid/app/WallpaperManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@1e
    move-result-object v0

    #@1f
    .line 103
    .local v0, "d":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    #@21
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@24
    .line 104
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    #@27
    .line 105
    iget v4, v1, Landroid/graphics/Point;->x:I

    #@29
    iget v5, v1, Landroid/graphics/Point;->y:I

    #@2b
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@2e
    move-result v4

    #@2f
    int-to-double v4, v4

    #@30
    iput-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinWidth:D

    #@32
    .line 106
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    #@35
    move-result v4

    #@36
    int-to-double v4, v4

    #@37
    iput-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    #@39
    .line 107
    iget-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    #@3b
    const-wide/16 v6, 0x0

    #@3d
    cmpg-double v4, v4, v6

    #@3f
    if-gtz v4, :cond_0

    #@41
    .line 108
    iget v4, v1, Landroid/graphics/Point;->y:I

    #@43
    int-to-double v4, v4

    #@44
    iput-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    #@46
    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/app/backup/WallpaperBackupHelper;->mFiles:[Ljava/lang/String;

    #@2
    iget-object v1, p0, Landroid/app/backup/WallpaperBackupHelper;->mKeys:[Ljava/lang/String;

    #@4
    invoke-static {p1, p2, p3, v0, v1}, Landroid/app/backup/WallpaperBackupHelper;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    #@7
    .line 122
    return-void
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 10
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    #@0
    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 133
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/app/backup/WallpaperBackupHelper;->mKeys:[Ljava/lang/String;

    #@6
    invoke-virtual {p0, v1, v5}, Landroid/app/backup/WallpaperBackupHelper;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_2

    #@c
    .line 134
    const-string/jumbo v5, "/data/data/com.android.settings/files/wallpaper"

    #@f
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_3

    #@15
    .line 136
    new-instance v0, Ljava/io/File;

    #@17
    sget-object v5, Landroid/app/backup/WallpaperBackupHelper;->STAGE_FILE:Ljava/lang/String;

    #@19
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1c
    .line 137
    .local v0, "f":Ljava/io/File;
    invoke-virtual {p0, v0, p1}, Landroid/app/backup/WallpaperBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_2

    #@22
    .line 140
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    #@24
    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@27
    .line 141
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    #@28
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@2a
    .line 142
    sget-object v5, Landroid/app/backup/WallpaperBackupHelper;->STAGE_FILE:Ljava/lang/String;

    #@2c
    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@2f
    .line 155
    iget-wide v6, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    #@31
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@33
    int-to-double v8, v5

    #@34
    div-double v2, v6, v8

    #@36
    .line 156
    .local v2, "heightRatio":D
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@38
    int-to-double v6, v5

    #@39
    iget-wide v8, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinWidth:D

    #@3b
    cmpg-double v5, v6, v8

    #@3d
    if-ltz v5, :cond_0

    #@3f
    .line 157
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@41
    int-to-double v6, v5

    #@42
    iget-wide v8, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinWidth:D

    #@44
    cmpg-double v5, v6, v8

    #@46
    if-gez v5, :cond_1

    #@48
    .line 164
    :cond_0
    const-string/jumbo v5, "WallpaperBackupHelper"

    #@4b
    new-instance v6, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v7, "Restored image dimensions (w="

    #@53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    .line 165
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@59
    .line 164
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    .line 165
    const-string/jumbo v7, ", h="

    #@60
    .line 164
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v6

    #@64
    .line 165
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@66
    .line 164
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    .line 166
    const-string/jumbo v7, ") too far off target (tw="

    #@6d
    .line 164
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    .line 167
    iget-wide v8, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinWidth:D

    #@73
    .line 164
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@76
    move-result-object v6

    #@77
    .line 167
    const-string/jumbo v7, ", th="

    #@7a
    .line 164
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    .line 167
    iget-wide v8, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    #@80
    .line 164
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@83
    move-result-object v6

    #@84
    .line 168
    const-string/jumbo v7, "); falling back to default wallpaper."

    #@87
    .line 164
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v6

    #@8b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v6

    #@8f
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    .line 169
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@95
    .line 170
    return-void

    #@96
    .line 158
    :cond_1
    const-wide v6, 0x3ff599999999999aL    # 1.35

    #@9b
    cmpl-double v5, v2, v6

    #@9d
    if-gez v5, :cond_0

    #@9f
    .line 159
    const-wide/16 v6, 0x0

    #@a1
    cmpg-double v5, v2, v6

    #@a3
    if-lez v5, :cond_0

    #@a5
    .line 179
    const-string/jumbo v5, "WallpaperBackupHelper"

    #@a8
    const-string/jumbo v6, "Applying restored wallpaper image."

    #@ab
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ae
    .line 180
    new-instance v5, Ljava/io/File;

    #@b0
    sget-object v6, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_IMAGE:Ljava/lang/String;

    #@b2
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@b5
    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@b8
    .line 131
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "heightRatio":D
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :goto_0
    return-void

    #@b9
    .line 182
    :cond_3
    const-string/jumbo v5, "/data/system/wallpaper_info.xml"

    #@bc
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v5

    #@c0
    if-eqz v5, :cond_2

    #@c2
    .line 184
    new-instance v0, Ljava/io/File;

    #@c4
    sget-object v5, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_INFO:Ljava/lang/String;

    #@c6
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@c9
    .line 185
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {p0, v0, p1}, Landroid/app/backup/WallpaperBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    #@cc
    goto :goto_0
.end method

.method public bridge synthetic writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    invoke-super {p0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    #@3
    return-void
.end method
