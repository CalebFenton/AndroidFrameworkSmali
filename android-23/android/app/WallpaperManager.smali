.class public Landroid/app/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$FastBitmapDrawable;,
        Landroid/app/WallpaperManager$Globals;
    }
.end annotation


# static fields
.field public static final ACTION_CHANGE_LIVE_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

.field public static final ACTION_CROP_AND_SET_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

.field public static final ACTION_LIVE_WALLPAPER_CHOOSER:Ljava/lang/String; = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

.field public static final COMMAND_DROP:Ljava/lang/String; = "android.home.drop"

.field public static final COMMAND_SECONDARY_TAP:Ljava/lang/String; = "android.wallpaper.secondaryTap"

.field public static final COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field private static DEBUG:Z = false

.field public static final EXTRA_LIVE_WALLPAPER_COMPONENT:Ljava/lang/String; = "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

.field private static final PROP_WALLPAPER:Ljava/lang/String; = "ro.config.wallpaper"

.field private static final PROP_WALLPAPER_COMPONENT:Ljava/lang/String; = "ro.config.wallpaper_component"

.field private static TAG:Ljava/lang/String; = null

.field public static final WALLPAPER_PREVIEW_META_DATA:Ljava/lang/String; = "android.wallpaper.preview"

.field private static sGlobals:Landroid/app/WallpaperManager$Globals;

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mWallpaperXStep:F

