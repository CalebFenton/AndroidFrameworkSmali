.class public abstract Landroid/service/wallpaper/WallpaperService;
.super Landroid/app/Service;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;,
        Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;,
        Landroid/service/wallpaper/WallpaperService$Engine;,
        Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    }
.end annotation


# static fields
.field static final greylist-max-o DEBUG:Z = false

.field private static final blacklist DEFAULT_UPDATE_SCREENSHOT_DURATION:J = 0xea60L

.field private static final blacklist DIMMING_ANIMATION_DURATION_MS:J = 0x12cL

.field private static final blacklist DISABLE_DRAW_WAKE_LOCK_WALLPAPER:J = 0x158b0a60L

.field private static final greylist-max-o DO_ATTACH:I = 0xa

.field private static final greylist-max-o DO_DETACH:I = 0x14

.field private static final greylist-max-o DO_IN_AMBIENT_MODE:I = 0x32

.field private static final greylist-max-o DO_SET_DESIRED_SIZE:I = 0x1e

.field private static final greylist-max-o DO_SET_DISPLAY_PADDING:I = 0x28

.field private static final blacklist ENABLE_WALLPAPER_DIMMING:Z

.field private static final blacklist LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

.field private static final blacklist MIN_BITMAP_SCREENSHOT_WIDTH:I = 0x40

.field static final blacklist MIN_PAGE_ALLOWED_MARGIN:F = 0.05f

.field private static final blacklist MSG_REPORT_SHOWN:I = 0x27a6

.field private static final greylist-max-o MSG_REQUEST_WALLPAPER_COLORS:I = 0x2742

.field private static final blacklist MSG_RESIZE_PREVIEW:I = 0x277e

.field private static final greylist-max-o MSG_TOUCH_EVENT:I = 0x2738

.field private static final blacklist MSG_UPDATE_DIMMING:I = 0x27d8

.field private static final blacklist MSG_UPDATE_SCREEN_TURNING_ON:I = 0x27ba

.field private static final greylist-max-o MSG_UPDATE_SURFACE:I = 0x2710

.field private static final greylist-max-o MSG_VISIBILITY_CHANGED:I = 0x271a

.field private static final greylist-max-o MSG_WALLPAPER_COMMAND:I = 0x2729

.field private static final blacklist MSG_WALLPAPER_FLAGS_CHANGED:I = 0x27e2

.field private static final greylist-max-o MSG_WALLPAPER_OFFSETS:I = 0x2724

.field private static final greylist-max-o MSG_WINDOW_MOVED:I = 0x2733

.field private static final greylist-max-r MSG_WINDOW_RESIZED:I = 0x272e

.field private static final blacklist MSG_ZOOM:I = 0x2774

.field private static final greylist-max-o NOTIFY_COLORS_RATE_LIMIT_MS:I = 0x3e8

.field private static final blacklist PROCESS_LOCAL_COLORS_INTERVAL_MS:I = 0x7d0

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.wallpaper.WallpaperService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.service.wallpaper"

.field static final greylist-max-o TAG:Ljava/lang/String; = "WallpaperService"

.field public static final blacklist WEAROS_WALLPAPER_HANDLES_SCALING:J = 0x103e6fd3L


# instance fields
.field private final blacklist mActiveEngines:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBackgroundHandler:Landroid/os/Handler;

.field private blacklist mBackgroundThread:Landroid/os/HandlerThread;

.field private blacklist mIsWearOs:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveEngines(Landroid/service/wallpaper/WallpaperService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBackgroundHandler(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsWearOs(Landroid/service/wallpaper/WallpaperService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/wallpaper/WallpaperService;->mIsWearOs:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService;->isValid(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetENABLE_WALLPAPER_DIMMING()Z
    .registers 1

    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->ENABLE_WALLPAPER_DIMMING:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 171
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Landroid/service/wallpaper/WallpaperService;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 202
    nop

    .line 203
    const-string/jumbo v0, "persist.debug.enable_wallpaper_dimming"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/service/wallpaper/WallpaperService;->ENABLE_WALLPAPER_DIMMING:Z

    .line 202
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 147
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 207
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    return-void
.end method

.method private blacklist inRectFRange(F)Z
    .registers 3
    .param p1, "number"    # F

    .line 2469
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private blacklist isValid(Landroid/graphics/RectF;)Z
    .registers 5
    .param p1, "area"    # Landroid/graphics/RectF;

    .line 2462
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2463
    :cond_4
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1e

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1e

    sget-object v1, Landroid/service/wallpaper/WallpaperService;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 2464
    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 2465
    .local v0, "valid":Z
    :goto_1f
    return v0
.end method


# virtual methods
.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2955
    const-string v0, "State of wallpaper "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2956
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2957
    :try_start_10
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 2958
    .local v2, "engineWrapper":Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
    iget-object v3, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 2959
    .local v3, "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    if-nez v3, :cond_49

    .line 2960
    const-string v4, "WallpaperService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Engine for wrapper "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not attached"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    goto :goto_1a

    .line 2963
    :cond_49
    const-string v4, "  Engine "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2964
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2965
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2966
    const-string v4, "    "

    invoke-virtual {v3, v4, p1, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2967
    .end local v2    # "engineWrapper":Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
    .end local v3    # "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    goto :goto_1a

    .line 2968
    :cond_5c
    monitor-exit v0

    .line 2969
    return-void

    .line 2968
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_10 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2928
    new-instance v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;

    invoke-direct {v0, p0, p0}, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;-><init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;)V

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 3

    .line 2894
    const-string v0, "WPMS.onCreate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2895
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DefaultWallpaperLocalColorExtractor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 2896
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2897
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundHandler:Landroid/os/Handler;

    .line 2898
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService;->mIsWearOs:Z

    .line 2899
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2900
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2901
    return-void
.end method

.method public abstract whitelist onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
.end method

.method public whitelist onCreateEngine(Landroid/app/wallpaper/WallpaperDescription;)Landroid/service/wallpaper/WallpaperService$Engine;
    .registers 3
    .param p1, "description"    # Landroid/app/wallpaper/WallpaperDescription;

    .line 2950
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onDestroy()V
    .registers 4

    .line 2905
    const-string v0, "WPMS.onDestroy"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2906
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2907
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2908
    :try_start_b
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 2909
    .local v2, "engineWrapper":Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->destroy()V

    .line 2910
    .end local v2    # "engineWrapper":Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
    goto :goto_15

    .line 2911
    :cond_25
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2912
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_38

    .line 2913
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_34

    .line 2917
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2919
    :cond_34
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2920
    return-void

    .line 2912
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public blacklist onProvideEngineLooper()Landroid/os/Looper;
    .registers 2

    .line 2458
    invoke-super {p0}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
