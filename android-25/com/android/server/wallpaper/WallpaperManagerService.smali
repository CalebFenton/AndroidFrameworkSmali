.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;,
        Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final MAX_WALLPAPER_COMPONENT_LOG_LENGTH:I = 0x80

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper_orig"

.field static final WALLPAPER_CROP:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field static final WALLPAPER_LOCK_CROP:Ljava/lang/String; = "wallpaper_lock"

.field static final WALLPAPER_LOCK_ORIG:Ljava/lang/String; = "wallpaper_lock_orig"

.field static final sPerUserFiles:[Ljava/lang/String;


# instance fields
.field final mAppOpsManager:Landroid/app/AppOpsManager;

.field final mContext:Landroid/content/Context;

.field mCurrentUserId:I

.field final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mImageWallpaper:Landroid/content/ComponentName;

.field mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

.field mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mLock:Ljava/lang/Object;

.field final mLockWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field final mUserRestorecon:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mWaitingForUnlock:Z

.field mWallpaperId:I

.field final mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(I)Ljava/io/File;
    .locals 1
    .param p0, "userId"    # I

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wallpaper/WallpaperManagerService;IZ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "keepDimensionHints"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 161
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 162
    const-string/jumbo v1, "wallpaper_orig"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "wallpaper"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 163
    const-string/jumbo v1, "wallpaper_lock_orig"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    const-string/jumbo v1, "wallpaper_lock"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 164
    const-string/jumbo v1, "wallpaper_info.xml"

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    .line 161
    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    #@23
    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 867
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    #@4
    .line 146
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@b
    .line 496
    new-instance v0, Landroid/util/SparseArray;

    #@d
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@12
    .line 497
    new-instance v0, Landroid/util/SparseArray;

    #@14
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@19
    .line 499
    new-instance v0, Landroid/util/SparseArray;

    #@1b
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseArray;

    #@20
    .line 869
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@22
    .line 871
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@25
    move-result-object v0

    #@26
    const v1, 0x104003e

    #@29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    .line 870
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    #@33
    .line 873
    const-string/jumbo v0, "window"

    #@36
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@39
    move-result-object v0

    #@3a
    .line 872
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@3d
    move-result-object v0

    #@3e
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@40
    .line 874
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@43
    move-result-object v0

    #@44
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@46
    .line 875
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@48
    const-string/jumbo v1, "appops"

    #@4b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@4e
    move-result-object v0

    #@4f
    check-cast v0, Landroid/app/AppOpsManager;

    #@51
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@53
    .line 876
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    #@55
    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    #@58
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    #@5a
    .line 877
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    #@5c
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@5e
    const/4 v2, 0x0

    #@5f
    const/4 v3, 0x1

    #@60
    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@63
    .line 878
    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@6a
    .line 879
    invoke-direct {p0, v4, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    #@6d
    .line 867
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1758
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1759
    new-instance v0, Ljava/lang/SecurityException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Access denied to process: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@19
    move-result v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 1760
    const-string/jumbo v2, ", must have permission "

    #@21
    .line 1759
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 1757
    :cond_0
    return-void
.end method

.method private ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 5
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2052
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension()I

    #@4
    move-result v0

    #@5
    .line 2053
    .local v0, "baseSize":I
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@7
    if-ge v1, v0, :cond_0

    #@9
    .line 2054
    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@b
    .line 2056
    :cond_0
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@d
    if-ge v1, v0, :cond_1

    #@f
    .line 2057
    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@11
    .line 2060
    :cond_1
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    #@13
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@16
    move-result v1

    #@17
    if-lez v1, :cond_2

    #@19
    .line 2061
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    #@1b
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@1e
    move-result v1

    #@1f
    if-gtz v1, :cond_3

    #@21
    .line 2062
    :cond_2
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    #@23
    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@25
    iget v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@27
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@2a
    .line 2050
    :cond_3
    return-void
.end method

.method private generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 24
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    .line 322
    const/16 v20, 0x0

    #@2
    .line 324
    .local v20, "success":Z
    new-instance v5, Landroid/graphics/Rect;

    #@4
    move-object/from16 v0, p1

    #@6
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    #@8
    move-object/from16 v21, v0

    #@a
    move-object/from16 v0, v21

    #@c
    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@f
    .line 335
    .local v5, "cropHint":Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    #@11
    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@14
    .line 336
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v21, 0x1

    #@16
    move/from16 v0, v21

    #@18
    move-object/from16 v1, v17

    #@1a
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@1c
    .line 337
    move-object/from16 v0, p1

    #@1e
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    #@20
    move-object/from16 v21, v0

    #@22
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@25
    move-result-object v21

    #@26
    move-object/from16 v0, v21

    #@28
    move-object/from16 v1, v17

    #@2a
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@2d
    .line 338
    move-object/from16 v0, v17

    #@2f
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@31
    move/from16 v21, v0

    #@33
    if-lez v21, :cond_0

    #@35
    move-object/from16 v0, v17

    #@37
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@39
    move/from16 v21, v0

    #@3b
    if-gtz v21, :cond_4

    #@3d
    .line 339
    :cond_0
    const-string/jumbo v21, "WallpaperManagerService"

    #@40
    const-string/jumbo v22, "Invalid wallpaper data"

    #@43
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 340
    const/16 v20, 0x0

    #@48
    .line 462
    .end local v20    # "success":Z
    :cond_1
    :goto_0
    if-nez v20, :cond_2

    #@4a
    .line 463
    const-string/jumbo v21, "WallpaperManagerService"

    #@4d
    const-string/jumbo v22, "Unable to apply new wallpaper"

    #@50
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 464
    move-object/from16 v0, p1

    #@55
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    #@57
    move-object/from16 v21, v0

    #@59
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    #@5c
    .line 467
    :cond_2
    move-object/from16 v0, p1

    #@5e
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    #@60
    move-object/from16 v21, v0

    #@62
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    #@65
    move-result v21

    #@66
    if-eqz v21, :cond_3

    #@68
    .line 468
    move-object/from16 v0, p1

    #@6a
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    #@6c
    move-object/from16 v21, v0

    #@6e
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    #@71
    move-result-object v21

    #@72
    invoke-static/range {v21 .. v21}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    #@75
    move-result v9

    #@76
    .line 321
    :cond_3
    return-void

    #@77
    .line 342
    .restart local v20    # "success":Z
    :cond_4
    const/4 v15, 0x0

    #@78
    .line 343
    .local v15, "needCrop":Z
    const/16 v16, 0x0

    #@7a
    .line 346
    .local v16, "needScale":Z
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    #@7d
    move-result v21

    #@7e
    if-eqz v21, :cond_6

    #@80
    .line 347
    const/16 v21, 0x0

    #@82
    move/from16 v0, v21

    #@84
    iput v0, v5, Landroid/graphics/Rect;->top:I

    #@86
    const/16 v21, 0x0

    #@88
    move/from16 v0, v21

    #@8a
    iput v0, v5, Landroid/graphics/Rect;->left:I

    #@8c
    .line 348
    move-object/from16 v0, v17

    #@8e
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@90
    move/from16 v21, v0

    #@92
    move/from16 v0, v21

    #@94
    iput v0, v5, Landroid/graphics/Rect;->right:I

    #@96
    .line 349
    move-object/from16 v0, v17

    #@98
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@9a
    move/from16 v21, v0

    #@9c
    move/from16 v0, v21

    #@9e
    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    #@a0
    .line 370
    :goto_1
    move-object/from16 v0, p1

    #@a2
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@a4
    move/from16 v21, v0

    #@a6
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@a9
    move-result v22

    #@aa
    move/from16 v0, v21

    #@ac
    move/from16 v1, v22

    #@ae
    if-eq v0, v1, :cond_d

    #@b0
    const/16 v16, 0x1

    #@b2
    .line 379
    :goto_2
    if-nez v15, :cond_5

    #@b4
    if-eqz v16, :cond_e

    #@b6
    .line 392
    :cond_5
    const/4 v11, 0x0

    #@b7
    .line 393
    .local v11, "f":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    #@b8
    .line 396
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    move-object/from16 v0, p1

    #@ba
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    #@bc
    move-object/from16 v21, v0

    #@be
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@c1
    move-result-object v21

    #@c2
    const/16 v22, 0x0

    #@c4
    .line 395
    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    #@c7
    move-result-object v7

    #@c8
    .line 404
    .local v7, "decoder":Landroid/graphics/BitmapRegionDecoder;
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@cb
    move-result v21

    #@cc
    move-object/from16 v0, p1

    #@ce
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@d0
    move/from16 v22, v0

    #@d2
    div-int v2, v21, v22
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d4
    .line 405
    .local v2, "actualScale":I
    const/16 v18, 0x1

    #@d6
    .line 406
    .local v18, "scale":I
    :goto_3
    mul-int/lit8 v21, v18, 0x2

    #@d8
    move/from16 v0, v21

    #@da
    if-ge v0, v2, :cond_f

    #@dc
    .line 407
    mul-int/lit8 v18, v18, 0x2

    #@de
    goto :goto_3

    #@df
    .line 353
    .end local v2    # "actualScale":I
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v11    # "f":Ljava/io/FileOutputStream;
    .end local v18    # "scale":I
    :cond_6
    iget v0, v5, Landroid/graphics/Rect;->right:I

    #@e1
    move/from16 v21, v0

    #@e3
    move-object/from16 v0, v17

    #@e5
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@e7
    move/from16 v22, v0

    #@e9
    move/from16 v0, v21

    #@eb
    move/from16 v1, v22

    #@ed
    if-le v0, v1, :cond_9

    #@ef
    move-object/from16 v0, v17

    #@f1
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@f3
    move/from16 v21, v0

    #@f5
    iget v0, v5, Landroid/graphics/Rect;->right:I

    #@f7
    move/from16 v22, v0

    #@f9
    sub-int v21, v21, v22

    #@fb
    .line 354
    :goto_4
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    #@fd
    move/from16 v22, v0

    #@ff
    move-object/from16 v0, v17

    #@101
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@103
    move/from16 v23, v0

    #@105
    move/from16 v0, v22

    #@107
    move/from16 v1, v23

    #@109
    if-le v0, v1, :cond_a

    #@10b
    move-object/from16 v0, v17

    #@10d
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@10f
    move/from16 v22, v0

    #@111
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    #@113
    move/from16 v23, v0

    #@115
    sub-int v22, v22, v23

    #@117
    .line 352
    :goto_5
    move/from16 v0, v21

    #@119
    move/from16 v1, v22

    #@11b
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    #@11e
    .line 357
    iget v0, v5, Landroid/graphics/Rect;->left:I

    #@120
    move/from16 v21, v0

    #@122
    if-gez v21, :cond_7

    #@124
    .line 358
    const/16 v21, 0x0

    #@126
    move/from16 v0, v21

    #@128
    iput v0, v5, Landroid/graphics/Rect;->left:I

    #@12a
    .line 360
    :cond_7
    iget v0, v5, Landroid/graphics/Rect;->top:I

    #@12c
    move/from16 v21, v0

    #@12e
    if-gez v21, :cond_8

    #@130
    .line 361
    const/16 v21, 0x0

    #@132
    move/from16 v0, v21

    #@134
    iput v0, v5, Landroid/graphics/Rect;->top:I

    #@136
    .line 365
    :cond_8
    move-object/from16 v0, v17

    #@138
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@13a
    move/from16 v21, v0

    #@13c
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@13f
    move-result v22

    #@140
    move/from16 v0, v21

    #@142
    move/from16 v1, v22

    #@144
    if-gt v0, v1, :cond_b

    #@146
    .line 366
    move-object/from16 v0, v17

    #@148
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@14a
    move/from16 v21, v0

    #@14c
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    #@14f
    move-result v22

    #@150
    move/from16 v0, v21

    #@152
    move/from16 v1, v22

    #@154
    if-le v0, v1, :cond_c

    #@156
    const/4 v15, 0x1

    #@157
    goto/16 :goto_1

    #@159
    .line 353
    :cond_9
    const/16 v21, 0x0

    #@15b
    goto :goto_4

    #@15c
    .line 354
    :cond_a
    const/16 v22, 0x0

    #@15e
    goto :goto_5

    #@15f
    .line 365
    :cond_b
    const/4 v15, 0x1

    #@160
    goto/16 :goto_1

    #@162
    .line 366
    :cond_c
    const/4 v15, 0x0

    #@163
    goto/16 :goto_1

    #@165
    .line 370
    :cond_d
    const/16 v16, 0x0

    #@167
    goto/16 :goto_2

    #@169
    .line 385
    :cond_e
    move-object/from16 v0, p1

    #@16b
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    #@16d
    move-object/from16 v21, v0

    #@16f
    move-object/from16 v0, p1

    #@171
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    #@173
    move-object/from16 v22, v0

    #@175
    invoke-static/range {v21 .. v22}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    #@178
    move-result v20

    #@179
    .line 386
    .local v20, "success":Z
    if-nez v20, :cond_1

    #@17b
    .line 387
    move-object/from16 v0, p1

    #@17d
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    #@17f
    move-object/from16 v21, v0

    #@181
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    #@184
    goto/16 :goto_0

    #@186
    .line 409
    .restart local v2    # "actualScale":I
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v7    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v11    # "f":Ljava/io/FileOutputStream;
    .restart local v18    # "scale":I
    .local v20, "success":Z
    :cond_f
    const/16 v21, 0x1

    #@188
    move/from16 v0, v18

    #@18a
    move/from16 v1, v21

    #@18c
    if-le v0, v1, :cond_10

    #@18e
    .line 410
    :try_start_1
    new-instance v19, Landroid/graphics/BitmapFactory$Options;

    #@190
    invoke-direct/range {v19 .. v19}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@193
    .line 411
    .local v19, "scaler":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v18

    #@195
    move-object/from16 v1, v19

    #@197
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@199
    .line 418
    .end local v19    # "scaler":Landroid/graphics/BitmapFactory$Options;
    :goto_6
    move-object/from16 v0, v19

    #@19b
    invoke-virtual {v7, v5, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@19e
    move-result-object v6

    #@19f
    .line 419
    .local v6, "cropped":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    #@1a2
    .line 421
    if-nez v6, :cond_11

    #@1a4
    .line 422
    const-string/jumbo v21, "WallpaperManagerService"

    #@1a7
    const-string/jumbo v22, "Could not decode new wallpaper"

    #@1aa
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1ad
    .line 456
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v11    # "f":Ljava/io/FileOutputStream;
    :goto_7
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1b0
    .line 457
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1b3
    goto/16 :goto_0

    #@1b5
    .line 416
    .end local v6    # "cropped":Landroid/graphics/Bitmap;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v11    # "f":Ljava/io/FileOutputStream;
    :cond_10
    const/16 v19, 0x0

    #@1b7
    .local v19, "scaler":Landroid/graphics/BitmapFactory$Options;
    goto :goto_6

    #@1b8
    .line 427
    .end local v19    # "scaler":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "cropped":Landroid/graphics/Bitmap;
    :cond_11
    const/16 v21, 0x0

    #@1ba
    const/16 v22, 0x0

    #@1bc
    :try_start_2
    move/from16 v0, v21

    #@1be
    move/from16 v1, v22

    #@1c0
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    #@1c3
    .line 428
    iget v0, v5, Landroid/graphics/Rect;->right:I

    #@1c5
    move/from16 v21, v0

    #@1c7
    div-int v21, v21, v18

    #@1c9
    move/from16 v0, v21

    #@1cb
    iput v0, v5, Landroid/graphics/Rect;->right:I

    #@1cd
    .line 429
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    #@1cf
    move/from16 v21, v0

    #@1d1
    div-int v21, v21, v18

    #@1d3
    move/from16 v0, v21

    #@1d5
    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    #@1d7
    .line 430
    move-object/from16 v0, p1

    #@1d9
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@1db
    move/from16 v21, v0

    #@1dd
    move/from16 v0, v21

    #@1df
    int-to-float v0, v0

    #@1e0
    move/from16 v21, v0

    #@1e2
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@1e5
    move-result v22

    #@1e6
    move/from16 v0, v22

    #@1e8
    int-to-float v0, v0

    #@1e9
    move/from16 v22, v0

    #@1eb
    div-float v14, v21, v22

    #@1ed
    .line 434
    .local v14, "heightR":F
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    #@1f0
    move-result v21

    #@1f1
    move/from16 v0, v21

    #@1f3
    int-to-float v0, v0

    #@1f4
    move/from16 v21, v0

    #@1f6
    mul-float v21, v21, v14

    #@1f8
    move/from16 v0, v21

    #@1fa
    float-to-int v8, v0

    #@1fb
    .line 436
    .local v8, "destWidth":I
    move-object/from16 v0, p1

    #@1fd
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@1ff
    move/from16 v21, v0

    #@201
    const/16 v22, 0x1

    #@203
    .line 435
    move/from16 v0, v21

    #@205
    move/from16 v1, v22

    #@207
    invoke-static {v6, v8, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    #@20a
    move-result-object v13

    #@20b
    .line 445
    .local v13, "finalCrop":Landroid/graphics/Bitmap;
    new-instance v12, Ljava/io/FileOutputStream;

    #@20d
    move-object/from16 v0, p1

    #@20f
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    #@211
    move-object/from16 v21, v0

    #@213
    move-object/from16 v0, v21

    #@215
    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@218
    .line 446
    .local v12, "f":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v4, Ljava/io/BufferedOutputStream;

    #@21a
    .end local v11    # "f":Ljava/io/FileOutputStream;
    const v21, 0x8000

    #@21d
    move/from16 v0, v21

    #@21f
    invoke-direct {v4, v12, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@222
    .line 447
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    :try_start_4
    sget-object v21, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    #@224
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    const/16 v22, 0x64

    #@226
    move-object/from16 v0, v21

    #@228
    move/from16 v1, v22

    #@22a
    invoke-virtual {v13, v0, v1, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@22d
    .line 448
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@230
    .line 449
    const/16 v20, 0x1

    #@232
    move-object v3, v4

    #@233
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    #@234
    .end local v12    # "f":Ljava/io/FileOutputStream;
    .local v11, "f":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    #@236
    .line 451
    .end local v2    # "actualScale":I
    .end local v6    # "cropped":Landroid/graphics/Bitmap;
    .end local v7    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v8    # "destWidth":I
    .end local v13    # "finalCrop":Landroid/graphics/Bitmap;
    .end local v14    # "heightR":F
    .end local v18    # "scale":I
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    .local v11, "f":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v10

    #@237
    .line 456
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v11    # "f":Ljava/io/FileOutputStream;
    .local v10, "e":Ljava/lang/Exception;
    :goto_8
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@23a
    .line 457
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@23d
    goto/16 :goto_0

    #@23f
    .line 455
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v11    # "f":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v21

    #@240
    .line 456
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v11    # "f":Ljava/io/FileOutputStream;
    :goto_9
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@243
    .line 457
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@246
    .line 455
    throw v21

    #@247
    .restart local v2    # "actualScale":I
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "cropped":Landroid/graphics/Bitmap;
    .restart local v7    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v8    # "destWidth":I
    .restart local v12    # "f":Ljava/io/FileOutputStream;
    .restart local v13    # "finalCrop":Landroid/graphics/Bitmap;
    .restart local v14    # "heightR":F
    .restart local v18    # "scale":I
    :catchall_1
    move-exception v21

    #@248
    move-object v11, v12

    #@249
    .end local v12    # "f":Ljava/io/FileOutputStream;
    .local v11, "f":Ljava/io/FileOutputStream;
    goto :goto_9

    #@24a
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v11    # "f":Ljava/io/FileOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v12    # "f":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v21

    #@24b
    move-object v3, v4

    #@24c
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    #@24d
    .end local v12    # "f":Ljava/io/FileOutputStream;
    .restart local v11    # "f":Ljava/io/FileOutputStream;
    goto :goto_9

    #@24e
    .line 451
    .end local v11    # "f":Ljava/io/FileOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    .restart local v12    # "f":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v10

    #@24f
    .restart local v10    # "e":Ljava/lang/Exception;
    move-object v11, v12

    #@250
    .end local v12    # "f":Ljava/io/FileOutputStream;
    .restart local v11    # "f":Ljava/io/FileOutputStream;
    goto :goto_8

    #@251
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "f":Ljava/io/FileOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v12    # "f":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v10

    #@252
    .restart local v10    # "e":Ljava/lang/Exception;
    move-object v3, v4

    #@253
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    #@254
    .end local v12    # "f":Ljava/io/FileOutputStream;
    .restart local v11    # "f":Ljava/io/FileOutputStream;
    goto :goto_8
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1894
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1895
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 1896
    return p3

    #@8
    .line 1898
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b
    move-result v1

    #@c
    return v1
.end method

.method private getDefaultDisplaySize()Landroid/graphics/Point;
    .locals 5

    #@0
    .prologue
    .line 1198
    new-instance v1, Landroid/graphics/Point;

    #@2
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@5
    .line 1199
    .local v1, "p":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@7
    const-string/jumbo v4, "window"

    #@a
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Landroid/view/WindowManager;

    #@10
    .line 1200
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@13
    move-result-object v0

    #@14
    .line 1201
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@17
    .line 1202
    return-object v1
.end method

.method private getMaximumSizeDimension()I
    .locals 4

    #@0
    .prologue
    .line 2096
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "window"

    #@5
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Landroid/view/WindowManager;

    #@b
    .line 2097
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@e
    move-result-object v0

    #@f
    .line 2098
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    #@12
    move-result v2

    #@13
    return v2
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .locals 1
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 883
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "which"    # I

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 1915
    if-ne p2, v3, :cond_1

    #@3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@5
    .line 1916
    .local v1, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_0
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@b
    .line 1917
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_0

    #@d
    .line 1920
    const/4 v2, 0x0

    #@e
    invoke-direct {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    #@11
    .line 1921
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@17
    .line 1925
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_0

    #@19
    .line 1926
    if-ne p2, v3, :cond_2

    #@1b
    .line 1927
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@1d
    .line 1928
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v2, "wallpaper_lock_orig"

    #@20
    const-string/jumbo v3, "wallpaper_lock"

    #@23
    .line 1927
    invoke-direct {v0, p1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@26
    .line 1929
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@28
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@2b
    .line 1930
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@2e
    .line 1941
    :cond_0
    :goto_1
    return-object v0

    #@2f
    .line 1915
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v1    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@31
    goto :goto_0

    #@32
    .line 1934
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v1    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :cond_2
    const-string/jumbo v2, "WallpaperManagerService"

    #@35
    const-string/jumbo v3, "Didn\'t find wallpaper in non-lock case!"

    #@38
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 1935
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@3d
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v2, "wallpaper_orig"

    #@40
    const-string/jumbo v3, "wallpaper"

    #@43
    invoke-direct {v0, p1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@46
    .line 1936
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@48
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@4b
    .line 1937
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@4e
    goto :goto_1
.end method

.method private loadSettingsLocked(IZ)V
    .locals 26
    .param p1, "userId"    # I
    .param p2, "keepDimensionHints"    # Z

    #@0
    .prologue
    .line 1947
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    #@3
    move-result-object v12

    #@4
    .line 1948
    .local v12, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v15, 0x0

    #@5
    .line 1949
    .local v15, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v12}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    #@8
    move-result-object v11

    #@9
    .line 1950
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    #@c
    move-result v21

    #@d
    if-nez v21, :cond_0

    #@f
    .line 1952
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateFromOld()V

    #@12
    .line 1954
    :cond_0
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@16
    move-object/from16 v21, v0

    #@18
    move-object/from16 v0, v21

    #@1a
    move/from16 v1, p1

    #@1c
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v20

    #@20
    check-cast v20, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@22
    .line 1955
    .local v20, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v20, :cond_1

    #@24
    .line 1956
    new-instance v20, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@26
    .end local v20    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v21, "wallpaper_orig"

    #@29
    const-string/jumbo v22, "wallpaper"

    #@2c
    move-object/from16 v0, v20

    #@2e
    move/from16 v1, p1

    #@30
    move-object/from16 v2, v21

    #@32
    move-object/from16 v3, v22

    #@34
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@37
    .line 1957
    .restart local v20    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/16 v21, 0x1

    #@39
    move/from16 v0, v21

    #@3b
    move-object/from16 v1, v20

    #@3d
    iput-boolean v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    #@3f
    .line 1958
    move-object/from16 v0, p0

    #@41
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@43
    move-object/from16 v21, v0

    #@45
    move-object/from16 v0, v21

    #@47
    move/from16 v1, p1

    #@49
    move-object/from16 v2, v20

    #@4b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@4e
    .line 1959
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    #@51
    move-result v21

    #@52
    if-nez v21, :cond_1

    #@54
    .line 1960
    move-object/from16 v0, p0

    #@56
    move-object/from16 v1, v20

    #@58
    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@5b
    .line 1963
    :cond_1
    const/16 v17, 0x0

    #@5d
    .line 1965
    .local v17, "success":Z
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    #@5f
    move-object/from16 v0, v16

    #@61
    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    #@64
    .line 1966
    .local v16, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@67
    .end local v15    # "stream":Ljava/io/FileInputStream;
    move-result-object v14

    #@68
    .line 1967
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v21, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@6a
    invoke-virtual/range {v21 .. v21}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@6d
    move-result-object v21

    #@6e
    move-object/from16 v0, v16

    #@70
    move-object/from16 v1, v21

    #@72
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@75
    .line 1971
    :cond_2
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@78
    move-result v19

    #@79
    .line 1972
    .local v19, "type":I
    const/16 v21, 0x2

    #@7b
    move/from16 v0, v19

    #@7d
    move/from16 v1, v21

    #@7f
    if-ne v0, v1, :cond_4

    #@81
    .line 1973
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@84
    move-result-object v18

    #@85
    .line 1974
    .local v18, "tag":Ljava/lang/String;
    const-string/jumbo v21, "wp"

    #@88
    move-object/from16 v0, v21

    #@8a
    move-object/from16 v1, v18

    #@8c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v21

    #@90
    if-eqz v21, :cond_8

    #@92
    .line 1976
    move-object/from16 v0, p0

    #@94
    move-object/from16 v1, v20

    #@96
    move/from16 v2, p2

    #@98
    invoke-direct {v0, v14, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    #@9b
    .line 1979
    const-string/jumbo v21, "component"

    #@9e
    const/16 v22, 0x0

    #@a0
    move-object/from16 v0, v22

    #@a2
    move-object/from16 v1, v21

    #@a4
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a7
    move-result-object v4

    #@a8
    .line 1980
    .local v4, "comp":Ljava/lang/String;
    if-eqz v4, :cond_7

    #@aa
    .line 1981
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@ad
    move-result-object v21

    #@ae
    .line 1980
    :goto_0
    move-object/from16 v0, v21

    #@b0
    move-object/from16 v1, v20

    #@b2
    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@b4
    .line 1983
    move-object/from16 v0, v20

    #@b6
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@b8
    move-object/from16 v21, v0

    #@ba
    if-eqz v21, :cond_3

    #@bc
    .line 1984
    const-string/jumbo v21, "android"

    #@bf
    move-object/from16 v0, v20

    #@c1
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@c3
    move-object/from16 v22, v0

    #@c5
    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@c8
    move-result-object v22

    #@c9
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cc
    move-result v21

    #@cd
    .line 1983
    if-eqz v21, :cond_4

    #@cf
    .line 1986
    :cond_3
    move-object/from16 v0, p0

    #@d1
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    #@d3
    move-object/from16 v21, v0

    #@d5
    move-object/from16 v0, v21

    #@d7
    move-object/from16 v1, v20

    #@d9
    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_b

    #@db
    .line 2008
    .end local v4    # "comp":Ljava/lang/String;
    .end local v18    # "tag":Ljava/lang/String;
    :cond_4
    :goto_1
    const/16 v21, 0x1

    #@dd
    move/from16 v0, v19

    #@df
    move/from16 v1, v21

    #@e1
    if-ne v0, v1, :cond_2

    #@e3
    .line 2009
    const/16 v17, 0x1

    #@e5
    move-object/from16 v15, v16

    #@e7
    .line 2023
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .end local v19    # "type":I
    :goto_2
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ea
    .line 2025
    if-nez v17, :cond_a

    #@ec
    .line 2026
    const/16 v21, -0x1

    #@ee
    move/from16 v0, v21

    #@f0
    move-object/from16 v1, v20

    #@f2
    iput v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@f4
    .line 2027
    const/16 v21, -0x1

    #@f6
    move/from16 v0, v21

    #@f8
    move-object/from16 v1, v20

    #@fa
    iput v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@fc
    .line 2028
    move-object/from16 v0, v20

    #@fe
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    #@100
    move-object/from16 v21, v0

    #@102
    const/16 v22, 0x0

    #@104
    const/16 v23, 0x0

    #@106
    const/16 v24, 0x0

    #@108
    const/16 v25, 0x0

    #@10a
    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Rect;->set(IIII)V

    #@10d
    .line 2029
    move-object/from16 v0, v20

    #@10f
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@111
    move-object/from16 v21, v0

    #@113
    const/16 v22, 0x0

    #@115
    const/16 v23, 0x0

    #@117
    const/16 v24, 0x0

    #@119
    const/16 v25, 0x0

    #@11b
    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Rect;->set(IIII)V

    #@11e
    .line 2030
    const-string/jumbo v21, ""

    #@121
    move-object/from16 v0, v21

    #@123
    move-object/from16 v1, v20

    #@125
    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@127
    .line 2032
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@12b
    move-object/from16 v21, v0

    #@12d
    move-object/from16 v0, v21

    #@12f
    move/from16 v1, p1

    #@131
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    #@134
    .line 2043
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    #@136
    move-object/from16 v1, v20

    #@138
    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@13b
    .line 2044
    move-object/from16 v0, p0

    #@13d
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@13f
    move-object/from16 v21, v0

    #@141
    move-object/from16 v0, v21

    #@143
    move/from16 v1, p1

    #@145
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@148
    move-result-object v13

    #@149
    check-cast v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@14b
    .line 2045
    .local v13, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v13, :cond_6

    #@14d
    .line 2046
    move-object/from16 v0, p0

    #@14f
    invoke-direct {v0, v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@152
    .line 1944
    :cond_6
    return-void

    #@153
    .line 1982
    .end local v13    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v4    # "comp":Ljava/lang/String;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    :cond_7
    const/16 v21, 0x0

    #@155
    goto/16 :goto_0

    #@157
    .line 1997
    .end local v4    # "comp":Ljava/lang/String;
    :cond_8
    :try_start_2
    const-string/jumbo v21, "kwp"

    #@15a
    move-object/from16 v0, v21

    #@15c
    move-object/from16 v1, v18

    #@15e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@161
    move-result v21

    #@162
    if-eqz v21, :cond_4

    #@164
    .line 1999
    move-object/from16 v0, p0

    #@166
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@168
    move-object/from16 v21, v0

    #@16a
    move-object/from16 v0, v21

    #@16c
    move/from16 v1, p1

    #@16e
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@171
    move-result-object v13

    #@172
    check-cast v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@174
    .line 2000
    .restart local v13    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v13, :cond_9

    #@176
    .line 2001
    new-instance v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@178
    .line 2002
    .end local v13    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v21, "wallpaper_lock_orig"

    #@17b
    const-string/jumbo v22, "wallpaper_lock"

    #@17e
    .line 2001
    move/from16 v0, p1

    #@180
    move-object/from16 v1, v21

    #@182
    move-object/from16 v2, v22

    #@184
    invoke-direct {v13, v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@187
    .line 2003
    .restart local v13    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p0

    #@189
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@18b
    move-object/from16 v21, v0

    #@18d
    move-object/from16 v0, v21

    #@18f
    move/from16 v1, p1

    #@191
    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@194
    .line 2005
    :cond_9
    const/16 v21, 0x0

    #@196
    move-object/from16 v0, p0

    #@198
    move/from16 v1, v21

    #@19a
    invoke-direct {v0, v14, v13, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_b

    #@19d
    goto/16 :goto_1

    #@19f
    .line 2010
    .end local v13    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    :catch_0
    move-exception v5

    #@1a0
    .local v5, "e":Ljava/io/FileNotFoundException;
    move-object/from16 v15, v16

    #@1a2
    .line 2011
    .end local v16    # "stream":Ljava/io/FileInputStream;
    :goto_4
    const-string/jumbo v21, "WallpaperManagerService"

    #@1a5
    const-string/jumbo v22, "no current wallpaper -- first boot?"

    #@1a8
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1ab
    goto/16 :goto_2

    #@1ad
    .line 2020
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    #@1ae
    .line 2021
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_5
    const-string/jumbo v21, "WallpaperManagerService"

    #@1b1
    new-instance v22, Ljava/lang/StringBuilder;

    #@1b3
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1b6
    const-string/jumbo v23, "failed parsing "

    #@1b9
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v22

    #@1bd
    move-object/from16 v0, v22

    #@1bf
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v22

    #@1c3
    const-string/jumbo v23, " "

    #@1c6
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v22

    #@1ca
    move-object/from16 v0, v22

    #@1cc
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v22

    #@1d0
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d3
    move-result-object v22

    #@1d4
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d7
    goto/16 :goto_2

    #@1d9
    .line 2018
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    #@1da
    .line 2019
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/io/IOException;
    :goto_6
    const-string/jumbo v21, "WallpaperManagerService"

    #@1dd
    new-instance v22, Ljava/lang/StringBuilder;

    #@1df
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1e2
    const-string/jumbo v23, "failed parsing "

    #@1e5
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v22

    #@1e9
    move-object/from16 v0, v22

    #@1eb
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v22

    #@1ef
    const-string/jumbo v23, " "

    #@1f2
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v22

    #@1f6
    move-object/from16 v0, v22

    #@1f8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1fb
    move-result-object v22

    #@1fc
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ff
    move-result-object v22

    #@200
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@203
    goto/16 :goto_2

    #@205
    .line 2016
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v10

    #@206
    .line 2017
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_7
    const-string/jumbo v21, "WallpaperManagerService"

    #@209
    new-instance v22, Ljava/lang/StringBuilder;

    #@20b
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@20e
    const-string/jumbo v23, "failed parsing "

    #@211
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@214
    move-result-object v22

    #@215
    move-object/from16 v0, v22

    #@217
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21a
    move-result-object v22

    #@21b
    const-string/jumbo v23, " "

    #@21e
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    move-result-object v22

    #@222
    move-object/from16 v0, v22

    #@224
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@227
    move-result-object v22

    #@228
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22b
    move-result-object v22

    #@22c
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22f
    goto/16 :goto_2

    #@231
    .line 2014
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v9

    #@232
    .line 2015
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v9, "e":Ljava/lang/NumberFormatException;
    :goto_8
    const-string/jumbo v21, "WallpaperManagerService"

    #@235
    new-instance v22, Ljava/lang/StringBuilder;

    #@237
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@23a
    const-string/jumbo v23, "failed parsing "

    #@23d
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@240
    move-result-object v22

    #@241
    move-object/from16 v0, v22

    #@243
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@246
    move-result-object v22

    #@247
    const-string/jumbo v23, " "

    #@24a
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24d
    move-result-object v22

    #@24e
    move-object/from16 v0, v22

    #@250
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@253
    move-result-object v22

    #@254
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@257
    move-result-object v22

    #@258
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25b
    goto/16 :goto_2

    #@25d
    .line 2012
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v8

    #@25e
    .line 2013
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v8, "e":Ljava/lang/NullPointerException;
    :goto_9
    const-string/jumbo v21, "WallpaperManagerService"

    #@261
    new-instance v22, Ljava/lang/StringBuilder;

    #@263
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@266
    const-string/jumbo v23, "failed parsing "

    #@269
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26c
    move-result-object v22

    #@26d
    move-object/from16 v0, v22

    #@26f
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@272
    move-result-object v22

    #@273
    const-string/jumbo v23, " "

    #@276
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@279
    move-result-object v22

    #@27a
    move-object/from16 v0, v22

    #@27c
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27f
    move-result-object v22

    #@280
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@283
    move-result-object v22

    #@284
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@287
    goto/16 :goto_2

    #@289
    .line 2034
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :cond_a
    move-object/from16 v0, v20

    #@28b
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    #@28d
    move/from16 v21, v0

    #@28f
    if-gtz v21, :cond_5

    #@291
    .line 2035
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    #@294
    move-result v21

    #@295
    move/from16 v0, v21

    #@297
    move-object/from16 v1, v20

    #@299
    iput v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    #@29b
    goto/16 :goto_3

    #@29d
    .line 2010
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v5

    #@29e
    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_4

    #@2a0
    .line 2012
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    #@2a1
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    move-object/from16 v15, v16

    #@2a3
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .local v15, "stream":Ljava/io/FileInputStream;
    goto :goto_9

    #@2a4
    .line 2014
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v9

    #@2a5
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v15, v16

    #@2a7
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto :goto_8

    #@2a8
    .line 2016
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v10

    #@2a9
    .restart local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v15, v16

    #@2ab
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_7

    #@2ad
    .line 2018
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v6

    #@2ae
    .restart local v6    # "e":Ljava/io/IOException;
    move-object/from16 v15, v16

    #@2b0
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_6

    #@2b2
    .line 2020
    .end local v6    # "e":Ljava/io/IOException;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v7

    #@2b3
    .restart local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    move-object/from16 v15, v16

    #@2b5
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_5
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 1803
    new-instance v1, Ljava/io/File;

    #@2
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    #@5
    move-result-object v2

    #@6
    const-string/jumbo v3, "wallpaper_info.xml"

    #@9
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 1804
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    #@12
    new-instance v2, Ljava/io/File;

    #@14
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@17
    new-instance v3, Ljava/io/File;

    #@19
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    const-string/jumbo v5, ".tmp"

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@30
    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    #@33
    return-object v1
.end method

.method private migrateFromOld()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1881
    new-instance v3, Ljava/io/File;

    #@3
    const-string/jumbo v4, "/data/data/com.android.settings/files/wallpaper"

    #@6
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    .line 1882
    .local v3, "oldWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    #@b
    const-string/jumbo v4, "/data/system/wallpaper_info.xml"

    #@e
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@11
    .line 1883
    .local v2, "oldInfo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 1884
    new-instance v1, Ljava/io/File;

    #@19
    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    #@1c
    move-result-object v4

    #@1d
    const-string/jumbo v5, "wallpaper_orig"

    #@20
    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@23
    .line 1885
    .local v1, "newWallpaper":Ljava/io/File;
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@26
    .line 1887
    .end local v1    # "newWallpaper":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_1

    #@2c
    .line 1888
    new-instance v0, Ljava/io/File;

    #@2e
    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    #@31
    move-result-object v4

    #@32
    const-string/jumbo v5, "wallpaper_info.xml"

    #@35
    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@38
    .line 1889
    .local v0, "newInfo":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@3b
    .line 1880
    .end local v0    # "newInfo":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private migrateSystemToLockWallpaperLocked(I)V
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1450
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@8
    .line 1451
    .local v2, "sysWP":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v2, :cond_0

    #@a
    .line 1455
    return-void

    #@b
    .line 1459
    :cond_0
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@d
    .line 1460
    const-string/jumbo v3, "wallpaper_lock_orig"

    #@10
    const-string/jumbo v4, "wallpaper_lock"

    #@13
    .line 1459
    invoke-direct {v1, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@16
    .line 1461
    .local v1, "lockWP":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    #@18
    iput v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    #@1a
    .line 1462
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    #@1c
    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    #@1e
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@21
    .line 1463
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@23
    iput v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@25
    .line 1464
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@27
    iput v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@29
    .line 1465
    const/4 v3, 0x0

    #@2a
    iput-boolean v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    #@2c
    .line 1469
    :try_start_0
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    #@2e
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    #@34
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-static {v3, v4}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    #@3b
    .line 1470
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    #@3d
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    #@43
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-static {v3, v4}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@4a
    .line 1478
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@4c
    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@4f
    .line 1449
    return-void

    #@50
    .line 1471
    :catch_0
    move-exception v0

    #@51
    .line 1472
    .local v0, "e":Landroid/system/ErrnoException;
    const-string/jumbo v3, "WallpaperManagerService"

    #@54
    new-instance v4, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v5, "Can\'t migrate system wallpaper: "

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v4

    #@6c
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6f
    .line 1473
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    #@71
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@74
    .line 1474
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    #@76
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@79
    .line 1475
    return-void
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 7
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    .line 1742
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@7
    move-result v3

    #@8
    .line 1743
    .local v3, "n":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@b
    .line 1745
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@12
    move-result-object v4

    #@13
    check-cast v4, Landroid/app/IWallpaperManagerCallback;

    #@15
    invoke-interface {v4}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 1743
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1752
    :cond_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@22
    .line 1753
    new-instance v2, Landroid/content/Intent;

    #@24
    const-string/jumbo v4, "android.intent.action.WALLPAPER_CHANGED"

    #@27
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2a
    .line 1754
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@2c
    new-instance v5, Landroid/os/UserHandle;

    #@2e
    iget v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@30
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    #@33
    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@36
    .line 1741
    return-void

    #@37
    .line 1746
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    #@38
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "keepDimensionHints"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 2068
    const-string/jumbo v2, "id"

    #@5
    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 2069
    .local v1, "idString":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@b
    .line 2070
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@e
    move-result v0

    #@f
    iput v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    #@11
    .line 2071
    .local v0, "id":I
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    #@13
    if-le v0, v2, :cond_0

    #@15
    .line 2072
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    #@17
    .line 2078
    .end local v0    # "id":I
    :cond_0
    :goto_0
    if-nez p3, :cond_1

    #@19
    .line 2079
    const-string/jumbo v2, "width"

    #@1c
    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@23
    move-result v2

    #@24
    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@26
    .line 2081
    const-string/jumbo v2, "height"

    #@29
    .line 2080
    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@30
    move-result v2

    #@31
    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@33
    .line 2083
    :cond_1
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    #@35
    const-string/jumbo v3, "cropLeft"

    #@38
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@3b
    move-result v3

    #@3c
    iput v3, v2, Landroid/graphics/Rect;->left:I

    #@3e
    .line 2084
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    #@40
    const-string/jumbo v3, "cropTop"

    #@43
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@46
    move-result v3

    #@47
    iput v3, v2, Landroid/graphics/Rect;->top:I

    #@49
    .line 2085
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    #@4b
    const-string/jumbo v3, "cropRight"

    #@4e
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@51
    move-result v3

    #@52
    iput v3, v2, Landroid/graphics/Rect;->right:I

    #@54
    .line 2086
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    #@56
    const-string/jumbo v3, "cropBottom"

    #@59
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@5c
    move-result v3

    #@5d
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@5f
    .line 2087
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@61
    const-string/jumbo v3, "paddingLeft"

    #@64
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@67
    move-result v3

    #@68
    iput v3, v2, Landroid/graphics/Rect;->left:I

    #@6a
    .line 2088
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@6c
    const-string/jumbo v3, "paddingTop"

    #@6f
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@72
    move-result v3

    #@73
    iput v3, v2, Landroid/graphics/Rect;->top:I

    #@75
    .line 2089
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@77
    const-string/jumbo v3, "paddingRight"

    #@7a
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@7d
    move-result v3

    #@7e
    iput v3, v2, Landroid/graphics/Rect;->right:I

    #@80
    .line 2090
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@82
    const-string/jumbo v3, "paddingBottom"

    #@85
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@88
    move-result v3

    #@89
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@8b
    .line 2091
    const-string/jumbo v2, "name"

    #@8e
    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@91
    move-result-object v2

    #@92
    iput-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@94
    .line 2092
    const-string/jumbo v2, "true"

    #@97
    const-string/jumbo v3, "backup"

    #@9a
    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9d
    move-result-object v3

    #@9e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v2

    #@a2
    iput-boolean v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    #@a4
    .line 2067
    return-void

    #@a5
    .line 2075
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    #@a8
    move-result v2

    #@a9
    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    #@ab
    goto/16 :goto_0
.end method

.method private saveSettingsLocked(I)V
    .locals 10
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1808
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    #@3
    move-result-object v3

    #@4
    .line 1809
    .local v3, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v1, 0x0

    #@5
    .line 1810
    .local v1, "fstream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    #@6
    .line 1812
    .local v5, "stream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    #@8
    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@b
    .line 1813
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/FileOutputStream;

    #@d
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    #@10
    move-result-object v8

    #@11
    const/4 v9, 0x0

    #@12
    invoke-direct {v2, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1814
    .local v2, "fstream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    #@17
    .end local v1    # "fstream":Ljava/io/FileOutputStream;
    invoke-direct {v6, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@1a
    .line 1815
    .local v6, "stream":Ljava/io/BufferedOutputStream;
    :try_start_2
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1c
    .end local v5    # "stream":Ljava/io/BufferedOutputStream;
    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@23
    .line 1816
    const/4 v8, 0x1

    #@24
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@27
    move-result-object v8

    #@28
    const/4 v9, 0x0

    #@29
    invoke-interface {v4, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@2c
    .line 1820
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@2e
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v7

    #@32
    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@34
    .line 1821
    .local v7, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v7, :cond_0

    #@36
    .line 1822
    const-string/jumbo v8, "wp"

    #@39
    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@3c
    .line 1824
    :cond_0
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@3e
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v7

    #@42
    .end local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@44
    .line 1825
    .restart local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v7, :cond_1

    #@46
    .line 1826
    const-string/jumbo v8, "kwp"

    #@49
    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@4c
    .line 1829
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@4f
    .line 1831
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    #@52
    .line 1832
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@55
    .line 1833
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    #@58
    .line 1834
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@5b
    move-object v5, v6

    #@5c
    .end local v6    # "stream":Ljava/io/BufferedOutputStream;
    .local v5, "stream":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    #@5d
    .line 1807
    .end local v2    # "fstream":Ljava/io/FileOutputStream;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "stream":Ljava/io/BufferedOutputStream;
    .end local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_0
    return-void

    #@5e
    .line 1835
    .restart local v1    # "fstream":Ljava/io/FileOutputStream;
    .local v5, "stream":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v0

    #@5f
    .line 1836
    .end local v1    # "fstream":Ljava/io/FileOutputStream;
    .end local v5    # "stream":Ljava/io/BufferedOutputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@62
    .line 1837
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->rollback()V

    #@65
    goto :goto_0

    #@66
    .line 1835
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fstream":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v5    # "stream":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v0

    #@67
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    #@68
    .end local v2    # "fstream":Ljava/io/FileOutputStream;
    .local v1, "fstream":Ljava/io/FileOutputStream;
    goto :goto_1

    #@69
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fstream":Ljava/io/FileOutputStream;
    .end local v5    # "stream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fstream":Ljava/io/FileOutputStream;
    .restart local v6    # "stream":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v0

    #@6a
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v5, v6

    #@6b
    .end local v6    # "stream":Ljava/io/BufferedOutputStream;
    .local v5, "stream":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    #@6c
    .end local v2    # "fstream":Ljava/io/FileOutputStream;
    .restart local v1    # "fstream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private setWallpaperComponent(Landroid/content/ComponentName;I)V
    .locals 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 1530
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingPid()I

    #@6
    move-result v0

    #@7
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingUid()I

    #@a
    move-result v1

    #@b
    .line 1531
    const-string/jumbo v5, "changing live wallpaper"

    #@e
    move v2, p2

    #@f
    .line 1530
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@12
    move-result p2

    #@13
    .line 1532
    const-string/jumbo v0, "android.permission.SET_WALLPAPER_COMPONENT"

    #@16
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    #@19
    .line 1534
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@1b
    monitor-enter v6

    #@1c
    .line 1536
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@1e
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@24
    .line 1537
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    #@26
    .line 1538
    new-instance v0, Ljava/lang/IllegalStateException;

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "Wallpaper not yet initialized for user "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 1534
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v0

    #@41
    monitor-exit v6

    #@42
    throw v0

    #@43
    .line 1540
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    move-result-wide v8

    #@47
    .line 1542
    .local v8, "ident":J
    const/4 v0, 0x0

    #@48
    :try_start_2
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    #@4a
    .line 1543
    const/4 v2, 0x0

    #@4b
    const/4 v3, 0x1

    #@4c
    const/4 v5, 0x0

    #@4d
    move-object v0, p0

    #@4e
    move-object v1, p1

    #@4f
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    #@52
    move-result v0

    #@53
    if-eqz v0, :cond_1

    #@55
    .line 1544
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    #@58
    move-result v0

    #@59
    iput v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    #@5b
    .line 1545
    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@5e
    .line 1548
    :cond_1
    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@61
    monitor-exit v6

    #@62
    .line 1529
    return-void

    #@63
    .line 1547
    :catchall_1
    move-exception v0

    #@64
    .line 1548
    :try_start_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@67
    .line 1547
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1843
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4
    .line 1844
    const-string/jumbo v0, "id"

    #@7
    iget v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    #@9
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10
    .line 1845
    const-string/jumbo v0, "width"

    #@13
    iget v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@15
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1c
    .line 1846
    const-string/jumbo v0, "height"

    #@1f
    iget v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@21
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@28
    .line 1848
    const-string/jumbo v0, "cropLeft"

    #@2b
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    #@2d
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@2f
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@36
    .line 1849
    const-string/jumbo v0, "cropTop"

    #@39
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    #@3b
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@3d
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@44
    .line 1850
    const-string/jumbo v0, "cropRight"

    #@47
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    #@49
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@4b
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@52
    .line 1851
    const-string/jumbo v0, "cropBottom"

    #@55
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    #@57
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@59
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@60
    .line 1853
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@62
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@64
    if-eqz v0, :cond_0

    #@66
    .line 1854
    const-string/jumbo v0, "paddingLeft"

    #@69
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@6b
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@6d
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@74
    .line 1856
    :cond_0
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@76
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@78
    if-eqz v0, :cond_1

    #@7a
    .line 1857
    const-string/jumbo v0, "paddingTop"

    #@7d
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@7f
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@81
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@84
    move-result-object v1

    #@85
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@88
    .line 1859
    :cond_1
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@8a
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@8c
    if-eqz v0, :cond_2

    #@8e
    .line 1860
    const-string/jumbo v0, "paddingRight"

    #@91
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@93
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@95
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9c
    .line 1862
    :cond_2
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@9e
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@a0
    if-eqz v0, :cond_3

    #@a2
    .line 1863
    const-string/jumbo v0, "paddingBottom"

    #@a5
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@a7
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@a9
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@ac
    move-result-object v1

    #@ad
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b0
    .line 1866
    :cond_3
    const-string/jumbo v0, "name"

    #@b3
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@b5
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b8
    .line 1867
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@ba
    if-eqz v0, :cond_4

    #@bc
    .line 1868
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@be
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    #@c0
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@c3
    move-result v0

    #@c4
    if-eqz v0, :cond_6

    #@c6
    .line 1873
    :cond_4
    :goto_0
    iget-boolean v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    #@c8
    if-eqz v0, :cond_5

    #@ca
    .line 1874
    const-string/jumbo v0, "backup"

    #@cd
    const-string/jumbo v1, "true"

    #@d0
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d3
    .line 1877
    :cond_5
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d6
    .line 1842
    return-void

    #@d7
    .line 1869
    :cond_6
    const-string/jumbo v0, "component"

    #@da
    .line 1870
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@dc
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@df
    move-result-object v1

    #@e0
    .line 1869
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e3
    goto :goto_0
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 11
    .param p1, "conn"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 1730
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    #@4
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    #@6
    .line 1732
    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@8
    iget v6, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@a
    iget-object v7, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@c
    .line 1731
    const/16 v3, 0x7dd

    #@e
    const/4 v4, 0x0

    #@f
    move-object v1, p1

    #@10
    .line 1730
    invoke-interface/range {v0 .. v7}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1728
    :cond_0
    :goto_0
    return-void

    #@14
    .line 1733
    :catch_0
    move-exception v8

    #@15
    .line 1734
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WallpaperManagerService"

    #@18
    const-string/jumbo v1, "Failed attaching wallpaper; clearing"

    #@1b
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    .line 1735
    iget-boolean v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    #@20
    if-nez v0, :cond_0

    #@22
    move-object v0, p0

    #@23
    move-object v1, v10

    #@24
    move v2, v9

    #@25
    move v3, v9

    #@26
    move-object v4, p2

    #@27
    move-object v5, v10

    #@28
    .line 1736
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    #@2b
    goto :goto_0
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .locals 22
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "force"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p5, "reply"    # Landroid/os/IRemoteCallback;

    #@0
    .prologue
    .line 1557
    if-nez p2, :cond_1

    #@2
    .line 1558
    move-object/from16 v0, p4

    #@4
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 1559
    move-object/from16 v0, p4

    #@a
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@c
    if-nez v3, :cond_0

    #@e
    .line 1560
    if-nez p1, :cond_1

    #@10
    .line 1563
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 1565
    :cond_0
    move-object/from16 v0, p4

    #@14
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@16
    move-object/from16 v0, p1

    #@18
    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_1

    #@1e
    .line 1568
    const/4 v3, 0x1

    #@1f
    return v3

    #@20
    .line 1574
    :cond_1
    if-nez p1, :cond_2

    #@22
    .line 1575
    :try_start_0
    move-object/from16 v0, p0

    #@24
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@26
    invoke-static {v3}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    #@29
    move-result-object p1

    #@2a
    .line 1576
    if-nez p1, :cond_2

    #@2c
    .line 1578
    move-object/from16 v0, p0

    #@2e
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    #@30
    move-object/from16 p1, v0

    #@32
    .line 1584
    :cond_2
    move-object/from16 v0, p4

    #@34
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@36
    move/from16 v18, v0

    #@38
    .line 1585
    .local v18, "serviceUserId":I
    move-object/from16 v0, p0

    #@3a
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@3c
    .line 1586
    const/16 v4, 0x1080

    #@3e
    .line 1585
    move-object/from16 v0, p1

    #@40
    move/from16 v1, v18

    #@42
    invoke-interface {v3, v0, v4, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    #@45
    move-result-object v19

    #@46
    .line 1587
    .local v19, "si":Landroid/content/pm/ServiceInfo;
    if-nez v19, :cond_3

    #@48
    .line 1589
    const-string/jumbo v3, "WallpaperManagerService"

    #@4b
    new-instance v4, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v5, "Attempted wallpaper "

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    move-object/from16 v0, p1

    #@59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    const-string/jumbo v5, " is unavailable"

    #@60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 1590
    const/4 v3, 0x0

    #@6c
    return v3

    #@6d
    .line 1592
    :cond_3
    const-string/jumbo v3, "android.permission.BIND_WALLPAPER"

    #@70
    move-object/from16 v0, v19

    #@72
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@74
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v3

    #@78
    if-nez v3, :cond_5

    #@7a
    .line 1593
    new-instance v3, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v4, "Selected service does not require android.permission.BIND_WALLPAPER: "

    #@82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    move-object/from16 v0, p1

    #@88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v3

    #@8c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v14

    #@90
    .line 1596
    .local v14, "msg":Ljava/lang/String;
    if-eqz p3, :cond_4

    #@92
    .line 1597
    new-instance v3, Ljava/lang/SecurityException;

    #@94
    invoke-direct {v3, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@97
    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@98
    .line 1684
    .end local v14    # "msg":Ljava/lang/String;
    .end local v18    # "serviceUserId":I
    .end local v19    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v9

    #@99
    .line 1685
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v4, "Remote exception for "

    #@a1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v3

    #@a5
    move-object/from16 v0, p1

    #@a7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v3

    #@ab
    const-string/jumbo v4, "\n"

    #@ae
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v3

    #@b2
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v3

    #@b6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v14

    #@ba
    .line 1686
    .restart local v14    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_11

    #@bc
    .line 1687
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@be
    invoke-direct {v3, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c1
    throw v3

    #@c2
    .line 1599
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v18    # "serviceUserId":I
    .restart local v19    # "si":Landroid/content/pm/ServiceInfo;
    :cond_4
    :try_start_1
    const-string/jumbo v3, "WallpaperManagerService"

    #@c5
    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c8
    .line 1600
    const/4 v3, 0x0

    #@c9
    return v3

    #@ca
    .line 1603
    .end local v14    # "msg":Ljava/lang/String;
    :cond_5
    const/16 v20, 0x0

    #@cc
    .line 1605
    .local v20, "wi":Landroid/app/WallpaperInfo;
    new-instance v13, Landroid/content/Intent;

    #@ce
    const-string/jumbo v3, "android.service.wallpaper.WallpaperService"

    #@d1
    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d4
    .line 1606
    .local v13, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_6

    #@d6
    move-object/from16 v0, p0

    #@d8
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    #@da
    move-object/from16 v0, p1

    #@dc
    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@df
    move-result v3

    #@e0
    if-eqz v3, :cond_7

    #@e2
    .line 1647
    .end local v20    # "wi":Landroid/app/WallpaperInfo;
    :cond_6
    new-instance v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@e4
    move-object/from16 v0, p0

    #@e6
    move-object/from16 v1, v20

    #@e8
    move-object/from16 v2, p4

    #@ea
    invoke-direct {v15, v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@ed
    .line 1648
    .local v15, "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    move-object/from16 v0, p1

    #@ef
    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@f2
    .line 1649
    const-string/jumbo v3, "android.intent.extra.client_label"

    #@f5
    .line 1650
    const v4, 0x1040472

    #@f8
    .line 1649
    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@fb
    .line 1651
    const-string/jumbo v21, "android.intent.extra.client_intent"

    #@fe
    .line 1652
    move-object/from16 v0, p0

    #@100
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@102
    .line 1653
    new-instance v4, Landroid/content/Intent;

    #@104
    const-string/jumbo v5, "android.intent.action.SET_WALLPAPER"

    #@107
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10a
    .line 1654
    move-object/from16 v0, p0

    #@10c
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@10e
    const v6, 0x1040473

    #@111
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@114
    move-result-object v5

    #@115
    .line 1653
    invoke-static {v4, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@118
    move-result-object v5

    #@119
    .line 1655
    new-instance v8, Landroid/os/UserHandle;

    #@11b
    move/from16 v0, v18

    #@11d
    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@120
    .line 1652
    const/4 v4, 0x0

    #@121
    .line 1655
    const/4 v6, 0x0

    #@122
    const/4 v7, 0x0

    #@123
    .line 1651
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@126
    move-result-object v3

    #@127
    move-object/from16 v0, v21

    #@129
    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@12c
    .line 1656
    move-object/from16 v0, p0

    #@12e
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@130
    .line 1659
    new-instance v4, Landroid/os/UserHandle;

    #@132
    move/from16 v0, v18

    #@134
    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@137
    .line 1657
    const v5, 0x22000001

    #@13a
    .line 1656
    invoke-virtual {v3, v13, v15, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@13d
    move-result v3

    #@13e
    if-nez v3, :cond_e

    #@140
    .line 1660
    new-instance v3, Ljava/lang/StringBuilder;

    #@142
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@145
    const-string/jumbo v4, "Unable to bind service: "

    #@148
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v3

    #@14c
    move-object/from16 v0, p1

    #@14e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v3

    #@152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v14

    #@156
    .line 1662
    .restart local v14    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_d

    #@158
    .line 1663
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@15a
    invoke-direct {v3, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15d
    throw v3

    #@15e
    .line 1609
    .end local v14    # "msg":Ljava/lang/String;
    .end local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .restart local v20    # "wi":Landroid/app/WallpaperInfo;
    :cond_7
    move-object/from16 v0, p0

    #@160
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@162
    .line 1610
    move-object/from16 v0, p0

    #@164
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@166
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@169
    move-result-object v4

    #@16a
    invoke-virtual {v13, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@16d
    move-result-object v4

    #@16e
    .line 1611
    const/16 v5, 0x80

    #@170
    .line 1609
    move/from16 v0, v18

    #@172
    invoke-interface {v3, v13, v4, v5, v0}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@175
    move-result-object v3

    #@176
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@179
    move-result-object v16

    #@17a
    .line 1612
    .local v16, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v12, 0x0

    #@17b
    .local v12, "i":I
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@17e
    move-result v3

    #@17f
    if-ge v12, v3, :cond_8

    #@181
    .line 1613
    move-object/from16 v0, v16

    #@183
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@186
    move-result-object v3

    #@187
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@189
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@18b
    move-object/from16 v17, v0

    #@18d
    .line 1614
    .local v17, "rsi":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v17

    #@18f
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@191
    move-object/from16 v0, v19

    #@193
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@195
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@198
    move-result v3

    #@199
    if-eqz v3, :cond_b

    #@19b
    .line 1615
    move-object/from16 v0, v17

    #@19d
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@19f
    move-object/from16 v0, v19

    #@1a1
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@1a3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1a6
    move-result v3

    #@1a7
    .line 1614
    if-eqz v3, :cond_b

    #@1a9
    .line 1617
    :try_start_2
    new-instance v20, Landroid/app/WallpaperInfo;

    #@1ab
    .end local v20    # "wi":Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    #@1ad
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@1af
    move-object/from16 v0, v16

    #@1b1
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b4
    move-result-object v3

    #@1b5
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@1b7
    move-object/from16 v0, v20

    #@1b9
    invoke-direct {v0, v4, v3}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1bc
    .line 1634
    .end local v17    # "rsi":Landroid/content/pm/ServiceInfo;
    :cond_8
    if-nez v20, :cond_6

    #@1be
    .line 1635
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c0
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c3
    const-string/jumbo v4, "Selected service is not a wallpaper: "

    #@1c6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v3

    #@1ca
    move-object/from16 v0, p1

    #@1cc
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v3

    #@1d0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d3
    move-result-object v14

    #@1d4
    .line 1637
    .restart local v14    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_c

    #@1d6
    .line 1638
    new-instance v3, Ljava/lang/SecurityException;

    #@1d8
    invoke-direct {v3, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1db
    throw v3

    #@1dc
    .line 1624
    .end local v14    # "msg":Ljava/lang/String;
    .restart local v17    # "rsi":Landroid/content/pm/ServiceInfo;
    :catch_1
    move-exception v10

    #@1dd
    .line 1625
    .local v10, "e":Ljava/io/IOException;
    if-eqz p3, :cond_9

    #@1df
    .line 1626
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1e1
    invoke-direct {v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@1e4
    throw v3

    #@1e5
    .line 1628
    :cond_9
    const-string/jumbo v3, "WallpaperManagerService"

    #@1e8
    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1eb
    .line 1629
    const/4 v3, 0x0

    #@1ec
    return v3

    #@1ed
    .line 1618
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    #@1ee
    .line 1619
    .local v11, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz p3, :cond_a

    #@1f0
    .line 1620
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1f2
    invoke-direct {v3, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@1f5
    throw v3

    #@1f6
    .line 1622
    :cond_a
    const-string/jumbo v3, "WallpaperManagerService"

    #@1f9
    invoke-static {v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1fc
    .line 1623
    const/4 v3, 0x0

    #@1fd
    return v3

    #@1fe
    .line 1612
    .end local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v20    # "wi":Landroid/app/WallpaperInfo;
    :cond_b
    add-int/lit8 v12, v12, 0x1

    #@200
    goto/16 :goto_0

    #@202
    .line 1640
    .end local v17    # "rsi":Landroid/content/pm/ServiceInfo;
    .end local v20    # "wi":Landroid/app/WallpaperInfo;
    .restart local v14    # "msg":Ljava/lang/String;
    :cond_c
    const-string/jumbo v3, "WallpaperManagerService"

    #@205
    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@208
    .line 1641
    const/4 v3, 0x0

    #@209
    return v3

    #@20a
    .line 1665
    .end local v12    # "i":I
    .end local v16    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_d
    const-string/jumbo v3, "WallpaperManagerService"

    #@20d
    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@210
    .line 1666
    const/4 v3, 0x0

    #@211
    return v3

    #@212
    .line 1668
    .end local v14    # "msg":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p4

    #@214
    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@216
    move-object/from16 v0, p0

    #@218
    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@21a
    if-ne v3, v4, :cond_f

    #@21c
    move-object/from16 v0, p0

    #@21e
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@220
    if-eqz v3, :cond_f

    #@222
    .line 1669
    move-object/from16 v0, p0

    #@224
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@226
    move-object/from16 v0, p0

    #@228
    invoke-virtual {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@22b
    .line 1671
    :cond_f
    move-object/from16 v0, p1

    #@22d
    move-object/from16 v1, p4

    #@22f
    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@231
    .line 1672
    move-object/from16 v0, p4

    #@233
    iput-object v15, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@235
    .line 1673
    move-object/from16 v0, p5

    #@237
    iput-object v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@239
    .line 1675
    :try_start_4
    move-object/from16 v0, p4

    #@23b
    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@23d
    move-object/from16 v0, p0

    #@23f
    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@241
    if-ne v3, v4, :cond_10

    #@243
    .line 1678
    move-object/from16 v0, p0

    #@245
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@247
    iget-object v4, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    #@249
    .line 1679
    const/16 v5, 0x7dd

    #@24b
    .line 1678
    invoke-interface {v3, v4, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    #@24e
    .line 1680
    move-object/from16 v0, p4

    #@250
    move-object/from16 v1, p0

    #@252
    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    #@254
    .line 1692
    :cond_10
    :goto_1
    const/4 v3, 0x1

    #@255
    return v3

    #@256
    .line 1689
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v18    # "serviceUserId":I
    .end local v19    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v9    # "e":Landroid/os/RemoteException;
    .restart local v14    # "msg":Ljava/lang/String;
    :cond_11
    const-string/jumbo v3, "WallpaperManagerService"

    #@259
    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25c
    .line 1690
    const/4 v3, 0x0

    #@25d
    return v3

    #@25e
    .line 1682
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v14    # "msg":Ljava/lang/String;
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .restart local v18    # "serviceUserId":I
    .restart local v19    # "si":Landroid/content/pm/ServiceInfo;
    :catch_3
    move-exception v9

    #@25f
    .restart local v9    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public clearWallpaper(Ljava/lang/String;II)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1077
    const-string/jumbo v0, "android.permission.SET_WALLPAPER"

    #@5
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    #@8
    .line 1078
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 1081
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@17
    move-result v0

    #@18
    .line 1082
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1b
    move-result v1

    #@1c
    const-string/jumbo v5, "clearWallpaper"

    #@1f
    const/4 v4, 0x1

    #@20
    move v2, p3

    #@21
    .line 1081
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@24
    move-result p3

    #@25
    .line 1084
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@27
    monitor-enter v0

    #@28
    .line 1085
    const/4 v1, 0x0

    #@29
    const/4 v2, 0x0

    #@2a
    :try_start_0
    invoke-virtual {p0, v1, p2, p3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    monitor-exit v0

    #@2e
    .line 1075
    return-void

    #@2f
    .line 1079
    :cond_0
    return-void

    #@30
    .line 1084
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v0

    #@32
    throw v1
.end method

.method clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    .line 1724
    const/4 v0, 0x0

    #@1
    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@3
    .line 1725
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@6
    .line 1723
    return-void
.end method

.method clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V
    .locals 16
    .param p1, "defaultFailed"    # Z
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "reply"    # Landroid/os/IRemoteCallback;

    #@0
    .prologue
    .line 1090
    const/4 v2, 0x1

    #@1
    move/from16 v0, p2

    #@3
    if-eq v0, v2, :cond_0

    #@5
    const/4 v2, 0x2

    #@6
    move/from16 v0, p2

    #@8
    if-eq v0, v2, :cond_0

    #@a
    .line 1091
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v3, "Must specify exactly one kind of wallpaper to read"

    #@f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 1094
    :cond_0
    const/4 v6, 0x0

    #@14
    .line 1095
    .local v6, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v2, 0x2

    #@15
    move/from16 v0, p2

    #@17
    if-ne v0, v2, :cond_1

    #@19
    .line 1096
    move-object/from16 v0, p0

    #@1b
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@1d
    move/from16 v0, p3

    #@1f
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v6

    #@23
    .end local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@25
    .line 1097
    .local v6, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v6, :cond_2

    #@27
    .line 1102
    return-void

    #@28
    .line 1105
    .local v6, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    move-object/from16 v0, p0

    #@2a
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@2c
    move/from16 v0, p3

    #@2e
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v6

    #@32
    .end local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@34
    .line 1106
    .local v6, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v6, :cond_2

    #@36
    .line 1108
    const/4 v2, 0x0

    #@37
    move-object/from16 v0, p0

    #@39
    move/from16 v1, p3

    #@3b
    invoke-direct {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    #@3e
    .line 1109
    move-object/from16 v0, p0

    #@40
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@42
    move/from16 v0, p3

    #@44
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v6

    #@48
    .end local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@4a
    .line 1112
    .restart local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    if-nez v6, :cond_3

    #@4c
    .line 1113
    return-void

    #@4d
    .line 1116
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@50
    move-result-wide v14

    #@51
    .line 1118
    .local v14, "ident":J
    :try_start_0
    iget-object v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    #@53
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@56
    move-result v2

    #@57
    if-eqz v2, :cond_5

    #@59
    .line 1119
    iget-object v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    #@5b
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@5e
    .line 1120
    iget-object v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    #@60
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@63
    .line 1121
    const/4 v2, 0x2

    #@64
    move/from16 v0, p2

    #@66
    if-ne v0, v2, :cond_5

    #@68
    .line 1122
    move-object/from16 v0, p0

    #@6a
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@6c
    move/from16 v0, p3

    #@6e
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    #@71
    .line 1123
    move-object/from16 v0, p0

    #@73
    iget-object v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@75
    .line 1124
    .local v8, "cb":Landroid/app/IWallpaperManagerCallback;
    if-eqz v8, :cond_4

    #@77
    .line 1129
    :try_start_1
    invoke-interface {v8}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7a
    .line 1134
    :cond_4
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    #@7c
    move/from16 v1, p3

    #@7e
    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@81
    .line 1165
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@84
    .line 1135
    return-void

    #@85
    .line 1130
    :catch_0
    move-exception v9

    #@86
    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@87
    .line 1139
    .end local v8    # "cb":Landroid/app/IWallpaperManagerCallback;
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_5
    const/4 v10, 0x0

    #@88
    .line 1141
    .local v10, "e":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    #@89
    :try_start_3
    iput-boolean v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    #@8b
    .line 1142
    move-object/from16 v0, p0

    #@8d
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8f
    move/from16 v0, p3

    #@91
    if-eq v0, v2, :cond_6

    #@93
    .line 1165
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@96
    .line 1142
    return-void

    #@97
    .line 1143
    :cond_6
    if-eqz p1, :cond_7

    #@99
    .line 1144
    :try_start_4
    move-object/from16 v0, p0

    #@9b
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    #@9d
    .line 1145
    :goto_1
    const/4 v4, 0x1

    #@9e
    const/4 v5, 0x0

    #@9f
    move-object/from16 v2, p0

    #@a1
    move-object/from16 v7, p4

    #@a3
    .line 1143
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a6
    move-result v2

    #@a7
    if-eqz v2, :cond_8

    #@a9
    .line 1165
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ac
    .line 1146
    return-void

    #@ad
    .line 1145
    :cond_7
    const/4 v3, 0x0

    #@ae
    goto :goto_1

    #@af
    .line 1148
    :catch_1
    move-exception v12

    #@b0
    .line 1149
    .local v12, "e1":Ljava/lang/IllegalArgumentException;
    move-object v10, v12

    #@b1
    .line 1156
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .end local v12    # "e1":Ljava/lang/IllegalArgumentException;
    :cond_8
    :try_start_5
    const-string/jumbo v2, "WallpaperManagerService"

    #@b4
    const-string/jumbo v3, "Default wallpaper component not found!"

    #@b7
    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ba
    .line 1157
    move-object/from16 v0, p0

    #@bc
    invoke-virtual {v0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@bf
    .line 1158
    if-eqz p4, :cond_9

    #@c1
    .line 1160
    const/4 v2, 0x0

    #@c2
    :try_start_6
    move-object/from16 v0, p4

    #@c4
    invoke-interface {v0, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@c7
    .line 1165
    :cond_9
    :goto_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ca
    .line 1089
    return-void

    #@cb
    .line 1161
    :catch_2
    move-exception v11

    #@cc
    .local v11, "e1":Landroid/os/RemoteException;
    goto :goto_2

    #@cd
    .line 1164
    .end local v11    # "e1":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@ce
    .line 1165
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d1
    .line 1164
    throw v2
.end method

.method detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 4
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1696
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@3
    if-eqz v1, :cond_2

    #@5
    .line 1697
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@7
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1699
    :try_start_0
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@d
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    #@f
    const/4 v2, 0x0

    #@10
    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    #@13
    .line 1702
    :goto_0
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@15
    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    #@17
    .line 1704
    :cond_0
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@19
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 1706
    :try_start_1
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@1f
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    #@21
    invoke-interface {v1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@24
    .line 1710
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@26
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@28
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@2b
    .line 1714
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@2d
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@2f
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    #@31
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@34
    .line 1717
    :goto_2
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@36
    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    #@38
    .line 1718
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@3a
    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    #@3c
    .line 1719
    iput-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@3e
    .line 1695
    :cond_2
    return-void

    #@3f
    .line 1715
    :catch_0
    move-exception v0

    #@40
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@41
    .line 1707
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@42
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    #@43
    .line 1700
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    #@44
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2237
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.DUMP"

    #@5
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 2240
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Permission Denial: can\'t dump wallpaper service from from pid="

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    .line 2241
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v4

    #@1b
    .line 2240
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    .line 2242
    const-string/jumbo v4, ", uid="

    #@22
    .line 2240
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 2242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v4

    #@2a
    .line 2240
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 2243
    return-void

    #@36
    .line 2246
    :cond_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@38
    monitor-enter v4

    #@39
    .line 2247
    :try_start_0
    const-string/jumbo v3, "System wallpaper state:"

    #@3c
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f
    .line 2248
    const/4 v1, 0x0

    #@40
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@42
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@45
    move-result v3

    #@46
    if-ge v1, v3, :cond_3

    #@48
    .line 2249
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@4a
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@4d
    move-result-object v2

    #@4e
    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@50
    .line 2250
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v3, " User "

    #@53
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@58
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    #@5b
    .line 2251
    const-string/jumbo v3, ": id="

    #@5e
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@61
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    #@63
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    #@66
    .line 2252
    const-string/jumbo v3, "  mWidth="

    #@69
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6c
    .line 2253
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@6e
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    #@71
    .line 2254
    const-string/jumbo v3, " mHeight="

    #@74
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    .line 2255
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@79
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    #@7c
    .line 2256
    const-string/jumbo v3, "  mCropHint="

    #@7f
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@82
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    #@84
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@87
    .line 2257
    const-string/jumbo v3, "  mPadding="

    #@8a
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@8f
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@92
    .line 2258
    const-string/jumbo v3, "  mName="

    #@95
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@9a
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9d
    .line 2259
    const-string/jumbo v3, "  mWallpaperComponent="

    #@a0
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a3
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@a5
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@a8
    .line 2260
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@aa
    if-eqz v3, :cond_2

    #@ac
    .line 2261
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@ae
    .line 2262
    .local v0, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string/jumbo v3, "  Wallpaper connection "

    #@b1
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b4
    .line 2263
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@b7
    .line 2264
    const-string/jumbo v3, ":"

    #@ba
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bd
    .line 2265
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    #@bf
    if-eqz v3, :cond_1

    #@c1
    .line 2266
    const-string/jumbo v3, "    mInfo.component="

    #@c4
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c7
    .line 2267
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    #@c9
    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    #@cc
    move-result-object v3

    #@cd
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@d0
    .line 2269
    :cond_1
    const-string/jumbo v3, "    mToken="

    #@d3
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d6
    .line 2270
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    #@d8
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@db
    .line 2271
    const-string/jumbo v3, "    mService="

    #@de
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e1
    .line 2272
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    #@e3
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e6
    .line 2273
    const-string/jumbo v3, "    mEngine="

    #@e9
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ec
    .line 2274
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    #@ee
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@f1
    .line 2275
    const-string/jumbo v3, "    mLastDiedTime="

    #@f4
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f7
    .line 2276
    iget-wide v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    #@f9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@fc
    move-result-wide v8

    #@fd
    sub-long/2addr v6, v8

    #@fe
    invoke-virtual {p2, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    #@101
    .line 2248
    .end local v0    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@103
    goto/16 :goto_0

    #@105
    .line 2279
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_3
    const-string/jumbo v3, "Lock wallpaper state:"

    #@108
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10b
    .line 2280
    const/4 v1, 0x0

    #@10c
    :goto_1
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@10e
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@111
    move-result v3

    #@112
    if-ge v1, v3, :cond_4

    #@114
    .line 2281
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@116
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@119
    move-result-object v2

    #@11a
    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@11c
    .line 2282
    .restart local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v3, " User "

    #@11f
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@122
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@124
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    #@127
    .line 2283
    const-string/jumbo v3, ": id="

    #@12a
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12d
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    #@12f
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    #@132
    .line 2284
    const-string/jumbo v3, "  mWidth="

    #@135
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@138
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@13a
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    #@13d
    .line 2285
    const-string/jumbo v3, " mHeight="

    #@140
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@143
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@145
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    #@148
    .line 2286
    const-string/jumbo v3, "  mCropHint="

    #@14b
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14e
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    #@150
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@153
    .line 2287
    const-string/jumbo v3, "  mPadding="

    #@156
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@159
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@15b
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@15e
    .line 2288
    const-string/jumbo v3, "  mName="

    #@161
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@164
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@166
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@169
    .line 2280
    add-int/lit8 v1, v1, 0x1

    #@16b
    goto :goto_1

    #@16c
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_4
    monitor-exit v4

    #@16d
    .line 2236
    return-void

    #@16e
    .line 2246
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@16f
    monitor-exit v4

    #@170
    throw v3
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 888
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    #@3
    .line 889
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@9
    move-result v2

    #@a
    if-ge v0, v2, :cond_0

    #@c
    .line 890
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@14
    .line 891
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@16
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    #@19
    .line 889
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 887
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    return-void
.end method

.method public getHeightHint()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1258
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1259
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@8
    move-result v3

    #@9
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@f
    .line 1260
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_0

    #@11
    .line 1261
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    return v1

    #@15
    .line 1263
    :cond_0
    const/4 v1, 0x0

    #@16
    monitor-exit v2

    #@17
    return v1

    #@18
    .line 1258
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 959
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x3e8

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 960
    new-instance v0, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v1, "getName() can only be called from the system process"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 962
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@13
    monitor-enter v1

    #@14
    .line 963
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@16
    const/4 v2, 0x0

    #@17
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@1d
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v1

    #@20
    return-object v0

    #@21
    .line 962
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .locals 11
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "which"    # I
    .param p3, "outParams"    # Landroid/os/Bundle;
    .param p4, "wallpaperUserId"    # I

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v6, 0x0

    #@4
    .line 1305
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7
    move-result v0

    #@8
    .line 1306
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v1

    #@c
    const-string/jumbo v5, "getWallpaper"

    #@f
    move v2, p4

    #@10
    .line 1305
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@13
    move-result p4

    #@14
    .line 1308
    if-eq p2, v4, :cond_0

    #@16
    if-eq p2, v10, :cond_0

    #@18
    .line 1309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "Must specify exactly one kind of wallpaper to read"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 1312
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@23
    monitor-enter v1

    #@24
    .line 1314
    if-ne p2, v10, :cond_1

    #@26
    :try_start_0
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@28
    .line 1315
    .local v9, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_0
    invoke-virtual {v9, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v8

    #@2c
    check-cast v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@2e
    .line 1316
    .local v8, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v8, :cond_2

    #@30
    .line 1319
    const/4 v0, 0x0

    #@31
    invoke-direct {p0, p4, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    #@34
    .line 1320
    invoke-virtual {v9, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v8

    #@38
    .end local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 1321
    .restart local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v8, :cond_2

    #@3c
    monitor-exit v1

    #@3d
    .line 1322
    return-object v6

    #@3e
    .line 1314
    .end local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v9    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .restart local v9    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    goto :goto_0

    #@41
    .line 1326
    .restart local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    if-eqz p3, :cond_3

    #@43
    .line 1327
    :try_start_2
    const-string/jumbo v0, "width"

    #@46
    iget v2, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@48
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@4b
    .line 1328
    const-string/jumbo v0, "height"

    #@4e
    iget v2, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@50
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@53
    .line 1330
    :cond_3
    if-eqz p1, :cond_4

    #@55
    .line 1331
    invoke-static {v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@5c
    .line 1333
    :cond_4
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    #@5e
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@61
    move-result v0

    #@62
    if-nez v0, :cond_5

    #@64
    monitor-exit v1

    #@65
    .line 1334
    return-object v6

    #@66
    .line 1336
    :cond_5
    :try_start_3
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    #@68
    const/high16 v2, 0x10000000

    #@6a
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6d
    move-result-object v0

    #@6e
    monitor-exit v1

    #@6f
    return-object v0

    #@70
    .line 1337
    :catch_0
    move-exception v7

    #@71
    .line 1339
    .local v7, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string/jumbo v0, "WallpaperManagerService"

    #@74
    const-string/jumbo v2, "Error getting wallpaper"

    #@77
    invoke-static {v0, v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@7a
    monitor-exit v1

    #@7b
    .line 1341
    return-object v6

    #@7c
    .line 1312
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v9    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :catchall_0
    move-exception v0

    #@7d
    monitor-exit v1

    #@7e
    throw v0
.end method

.method public getWallpaperIdForUser(II)I
    .locals 10
    .param p1, "which"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v9, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    .line 1360
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@6
    move-result v0

    #@7
    .line 1361
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v1

    #@b
    const-string/jumbo v5, "getWallpaperIdForUser"

    #@e
    const/4 v3, 0x0

    #@f
    move v2, p2

    #@10
    .line 1360
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@13
    move-result p2

    #@14
    .line 1363
    if-eq p1, v4, :cond_0

    #@16
    if-eq p1, v9, :cond_0

    #@18
    .line 1364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "Must specify exactly one kind of wallpaper"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 1368
    :cond_0
    if-ne p1, v9, :cond_1

    #@23
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@25
    .line 1369
    .local v7, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@27
    monitor-enter v1

    #@28
    .line 1370
    :try_start_0
    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v8

    #@2c
    check-cast v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@2e
    .line 1371
    .local v8, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v8, :cond_2

    #@30
    .line 1372
    iget v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    monitor-exit v1

    #@33
    return v0

    #@34
    .line 1368
    .end local v7    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    .end local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@36
    .restart local v7    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    goto :goto_0

    #@37
    .restart local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    monitor-exit v1

    #@38
    .line 1375
    const/4 v0, -0x1

    #@39
    return v0

    #@3a
    .line 1369
    .end local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v0

    #@3b
    monitor-exit v1

    #@3c
    throw v0
.end method

.method public getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1347
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@4
    move-result v0

    #@5
    .line 1348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8
    move-result v1

    #@9
    const-string/jumbo v5, "getWallpaperIdForUser"

    #@c
    const/4 v3, 0x0

    #@d
    const/4 v4, 0x1

    #@e
    move v2, p1

    #@f
    .line 1347
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@12
    move-result p1

    #@13
    .line 1349
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@15
    monitor-enter v1

    #@16
    .line 1350
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v7

    #@1c
    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@1e
    .line 1351
    .local v7, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v7, :cond_0

    #@20
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 1352
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@26
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v1

    #@29
    return-object v0

    #@2a
    :cond_0
    monitor-exit v1

    #@2b
    .line 1354
    return-object v6

    #@2c
    .line 1349
    .end local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0
.end method

.method public getWidthHint()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1247
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1248
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@8
    move-result v3

    #@9
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@f
    .line 1249
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_0

    #@11
    .line 1250
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    return v1

    #@15
    .line 1252
    :cond_0
    const/4 v1, 0x0

    #@16
    monitor-exit v2

    #@17
    return v1

    #@18
    .line 1247
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1170
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v7

    #@4
    .line 1172
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    move-result-wide v0

    #@8
    .line 1174
    .local v0, "ident":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@a
    const-string/jumbo v8, "user"

    #@d
    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v6

    #@11
    check-cast v6, Landroid/os/UserManager;

    #@13
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result-object v4

    #@17
    .line 1176
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 1178
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v3

    #@1e
    .local v3, "user$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_2

    #@24
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/content/pm/UserInfo;

    #@2a
    .line 1180
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@2d
    move-result v6

    #@2e
    if-nez v6, :cond_0

    #@30
    .line 1183
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@32
    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    #@34
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v5

    #@38
    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@3a
    .line 1184
    .local v5, "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_1

    #@3c
    .line 1186
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    #@3e
    const/4 v8, 0x0

    #@3f
    invoke-direct {p0, v6, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    #@42
    .line 1187
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@44
    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    #@46
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@49
    move-result-object v5

    #@4a
    .end local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@4c
    .line 1189
    .restart local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    if-eqz v5, :cond_0

    #@4e
    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@50
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@53
    move-result v6

    #@54
    if-eqz v6, :cond_0

    #@56
    .line 1190
    const/4 v6, 0x1

    #@57
    monitor-exit v7

    #@58
    return v6

    #@59
    .line 1175
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "user$iterator":Ljava/util/Iterator;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v6

    #@5a
    .line 1176
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5d
    .line 1175
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5e
    .line 1170
    .end local v0    # "ident":J
    :catchall_1
    move-exception v6

    #@5f
    monitor-exit v7

    #@60
    throw v6

    #@61
    .restart local v0    # "ident":J
    .restart local v3    # "user$iterator":Ljava/util/Iterator;
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    monitor-exit v7

    #@62
    .line 1194
    return v9
.end method

.method public isSetWallpaperAllowed(Ljava/lang/String;)Z
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1775
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v1

    #@8
    .line 1776
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v7

    #@c
    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 1777
    .local v3, "uidPackages":[Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@13
    move-result-object v7

    #@14
    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    .line 1778
    .local v2, "uidMatchPackage":Z
    if-nez v2, :cond_0

    #@1a
    .line 1779
    return v5

    #@1b
    .line 1782
    :cond_0
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@1d
    const-class v8, Landroid/app/admin/DevicePolicyManager;

    #@1f
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    #@25
    .line 1783
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    #@28
    move-result v7

    #@29
    if-nez v7, :cond_1

    #@2b
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    #@2e
    move-result v7

    #@2f
    if-eqz v7, :cond_2

    #@31
    .line 1784
    :cond_1
    return v6

    #@32
    .line 1786
    :cond_2
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@34
    const-string/jumbo v8, "user"

    #@37
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@3a
    move-result-object v4

    #@3b
    check-cast v4, Landroid/os/UserManager;

    #@3d
    .line 1787
    .local v4, "um":Landroid/os/UserManager;
    const-string/jumbo v7, "no_set_wallpaper"

    #@40
    invoke-virtual {v4, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@43
    move-result v7

    #@44
    if-eqz v7, :cond_3

    #@46
    :goto_0
    return v5

    #@47
    :cond_3
    move v5, v6

    #@48
    goto :goto_0
.end method

.method public isWallpaperBackupEligible(II)Z
    .locals 3
    .param p1, "which"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1792
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    const/16 v2, 0x3e8

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 1793
    new-instance v1, Ljava/lang/SecurityException;

    #@a
    const-string/jumbo v2, "Only the system may call isWallpaperBackupEligible"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 1796
    :cond_0
    const/4 v1, 0x2

    #@12
    if-ne p1, v1, :cond_1

    #@14
    .line 1797
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@16
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@1c
    move-object v0, v1

    #@1d
    .line 1799
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_0
    if-eqz v0, :cond_2

    #@1f
    iget-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    #@21
    :goto_1
    return v1

    #@22
    .line 1798
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@2a
    move-object v0, v1

    #@2b
    goto :goto_0

    #@2c
    .line 1799
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    const/4 v1, 0x0

    #@2d
    goto :goto_1
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1769
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v2

    #@7
    const/16 v3, 0x30

    #@9
    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method makeWallpaperIdLocked()I
    .locals 1

    #@0
    .prologue
    .line 586
    :cond_0
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    #@6
    .line 587
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 588
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    #@c
    return v0
.end method

.method notifyLockWallpaperChanged()V
    .locals 2

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    #@2
    .line 308
    .local v0, "cb":Landroid/app/IWallpaperManagerCallback;
    if-eqz v0, :cond_0

    #@4
    .line 310
    :try_start_0
    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 306
    :cond_0
    :goto_0
    return-void

    #@8
    .line 311
    :catch_0
    move-exception v1

    #@9
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method onRemoveUser(I)V
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1016
    const/4 v2, 0x1

    #@1
    if-ge p1, v2, :cond_0

    #@3
    return-void

    #@4
    .line 1018
    :cond_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    #@7
    move-result-object v1

    #@8
    .line 1019
    .local v1, "wallpaperDir":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@a
    monitor-enter v3

    #@b
    .line 1020
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserversLocked(I)V

    #@e
    .line 1021
    sget-object v4, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    #@10
    const/4 v2, 0x0

    #@11
    array-length v5, v4

    #@12
    :goto_0
    if-ge v2, v5, :cond_1

    #@14
    aget-object v0, v4, v2

    #@16
    .line 1022
    .local v0, "filename":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    #@18
    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1b
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 1021
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .end local v0    # "filename":Ljava/lang/String;
    :cond_1
    monitor-exit v3

    #@22
    .line 1015
    return-void

    #@23
    .line 1019
    :catchall_0
    move-exception v2

    #@24
    monitor-exit v3

    #@25
    throw v2
.end method

.method onUnlockUser(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 984
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 985
    :try_start_0
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@5
    if-ne v1, p1, :cond_1

    #@7
    .line 986
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 988
    const/4 v1, 0x0

    #@c
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    #@f
    .line 995
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@17
    if-eq v1, v3, :cond_1

    #@19
    .line 996
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseArray;

    #@1b
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@1d
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@20
    .line 997
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    #@22
    invoke-direct {v0, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    #@25
    .line 1009
    .local v0, "relabeler":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .end local v0    # "relabeler":Ljava/lang/Runnable;
    :cond_1
    monitor-exit v2

    #@2d
    .line 983
    return-void

    #@2e
    .line 984
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit v2

    #@30
    throw v1
.end method

.method restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 27
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    .line 2160
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@4
    move-object/from16 v23, v0

    #@6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    #@9
    move-result v23

    #@a
    const/16 v24, 0x4

    #@c
    move/from16 v0, v23

    #@e
    move/from16 v1, v24

    #@10
    if-le v0, v1, :cond_7

    #@12
    const-string/jumbo v23, "res:"

    #@15
    move-object/from16 v0, p1

    #@17
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@19
    move-object/from16 v24, v0

    #@1b
    const/16 v25, 0x0

    #@1d
    const/16 v26, 0x4

    #@1f
    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@22
    move-result-object v24

    #@23
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v23

    #@27
    if-eqz v23, :cond_7

    #@29
    .line 2161
    move-object/from16 v0, p1

    #@2b
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@2d
    move-object/from16 v23, v0

    #@2f
    const/16 v24, 0x4

    #@31
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@34
    move-result-object v20

    #@35
    .line 2163
    .local v20, "resName":Ljava/lang/String;
    const/16 v16, 0x0

    #@37
    .line 2164
    .local v16, "pkg":Ljava/lang/String;
    const/16 v23, 0x3a

    #@39
    move-object/from16 v0, v20

    #@3b
    move/from16 v1, v23

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@40
    move-result v7

    #@41
    .line 2165
    .local v7, "colon":I
    if-lez v7, :cond_0

    #@43
    .line 2166
    const/16 v23, 0x0

    #@45
    move-object/from16 v0, v20

    #@47
    move/from16 v1, v23

    #@49
    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4c
    move-result-object v16

    #@4d
    .line 2169
    .end local v16    # "pkg":Ljava/lang/String;
    :cond_0
    const/4 v15, 0x0

    #@4e
    .line 2170
    .local v15, "ident":Ljava/lang/String;
    const/16 v23, 0x2f

    #@50
    move-object/from16 v0, v20

    #@52
    move/from16 v1, v23

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@57
    move-result v21

    #@58
    .line 2171
    .local v21, "slash":I
    if-lez v21, :cond_1

    #@5a
    .line 2172
    add-int/lit8 v23, v21, 0x1

    #@5c
    move-object/from16 v0, v20

    #@5e
    move/from16 v1, v23

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@63
    move-result-object v15

    #@64
    .line 2175
    .end local v15    # "ident":Ljava/lang/String;
    :cond_1
    const/16 v22, 0x0

    #@66
    .line 2176
    .local v22, "type":Ljava/lang/String;
    if-lez v7, :cond_2

    #@68
    if-lez v21, :cond_2

    #@6a
    sub-int v23, v21, v7

    #@6c
    const/16 v24, 0x1

    #@6e
    move/from16 v0, v23

    #@70
    move/from16 v1, v24

    #@72
    if-le v0, v1, :cond_2

    #@74
    .line 2177
    add-int/lit8 v23, v7, 0x1

    #@76
    move-object/from16 v0, v20

    #@78
    move/from16 v1, v23

    #@7a
    move/from16 v2, v21

    #@7c
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7f
    move-result-object v22

    #@80
    .line 2180
    .end local v22    # "type":Ljava/lang/String;
    :cond_2
    if-eqz v16, :cond_7

    #@82
    if-eqz v15, :cond_7

    #@84
    if-eqz v22, :cond_7

    #@86
    .line 2181
    const/16 v19, -0x1

    #@88
    .line 2182
    .local v19, "resId":I
    const/16 v18, 0x0

    #@8a
    .line 2183
    .local v18, "res":Ljava/io/InputStream;
    const/4 v13, 0x0

    #@8b
    .line 2184
    .local v13, "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    #@8c
    .line 2186
    .local v8, "cos":Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    #@8e
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@90
    move-object/from16 v23, v0

    #@92
    const/16 v24, 0x4

    #@94
    move-object/from16 v0, v23

    #@96
    move-object/from16 v1, v16

    #@98
    move/from16 v2, v24

    #@9a
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    #@9d
    move-result-object v6

    #@9e
    .line 2187
    .local v6, "c":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a1
    move-result-object v17

    #@a2
    .line 2188
    .local v17, "r":Landroid/content/res/Resources;
    const/16 v23, 0x0

    #@a4
    const/16 v24, 0x0

    #@a6
    move-object/from16 v0, v17

    #@a8
    move-object/from16 v1, v20

    #@aa
    move-object/from16 v2, v23

    #@ac
    move-object/from16 v3, v24

    #@ae
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@b1
    move-result v19

    #@b2
    .line 2189
    if-nez v19, :cond_3

    #@b4
    .line 2190
    const-string/jumbo v23, "WallpaperManagerService"

    #@b7
    new-instance v24, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v25, "couldn\'t resolve identifier pkg="

    #@bf
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v24

    #@c3
    move-object/from16 v0, v24

    #@c5
    move-object/from16 v1, v16

    #@c7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v24

    #@cb
    const-string/jumbo v25, " type="

    #@ce
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v24

    #@d2
    move-object/from16 v0, v24

    #@d4
    move-object/from16 v1, v22

    #@d6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v24

    #@da
    .line 2191
    const-string/jumbo v25, " ident="

    #@dd
    .line 2190
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v24

    #@e1
    move-object/from16 v0, v24

    #@e3
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v24

    #@e7
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v24

    #@eb
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ee
    .line 2192
    const/16 v23, 0x0

    #@f0
    .line 2220
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f3
    .line 2227
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f6
    .line 2228
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f9
    .line 2192
    return v23

    #@fa
    .line 2195
    :cond_3
    :try_start_1
    move-object/from16 v0, v17

    #@fc
    move/from16 v1, v19

    #@fe
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    #@101
    move-result-object v18

    #@102
    .line 2196
    .local v18, "res":Ljava/io/InputStream;
    move-object/from16 v0, p1

    #@104
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    #@106
    move-object/from16 v23, v0

    #@108
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    #@10b
    move-result v23

    #@10c
    if-eqz v23, :cond_4

    #@10e
    .line 2197
    move-object/from16 v0, p1

    #@110
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    #@112
    move-object/from16 v23, v0

    #@114
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    #@117
    .line 2198
    move-object/from16 v0, p1

    #@119
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    #@11b
    move-object/from16 v23, v0

    #@11d
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    #@120
    .line 2200
    :cond_4
    new-instance v14, Ljava/io/FileOutputStream;

    #@122
    move-object/from16 v0, p1

    #@124
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    #@126
    move-object/from16 v23, v0

    #@128
    move-object/from16 v0, v23

    #@12a
    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12d
    .line 2201
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v14, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v9, Ljava/io/FileOutputStream;

    #@12f
    move-object/from16 v0, p1

    #@131
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    #@133
    move-object/from16 v23, v0

    #@135
    move-object/from16 v0, v23

    #@137
    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13a
    .line 2203
    .local v9, "cos":Ljava/io/FileOutputStream;
    const v23, 0x8000

    #@13d
    :try_start_3
    move/from16 v0, v23

    #@13f
    new-array v5, v0, [B

    #@141
    .line 2205
    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .local v5, "buffer":[B
    :goto_0
    move-object/from16 v0, v18

    #@143
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    #@146
    move-result v4

    #@147
    .local v4, "amt":I
    if-lez v4, :cond_8

    #@149
    .line 2206
    const/16 v23, 0x0

    #@14b
    move/from16 v0, v23

    #@14d
    invoke-virtual {v14, v5, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V

    #@150
    .line 2207
    const/16 v23, 0x0

    #@152
    move/from16 v0, v23

    #@154
    invoke-virtual {v9, v5, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@157
    goto :goto_0

    #@158
    .line 2213
    .end local v4    # "amt":I
    .end local v5    # "buffer":[B
    :catch_0
    move-exception v10

    #@159
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v8, v9

    #@15a
    .end local v9    # "cos":Ljava/io/FileOutputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    move-object v13, v14

    #@15b
    .line 2214
    .end local v6    # "c":Landroid/content/Context;
    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v17    # "r":Landroid/content/res/Resources;
    .end local v18    # "res":Ljava/io/InputStream;
    :goto_1
    :try_start_4
    const-string/jumbo v23, "WallpaperManagerService"

    #@15e
    new-instance v24, Ljava/lang/StringBuilder;

    #@160
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    const-string/jumbo v25, "Package name "

    #@166
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v24

    #@16a
    move-object/from16 v0, v24

    #@16c
    move-object/from16 v1, v16

    #@16e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v24

    #@172
    const-string/jumbo v25, " not found"

    #@175
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v24

    #@179
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17c
    move-result-object v24

    #@17d
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@180
    .line 2220
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@183
    .line 2221
    if-eqz v13, :cond_5

    #@185
    .line 2222
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@188
    .line 2224
    :cond_5
    if-eqz v8, :cond_6

    #@18a
    .line 2225
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@18d
    .line 2227
    :cond_6
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@190
    .line 2228
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@193
    .line 2232
    .end local v7    # "colon":I
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19    # "resId":I
    .end local v20    # "resName":Ljava/lang/String;
    .end local v21    # "slash":I
    :cond_7
    :goto_2
    const/16 v23, 0x0

    #@195
    return v23

    #@196
    .line 2211
    .restart local v4    # "amt":I
    .restart local v5    # "buffer":[B
    .restart local v6    # "c":Landroid/content/Context;
    .restart local v7    # "colon":I
    .restart local v9    # "cos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "r":Landroid/content/res/Resources;
    .restart local v18    # "res":Ljava/io/InputStream;
    .restart local v19    # "resId":I
    .restart local v20    # "resName":Ljava/lang/String;
    .restart local v21    # "slash":I
    :cond_8
    :try_start_5
    const-string/jumbo v23, "WallpaperManagerService"

    #@199
    new-instance v24, Ljava/lang/StringBuilder;

    #@19b
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@19e
    const-string/jumbo v25, "Restored wallpaper: "

    #@1a1
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v24

    #@1a5
    move-object/from16 v0, v24

    #@1a7
    move-object/from16 v1, v20

    #@1a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v24

    #@1ad
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b0
    move-result-object v24

    #@1b1
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@1b4
    .line 2212
    const/16 v23, 0x1

    #@1b6
    .line 2220
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1b9
    .line 2221
    if-eqz v14, :cond_9

    #@1bb
    .line 2222
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@1be
    .line 2224
    :cond_9
    if-eqz v9, :cond_a

    #@1c0
    .line 2225
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@1c3
    .line 2227
    :cond_a
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1c6
    .line 2228
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1c9
    .line 2212
    return v23

    #@1ca
    .line 2217
    .end local v4    # "amt":I
    .end local v5    # "buffer":[B
    .end local v6    # "c":Landroid/content/Context;
    .end local v9    # "cos":Ljava/io/FileOutputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v17    # "r":Landroid/content/res/Resources;
    .end local v18    # "res":Ljava/io/InputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v12

    #@1cb
    .line 2218
    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v12, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string/jumbo v23, "WallpaperManagerService"

    #@1ce
    const-string/jumbo v24, "IOException while restoring wallpaper "

    #@1d1
    move-object/from16 v0, v23

    #@1d3
    move-object/from16 v1, v24

    #@1d5
    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1d8
    .line 2220
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1db
    .line 2221
    if-eqz v13, :cond_b

    #@1dd
    .line 2222
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@1e0
    .line 2224
    :cond_b
    if-eqz v8, :cond_c

    #@1e2
    .line 2225
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@1e5
    .line 2227
    :cond_c
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e8
    .line 2228
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1eb
    goto :goto_2

    #@1ec
    .line 2215
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v8    # "cos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v11

    #@1ed
    .line 2216
    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_4
    :try_start_7
    const-string/jumbo v23, "WallpaperManagerService"

    #@1f0
    new-instance v24, Ljava/lang/StringBuilder;

    #@1f2
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@1f5
    const-string/jumbo v25, "Resource not found: "

    #@1f8
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fb
    move-result-object v24

    #@1fc
    move-object/from16 v0, v24

    #@1fe
    move/from16 v1, v19

    #@200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@203
    move-result-object v24

    #@204
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@207
    move-result-object v24

    #@208
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@20b
    .line 2220
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@20e
    .line 2221
    if-eqz v13, :cond_d

    #@210
    .line 2222
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@213
    .line 2224
    :cond_d
    if-eqz v8, :cond_e

    #@215
    .line 2225
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@218
    .line 2227
    :cond_e
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@21b
    .line 2228
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@21e
    goto/16 :goto_2

    #@220
    .line 2219
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v23

    #@221
    .line 2220
    :goto_5
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@224
    .line 2221
    if-eqz v13, :cond_f

    #@226
    .line 2222
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@229
    .line 2224
    :cond_f
    if-eqz v8, :cond_10

    #@22b
    .line 2225
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@22e
    .line 2227
    :cond_10
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@231
    .line 2228
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@234
    .line 2219
    throw v23

    #@235
    .restart local v6    # "c":Landroid/content/Context;
    .restart local v8    # "cos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "r":Landroid/content/res/Resources;
    .restart local v18    # "res":Ljava/io/InputStream;
    :catchall_1
    move-exception v23

    #@236
    move-object v13, v14

    #@237
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    #@238
    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "cos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v23

    #@239
    move-object v8, v9

    #@23a
    .end local v9    # "cos":Ljava/io/FileOutputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    move-object v13, v14

    #@23b
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    #@23c
    .line 2213
    .end local v6    # "c":Landroid/content/Context;
    .end local v17    # "r":Landroid/content/res/Resources;
    .end local v18    # "res":Ljava/io/InputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v10

    #@23d
    .restart local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_1

    #@23f
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "c":Landroid/content/Context;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "r":Landroid/content/res/Resources;
    .restart local v18    # "res":Ljava/io/InputStream;
    :catch_4
    move-exception v10

    #@240
    .restart local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v13, v14

    #@241
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    #@243
    .line 2215
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v11

    #@244
    .restart local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    move-object v13, v14

    #@245
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    #@246
    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "cos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v11

    #@247
    .restart local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    move-object v8, v9

    #@248
    .end local v9    # "cos":Ljava/io/FileOutputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    move-object v13, v14

    #@249
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    #@24a
    .line 2217
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v12

    #@24b
    .restart local v12    # "e":Ljava/io/IOException;
    move-object v13, v14

    #@24c
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    #@24e
    .end local v8    # "cos":Ljava/io/FileOutputStream;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "cos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v12

    #@24f
    .restart local v12    # "e":Ljava/io/IOException;
    move-object v8, v9

    #@250
    .end local v9    # "cos":Ljava/io/FileOutputStream;
    .local v8, "cos":Ljava/io/FileOutputStream;
    move-object v13, v14

    #@251
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method

.method public setDimensionHints(IILjava/lang/String;)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1207
    const-string/jumbo v4, "android.permission.SET_WALLPAPER_HINTS"

    #@3
    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    #@6
    .line 1208
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    #@9
    move-result v4

    #@a
    if-nez v4, :cond_0

    #@c
    .line 1209
    return-void

    #@d
    .line 1211
    :cond_0
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v5

    #@10
    .line 1212
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@13
    move-result v2

    #@14
    .line 1213
    .local v2, "userId":I
    const/4 v4, 0x1

    #@15
    invoke-direct {p0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@18
    move-result-object v3

    #@19
    .line 1214
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-lez p1, :cond_1

    #@1b
    if-gtz p2, :cond_2

    #@1d
    .line 1215
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v6, "width and height must be > 0"

    #@22
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1211
    .end local v2    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v4

    #@27
    monitor-exit v5

    #@28
    throw v4

    #@29
    .line 1218
    .restart local v2    # "userId":I
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultDisplaySize()Landroid/graphics/Point;

    #@2c
    move-result-object v0

    #@2d
    .line 1219
    .local v0, "displaySize":Landroid/graphics/Point;
    iget v4, v0, Landroid/graphics/Point;->x:I

    #@2f
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    #@32
    move-result p1

    #@33
    .line 1220
    iget v4, v0, Landroid/graphics/Point;->y:I

    #@35
    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    #@38
    move-result p2

    #@39
    .line 1222
    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@3b
    if-ne p1, v4, :cond_3

    #@3d
    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@3f
    if-eq p2, v4, :cond_5

    #@41
    .line 1223
    :cond_3
    iput p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@43
    .line 1224
    iput p2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@45
    .line 1225
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    #@48
    .line 1226
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    if-eq v4, v2, :cond_4

    #@4c
    monitor-exit v5

    #@4d
    return-void

    #@4e
    .line 1227
    :cond_4
    :try_start_2
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@50
    if-eqz v4, :cond_5

    #@52
    .line 1228
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@54
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@56
    if-eqz v4, :cond_6

    #@58
    .line 1230
    :try_start_3
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@5a
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    #@5c
    invoke-interface {v4, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5f
    .line 1234
    :goto_0
    :try_start_4
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@62
    :cond_5
    :goto_1
    monitor-exit v5

    #@63
    .line 1206
    return-void

    #@64
    .line 1235
    :cond_6
    :try_start_5
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@66
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    #@68
    if-eqz v4, :cond_5

    #@6a
    .line 1239
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@6c
    const/4 v6, 0x1

    #@6d
    iput-boolean v6, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@6f
    goto :goto_1

    #@70
    .line 1232
    :catch_0
    move-exception v1

    #@71
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 7
    .param p1, "padding"    # Landroid/graphics/Rect;
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1269
    const-string/jumbo v3, "android.permission.SET_WALLPAPER_HINTS"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    #@6
    .line 1270
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    .line 1271
    return-void

    #@d
    .line 1273
    :cond_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v4

    #@10
    .line 1274
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@13
    move-result v1

    #@14
    .line 1275
    .local v1, "userId":I
    const/4 v3, 0x1

    #@15
    invoke-direct {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@18
    move-result-object v2

    #@19
    .line 1276
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    #@1b
    if-ltz v3, :cond_1

    #@1d
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@1f
    if-gez v3, :cond_2

    #@21
    .line 1277
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@23
    new-instance v5, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v6, "padding must be positive: "

    #@2b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    .line 1273
    .end local v1    # "userId":I
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v3

    #@3c
    monitor-exit v4

    #@3d
    throw v3

    #@3e
    .line 1276
    .restart local v1    # "userId":I
    .restart local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    :try_start_1
    iget v3, p1, Landroid/graphics/Rect;->right:I

    #@40
    if-ltz v3, :cond_1

    #@42
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@44
    if-ltz v3, :cond_1

    #@46
    .line 1280
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@48
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v3

    #@4c
    if-nez v3, :cond_4

    #@4e
    .line 1281
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@50
    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@53
    .line 1282
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    #@56
    .line 1283
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    if-eq v3, v1, :cond_3

    #@5a
    monitor-exit v4

    #@5b
    return-void

    #@5c
    .line 1284
    :cond_3
    :try_start_2
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@5e
    if-eqz v3, :cond_4

    #@60
    .line 1285
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@62
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@64
    if-eqz v3, :cond_5

    #@66
    .line 1287
    :try_start_3
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@68
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    #@6a
    invoke-interface {v3, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6d
    .line 1290
    :goto_0
    :try_start_4
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@70
    :cond_4
    :goto_1
    monitor-exit v4

    #@71
    .line 1268
    return-void

    #@72
    .line 1291
    :cond_5
    :try_start_5
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@74
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    #@76
    if-eqz v3, :cond_4

    #@78
    .line 1295
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@7a
    const/4 v5, 0x1

    #@7b
    iput-boolean v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mPaddingChanged:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@7d
    goto :goto_1

    #@7e
    .line 1288
    :catch_0
    move-exception v0

    #@7f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .locals 2
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;

    #@0
    .prologue
    .line 1380
    const-string/jumbo v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    #@6
    .line 1381
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v0

    #@9
    .line 1382
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v0

    #@c
    .line 1384
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 1381
    :catchall_0
    move-exception v1

    #@f
    monitor-exit v0

    #@10
    throw v1
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "cropHint"    # Landroid/graphics/Rect;
    .param p4, "allowBackup"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "which"    # I
    .param p7, "completion"    # Landroid/app/IWallpaperManagerCallback;
    .param p8, "userId"    # I

    #@0
    .prologue
    .line 1391
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingPid()I

    #@3
    move-result v2

    #@4
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingUid()I

    #@7
    move-result v3

    #@8
    .line 1392
    const-string/jumbo v7, "changing wallpaper"

    #@b
    const/4 v5, 0x0

    #@c
    const/4 v6, 0x1

    #@d
    const/4 v8, 0x0

    #@e
    move/from16 v4, p8

    #@10
    .line 1391
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@13
    move-result p8

    #@14
    .line 1393
    const-string/jumbo v2, "android.permission.SET_WALLPAPER"

    #@17
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    #@1a
    .line 1395
    and-int/lit8 v2, p6, 0x3

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 1396
    const-string/jumbo v9, "Must specify a valid wallpaper category to set"

    #@21
    .line 1397
    .local v9, "msg":Ljava/lang/String;
    const-string/jumbo v2, "WallpaperManagerService"

    #@24
    const-string/jumbo v3, "Must specify a valid wallpaper category to set"

    #@27
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 1398
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2c
    const-string/jumbo v3, "Must specify a valid wallpaper category to set"

    #@2f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v2

    #@33
    .line 1401
    .end local v9    # "msg":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p2

    #@35
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_4

    #@3b
    move-object/from16 v0, p2

    #@3d
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_4

    #@43
    .line 1406
    if-nez p3, :cond_5

    #@45
    .line 1407
    new-instance p3, Landroid/graphics/Rect;

    #@47
    .end local p3    # "cropHint":Landroid/graphics/Rect;
    const/4 v2, 0x0

    #@48
    const/4 v3, 0x0

    #@49
    const/4 v4, 0x0

    #@4a
    const/4 v5, 0x0

    #@4b
    move-object/from16 v0, p3

    #@4d
    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    #@50
    .line 1416
    .restart local p3    # "cropHint":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@52
    monitor-enter v3

    #@53
    .line 1424
    const/4 v2, 0x1

    #@54
    move/from16 v0, p6

    #@56
    if-ne v0, v2, :cond_2

    #@58
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@5a
    move/from16 v0, p8

    #@5c
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5f
    move-result-object v2

    #@60
    if-nez v2, :cond_2

    #@62
    .line 1428
    move/from16 v0, p8

    #@64
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(I)V

    #@67
    .line 1431
    :cond_2
    move/from16 v0, p8

    #@69
    move/from16 v1, p6

    #@6b
    invoke-direct {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@6e
    move-result-object v13

    #@6f
    .line 1432
    .local v13, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@72
    move-result-wide v10

    #@73
    .line 1434
    .local v10, "ident":J
    :try_start_1
    move-object/from16 v0, p5

    #@75
    invoke-virtual {p0, p1, v13, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    #@78
    move-result-object v12

    #@79
    .line 1435
    .local v12, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v12, :cond_3

    #@7b
    .line 1436
    const/4 v2, 0x1

    #@7c
    iput-boolean v2, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    #@7e
    .line 1437
    move/from16 v0, p6

    #@80
    iput v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    #@82
    .line 1438
    move-object/from16 v0, p7

    #@84
    iput-object v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    #@86
    .line 1439
    iget-object v2, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    #@88
    move-object/from16 v0, p3

    #@8a
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@8d
    .line 1440
    move/from16 v0, p4

    #@8f
    iput-boolean v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@91
    .line 1444
    :cond_3
    :try_start_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@94
    monitor-exit v3

    #@95
    .line 1442
    return-object v12

    #@96
    .line 1402
    .end local v10    # "ident":J
    .end local v12    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v13    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_4
    const/4 v2, 0x0

    #@97
    return-object v2

    #@98
    .line 1409
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->isEmpty()Z

    #@9b
    move-result v2

    #@9c
    if-nez v2, :cond_6

    #@9e
    .line 1410
    move-object/from16 v0, p3

    #@a0
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@a2
    if-gez v2, :cond_7

    #@a4
    .line 1412
    :cond_6
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a6
    new-instance v3, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v4, "Invalid crop rect supplied: "

    #@ae
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v3

    #@b2
    move-object/from16 v0, p3

    #@b4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v3

    #@b8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v3

    #@bc
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@bf
    throw v2

    #@c0
    .line 1411
    :cond_7
    move-object/from16 v0, p3

    #@c2
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@c4
    if-gez v2, :cond_1

    #@c6
    goto :goto_0

    #@c7
    .line 1443
    .restart local v10    # "ident":J
    .restart local v13    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    #@c8
    .line 1444
    :try_start_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@cb
    .line 1443
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@cc
    .line 1416
    .end local v10    # "ident":J
    .end local v13    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_1
    move-exception v2

    #@cd
    monitor-exit v3

    #@ce
    throw v2
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1526
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    #@7
    .line 1525
    return-void
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1518
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1519
    invoke-direct {p0, p1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    #@f
    .line 1516
    :cond_0
    return-void
.end method

.method public settingsRestored()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 2104
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    const/16 v2, 0x3e8

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 2105
    new-instance v1, Ljava/lang/RuntimeException;

    #@b
    const-string/jumbo v2, "settingsRestored() can only be called from the system process"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 2110
    :cond_0
    const/4 v5, 0x0

    #@13
    .line 2111
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v7, 0x0

    #@14
    .line 2112
    .local v7, "success":Z
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v8

    #@17
    .line 2113
    const/4 v1, 0x0

    #@18
    const/4 v2, 0x0

    #@19
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    #@1c
    .line 2114
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    move-object v0, v1

    #@24
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@26
    move-object v5, v0

    #@27
    .line 2115
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    #@2a
    move-result v1

    #@2b
    iput v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    #@2d
    .line 2116
    const/4 v1, 0x1

    #@2e
    iput-boolean v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    #@30
    .line 2117
    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@32
    if-eqz v1, :cond_1

    #@34
    .line 2118
    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@36
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    #@38
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_4

    #@3e
    .line 2130
    :cond_1
    const-string/jumbo v1, ""

    #@41
    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_6

    #@49
    .line 2132
    const/4 v7, 0x1

    #@4a
    .line 2139
    .end local v7    # "success":Z
    :goto_0
    if-eqz v7, :cond_2

    #@4c
    .line 2140
    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@4f
    .line 2141
    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@51
    const/4 v3, 0x1

    #@52
    const/4 v4, 0x0

    #@53
    .line 2142
    const/4 v6, 0x0

    #@54
    move-object v1, p0

    #@55
    .line 2141
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@58
    :cond_2
    :goto_1
    monitor-exit v8

    #@59
    .line 2147
    if-nez v7, :cond_3

    #@5b
    .line 2148
    const-string/jumbo v1, "WallpaperManagerService"

    #@5e
    new-instance v2, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v3, "Failed to restore wallpaper: \'"

    #@66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    iget-object v3, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@6c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    const-string/jumbo v3, "\'"

    #@73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 2149
    const-string/jumbo v1, ""

    #@81
    iput-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@83
    .line 2150
    invoke-static {v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@8a
    .line 2153
    :cond_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@8c
    monitor-enter v1

    #@8d
    .line 2154
    const/4 v2, 0x0

    #@8e
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@91
    monitor-exit v1

    #@92
    .line 2102
    return-void

    #@93
    .line 2119
    .restart local v7    # "success":Z
    :cond_4
    :try_start_2
    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@95
    const/4 v3, 0x0

    #@96
    const/4 v4, 0x0

    #@97
    .line 2120
    const/4 v6, 0x0

    #@98
    move-object v1, p0

    #@99
    .line 2119
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    #@9c
    move-result v1

    #@9d
    if-nez v1, :cond_5

    #@9f
    .line 2124
    const/4 v2, 0x0

    #@a0
    const/4 v3, 0x0

    #@a1
    const/4 v4, 0x0

    #@a2
    const/4 v6, 0x0

    #@a3
    move-object v1, p0

    #@a4
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    #@a7
    .line 2126
    :cond_5
    const/4 v7, 0x1

    #@a8
    .line 2118
    goto :goto_1

    #@a9
    .line 2135
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ac
    move-result v7

    #@ad
    .local v7, "success":Z
    goto :goto_0

    #@ae
    .line 2112
    .end local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v7    # "success":Z
    :catchall_0
    move-exception v1

    #@af
    monitor-exit v8

    #@b0
    throw v1

    #@b1
    .line 2153
    .restart local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_1
    move-exception v2

    #@b2
    monitor-exit v1

    #@b3
    throw v2
.end method

.method stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 2
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 968
    if-eqz p1, :cond_0

    #@3
    .line 969
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 970
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@9
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    #@c
    .line 971
    iput-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@e
    .line 967
    :cond_0
    return-void
.end method

.method stopObserversLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@8
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@b
    .line 978
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@13
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@16
    .line 979
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@1b
    .line 980
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@20
    .line 976
    return-void
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    #@0
    .prologue
    .line 1028
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1029
    :try_start_0
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@5
    .line 1030
    const/4 v1, 0x1

    #@6
    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@9
    move-result-object v0

    #@a
    .line 1032
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@c
    if-nez v1, :cond_0

    #@e
    .line 1033
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@10
    invoke-direct {v1, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@13
    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@15
    .line 1034
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@17
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    #@1a
    .line 1036
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v2

    #@1e
    .line 1027
    return-void

    #@1f
    .line 1028
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    #@20
    monitor-exit v2

    #@21
    throw v1
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .locals 11
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    #@0
    .prologue
    .line 1041
    iget-object v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v10

    #@3
    .line 1042
    const/4 v0, 0x0

    #@4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    #@6
    .line 1043
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 1044
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@c
    .line 1045
    .local v1, "cname":Landroid/content/ComponentName;
    :goto_0
    const/4 v2, 0x1

    #@d
    const/4 v3, 0x0

    #@e
    move-object v0, p0

    #@f
    move-object v4, p1

    #@10
    move-object v5, p2

    #@11
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_0

    #@17
    .line 1048
    const/4 v9, 0x0

    #@18
    .line 1050
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@1a
    .line 1051
    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@1c
    const/high16 v3, 0x40000

    #@1e
    .line 1050
    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    move-result-object v9

    #@22
    .line 1055
    .end local v9    # "si":Landroid/content/pm/ServiceInfo;
    :goto_1
    if-nez v9, :cond_2

    #@24
    .line 1056
    :try_start_2
    const-string/jumbo v0, "WallpaperManagerService"

    #@27
    const-string/jumbo v2, "Failure starting previous wallpaper; clearing"

    #@2a
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 1057
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@2f
    const/4 v2, 0x0

    #@30
    const/4 v3, 0x1

    #@31
    invoke-virtual {p0, v2, v3, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    :cond_0
    :goto_2
    monitor-exit v10

    #@35
    .line 1040
    return-void

    #@36
    .line 1044
    .end local v1    # "cname":Landroid/content/ComponentName;
    :cond_1
    :try_start_3
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@38
    .restart local v1    # "cname":Landroid/content/ComponentName;
    goto :goto_0

    #@39
    .line 1059
    :cond_2
    const-string/jumbo v0, "WallpaperManagerService"

    #@3c
    const-string/jumbo v2, "Wallpaper isn\'t direct boot aware; using fallback until unlocked"

    #@3f
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 1063
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@44
    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@46
    .line 1064
    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@48
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@4a
    .line 1065
    const-string/jumbo v2, "wallpaper_lock_orig"

    #@4d
    const-string/jumbo v3, "wallpaper_lock"

    #@50
    .line 1064
    invoke-direct {v6, v0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@53
    .line 1066
    .local v6, "fallback":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@56
    .line 1067
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    #@58
    const/4 v4, 0x1

    #@59
    const/4 v5, 0x0

    #@5a
    move-object v2, p0

    #@5b
    move-object v7, p2

    #@5c
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    #@5f
    .line 1068
    const/4 v0, 0x1

    #@60
    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@62
    goto :goto_2

    #@63
    .line 1041
    .end local v1    # "cname":Landroid/content/ComponentName;
    .end local v6    # "fallback":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v0

    #@64
    monitor-exit v10

    #@65
    throw v0

    #@66
    .line 1052
    .restart local v1    # "cname":Landroid/content/ComponentName;
    .restart local v9    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v8

    #@67
    .local v8, "ignored":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method systemReady()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 897
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@9
    .line 900
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    #@b
    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@d
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 902
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    #@16
    move-result v3

    #@17
    if-nez v3, :cond_0

    #@19
    .line 906
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@1c
    .line 909
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    #@1f
    move-result v3

    #@20
    if-nez v3, :cond_1

    #@22
    .line 913
    const/4 v3, 0x1

    #@23
    const/4 v4, 0x0

    #@24
    invoke-virtual {p0, v5, v3, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    #@27
    .line 921
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    #@29
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@2c
    .line 922
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    #@2f
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@32
    .line 923
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@34
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    #@36
    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    #@39
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@3c
    .line 935
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3f
    move-result-object v3

    #@40
    .line 936
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    #@42
    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    #@45
    .line 950
    const-string/jumbo v5, "WallpaperManagerService"

    #@48
    .line 935
    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 895
    :goto_0
    return-void

    #@4c
    .line 951
    :catch_0
    move-exception v0

    #@4d
    .line 952
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@50
    goto :goto_0
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1483
    if-nez p1, :cond_0

    #@3
    const-string/jumbo p1, ""

    #@6
    .line 1485
    :cond_0
    :try_start_0
    iget v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@8
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    #@b
    move-result-object v0

    #@c
    .line 1486
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_1

    #@12
    .line 1487
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@15
    .line 1489
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 1490
    const/16 v4, 0x1f9

    #@1b
    .line 1491
    const/4 v5, -0x1

    #@1c
    const/4 v6, -0x1

    #@1d
    .line 1488
    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@20
    .line 1493
    :cond_1
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    #@22
    .line 1494
    const/high16 v4, 0x3c000000    # 0.0078125f

    #@24
    .line 1493
    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@27
    move-result-object v2

    #@28
    .line 1495
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    #@2a
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    #@2d
    move-result v3

    #@2e
    if-nez v3, :cond_2

    #@30
    .line 1496
    return-object v7

    #@31
    .line 1498
    :cond_2
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@33
    .line 1499
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    #@36
    move-result v3

    #@37
    iput v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    #@39
    .line 1500
    if-eqz p3, :cond_3

    #@3b
    .line 1501
    const-string/jumbo v3, "android.service.wallpaper.extra.ID"

    #@3e
    iget v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    #@40
    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 1507
    :cond_3
    return-object v2

    #@44
    .line 1508
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    #@45
    .line 1509
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v3, "WallpaperManagerService"

    #@48
    const-string/jumbo v4, "Error setting wallpaper"

    #@4b
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4e
    .line 1511
    return-object v7
.end method
