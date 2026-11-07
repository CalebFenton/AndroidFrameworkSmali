.class final Landroid/app/DisabledWallpaperManager;
.super Landroid/app/WallpaperManager;
.source "DisabledWallpaperManager.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sInstance:Landroid/app/DisabledWallpaperManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    const-class v0, Landroid/app/DisabledWallpaperManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/DisabledWallpaperManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Landroid/app/WallpaperManager;-><init>()V

    .line 63
    return-void
.end method

.method static blacklist getInstance()Landroid/app/DisabledWallpaperManager;
    .registers 1

    .line 56
    sget-object v0, Landroid/app/DisabledWallpaperManager;->sInstance:Landroid/app/DisabledWallpaperManager;

    if-nez v0, :cond_b

    .line 57
    new-instance v0, Landroid/app/DisabledWallpaperManager;

    invoke-direct {v0}, Landroid/app/DisabledWallpaperManager;-><init>()V

    sput-object v0, Landroid/app/DisabledWallpaperManager;->sInstance:Landroid/app/DisabledWallpaperManager;

    .line 59
    :cond_b
    sget-object v0, Landroid/app/DisabledWallpaperManager;->sInstance:Landroid/app/DisabledWallpaperManager;

    return-object v0
.end method

.method private static blacklist unsupported()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 498
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist unsupportedBoolean()Z
    .registers 1

    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist unsupportedInt()I
    .registers 1

    .line 508
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;I)V
    .registers 4
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .param p3, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 230
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 231
    return-void
.end method

.method public whitelist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 198
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 199
    return-void
.end method

.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V
    .registers 4
    .param p1, "listener"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I

    .line 204
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public whitelist clear()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 484
    return-void
.end method

.method public whitelist clear(I)V
    .registers 2
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 489
    return-void
.end method

.method public whitelist clearWallpaper()V
    .registers 1

    .line 399
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 400
    return-void
.end method

.method public whitelist clearWallpaper(II)V
    .registers 3
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 404
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 405
    return-void
.end method

.method public whitelist clearWallpaperOffsets(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 478
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 479
    return-void
.end method

.method public whitelist forgetLoadedWallpaper()V
    .registers 1

    .line 250
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 251
    return-void
.end method

.method public blacklist getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 129
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getBitmap(Z)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "hardware"    # Z

    .line 134
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getBitmap(ZI)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "hardware"    # Z
    .param p2, "which"    # I

    .line 139
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getBitmapAsUser(IZ)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z

    .line 144
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getBitmapAsUser(IZI)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z
    .param p3, "which"    # I

    .line 149
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z
    .param p3, "which"    # I
    .param p4, "returnDefault"    # Z

    .line 155
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getBitmapCrops(Landroid/graphics/Point;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .registers 5
    .param p1, "bitmapSize"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 182
    .local p2, "displaySizes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .local p3, "cropHints":Ljava/util/Map;, "Ljava/util/Map<Landroid/graphics/Point;Landroid/graphics/Rect;>;"
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public blacklist getBitmapCrops(Ljava/util/List;IZ)Ljava/util/List;
    .registers 5
    .param p2, "which"    # I
    .param p3, "originalBitmap"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;IZ)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 176
    .local p1, "displaySizes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public whitelist getBuiltInDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 87
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getBuiltInDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "which"    # I

    .line 92
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .line 98
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F
    .param p6, "which"    # I

    .line 104
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 3
    .param p1, "imageUri"    # Landroid/net/Uri;

    .line 289
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getDesiredMinimumHeight()I
    .registers 2

    .line 379
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    return v0
.end method

.method public whitelist getDesiredMinimumWidth()I
    .registers 2

    .line 374
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    return v0
.end method

.method public whitelist getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 82
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 114
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public greylist getIWallpaperManager()Landroid/app/IWallpaperManager;
    .registers 2

    .line 67
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method public whitelist getWallpaperColors(I)Landroid/app/WallpaperColors;
    .registers 3
    .param p1, "which"    # I

    .line 219
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperColors;

    return-object v0
.end method

.method public blacklist getWallpaperColors(II)Landroid/app/WallpaperColors;
    .registers 4
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 224
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperColors;

    return-object v0
.end method

.method public blacklist getWallpaperColors(Landroid/graphics/Bitmap;Ljava/util/Map;)Landroid/app/WallpaperColors;
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/app/WallpaperColors;"
        }
    .end annotation

    .line 188
    .local p2, "cropHints":Ljava/util/Map;, "Ljava/util/Map<Landroid/graphics/Point;Landroid/graphics/Rect;>;"
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperColors;

    return-object v0
.end method

.method public whitelist getWallpaperDimAmount()F
    .registers 2

    .line 420
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public whitelist getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "which"    # I

    .line 193
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 240
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist getWallpaperFile(IZ)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "which"    # I
    .param p2, "getCropped"    # Z

    .line 245
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist getWallpaperId(I)I
    .registers 3
    .param p1, "which"    # I

    .line 279
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    return v0
.end method

