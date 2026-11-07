.class public Landroid/window/DisplayAreaOrganizer;
.super Landroid/window/WindowOrganizer;
.source "DisplayAreaOrganizer.java"


# static fields
.field public static final blacklist FEATURE_APP_ZOOM_OUT:I = 0xa

.field public static final blacklist FEATURE_DEFAULT_TASK_CONTAINER:I = 0x1

.field public static final blacklist FEATURE_FULLSCREEN_MAGNIFICATION:I = 0x5

.field public static final blacklist FEATURE_HIDE_DISPLAY_CUTOUT:I = 0x6

.field public static final blacklist FEATURE_IME:I = 0x8

.field public static final blacklist FEATURE_IME_PLACEHOLDER:I = 0x7

.field public static final blacklist FEATURE_ONE_HANDED:I = 0x3

.field public static final blacklist FEATURE_ROOT:I = 0x0

.field public static final blacklist FEATURE_RUNTIME_TASK_CONTAINER_FIRST:I = 0x4e22

.field public static final blacklist FEATURE_SYSTEM_FIRST:I = 0x0

.field public static final blacklist FEATURE_SYSTEM_LAST:I = 0x2710

.field public static final blacklist FEATURE_UNDEFINED:I = -0x1

.field public static final blacklist FEATURE_VENDOR_FIRST:I = 0x2711

.field public static final blacklist FEATURE_VENDOR_LAST:I = 0x4e21

.field public static final blacklist FEATURE_WINDOWED_MAGNIFICATION:I = 0x4

.field public static final blacklist FEATURE_WINDOWING_LAYER:I = 0x9

.field public static final blacklist FEATURE_WINDOW_TOKENS:I = 0x2

.field public static final blacklist KEY_ROOT_DISPLAY_AREA_ID:Ljava/lang/String; = "root_display_area_id"


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mInterface:Landroid/window/IDisplayAreaOrganizer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/window/DisplayAreaOrganizer;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/window/DisplayAreaOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 159
    invoke-direct {p0}, Landroid/window/WindowOrganizer;-><init>()V

    .line 266
    new-instance v0, Landroid/window/DisplayAreaOrganizer$1;

    invoke-direct {v0, p0}, Landroid/window/DisplayAreaOrganizer$1;-><init>(Landroid/window/DisplayAreaOrganizer;)V

    iput-object v0, p0, Landroid/window/DisplayAreaOrganizer;->mInterface:Landroid/window/IDisplayAreaOrganizer;

    .line 160
    iput-object p1, p0, Landroid/window/DisplayAreaOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 161
    return-void
.end method

.method private blacklist getController()Landroid/window/IDisplayAreaOrganizerController;
    .registers 3

    .line 291
    :try_start_0
    invoke-static {}, Landroid/window/DisplayAreaOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IWindowOrganizerController;->getDisplayAreaOrganizerController()Landroid/window/IDisplayAreaOrganizerController;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 292
    :catch_9
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist createTaskDisplayArea(IILjava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "parentFeatureId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 228
    :try_start_0
    invoke-direct {p0}, Landroid/window/DisplayAreaOrganizer;->getController()Landroid/window/IDisplayAreaOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/DisplayAreaOrganizer;->mInterface:Landroid/window/IDisplayAreaOrganizer;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/window/IDisplayAreaOrganizerController;->createTaskDisplayArea(Landroid/window/IDisplayAreaOrganizer;IILjava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 230
    :catch_b
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist deleteTaskDisplayArea(Landroid/window/WindowContainerToken;)V
    .registers 4
    .param p1, "taskDisplayArea"    # Landroid/window/WindowContainerToken;

    .line 245
    :try_start_0
    invoke-direct {p0}, Landroid/window/DisplayAreaOrganizer;->getController()Landroid/window/IDisplayAreaOrganizerController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/window/IDisplayAreaOrganizerController;->deleteTaskDisplayArea(Landroid/window/WindowContainerToken;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 248
    nop

    .line 249
    return-void

    .line 246
    :catch_9
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/window/DisplayAreaOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "displayAreaInfo"    # Landroid/window/DisplayAreaInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 257
    return-void
.end method

.method public blacklist onDisplayAreaInfoChanged(Landroid/window/DisplayAreaInfo;)V
    .registers 2
    .param p1, "displayAreaInfo"    # Landroid/window/DisplayAreaInfo;

    .line 264
    return-void
.end method

.method public blacklist onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V
    .registers 2
    .param p1, "displayAreaInfo"    # Landroid/window/DisplayAreaInfo;

    .line 259
    return-void
.end method

.method public blacklist registerOrganizer(I)Ljava/util/List;
    .registers 4
    .param p1, "displayAreaFeature"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/window/DisplayAreaAppearedInfo;",
            ">;"
        }
    .end annotation

    .line 184
    :try_start_0
    invoke-direct {p0}, Landroid/window/DisplayAreaOrganizer;->getController()Landroid/window/IDisplayAreaOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/DisplayAreaOrganizer;->mInterface:Landroid/window/IDisplayAreaOrganizer;

    invoke-interface {v0, v1, p1}, Landroid/window/IDisplayAreaOrganizerController;->registerOrganizer(Landroid/window/IDisplayAreaOrganizer;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 185
    :catch_f
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterOrganizer()V
    .registers 3

    .line 197
    :try_start_0
    invoke-direct {p0}, Landroid/window/DisplayAreaOrganizer;->getController()Landroid/window/IDisplayAreaOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/DisplayAreaOrganizer;->mInterface:Landroid/window/IDisplayAreaOrganizer;

    invoke-interface {v0, v1}, Landroid/window/IDisplayAreaOrganizerController;->unregisterOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 200
    nop

    .line 201
    return-void

    .line 198
    :catch_b
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
