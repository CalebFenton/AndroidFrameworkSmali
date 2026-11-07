.class public Landroid/app/ActivityTaskManager;
.super Ljava/lang/Object;
.source "ActivityTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityTaskManager$RootTaskInfo;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_MINIMAL_SPLIT_SCREEN_DISPLAY_SIZE_DP:I = 0x1b8

.field public static final blacklist EXTRA_IGNORE_TARGET_SECURITY:Ljava/lang/String; = "android.app.extra.EXTRA_IGNORE_TARGET_SECURITY"

.field public static final blacklist EXTRA_OPTIONS:Ljava/lang/String; = "android.app.extra.OPTIONS"

.field private static final greylist IActivityTaskManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/IActivityTaskManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INVALID_STACK_ID:I = -0x1

.field public static final blacklist INVALID_TASK_ID:I = -0x1

.field public static final blacklist INVALID_WINDOWING_MODE:I = -0x1

.field public static final blacklist RESIZE_MODE_FORCED:I = 0x2

.field public static final blacklist RESIZE_MODE_PRESERVE_WINDOW:I = 0x1

.field public static final blacklist RESIZE_MODE_SYSTEM:I = 0x0

.field public static final blacklist RESIZE_MODE_USER:I = 0x1

.field public static final blacklist RESIZE_MODE_USER_FORCED:I = 0x3

.field private static final blacklist sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/ActivityTaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sMaxRecentTasks:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 130
    const/4 v0, -0x1

    sput v0, Landroid/app/ActivityTaskManager;->sMaxRecentTasks:I

    .line 132
    new-instance v0, Landroid/app/ActivityTaskManager$1;

    invoke-direct {v0}, Landroid/app/ActivityTaskManager$1;-><init>()V

    sput-object v0, Landroid/app/ActivityTaskManager;->sInstance:Landroid/util/Singleton;

    .line 154
    new-instance v0, Landroid/app/ActivityTaskManager$2;

    invoke-direct {v0}, Landroid/app/ActivityTaskManager$2;-><init>()V

    sput-object v0, Landroid/app/ActivityTaskManager;->IActivityTaskManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityTaskManager-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/ActivityTaskManager;-><init>()V

    return-void
.end method