.field private mWallpaperYStep:F


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 73
    const-string/jumbo v0, "WallpaperManager"

    #@4
    sput-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@6
    .line 74
    sput-boolean v1, Landroid/app/WallpaperManager;->DEBUG:Z

    #@8
    .line 345
    new-array v0, v1, [Ljava/lang/Object;

    #@a
    sput-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    #@c
    .line 72
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    #@2
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 75
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    #@7
    .line 76
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    #@9
    .line 357
    iput-object p1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@b
    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Landroid/app/WallpaperManager;->initGlobals(Landroid/os/Looper;)V

    #@12
    .line 356
    return-void
.end method

.method public static getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1196
    const-string/jumbo v2, "ro.config.wallpaper_component"

    #@4
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 1197
    .local v1, "flat":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    .line 1198
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@11
    move-result-object v0

    #@12
    .line 1199
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    #@14
    .line 1200
    return-object v0

    #@15
    .line 1204
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_0
    const v2, 0x1040022

    #@18
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 1205
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_1

    #@22
    .line 1206
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@25
    move-result-object v0

    #@26
    .line 1207
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    #@28
    .line 1208
    return-object v0

    #@29
    .line 1212
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    return-object v3
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 366
    const-string/jumbo v0, "wallpaper"

    #@3
    .line 365
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/app/WallpaperManager;

    #@9
    return-object v0
.end method

.method private static getMaxCropRect(IIIIFF)Landroid/graphics/RectF;
    .locals 7
    .param p0, "inWidth"    # I
    .param p1, "inHeight"    # I
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 544
    new-instance v1, Landroid/graphics/RectF;

    #@3
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    #@6
    .line 546
    .local v1, "cropRect":Landroid/graphics/RectF;
    int-to-float v3, p0

    #@7
    int-to-float v4, p1

    #@8
    div-float/2addr v3, v4

    #@9
    int-to-float v4, p2

    #@a
    int-to-float v5, p3

    #@b
    div-float/2addr v4, v5

    #@c
    cmpl-float v3, v3, v4

    #@e
    if-lez v3, :cond_0

    #@10
    .line 547
    iput v6, v1, Landroid/graphics/RectF;->top:F

    #@12
    .line 548
    int-to-float v3, p1

    #@13
    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    #@15
    .line 549
    int-to-float v3, p2

    #@16
    int-to-float v4, p1

    #@17
    int-to-float v5, p3

    #@18
    div-float/2addr v4, v5

    #@19
    mul-float v2, v3, v4

    #@1b
    .line 550
    .local v2, "cropWidth":F
    int-to-float v3, p0

    #@1c
    sub-float/2addr v3, v2

    #@1d
    mul-float/2addr v3, p4

    #@1e
    iput v3, v1, Landroid/graphics/RectF;->left:F

    #@20
    .line 551
    iget v3, v1, Landroid/graphics/RectF;->left:F

    #@22
    add-float/2addr v3, v2

    #@23
    iput v3, v1, Landroid/graphics/RectF;->right:F

    #@25
    .line 559
    .end local v2    # "cropWidth":F
    :goto_0
    return-object v1

    #@26
    .line 553
    :cond_0
    iput v6, v1, Landroid/graphics/RectF;->left:F

    #@28
    .line 554
    int-to-float v3, p0

    #@29
    iput v3, v1, Landroid/graphics/RectF;->right:F

    #@2b
    .line 555
    int-to-float v3, p3

    #@2c
    int-to-float v4, p0

    #@2d
    int-to-float v5, p2

    #@2e
    div-float/2addr v4, v5

    #@2f
    mul-float v0, v3, v4

    #@31
    .line 556
    .local v0, "cropHeight":F
    int-to-float v3, p1

    #@32
    sub-float/2addr v3, v0

    #@33
    mul-float/2addr v3, p5

    #@34
    iput v3, v1, Landroid/graphics/RectF;->top:F

    #@36
    .line 557
    iget v3, v1, Landroid/graphics/RectF;->top:F

    #@38
    add-float/2addr v3, v0

    #@39
    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    #@3b
    goto :goto_0
.end method

.method static initGlobals(Landroid/os/Looper;)V
    .locals 2
    .param p0, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 349
    sget-object v1, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 350
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 351
    new-instance v0, Landroid/app/WallpaperManager$Globals;

    #@9
    invoke-direct {v0, p0}, Landroid/app/WallpaperManager$Globals;-><init>(Landroid/os/Looper;)V

    #@c
    sput-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit v1

    #@f
    .line 348
    return-void

    #@10
    .line 349
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public static openDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1174
    const-string/jumbo v3, "ro.config.wallpaper"

    #@3
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 1175
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 1176
    new-instance v1, Ljava/io/File;

    #@f
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@12
    .line 1177
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 1179
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    #@1a
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    return-object v3

    #@1e
    .line 1180
    :catch_0
    move-exception v0

    #@1f
    .line 1185
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@22
    move-result-object v3

    #@23
    .line 1186
    const v4, 0x108026c

    #@26
    .line 1185
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    #@29
    move-result-object v3

    #@2a
    return-object v3
.end method

.method private setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 4
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 831
    const v2, 0x8000

    #@4
    new-array v1, v2, [B

    #@6
    .line 833
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    #@9
    move-result v0

    #@a
    .local v0, "amt":I
    if-lez v0, :cond_0

    #@c
    .line 834
    invoke-virtual {p2, v1, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    #@f
    goto :goto_0

    #@10
    .line 830
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1165
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    #@9
    .line 1164
    return-void
.end method

.method public clearWallpaper()V
    .locals 3

    #@0
    .prologue
    .line 1021
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@2
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 1022
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "WallpaperService not running"

    #@d
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 1023
    return-void

    #@11
    .line 1026
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@13
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@19
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v1, v2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 1020
    :goto_0
    return-void

    #@21
    .line 1027
    :catch_0
    move-exception v0

    #@22
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public clearWallpaperOffsets(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "windowToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1146
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    #@3
    move-result-object v0

    #@4
    .line 1147
    const/high16 v2, -0x40800000    # -1.0f

    #@6
    const/high16 v3, -0x40800000    # -1.0f

    #@8
    const/high16 v4, -0x40800000    # -1.0f

    #@a
    const/high16 v5, -0x40800000    # -1.0f

    #@c
    move-object v1, p1

    #@d
    .line 1146
    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1144
    :goto_0
    return-void

    #@11
    .line 1148
    :catch_0
    move-exception v6

    #@12
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public forgetLoadedWallpaper()V
    .locals 1

    #@0
    .prologue
    .line 633
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 634
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@8
    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    #@b
    .line 632
    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    #@0
    .prologue
    .line 623
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@2
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@4
    const/4 v2, 0x1

    #@5
    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getBuiltInDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    move-object v0, p0

    #@3
    move v2, v1

    #@4
    move v3, v1

    #@5
    move v5, v4

    #@6
    .line 398
    invoke-virtual/range {v0 .. v5}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;
    .locals 29
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    #@0
    .prologue
    .line 416
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@2
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@5
    move-result-object v5

    #@6
    if-nez v5, :cond_0

    #@8
    .line 417
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v6, "WallpaperService not running"

    #@d
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 418
    const/4 v5, 0x0

    #@11
    return-object v5

    #@12
    .line 420
    :cond_0
    move-object/from16 v0, p0

    #@14
    iget-object v5, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@16
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@19
    move-result-object v22

    #@1a
    .line 421
    .local v22, "resources":Landroid/content/res/Resources;
    const/4 v5, 0x0

    #@1b
    const/high16 v6, 0x3f800000    # 1.0f

    #@1d
    move/from16 v0, p4

    #@1f
    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    #@22
    move-result v6

    #@23
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    #@26
    move-result p4

    #@27
    .line 422
    const/4 v5, 0x0

    #@28
    const/high16 v6, 0x3f800000    # 1.0f

    #@2a
    move/from16 v0, p5

    #@2c
    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    #@2f
    move-result v6

    #@30
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    #@33
    move-result p5

    #@34
    .line 424
    new-instance v17, Ljava/io/BufferedInputStream;

    #@36
    move-object/from16 v0, p0

    #@38
    iget-object v5, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@3a
    invoke-static {v5}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;

    #@3d
    move-result-object v5

    #@3e
    move-object/from16 v0, v17

    #@40
    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@43
    .line 426
    .local v17, "is":Ljava/io/InputStream;
    if-nez v17, :cond_1

    #@45
    .line 427
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@47
    const-string/jumbo v6, "default wallpaper input stream is null"

    #@4a
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 428
    const/4 v5, 0x0

    #@4e
    return-object v5

    #@4f
    .line 430
    :cond_1
    if-lez p1, :cond_2

    #@51
    if-gtz p2, :cond_3

    #@53
    .line 431
    :cond_2
    const/4 v5, 0x0

    #@54
    const/4 v6, 0x0

    #@55
    move-object/from16 v0, v17

    #@57
    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@5a
    move-result-object v16

    #@5b
    .line 432
    .local v16, "fullSize":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    #@5d
    move-object/from16 v0, v22

    #@5f
    move-object/from16 v1, v16

    #@61
    invoke-direct {v5, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@64
    return-object v5

    #@65
    .line 437
    .end local v16    # "fullSize":Landroid/graphics/Bitmap;
    :cond_3
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    #@67
    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@6a
    .line 438
    .local v20, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    #@6b
    move-object/from16 v0, v20

    #@6d
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #@6f
    .line 439
    const/4 v5, 0x0

    #@70
    move-object/from16 v0, v17

    #@72
    move-object/from16 v1, v20

    #@74
    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@77
    .line 440
    move-object/from16 v0, v20

    #@79
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@7b
    if-eqz v5, :cond_5

    #@7d
    move-object/from16 v0, v20

    #@7f
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@81
    if-eqz v5, :cond_5

    #@83
    .line 441
    move-object/from16 v0, v20

    #@85
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #@87
    .line 442
    .local v3, "inWidth":I
    move-object/from16 v0, v20

    #@89
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #@8b
    .line 449
    .local v4, "inHeight":I
    new-instance v17, Ljava/io/BufferedInputStream;

    #@8d
    .end local v17    # "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    #@8f
    iget-object v5, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@91
    invoke-static {v5}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;

    #@94
    move-result-object v5

    #@95
    move-object/from16 v0, v17

    #@97
    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@9a
    .line 453
    .restart local v17    # "is":Ljava/io/InputStream;
    move/from16 v0, p1

    #@9c
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    #@9f
    move-result p1

    #@a0
    .line 454
    move/from16 v0, p2

    #@a2
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    #@a5
    move-result p2

    #@a6
    .line 455
    if-eqz p3, :cond_6

    #@a8
    move/from16 v5, p1

    #@aa
    move/from16 v6, p2

    #@ac
    move/from16 v7, p4

    #@ae
    move/from16 v8, p5

    #@b0
    .line 456
    invoke-static/range {v3 .. v8}, Landroid/app/WallpaperManager;->getMaxCropRect(IIIIFF)Landroid/graphics/RectF;

    #@b3
    move-result-object v13

    #@b4
    .line 465
    .local v13, "cropRectF":Landroid/graphics/RectF;
    :goto_0
    new-instance v25, Landroid/graphics/Rect;

    #@b6
    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    #@b9
    .line 466
    .local v25, "roundedTrueCrop":Landroid/graphics/Rect;
    move-object/from16 v0, v25

    #@bb
    invoke-virtual {v13, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    #@be
    .line 468
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    #@c1
    move-result v5

    #@c2
    if-lez v5, :cond_4

    #@c4
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    #@c7
    move-result v5

    #@c8
    if-gtz v5, :cond_7

    #@ca
    .line 469
    :cond_4
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@cc
    const-string/jumbo v6, "crop has bad values for full size image"

    #@cf
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d2
    .line 470
    const/4 v5, 0x0

    #@d3
    return-object v5

    #@d4
    .line 444
    .end local v3    # "inWidth":I
    .end local v4    # "inHeight":I
    .end local v13    # "cropRectF":Landroid/graphics/RectF;
    .end local v25    # "roundedTrueCrop":Landroid/graphics/Rect;
    :cond_5
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@d6
    const-string/jumbo v6, "default wallpaper dimensions are 0"

    #@d9
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@dc
    .line 445
    const/4 v5, 0x0

    #@dd
    return-object v5

    #@de
    .line 459
    .restart local v3    # "inWidth":I
    .restart local v4    # "inHeight":I
    :cond_6
    sub-int v5, v3, p1

    #@e0
    int-to-float v5, v5

    #@e1
    mul-float v18, v5, p4

    #@e3
    .line 460
    .local v18, "left":F
    move/from16 v0, p1

    #@e5
    int-to-float v5, v0

    #@e6
    add-float v24, v18, v5

    #@e8
    .line 461
    .local v24, "right":F
    sub-int v5, v4, p2

    #@ea
    int-to-float v5, v5

    #@eb
    mul-float v28, v5, p5

    #@ed
    .line 462
    .local v28, "top":F
    move/from16 v0, p2

    #@ef
    int-to-float v5, v0

    #@f0
    add-float v9, v28, v5

    #@f2
    .line 463
    .local v9, "bottom":F
    new-instance v13, Landroid/graphics/RectF;

    #@f4
    move/from16 v0, v18

    #@f6
    move/from16 v1, v28

    #@f8
    move/from16 v2, v24

    #@fa
    invoke-direct {v13, v0, v1, v2, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@fd
    .restart local v13    # "cropRectF":Landroid/graphics/RectF;
    goto :goto_0

    #@fe
    .line 474
    .end local v9    # "bottom":F
    .end local v18    # "left":F
    .end local v24    # "right":F
    .end local v28    # "top":F
    .restart local v25    # "roundedTrueCrop":Landroid/graphics/Rect;
    :cond_7
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    #@101
    move-result v5

    #@102
    div-int v5, v5, p1

    #@104
    .line 475
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    #@107
    move-result v6

    #@108
    div-int v6, v6, p2

    #@10a
    .line 474
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@10d
    move-result v26

    #@10e
    .line 478
    .local v26, "scaleDownSampleSize":I
    const/4 v14, 0x0

    #@10f
    .line 480
    .local v14, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v5, 0x1

    #@110
    :try_start_0
    move-object/from16 v0, v17

    #@112
    invoke-static {v0, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@115
    move-result-object v14

    #@116
    .line 485
    .end local v14    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :goto_1
    const/4 v11, 0x0

    #@117
    .line 486
    .local v11, "crop":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_9

    #@119
    .line 488
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    #@11b
    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@11e
    .line 489
    .restart local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    #@11f
    move/from16 v0, v26

    #@121
    if-le v0, v5, :cond_8

    #@123
    .line 490
    move/from16 v0, v26

    #@125
    move-object/from16 v1, v20

    #@127
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@129
    .line 492
    :cond_8
    move-object/from16 v0, v25

    #@12b
    move-object/from16 v1, v20

    #@12d
    invoke-virtual {v14, v0, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@130
    move-result-object v11

    #@131
    .line 493
    .local v11, "crop":Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    #@134
    .line 496
    .end local v11    # "crop":Landroid/graphics/Bitmap;
    :cond_9
    if-nez v11, :cond_c

    #@136
    .line 498
    new-instance v17, Ljava/io/BufferedInputStream;

    #@138
    .end local v17    # "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    #@13a
    iget-object v5, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@13c
    invoke-static {v5}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;

    #@13f
    move-result-object v5

    #@140
    move-object/from16 v0, v17

    #@142
    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@145
    .line 499
    .restart local v17    # "is":Ljava/io/InputStream;
    const/16 v16, 0x0

    #@147
    .line 500
    .local v16, "fullSize":Landroid/graphics/Bitmap;
    if-eqz v17, :cond_b

    #@149
    .line 501
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    #@14b
    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@14e
    .line 502
    .restart local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    #@14f
    move/from16 v0, v26

    #@151
    if-le v0, v5, :cond_a

    #@153
    .line 503
    move/from16 v0, v26

    #@155
    move-object/from16 v1, v20

    #@157
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #@159
    .line 505
    :cond_a
    const/4 v5, 0x0

    #@15a
    move-object/from16 v0, v17

    #@15c
    move-object/from16 v1, v20

    #@15e
    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@161
    move-result-object v16

    #@162
    .line 507
    .end local v16    # "fullSize":Landroid/graphics/Bitmap;
    :cond_b
    if-eqz v16, :cond_c

    #@164
    .line 508
    move-object/from16 v0, v25

    #@166
    iget v5, v0, Landroid/graphics/Rect;->left:I

    #@168
    .line 509
    move-object/from16 v0, v25

    #@16a
    iget v6, v0, Landroid/graphics/Rect;->top:I

    #@16c
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    #@16f
    move-result v7

    #@170
    .line 510
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    #@173
    move-result v8

    #@174
    .line 508
    move-object/from16 v0, v16

    #@176
    invoke-static {v0, v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    #@179
    move-result-object v11

    #@17a
    .line 514
    :cond_c
    if-nez v11, :cond_d

    #@17c
    .line 515
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@17e
    const-string/jumbo v6, "cannot decode default wallpaper"

    #@181
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@184
    .line 516
    const/4 v5, 0x0

    #@185
    return-object v5

    #@186
    .line 481
    .restart local v14    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :catch_0
    move-exception v15

    #@187
    .line 482
    .local v15, "e":Ljava/io/IOException;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@189
    const-string/jumbo v6, "cannot open region decoder for default wallpaper"

    #@18c
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@18f
    goto :goto_1

    #@190
    .line 520
    .end local v14    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v15    # "e":Ljava/io/IOException;
    :cond_d
    if-lez p1, :cond_f

    #@192
    if-lez p2, :cond_f

    #@194
    .line 521
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    #@197
    move-result v5

    #@198
    move/from16 v0, p1

    #@19a
    if-ne v5, v0, :cond_e

    #@19c
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    #@19f
    move-result v5

    #@1a0
    move/from16 v0, p2

    #@1a2
    if-eq v5, v0, :cond_f

    #@1a4
    .line 522
    :cond_e
    new-instance v19, Landroid/graphics/Matrix;

    #@1a6
    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    #@1a9
    .line 523
    .local v19, "m":Landroid/graphics/Matrix;
    new-instance v12, Landroid/graphics/RectF;

    #@1ab
    const/4 v5, 0x0

    #@1ac
    const/4 v6, 0x0

    #@1ad
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    #@1b0
    move-result v7

    #@1b1
    int-to-float v7, v7

    #@1b2
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    #@1b5
    move-result v8

    #@1b6
    int-to-float v8, v8

    #@1b7
    invoke-direct {v12, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@1ba
    .line 524
    .local v12, "cropRect":Landroid/graphics/RectF;
    new-instance v23, Landroid/graphics/RectF;

    #@1bc
    const/4 v5, 0x0

    #@1bd
    const/4 v6, 0x0

    #@1be
    move/from16 v0, p1

    #@1c0
    int-to-float v7, v0

    #@1c1
    move/from16 v0, p2

    #@1c3
    int-to-float v8, v0

    #@1c4
    move-object/from16 v0, v23

    #@1c6
    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@1c9
    .line 525
    .local v23, "returnRect":Landroid/graphics/RectF;
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    #@1cb
    move-object/from16 v0, v19

    #@1cd
    move-object/from16 v1, v23

    #@1cf
    invoke-virtual {v0, v12, v1, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    #@1d2
    .line 526
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    #@1d5
    move-result v5

    #@1d6
    float-to-int v5, v5

    #@1d7
    .line 527
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    #@1da
    move-result v6

    #@1db
    float-to-int v6, v6

    #@1dc
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@1de
    .line 526
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@1e1
    move-result-object v27

    #@1e2
    .line 528
    .local v27, "tmp":Landroid/graphics/Bitmap;
    if-eqz v27, :cond_f

    #@1e4
    .line 529
    new-instance v10, Landroid/graphics/Canvas;

    #@1e6
    move-object/from16 v0, v27

    #@1e8
    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@1eb
    .line 530
    .local v10, "c":Landroid/graphics/Canvas;
    new-instance v21, Landroid/graphics/Paint;

    #@1ed
    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    #@1f0
    .line 531
    .local v21, "p":Landroid/graphics/Paint;
    const/4 v5, 0x1

    #@1f1
    move-object/from16 v0, v21

    #@1f3
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@1f6
    .line 532
    move-object/from16 v0, v19

    #@1f8
    move-object/from16 v1, v21

    #@1fa
    invoke-virtual {v10, v11, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    #@1fd
    .line 533
    move-object/from16 v11, v27

    #@1ff
    .line 537
    .end local v10    # "c":Landroid/graphics/Canvas;
    .end local v12    # "cropRect":Landroid/graphics/RectF;
    .end local v19    # "m":Landroid/graphics/Matrix;
    .end local v21    # "p":Landroid/graphics/Paint;
    .end local v23    # "returnRect":Landroid/graphics/RectF;
    .end local v27    # "tmp":Landroid/graphics/Bitmap;
    :cond_f
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    #@201
    move-object/from16 v0, v22

    #@203
    invoke-direct {v5, v0, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@206
    return-object v5
.end method

.method public getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 8
    .param p1, "imageUri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 670
    if-nez p1, :cond_0

    #@3
    .line 671
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v6, "Image URI must not be null"

    #@8
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v5

    #@c
    .line 674
    :cond_0
    const-string/jumbo v5, "content"

    #@f
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@12
    move-result-object v6

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v5

    #@17
    if-nez v5, :cond_1

    #@19
    .line 675
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v6, "Image URI must be of the content scheme type"

    #@1e
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v5

    #@22
    .line 679
    :cond_1
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@24
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@27
    move-result-object v3

    #@28
    .line 681
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    #@2a
    const-string/jumbo v5, "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

    #@2d
    invoke-direct {v0, v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@30
    .line 682
    .local v0, "cropAndSetWallpaperIntent":Landroid/content/Intent;
    const/4 v5, 0x1

    #@31
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@34
    .line 685
    new-instance v5, Landroid/content/Intent;

    #@36
    const-string/jumbo v6, "android.intent.action.MAIN"

    #@39
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3c
    const-string/jumbo v6, "android.intent.category.HOME"

    #@3f
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@42
    move-result-object v2

    #@43
    .line 687
    .local v2, "homeIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000

    #@45
    .line 686
    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@48
    move-result-object v4

    #@49
    .line 688
    .local v4, "resolvedHome":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_2

    #@4b
    .line 689
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4d
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@4f
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@52
    .line 691
    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@55
    move-result-object v1

    #@56
    .line 693
    .local v1, "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@59
    move-result v5

    #@5a
    if-lez v5, :cond_2

    #@5c
    .line 694
    return-object v0

    #@5d
    .line 699
    .end local v1    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    const-string/jumbo v5, "com.android.wallpapercropper"

    #@60
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@63
    .line 700
    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@66
    move-result-object v1

    #@67
    .line 702
    .restart local v1    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@6a
    move-result v5

    #@6b
    if-lez v5, :cond_3

    #@6d
    .line 703
    return-object v0

    #@6e
    .line 707
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@70
    const-string/jumbo v6, "Cannot use passed URI to set wallpaper; check that the type returned by ContentProvider matches image/*"

    #@73
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@76
    throw v5
.end method

.method public getDesiredMinimumHeight()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 899
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@3
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 900
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v2, "WallpaperService not running"

    #@e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 901
    return v3

    #@12
    .line 904
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@14
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@17
    move-result-object v1

    #@18
    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 905
    :catch_0
    move-exception v0

    #@1e
    .line 907
    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method public getDesiredMinimumWidth()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 872
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@3
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 873
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v2, "WallpaperService not running"

    #@e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 874
    return v3

    #@12
    .line 877
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@14
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@17
    move-result-object v1

    #@18
    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getWidthHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 878
    :catch_0
    move-exception v0

    #@1e
    .line 880
    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 384
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@3
    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@5
    const/4 v4, 0x1

    #@6
    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    #@9
    move-result-object v0

    #@a
    .line 385
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    #@c
    .line 386
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    #@e
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object v2

    #@14
    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@17
    .line 387
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    #@18
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    #@1b
    .line 388
    return-object v1

    #@1c
    .line 390
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v5
.end method

.method public getFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 595
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@3
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@5
    const/4 v3, 0x1

    #@6
    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    #@9
    move-result-object v0

    #@a
    .line 596
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    #@c
    .line 597
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    #@e
    invoke-direct {v1, v0, v4}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$FastBitmapDrawable;)V

    #@11
    return-object v1

    #@12
    .line 599
    :cond_0
    return-object v4
.end method

.method public getIWallpaperManager()Landroid/app/IWallpaperManager;
    .locals 1

    #@0
    .prologue
    .line 371
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@2
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 645
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@3
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 646
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v2, "WallpaperService not running"

    #@e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 647
    return-object v3

    #@12
    .line 649
    :cond_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@14
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@17
    move-result-object v1

    #@18
    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result-object v1

    #@1c
    return-object v1

    #@1d
    .line 651
    :catch_0
    move-exception v0

    #@1e
    .line 652
    .local v0, "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public hasResourceWallpaper(I)Z
    .locals 6
    .param p1, "resid"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 844
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@3
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@6
    move-result-object v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 845
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v4, "WallpaperService not running"

    #@e
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 846
    return v5

    #@12
    .line 849
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@17
    move-result-object v2

    #@18
    .line 850
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "res:"

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 851
    .local v1, "name":Ljava/lang/String;
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@32
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@35
    move-result-object v3

    #@36
    invoke-interface {v3, v1}, Landroid/app/IWallpaperManager;->hasNamedWallpaper(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    move-result v3

    #@3a
    return v3

    #@3b
    .line 852
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    #@3c
    .line 853
    .local v0, "e":Landroid/os/RemoteException;
    return v5
.end method

.method public isWallpaperSupported()Z
    .locals 3

    #@0
    .prologue
    .line 1122
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@2
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 1123
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "WallpaperService not running"

    #@d
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 1131
    :goto_0
    const/4 v1, 0x0

    #@11
    return v1

    #@12
    .line 1126
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@14
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-interface {v1, v2}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result v1

    #@22
    return v1

    #@23
    .line 1127
    :catch_0
    move-exception v0

    #@24
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public peekDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 572
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@4
    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    #@9
    move-result-object v0

    #@a
    .line 573
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    #@c
    .line 574
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    #@e
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object v2

    #@14
    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@17
    .line 575
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    #@1a
    .line 576
    return-object v1

    #@1b
    .line 578
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v5
.end method

.method public peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 610
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@3
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    #@9
    move-result-object v0

    #@a
    .line 611
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    #@c
    .line 612
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    #@e
    invoke-direct {v1, v0, v4}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$FastBitmapDrawable;)V

    #@11
    return-object v1

    #@12
    .line 614
    :cond_0
    return-object v4
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1109
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    #@3
    move-result-object v0

    #@4
    .line 1110
    const/4 v7, 0x0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    move-object v6, p6

    #@b
    .line 1109
    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 1106
    :goto_0
    return-void

    #@f
    .line 1112
    :catch_0
    move-exception v8

    #@10
    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 765
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@2
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@5
    move-result-object v4

    #@6
    if-nez v4, :cond_0

    #@8
    .line 766
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v5, "WallpaperService not running"

    #@d
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 767
    return-void

    #@11
    .line 770
    :cond_0
    :try_start_0
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@13
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@16
    move-result-object v4

    #@17
    .line 771
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@19
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    .line 770
    const/4 v6, 0x0

    #@1e
    invoke-interface {v4, v6, v5}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v1

    #@22
    .line 772
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    #@24
    .line 773
    return-void

    #@25
    .line 775
    :cond_1
    const/4 v2, 0x0

    #@26
    .line 777
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    #@28
    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 778
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    #@2d
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    const/16 v5, 0x5a

    #@2f
    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@32
    .line 780
    if-eqz v3, :cond_2

    #@34
    .line 781
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    #@37
    .line 764
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    return-void

    #@38
    .line 779
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    #@39
    .line 780
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v2, :cond_3

    #@3b
    .line 781
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    #@3e
    .line 779
    :cond_3
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@3f
    .line 784
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    #@40
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@41
    .line 779
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    #@42
    move-object v2, v3

    #@43
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setDisplayOffset(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I

    #@0
    .prologue
    .line 1006
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2, p3}, Landroid/view/IWindowSession;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1003
    :goto_0
    return-void

    #@8
    .line 1009
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 983
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@2
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 984
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "WallpaperService not running"

    #@d
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 981
    :goto_0
    return-void

    #@11
    .line 986
    :cond_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@13
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@19
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v1, p1, v2}, Landroid/app/IWallpaperManager;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    goto :goto_0

    #@21
    .line 988
    :catch_0
    move-exception v0

    #@22
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setResource(I)V
    .locals 8
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 726
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@2
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@5
    move-result-object v5

    #@6
    if-nez v5, :cond_0

    #@8
    .line 727
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v6, "WallpaperService not running"

    #@d
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 728
    return-void

    #@11
    .line 731
    :cond_0
    :try_start_0
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@16
    move-result-object v4

    #@17
    .line 733
    .local v4, "resources":Landroid/content/res/Resources;
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@19
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@1c
    move-result-object v5

    #@1d
    .line 734
    new-instance v6, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v7, "res:"

    #@25
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@2c
    move-result-object v7

    #@2d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    iget-object v7, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@37
    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    .line 733
    invoke-interface {v5, v6, v7}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    move-result-object v1

    #@3f
    .line 735
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    #@41
    .line 736
    const/4 v2, 0x0

    #@42
    .line 738
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    #@44
    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    .line 739
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    #@4a
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    move-result-object v5

    #@4b
    invoke-direct {p0, v5, v3}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4e
    .line 741
    if-eqz v3, :cond_1

    #@50
    .line 742
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    #@53
    .line 725
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_0
    return-void

    #@54
    .line 740
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v5

    #@55
    .line 741
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v2, :cond_2

    #@57
    .line 742
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    #@5a
    .line 740
    :cond_2
    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@5b
    .line 746
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    #@5c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@5d
    .line 740
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "resources":Landroid/content/res/Resources;
    :catchall_1
    move-exception v5

    #@5e
    move-object v2, v3

    #@5f
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setStream(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 805
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@2
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@5
    move-result-object v4

    #@6
    if-nez v4, :cond_0

    #@8
    .line 806
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v5, "WallpaperService not running"

    #@d
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 807
    return-void

    #@11
    .line 810
    :cond_0
    :try_start_0
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@13
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@16
    move-result-object v4

    #@17
    .line 811
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@19
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    .line 810
    const/4 v6, 0x0

    #@1e
    invoke-interface {v4, v6, v5}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v1

    #@22
    .line 812
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    #@24
    .line 813
    return-void

    #@25
    .line 815
    :cond_1
    const/4 v2, 0x0

    #@26
    .line 817
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    #@28
    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 818
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, p1, v3}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2e
    .line 820
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    if-eqz v3, :cond_2

    #@30
    .line 821
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    #@33
    .line 804
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    return-void

    #@34
    .line 819
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    #@35
    .line 820
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v2, :cond_3

    #@37
    .line 821
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    #@3a
    .line 819
    :cond_3
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@3b
    .line 824
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    #@3c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@3d
    .line 819
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    #@3e
    move-object v2, v3

    #@3f
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1042
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@3
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 1043
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v2, "WallpaperService not running"

    #@e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1044
    return v3

    #@12
    .line 1047
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@14
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-interface {v1, p1, v2}, Landroid/app/IWallpaperManager;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 1048
    const/4 v1, 0x1

    #@22
    return v1

    #@23
    .line 1049
    :catch_0
    move-exception v0

    #@24
    .line 1052
    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method public setWallpaperOffsetSteps(FF)V
    .locals 0
    .param p1, "xStep"    # F
    .param p2, "yStep"    # F

    #@0
    .prologue
    .line 1088
    iput p1, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    #@2
    .line 1089
    iput p2, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    #@4
    .line 1087
    return-void
.end method

.method public setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .locals 7
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "xOffset"    # F
    .param p3, "yOffset"    # F

    #@0
    .prologue
    .line 1071
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    #@3
    move-result-object v0

    #@4
    .line 1072
    iget v4, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    #@6
    iget v5, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    #@8
    move-object v1, p1

    #@9
    move v2, p2

    #@a
    move v3, p3

    #@b
    .line 1071
    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 1068
    :goto_0
    return-void

    #@f
    .line 1074
    :catch_0
    move-exception v6

    #@10
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public suggestDesiredDimensions(II)V
    .locals 8
    .param p1, "minimumWidth"    # I
    .param p2, "minimumHeight"    # I

    #@0
    .prologue
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    #@2
    .line 942
    :try_start_0
    const-string/jumbo v4, "sys.max_texture_size"

    #@5
    const/4 v5, 0x0

    #@6
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@9
    move-result v3

    #@a
    .line 947
    .local v3, "maximumTextureSize":I
    :goto_0
    if-lez v3, :cond_1

    #@c
    .line 948
    if-gt p1, v3, :cond_0

    #@e
    .line 949
    if-le p2, v3, :cond_1

    #@10
    .line 950
    :cond_0
    int-to-float v4, p2

    #@11
    int-to-float v5, p1

    #@12
    div-float v0, v4, v5

    #@14
    .line 951
    .local v0, "aspect":F
    if-le p1, p2, :cond_2

    #@16
    .line 952
    move p1, v3

    #@17
    .line 953
    int-to-float v4, p1

    #@18
    mul-float/2addr v4, v0

    #@19
    float-to-double v4, v4

    #@1a
    add-double/2addr v4, v6

    #@1b
    double-to-int p2, v4

    #@1c
    .line 961
    .end local v0    # "aspect":F
    :cond_1
    :goto_1
    :try_start_1
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@1e
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@21
    move-result-object v4

    #@22
    if-nez v4, :cond_3

    #@24
    .line 962
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    #@26
    const-string/jumbo v5, "WallpaperService not running"

    #@29
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 930
    .end local v3    # "maximumTextureSize":I
    :goto_2
    return-void

    #@2d
    .line 943
    :catch_0
    move-exception v2

    #@2e
    .line 944
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    #@2f
    .restart local v3    # "maximumTextureSize":I
    goto :goto_0

    #@30
    .line 955
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "aspect":F
    :cond_2
    move p2, v3

    #@31
    .line 956
    int-to-float v4, p2

    #@32
    div-float/2addr v4, v0

    #@33
    float-to-double v4, v4

    #@34
    add-double/2addr v4, v6

    #@35
    double-to-int p1, v4

    #@36
    goto :goto_1

    #@37
    .line 964
    .end local v0    # "aspect":F
    :cond_3
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #@39
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    #@3c
    move-result-object v4

    #@3d
    .line 965
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    #@3f
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    .line 964
    invoke-interface {v4, p1, p2, v5}, Landroid/app/IWallpaperManager;->setDimensionHints(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@46
    goto :goto_2

    #@47
    .line 967
    .end local v3    # "maximumTextureSize":I
    :catch_1
    move-exception v1

    #@48
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method