.method public blacklist getWallpaperIdForUser(II)I
    .registers 4
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 284
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    return v0
.end method

.method public whitelist getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 2

    .line 255
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperInfo;

    return-object v0
.end method

.method public whitelist getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .registers 3
    .param p1, "which"    # I

    .line 264
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperInfo;

    return-object v0
.end method

.method public blacklist getWallpaperInfo(II)Landroid/app/WallpaperInfo;
    .registers 4
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 269
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperInfo;

    return-object v0
.end method

.method public blacklist getWallpaperInfoFile()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 274
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist getWallpaperInfoForUser(I)Landroid/app/WallpaperInfo;
    .registers 3
    .param p1, "userId"    # I

    .line 259
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperInfo;

    return-object v0
.end method

.method public whitelist hasResourceWallpaper(I)Z
    .registers 3
    .param p1, "resid"    # I

    .line 369
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public blacklist isLockscreenLiveWallpaperEnabled()Z
    .registers 2

    .line 72
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist isSetWallpaperAllowed()Z
    .registers 2

    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWallpaperBackupEligible(I)Z
    .registers 3
    .param p1, "which"    # I

    .line 493
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist isWallpaperSupported()Z
    .registers 2

    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist lockScreenWallpaperExists()Z
    .registers 2

    .line 425
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public blacklist peekBitmapDimensions()Landroid/graphics/Rect;
    .registers 2

    .line 160
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist peekBitmapDimensions(I)Landroid/graphics/Rect;
    .registers 3
    .param p1, "which"    # I

    .line 165
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist peekBitmapDimensions(IZ)Landroid/graphics/Rect;
    .registers 4
    .param p1, "which"    # I
    .param p2, "returnDefault"    # Z

    .line 170
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist peekDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 109
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 119
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;)V
    .registers 2
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;

    .line 235
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 236
    return-void
.end method

.method public whitelist removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .registers 2
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;

    .line 209
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 210
    return-void
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;I)V
    .registers 3
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "userId"    # I

    .line 214
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 215
    return-void
.end method

.method public whitelist sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 7
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 458
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 459
    return-void
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)I
    .registers 5
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I
    .registers 6
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I
    .registers 7
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 306
    return-void
.end method

.method public blacklist setBitmapWithCrops(Landroid/graphics/Bitmap;Ljava/util/Map;ZI)I
    .registers 6
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Rect;",
            ">;ZI)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    .local p2, "cropHints":Ljava/util/Map;, "Ljava/util/Map<Landroid/graphics/Point;Landroid/graphics/Rect;>;"
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    return v0
.end method

.method public whitelist setDisplayOffset(Landroid/os/IBinder;II)V
    .registers 4
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 394
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 395
    return-void
.end method

.method public whitelist setDisplayPadding(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 389
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 390
    return-void
.end method

.method public whitelist setResource(II)I
    .registers 4
    .param p1, "resid"    # I
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setResource(I)V
    .registers 2
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 295
    return-void
.end method

.method public whitelist setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I
    .registers 5
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    .registers 6
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setStream(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 337
    return-void
.end method

.method public whitelist setStreamWithCrops(Ljava/io/InputStream;Landroid/util/SparseArray;ZI)I
    .registers 6
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;ZI)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    .local p2, "cropHints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    return v0
.end method

.method public blacklist setStreamWithCrops(Ljava/io/InputStream;Ljava/util/Map;ZI)I
    .registers 6
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Rect;",
            ">;ZI)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    .local p2, "cropHints":Ljava/util/Map;, "Ljava/util/Map<Landroid/graphics/Point;Landroid/graphics/Rect;>;"
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    return v0
.end method

.method public whitelist setWallpaperComponent(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 409
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public blacklist setWallpaperComponent(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 430
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist setWallpaperComponentWithFlags(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "which"    # I

    .line 436
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public blacklist setWallpaperComponentWithFlags(Landroid/content/ComponentName;II)Z
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 442
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist setWallpaperDimAmount(F)V
    .registers 2
    .param p1, "dimAmount"    # F

    .line 415
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 416
    return-void
.end method

.method public whitelist setWallpaperOffsetSteps(FF)V
    .registers 3
    .param p1, "xStep"    # F
    .param p2, "yStep"    # F

    .line 452
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 453
    return-void
.end method

.method public whitelist setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .registers 4
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "xOffset"    # F
    .param p3, "yOffset"    # F

    .line 447
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 448
    return-void
.end method

.method public blacklist setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .registers 3
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "zoom"    # F

    .line 463
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 464
    return-void
.end method

.method public blacklist shouldEnableWideColorGamut()Z
    .registers 2

    .line 77
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist suggestDesiredDimensions(II)V
    .registers 3
    .param p1, "minimumWidth"    # I
    .param p2, "minimumHeight"    # I

    .line 384
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 385
    return-void
.end method

.method public blacklist wallpaperSupportsWcg(I)Z
    .registers 3
    .param p1, "which"    # I

    .line 124
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method
