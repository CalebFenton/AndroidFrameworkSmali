.class public Landroid/app/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$Globals;,
        Landroid/app/WallpaperManager$ColorManagementProxy;,
        Landroid/app/WallpaperManager$FastBitmapDrawable;,
        Landroid/app/WallpaperManager$OnColorsChangedListener;,
        Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;,
        Landroid/app/WallpaperManager$WallpaperSetCompletion;,
        Landroid/app/WallpaperManager$CachedWallpaper;,
        Landroid/app/WallpaperManager$SetWallpaperFlags;,
        Landroid/app/WallpaperManager$ScreenOrientation;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CHANGE_LIVE_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

.field public static final whitelist ACTION_CROP_AND_SET_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

.field public static final whitelist ACTION_LIVE_WALLPAPER_CHOOSER:Ljava/lang/String; = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

.field public static final whitelist COMMAND_DROP:Ljava/lang/String; = "android.home.drop"

.field public static final blacklist COMMAND_FREEZE:Ljava/lang/String; = "android.wallpaper.freeze"

.field public static final blacklist COMMAND_GOING_TO_SLEEP:Ljava/lang/String; = "android.wallpaper.goingtosleep"

.field public static final blacklist COMMAND_KEYGUARD_APPEARING:Ljava/lang/String; = "android.wallpaper.keyguardappearing"

.field public static final blacklist COMMAND_KEYGUARD_GOING_AWAY:Ljava/lang/String; = "android.wallpaper.keyguardgoingaway"

.field public static final blacklist COMMAND_LOCKSCREEN_LAYOUT_CHANGED:Ljava/lang/String; = "android.wallpaper.lockscreen_layout_changed"

.field public static final blacklist COMMAND_LOCKSCREEN_TAP:Ljava/lang/String; = "android.wallpaper.lockscreen_tap"

.field public static final blacklist COMMAND_REAPPLY:Ljava/lang/String; = "android.wallpaper.reapply"

.field public static final whitelist COMMAND_SECONDARY_TAP:Ljava/lang/String; = "android.wallpaper.secondaryTap"

.field public static final whitelist COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field public static final blacklist COMMAND_UNFREEZE:Ljava/lang/String; = "android.wallpaper.unfreeze"

.field public static final blacklist COMMAND_WAKING_UP:Ljava/lang/String; = "android.wallpaper.wakingup"

.field private static final greylist-max-o DEBUG:Z = false

.field public static final blacklist EXTRA_FROM_FOREGROUND_APP:Ljava/lang/String; = "android.service.wallpaper.extra.FROM_FOREGROUND_APP"

.field public static final whitelist EXTRA_LIVE_WALLPAPER_COMPONENT:Ljava/lang/String; = "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

.field public static final greylist-max-o EXTRA_NEW_WALLPAPER_ID:Ljava/lang/String; = "android.service.wallpaper.extra.ID"

.field public static final blacklist EXTRA_WHICH_WALLPAPER_CHANGED:Ljava/lang/String; = "android.service.wallpaper.extra.WHICH_WALLPAPER_CHANGED"

.field public static final whitelist FLAG_LOCK:I = 0x2

.field public static final whitelist FLAG_SYSTEM:I = 0x1

.field private static final blacklist LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

.field public static final blacklist ORIENTATION_LANDSCAPE:I = 0x1

.field public static final blacklist ORIENTATION_PORTRAIT:I = 0x0

.field public static final blacklist ORIENTATION_SQUARE_LANDSCAPE:I = 0x3

.field public static final blacklist ORIENTATION_SQUARE_PORTRAIT:I = 0x2

.field public static final blacklist ORIENTATION_UNKNOWN:I = -0x1

.field private static final greylist-max-o PROP_LOCK_WALLPAPER:Ljava/lang/String; = "ro.config.lock_wallpaper"

.field private static final greylist-max-o PROP_WALLPAPER:Ljava/lang/String; = "ro.config.wallpaper"

.field private static final greylist-max-o PROP_WALLPAPER_COMPONENT:Ljava/lang/String; = "ro.config.wallpaper_component"

.field static final blacklist RETURN_DEFAULT_ON_SECURITY_EXCEPTION:J = 0xe4ad173L

.field private static greylist-max-o TAG:Ljava/lang/String; = null

.field static final blacklist THROW_ON_SECURITY_EXCEPTION:J = 0xe2815daL

.field private static final blacklist VALUE_CMF_COLOR:Ljava/lang/String;

.field private static final blacklist WALLPAPER_CMF_PATH:Ljava/lang/String; = "/wallpaper/image/"

.field public static final whitelist WALLPAPER_PREVIEW_META_DATA:Ljava/lang/String; = "android.wallpaper.preview"

.field private static greylist sGlobals:Landroid/app/WallpaperManager$Globals;

.field private static blacklist sIsMultiCropEnabled:Ljava/lang/Boolean;

.field private static final greylist-max-o sSync:Ljava/lang/Object;


# instance fields
.field private final blacklist mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mWallpaperXStep:F

.field private greylist-max-o mWallpaperYStep:F