.method public static blacklist currentUiModeSupportsErrorDialogs(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 360
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {v0}, Landroid/app/ActivityTaskManager;->currentUiModeSupportsErrorDialogs(Landroid/content/res/Configuration;)Z

    move-result v1

    return v1
.end method

.method public static blacklist currentUiModeSupportsErrorDialogs(Landroid/content/res/Configuration;)Z
    .registers 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 350
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    .line 351
    .local v0, "modeType":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-nez v1, :cond_16

    :cond_e
    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    const/4 v1, 0x7

    if-eq v0, v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public static blacklist getDefaultAppRecentsLimitStatic()I
    .registers 1

    .line 231
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public static blacklist getInstance()Landroid/app/ActivityTaskManager;
    .registers 1

    .line 145
    sget-object v0, Landroid/app/ActivityTaskManager;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityTaskManager;

    return-object v0
.end method

.method public static blacklist getMaxAppRecentsLimitStatic()I
    .registers 1

    .line 239
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static blacklist getMaxNumPictureInPictureActions(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getMaxRecentTasksStatic()I
    .registers 1

    .line 204
    sget v0, Landroid/app/ActivityTaskManager;->sMaxRecentTasks:I

    if-gez v0, :cond_12

    .line 205
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x24

    goto :goto_f

    :cond_d
    const/16 v0, 0x30

    :goto_f
    sput v0, Landroid/app/ActivityTaskManager;->sMaxRecentTasks:I

    return v0

    .line 207
    :cond_12
    sget v0, Landroid/app/ActivityTaskManager;->sMaxRecentTasks:I

    return v0
.end method

.method public static blacklist getService()Landroid/app/IActivityTaskManager;
    .registers 1

    .line 150
    sget-object v0, Landroid/app/ActivityTaskManager;->IActivityTaskManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityTaskManager;

    return-object v0
.end method

.method public static blacklist supportsMultiWindow(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 251
    .local v0, "isWatch":Z
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_21

    .line 252
    :cond_12
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111026f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 251
    :goto_22
    return v1
.end method

.method public static blacklist supportsSplitScreenMultiWindow(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 264
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 265
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 267
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 268
    .local v1, "widthDp":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 269
    .local v2, "heightDp":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x1b8

    const/4 v5, 0x0

    if-ge v3, v4, :cond_24

    .line 270
    return v5

    .line 273
    :cond_24
    invoke-static {p0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 274
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110272

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_39

    const/4 v5, 0x1

    goto :goto_3a

    :cond_39
    nop

    .line 273
    :goto_3a
    return v5
.end method


# virtual methods
.method public blacklist canBeUniversalResizeable(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 493
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->canBeUniversalResizeable(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 494
    :catch_9
    move-exception v0

    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist clearLaunchParamsForPackages(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 339
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->clearLaunchParamsForPackages(Ljava/util/List;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 342
    goto :goto_c

    .line 340
    :catch_8
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 343
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist detachNavigationBarFromApp(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "transition"    # Landroid/os/IBinder;

    .line 506
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->detachNavigationBarFromApp(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 509
    nop

    .line 510
    return-void

    .line 507
    :catch_9
    move-exception v0

    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRecentTasks(III)Ljava/util/List;
    .registers 6
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 421
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityTaskManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 422
    :catch_d
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTaskBounds(I)Landroid/graphics/Rect;
    .registers 4
    .param p1, "taskId"    # I

    .line 448
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 449
    :catch_9
    move-exception v0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTasks(I)Ljava/util/List;
    .registers 4
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 374
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/app/ActivityTaskManager;->getTasks(IZZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTasks(IZ)Ljava/util/List;
    .registers 5
    .param p1, "maxNum"    # I
    .param p2, "filterOnlyVisibleRecents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 384
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/ActivityTaskManager;->getTasks(IZZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTasks(IZZ)Ljava/util/List;
    .registers 5
    .param p1, "maxNum"    # I
    .param p2, "filterOnlyVisibleRecents"    # Z
    .param p3, "keepIntentExtra"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 395
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ActivityTaskManager;->getTasks(IZZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTasks(IZZI)Ljava/util/List;
    .registers 7
    .param p1, "maxNum"    # I
    .param p2, "filterOnlyVisibleRecents"    # Z
    .param p3, "keepIntentExtra"    # Z
    .param p4, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZI)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 407
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IActivityTaskManager;->getTasks(IZZI)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 409
    :catch_9
    move-exception v0

    .line 410
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isInLockTaskMode()Z
    .registers 3

    .line 470
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 471
    :catch_9
    move-exception v0

    .line 472
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist moveTaskToRootTask(IIZ)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "rootTaskId"    # I
    .param p3, "toTop"    # Z

    .line 312
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityTaskManager;->moveTaskToRootTask(IIZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 315
    nop

    .line 316
    return-void

    .line 313
    :catch_9
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "parcelable"    # Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    .line 220
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 223
    nop

    .line 224
    return-void

    .line 221
    :catch_9
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 461
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 464
    nop

    .line 465
    return-void

    .line 462
    :catch_9
    move-exception v0

    .line 463
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerTaskStackListener(Landroid/app/TaskStackListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/TaskStackListener;

    .line 430
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 433
    nop

    .line 434
    return-void

    .line 431
    :catch_9
    move-exception v0

    .line 432
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeAllVisibleRecentTasks()V
    .registers 3

    .line 193
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->removeAllVisibleRecentTasks()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 196
    nop

    .line 197
    return-void

    .line 194
    :catch_9
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeRootTasksInWindowingModes([I)V
    .registers 4
    .param p1, "windowingModes"    # [I

    .line 170
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->removeRootTasksInWindowingModes([I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 173
    nop

    .line 174
    return-void

    .line 171
    :catch_9
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeRootTasksWithActivityTypes([I)V
    .registers 4
    .param p1, "activityTypes"    # [I

    .line 180
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->removeRootTasksWithActivityTypes([I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 183
    nop

    .line 184
    return-void

    .line 181
    :catch_9
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeTask(I)Z
    .registers 4
    .param p1, "taskId"    # I

    .line 480
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->removeTask(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 481
    :catch_9
    move-exception v0

    .line 482
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist resizeTask(ILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 326
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/app/IActivityTaskManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    .line 329
    nop

    .line 330
    return-void

    .line 327
    :catch_a
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startSystemLockTaskMode(I)V
    .registers 4
    .param p1, "taskId"    # I

    .line 285
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 288
    nop

    .line 289
    return-void

    .line 286
    :catch_9
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist stopSystemLockTaskMode()V
    .registers 3

    .line 297
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 300
    nop

    .line 301
    return-void

    .line 298
    :catch_9
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterTaskStackListener(Landroid/app/TaskStackListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/TaskStackListener;

    .line 439
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 442
    nop

    .line 443
    return-void

    .line 440
    :catch_9
    move-exception v0

    .line 441
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist updateLockTaskPackages(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packages"    # [Ljava/lang/String;

    .line 516
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/app/IActivityTaskManager;->updateLockTaskPackages(I[Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 519
    nop

    .line 520
    return-void

    .line 517
    :catch_d
    move-exception v0

    .line 518
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
