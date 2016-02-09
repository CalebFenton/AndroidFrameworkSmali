.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final MAX_WALLPAPER_COMPONENT_LOG_LENGTH:I = 0x80

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"


# instance fields
.field final mAppOpsManager:Landroid/app/AppOpsManager;

.field final mContext:Landroid/content/Context;

.field mCurrentUserId:I

.field final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mImageWallpaper:Landroid/content/ComponentName;

.field mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mLock:Ljava/lang/Object;

.field final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field mWallpaperMap:Landroid/util/SparseArray;
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
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 476
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    #@4
    .line 99
    new-array v0, v4, [Ljava/lang/Object;

    #@6
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@8
    .line 178
    new-instance v0, Landroid/util/SparseArray;

    #@a
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@f
    .line 478
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@11
    .line 480
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@14
    move-result-object v0

    #@15
    const v1, 0x1040023

    #@18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 479
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    #@22
    .line 482
    const-string/jumbo v0, "window"

    #@25
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@28
    move-result-object v0

    #@29
    .line 481
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@2f
    .line 483
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@35
    .line 484
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@37
    const-string/jumbo v1, "appops"

    #@3a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Landroid/app/AppOpsManager;

    #@40
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    #@42
    .line 485
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    #@44
    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    #@47
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    #@49
    .line 486
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    #@4b
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@4d
    const/4 v2, 0x0

    #@4e
    const/4 v3, 0x1

    #@4f
    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@52
    .line 487
    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@59
    .line 488
    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    #@5c
    .line 476
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1130
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
    .line 1131
    const-string/jumbo v2, ", must have permission "

    #@21
    .line 1130
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
    .line 1128
    :cond_0
    return-void
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
    .line 1212
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 1213
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 1214
    return p3

    #@8
    .line 1216
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
    .line 701
    new-instance v1, Landroid/graphics/Point;

    #@2
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@5
    .line 702
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
    .line 703
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@13
    move-result-object v0

    #@14
    .line 704
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@17
    .line 705
    return-object v1
.end method

.method private getMaximumSizeDimension()I
    .locals 4

    #@0
    .prologue
    .line 1330
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
    .line 1331
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@e
    move-result-object v0

    #@f
    .line 1332
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
    .line 492
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1227
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@8
    .line 1228
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_0

    #@a
    .line 1229
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    #@d
    .line 1230
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@15
    .line 1232
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    return-object v0
.end method

.method private loadSettingsLocked(I)V
    .locals 25
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1238
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    #@3
    move-result-object v12

    #@4
    .line 1239
    .local v12, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v14, 0x0

    #@5
    .line 1240
    .local v14, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v12}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    #@8
    move-result-object v11

    #@9
    .line 1241
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    #@c
    move-result v20

    #@d
    if-nez v20, :cond_0

    #@f
    .line 1243
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateFromOld()V

    #@12
    .line 1245
    :cond_0
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@16
    move-object/from16 v20, v0

    #@18
    move-object/from16 v0, v20

    #@1a
    move/from16 v1, p1

    #@1c
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v19

    #@20
    check-cast v19, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@22
    .line 1246
    .local v19, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v19, :cond_1

    #@24
    .line 1247
    new-instance v19, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@26
    .end local v19    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, v19

    #@28
    move/from16 v1, p1

    #@2a
    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(I)V

    #@2d
    .line 1248
    .restart local v19    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p0

    #@2f
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@31
    move-object/from16 v20, v0

    #@33
    move-object/from16 v0, v20

    #@35
    move/from16 v1, p1

    #@37
    move-object/from16 v2, v19

    #@39
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3c
    .line 1250
    :cond_1
    const/16 v16, 0x0

    #@3e
    .line 1252
    .local v16, "success":Z
    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    #@40
    invoke-direct {v15, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 1253
    .local v15, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@46
    .end local v14    # "stream":Ljava/io/FileInputStream;
    move-result-object v13

    #@47
    .line 1254
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v20, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@49
    invoke-virtual/range {v20 .. v20}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@4c
    move-result-object v20

    #@4d
    move-object/from16 v0, v20

    #@4f
    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@52
    .line 1258
    :cond_2
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@55
    move-result v18

    #@56
    .line 1259
    .local v18, "type":I
    const/16 v20, 0x2

    #@58
    move/from16 v0, v18

    #@5a
    move/from16 v1, v20

    #@5c
    if-ne v0, v1, :cond_4

    #@5e
    .line 1260
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@61
    move-result-object v17

    #@62
    .line 1261
    .local v17, "tag":Ljava/lang/String;
    const-string/jumbo v20, "wp"

    #@65
    move-object/from16 v0, v20

    #@67
    move-object/from16 v1, v17

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v20

    #@6d
    if-eqz v20, :cond_4

    #@6f
    .line 1262
    const-string/jumbo v20, "width"

    #@72
    const/16 v21, 0x0

    #@74
    move-object/from16 v0, v21

    #@76
    move-object/from16 v1, v20

    #@78
    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7b
    move-result-object v20

    #@7c
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7f
    move-result v20

    #@80
    move/from16 v0, v20

    #@82
    move-object/from16 v1, v19

    #@84
    iput v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@86
    .line 1264
    const-string/jumbo v20, "height"

    #@89
    const/16 v21, 0x0

    #@8b
    .line 1263
    move-object/from16 v0, v21

    #@8d
    move-object/from16 v1, v20

    #@8f
    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@92
    move-result-object v20

    #@93
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@96
    move-result v20

    #@97
    move/from16 v0, v20

    #@99
    move-object/from16 v1, v19

    #@9b
    iput v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@9d
    .line 1265
    move-object/from16 v0, v19

    #@9f
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@a1
    move-object/from16 v20, v0

    #@a3
    const-string/jumbo v21, "paddingLeft"

    #@a6
    const/16 v22, 0x0

    #@a8
    move-object/from16 v0, p0

    #@aa
    move-object/from16 v1, v21

    #@ac
    move/from16 v2, v22

    #@ae
    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@b1
    move-result v21

    #@b2
    move/from16 v0, v21

    #@b4
    move-object/from16 v1, v20

    #@b6
    iput v0, v1, Landroid/graphics/Rect;->left:I

    #@b8
    .line 1266
    move-object/from16 v0, v19

    #@ba
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@bc
    move-object/from16 v20, v0

    #@be
    const-string/jumbo v21, "paddingTop"

    #@c1
    const/16 v22, 0x0

    #@c3
    move-object/from16 v0, p0

    #@c5
    move-object/from16 v1, v21

    #@c7
    move/from16 v2, v22

    #@c9
    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@cc
    move-result v21

    #@cd
    move/from16 v0, v21

    #@cf
    move-object/from16 v1, v20

    #@d1
    iput v0, v1, Landroid/graphics/Rect;->top:I

    #@d3
    .line 1267
    move-object/from16 v0, v19

    #@d5
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@d7
    move-object/from16 v20, v0

    #@d9
    const-string/jumbo v21, "paddingRight"

    #@dc
    const/16 v22, 0x0

    #@de
    move-object/from16 v0, p0

    #@e0
    move-object/from16 v1, v21

    #@e2
    move/from16 v2, v22

    #@e4
    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@e7
    move-result v21

    #@e8
    move/from16 v0, v21

    #@ea
    move-object/from16 v1, v20

    #@ec
    iput v0, v1, Landroid/graphics/Rect;->right:I

    #@ee
    .line 1268
    move-object/from16 v0, v19

    #@f0
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@f2
    move-object/from16 v20, v0

    #@f4
    const-string/jumbo v21, "paddingBottom"

    #@f7
    const/16 v22, 0x0

    #@f9
    move-object/from16 v0, p0

    #@fb
    move-object/from16 v1, v21

    #@fd
    move/from16 v2, v22

    #@ff
    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@102
    move-result v21

    #@103
    move/from16 v0, v21

    #@105
    move-object/from16 v1, v20

    #@107
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    #@109
    .line 1269
    const-string/jumbo v20, "name"

    #@10c
    const/16 v21, 0x0

    #@10e
    move-object/from16 v0, v21

    #@110
    move-object/from16 v1, v20

    #@112
    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@115
    move-result-object v20

    #@116
    move-object/from16 v0, v20

    #@118
    move-object/from16 v1, v19

    #@11a
    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@11c
    .line 1270
    const-string/jumbo v20, "component"

    #@11f
    const/16 v21, 0x0

    #@121
    move-object/from16 v0, v21

    #@123
    move-object/from16 v1, v20

    #@125
    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@128
    move-result-object v4

    #@129
    .line 1271
    .local v4, "comp":Ljava/lang/String;
    if-eqz v4, :cond_9

    #@12b
    .line 1272
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@12e
    move-result-object v20

    #@12f
    .line 1271
    :goto_0
    move-object/from16 v0, v20

    #@131
    move-object/from16 v1, v19

    #@133
    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@135
    .line 1274
    move-object/from16 v0, v19

    #@137
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@139
    move-object/from16 v20, v0

    #@13b
    if-eqz v20, :cond_3

    #@13d
    .line 1275
    const-string/jumbo v20, "android"

    #@140
    move-object/from16 v0, v19

    #@142
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@144
    move-object/from16 v21, v0

    #@146
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@149
    move-result-object v21

    #@14a
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14d
    move-result v20

    #@14e
    .line 1274
    if-eqz v20, :cond_4

    #@150
    .line 1277
    :cond_3
    move-object/from16 v0, p0

    #@152
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    #@154
    move-object/from16 v20, v0

    #@156
    move-object/from16 v0, v20

    #@158
    move-object/from16 v1, v19

    #@15a
    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_c

    #@15c
    .line 1289
    .end local v4    # "comp":Ljava/lang/String;
    .end local v17    # "tag":Ljava/lang/String;
    :cond_4
    const/16 v20, 0x1

    #@15e
    move/from16 v0, v18

    #@160
    move/from16 v1, v20

    #@162
    if-ne v0, v1, :cond_2

    #@164
    .line 1290
    const/16 v16, 0x1

    #@166
    move-object v14, v15

    #@167
    .line 1305
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .end local v18    # "type":I
    :goto_1
    if-eqz v14, :cond_5

    #@169
    .line 1306
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    #@16c
    .line 1312
    :cond_5
    :goto_2
    if-nez v16, :cond_6

    #@16e
    .line 1313
    const/16 v20, -0x1

    #@170
    move/from16 v0, v20

    #@172
    move-object/from16 v1, v19

    #@174
    iput v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@176
    .line 1314
    const/16 v20, -0x1

    #@178
    move/from16 v0, v20

    #@17a
    move-object/from16 v1, v19

    #@17c
    iput v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@17e
    .line 1315
    move-object/from16 v0, v19

    #@180
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@182
    move-object/from16 v20, v0

    #@184
    const/16 v21, 0x0

    #@186
    const/16 v22, 0x0

    #@188
    const/16 v23, 0x0

    #@18a
    const/16 v24, 0x0

    #@18c
    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Rect;->set(IIII)V

    #@18f
    .line 1316
    const-string/jumbo v20, ""

    #@192
    move-object/from16 v0, v20

    #@194
    move-object/from16 v1, v19

    #@196
    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@198
    .line 1320
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension()I

    #@19b
    move-result v3

    #@19c
    .line 1321
    .local v3, "baseSize":I
    move-object/from16 v0, v19

    #@19e
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@1a0
    move/from16 v20, v0

    #@1a2
    move/from16 v0, v20

    #@1a4
    if-ge v0, v3, :cond_7

    #@1a6
    .line 1322
    move-object/from16 v0, v19

    #@1a8
    iput v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@1aa
    .line 1324
    :cond_7
    move-object/from16 v0, v19

    #@1ac
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@1ae
    move/from16 v20, v0

    #@1b0
    move/from16 v0, v20

    #@1b2
    if-ge v0, v3, :cond_8

    #@1b4
    .line 1325
    move-object/from16 v0, v19

    #@1b6
    iput v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@1b8
    .line 1235
    :cond_8
    return-void

    #@1b9
    .line 1273
    .end local v3    # "baseSize":I
    .restart local v4    # "comp":Ljava/lang/String;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_9
    const/16 v20, 0x0

    #@1bb
    goto/16 :goto_0

    #@1bd
    .line 1301
    .end local v4    # "comp":Ljava/lang/String;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    #@1be
    .line 1302
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_3
    const-string/jumbo v20, "WallpaperManagerService"

    #@1c1
    new-instance v21, Ljava/lang/StringBuilder;

    #@1c3
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1c6
    const-string/jumbo v22, "failed parsing "

    #@1c9
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v21

    #@1cd
    move-object/from16 v0, v21

    #@1cf
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v21

    #@1d3
    const-string/jumbo v22, " "

    #@1d6
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d9
    move-result-object v21

    #@1da
    move-object/from16 v0, v21

    #@1dc
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v21

    #@1e0
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e3
    move-result-object v21

    #@1e4
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e7
    goto :goto_1

    #@1e8
    .line 1299
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    #@1e9
    .line 1300
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/io/IOException;
    :goto_4
    const-string/jumbo v20, "WallpaperManagerService"

    #@1ec
    new-instance v21, Ljava/lang/StringBuilder;

    #@1ee
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1f1
    const-string/jumbo v22, "failed parsing "

    #@1f4
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v21

    #@1f8
    move-object/from16 v0, v21

    #@1fa
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v21

    #@1fe
    const-string/jumbo v22, " "

    #@201
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v21

    #@205
    move-object/from16 v0, v21

    #@207
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v21

    #@20b
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20e
    move-result-object v21

    #@20f
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@212
    goto/16 :goto_1

    #@214
    .line 1297
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v10

    #@215
    .line 1298
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    const-string/jumbo v20, "WallpaperManagerService"

    #@218
    new-instance v21, Ljava/lang/StringBuilder;

    #@21a
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@21d
    const-string/jumbo v22, "failed parsing "

    #@220
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@223
    move-result-object v21

    #@224
    move-object/from16 v0, v21

    #@226
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@229
    move-result-object v21

    #@22a
    const-string/jumbo v22, " "

    #@22d
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@230
    move-result-object v21

    #@231
    move-object/from16 v0, v21

    #@233
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@236
    move-result-object v21

    #@237
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23a
    move-result-object v21

    #@23b
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@23e
    goto/16 :goto_1

    #@240
    .line 1295
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v9

    #@241
    .line 1296
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v9, "e":Ljava/lang/NumberFormatException;
    :goto_6
    const-string/jumbo v20, "WallpaperManagerService"

    #@244
    new-instance v21, Ljava/lang/StringBuilder;

    #@246
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@249
    const-string/jumbo v22, "failed parsing "

    #@24c
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v21

    #@250
    move-object/from16 v0, v21

    #@252
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v21

    #@256
    const-string/jumbo v22, " "

    #@259
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25c
    move-result-object v21

    #@25d
    move-object/from16 v0, v21

    #@25f
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@262
    move-result-object v21

    #@263
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@266
    move-result-object v21

    #@267
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26a
    goto/16 :goto_1

    #@26c
    .line 1293
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v8

    #@26d
    .line 1294
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v8, "e":Ljava/lang/NullPointerException;
    :goto_7
    const-string/jumbo v20, "WallpaperManagerService"

    #@270
    new-instance v21, Ljava/lang/StringBuilder;

    #@272
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@275
    const-string/jumbo v22, "failed parsing "

    #@278
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27b
    move-result-object v21

    #@27c
    move-object/from16 v0, v21

    #@27e
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@281
    move-result-object v21

    #@282
    const-string/jumbo v22, " "

    #@285
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@288
    move-result-object v21

    #@289
    move-object/from16 v0, v21

    #@28b
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28e
    move-result-object v21

    #@28f
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@292
    move-result-object v21

    #@293
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@296
    goto/16 :goto_1

    #@298
    .line 1291
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v5

    #@299
    .line 1292
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_8
    const-string/jumbo v20, "WallpaperManagerService"

    #@29c
    const-string/jumbo v21, "no current wallpaper -- first boot?"

    #@29f
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2a2
    goto/16 :goto_1

    #@2a4
    .line 1308
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v6

    #@2a5
    .restart local v6    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    #@2a7
    .line 1291
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v5

    #@2a8
    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    move-object v14, v15

    #@2a9
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v14, "stream":Ljava/io/FileInputStream;
    goto :goto_8

    #@2aa
    .line 1293
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v8

    #@2ab
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    move-object v14, v15

    #@2ac
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    #@2ad
    .line 1295
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v9

    #@2ae
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    move-object v14, v15

    #@2af
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    goto :goto_6

    #@2b0
    .line 1297
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v10

    #@2b1
    .restart local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v14, v15

    #@2b2
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_5

    #@2b4
    .line 1299
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v6

    #@2b5
    .restart local v6    # "e":Ljava/io/IOException;
    move-object v14, v15

    #@2b6
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_4

    #@2b8
    .line 1301
    .end local v6    # "e":Ljava/io/IOException;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v7

    #@2b9
    .restart local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v14, v15

    #@2ba
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 1145
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
    .line 1146
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
    .line 1199
    new-instance v3, Ljava/io/File;

    #@3
    const-string/jumbo v4, "/data/data/com.android.settings/files/wallpaper"

    #@6
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    .line 1200
    .local v3, "oldWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    #@b
    const-string/jumbo v4, "/data/system/wallpaper_info.xml"

    #@e
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@11
    .line 1201
    .local v2, "oldInfo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 1202
    new-instance v1, Ljava/io/File;

    #@19
    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    #@1c
    move-result-object v4

    #@1d
    const-string/jumbo v5, "wallpaper"

    #@20
    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@23
    .line 1203
    .local v1, "newWallpaper":Ljava/io/File;
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@26
    .line 1205
    .end local v1    # "newWallpaper":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_1

    #@2c
    .line 1206
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
    .line 1207
    .local v0, "newInfo":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@3b
    .line 1198
    .end local v0    # "newInfo":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 7
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    .line 1113
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@7
    move-result v3

    #@8
    .line 1114
    .local v3, "n":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@b
    .line 1116
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
    .line 1114
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1123
    :cond_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@22
    .line 1124
    new-instance v2, Landroid/content/Intent;

    #@24
    const-string/jumbo v4, "android.intent.action.WALLPAPER_CHANGED"

    #@27
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2a
    .line 1125
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
    .line 1112
    return-void

    #@37
    .line 1117
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    #@38
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 9
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    .line 1150
    iget v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@2
    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    #@5
    move-result-object v2

    #@6
    .line 1151
    .local v2, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v4, 0x0

    #@7
    .line 1153
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    #@9
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    #@c
    move-result-object v6

    #@d
    const/4 v7, 0x0

    #@e
    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    #@11
    .line 1154
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    #@13
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@16
    .line 1155
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@18
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@1b
    move-result-object v6

    #@1c
    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@1f
    .line 1156
    const/4 v6, 0x1

    #@20
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@23
    move-result-object v6

    #@24
    const/4 v7, 0x0

    #@25
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@28
    .line 1158
    const-string/jumbo v6, "wp"

    #@2b
    const/4 v7, 0x0

    #@2c
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2f
    .line 1159
    const-string/jumbo v6, "width"

    #@32
    iget v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@34
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@37
    move-result-object v7

    #@38
    const/4 v8, 0x0

    #@39
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3c
    .line 1160
    const-string/jumbo v6, "height"

    #@3f
    iget v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@41
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@44
    move-result-object v7

    #@45
    const/4 v8, 0x0

    #@46
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@49
    .line 1161
    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@4b
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@4d
    if-eqz v6, :cond_0

    #@4f
    .line 1162
    const-string/jumbo v6, "paddingLeft"

    #@52
    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@54
    iget v7, v7, Landroid/graphics/Rect;->left:I

    #@56
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    const/4 v8, 0x0

    #@5b
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5e
    .line 1164
    :cond_0
    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@60
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@62
    if-eqz v6, :cond_1

    #@64
    .line 1165
    const-string/jumbo v6, "paddingTop"

    #@67
    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@69
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@6b
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6e
    move-result-object v7

    #@6f
    const/4 v8, 0x0

    #@70
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@73
    .line 1167
    :cond_1
    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@75
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@77
    if-eqz v6, :cond_2

    #@79
    .line 1168
    const-string/jumbo v6, "paddingRight"

    #@7c
    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@7e
    iget v7, v7, Landroid/graphics/Rect;->right:I

    #@80
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@83
    move-result-object v7

    #@84
    const/4 v8, 0x0

    #@85
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@88
    .line 1170
    :cond_2
    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@8a
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@8c
    if-eqz v6, :cond_3

    #@8e
    .line 1171
    const-string/jumbo v6, "paddingBottom"

    #@91
    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@93
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    #@95
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@98
    move-result-object v7

    #@99
    const/4 v8, 0x0

    #@9a
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9d
    .line 1173
    :cond_3
    const-string/jumbo v6, "name"

    #@a0
    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@a2
    const/4 v8, 0x0

    #@a3
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a6
    .line 1174
    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@a8
    if-eqz v6, :cond_4

    #@aa
    .line 1175
    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@ac
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    #@ae
    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@b1
    move-result v6

    #@b2
    if-eqz v6, :cond_5

    #@b4
    .line 1179
    :cond_4
    :goto_0
    const-string/jumbo v6, "wp"

    #@b7
    const/4 v7, 0x0

    #@b8
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@bb
    .line 1181
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@be
    .line 1182
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    #@c1
    .line 1183
    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@c4
    .line 1184
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    #@c7
    .line 1185
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->commit()V

    #@ca
    move-object v4, v5

    #@cb
    .line 1149
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    #@cc
    .line 1176
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :cond_5
    const-string/jumbo v6, "component"

    #@cf
    .line 1177
    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@d1
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@d4
    move-result-object v7

    #@d5
    .line 1176
    const/4 v8, 0x0

    #@d6
    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@d9
    goto :goto_0

    #@da
    .line 1186
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    #@db
    .local v0, "e":Ljava/io/IOException;
    move-object v4, v5

    #@dc
    .line 1188
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v4, :cond_6

    #@de
    .line 1189
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@e1
    .line 1194
    :cond_6
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->rollback()V

    #@e4
    goto :goto_1

    #@e5
    .line 1191
    :catch_1
    move-exception v1

    #@e6
    .local v1, "ex":Ljava/io/IOException;
    goto :goto_3

    #@e7
    .line 1186
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    #@e8
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2
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
    .line 1101
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    #@4
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    #@6
    .line 1103
    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@8
    iget v6, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@a
    iget-object v7, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@c
    .line 1102
    const/16 v3, 0x7dd

    #@e
    const/4 v4, 0x0

    #@f
    move-object v1, p1

    #@10
    .line 1101
    invoke-interface/range {v0 .. v7}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1099
    :cond_0
    :goto_0
    return-void

    #@14
    .line 1104
    :catch_0
    move-exception v8

    #@15
    .line 1105
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WallpaperManagerService"

    #@18
    const-string/jumbo v1, "Failed attaching wallpaper; clearing"

    #@1b
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    .line 1106
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
    .line 1107
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
    .line 928
    if-nez p2, :cond_1

    #@2
    .line 929
    move-object/from16 v0, p4

    #@4
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 930
    move-object/from16 v0, p4

    #@a
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@c
    if-nez v3, :cond_0

    #@e
    .line 931
    if-nez p1, :cond_1

    #@10
    .line 934
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 936
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
    .line 939
    const/4 v3, 0x1

    #@1f
    return v3

    #@20
    .line 945
    :cond_1
    if-nez p1, :cond_2

    #@22
    .line 946
    :try_start_0
    move-object/from16 v0, p0

    #@24
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@26
    invoke-static {v3}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    #@29
    move-result-object p1

    #@2a
    .line 947
    if-nez p1, :cond_2

    #@2c
    .line 949
    move-object/from16 v0, p0

    #@2e
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    #@30
    move-object/from16 p1, v0

    #@32
    .line 955
    :cond_2
    move-object/from16 v0, p4

    #@34
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@36
    move/from16 v18, v0

    #@38
    .line 956
    .local v18, "serviceUserId":I
    move-object/from16 v0, p0

    #@3a
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@3c
    .line 957
    const/16 v4, 0x1080

    #@3e
    .line 956
    move-object/from16 v0, p1

    #@40
    move/from16 v1, v18

    #@42
    invoke-interface {v3, v0, v4, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    #@45
    move-result-object v19

    #@46
    .line 958
    .local v19, "si":Landroid/content/pm/ServiceInfo;
    if-nez v19, :cond_3

    #@48
    .line 960
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
    .line 961
    const/4 v3, 0x0

    #@6c
    return v3

    #@6d
    .line 963
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
    .line 964
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
    .line 967
    .local v14, "msg":Ljava/lang/String;
    if-eqz p3, :cond_4

    #@92
    .line 968
    new-instance v3, Ljava/lang/SecurityException;

    #@94
    invoke-direct {v3, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@97
    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@98
    .line 1055
    .end local v14    # "msg":Ljava/lang/String;
    .end local v18    # "serviceUserId":I
    .end local v19    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v9

    #@99
    .line 1056
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
    .line 1057
    .restart local v14    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_11

    #@bc
    .line 1058
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@be
    invoke-direct {v3, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c1
    throw v3

    #@c2
    .line 970
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v18    # "serviceUserId":I
    .restart local v19    # "si":Landroid/content/pm/ServiceInfo;
    :cond_4
    :try_start_1
    const-string/jumbo v3, "WallpaperManagerService"

    #@c5
    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c8
    .line 971
    const/4 v3, 0x0

    #@c9
    return v3

    #@ca
    .line 974
    .end local v14    # "msg":Ljava/lang/String;
    :cond_5
    const/16 v20, 0x0

    #@cc
    .line 976
    .local v20, "wi":Landroid/app/WallpaperInfo;
    new-instance v13, Landroid/content/Intent;

    #@ce
    const-string/jumbo v3, "android.service.wallpaper.WallpaperService"

    #@d1
    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d4
    .line 977
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
    .line 1018
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
    .line 1019
    .local v15, "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    move-object/from16 v0, p1

    #@ef
    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@f2
    .line 1020
    const-string/jumbo v3, "android.intent.extra.client_label"

    #@f5
    .line 1021
    const v4, 0x104042c

    #@f8
    .line 1020
    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@fb
    .line 1022
    const-string/jumbo v21, "android.intent.extra.client_intent"

    #@fe
    .line 1023
    move-object/from16 v0, p0

    #@100
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@102
    .line 1024
    new-instance v4, Landroid/content/Intent;

    #@104
    const-string/jumbo v5, "android.intent.action.SET_WALLPAPER"

    #@107
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10a
    .line 1025
    move-object/from16 v0, p0

    #@10c
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@10e
    const v6, 0x104042d

    #@111
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@114
    move-result-object v5

    #@115
    .line 1024
    invoke-static {v4, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@118
    move-result-object v5

    #@119
    .line 1026
    new-instance v8, Landroid/os/UserHandle;

    #@11b
    move/from16 v0, v18

    #@11d
    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@120
    .line 1023
    const/4 v4, 0x0

    #@121
    .line 1026
    const/4 v6, 0x0

    #@122
    const/4 v7, 0x0

    #@123
    .line 1022
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@126
    move-result-object v3

    #@127
    move-object/from16 v0, v21

    #@129
    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@12c
    .line 1027
    move-object/from16 v0, p0

    #@12e
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@130
    .line 1030
    new-instance v4, Landroid/os/UserHandle;

    #@132
    move/from16 v0, v18

    #@134
    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@137
    .line 1028
    const v5, 0x22000001

    #@13a
    .line 1027
    invoke-virtual {v3, v13, v15, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@13d
    move-result v3

    #@13e
    if-nez v3, :cond_e

    #@140
    .line 1031
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
    .line 1033
    .restart local v14    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_d

    #@158
    .line 1034
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@15a
    invoke-direct {v3, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15d
    throw v3

    #@15e
    .line 980
    .end local v14    # "msg":Ljava/lang/String;
    .end local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .restart local v20    # "wi":Landroid/app/WallpaperInfo;
    :cond_7
    move-object/from16 v0, p0

    #@160
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@162
    .line 981
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
    .line 982
    const/16 v5, 0x80

    #@170
    .line 980
    move/from16 v0, v18

    #@172
    invoke-interface {v3, v13, v4, v5, v0}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    #@175
    move-result-object v16

    #@176
    .line 983
    .local v16, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v12, 0x0

    #@177
    .local v12, "i":I
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@17a
    move-result v3

    #@17b
    if-ge v12, v3, :cond_8

    #@17d
    .line 984
    move-object/from16 v0, v16

    #@17f
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@182
    move-result-object v3

    #@183
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@185
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@187
    move-object/from16 v17, v0

    #@189
    .line 985
    .local v17, "rsi":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v17

    #@18b
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@18d
    move-object/from16 v0, v19

    #@18f
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@191
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@194
    move-result v3

    #@195
    if-eqz v3, :cond_b

    #@197
    .line 986
    move-object/from16 v0, v17

    #@199
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@19b
    move-object/from16 v0, v19

    #@19d
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@19f
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1a2
    move-result v3

    #@1a3
    .line 985
    if-eqz v3, :cond_b

    #@1a5
    .line 988
    :try_start_2
    new-instance v20, Landroid/app/WallpaperInfo;

    #@1a7
    .end local v20    # "wi":Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    #@1a9
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@1ab
    move-object/from16 v0, v16

    #@1ad
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b0
    move-result-object v3

    #@1b1
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@1b3
    move-object/from16 v0, v20

    #@1b5
    invoke-direct {v0, v4, v3}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1b8
    .line 1005
    .end local v17    # "rsi":Landroid/content/pm/ServiceInfo;
    :cond_8
    if-nez v20, :cond_6

    #@1ba
    .line 1006
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@1bc
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1bf
    const-string/jumbo v4, "Selected service is not a wallpaper: "

    #@1c2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v3

    #@1c6
    move-object/from16 v0, p1

    #@1c8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v3

    #@1cc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cf
    move-result-object v14

    #@1d0
    .line 1008
    .restart local v14    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_c

    #@1d2
    .line 1009
    new-instance v3, Ljava/lang/SecurityException;

    #@1d4
    invoke-direct {v3, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1d7
    throw v3

    #@1d8
    .line 995
    .end local v14    # "msg":Ljava/lang/String;
    .restart local v17    # "rsi":Landroid/content/pm/ServiceInfo;
    :catch_1
    move-exception v10

    #@1d9
    .line 996
    .local v10, "e":Ljava/io/IOException;
    if-eqz p3, :cond_9

    #@1db
    .line 997
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1dd
    invoke-direct {v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@1e0
    throw v3

    #@1e1
    .line 999
    :cond_9
    const-string/jumbo v3, "WallpaperManagerService"

    #@1e4
    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e7
    .line 1000
    const/4 v3, 0x0

    #@1e8
    return v3

    #@1e9
    .line 989
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    #@1ea
    .line 990
    .local v11, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz p3, :cond_a

    #@1ec
    .line 991
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1ee
    invoke-direct {v3, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@1f1
    throw v3

    #@1f2
    .line 993
    :cond_a
    const-string/jumbo v3, "WallpaperManagerService"

    #@1f5
    invoke-static {v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f8
    .line 994
    const/4 v3, 0x0

    #@1f9
    return v3

    #@1fa
    .line 983
    .end local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v20    # "wi":Landroid/app/WallpaperInfo;
    :cond_b
    add-int/lit8 v12, v12, 0x1

    #@1fc
    goto/16 :goto_0

    #@1fe
    .line 1011
    .end local v17    # "rsi":Landroid/content/pm/ServiceInfo;
    .end local v20    # "wi":Landroid/app/WallpaperInfo;
    .restart local v14    # "msg":Ljava/lang/String;
    :cond_c
    const-string/jumbo v3, "WallpaperManagerService"

    #@201
    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@204
    .line 1012
    const/4 v3, 0x0

    #@205
    return v3

    #@206
    .line 1036
    .end local v12    # "i":I
    .end local v16    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_d
    const-string/jumbo v3, "WallpaperManagerService"

    #@209
    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20c
    .line 1037
    const/4 v3, 0x0

    #@20d
    return v3

    #@20e
    .line 1039
    .end local v14    # "msg":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p4

    #@210
    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@212
    move-object/from16 v0, p0

    #@214
    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@216
    if-ne v3, v4, :cond_f

    #@218
    move-object/from16 v0, p0

    #@21a
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@21c
    if-eqz v3, :cond_f

    #@21e
    .line 1040
    move-object/from16 v0, p0

    #@220
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@222
    move-object/from16 v0, p0

    #@224
    invoke-virtual {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@227
    .line 1042
    :cond_f
    move-object/from16 v0, p1

    #@229
    move-object/from16 v1, p4

    #@22b
    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@22d
    .line 1043
    move-object/from16 v0, p4

    #@22f
    iput-object v15, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@231
    .line 1044
    move-object/from16 v0, p5

    #@233
    iput-object v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@235
    .line 1046
    :try_start_4
    move-object/from16 v0, p4

    #@237
    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@239
    move-object/from16 v0, p0

    #@23b
    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@23d
    if-ne v3, v4, :cond_10

    #@23f
    .line 1049
    move-object/from16 v0, p0

    #@241
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    #@243
    iget-object v4, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    #@245
    .line 1050
    const/16 v5, 0x7dd

    #@247
    .line 1049
    invoke-interface {v3, v4, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    #@24a
    .line 1051
    move-object/from16 v0, p4

    #@24c
    move-object/from16 v1, p0

    #@24e
    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    #@250
    .line 1063
    :cond_10
    :goto_1
    const/4 v3, 0x1

    #@251
    return v3

    #@252
    .line 1060
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v18    # "serviceUserId":I
    .end local v19    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v9    # "e":Landroid/os/RemoteException;
    .restart local v14    # "msg":Ljava/lang/String;
    :cond_11
    const-string/jumbo v3, "WallpaperManagerService"

    #@255
    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@258
    .line 1061
    const/4 v3, 0x0

    #@259
    return v3

    #@25a
    .line 1053
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v14    # "msg":Ljava/lang/String;
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .restart local v18    # "serviceUserId":I
    .restart local v19    # "si":Landroid/content/pm/ServiceInfo;
    :catch_3
    move-exception v9

    #@25b
    .restart local v9    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public clearWallpaper(Ljava/lang/String;)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 622
    const-string/jumbo v0, "android.permission.SET_WALLPAPER"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    #@6
    .line 623
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 624
    return-void

    #@d
    .line 626
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v1

    #@10
    .line 627
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@13
    move-result v0

    #@14
    const/4 v2, 0x0

    #@15
    const/4 v3, 0x0

    #@16
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    .line 620
    return-void

    #@1b
    .line 626
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    .line 1095
    const/4 v0, 0x0

    #@1
    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@3
    .line 1096
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@6
    .line 1094
    return-void
.end method

.method clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V
    .locals 12
    .param p1, "defaultFailed"    # Z
    .param p2, "userId"    # I
    .param p3, "reply"    # Landroid/os/IRemoteCallback;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 632
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v4

    #@7
    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@9
    .line 633
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    #@b
    .line 634
    return-void

    #@c
    .line 636
    :cond_0
    new-instance v9, Ljava/io/File;

    #@e
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v2, "wallpaper"

    #@15
    invoke-direct {v9, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@18
    .line 637
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 638
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    #@21
    .line 640
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@24
    move-result-wide v10

    #@25
    .line 642
    .local v10, "ident":J
    const/4 v6, 0x0

    #@26
    .line 644
    .local v6, "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    #@27
    :try_start_0
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    #@29
    .line 645
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    if-eq p2, v0, :cond_2

    #@2d
    .line 668
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    .line 645
    return-void

    #@31
    .line 646
    :cond_2
    if-eqz p1, :cond_3

    #@33
    .line 647
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    #@35
    .line 648
    :cond_3
    const/4 v2, 0x1

    #@36
    const/4 v3, 0x0

    #@37
    move-object v0, p0

    #@38
    move-object v5, p3

    #@39
    .line 646
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_4

    #@3f
    .line 668
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@42
    .line 649
    return-void

    #@43
    .line 651
    :catch_0
    move-exception v8

    #@44
    .line 652
    .local v8, "e1":Ljava/lang/IllegalArgumentException;
    move-object v6, v8

    #@45
    .line 659
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v8    # "e1":Ljava/lang/IllegalArgumentException;
    :cond_4
    :try_start_2
    const-string/jumbo v0, "WallpaperManagerService"

    #@48
    const-string/jumbo v1, "Default wallpaper component not found!"

    #@4b
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4e
    .line 660
    invoke-virtual {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    .line 661
    if-eqz p3, :cond_5

    #@53
    .line 663
    const/4 v0, 0x0

    #@54
    :try_start_3
    invoke-interface {p3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@57
    .line 668
    :cond_5
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5a
    .line 631
    return-void

    #@5b
    .line 664
    :catch_1
    move-exception v7

    #@5c
    .local v7, "e1":Landroid/os/RemoteException;
    goto :goto_0

    #@5d
    .line 667
    .end local v7    # "e1":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@5e
    .line 668
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@61
    .line 667
    throw v0
.end method

.method detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 4
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1067
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@3
    if-eqz v1, :cond_2

    #@5
    .line 1068
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@7
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1070
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
    .line 1073
    :goto_0
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@15
    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    #@17
    .line 1075
    :cond_0
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@19
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 1077
    :try_start_1
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@1f
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    #@21
    invoke-interface {v1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@24
    .line 1081
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@26
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@28
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@2b
    .line 1085
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
    .line 1088
    :goto_2
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@36
    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    #@38
    .line 1089
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@3a
    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    #@3c
    .line 1090
    iput-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@3e
    .line 1066
    :cond_2
    return-void

    #@3f
    .line 1086
    :catch_0
    move-exception v0

    #@40
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@41
    .line 1078
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@42
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    #@43
    .line 1071
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
    .line 1464
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
    .line 1467
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
    .line 1468
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v4

    #@1b
    .line 1467
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    .line 1469
    const-string/jumbo v4, ", uid="

    #@22
    .line 1467
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 1469
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v4

    #@2a
    .line 1467
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
    .line 1470
    return-void

    #@36
    .line 1473
    :cond_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@38
    monitor-enter v4

    #@39
    .line 1474
    :try_start_0
    const-string/jumbo v3, "Current Wallpaper Service state:"

    #@3c
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f
    .line 1475
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
    .line 1476
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@4a
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@4d
    move-result-object v2

    #@4e
    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@50
    .line 1477
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    new-instance v3, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v5, " User "

    #@58
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    iget v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@5e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    const-string/jumbo v5, ":"

    #@65
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@70
    .line 1478
    const-string/jumbo v3, "  mWidth="

    #@73
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76
    .line 1479
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@78
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    #@7b
    .line 1480
    const-string/jumbo v3, " mHeight="

    #@7e
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@81
    .line 1481
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@83
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    #@86
    .line 1482
    const-string/jumbo v3, "  mPadding="

    #@89
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8c
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@8e
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@91
    .line 1483
    const-string/jumbo v3, "  mName="

    #@94
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@97
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@99
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9c
    .line 1484
    const-string/jumbo v3, "  mWallpaperComponent="

    #@9f
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a2
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@a4
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@a7
    .line 1485
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@a9
    if-eqz v3, :cond_2

    #@ab
    .line 1486
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@ad
    .line 1487
    .local v0, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string/jumbo v3, "  Wallpaper connection "

    #@b0
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b3
    .line 1488
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@b6
    .line 1489
    const-string/jumbo v3, ":"

    #@b9
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bc
    .line 1490
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    #@be
    if-eqz v3, :cond_1

    #@c0
    .line 1491
    const-string/jumbo v3, "    mInfo.component="

    #@c3
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c6
    .line 1492
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    #@c8
    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    #@cb
    move-result-object v3

    #@cc
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@cf
    .line 1494
    :cond_1
    const-string/jumbo v3, "    mToken="

    #@d2
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d5
    .line 1495
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    #@d7
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@da
    .line 1496
    const-string/jumbo v3, "    mService="

    #@dd
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e0
    .line 1497
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    #@e2
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e5
    .line 1498
    const-string/jumbo v3, "    mEngine="

    #@e8
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@eb
    .line 1499
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    #@ed
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@f0
    .line 1500
    const-string/jumbo v3, "    mLastDiedTime="

    #@f3
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    .line 1501
    iget-wide v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    #@f8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@fb
    move-result-wide v8

    #@fc
    sub-long/2addr v6, v8

    #@fd
    invoke-virtual {p2, v6, v7}, Ljava/io/PrintWriter;->println(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@100
    .line 1475
    .end local v0    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@102
    goto/16 :goto_0

    #@104
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_3
    monitor-exit v4

    #@105
    .line 1463
    return-void

    #@106
    .line 1473
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@107
    monitor-exit v4

    #@108
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
    .line 497
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    #@3
    .line 498
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
    .line 499
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@14
    .line 500
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@16
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    #@19
    .line 498
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 496
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
    .line 761
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 762
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
    .line 763
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_0

    #@11
    .line 764
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    return v1

    #@15
    .line 766
    :cond_0
    const/4 v1, 0x0

    #@16
    monitor-exit v2

    #@17
    return v1

    #@18
    .line 761
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
    .line 557
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x3e8

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 558
    new-instance v0, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v1, "getName() can only be called from the system process"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 560
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@13
    monitor-enter v1

    #@14
    .line 561
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
    .line 560
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 807
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v6

    #@4
    .line 810
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v0

    #@8
    .line 811
    .local v0, "callingUid":I
    const/4 v4, 0x0

    #@9
    .line 812
    .local v4, "wallpaperUserId":I
    const/16 v5, 0x3e8

    #@b
    if-ne v0, v5, :cond_0

    #@d
    .line 813
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@f
    .line 817
    :goto_0
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 818
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v3, :cond_1

    #@19
    monitor-exit v6

    #@1a
    .line 819
    return-object v8

    #@1b
    .line 815
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result v4

    #@1f
    goto :goto_0

    #@20
    .line 822
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    if-eqz p2, :cond_2

    #@22
    .line 823
    :try_start_2
    const-string/jumbo v5, "width"

    #@25
    iget v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@27
    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2a
    .line 824
    const-string/jumbo v5, "height"

    #@2d
    iget v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@2f
    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@32
    .line 826
    :cond_2
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@39
    .line 827
    new-instance v2, Ljava/io/File;

    #@3b
    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    #@3e
    move-result-object v5

    #@3f
    const-string/jumbo v7, "wallpaper"

    #@42
    invoke-direct {v2, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@45
    .line 828
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    move-result v5

    #@49
    if-nez v5, :cond_3

    #@4b
    monitor-exit v6

    #@4c
    .line 829
    return-object v8

    #@4d
    .line 831
    :cond_3
    const/high16 v5, 0x10000000

    #@4f
    :try_start_3
    invoke-static {v2, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@52
    move-result-object v5

    #@53
    monitor-exit v6

    #@54
    return-object v5

    #@55
    .line 832
    .end local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    #@56
    .line 834
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string/jumbo v5, "WallpaperManagerService"

    #@59
    const-string/jumbo v7, "Error getting wallpaper"

    #@5c
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5f
    monitor-exit v6

    #@60
    .line 836
    return-object v8

    #@61
    .line 807
    .end local v0    # "callingUid":I
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "wallpaperUserId":I
    :catchall_0
    move-exception v5

    #@62
    monitor-exit v6

    #@63
    throw v5
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 841
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@4
    move-result v0

    #@5
    .line 842
    .local v0, "userId":I
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v3

    #@8
    .line 843
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@10
    .line 844
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_0

    #@12
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 845
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@18
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v3

    #@1b
    return-object v2

    #@1c
    :cond_0
    monitor-exit v3

    #@1d
    .line 847
    return-object v4

    #@1e
    .line 842
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    #@1f
    monitor-exit v3

    #@20
    throw v2
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
    .line 750
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 751
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
    .line 752
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_0

    #@11
    .line 753
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    return v1

    #@15
    .line 755
    :cond_0
    const/4 v1, 0x0

    #@16
    monitor-exit v2

    #@17
    return v1

    #@18
    .line 750
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 673
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 675
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    move-result-wide v0

    #@7
    .line 677
    .local v0, "ident":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@9
    const-string/jumbo v8, "user"

    #@c
    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v6

    #@10
    check-cast v6, Landroid/os/UserManager;

    #@12
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    move-result-object v4

    #@16
    .line 679
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 681
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v3

    #@1d
    .local v3, "user$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v6

    #@21
    if-eqz v6, :cond_2

    #@23
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Landroid/content/pm/UserInfo;

    #@29
    .line 683
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@2c
    move-result v6

    #@2d
    if-nez v6, :cond_0

    #@2f
    .line 686
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@31
    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    #@33
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v5

    #@37
    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@39
    .line 687
    .local v5, "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_1

    #@3b
    .line 689
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    #@3d
    invoke-direct {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    #@40
    .line 690
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@42
    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    #@44
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v5

    #@48
    .end local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@4a
    .line 692
    .restart local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    if-eqz v5, :cond_0

    #@4c
    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@4e
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@51
    move-result v6

    #@52
    if-eqz v6, :cond_0

    #@54
    .line 693
    const/4 v6, 0x1

    #@55
    monitor-exit v7

    #@56
    return v6

    #@57
    .line 678
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "user$iterator":Ljava/util/Iterator;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v6

    #@58
    .line 679
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5b
    .line 678
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5c
    .line 673
    .end local v0    # "ident":J
    :catchall_1
    move-exception v6

    #@5d
    monitor-exit v7

    #@5e
    throw v6

    #@5f
    .restart local v0    # "ident":J
    .restart local v3    # "user$iterator":Ljava/util/Iterator;
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    monitor-exit v7

    #@60
    .line 697
    const/4 v6, 0x0

    #@61
    return v6
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1140
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

.method onRemoveUser(I)V
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 580
    const/4 v2, 0x1

    #@1
    if-ge p1, v2, :cond_0

    #@3
    return-void

    #@4
    .line 581
    :cond_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v3

    #@7
    .line 582
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onStoppingUser(I)V

    #@a
    .line 583
    new-instance v0, Ljava/io/File;

    #@c
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    #@f
    move-result-object v2

    #@10
    const-string/jumbo v4, "wallpaper"

    #@13
    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@16
    .line 584
    .local v0, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@19
    .line 585
    new-instance v1, Ljava/io/File;

    #@1b
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v4, "wallpaper_info.xml"

    #@22
    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@25
    .line 586
    .local v1, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v3

    #@29
    .line 579
    return-void

    #@2a
    .line 581
    .end local v0    # "wallpaperFile":Ljava/io/File;
    .end local v1    # "wallpaperInfoFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    #@2b
    monitor-exit v3

    #@2c
    throw v2
.end method

.method onStoppingUser(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 566
    const/4 v1, 0x1

    #@1
    if-ge p1, v1, :cond_0

    #@3
    return-void

    #@4
    .line 567
    :cond_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 568
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@f
    .line 569
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_2

    #@11
    .line 570
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 571
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@17
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    #@1a
    .line 572
    const/4 v1, 0x0

    #@1b
    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@1d
    .line 574
    :cond_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@1f
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :cond_2
    monitor-exit v2

    #@23
    .line 565
    return-void

    #@24
    .line 567
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1
.end method

.method restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 25
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    .line 1389
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@4
    move-object/from16 v21, v0

    #@6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    #@9
    move-result v21

    #@a
    const/16 v22, 0x4

    #@c
    move/from16 v0, v21

    #@e
    move/from16 v1, v22

    #@10
    if-le v0, v1, :cond_6

    #@12
    const-string/jumbo v21, "res:"

    #@15
    move-object/from16 v0, p1

    #@17
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@19
    move-object/from16 v22, v0

    #@1b
    const/16 v23, 0x0

    #@1d
    const/16 v24, 0x4

    #@1f
    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@22
    move-result-object v22

    #@23
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v21

    #@27
    if-eqz v21, :cond_6

    #@29
    .line 1390
    move-object/from16 v0, p1

    #@2b
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@2d
    move-object/from16 v21, v0

    #@2f
    const/16 v22, 0x4

    #@31
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@34
    move-result-object v18

    #@35
    .line 1392
    .local v18, "resName":Ljava/lang/String;
    const/4 v14, 0x0

    #@36
    .line 1393
    .local v14, "pkg":Ljava/lang/String;
    const/16 v21, 0x3a

    #@38
    move-object/from16 v0, v18

    #@3a
    move/from16 v1, v21

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@3f
    move-result v6

    #@40
    .line 1394
    .local v6, "colon":I
    if-lez v6, :cond_0

    #@42
    .line 1395
    const/16 v21, 0x0

    #@44
    move-object/from16 v0, v18

    #@46
    move/from16 v1, v21

    #@48
    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4b
    move-result-object v14

    #@4c
    .line 1398
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_0
    const/4 v13, 0x0

    #@4d
    .line 1399
    .local v13, "ident":Ljava/lang/String;
    const/16 v21, 0x2f

    #@4f
    move-object/from16 v0, v18

    #@51
    move/from16 v1, v21

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@56
    move-result v19

    #@57
    .line 1400
    .local v19, "slash":I
    if-lez v19, :cond_1

    #@59
    .line 1401
    add-int/lit8 v21, v19, 0x1

    #@5b
    move-object/from16 v0, v18

    #@5d
    move/from16 v1, v21

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@62
    move-result-object v13

    #@63
    .line 1404
    .end local v13    # "ident":Ljava/lang/String;
    :cond_1
    const/16 v20, 0x0

    #@65
    .line 1405
    .local v20, "type":Ljava/lang/String;
    if-lez v6, :cond_2

    #@67
    if-lez v19, :cond_2

    #@69
    sub-int v21, v19, v6

    #@6b
    const/16 v22, 0x1

    #@6d
    move/from16 v0, v21

    #@6f
    move/from16 v1, v22

    #@71
    if-le v0, v1, :cond_2

    #@73
    .line 1406
    add-int/lit8 v21, v6, 0x1

    #@75
    move-object/from16 v0, v18

    #@77
    move/from16 v1, v21

    #@79
    move/from16 v2, v19

    #@7b
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7e
    move-result-object v20

    #@7f
    .line 1409
    .end local v20    # "type":Ljava/lang/String;
    :cond_2
    if-eqz v14, :cond_6

    #@81
    if-eqz v13, :cond_6

    #@83
    if-eqz v20, :cond_6

    #@85
    .line 1410
    const/16 v17, -0x1

    #@87
    .line 1411
    .local v17, "resId":I
    const/16 v16, 0x0

    #@89
    .line 1412
    .local v16, "res":Ljava/io/InputStream;
    const/4 v11, 0x0

    #@8a
    .line 1414
    .local v11, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@8e
    move-object/from16 v21, v0

    #@90
    const/16 v22, 0x4

    #@92
    move-object/from16 v0, v21

    #@94
    move/from16 v1, v22

    #@96
    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    #@99
    move-result-object v5

    #@9a
    .line 1415
    .local v5, "c":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9d
    move-result-object v15

    #@9e
    .line 1416
    .local v15, "r":Landroid/content/res/Resources;
    const/16 v21, 0x0

    #@a0
    const/16 v22, 0x0

    #@a2
    move-object/from16 v0, v18

    #@a4
    move-object/from16 v1, v21

    #@a6
    move-object/from16 v2, v22

    #@a8
    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@ab
    move-result v17

    #@ac
    .line 1417
    if-nez v17, :cond_3

    #@ae
    .line 1418
    const-string/jumbo v21, "WallpaperManagerService"

    #@b1
    new-instance v22, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v23, "couldn\'t resolve identifier pkg="

    #@b9
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v22

    #@bd
    move-object/from16 v0, v22

    #@bf
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v22

    #@c3
    const-string/jumbo v23, " type="

    #@c6
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v22

    #@ca
    move-object/from16 v0, v22

    #@cc
    move-object/from16 v1, v20

    #@ce
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v22

    #@d2
    .line 1419
    const-string/jumbo v23, " ident="

    #@d5
    .line 1418
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v22

    #@d9
    move-object/from16 v0, v22

    #@db
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v22

    #@df
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v22

    #@e3
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e6
    .line 1420
    const/16 v21, 0x0

    #@e8
    return v21

    #@e9
    .line 1423
    :cond_3
    move/from16 v0, v17

    #@eb
    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    #@ee
    move-result-object v16

    #@ef
    .line 1424
    .local v16, "res":Ljava/io/InputStream;
    move-object/from16 v0, p1

    #@f1
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    #@f3
    move-object/from16 v21, v0

    #@f5
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    #@f8
    move-result v21

    #@f9
    if-eqz v21, :cond_4

    #@fb
    .line 1425
    move-object/from16 v0, p1

    #@fd
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    #@ff
    move-object/from16 v21, v0

    #@101
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    #@104
    .line 1427
    :cond_4
    new-instance v12, Ljava/io/FileOutputStream;

    #@106
    move-object/from16 v0, p1

    #@108
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    #@10a
    move-object/from16 v21, v0

    #@10c
    move-object/from16 v0, v21

    #@10e
    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@111
    .line 1429
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .local v12, "fos":Ljava/io/FileOutputStream;
    const v21, 0x8000

    #@114
    :try_start_1
    move/from16 v0, v21

    #@116
    new-array v4, v0, [B

    #@118
    .line 1431
    .local v4, "buffer":[B
    :goto_0
    move-object/from16 v0, v16

    #@11a
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    #@11d
    move-result v3

    #@11e
    .local v3, "amt":I
    if-lez v3, :cond_7

    #@120
    .line 1432
    const/16 v21, 0x0

    #@122
    move/from16 v0, v21

    #@124
    invoke-virtual {v12, v4, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@127
    goto :goto_0

    #@128
    .line 1438
    .end local v3    # "amt":I
    .end local v4    # "buffer":[B
    :catch_0
    move-exception v7

    #@129
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v11, v12

    #@12a
    .line 1439
    .end local v5    # "c":Landroid/content/Context;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "r":Landroid/content/res/Resources;
    .end local v16    # "res":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    const-string/jumbo v21, "WallpaperManagerService"

    #@12d
    new-instance v22, Ljava/lang/StringBuilder;

    #@12f
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@132
    const-string/jumbo v23, "Package name "

    #@135
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v22

    #@139
    move-object/from16 v0, v22

    #@13b
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v22

    #@13f
    const-string/jumbo v23, " not found"

    #@142
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v22

    #@146
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@149
    move-result-object v22

    #@14a
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@14d
    .line 1445
    if-eqz v16, :cond_5

    #@14f
    .line 1447
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    #@152
    .line 1450
    :cond_5
    :goto_2
    if-eqz v11, :cond_6

    #@154
    .line 1451
    invoke-static {v11}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@157
    .line 1453
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    #@15a
    .line 1459
    .end local v6    # "colon":I
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v17    # "resId":I
    .end local v18    # "resName":Ljava/lang/String;
    .end local v19    # "slash":I
    :cond_6
    :goto_3
    const/16 v21, 0x0

    #@15c
    return v21

    #@15d
    .line 1436
    .restart local v3    # "amt":I
    .restart local v4    # "buffer":[B
    .restart local v5    # "c":Landroid/content/Context;
    .restart local v6    # "colon":I
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "r":Landroid/content/res/Resources;
    .restart local v16    # "res":Ljava/io/InputStream;
    .restart local v17    # "resId":I
    .restart local v18    # "resName":Ljava/lang/String;
    .restart local v19    # "slash":I
    :cond_7
    :try_start_5
    const-string/jumbo v21, "WallpaperManagerService"

    #@160
    new-instance v22, Ljava/lang/StringBuilder;

    #@162
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@165
    const-string/jumbo v23, "Restored wallpaper: "

    #@168
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v22

    #@16c
    move-object/from16 v0, v22

    #@16e
    move-object/from16 v1, v18

    #@170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v22

    #@174
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@177
    move-result-object v22

    #@178
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@17b
    .line 1437
    const/16 v21, 0x1

    #@17d
    .line 1445
    if-eqz v16, :cond_8

    #@17f
    .line 1447
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    #@182
    .line 1450
    :cond_8
    :goto_4
    if-eqz v12, :cond_9

    #@184
    .line 1451
    invoke-static {v12}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@187
    .line 1453
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    #@18a
    .line 1437
    :cond_9
    :goto_5
    return v21

    #@18b
    .line 1448
    :catch_1
    move-exception v10

    #@18c
    .local v10, "ex":Ljava/io/IOException;
    goto :goto_4

    #@18d
    .line 1454
    .end local v10    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v10

    #@18e
    .restart local v10    # "ex":Ljava/io/IOException;
    goto :goto_5

    #@18f
    .line 1442
    .end local v3    # "amt":I
    .end local v4    # "buffer":[B
    .end local v5    # "c":Landroid/content/Context;
    .end local v10    # "ex":Ljava/io/IOException;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "r":Landroid/content/res/Resources;
    .end local v16    # "res":Ljava/io/InputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v9

    #@190
    .line 1443
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .local v9, "e":Ljava/io/IOException;
    :goto_6
    :try_start_8
    const-string/jumbo v21, "WallpaperManagerService"

    #@193
    const-string/jumbo v22, "IOException while restoring wallpaper "

    #@196
    move-object/from16 v0, v21

    #@198
    move-object/from16 v1, v22

    #@19a
    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@19d
    .line 1445
    if-eqz v16, :cond_a

    #@19f
    .line 1447
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    #@1a2
    .line 1450
    :cond_a
    :goto_7
    if-eqz v11, :cond_6

    #@1a4
    .line 1451
    invoke-static {v11}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@1a7
    .line 1453
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    #@1aa
    goto :goto_3

    #@1ab
    .line 1454
    :catch_4
    move-exception v10

    #@1ac
    .restart local v10    # "ex":Ljava/io/IOException;
    goto :goto_3

    #@1ad
    .line 1448
    .end local v10    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v10

    #@1ae
    .restart local v10    # "ex":Ljava/io/IOException;
    goto :goto_7

    #@1af
    .line 1440
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "ex":Ljava/io/IOException;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v8

    #@1b0
    .line 1441
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .local v8, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_8
    :try_start_b
    const-string/jumbo v21, "WallpaperManagerService"

    #@1b3
    new-instance v22, Ljava/lang/StringBuilder;

    #@1b5
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1b8
    const-string/jumbo v23, "Resource not found: "

    #@1bb
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v22

    #@1bf
    move-object/from16 v0, v22

    #@1c1
    move/from16 v1, v17

    #@1c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v22

    #@1c7
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ca
    move-result-object v22

    #@1cb
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@1ce
    .line 1445
    if-eqz v16, :cond_b

    #@1d0
    .line 1447
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    #@1d3
    .line 1450
    :cond_b
    :goto_9
    if-eqz v11, :cond_6

    #@1d5
    .line 1451
    invoke-static {v11}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@1d8
    .line 1453
    :try_start_d
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    #@1db
    goto/16 :goto_3

    #@1dd
    .line 1454
    :catch_7
    move-exception v10

    #@1de
    .restart local v10    # "ex":Ljava/io/IOException;
    goto/16 :goto_3

    #@1e0
    .line 1448
    .end local v10    # "ex":Ljava/io/IOException;
    :catch_8
    move-exception v10

    #@1e1
    .restart local v10    # "ex":Ljava/io/IOException;
    goto :goto_9

    #@1e2
    .end local v8    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v10    # "ex":Ljava/io/IOException;
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_9
    move-exception v10

    #@1e3
    .restart local v10    # "ex":Ljava/io/IOException;
    goto/16 :goto_2

    #@1e5
    .line 1454
    .end local v10    # "ex":Ljava/io/IOException;
    :catch_a
    move-exception v10

    #@1e6
    .restart local v10    # "ex":Ljava/io/IOException;
    goto/16 :goto_3

    #@1e8
    .line 1444
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    #@1e9
    .line 1445
    :goto_a
    if-eqz v16, :cond_c

    #@1eb
    .line 1447
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    #@1ee
    .line 1450
    :cond_c
    :goto_b
    if-eqz v11, :cond_d

    #@1f0
    .line 1451
    invoke-static {v11}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@1f3
    .line 1453
    :try_start_f
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    #@1f6
    .line 1444
    :cond_d
    :goto_c
    throw v21

    #@1f7
    .line 1448
    :catch_b
    move-exception v10

    #@1f8
    .restart local v10    # "ex":Ljava/io/IOException;
    goto :goto_b

    #@1f9
    .line 1454
    .end local v10    # "ex":Ljava/io/IOException;
    :catch_c
    move-exception v10

    #@1fa
    .restart local v10    # "ex":Ljava/io/IOException;
    goto :goto_c

    #@1fb
    .line 1444
    .end local v10    # "ex":Ljava/io/IOException;
    .restart local v5    # "c":Landroid/content/Context;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "r":Landroid/content/res/Resources;
    .restart local v16    # "res":Ljava/io/InputStream;
    :catchall_1
    move-exception v21

    #@1fc
    move-object v11, v12

    #@1fd
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .local v11, "fos":Ljava/io/FileOutputStream;
    goto :goto_a

    #@1fe
    .line 1438
    .end local v5    # "c":Landroid/content/Context;
    .end local v15    # "r":Landroid/content/res/Resources;
    .end local v16    # "res":Ljava/io/InputStream;
    .local v11, "fos":Ljava/io/FileOutputStream;
    :catch_d
    move-exception v7

    #@1ff
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_1

    #@201
    .line 1440
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "c":Landroid/content/Context;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "r":Landroid/content/res/Resources;
    .restart local v16    # "res":Ljava/io/InputStream;
    :catch_e
    move-exception v8

    #@202
    .restart local v8    # "e":Landroid/content/res/Resources$NotFoundException;
    move-object v11, v12

    #@203
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .local v11, "fos":Ljava/io/FileOutputStream;
    goto :goto_8

    #@204
    .line 1442
    .end local v8    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catch_f
    move-exception v9

    #@205
    .restart local v9    # "e":Ljava/io/IOException;
    move-object v11, v12

    #@206
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6
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
    .line 710
    const-string/jumbo v4, "android.permission.SET_WALLPAPER_HINTS"

    #@3
    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    #@6
    .line 711
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    #@9
    move-result v4

    #@a
    if-nez v4, :cond_0

    #@c
    .line 712
    return-void

    #@d
    .line 714
    :cond_0
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v5

    #@10
    .line 715
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@13
    move-result v2

    #@14
    .line 716
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@17
    move-result-object v3

    #@18
    .line 717
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-lez p1, :cond_1

    #@1a
    if-gtz p2, :cond_2

    #@1c
    .line 718
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v6, "width and height must be > 0"

    #@21
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 714
    .end local v2    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v4

    #@26
    monitor-exit v5

    #@27
    throw v4

    #@28
    .line 721
    .restart local v2    # "userId":I
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultDisplaySize()Landroid/graphics/Point;

    #@2b
    move-result-object v0

    #@2c
    .line 722
    .local v0, "displaySize":Landroid/graphics/Point;
    iget v4, v0, Landroid/graphics/Point;->x:I

    #@2e
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    #@31
    move-result p1

    #@32
    .line 723
    iget v4, v0, Landroid/graphics/Point;->y:I

    #@34
    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    #@37
    move-result p2

    #@38
    .line 725
    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@3a
    if-ne p1, v4, :cond_3

    #@3c
    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@3e
    if-eq p2, v4, :cond_5

    #@40
    .line 726
    :cond_3
    iput p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    #@42
    .line 727
    iput p2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    #@44
    .line 728
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@47
    .line 729
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    if-eq v4, v2, :cond_4

    #@4b
    monitor-exit v5

    #@4c
    return-void

    #@4d
    .line 730
    :cond_4
    :try_start_2
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@4f
    if-eqz v4, :cond_5

    #@51
    .line 731
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@53
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@55
    if-eqz v4, :cond_6

    #@57
    .line 733
    :try_start_3
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@59
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    #@5b
    invoke-interface {v4, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5e
    .line 737
    :goto_0
    :try_start_4
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@61
    :cond_5
    :goto_1
    monitor-exit v5

    #@62
    .line 709
    return-void

    #@63
    .line 738
    :cond_6
    :try_start_5
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@65
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    #@67
    if-eqz v4, :cond_5

    #@69
    .line 742
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@6b
    const/4 v6, 0x1

    #@6c
    iput-boolean v6, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@6e
    goto :goto_1

    #@6f
    .line 735
    :catch_0
    move-exception v1

    #@70
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 7
    .param p1, "padding"    # Landroid/graphics/Rect;
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 772
    const-string/jumbo v3, "android.permission.SET_WALLPAPER_HINTS"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    #@6
    .line 773
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    .line 774
    return-void

    #@d
    .line 776
    :cond_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v4

    #@10
    .line 777
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@13
    move-result v1

    #@14
    .line 778
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@17
    move-result-object v2

    #@18
    .line 779
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    #@1a
    if-ltz v3, :cond_1

    #@1c
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@1e
    if-gez v3, :cond_2

    #@20
    .line 780
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@22
    new-instance v5, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v6, "padding must be positive: "

    #@2a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 776
    .end local v1    # "userId":I
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v3

    #@3b
    monitor-exit v4

    #@3c
    throw v3

    #@3d
    .line 779
    .restart local v1    # "userId":I
    .restart local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    :try_start_1
    iget v3, p1, Landroid/graphics/Rect;->right:I

    #@3f
    if-ltz v3, :cond_1

    #@41
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@43
    if-ltz v3, :cond_1

    #@45
    .line 783
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@47
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v3

    #@4b
    if-nez v3, :cond_4

    #@4d
    .line 784
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    #@4f
    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@52
    .line 785
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@55
    .line 786
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    if-eq v3, v1, :cond_3

    #@59
    monitor-exit v4

    #@5a
    return-void

    #@5b
    .line 787
    :cond_3
    :try_start_2
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@5d
    if-eqz v3, :cond_4

    #@5f
    .line 788
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@61
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@63
    if-eqz v3, :cond_5

    #@65
    .line 790
    :try_start_3
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@67
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    #@69
    invoke-interface {v3, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6c
    .line 793
    :goto_0
    :try_start_4
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6f
    :cond_4
    :goto_1
    monitor-exit v4

    #@70
    .line 771
    return-void

    #@71
    .line 794
    :cond_5
    :try_start_5
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@73
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    #@75
    if-eqz v3, :cond_4

    #@77
    .line 798
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    #@79
    const/4 v5, 0x1

    #@7a
    iput-boolean v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mPaddingChanged:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@7c
    goto :goto_1

    #@7d
    .line 791
    :catch_0
    move-exception v0

    #@7e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 852
    const-string/jumbo v5, "android.permission.SET_WALLPAPER"

    #@4
    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    #@7
    .line 853
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    #@a
    move-result v5

    #@b
    if-nez v5, :cond_0

    #@d
    .line 854
    return-object v6

    #@e
    .line 856
    :cond_0
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@10
    monitor-enter v6

    #@11
    .line 858
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@14
    move-result v3

    #@15
    .line 859
    .local v3, "userId":I
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@18
    move-result-object v4

    #@19
    .line 860
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    move-result-wide v0

    #@1d
    .line 862
    .local v0, "ident":J
    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    #@20
    move-result-object v2

    #@21
    .line 863
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    #@23
    .line 864
    const/4 v5, 0x1

    #@24
    iput-boolean v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .line 868
    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@29
    monitor-exit v6

    #@2a
    .line 866
    return-object v2

    #@2b
    .line 867
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v5

    #@2c
    .line 868
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 867
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@30
    .line 856
    .end local v0    # "ident":J
    .end local v3    # "userId":I
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_1
    move-exception v5

    #@31
    monitor-exit v6

    #@32
    throw v5
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 10
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 906
    const-string/jumbo v0, "android.permission.SET_WALLPAPER_COMPONENT"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    #@6
    .line 907
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v9

    #@9
    .line 909
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@c
    move-result v8

    #@d
    .line 910
    .local v8, "userId":I
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@15
    .line 911
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    #@17
    .line 912
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "Wallpaper not yet initialized for user "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 907
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v8    # "userId":I
    :catchall_0
    move-exception v0

    #@32
    monitor-exit v9

    #@33
    throw v0

    #@34
    .line 914
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v8    # "userId":I
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    move-result-wide v6

    #@38
    .line 916
    .local v6, "ident":J
    const/4 v0, 0x0

    #@39
    :try_start_2
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    #@3b
    .line 917
    const/4 v2, 0x0

    #@3c
    const/4 v3, 0x1

    #@3d
    const/4 v5, 0x0

    #@3e
    move-object v0, p0

    #@3f
    move-object v1, p1

    #@40
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@43
    .line 919
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@46
    monitor-exit v9

    #@47
    .line 905
    return-void

    #@48
    .line 918
    :catchall_1
    move-exception v0

    #@49
    .line 919
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4c
    .line 918
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 899
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 900
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;)V

    #@9
    .line 898
    :cond_0
    return-void
.end method

.method public settingsRestored()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1338
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v1

    #@5
    const/16 v2, 0x3e8

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 1339
    new-instance v1, Ljava/lang/RuntimeException;

    #@b
    const-string/jumbo v2, "settingsRestored() can only be called from the system process"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 1344
    :cond_0
    const/4 v5, 0x0

    #@13
    .line 1345
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v7, 0x0

    #@14
    .line 1346
    .local v7, "success":Z
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v8

    #@17
    .line 1347
    const/4 v1, 0x0

    #@18
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    #@1b
    .line 1348
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    move-object v0, v1

    #@23
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@25
    move-object v5, v0

    #@26
    .line 1349
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@28
    if-eqz v1, :cond_1

    #@2a
    .line 1350
    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@2c
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    #@2e
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_4

    #@34
    .line 1362
    :cond_1
    const-string/jumbo v1, ""

    #@37
    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_6

    #@3f
    .line 1364
    const/4 v7, 0x1

    #@40
    .line 1370
    .end local v7    # "success":Z
    :goto_0
    if-eqz v7, :cond_2

    #@42
    .line 1371
    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@44
    const/4 v3, 0x0

    #@45
    const/4 v4, 0x0

    #@46
    .line 1372
    const/4 v6, 0x0

    #@47
    move-object v1, p0

    #@48
    .line 1371
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    :cond_2
    :goto_1
    monitor-exit v8

    #@4c
    .line 1377
    if-nez v7, :cond_3

    #@4e
    .line 1378
    const-string/jumbo v1, "WallpaperManagerService"

    #@51
    new-instance v2, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v3, "Failed to restore wallpaper: \'"

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    iget-object v3, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    const-string/jumbo v3, "\'"

    #@66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v2

    #@6e
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 1379
    const-string/jumbo v1, ""

    #@74
    iput-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    #@76
    .line 1380
    invoke-static {v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@7d
    .line 1383
    :cond_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@7f
    monitor-enter v1

    #@80
    .line 1384
    :try_start_1
    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@83
    monitor-exit v1

    #@84
    .line 1336
    return-void

    #@85
    .line 1351
    .restart local v7    # "success":Z
    :cond_4
    :try_start_2
    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    #@87
    const/4 v3, 0x0

    #@88
    const/4 v4, 0x0

    #@89
    .line 1352
    const/4 v6, 0x0

    #@8a
    move-object v1, p0

    #@8b
    .line 1351
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    #@8e
    move-result v1

    #@8f
    if-nez v1, :cond_5

    #@91
    .line 1356
    const/4 v2, 0x0

    #@92
    const/4 v3, 0x0

    #@93
    const/4 v4, 0x0

    #@94
    const/4 v6, 0x0

    #@95
    move-object v1, p0

    #@96
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    #@99
    .line 1358
    :cond_5
    const/4 v7, 0x1

    #@9a
    .line 1350
    goto :goto_1

    #@9b
    .line 1367
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9e
    move-result v7

    #@9f
    .local v7, "success":Z
    goto :goto_0

    #@a0
    .line 1346
    .end local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v7    # "success":Z
    :catchall_0
    move-exception v1

    #@a1
    monitor-exit v8

    #@a2
    throw v1

    #@a3
    .line 1383
    .restart local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_1
    move-exception v2

    #@a4
    monitor-exit v1

    #@a5
    throw v2
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    #@0
    .prologue
    .line 591
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 592
    :try_start_0
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    #@5
    .line 593
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@8
    move-result-object v0

    #@9
    .line 595
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@b
    if-nez v1, :cond_0

    #@d
    .line 596
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@f
    invoke-direct {v1, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@12
    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@14
    .line 597
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@16
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    #@19
    .line 599
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v2

    #@1d
    .line 590
    return-void

    #@1e
    .line 591
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .locals 9
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    #@0
    .prologue
    .line 604
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v8

    #@3
    .line 605
    const/4 v6, 0x0

    #@4
    .line 607
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 608
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    #@a
    .line 609
    .local v1, "cname":Landroid/content/ComponentName;
    :goto_0
    const/4 v2, 0x1

    #@b
    const/4 v3, 0x0

    #@c
    move-object v0, p0

    #@d
    move-object v4, p1

    #@e
    move-object v5, p2

    #@f
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    monitor-exit v8

    #@16
    .line 610
    return-void

    #@17
    .line 608
    .end local v1    # "cname":Landroid/content/ComponentName;
    :cond_0
    :try_start_1
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    .restart local v1    # "cname":Landroid/content/ComponentName;
    goto :goto_0

    #@1a
    .line 612
    .end local v1    # "cname":Landroid/content/ComponentName;
    :catch_0
    move-exception v7

    #@1b
    .line 613
    .local v7, "e1":Ljava/lang/RuntimeException;
    move-object v6, v7

    #@1c
    .line 615
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v7    # "e1":Ljava/lang/RuntimeException;
    :cond_1
    :try_start_2
    const-string/jumbo v0, "WallpaperManagerService"

    #@1f
    const-string/jumbo v2, "Failure starting previous wallpaper"

    #@22
    invoke-static {v0, v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    .line 616
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@27
    const/4 v2, 0x0

    #@28
    invoke-virtual {p0, v2, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    monitor-exit v8

    #@2c
    .line 603
    return-void

    #@2d
    .line 604
    :catchall_0
    move-exception v0

    #@2e
    monitor-exit v8

    #@2f
    throw v0
.end method

.method public systemRunning()V
    .locals 5

    #@0
    .prologue
    .line 506
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    #@2
    const/4 v4, 0x0

    #@3
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@9
    .line 507
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v3, 0x0

    #@a
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    #@d
    .line 508
    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@f
    invoke-direct {v3, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    #@12
    iput-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@14
    .line 509
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    #@16
    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    #@19
    .line 511
    new-instance v1, Landroid/content/IntentFilter;

    #@1b
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@1e
    .line 512
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    #@21
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@24
    .line 513
    const-string/jumbo v3, "android.intent.action.USER_STOPPING"

    #@27
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2a
    .line 514
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    #@2c
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    #@2e
    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    #@31
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@34
    .line 532
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@37
    move-result-object v3

    #@38
    .line 533
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    #@3a
    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    #@3d
    .line 532
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 504
    :goto_0
    return-void

    #@41
    .line 548
    :catch_0
    move-exception v0

    #@42
    .line 550
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    #@45
    goto :goto_0
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 874
    if-nez p1, :cond_0

    #@3
    const-string/jumbo p1, ""

    #@6
    .line 876
    :cond_0
    :try_start_0
    iget v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    #@8
    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    #@b
    move-result-object v0

    #@c
    .line 877
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@f
    move-result v4

    #@10
    if-nez v4, :cond_1

    #@12
    .line 878
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@15
    .line 880
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    .line 881
    const/16 v5, 0x1f9

    #@1b
    .line 882
    const/4 v6, -0x1

    #@1c
    const/4 v7, -0x1

    #@1d
    .line 879
    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@20
    .line 884
    :cond_1
    new-instance v3, Ljava/io/File;

    #@22
    const-string/jumbo v4, "wallpaper"

    #@25
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@28
    .line 886
    .local v3, "file":Ljava/io/File;
    const/high16 v4, 0x3c000000    # 0.0078125f

    #@2a
    .line 885
    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@2d
    move-result-object v2

    #@2e
    .line 887
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    #@31
    move-result v4

    #@32
    if-nez v4, :cond_2

    #@34
    .line 888
    return-object v8

    #@35
    .line 890
    :cond_2
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 891
    return-object v2

    #@38
    .line 892
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    #@39
    .line 893
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "WallpaperManagerService"

    #@3c
    const-string/jumbo v5, "Error setting wallpaper"

    #@3f
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    .line 895
    return-object v8
.end method