.field private final blacklist mWcgEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;
    .registers 1

    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckExactlyOneWallpaperFlagSet(I)V
    .registers 1

    invoke-static {p0}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 137
    const-string v0, "WallpaperManager"

    sput-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    .line 158
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Landroid/app/WallpaperManager;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 168
    nop

    .line 169
    const-string/jumbo v0, "ro.boot.hardware.color"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/WallpaperManager;->VALUE_CMF_COLOR:Ljava/lang/String;

    .line 439
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    .line 445
    const/4 v0, 0x0

    sput-object v0, Landroid/app/WallpaperManager;->sIsMultiCropEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 157
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 967
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 968
    iput-object v0, p0, Landroid/app/WallpaperManager;->mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 969
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WallpaperManager;->mWcgEnabled:Z

    .line 970
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/app/IWallpaperManager;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p1, "service"    # Landroid/app/IWallpaperManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 157
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 955
    iput-object p2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 956
    if-eqz p1, :cond_14

    .line 957
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/app/WallpaperManager;->initGlobals(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V

    .line 960
    :cond_14
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 961
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    iput-boolean v0, p0, Landroid/app/WallpaperManager;->mWcgEnabled:Z

    .line 962
    new-instance v0, Landroid/app/WallpaperManager$ColorManagementProxy;

    invoke-direct {v0, p2}, Landroid/app/WallpaperManager$ColorManagementProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/WallpaperManager;->mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 963
    return-void
.end method

.method private static blacklist checkExactlyOneWallpaperFlagSet(I)V
    .registers 3
    .param p0, "which"    # I

    .line 3515
    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    goto :goto_f

    .line 3518
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3516
    :cond_f
    :goto_f
    return-void
.end method

.method private greylist-max-o copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .registers 3
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2521
    invoke-static {p1, p2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 2522
    return-void
.end method

.method public static blacklist getCmfDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 3446
    const/4 v0, 0x0

    .line 3447
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 3449
    .local v1, "cmfWallpaperMap":[Ljava/lang/String;
    if-eqz v1, :cond_47

    array-length v2, v1

    if-lez v2, :cond_47

    .line 3450
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_47

    aget-object v5, v1, v4

    .line 3452
    .local v5, "entry":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 3453
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3454
    .local v6, "cmfWallpaper":[Ljava/lang/String;
    if-eqz v6, :cond_44

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_44

    sget-object v7, Landroid/app/WallpaperManager;->VALUE_CMF_COLOR:Ljava/lang/String;

    aget-object v8, v6, v3

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    const/4 v7, 0x1

    aget-object v8, v6, v7

    .line 3455
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_44

    .line 3456
    aget-object v2, v6, v7

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3457
    goto :goto_47

    .line 3450
    .end local v5    # "entry":Ljava/lang/String;
    .end local v6    # "cmfWallpaper":[Ljava/lang/String;
    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 3463
    :cond_47
    :goto_47
    invoke-static {p0, v0}, Landroid/app/WallpaperManager;->isComponentExist(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 3464
    const/4 v0, 0x0

    .line 3467
    :cond_4e
    if-nez v0, :cond_55

    invoke-static {p0}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_56

    :cond_55
    move-object v2, v0

    :goto_56
    return-object v2
.end method

.method private static blacklist getCmfWallpaperPath()Ljava/lang/String;
    .registers 2

    .line 3407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wallpaper/image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "default_wallpaper_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/WallpaperManager;->VALUE_CMF_COLOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDefaultSystemWallpaperFile()Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 3371
    invoke-static {}, Landroid/app/WallpaperManager;->getDefaultSystemWallpaperPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3372
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3373
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 3375
    const/high16 v3, 0x10000000

    :try_start_21
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_25} :catch_26

    return-object v0

    .line 3376
    :catch_26
    move-exception v3

    .line 3380
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :cond_27
    goto :goto_8

    .line 3381
    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getDefaultSystemWallpaperPaths()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3403
    const-string/jumbo v0, "ro.config.wallpaper"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/WallpaperManager;->getCmfWallpaperPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 3418
    const/4 v0, 0x0

    .line 3420
    .local v0, "cn":Landroid/content/ComponentName;
    const-string/jumbo v1, "ro.config.wallpaper_component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3421
    .local v1, "flat":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 3422
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3425
    :cond_12
    if-nez v0, :cond_25

    .line 3426
    const v2, 0x104034e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3427
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 3428
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3432
    :cond_25
    invoke-static {p0, v0}, Landroid/app/WallpaperManager;->isComponentExist(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 3433
    const/4 v0, 0x0

    .line 3436
    :cond_2c
    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 976
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private static greylist-max-o getMaxCropRect(IIIIFF)Landroid/graphics/RectF;
    .registers 10
    .param p0, "inWidth"    # I
    .param p1, "inHeight"    # I
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .line 1293
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1295
    .local v0, "cropRect":Landroid/graphics/RectF;
    int-to-float v1, p0

    int-to-float v2, p1

    div-float/2addr v1, v2

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_25

    .line 1296
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1297
    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1298
    int-to-float v1, p2

    int-to-float v2, p1

    int-to-float v3, p3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 1299
    .local v1, "cropWidth":F
    int-to-float v2, p0

    sub-float/2addr v2, v1

    mul-float/2addr v2, p4

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1300
    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 1301
    .end local v1    # "cropWidth":F
    goto :goto_39

    .line 1302
    :cond_25
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1303
    int-to-float v1, p0

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1304
    int-to-float v1, p3

    int-to-float v2, p0

    int-to-float v3, p2

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 1305
    .local v1, "cropHeight":F
    int-to-float v2, p1

    sub-float/2addr v2, v1

    mul-float/2addr v2, p5

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1306
    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 1308
    .end local v1    # "cropHeight":F
    :goto_39
    return-object v0
.end method

.method public static blacklist getOrientation(Landroid/graphics/Point;)I
    .registers 3
    .param p0, "screenSize"    # Landroid/graphics/Point;

    .line 397
    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 399
    .local v0, "ratio":F
    const v1, 0x3faaaaab

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_21

    .line 400
    :cond_10
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_18

    const/4 v1, 0x3

    goto :goto_21

    .line 401
    :cond_18
    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_20

    const/4 v1, 0x2

    goto :goto_21

    .line 402
    :cond_20
    const/4 v1, 0x0

    .line 399
    :goto_21
    return v1
.end method

.method public static blacklist getRotatedOrientation(I)I
    .registers 2
    .param p0, "orientation"    # I

    .line 410
    packed-switch p0, :pswitch_data_e

    .line 415
    const/4 v0, -0x1

    return v0

    .line 414
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 413
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 412
    :pswitch_9
    const/4 v0, 0x0

    return v0

    .line 411
    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist getWallpaperFile(IIZ)Landroid/os/ParcelFileDescriptor;
    .registers 13
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "getCropped"    # Z

    .line 1939
    invoke-static {p1}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    .line 1941
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 1946
    :try_start_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    .line 1947
    .local v6, "outParams":Landroid/os/Bundle;
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1948
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_23} :catch_6b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_23} :catch_32

    .line 1947
    const/4 v4, 0x0

    move v5, p1

    move v7, p2

    move v8, p3

    .end local p1    # "which":I
    .end local p2    # "userId":I
    .end local p3    # "getCropped":Z
    .local v5, "which":I
    .local v7, "userId":I
    .local v8, "getCropped":Z
    :try_start_27
    invoke-interface/range {v1 .. v8}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2b} :catch_2f
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_2b} :catch_2c

    return-object p1

    .line 1952
    .end local v6    # "outParams":Landroid/os/Bundle;
    :catch_2c
    move-exception v0

    move-object p1, v0

    goto :goto_37

    .line 1950
    :catch_2f
    move-exception v0

    move-object p1, v0

    goto :goto_70

    .line 1952
    .end local v5    # "which":I
    .end local v7    # "userId":I
    .end local v8    # "getCropped":Z
    .restart local p1    # "which":I
    .restart local p2    # "userId":I
    .restart local p3    # "getCropped":Z
    :catch_32
    move-exception v0

    move v5, p1

    move v7, p2

    move v8, p3

    move-object p1, v0

    .line 1953
    .end local p2    # "userId":I
    .end local p3    # "getCropped":Z
    .restart local v5    # "which":I
    .restart local v7    # "userId":I
    .restart local v8    # "getCropped":Z
    .local p1, "e":Ljava/lang/SecurityException;
    :goto_37
    const-wide/32 p2, 0xe4ad173

    invoke-static {p2, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p2

    if-eqz p2, :cond_55

    .line 1954
    const-wide/32 p2, 0xe2815da

    invoke-static {p2, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p2

    if-nez p2, :cond_55

    .line 1955
    sget-object p2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string p3, "No permission to access wallpaper, returning default wallpaper file to avoid crashing legacy app."

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    invoke-static {}, Landroid/app/WallpaperManager;->getDefaultSystemWallpaperFile()Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    return-object p2

    .line 1959
    :cond_55
    iget-object p2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p3, 0x1b

    if-ge p2, p3, :cond_6a

    .line 1960
    sget-object p2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string p3, "No permission to access wallpaper, suppressing exception to avoid crashing legacy app."

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    const/4 p2, 0x0

    return-object p2

    .line 1964
    :cond_6a
    throw p1

    .line 1950
    .end local v5    # "which":I
    .end local v7    # "userId":I
    .end local v8    # "getCropped":Z
    .local p1, "which":I
    .restart local p2    # "userId":I
    .restart local p3    # "getCropped":Z
    :catch_6b
    move-exception v0

    move v5, p1

    move v7, p2

    move v8, p3

    move-object p1, v0

    .line 1951
    .end local p2    # "userId":I
    .end local p3    # "getCropped":Z
    .restart local v5    # "which":I
    .restart local v7    # "userId":I
    .restart local v8    # "getCropped":Z
    .local p1, "e":Landroid/os/RemoteException;
    :goto_70
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 1942
    .end local v5    # "which":I
    .end local v7    # "userId":I
    .end local v8    # "getCropped":Z
    .local p1, "which":I
    .restart local p2    # "userId":I
    .restart local p3    # "getCropped":Z
    :cond_75
    move v5, p1

    move v7, p2

    .end local p1    # "which":I
    .end local p2    # "userId":I
    .restart local v5    # "which":I
    .restart local v7    # "userId":I
    sget-object p1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string p2, "WallpaperService not running"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Landroid/os/DeadSystemException;

    invoke-direct {p2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static blacklist getWallpaperInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 3385
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 3386
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3387
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3389
    :try_start_11
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_17

    return-object v1

    .line 3390
    :catch_17
    move-exception v1

    .line 3395
    .end local v0    # "file":Ljava/io/File;
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method static greylist-max-o initGlobals(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V
    .registers 4
    .param p0, "service"    # Landroid/app/IWallpaperManager;
    .param p1, "looper"    # Landroid/os/Looper;

    .line 946
    sget-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 947
    :try_start_3
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v1, :cond_e

    .line 948
    new-instance v1, Landroid/app/WallpaperManager$Globals;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals;-><init>(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V

    sput-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    .line 950
    :cond_e
    monitor-exit v0

    .line 951
    return-void

    .line 950
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private static blacklist isComponentExist(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cn"    # Landroid/content/ComponentName;

    .line 3471
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3472
    return v0

    .line 3475
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3476
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0xc0000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_11} :catch_14

    .line 3481
    nop

    .line 3482
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x1

    return v0

    .line 3479
    :catch_14
    move-exception v1

    .line 3480
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public static blacklist isMultiCropEnabled()Z
    .registers 1

    .line 1003
    sget-object v0, Landroid/app/WallpaperManager;->sIsMultiCropEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 1004
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->multiCrop()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/app/WallpaperManager;->sIsMultiCropEnabled:Ljava/lang/Boolean;

    .line 1006
    :cond_e
    sget-object v0, Landroid/app/WallpaperManager;->sIsMultiCropEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getBitmapCrops$0(Ljava/util/Map$Entry;)I
    .registers 2
    .param p0, "entry"    # Ljava/util/Map$Entry;

    .line 1707
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getWallpaperColors$1(Ljava/util/Map$Entry;)I
    .registers 2
    .param p0, "entry"    # Ljava/util/Map$Entry;

    .line 1738
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setBitmapWithCrops$2(Landroid/util/SparseArray;Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 4
    .param p0, "crops"    # Landroid/util/SparseArray;
    .param p1, "k"    # Landroid/graphics/Point;
    .param p2, "v"    # Landroid/graphics/Rect;

    .line 2423
    invoke-static {p1}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$setStreamWithCrops$3(Landroid/util/SparseArray;Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 4
    .param p0, "crops"    # Landroid/util/SparseArray;
    .param p1, "k"    # Landroid/graphics/Point;
    .param p2, "v"    # Landroid/graphics/Rect;

    .line 2636
    invoke-static {p1}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static greylist-max-r openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 3346
    const-string/jumbo v0, "ro.config.wallpaper"

    .line 3347
    .local v0, "whichProp":Ljava/lang/String;
    const v1, 0x10802fb

    .line 3348
    .local v1, "defaultResId":I
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3349
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/app/WallpaperManager;->getWallpaperInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 3350
    .local v3, "wallpaperInputStream":Ljava/io/InputStream;
    if-eqz v3, :cond_11

    .line 3351
    return-object v3

    .line 3353
    :cond_11
    invoke-static {}, Landroid/app/WallpaperManager;->getCmfWallpaperPath()Ljava/lang/String;

    move-result-object v4

    .line 3354
    .local v4, "cmfPath":Ljava/lang/String;
    invoke-static {v4}, Landroid/app/WallpaperManager;->getWallpaperInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 3355
    .local v5, "cmfWallpaperInputStream":Ljava/io/InputStream;
    if-eqz v5, :cond_1c

    .line 3356
    return-object v5

    .line 3359
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_24} :catch_25

    return-object v6

    .line 3360
    :catch_25
    move-exception v6

    .line 3363
    const/4 v6, 0x0

    return-object v6
.end method

.method private blacklist setBitmapWithCrops(Landroid/graphics/Bitmap;Landroid/util/SparseArray;ZII)I
    .registers 18
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;ZII)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2430
    .local p2, "cropHints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 2434
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2435
    .local v1, "size":I
    new-array v5, v1, [I

    .line 2436
    .local v5, "screenOrientations":[I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2437
    .local v6, "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v1, :cond_2b

    .line 2438
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v5, v0

    .line 2439
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 2440
    .local v2, "cropHint":Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/app/WallpaperManager;->validateRect(Landroid/graphics/Rect;)V

    .line 2441
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2437
    .end local v2    # "cropHint":Landroid/graphics/Rect;
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2443
    .end local v0    # "i":I
    :cond_2b
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 2444
    .local v8, "result":Landroid/os/Bundle;
    new-instance v10, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v10, p0}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 2446
    .local v10, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :try_start_35
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2447
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2446
    const/4 v3, 0x0

    move v7, p3

    move/from16 v9, p4

    move/from16 v11, p5

    invoke-interface/range {v2 .. v11}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;[ILjava/util/List;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_4b} :catch_75

    move-object v2, v0

    .line 2449
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_6c

    .line 2450
    const/4 v3, 0x0

    .line 2452
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_4f
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v3, v0

    .line 2453
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p1, v0, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2454
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 2455
    invoke-virtual {v10}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_62
    .catchall {:try_start_4f .. :try_end_62} :catchall_66

    .line 2457
    :try_start_62
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2458
    goto :goto_6c

    .line 2457
    :catchall_66
    move-exception v0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2458
    nop

    .end local v1    # "size":I
    .end local v5    # "screenOrientations":[I
    .end local v6    # "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v8    # "result":Landroid/os/Bundle;
    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "fullImage":Landroid/graphics/Bitmap;
    .end local p2    # "cropHints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .end local p3    # "allowBackup":Z
    .end local p4    # "which":I
    .end local p5    # "userId":I
    throw v0
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6c} :catch_75

    .line 2462
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "size":I
    .restart local v5    # "screenOrientations":[I
    .restart local v6    # "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .restart local v8    # "result":Landroid/os/Bundle;
    .restart local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "fullImage":Landroid/graphics/Bitmap;
    .restart local p2    # "cropHints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .restart local p3    # "allowBackup":Z
    .restart local p4    # "which":I
    .restart local p5    # "userId":I
    :cond_6c
    :goto_6c
    nop

    .line 2463
    const-string v0, "android.service.wallpaper.extra.ID"

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 2460
    :catch_75
    move-exception v0

    .line 2461
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2431
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "size":I
    .end local v5    # "screenOrientations":[I
    .end local v6    # "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v8    # "result":Landroid/os/Bundle;
    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :cond_7b
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final greylist-max-o validateRect(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 2488
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 2489
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "visibleCrop rectangle must be valid and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2491
    :cond_12
    :goto_12
    return-void
.end method


# virtual methods
.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;I)V
    .registers 13
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

    .line 1880
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 1881
    .local v1, "region":Landroid/graphics/RectF;
    sget-object v2, Landroid/app/WallpaperManager;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1885
    .end local v1    # "region":Landroid/graphics/RectF;
    goto :goto_4

    .line 1882
    .restart local v1    # "region":Landroid/graphics/RectF;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regions must be within bounds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/WallpaperManager;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1886
    .end local v1    # "region":Landroid/graphics/RectF;
    :cond_34
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1887
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v8

    .line 1886
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .end local p1    # "callback":Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .end local p2    # "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local p3    # "which":I
    .local v4, "callback":Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .local v5, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .local v6, "which":I
    invoke-virtual/range {v3 .. v8}, Landroid/app/WallpaperManager$Globals;->addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;III)V

    .line 1888
    return-void
.end method

.method public whitelist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1800
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V

    .line 1801
    return-void
.end method

.method public greylist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V
    .registers 6
    .param p1, "listener"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I

    .line 1814
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/app/WallpaperManager$Globals;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;II)V

    .line 1815
    return-void
.end method

.method public whitelist clear()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3302
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->clear(I)V

    .line 3303
    return-void
.end method

.method public whitelist clear(I)V
    .registers 3
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3327
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 3328
    return-void
.end method

.method public whitelist clearWallpaper()V
    .registers 3

    .line 2914
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 2915
    return-void
.end method

.method public whitelist clearWallpaper(II)V
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2941
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2946
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_19

    .line 2949
    nop

    .line 2950
    return-void

    .line 2947
    :catch_19
    move-exception v0

    .line 2948
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2942
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist clearWallpaperOffsets(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 3282
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_15

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    move-object v1, p1

    .end local p1    # "windowToken":Landroid/os/IBinder;
    .local v1, "windowToken":Landroid/os/IBinder;
    :try_start_d
    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_12

    .line 3286
    nop

    .line 3287
    return-void

    .line 3284
    :catch_12
    move-exception v0

    move-object p1, v0

    goto :goto_18

    .end local v1    # "windowToken":Landroid/os/IBinder;
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    :catch_15
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    .line 3285
    .restart local v1    # "windowToken":Landroid/os/IBinder;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_18
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist forgetLoadedWallpaper()V
    .registers 2

    .line 1976
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 1977
    return-void
.end method

.method public greylist getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 1505
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public greylist getBitmap(Z)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "hardware"    # Z

    .line 1517
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBitmap(ZI)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "hardware"    # Z
    .param p2, "which"    # I

    .line 1530
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBitmapAsUser(IZ)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z

    .line 1539
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v6

    .line 1540
    .local v6, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move v4, p1

    move v5, p2

    .end local p1    # "userId":I
    .end local p2    # "hardware":Z
    .local v4, "userId":I
    .local v5, "hardware":Z
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getBitmapAsUser(IZI)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z
    .param p3, "which"    # I

    .line 1552
    const/4 v0, 0x2

    if-eq p3, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 1553
    .local v0, "returnDefault":Z
    :goto_6
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z
    .param p3, "which"    # I
    .param p4, "returnDefault"    # Z

    .line 1567
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v6

    .line 1568
    .local v6, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    move v4, p1

    move v5, p2

    move v3, p3

    move v2, p4

    .end local p1    # "userId":I
    .end local p2    # "hardware":Z
    .end local p3    # "which":I
    .end local p4    # "returnDefault":Z
    .local v2, "returnDefault":Z
    .local v3, "which":I
    .local v4, "userId":I
    .local v5, "hardware":Z
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getBitmapCrops(Landroid/graphics/Point;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .registers 8
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

    .line 1704
    .local p2, "displaySizes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .local p3, "cropHints":Ljava/util/Map;, "Ljava/util/Map<Landroid/graphics/Point;Landroid/graphics/Rect;>;"
    if-nez p3, :cond_7

    :try_start_2
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    move-result-object v0

    move-object p3, v0

    .line 1705
    :cond_7
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1706
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/graphics/Point;Landroid/graphics/Rect;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/app/WallpaperManager$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/app/WallpaperManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 1707
    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 1708
    .local v1, "screenOrientations":[I
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/app/WallpaperManager$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Landroid/app/WallpaperManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v2

    .line 1709
    .local v2, "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    invoke-interface {v3, p1, p2, v1, v2}, Landroid/app/IWallpaperManager;->getFutureBitmapCrops(Landroid/graphics/Point;Ljava/util/List;[ILjava/util/List;)Ljava/util/List;

    move-result-object v3
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_37} :catch_38

    return-object v3

    .line 1711
    .end local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/graphics/Point;Landroid/graphics/Rect;>;>;"
    .end local v1    # "screenOrientations":[I
    .end local v2    # "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    :catch_38
    move-exception v0

    .line 1712
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getBitmapCrops(Ljava/util/List;IZ)Ljava/util/List;
    .registers 9
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

    .line 1668
    .local p1, "displaySizes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-static {p2}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    .line 1670
    :try_start_3
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1671
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1670
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/IWallpaperManager;->getBitmapCrops(Ljava/util/List;IZI)Ljava/util/List;

    move-result-object v0

    .line 1672
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    if-eqz v0, :cond_16

    return-object v0

    .line 1677
    :cond_16
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Landroid/app/WallpaperManager;->peekBitmapDimensions(IZ)Landroid/graphics/Rect;

    move-result-object v1

    .line 1678
    .local v1, "bitmapDimensions":Landroid/graphics/Rect;
    if-nez v1, :cond_22

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 1679
    :cond_22
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 1680
    .local v2, "bitmapSize":Landroid/graphics/Point;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/app/WallpaperManager;->getBitmapCrops(Landroid/graphics/Point;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_34} :catch_35

    return-object v3

    .line 1682
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v1    # "bitmapDimensions":Landroid/graphics/Rect;
    .end local v2    # "bitmapSize":Landroid/graphics/Point;
    :catch_35
    move-exception v0

    .line 1683
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getBuiltInDrawable()Landroid/graphics/drawable/Drawable;
    .registers 8

    .line 1105
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getBuiltInDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "which"    # I

    .line 1117
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v6, p1

    .end local p1    # "which":I
    .local v6, "which":I
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;
    .registers 13
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .line 1136
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "outWidth":I
    .end local p2    # "outHeight":I
    .end local p3    # "scaleToFit":Z
    .end local p4    # "horizontalAlignment":F
    .end local p5    # "verticalAlignment":F
    .local v1, "outWidth":I
    .local v2, "outHeight":I
    .local v3, "scaleToFit":Z
    .local v4, "horizontalAlignment":F
    .local v5, "verticalAlignment":F
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;
    .registers 27
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F
    .param p6, "which"    # I

    .line 1158
    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p6

    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    if-eqz v4, :cond_1dc

    .line 1163
    invoke-static {v3}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    .line 1165
    iget-object v4, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1166
    .local v4, "resources":Landroid/content/res/Resources;
    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v6, p4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 1167
    .end local p4    # "horizontalAlignment":F
    .local v13, "horizontalAlignment":F
    move/from16 v7, p5

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 1169
    .end local p5    # "verticalAlignment":F
    .local v14, "verticalAlignment":F
    iget-object v5, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v5

    .line 1170
    .local v5, "wpStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    if-nez v5, :cond_3a

    .line 1174
    return-object v6

    .line 1176
    :cond_3a
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1177
    .local v7, "is":Ljava/io/InputStream;
    if-lez v0, :cond_1cf

    if-gtz v2, :cond_48

    move-object/from16 v17, v5

    move-object v3, v6

    goto/16 :goto_1d2

    .line 1185
    :cond_48
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1186
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v15, 0x1

    iput-boolean v15, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1187
    invoke-static {v7, v6, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1188
    iget v10, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v10, :cond_1c4

    iget v10, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v10, :cond_1c4

    .line 1189
    iget v10, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1190
    .local v10, "inWidth":I
    iget v11, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1199
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v11, "inHeight":I
    new-instance v9, Ljava/io/BufferedInputStream;

    iget-object v12, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v12, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v7, v9

    .line 1203
    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1204
    .end local p1    # "outWidth":I
    .local v9, "outWidth":I
    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1205
    .end local p2    # "outHeight":I
    .local v12, "outHeight":I
    if-eqz p3, :cond_81

    .line 1206
    move/from16 v19, v11

    move v11, v9

    move v9, v10

    move/from16 v10, v19

    .local v9, "inWidth":I
    .local v10, "inHeight":I
    .local v11, "outWidth":I
    invoke-static/range {v9 .. v14}, Landroid/app/WallpaperManager;->getMaxCropRect(IIIIFF)Landroid/graphics/RectF;

    move-result-object v0

    move-object v15, v0

    .local v0, "cropRectF":Landroid/graphics/RectF;
    goto :goto_98

    .line 1209
    .end local v0    # "cropRectF":Landroid/graphics/RectF;
    .local v9, "outWidth":I
    .local v10, "inWidth":I
    .local v11, "inHeight":I
    :cond_81
    move/from16 v19, v11

    move v11, v9

    move v9, v10

    move/from16 v10, v19

    .local v9, "inWidth":I
    .local v10, "inHeight":I
    .local v11, "outWidth":I
    sub-int v0, v9, v11

    int-to-float v0, v0

    mul-float/2addr v0, v13

    .line 1210
    .local v0, "left":F
    int-to-float v2, v11

    add-float/2addr v2, v0

    .line 1211
    .local v2, "right":F
    sub-int v8, v10, v12

    int-to-float v8, v8

    mul-float/2addr v8, v14

    .line 1212
    .local v8, "top":F
    int-to-float v6, v12

    add-float/2addr v6, v8

    .line 1213
    .local v6, "bottom":F
    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15, v0, v8, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1215
    .end local v0    # "left":F
    .end local v2    # "right":F
    .end local v6    # "bottom":F
    .end local v8    # "top":F
    .local v15, "cropRectF":Landroid/graphics/RectF;
    :goto_98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v0

    .line 1216
    .local v2, "roundedTrueCrop":Landroid/graphics/Rect;
    invoke-virtual {v15, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 1218
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1b5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_b5

    move-object/from16 p2, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    goto/16 :goto_1bb

    .line 1224
    :cond_b5
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v11

    .line 1225
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/2addr v6, v12

    .line 1224
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1228
    .local v6, "scaleDownSampleSize":I
    const/4 v8, 0x0

    .line 1230
    .local v8, "decoder":Landroid/graphics/BitmapRegionDecoder;
    move-object/from16 v17, v5

    const/4 v5, 0x1

    .end local v5    # "wpStream":Ljava/io/InputStream;
    .local v17, "wpStream":Ljava/io/InputStream;
    :try_start_c7
    invoke-static {v7, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_cb} :catch_cd

    move-object v8, v0

    .line 1233
    goto :goto_d7

    .line 1231
    :catch_cd
    move-exception v0

    .line 1232
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    move-object/from16 p1, v0

    .end local v0    # "e":Ljava/io/IOException;
    .local p1, "e":Ljava/io/IOException;
    const-string v0, "cannot open region decoder for default wallpaper"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    .end local p1    # "e":Ljava/io/IOException;
    :goto_d7
    const/4 v0, 0x0

    .line 1236
    .local v0, "crop":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_ee

    .line 1238
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1239
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v18, v7

    const/4 v7, 0x1

    .end local v7    # "is":Ljava/io/InputStream;
    .local v18, "is":Ljava/io/InputStream;
    if-le v6, v7, :cond_e6

    .line 1240
    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1242
    :cond_e6
    invoke-virtual {v8, v2, v5}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1243
    invoke-virtual {v8}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_f0

    .line 1236
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :cond_ee
    move-object/from16 v18, v7

    .line 1246
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    :goto_f0
    if-nez v0, :cond_135

    .line 1249
    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v7, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v7, v5

    .line 1250
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 1251
    .local v5, "fullSize":Landroid/graphics/Bitmap;
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object/from16 p1, v18

    .line 1252
    .local p1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    if-le v6, v1, :cond_10e

    .line 1253
    move-object/from16 v1, p1

    .end local p1    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_110

    .line 1252
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_10e
    move-object/from16 v1, p1

    .line 1255
    .end local p1    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_110
    const/4 v3, 0x0

    invoke-static {v7, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1256
    if-eqz v5, :cond_12e

    .line 1257
    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 p1, v0

    .end local v0    # "crop":Landroid/graphics/Bitmap;
    .local p1, "crop":Landroid/graphics/Bitmap;
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 1258
    move-object/from16 v18, v1

    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v18, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1259
    move-object/from16 p2, v2

    .end local v2    # "roundedTrueCrop":Landroid/graphics/Rect;
    .local p2, "roundedTrueCrop":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1257
    invoke-static {v5, v3, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local p1    # "crop":Landroid/graphics/Bitmap;
    .restart local v0    # "crop":Landroid/graphics/Bitmap;
    goto :goto_13b

    .line 1256
    .end local v18    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p2    # "roundedTrueCrop":Landroid/graphics/Rect;
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "roundedTrueCrop":Landroid/graphics/Rect;
    :cond_12e
    move-object/from16 p1, v0

    move-object/from16 v18, v1

    move-object/from16 p2, v2

    .end local v0    # "crop":Landroid/graphics/Bitmap;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "roundedTrueCrop":Landroid/graphics/Rect;
    .restart local v18    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p1    # "crop":Landroid/graphics/Bitmap;
    .restart local p2    # "roundedTrueCrop":Landroid/graphics/Rect;
    goto :goto_13b

    .line 1246
    .end local v5    # "fullSize":Landroid/graphics/Bitmap;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local p1    # "crop":Landroid/graphics/Bitmap;
    .end local p2    # "roundedTrueCrop":Landroid/graphics/Rect;
    .restart local v0    # "crop":Landroid/graphics/Bitmap;
    .restart local v2    # "roundedTrueCrop":Landroid/graphics/Rect;
    .local v18, "is":Ljava/io/InputStream;
    :cond_135
    move-object/from16 p1, v0

    move-object/from16 p2, v2

    .end local v0    # "crop":Landroid/graphics/Bitmap;
    .end local v2    # "roundedTrueCrop":Landroid/graphics/Rect;
    .restart local p1    # "crop":Landroid/graphics/Bitmap;
    .restart local p2    # "roundedTrueCrop":Landroid/graphics/Rect;
    move-object/from16 v7, v18

    .line 1263
    .end local v18    # "is":Ljava/io/InputStream;
    .end local p1    # "crop":Landroid/graphics/Bitmap;
    .restart local v0    # "crop":Landroid/graphics/Bitmap;
    .restart local v7    # "is":Ljava/io/InputStream;
    :goto_13b
    if-nez v0, :cond_146

    .line 1264
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "cannot decode default wallpaper"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    const/4 v3, 0x0

    return-object v3

    .line 1269
    :cond_146
    if-lez v11, :cond_1ab

    if-lez v12, :cond_1ab

    .line 1270
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v11, :cond_15c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, v12, :cond_157

    goto :goto_15c

    :cond_157
    move/from16 p1, v6

    move-object/from16 p4, v7

    goto :goto_1af

    .line 1271
    :cond_15c
    :goto_15c
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1272
    .local v1, "m":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move/from16 p1, v6

    const/4 v6, 0x0

    .end local v6    # "scaleDownSampleSize":I
    .local p1, "scaleDownSampleSize":I
    invoke-direct {v2, v6, v6, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1273
    .local v2, "cropRect":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v5, v11

    move-object/from16 p4, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .local p4, "is":Ljava/io/InputStream;
    int-to-float v7, v12

    invoke-direct {v3, v6, v6, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1274
    .local v3, "returnRect":Landroid/graphics/RectF;
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1275
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    .line 1276
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1275
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1277
    .local v5, "tmp":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1a8

    .line 1278
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1279
    .local v6, "c":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 1280
    .local v7, "p":Landroid/graphics/Paint;
    move-object/from16 v16, v2

    const/4 v2, 0x1

    .end local v2    # "cropRect":Landroid/graphics/RectF;
    .local v16, "cropRect":Landroid/graphics/RectF;
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1281
    invoke-virtual {v6, v0, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1282
    move-object v0, v5

    goto :goto_1af

    .line 1277
    .end local v6    # "c":Landroid/graphics/Canvas;
    .end local v7    # "p":Landroid/graphics/Paint;
    .end local v16    # "cropRect":Landroid/graphics/RectF;
    .restart local v2    # "cropRect":Landroid/graphics/RectF;
    :cond_1a8
    move-object/from16 v16, v2

    .end local v2    # "cropRect":Landroid/graphics/RectF;
    .restart local v16    # "cropRect":Landroid/graphics/RectF;
    goto :goto_1af

    .line 1269
    .end local v1    # "m":Landroid/graphics/Matrix;
    .end local v3    # "returnRect":Landroid/graphics/RectF;
    .end local v5    # "tmp":Landroid/graphics/Bitmap;
    .end local v16    # "cropRect":Landroid/graphics/RectF;
    .end local p1    # "scaleDownSampleSize":I
    .end local p4    # "is":Ljava/io/InputStream;
    .local v6, "scaleDownSampleSize":I
    .local v7, "is":Ljava/io/InputStream;
    :cond_1ab
    move/from16 p1, v6

    move-object/from16 p4, v7

    .line 1286
    .end local v6    # "scaleDownSampleSize":I
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local p1    # "scaleDownSampleSize":I
    .restart local p4    # "is":Ljava/io/InputStream;
    :goto_1af
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    .line 1218
    .end local v0    # "crop":Landroid/graphics/Bitmap;
    .end local v8    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v17    # "wpStream":Ljava/io/InputStream;
    .end local p1    # "scaleDownSampleSize":I
    .end local p2    # "roundedTrueCrop":Landroid/graphics/Rect;
    .end local p4    # "is":Ljava/io/InputStream;
    .local v2, "roundedTrueCrop":Landroid/graphics/Rect;
    .local v5, "wpStream":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :cond_1b5
    move-object/from16 p2, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    .line 1219
    .end local v2    # "roundedTrueCrop":Landroid/graphics/Rect;
    .end local v5    # "wpStream":Ljava/io/InputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v17    # "wpStream":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local p2    # "roundedTrueCrop":Landroid/graphics/Rect;
    :goto_1bb
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "crop has bad values for full size image"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const/4 v3, 0x0

    return-object v3

    .line 1188
    .end local v10    # "inHeight":I
    .end local v11    # "outWidth":I
    .end local v12    # "outHeight":I
    .end local v15    # "cropRectF":Landroid/graphics/RectF;
    .end local v17    # "wpStream":Ljava/io/InputStream;
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v5    # "wpStream":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    .local p1, "outWidth":I
    .local p2, "outHeight":I
    :cond_1c4
    move-object/from16 v17, v5

    move-object v3, v6

    .line 1192
    .end local v5    # "wpStream":Ljava/io/InputStream;
    .restart local v17    # "wpStream":Ljava/io/InputStream;
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "default wallpaper dimensions are 0"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    return-object v3

    .line 1177
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v17    # "wpStream":Ljava/io/InputStream;
    .restart local v5    # "wpStream":Ljava/io/InputStream;
    :cond_1cf
    move-object/from16 v17, v5

    move-object v3, v6

    .line 1178
    .end local v5    # "wpStream":Ljava/io/InputStream;
    .restart local v17    # "wpStream":Ljava/io/InputStream;
    :goto_1d2
    invoke-static {v7, v3, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1179
    .local v1, "fullSize":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3

    .line 1159
    .end local v1    # "fullSize":Landroid/graphics/Bitmap;
    .end local v4    # "resources":Landroid/content/res/Resources;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v13    # "horizontalAlignment":F
    .end local v14    # "verticalAlignment":F
    .end local v17    # "wpStream":Ljava/io/InputStream;
    .local p4, "horizontalAlignment":F
    .restart local p5    # "verticalAlignment":F
    :cond_1dc
    move/from16 v6, p4

    move/from16 v7, p5

    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Landroid/os/DeadSystemException;

    invoke-direct {v3}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;
    .registers 2

    .line 3511
    iget-object v0, p0, Landroid/app/WallpaperManager;->mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

    return-object v0
.end method

.method public whitelist getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 10
    .param p1, "imageUri"    # Landroid/net/Uri;

    .line 2165
    if-eqz p1, :cond_6e

    .line 2169
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 2174
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2175
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2177
    .local v1, "cropAndSetWallpaperIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2180
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2181
    .local v2, "homeIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 2183
    .local v3, "resolvedHome":Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    if-eqz v3, :cond_47

    .line 2184
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2186
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 2188
    .local v5, "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_47

    .line 2189
    return-object v1

    .line 2194
    .end local v5    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_47
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const v6, 0x10402eb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2196
    .local v5, "cropperPackage":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2197
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 2199
    .local v4, "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5e

    .line 2200
    return-object v1

    .line 2204
    :cond_5e
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Cannot use passed URI to set wallpaper; check that the type returned by ContentProvider matches image/*"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2170
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "cropAndSetWallpaperIntent":Landroid/content/Intent;
    .end local v2    # "homeIntent":Landroid/content/Intent;
    .end local v3    # "resolvedHome":Landroid/content/pm/ResolveInfo;
    .end local v4    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "cropperPackage":Ljava/lang/String;
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image URI must be of the content scheme type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2166
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image URI must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDesiredMinimumHeight()I
    .registers 3

    .line 2784
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string v1, "getDesiredMinimumHeight"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 2785
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 2790
    :try_start_f
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->getHeightHint(I)I

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1f} :catch_20

    return v0

    .line 2791
    :catch_20
    move-exception v0

    .line 2792
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2786
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist getDesiredMinimumWidth()I
    .registers 3

    .line 2754
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string v1, "getDesiredMinimumWidth"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 2755
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 2760
    :try_start_f
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->getWidthHint(I)I

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1f} :catch_20

    return v0

    .line 2761
    :catch_20
    move-exception v0

    .line 2762
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2756
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1054
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "which"    # I

    .line 1090
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 1091
    .local v0, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    move v1, v2

    .line 1092
    .local v1, "returnDefault":Z
    :goto_b
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1, p1, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1093
    .local v3, "bm":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_24

    .line 1094
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1095
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1096
    return-object v4

    .line 1098
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_24
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1391
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getFastDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFastDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "which"    # I

    .line 1419
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 1420
    .local v0, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 1421
    .local v1, "returnDefault":Z
    :goto_a
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p1, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1422
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    .line 1423
    new-instance v4, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v4, v2, v3}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager-IA;)V

    return-object v4

    .line 1425
    :cond_1b
    return-object v3
.end method

.method public greylist getIWallpaperManager()Landroid/app/IWallpaperManager;
    .registers 2

    .line 983
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWallpaperColors(I)Landroid/app/WallpaperColors;
    .registers 3
    .param p1, "which"    # I

    .line 1857
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(II)Landroid/app/WallpaperColors;

    move-result-object v0

    return-object v0
.end method

.method public greylist getWallpaperColors(II)Landroid/app/WallpaperColors;
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 1871
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "getWallpaperColors"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 1872
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/WallpaperManager$Globals;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWallpaperColors(Landroid/graphics/Bitmap;Ljava/util/Map;)Landroid/app/WallpaperColors;
    .registers 13
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

    .line 1730
    .local p2, "cropHints":Ljava/util/Map;, "Ljava/util/Map<Landroid/graphics/Point;Landroid/graphics/Rect;>;"
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 1735
    if-nez p2, :cond_f

    :try_start_a
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    move-result-object v0

    move-object p2, v0

    .line 1736
    :cond_f
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1737
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/graphics/Point;Landroid/graphics/Rect;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/app/WallpaperManager$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/app/WallpaperManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 1738
    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 1739
    .local v1, "screenOrientations":[I
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/app/WallpaperManager$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Landroid/app/WallpaperManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v2

    .line 1740
    .local v2, "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 1741
    .local v3, "bitmapSize":Landroid/graphics/Point;
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    invoke-interface {v4, v3, v1, v2}, Landroid/app/IWallpaperManager;->getBitmapCrop(Landroid/graphics/Point;[ILjava/util/List;)Landroid/graphics/Rect;

    move-result-object v4

    .line 1742
    .local v4, "crop":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperDimAmount()F

    move-result v5

    .line 1743
    .local v5, "dimAmount":F
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    .line 1744
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 1743
    invoke-static {p1, v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1745
    .local v6, "croppedBitmap":Landroid/graphics/Bitmap;
    invoke-static {v6, v5}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;

    move-result-object v7
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_64} :catch_65

    .line 1746
    .local v7, "result":Landroid/app/WallpaperColors;
    return-object v7

    .line 1747
    .end local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/graphics/Point;Landroid/graphics/Rect;>;>;"
    .end local v1    # "screenOrientations":[I
    .end local v2    # "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v3    # "bitmapSize":Landroid/graphics/Point;
    .end local v4    # "crop":Landroid/graphics/Rect;
    .end local v5    # "dimAmount":F
    .end local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "result":Landroid/app/WallpaperColors;
    :catch_65
    move-exception v0

    .line 1748
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1731
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6b
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist getWallpaperDimAmount()F
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2995
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 3000
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->getWallpaperDimAmount()F

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 3001
    :catch_13
    move-exception v0

    .line 3002
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2996
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "which"    # I

    .line 1789
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public greylist getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 1915
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->getWallpaperFile(IIZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWallpaperFile(IZ)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "which"    # I
    .param p2, "getCropped"    # Z

    .line 1934
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Landroid/app/WallpaperManager;->getWallpaperFile(IIZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWallpaperId(I)I
    .registers 3
    .param p1, "which"    # I

    .line 2130
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperIdForUser(II)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getWallpaperIdForUser(II)I
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2140
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2144
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->getWallpaperIdForUser(II)I

    move-result v0

    return v0

    .line 2141
    :cond_13
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "which":I
    .end local p2    # "userId":I
    throw v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_25

    .line 2146
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "which":I
    .restart local p2    # "userId":I
    :catch_25
    move-exception v0

    .line 2147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 2

    .line 1998
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getWallpaperInfoForUser(I)Landroid/app/WallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .registers 3
    .param p1, "which"    # I

    .line 2030
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWallpaperInfo(II)Landroid/app/WallpaperInfo;
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2052
    invoke-static {p1}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    .line 2054
    :try_start_3
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2058
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->getWallpaperInfoWithFlags(II)Landroid/app/WallpaperInfo;

    move-result-object v0

    return-object v0

    .line 2055
    :cond_16
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "which":I
    .end local p2    # "userId":I
    throw v0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_28} :catch_28

    .line 2060
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "which":I
    .restart local p2    # "userId":I
    :catch_28
    move-exception v0

    .line 2061
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getWallpaperInfoFile()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 2103
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2108
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->getWallpaperInfoFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return-object v0

    .line 2109
    :catch_19
    move-exception v0

    .line 2110
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2104
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist getWallpaperInfoForUser(I)Landroid/app/WallpaperInfo;
    .registers 3
    .param p1, "userId"    # I

    .line 2009
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/WallpaperManager;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWallpaperInstance(I)Landroid/app/wallpaper/WallpaperInstance;
    .registers 4
    .param p1, "which"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2080
    invoke-static {p1}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    .line 2082
    :try_start_3
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2086
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->getWallpaperInstance(II)Landroid/app/wallpaper/WallpaperInstance;

    move-result-object v0

    return-object v0

    .line 2083
    :cond_1c
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "which":I
    throw v0
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2e} :catch_2e

    .line 2088
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "which":I
    :catch_2e
    move-exception v0

    .line 2089
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasResourceWallpaper(I)Z
    .registers 5
    .param p1, "resid"    # I

    .line 2723
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 2728
    :try_start_8
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2729
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "res:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2730
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IWallpaperManager;->hasNamedWallpaper(Ljava/lang/String;)Z

    move-result v2
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_30} :catch_31

    return v2

    .line 2731
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "name":Ljava/lang/String;
    :catch_31
    move-exception v0

    .line 2732
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2724
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_37
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist isLockscreenLiveWallpaperEnabled()Z
    .registers 2

    .line 994
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isSetWallpaperAllowed()Z
    .registers 3

    .line 3258
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 3263
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return v0

    .line 3264
    :catch_19
    move-exception v0

    .line 3265
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3259
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public greylist-max-o isWallpaperBackupEligible(I)Z
    .registers 6
    .param p1, "which"    # I

    .line 3492
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 3497
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->isWallpaperBackupEligible(II)Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return v0

    .line 3498
    :catch_19
    move-exception v0

    .line 3499
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception querying wallpaper backup eligibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0

    .line 3493
    :cond_38
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist isWallpaperSupported()Z
    .registers 3

    .line 3238
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 3243
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return v0

    .line 3244
    :catch_19
    move-exception v0

    .line 3245
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3239
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist lockScreenWallpaperExists()Z
    .registers 3

    .line 3012
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 3017
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->lockScreenWallpaperExists()Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 3018
    :catch_13
    move-exception v0

    .line 3019
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3013
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist peekBitmapDimensions()Landroid/graphics/Rect;
    .registers 2

    .line 1582
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->peekBitmapDimensions(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public blacklist peekBitmapDimensions(I)Landroid/graphics/Rect;
    .registers 4
    .param p1, "which"    # I

    .line 1609
    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 1610
    .local v0, "returnDefault":Z
    :goto_6
    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->peekBitmapDimensions(IZ)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method public blacklist peekBitmapDimensions(IZ)Landroid/graphics/Rect;
    .registers 6
    .param p1, "which"    # I
    .param p2, "returnDefault"    # Z

    .line 1625
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->multiCrop()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1626
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->peekBitmapDimensionsAsUser(IZI)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 1628
    :cond_11
    invoke-static {p1}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    .line 1629
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1630
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1629
    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/app/WallpaperManager$Globals;->peekWallpaperDimensions(Landroid/content/Context;ZII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public blacklist peekBitmapDimensionsAsUser(IZI)Landroid/graphics/Rect;
    .registers 6
    .param p1, "which"    # I
    .param p2, "returnDefault"    # Z
    .param p3, "userId"    # I

    .line 1643
    invoke-static {p1}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    .line 1644
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p1, p3}, Landroid/app/WallpaperManager$Globals;->peekWallpaperDimensions(Landroid/content/Context;ZII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist peekDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1338
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->peekDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist peekDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "which"    # I

    .line 1361
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1446
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->peekFastDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist peekFastDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "which"    # I

    .line 1467
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->getFastDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;)V
    .registers 6
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;

    .line 1894
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1895
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 1894
    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/app/WallpaperManager$Globals;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;III)V

    .line 1896
    return-void
.end method

.method public whitelist removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;

    .line 1822
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;I)V

    .line 1823
    return-void
.end method

.method public greylist-max-o removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;I)V
    .registers 5
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "userId"    # I

    .line 1833
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/WallpaperManager$Globals;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;II)V

    .line 1834
    return-void
.end method

.method public whitelist sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 15
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 3199
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_13

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "action":Ljava/lang/String;
    .end local p3    # "x":I
    .end local p4    # "y":I
    .end local p5    # "z":I
    .end local p6    # "extras":Landroid/os/Bundle;
    .local v1, "windowToken":Landroid/os/IBinder;
    .local v2, "action":Ljava/lang/String;
    .local v3, "x":I
    .local v4, "y":I
    .local v5, "z":I
    .local v6, "extras":Landroid/os/Bundle;
    :try_start_b
    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    .line 3204
    nop

    .line 3205
    return-void

    .line 3202
    :catch_10
    move-exception v0

    move-object p1, v0

    goto :goto_1b

    .end local v1    # "windowToken":Landroid/os/IBinder;
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v5    # "z":I
    .end local v6    # "extras":Landroid/os/Bundle;
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    .restart local p2    # "action":Ljava/lang/String;
    .restart local p3    # "x":I
    .restart local p4    # "y":I
    .restart local p5    # "z":I
    .restart local p6    # "extras":Landroid/os/Bundle;
    :catch_13
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object p1, v0

    .line 3203
    .end local p2    # "action":Ljava/lang/String;
    .end local p3    # "x":I
    .end local p4    # "y":I
    .end local p5    # "z":I
    .end local p6    # "extras":Landroid/os/Bundle;
    .restart local v1    # "windowToken":Landroid/os/IBinder;
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    .restart local v5    # "z":I
    .restart local v6    # "extras":Landroid/os/Bundle;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
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

    .line 2332
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I

    move-result v0

    return v0
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I
    .registers 12
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2359
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2360
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 2359
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "fullImage":Landroid/graphics/Bitmap;
    .end local p2    # "visibleCropHint":Landroid/graphics/Rect;
    .end local p3    # "allowBackup":Z
    .end local p4    # "which":I
    .local v2, "fullImage":Landroid/graphics/Bitmap;
    .local v3, "visibleCropHint":Landroid/graphics/Rect;
    .local v4, "allowBackup":Z
    .local v5, "which":I
    invoke-virtual/range {v1 .. v6}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I

    move-result p1

    return p1
.end method

.method public greylist-max-p setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I
    .registers 24
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

    .line 2373
    move-object/from16 v7, p2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->multiCrop()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2374
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 2375
    .local v3, "cropMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    if-eqz v7, :cond_13

    const/4 v0, -0x1

    invoke-virtual {v3, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2376
    :cond_13
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/app/WallpaperManager;->setBitmapWithCrops(Landroid/graphics/Bitmap;Landroid/util/SparseArray;ZII)I

    move-result v0

    return v0

    .line 2378
    .end local v3    # "cropMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    :cond_22
    move-object/from16 v1, p0

    invoke-direct {v1, v7}, Landroid/app/WallpaperManager;->validateRect(Landroid/graphics/Rect;)V

    .line 2379
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 2383
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 2384
    .local v14, "result":Landroid/os/Bundle;
    new-instance v0, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v0, v1}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    move-object/from16 v16, v0

    .line 2385
    .local v16, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    if-nez v7, :cond_3f

    const/4 v0, 0x0

    goto :goto_43

    :cond_3f
    invoke-static {v7}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_43
    move-object v12, v0

    .line 2387
    .local v12, "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    :try_start_44
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v8

    iget-object v0, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2388
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    .line 2387
    const/4 v9, 0x0

    const/4 v11, 0x0

    move/from16 v13, p3

    move/from16 v15, p4

    move/from16 v17, p5

    invoke-interface/range {v8 .. v17}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;[ILjava/util/List;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_5c} :catch_90

    move-object v2, v0

    .line 2390
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_85

    .line 2391
    const/4 v3, 0x0

    .line 2393
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_60
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v3, v0

    .line 2394
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_7b

    const/16 v4, 0x5a

    move-object/from16 v5, p1

    :try_start_6c
    invoke-virtual {v5, v0, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2395
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 2396
    invoke-virtual/range {v16 .. v16}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_79

    .line 2398
    :try_start_75
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2399
    goto :goto_87

    .line 2398
    :catchall_79
    move-exception v0

    goto :goto_7e

    :catchall_7b
    move-exception v0

    move-object/from16 v5, p1

    :goto_7e
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2399
    nop

    .end local v12    # "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v14    # "result":Landroid/os/Bundle;
    .end local v16    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "fullImage":Landroid/graphics/Bitmap;
    .end local p2    # "visibleCropHint":Landroid/graphics/Rect;
    .end local p3    # "allowBackup":Z
    .end local p4    # "which":I
    .end local p5    # "userId":I
    throw v0
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_83} :catch_83

    .line 2401
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .restart local v14    # "result":Landroid/os/Bundle;
    .restart local v16    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "fullImage":Landroid/graphics/Bitmap;
    .restart local p2    # "visibleCropHint":Landroid/graphics/Rect;
    .restart local p3    # "allowBackup":Z
    .restart local p4    # "which":I
    .restart local p5    # "userId":I
    :catch_83
    move-exception v0

    goto :goto_93

    .line 2390
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_85
    move-object/from16 v5, p1

    .line 2403
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_87
    nop

    .line 2404
    const-string v0, "android.service.wallpaper.extra.ID"

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 2401
    :catch_90
    move-exception v0

    move-object/from16 v5, p1

    .line 2402
    .local v0, "e":Landroid/os/RemoteException;
    :goto_93
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2380
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v12    # "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v14    # "result":Landroid/os/Bundle;
    .end local v16    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :cond_98
    move-object/from16 v5, p1

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperService not running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2298
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)I

    .line 2299
    return-void
.end method

.method public blacklist setBitmapWithCrops(Landroid/graphics/Bitmap;Ljava/util/Map;ZI)I
    .registers 12
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

    .line 2422
    .local p2, "cropHints":Ljava/util/Map;, "Ljava/util/Map<Landroid/graphics/Point;Landroid/graphics/Rect;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v3, v0

    .line 2423
    .local v3, "crops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    new-instance v0, Landroid/app/WallpaperManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3}, Landroid/app/WallpaperManager$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2424
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    .end local p1    # "fullImage":Landroid/graphics/Bitmap;
    .end local p3    # "allowBackup":Z
    .end local p4    # "which":I
    .local v2, "fullImage":Landroid/graphics/Bitmap;
    .local v4, "allowBackup":Z
    .local v5, "which":I
    invoke-direct/range {v1 .. v6}, Landroid/app/WallpaperManager;->setBitmapWithCrops(Landroid/graphics/Bitmap;Landroid/util/SparseArray;ZII)I

    move-result p1

    return p1
.end method

.method public blacklist setBitmapWithDescription(Landroid/graphics/Bitmap;Landroid/app/wallpaper/WallpaperDescription;ZI)I
    .registers 11
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "description"    # Landroid/app/wallpaper/WallpaperDescription;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2483
    invoke-virtual {p2}, Landroid/app/wallpaper/WallpaperDescription;->getCropHints()Landroid/util/SparseArray;

    move-result-object v2

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2484
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 2483
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    .end local p1    # "fullImage":Landroid/graphics/Bitmap;
    .end local p3    # "allowBackup":Z
    .end local p4    # "which":I
    .local v1, "fullImage":Landroid/graphics/Bitmap;
    .local v3, "allowBackup":Z
    .local v4, "which":I
    invoke-direct/range {v0 .. v5}, Landroid/app/WallpaperManager;->setBitmapWithCrops(Landroid/graphics/Bitmap;Landroid/util/SparseArray;ZII)I

    move-result p1

    return p1
.end method

.method public whitelist setDisplayOffset(Landroid/os/IBinder;II)V
    .registers 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2900
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowSession;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 2905
    nop

    .line 2906
    return-void

    .line 2903
    :catch_9
    move-exception v0

    .line 2904
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDisplayPadding(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 2873
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "setDisplayPadding"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 2875
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 2879
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2880
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 2879
    invoke-interface {v0, p1, v1, v2}, Landroid/app/IWallpaperManager;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V

    .line 2884
    nop

    .line 2885
    return-void

    .line 2876
    :cond_27
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "padding":Landroid/graphics/Rect;
    throw v0
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_39} :catch_39

    .line 2882
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "padding":Landroid/graphics/Rect;
    :catch_39
    move-exception v0

    .line 2883
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setResource(II)I
    .registers 15
    .param p1, "resid"    # I
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2244
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 2248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 2249
    .local v7, "result":Landroid/os/Bundle;
    new-instance v9, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v9, p0}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 2251
    .local v9, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :try_start_13
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-object v11, v0

    .line 2253
    .local v11, "resources":Landroid/content/res/Resources;
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "res:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2254
    invoke-virtual {v11, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2255
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2256
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v10
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_44} :catch_78

    .line 2253
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v8, p2

    .end local p2    # "which":I
    .local v8, "which":I
    :try_start_48
    invoke-interface/range {v1 .. v10}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;[ILjava/util/List;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4c} :catch_75

    .line 2257
    .local p2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz p2, :cond_6c

    .line 2258
    const/4 v1, 0x0

    .line 2260
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_4f
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v1, v0

    .line 2261
    invoke-virtual {v11, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Landroid/app/WallpaperManager;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 2264
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2265
    invoke-virtual {v9}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_62
    .catchall {:try_start_4f .. :try_end_62} :catchall_66

    .line 2269
    :try_start_62
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2270
    goto :goto_6c

    .line 2269
    :catchall_66
    move-exception v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2270
    nop

    .end local v7    # "result":Landroid/os/Bundle;
    .end local v8    # "which":I
    .end local v9    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "resid":I
    throw v0
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6c} :catch_75

    .line 2274
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .end local p2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v7    # "result":Landroid/os/Bundle;
    .restart local v8    # "which":I
    .restart local v9    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "resid":I
    :cond_6c
    :goto_6c
    nop

    .line 2275
    const-string p2, "android.service.wallpaper.extra.ID"

    const/4 v0, 0x0

    invoke-virtual {v7, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    return p2

    .line 2272
    :catch_75
    move-exception v0

    move-object p2, v0

    goto :goto_7b

    .end local v8    # "which":I
    .local p2, "which":I
    :catch_78
    move-exception v0

    move v8, p2

    move-object p2, v0

    .line 2273
    .restart local v8    # "which":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_7b
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2245
    .end local v7    # "result":Landroid/os/Bundle;
    .end local v8    # "which":I
    .end local v9    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .local p2, "which":I
    :cond_80
    move v8, p2

    .end local p2    # "which":I
    .restart local v8    # "which":I
    sget-object p2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v0, "WallpaperService not running"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Landroid/os/DeadSystemException;

    invoke-direct {v0}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist setResource(I)V
    .registers 3
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2224
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setResource(II)I

    .line 2225
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

    .line 2556
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    move-result v0

    return v0
.end method

.method public whitelist setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    .registers 16
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2584
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->multiCrop()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2585
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2586
    .local v0, "cropMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    if-eqz p2, :cond_11

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2587
    :cond_11
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/app/WallpaperManager;->setStreamWithCrops(Ljava/io/InputStream;Landroid/util/SparseArray;ZI)I

    move-result v1

    return v1

    .line 2589
    .end local v0    # "cropMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    :cond_16
    invoke-direct {p0, p2}, Landroid/app/WallpaperManager;->validateRect(Landroid/graphics/Rect;)V

    .line 2590
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 2594
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 2595
    .local v7, "result":Landroid/os/Bundle;
    new-instance v9, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v9, p0}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 2596
    .local v9, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    if-nez p2, :cond_30

    const/4 v0, 0x0

    goto :goto_34

    :cond_30
    invoke-static {p2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_34
    move-object v5, v0

    .line 2598
    .local v5, "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    :try_start_35
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2599
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2600
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v10
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_47} :catch_77

    .line 2598
    const/4 v2, 0x0

    const/4 v4, 0x0

    move v6, p3

    move v8, p4

    .end local p3    # "allowBackup":Z
    .end local p4    # "which":I
    .local v6, "allowBackup":Z
    .local v8, "which":I
    :try_start_4b
    invoke-interface/range {v1 .. v10}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;[ILjava/util/List;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p3
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_4f} :catch_74

    .line 2601
    .local p3, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz p3, :cond_6b

    .line 2602
    const/4 p4, 0x0

    .line 2604
    .local p4, "fos":Ljava/io/FileOutputStream;
    :try_start_52
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object p4, v0

    .line 2605
    invoke-direct {p0, p1, p4}, Landroid/app/WallpaperManager;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 2606
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V

    .line 2607
    invoke-virtual {v9}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_61
    .catchall {:try_start_52 .. :try_end_61} :catchall_65

    .line 2609
    :try_start_61
    invoke-static {p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2610
    goto :goto_6b

    .line 2609
    :catchall_65
    move-exception v0

    invoke-static {p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2610
    nop

    .end local v5    # "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v6    # "allowBackup":Z
    .end local v7    # "result":Landroid/os/Bundle;
    .end local v8    # "which":I
    .end local v9    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "bitmapData":Ljava/io/InputStream;
    .end local p2    # "visibleCropHint":Landroid/graphics/Rect;
    throw v0
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_6b} :catch_74

    .line 2614
    .end local p3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .restart local v6    # "allowBackup":Z
    .restart local v7    # "result":Landroid/os/Bundle;
    .restart local v8    # "which":I
    .restart local v9    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "bitmapData":Ljava/io/InputStream;
    .restart local p2    # "visibleCropHint":Landroid/graphics/Rect;
    :cond_6b
    :goto_6b
    nop

    .line 2616
    const-string p3, "android.service.wallpaper.extra.ID"

    const/4 p4, 0x0

    invoke-virtual {v7, p3, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    return p3

    .line 2612
    :catch_74
    move-exception v0

    move-object p3, v0

    goto :goto_7b

    .end local v6    # "allowBackup":Z
    .end local v8    # "which":I
    .local p3, "allowBackup":Z
    .local p4, "which":I
    :catch_77
    move-exception v0

    move v6, p3

    move v8, p4

    move-object p3, v0

    .line 2613
    .end local p4    # "which":I
    .restart local v6    # "allowBackup":Z
    .restart local v8    # "which":I
    .local p3, "e":Landroid/os/RemoteException;
    :goto_7b
    invoke-virtual {p3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p4

    throw p4

    .line 2591
    .end local v5    # "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v6    # "allowBackup":Z
    .end local v7    # "result":Landroid/os/Bundle;
    .end local v8    # "which":I
    .end local v9    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .local p3, "allowBackup":Z
    .restart local p4    # "which":I
    :cond_80
    move v6, p3

    move v8, p4

    .end local p3    # "allowBackup":Z
    .end local p4    # "which":I
    .restart local v6    # "allowBackup":Z
    .restart local v8    # "which":I
    sget-object p3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string p4, "WallpaperService not running"

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance p4, Landroid/os/DeadSystemException;

    invoke-direct {p4}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p3, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p3
.end method

.method public whitelist setStream(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2516
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I

    .line 2517
    return-void
.end method

.method public whitelist setStreamWithCrops(Ljava/io/InputStream;Landroid/util/SparseArray;ZI)I
    .registers 17
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

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

    .line 2659
    .local p2, "cropHints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 2663
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2664
    .local v1, "size":I
    new-array v5, v1, [I

    .line 2665
    .local v5, "screenOrientations":[I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2666
    .local v6, "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v1, :cond_2b

    .line 2667
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v5, v0

    .line 2668
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 2669
    .local v2, "cropHint":Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/app/WallpaperManager;->validateRect(Landroid/graphics/Rect;)V

    .line 2670
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2666
    .end local v2    # "cropHint":Landroid/graphics/Rect;
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2672
    .end local v0    # "i":I
    :cond_2b
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 2673
    .local v8, "result":Landroid/os/Bundle;
    new-instance v10, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v10, p0}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 2675
    .local v10, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :try_start_35
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2676
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2677
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v11

    .line 2675
    const/4 v3, 0x0

    move v7, p3

    move/from16 v9, p4

    invoke-interface/range {v2 .. v11}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;[ILjava/util/List;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_4f} :catch_75

    move-object v2, v0

    .line 2678
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_6c

    .line 2679
    const/4 v3, 0x0

    .line 2681
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_53
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v3, v0

    .line 2682
    invoke-direct {p0, p1, v3}, Landroid/app/WallpaperManager;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 2683
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 2684
    invoke-virtual {v10}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_62
    .catchall {:try_start_53 .. :try_end_62} :catchall_66

    .line 2686
    :try_start_62
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2687
    goto :goto_6c

    .line 2686
    :catchall_66
    move-exception v0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2687
    nop

    .end local v1    # "size":I
    .end local v5    # "screenOrientations":[I
    .end local v6    # "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v8    # "result":Landroid/os/Bundle;
    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "bitmapData":Ljava/io/InputStream;
    .end local p2    # "cropHints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .end local p3    # "allowBackup":Z
    .end local p4    # "which":I
    throw v0
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6c} :catch_75

    .line 2691
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "size":I
    .restart local v5    # "screenOrientations":[I
    .restart local v6    # "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .restart local v8    # "result":Landroid/os/Bundle;
    .restart local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "bitmapData":Ljava/io/InputStream;
    .restart local p2    # "cropHints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .restart local p3    # "allowBackup":Z
    .restart local p4    # "which":I
    :cond_6c
    :goto_6c
    nop

    .line 2692
    const-string v0, "android.service.wallpaper.extra.ID"

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 2689
    :catch_75
    move-exception v0

    .line 2690
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2660
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "size":I
    .end local v5    # "screenOrientations":[I
    .end local v6    # "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v8    # "result":Landroid/os/Bundle;
    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :cond_7b
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist setStreamWithCrops(Ljava/io/InputStream;Ljava/util/Map;ZI)I
    .registers 7
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

    .line 2635
    .local p2, "cropHints":Ljava/util/Map;, "Ljava/util/Map<Landroid/graphics/Point;Landroid/graphics/Rect;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2636
    .local v0, "crops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    new-instance v1, Landroid/app/WallpaperManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroid/app/WallpaperManager$$ExternalSyntheticLambda1;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {p2, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2637
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/app/WallpaperManager;->setStreamWithCrops(Ljava/io/InputStream;Landroid/util/SparseArray;ZI)I

    move-result v1

    return v1
.end method

.method public whitelist setStreamWithDescription(Ljava/io/InputStream;Landroid/app/wallpaper/WallpaperDescription;ZI)I
    .registers 6
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "description"    # Landroid/app/wallpaper/WallpaperDescription;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2714
    invoke-virtual {p2}, Landroid/app/wallpaper/WallpaperDescription;->getCropHints()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/app/WallpaperManager;->setStreamWithCrops(Ljava/io/InputStream;Landroid/util/SparseArray;ZI)I

    move-result v0

    return v0
.end method

.method public whitelist setWallpaperComponent(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2963
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public greylist setWallpaperComponent(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 3039
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/WallpaperManager;->setWallpaperComponentWithFlags(Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method public whitelist setWallpaperComponentWithDescription(Landroid/app/wallpaper/WallpaperDescription;I)Z
    .registers 4
    .param p1, "description"    # Landroid/app/wallpaper/WallpaperDescription;
    .param p2, "which"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3106
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->setWallpaperComponentWithDescription(Landroid/app/wallpaper/WallpaperDescription;II)Z

    move-result v0

    return v0
.end method

.method public blacklist setWallpaperComponentWithDescription(Landroid/app/wallpaper/WallpaperDescription;II)Z
    .registers 6
    .param p1, "description"    # Landroid/app/wallpaper/WallpaperDescription;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 3130
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 3135
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/IWallpaperManager;->setWallpaperComponentChecked(Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_19

    .line 3137
    const/4 v0, 0x1

    return v0

    .line 3138
    :catch_19
    move-exception v0

    .line 3139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3131
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperManagerService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setWallpaperComponentWithFlags(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3059
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->setWallpaperComponentWithFlags(Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method public blacklist setWallpaperComponentWithFlags(Landroid/content/ComponentName;II)Z
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 3080
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    .line 3081
    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v0

    .line 3082
    .local v0, "description":Landroid/app/wallpaper/WallpaperDescription;
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/WallpaperManager;->setWallpaperComponentWithDescription(Landroid/app/wallpaper/WallpaperDescription;II)Z

    move-result v1

    return v1
.end method

.method public whitelist setWallpaperDimAmount(F)V
    .registers 4
    .param p1, "dimAmount"    # F
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2975
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2980
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-static {p1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->setWallpaperDimAmount(F)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_17

    .line 2983
    nop

    .line 2984
    return-void

    .line 2981
    :catch_17
    move-exception v0

    .line 2982
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2976
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setWallpaperOffsetSteps(FF)V
    .registers 3
    .param p1, "xStep"    # F
    .param p2, "yStep"    # F

    .line 3176
    iput p1, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 3177
    iput p2, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 3178
    return-void
.end method

.method public whitelist setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .registers 10
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "xOffset"    # F
    .param p3, "yOffset"    # F

    .line 3159
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iget v4, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    iget v5, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_13

    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "xOffset":F
    .end local p3    # "yOffset":F
    .local v1, "windowToken":Landroid/os/IBinder;
    .local v2, "xOffset":F
    .local v3, "yOffset":F
    :try_start_b
    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    .line 3164
    nop

    .line 3165
    return-void

    .line 3162
    :catch_10
    move-exception v0

    move-object p1, v0

    goto :goto_18

    .end local v1    # "windowToken":Landroid/os/IBinder;
    .end local v2    # "xOffset":F
    .end local v3    # "yOffset":F
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    .restart local p2    # "xOffset":F
    .restart local p3    # "yOffset":F
    :catch_13
    move-exception v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object p1, v0

    .line 3163
    .end local p2    # "xOffset":F
    .end local p3    # "yOffset":F
    .restart local v1    # "windowToken":Landroid/os/IBinder;
    .restart local v2    # "xOffset":F
    .restart local v3    # "yOffset":F
    .local p1, "e":Landroid/os/RemoteException;
    :goto_18
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .registers 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "zoom"    # F

    .line 3219
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_25

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_25

    .line 3222
    if-eqz p1, :cond_1c

    .line 3226
    :try_start_d
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowSession;->setWallpaperZoomOut(Landroid/os/IBinder;F)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_16

    .line 3229
    nop

    .line 3230
    return-void

    .line 3227
    :catch_16
    move-exception v0

    .line 3228
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3223
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "windowToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3220
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "zoom must be between 0 and 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist shouldEnableWideColorGamut()Z
    .registers 2

    .line 1024
    iget-boolean v0, p0, Landroid/app/WallpaperManager;->mWcgEnabled:Z

    return v0
.end method

.method public whitelist suggestDesiredDimensions(II)V
    .registers 9
    .param p1, "minimumWidth"    # I
    .param p2, "minimumHeight"    # I

    .line 2816
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "suggestDesiredDimensions"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 2828
    :try_start_8
    const-string/jumbo v0, "sys.max_texture_size"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_11

    .line 2831
    .local v0, "maximumTextureSize":I
    goto :goto_16

    .line 2854
    .end local v0    # "maximumTextureSize":I
    :catch_11
    move-exception v0

    goto :goto_61

    .line 2829
    :catch_13
    move-exception v0

    .line 2830
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    move v0, v1

    .line 2833
    .local v0, "maximumTextureSize":I
    :goto_16
    if-lez v0, :cond_30

    .line 2834
    if-gt p1, v0, :cond_1c

    if-le p2, v0, :cond_30

    .line 2836
    :cond_1c
    int-to-float v1, p2

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 2837
    .local v1, "aspect":F
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-le p1, p2, :cond_2a

    .line 2838
    move p1, v0

    .line 2839
    int-to-float v4, p1

    mul-float/2addr v4, v1

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-int p2, v4

    goto :goto_30

    .line 2841
    :cond_2a
    move p2, v0

    .line 2842
    int-to-float v4, p2

    div-float/2addr v4, v1

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-int p1, v4

    .line 2847
    .end local v1    # "aspect":F
    :cond_30
    :goto_30
    :try_start_30
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 2851
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2852
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    .line 2851
    invoke-interface {v1, p1, p2, v2, v3}, Landroid/app/IWallpaperManager;->setDimensionHints(IILjava/lang/String;I)V

    .line 2856
    .end local v0    # "maximumTextureSize":I
    nop

    .line 2857
    return-void

    .line 2848
    .restart local v0    # "maximumTextureSize":I
    :cond_4f
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "minimumWidth":I
    .end local p2    # "minimumHeight":I
    throw v1
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_61} :catch_11

    .line 2855
    .local v0, "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "minimumWidth":I
    .restart local p2    # "minimumHeight":I
    :goto_61
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wallpaperSupportsWcg(I)Z
    .registers 7
    .param p1, "which"    # I

    .line 1486
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->shouldEnableWideColorGamut()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1487
    return v1

    .line 1489
    :cond_8
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 1490
    .local v0, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p1, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1491
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_34

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 1492
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    sget-object v4, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v4}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v4

    if-eq v3, v4, :cond_34

    .line 1493
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/WallpaperManager$ColorManagementProxy;->isSupportedColorSpace(Landroid/graphics/ColorSpace;)Z

    move-result v3

    if-eqz v3, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    nop

    .line 1491
    :goto_35
    return v1
.end method
