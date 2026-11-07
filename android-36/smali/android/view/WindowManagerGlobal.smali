.class public final Landroid/view/WindowManagerGlobal;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerGlobal$TrustedPresentationListener;,
        Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;,
        Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;
    }
.end annotation


# static fields
.field public static final greylist-max-o ADD_APP_EXITING:I = -0x4

.field public static final greylist-max-o ADD_BAD_APP_TOKEN:I = -0x1

.field public static final greylist-max-o ADD_BAD_SUBWINDOW_TOKEN:I = -0x2

.field public static final greylist-max-o ADD_DUPLICATE_ADD:I = -0x5

.field public static final blacklist ADD_FLAG_ALWAYS_CONSUME_SYSTEM_BARS:I = 0x4

.field public static final greylist-max-o ADD_FLAG_APP_VISIBLE:I = 0x2

.field public static final greylist-max-o ADD_FLAG_IN_TOUCH_MODE:I = 0x1

.field public static final greylist-max-o ADD_INVALID_DISPLAY:I = -0x9

.field public static final greylist-max-o ADD_INVALID_TYPE:I = -0xa

.field public static final blacklist ADD_INVALID_USER:I = -0xb

.field public static final greylist-max-o ADD_MULTIPLE_SINGLETON:I = -0x7

.field public static final greylist-max-o ADD_NOT_APP_TOKEN:I = -0x3

.field public static final greylist-max-o ADD_OKAY:I = 0x0

.field public static final greylist-max-o ADD_PERMISSION_DENIED:I = -0x8

.field public static final greylist-max-o ADD_STARTING_NOT_NEEDED:I = -0x6

.field public static final greylist-max-o RELAYOUT_INSETS_PENDING:I = 0x1

.field public static final blacklist RELAYOUT_RES_CANCEL_AND_REDRAW:I = 0x10

.field public static final blacklist RELAYOUT_RES_CONSUME_ALWAYS_SYSTEM_BARS:I = 0x8

.field public static final greylist-max-o RELAYOUT_RES_FIRST_TIME:I = 0x1

.field public static final greylist-max-o RELAYOUT_RES_SURFACE_CHANGED:I = 0x2

.field public static final greylist-max-o RELAYOUT_RES_SURFACE_RESIZED:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WindowManager"

.field private static greylist sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

.field private static greylist sWindowManagerService:Landroid/view/IWindowManager;

.field private static greylist sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field private final greylist-max-o mDyingViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mLock:Ljava/lang/Object;

.field private final greylist mParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProposedRotationListenerMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mRoots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSurfaceControlInputReceivers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSystemPropertyUpdater:Ljava/lang/Runnable;

.field private final blacklist mTrustedPresentationListener:Landroid/view/WindowManagerGlobal$TrustedPresentationListener;

.field private final greylist mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWindowViewsListenerGroup:Landroid/view/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ListenerGroup<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mWindowlessRoots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/view/WindowManagerGlobal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoots(Landroid/view/WindowManagerGlobal;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    return-object p0
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Landroid/view/ListenerGroup;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Landroid/view/ListenerGroup;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mWindowViewsListenerGroup:Landroid/view/ListenerGroup;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;-><init>(Landroid/view/WindowManagerGlobal;Landroid/view/WindowManagerGlobal-IA;)V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mTrustedPresentationListener:Landroid/view/WindowManagerGlobal$TrustedPresentationListener;

    .line 175
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mSurfaceControlInputReceivers:Landroid/util/SparseArray;

    .line 180
    return-void
.end method

.method private static blacklist createInputChannel(Landroid/os/IBinder;Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)Landroid/view/InputChannel;
    .registers 18
    .param p0, "clientToken"    # Landroid/os/IBinder;
    .param p1, "hostToken"    # Landroid/window/InputTransferToken;
    .param p2, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p3, "inputTransferToken"    # Landroid/window/InputTransferToken;

    .line 897
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v13, v0

    .line 902
    .local v13, "inputChannel":Landroid/view/InputChannel;
    :try_start_6
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    .line 904
    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl;->getName()Ljava/lang/String;

    move-result-object v12

    .line 902
    const/4 v2, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v3, p2

    move-object/from16 v11, p3

    invoke-interface/range {v1 .. v13}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1d} :catch_1e

    .line 908
    goto :goto_29

    .line 905
    :catch_1e
    move-exception v0

    .line 906
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to create input channel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 907
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 909
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    return-object v13
.end method

.method private greylist-max-o findViewLocked(Landroid/view/View;Z)I
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "required"    # Z

    .line 624
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 625
    .local v0, "index":I
    if-eqz p2, :cond_2a

    if-ltz v0, :cond_b

    goto :goto_2a

    .line 626
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not attached to window manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 628
    :cond_2a
    :goto_2a
    return v0
.end method

.method public static greylist getInstance()Landroid/view/WindowManagerGlobal;
    .registers 2

    .line 189
    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    .line 190
    :try_start_3
    sget-object v1, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    if-nez v1, :cond_e

    .line 191
    new-instance v1, Landroid/view/WindowManagerGlobal;

    invoke-direct {v1}, Landroid/view/WindowManagerGlobal;-><init>()V

    sput-object v1, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    .line 193
    :cond_e
    sget-object v1, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    monitor-exit v0

    return-object v1

    .line 194
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static greylist getWindowManagerService()Landroid/view/IWindowManager;
    .registers 3

    .line 216
    sget-object v0, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    if-eqz v0, :cond_7

    .line 218
    sget-object v0, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    return-object v0

    .line 220
    :cond_7
    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    .line 221
    :try_start_a
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    if-nez v1, :cond_2f

    .line 222
    const-string/jumbo v1, "window"

    .line 223
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 222
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_33

    .line 226
    :try_start_1b
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    if-eqz v1, :cond_28

    .line 227
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    .line 228
    invoke-interface {v1}, Landroid/view/IWindowManager;->getCurrentAnimatorScale()F

    move-result v1

    .line 227
    invoke-static {v1}, Landroid/animation/ValueAnimator;->setDurationScale(F)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_28} :catch_29
    .catchall {:try_start_1b .. :try_end_28} :catchall_33

    .line 232
    :cond_28
    goto :goto_2f

    .line 230
    :catch_29
    move-exception v1

    .line 231
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 234
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2f
    :goto_2f
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    monitor-exit v0

    return-object v1

    .line 235
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_33

    throw v1
.end method

.method private static greylist-max-o getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .registers 3
    .param p0, "root"    # Landroid/view/ViewRootImpl;

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 690
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 689
    return-object v0
.end method

.method public static greylist getWindowSession()Landroid/view/IWindowSession;
    .registers 3

    .line 240
    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    .line 241
    :try_start_3
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-nez v1, :cond_20

    .line 246
    :try_start_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->ensureDefaultInstanceForDefaultDisplayIfNecessary()V

    .line 247
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 248
    .local v1, "windowManager":Landroid/view/IWindowManager;
    new-instance v2, Landroid/view/WindowManagerGlobal$1;

    invoke-direct {v2}, Landroid/view/WindowManagerGlobal$1;-><init>()V

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;

    move-result-object v2

    sput-object v2, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_1a
    .catchall {:try_start_7 .. :try_end_19} :catchall_24

    .line 257
    .end local v1    # "windowManager":Landroid/view/IWindowManager;
    goto :goto_20

    .line 255
    :catch_1a
    move-exception v1

    .line 256
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1b
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 259
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_20
    :goto_20
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v0

    return-object v1

    .line 260
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_24

    throw v1
.end method

.method public static greylist initialize()V
    .registers 0

    .line 184
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 185
    return-void
.end method

.method static synthetic blacklist lambda$registerProposedRotationListener$1(Ljava/util/function/IntConsumer;Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;)V
    .registers 3
    .param p0, "listener"    # Ljava/util/function/IntConsumer;
    .param p1, "existingDelegate"    # Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;

    .line 783
    iget v0, p1, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->mLastRotation:I

    invoke-interface {p0, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method static synthetic blacklist lambda$setStoppedState$0(Landroid/view/ViewRootImpl;Z)V
    .registers 2
    .param p0, "root"    # Landroid/view/ViewRootImpl;
    .param p1, "stopped"    # Z

    .line 723
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->setWindowStopped(Z)V

    return-void
.end method

.method public static greylist-max-p peekWindowSession()Landroid/view/IWindowSession;
    .registers 2

    .line 265
    const-class v0, Landroid/view/WindowManagerGlobal;

    monitor-enter v0

    .line 266
    :try_start_3
    sget-object v1, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v0

    return-object v1

    .line 267
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static blacklist removeInputChannel(Landroid/os/IBinder;)V
    .registers 4
    .param p0, "clientToken"    # Landroid/os/IBinder;

    .line 914
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/IWindowSession;->remove(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 918
    goto :goto_13

    .line 915
    :catch_8
    move-exception v0

    .line 916
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to remove input channel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 917
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 919
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method private greylist-max-o removeViewLocked(IZ)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "immediate"    # Z

    .line 587
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 588
    .local v0, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    .line 590
    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_15

    .line 591
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ImeFocusController;->onWindowDismissed()V

    .line 593
    :cond_15
    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl;->die(Z)Z

    move-result v2

    .line 594
    .local v2, "deferred":Z
    if-eqz v1, :cond_26

    .line 595
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 596
    if-eqz v2, :cond_26

    .line 597
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_26
    return-void
.end method

.method public static blacklist setWindowManagerServiceForSystemProcess(Landroid/view/IWindowManager;)V
    .registers 1
    .param p0, "wms"    # Landroid/view/IWindowManager;

    .line 210
    sput-object p0, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    .line 211
    return-void
.end method


# virtual methods
.method public blacklist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;I)V
    .registers 23
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "parentWindow"    # Landroid/view/Window;
    .param p5, "userId"    # I

    .line 387
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    if-eqz v2, :cond_18e

    .line 390
    if-eqz v4, :cond_184

    .line 393
    instance-of v0, v3, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_17a

    .line 397
    move-object v6, v3

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 398
    .local v6, "wparams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 399
    .local v7, "context":Landroid/content/Context;
    if-eqz v5, :cond_1f

    .line 400
    invoke-virtual {v5, v6}, Landroid/view/Window;->adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_33

    .line 404
    :cond_1f
    if-eqz v7, :cond_33

    .line 405
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x20000000

    and-int/2addr v0, v8

    if-eqz v0, :cond_33

    .line 407
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x1000000

    or-int/2addr v0, v8

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 411
    :cond_33
    :goto_33
    const/4 v8, 0x1

    if-eqz v7, :cond_57

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x63

    if-le v0, v9, :cond_57

    .line 412
    sget-object v0, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v7, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 413
    .local v0, "styles":Landroid/content/res/TypedArray;
    nop

    .line 414
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 413
    invoke-static {v9, v8, v0}, Lcom/android/internal/policy/PhoneWindow;->isOptingOutEdgeToEdgeEnforcement(Landroid/content/pm/ApplicationInfo;ZLandroid/content/res/TypedArray;)Z

    move-result v9

    if-eqz v9, :cond_54

    .line 415
    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v10, 0x4000000

    or-int/2addr v9, v10

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 417
    :cond_54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 421
    .end local v0    # "styles":Landroid/content/res/TypedArray;
    :cond_57
    const/4 v9, 0x0

    .line 423
    .local v9, "panelParentView":Landroid/view/View;
    iget-object v10, v1, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 425
    :try_start_5b
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    if-nez v0, :cond_6b

    .line 426
    new-instance v0, Landroid/view/WindowManagerGlobal$2;

    invoke-direct {v0, v1}, Landroid/view/WindowManagerGlobal$2;-><init>(Landroid/view/WindowManagerGlobal;)V

    iput-object v0, v1, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    .line 435
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 438
    :cond_6b
    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v0

    move v11, v0

    .line 439
    .local v11, "index":I
    if-ltz v11, :cond_a6

    .line 440
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 442
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doDie()V

    goto :goto_a6

    .line 444
    :cond_87
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "View "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " has already been added to the window manager."

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "wparams":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "context":Landroid/content/Context;
    .end local v9    # "panelParentView":Landroid/view/View;
    .end local p0    # "this":Landroid/view/WindowManagerGlobal;
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local p3    # "display":Landroid/view/Display;
    .end local p4    # "parentWindow":Landroid/view/Window;
    .end local p5    # "userId":I
    throw v0

    .line 452
    .restart local v6    # "wparams":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v9    # "panelParentView":Landroid/view/View;
    .restart local p0    # "this":Landroid/view/WindowManagerGlobal;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local p3    # "display":Landroid/view/Display;
    .restart local p4    # "parentWindow":Landroid/view/Window;
    .restart local p5    # "userId":I
    :cond_a6
    :goto_a6
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x3e8

    if-lt v0, v12, :cond_d9

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7cf

    if-gt v0, v12, :cond_d9

    .line 454
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 455
    .local v0, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_b9
    if-ge v12, v0, :cond_d9

    .line 456
    iget-object v13, v1, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/ViewRootImpl;

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v13}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    iget-object v14, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v13, v14, :cond_d6

    .line 457
    iget-object v13, v1, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    move-object v9, v13

    .line 455
    :cond_d6
    add-int/lit8 v12, v12, 0x1

    goto :goto_b9

    .line 462
    .end local v0    # "count":I
    .end local v12    # "i":I
    :cond_d9
    const/4 v0, 0x0

    .line 465
    .local v0, "windowlessSession":Landroid/view/IWindowSession;
    iget-object v12, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v12, :cond_103

    if-nez v9, :cond_103

    .line 466
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_e1
    iget-object v13, v1, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_103

    .line 467
    iget-object v13, v1, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/ViewRootImpl;

    .line 468
    .local v13, "maybeParent":Landroid/view/ViewRootImpl;
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    iget-object v15, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v14, v15, :cond_100

    .line 469
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v14

    move-object v0, v14

    .line 470
    move-object v12, v0

    goto :goto_104

    .line 466
    .end local v13    # "maybeParent":Landroid/view/ViewRootImpl;
    :cond_100
    add-int/lit8 v12, v12, 0x1

    goto :goto_e1

    .line 475
    .end local v12    # "i":I
    :cond_103
    move-object v12, v0

    .end local v0    # "windowlessSession":Landroid/view/IWindowSession;
    .local v12, "windowlessSession":Landroid/view/IWindowSession;
    :goto_104
    if-nez v12, :cond_111

    .line 476
    new-instance v0, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v0, v13, v4}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    move-object v13, v0

    .local v0, "root":Landroid/view/ViewRootImpl;
    goto :goto_120

    .line 478
    .end local v0    # "root":Landroid/view/ViewRootImpl;
    :cond_111
    new-instance v0, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/view/WindowlessWindowLayout;

    invoke-direct {v14}, Landroid/view/WindowlessWindowLayout;-><init>()V

    invoke-direct {v0, v13, v4, v12, v14}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Landroid/view/WindowLayout;)V

    move-object v13, v0

    .line 482
    .local v13, "root":Landroid/view/ViewRootImpl;
    :goto_120
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_132
    .catchall {:try_start_5b .. :try_end_132} :catchall_173

    .line 490
    move/from16 v14, p5

    :try_start_134
    invoke-virtual {v13, v2, v6, v9, v14}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;I)V

    .line 491
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mWindowViewsListenerGroup:Landroid/view/ListenerGroup;

    invoke-virtual {v1}, Landroid/view/WindowManagerGlobal;->getWindowViews()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/view/ListenerGroup;->accept(Ljava/lang/Object;)V
    :try_end_140
    .catch Ljava/lang/RuntimeException; {:try_start_134 .. :try_end_140} :catch_143
    .catchall {:try_start_134 .. :try_end_140} :catchall_178

    .line 500
    nop

    .line 501
    .end local v11    # "index":I
    .end local v12    # "windowlessSession":Landroid/view/IWindowSession;
    :try_start_141
    monitor-exit v10

    .line 502
    return-void

    .line 492
    .restart local v11    # "index":I
    .restart local v12    # "windowlessSession":Landroid/view/IWindowSession;
    :catch_143
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v15, "WindowManager"

    move/from16 v16, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t add view: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    if-ltz v11, :cond_162

    move v3, v11

    goto :goto_16a

    :cond_162
    iget-object v3, v1, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 496
    .local v3, "viewIndex":I
    :goto_16a
    if-ltz v3, :cond_171

    .line 497
    move/from16 v8, v16

    invoke-direct {v1, v3, v8}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    .line 499
    :cond_171
    nop

    .end local v6    # "wparams":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "context":Landroid/content/Context;
    .end local v9    # "panelParentView":Landroid/view/View;
    .end local p0    # "this":Landroid/view/WindowManagerGlobal;
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local p3    # "display":Landroid/view/Display;
    .end local p4    # "parentWindow":Landroid/view/Window;
    .end local p5    # "userId":I
    throw v0

    .line 501
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "viewIndex":I
    .end local v11    # "index":I
    .end local v12    # "windowlessSession":Landroid/view/IWindowSession;
    .end local v13    # "root":Landroid/view/ViewRootImpl;
    .restart local v6    # "wparams":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v9    # "panelParentView":Landroid/view/View;
    .restart local p0    # "this":Landroid/view/WindowManagerGlobal;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local p3    # "display":Landroid/view/Display;
    .restart local p4    # "parentWindow":Landroid/view/Window;
    .restart local p5    # "userId":I
    :catchall_173
    move-exception v0

    move/from16 v14, p5

    :goto_176
    monitor-exit v10
    :try_end_177
    .catchall {:try_start_141 .. :try_end_177} :catchall_178

    throw v0

    :catchall_178
    move-exception v0

    goto :goto_176

    .line 394
    .end local v6    # "wparams":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "context":Landroid/content/Context;
    .end local v9    # "panelParentView":Landroid/view/View;
    :cond_17a
    move/from16 v14, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Params must be WindowManager.LayoutParams"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_184
    move/from16 v14, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "display must not be null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_18e
    move/from16 v14, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "view must not be null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addWindowViewsListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 337
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/view/View;>;>;"
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mWindowViewsListenerGroup:Landroid/view/ListenerGroup;

    invoke-virtual {v1, p2}, Landroid/view/ListenerGroup;->isConsumerPresent(Ljava/util/function/Consumer;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 339
    monitor-exit v0

    return-void

    .line 341
    :cond_d
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mWindowViewsListenerGroup:Landroid/view/ListenerGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ListenerGroup;->addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 342
    monitor-exit v0

    .line 343
    return-void

    .line 342
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist addWindowlessRoot(Landroid/view/ViewRootImpl;)V
    .registers 4
    .param p1, "impl"    # Landroid/view/ViewRootImpl;

    .line 1080
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1081
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    monitor-exit v0

    .line 1083
    return-void

    .line 1082
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public greylist-max-o changeCanvasOpacity(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opaque"    # Z

    .line 741
    if-nez p1, :cond_3

    .line 742
    return-void

    .line 744
    :cond_3
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 745
    :try_start_6
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_2c

    .line 746
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v2, p1, :cond_29

    .line 747
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->changeCanvasOpacity(Z)V

    .line 748
    monitor-exit v0

    return-void

    .line 745
    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 751
    .end local v1    # "i":I
    :cond_2c
    monitor-exit v0

    .line 752
    return-void

    .line 751
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public greylist-max-o closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .line 552
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/view/WindowManagerGlobal;->closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public greylist-max-o closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "who"    # Ljava/lang/String;
    .param p4, "what"    # Ljava/lang/String;

    .line 565
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 567
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_77

    .line 568
    if-eqz p2, :cond_16

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p2, :cond_74

    :cond_16
    if-eqz p1, :cond_24

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    .line 569
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_74

    .line 570
    :cond_24
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 572
    .local v3, "root":Landroid/view/ViewRootImpl;
    if-eqz p3, :cond_70

    .line 573
    new-instance v4, Landroid/view/WindowLeaked;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has leaked window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 575
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " that was originally added here"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    .line 576
    .local v4, "leak":Landroid/view/WindowLeaked;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getLocation()Landroid/view/WindowLeaked;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/WindowLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 577
    const-string v5, "WindowManager"

    const-string v6, ""

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    .end local v4    # "leak":Landroid/view/WindowLeaked;
    :cond_70
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    .line 567
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 583
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_77
    monitor-exit v0

    .line 584
    return-void

    .line 583
    :catchall_79
    move-exception v1

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_79

    throw v1
.end method

.method greylist-max-o doRemoveView(Landroid/view/ViewRootImpl;)V
    .registers 7
    .param p1, "root"    # Landroid/view/ViewRootImpl;

    .line 604
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 606
    .local v1, "index":I
    if-ltz v1, :cond_22

    .line 607
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 608
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 609
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 610
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mDyingViews:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 612
    .end local v2    # "view":Landroid/view/View;
    :cond_22
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 613
    .local v2, "allViewsRemoved":Z
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mWindowViewsListenerGroup:Landroid/view/ListenerGroup;

    invoke-virtual {p0}, Landroid/view/WindowManagerGlobal;->getWindowViews()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ListenerGroup;->accept(Ljava/lang/Object;)V

    .line 614
    .end local v1    # "index":I
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_38

    .line 618
    if-eqz v2, :cond_37

    .line 619
    invoke-static {}, Landroid/view/InsetsAnimationThread;->release()V

    .line 621
    :cond_37
    return-void

    .line 614
    .end local v2    # "allViewsRemoved":Z
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public greylist-max-o dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 642
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v0

    .line 643
    .local v3, "fout":Ljava/io/FileOutputStream;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v0

    .line 645
    .local v4, "pw":Ljava/io/PrintWriter;
    :try_start_10
    iget-object v5, v1, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_ea

    .line 646
    :try_start_13
    iget-object v0, v1, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 648
    .local v0, "count":I
    const-string v6, "Profile data in ms:"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1f
    if-ge v6, v0, :cond_54

    .line 651
    iget-object v7, v1, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewRootImpl;

    .line 652
    .local v7, "root":Landroid/view/ViewRootImpl;
    invoke-static {v7}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v8

    .line 653
    .local v8, "name":Ljava/lang/String;
    const-string v9, "\n\t%s (visibility=%d)"

    invoke-virtual {v7}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v8, v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 655
    nop

    .line 656
    invoke-virtual {v7}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v9

    iget-object v9, v9, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;
    :try_end_47
    .catchall {:try_start_13 .. :try_end_47} :catchall_e1

    .line 657
    .local v9, "renderer":Landroid/view/ThreadedRenderer;
    if-eqz v9, :cond_4f

    .line 658
    move-object/from16 v10, p2

    :try_start_4b
    invoke-virtual {v9, v4, v2, v10}, Landroid/view/ThreadedRenderer;->dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    goto :goto_51

    .line 657
    :cond_4f
    move-object/from16 v10, p2

    .line 650
    .end local v7    # "root":Landroid/view/ViewRootImpl;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "renderer":Landroid/view/ThreadedRenderer;
    :goto_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_54
    move-object/from16 v10, p2

    .line 662
    .end local v6    # "i":I
    const-string v6, "\nView hierarchy:\n"

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    new-instance v6, Landroid/view/ViewRootImpl$GfxInfo;

    invoke-direct {v6}, Landroid/view/ViewRootImpl$GfxInfo;-><init>()V

    .line 666
    .local v6, "totals":Landroid/view/ViewRootImpl$GfxInfo;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_61
    if-ge v7, v0, :cond_9d

    .line 667
    iget-object v9, v1, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/ViewRootImpl;

    .line 668
    .local v9, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getGfxInfo()Landroid/view/ViewRootImpl$GfxInfo;

    move-result-object v11

    .line 669
    .local v11, "info":Landroid/view/ViewRootImpl$GfxInfo;
    invoke-virtual {v6, v11}, Landroid/view/ViewRootImpl$GfxInfo;->add(Landroid/view/ViewRootImpl$GfxInfo;)V

    .line 671
    invoke-static {v9}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v12

    .line 672
    .local v12, "name":Ljava/lang/String;
    const-string v13, "  %s\n  %d views, %.2f kB of render nodes"

    iget v14, v11, Landroid/view/ViewRootImpl$GfxInfo;->viewCount:I

    .line 673
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v16, v9

    const/high16 v15, 0x44800000    # 1024.0f

    .end local v9    # "root":Landroid/view/ViewRootImpl;
    .local v16, "root":Landroid/view/ViewRootImpl;
    iget-wide v8, v11, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryUsage:J

    long-to-float v8, v8

    div-float/2addr v8, v15

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v12, v14, v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 672
    invoke-virtual {v4, v13, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 674
    const-string v8, "\n\n"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 666
    nop

    .end local v11    # "info":Landroid/view/ViewRootImpl$GfxInfo;
    .end local v12    # "name":Ljava/lang/String;
    .end local v16    # "root":Landroid/view/ViewRootImpl;
    add-int/lit8 v7, v7, 0x1

    goto :goto_61

    :cond_9d
    const/high16 v15, 0x44800000    # 1024.0f

    .line 677
    .end local v7    # "i":I
    const-string v7, "\nTotal %-15s: %d\n"

    const-string v8, "ViewRootImpl"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 678
    const-string v7, "Total %-15s: %d\n"

    const-string v8, "attached Views"

    iget v9, v6, Landroid/view/ViewRootImpl$GfxInfo;->viewCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 679
    const-string v7, "Total %-15s: %.2f kB (used) / %.2f kB (capacity)\n\n"

    const-string v8, "RenderNode"

    iget-wide v11, v6, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryUsage:J

    long-to-float v9, v11

    div-float/2addr v9, v15

    .line 680
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget-wide v11, v6, Landroid/view/ViewRootImpl$GfxInfo;->renderNodeMemoryAllocated:J

    long-to-float v11, v11

    div-float/2addr v11, v15

    .line 681
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    filled-new-array {v8, v9, v11}, [Ljava/lang/Object;

    move-result-object v8

    .line 679
    invoke-virtual {v4, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 682
    nop

    .end local v0    # "count":I
    .end local v6    # "totals":Landroid/view/ViewRootImpl$GfxInfo;
    monitor-exit v5
    :try_end_dc
    .catchall {:try_start_4b .. :try_end_dc} :catchall_e8

    .line 684
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 685
    nop

    .line 686
    return-void

    .line 682
    :catchall_e1
    move-exception v0

    move-object/from16 v10, p2

    :goto_e4
    :try_start_e4
    monitor-exit v5
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e8

    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .end local v4    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Landroid/view/WindowManagerGlobal;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "args":[Ljava/lang/String;
    :try_start_e5
    throw v0
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e6

    .line 684
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Landroid/view/WindowManagerGlobal;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "args":[Ljava/lang/String;
    :catchall_e6
    move-exception v0

    goto :goto_ed

    .line 682
    :catchall_e8
    move-exception v0

    goto :goto_e4

    .line 684
    :catchall_ea
    move-exception v0

    move-object/from16 v10, p2

    :goto_ed
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 685
    throw v0
.end method

.method public greylist getRootView(Ljava/lang/String;)Landroid/view/View;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 371
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_28

    .line 373
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 374
    .local v2, "root":Landroid/view/ViewRootImpl;
    invoke-static {v2}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 372
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 376
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_30
    if-ltz v1, :cond_4d

    .line 377
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 378
    .restart local v2    # "root":Landroid/view/ViewRootImpl;
    invoke-static {v2}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 376
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    :cond_4a
    add-int/lit8 v1, v1, -0x1

    goto :goto_30

    .line 380
    .end local v1    # "i":I
    :cond_4d
    monitor-exit v0

    .line 382
    const/4 v0, 0x0

    return-object v0

    .line 380
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v1
.end method

.method public greylist-max-r getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 290
    :try_start_8
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 291
    .local v2, "numRoots":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_64

    .line 292
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 293
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v5, :cond_1e

    .line 294
    goto :goto_61

    .line 296
    :cond_1e
    iget-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eq v5, p1, :cond_56

    .line 297
    const/4 v5, 0x0

    .line 298
    .local v5, "isChild":Z
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_53

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_53

    .line 300
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_30
    if-ge v6, v2, :cond_53

    .line 301
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 302
    .local v7, "viewj":Landroid/view/View;
    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    .line 303
    .local v8, "paramsj":Landroid/view/WindowManager$LayoutParams;
    iget-object v9, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-ne v9, v10, :cond_50

    iget-object v9, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v9, p1, :cond_50

    .line 305
    const/4 v5, 0x1

    .line 306
    goto :goto_53

    .line 300
    .end local v7    # "viewj":Landroid/view/View;
    .end local v8    # "paramsj":Landroid/view/WindowManager$LayoutParams;
    :cond_50
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 310
    .end local v6    # "j":I
    :cond_53
    :goto_53
    if-nez v5, :cond_56

    .line 311
    goto :goto_61

    .line 314
    .end local v5    # "isChild":Z
    :cond_56
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 316
    .end local v2    # "numRoots":I
    .end local v3    # "i":I
    :cond_64
    monitor-exit v1

    .line 317
    return-object v0

    .line 316
    :catchall_66
    move-exception v2

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_8 .. :try_end_68} :catchall_66

    throw v2
.end method

.method blacklist getSurfaceControlInputClientToken(Landroid/view/SurfaceControl;)Landroid/os/IBinder;
    .registers 6
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 984
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mSurfaceControlInputReceivers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 985
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mSurfaceControlInputReceivers:Landroid/util/SparseArray;

    .line 986
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v2

    .line 985
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;

    .line 987
    .local v1, "surfaceControlInputReceiverInfo":Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2f

    .line 989
    if-nez v1, :cond_2c

    .line 990
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No registered input event receiver with sc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/4 v0, 0x0

    return-object v0

    .line 993
    :cond_2c
    iget-object v0, v1, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;->mClientToken:Landroid/os/IBinder;

    return-object v0

    .line 987
    .end local v1    # "surfaceControlInputReceiverInfo":Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public greylist getViewRootNames()[Ljava/lang/String;
    .registers 8

    .line 272
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 274
    .local v1, "numRoots":I
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 275
    .local v2, "windowlessRoots":I
    add-int v3, v1, v2

    new-array v3, v3, [Ljava/lang/String;

    .line 276
    .local v3, "mViewRoots":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v1, :cond_27

    .line 277
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 276
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 279
    .end local v4    # "i":I
    :cond_27
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_28
    if-ge v4, v2, :cond_3d

    .line 280
    add-int v5, v4, v1

    iget-object v6, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 279
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 282
    .end local v4    # "i":I
    :cond_3d
    monitor-exit v0

    return-object v3

    .line 283
    .end local v1    # "numRoots":I
    .end local v2    # "windowlessRoots":I
    .end local v3    # "mViewRoots":[Ljava/lang/String;
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public greylist-max-o getWindowView(Landroid/os/IBinder;)Landroid/view/View;
    .registers 7
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 357
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 359
    .local v1, "numViews":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1f

    .line 360
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 361
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_1c

    .line 362
    monitor-exit v0

    return-object v3

    .line 359
    .end local v3    # "view":Landroid/view/View;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 365
    .end local v1    # "numViews":I
    .end local v2    # "i":I
    :cond_1f
    monitor-exit v0

    .line 366
    const/4 v0, 0x0

    return-object v0

    .line 365
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public blacklist getWindowViews()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 327
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;
    .registers 4
    .param p1, "displayId"    # I

    .line 758
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 759
    :catch_9
    move-exception v0

    .line 760
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist registerBatchedSurfaceControlInputReceiver(Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/view/Choreographer;Landroid/view/SurfaceControlInputReceiver;)Landroid/window/InputTransferToken;
    .registers 17
    .param p1, "hostToken"    # Landroid/window/InputTransferToken;
    .param p2, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p3, "choreographer"    # Landroid/view/Choreographer;
    .param p4, "receiver"    # Landroid/view/SurfaceControlInputReceiver;

    .line 924
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    move-object v1, v0

    .line 925
    .local v1, "clientToken":Landroid/os/IBinder;
    new-instance v0, Landroid/window/InputTransferToken;

    invoke-direct {v0}, Landroid/window/InputTransferToken;-><init>()V

    move-object v2, v0

    .line 926
    .local v2, "inputTransferToken":Landroid/window/InputTransferToken;
    invoke-static {v1, p1, p2, v2}, Landroid/view/WindowManagerGlobal;->createInputChannel(Landroid/os/IBinder;Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)Landroid/view/InputChannel;

    move-result-object v5

    .line 929
    .local v5, "inputChannel":Landroid/view/InputChannel;
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mSurfaceControlInputReceivers:Landroid/util/SparseArray;

    monitor-enter v9

    .line 930
    :try_start_13
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mSurfaceControlInputReceivers:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v10

    new-instance v11, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;

    new-instance v3, Landroid/view/WindowManagerGlobal$3;

    .line 932
    invoke-virtual {p3}, Landroid/view/Choreographer;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v4, p0

    move-object v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManagerGlobal$3;-><init>(Landroid/view/WindowManagerGlobal;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Landroid/view/SurfaceControlInputReceiver;)V

    const/4 v4, 0x0

    invoke-direct {v11, v1, v3, v4}, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;-><init>(Landroid/os/IBinder;Landroid/view/InputEventReceiver;Landroid/view/WindowManagerGlobal-IA;)V

    .line 930
    invoke-virtual {v0, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 940
    monitor-exit v9

    .line 941
    return-object v2

    .line 940
    :catchall_31
    move-exception v0

    monitor-exit v9
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public blacklist registerProposedRotationListener(Landroid/os/IBinder;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 10
    .param p1, "contextToken"    # Landroid/os/IBinder;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Ljava/util/function/IntConsumer;

    .line 768
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 769
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mProposedRotationListenerMap:Ljava/util/WeakHashMap;

    if-nez v1, :cond_f

    .line 770
    new-instance v1, Ljava/util/WeakHashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v1, p0, Landroid/view/WindowManagerGlobal;->mProposedRotationListenerMap:Ljava/util/WeakHashMap;

    .line 772
    :cond_f
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mProposedRotationListenerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;

    .line 773
    .local v1, "delegate":Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;
    move-object v2, v1

    .line 774
    .local v2, "existingDelegate":Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;
    if-nez v1, :cond_26

    .line 775
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mProposedRotationListenerMap:Ljava/util/WeakHashMap;

    new-instance v4, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;-><init>(Landroid/view/WindowManagerGlobal-IA;)V

    move-object v1, v4

    invoke-virtual {v3, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    :cond_26
    invoke-virtual {v1, p2, p3}, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->add(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 780
    monitor-exit v0

    return-void

    .line 782
    :cond_2e
    if-eqz v2, :cond_3a

    .line 783
    new-instance v3, Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda1;

    invoke-direct {v3, p3, v2}, Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/IntConsumer;Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;)V

    invoke-interface {p2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 784
    monitor-exit v0

    return-void

    .line 786
    .end local v2    # "existingDelegate":Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_4e

    .line 788
    :try_start_3b
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->registerProposedRotationListener(Landroid/os/IBinder;Landroid/view/IRotationWatcher;)I

    move-result v0

    .line 790
    .local v0, "currentRotation":I
    invoke-virtual {v1, v0}, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->onRotationChanged(I)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_46} :catch_48

    .line 793
    .end local v0    # "currentRotation":I
    nop

    .line 794
    return-void

    .line 791
    :catch_48
    move-exception v0

    .line 792
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 786
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "delegate":Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public blacklist registerTrustedPresentationListener(Landroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "thresholds"    # Landroid/window/TrustedPresentationThresholds;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/window/TrustedPresentationThresholds;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 887
    .local p4, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mTrustedPresentationListener:Landroid/view/WindowManagerGlobal$TrustedPresentationListener;

    invoke-static {v0, p1, p2, p4, p3}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->-$$Nest$maddListener(Landroid/view/WindowManagerGlobal$TrustedPresentationListener;Landroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    .line 888
    return-void
.end method

.method blacklist registerUnbatchedSurfaceControlInputReceiver(Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/os/Looper;Landroid/view/SurfaceControlInputReceiver;)Landroid/window/InputTransferToken;
    .registers 14
    .param p1, "hostToken"    # Landroid/window/InputTransferToken;
    .param p2, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "receiver"    # Landroid/view/SurfaceControlInputReceiver;

    .line 947
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 948
    .local v0, "clientToken":Landroid/os/IBinder;
    new-instance v1, Landroid/window/InputTransferToken;

    invoke-direct {v1}, Landroid/window/InputTransferToken;-><init>()V

    .line 949
    .local v1, "inputTransferToken":Landroid/window/InputTransferToken;
    invoke-static {v0, p1, p2, v1}, Landroid/view/WindowManagerGlobal;->createInputChannel(Landroid/os/IBinder;Landroid/window/InputTransferToken;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)Landroid/view/InputChannel;

    move-result-object v2

    .line 952
    .local v2, "inputChannel":Landroid/view/InputChannel;
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mSurfaceControlInputReceivers:Landroid/util/SparseArray;

    monitor-enter v3

    .line 953
    :try_start_11
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mSurfaceControlInputReceivers:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v5

    new-instance v6, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;

    new-instance v7, Landroid/view/WindowManagerGlobal$4;

    invoke-direct {v7, p0, v2, p3, p4}, Landroid/view/WindowManagerGlobal$4;-><init>(Landroid/view/WindowManagerGlobal;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/SurfaceControlInputReceiver;)V

    const/4 v8, 0x0

    invoke-direct {v6, v0, v7, v8}, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;-><init>(Landroid/os/IBinder;Landroid/view/InputEventReceiver;Landroid/view/WindowManagerGlobal-IA;)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 962
    monitor-exit v3

    .line 963
    return-object v1

    .line 962
    :catchall_27
    move-exception v4

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_27

    throw v4
.end method

.method public greylist-max-r removeView(Landroid/view/View;Z)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "immediate"    # Z

    .line 527
    if-eqz p1, :cond_43

    .line 531
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    const/4 v1, 0x1

    :try_start_6
    invoke-direct {p0, p1, v1}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 533
    .local v1, "index":I
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    .line 534
    .local v2, "curView":Landroid/view/View;
    invoke-direct {p0, v1, p2}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)V

    .line 535
    if-ne v2, p1, :cond_1d

    .line 536
    monitor-exit v0

    return-void

    .line 539
    :cond_1d
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling with view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but the ViewAncestor is attached to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/WindowManagerGlobal;
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "immediate":Z
    throw v3

    .line 541
    .end local v1    # "index":I
    .end local v2    # "curView":Landroid/view/View;
    .restart local p0    # "this":Landroid/view/WindowManagerGlobal;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "immediate":Z
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_6 .. :try_end_42} :catchall_40

    throw v1

    .line 528
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeWindowViewsListener(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 351
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/view/View;>;>;"
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mWindowViewsListenerGroup:Landroid/view/ListenerGroup;

    invoke-virtual {v1, p1}, Landroid/view/ListenerGroup;->removeListener(Ljava/util/function/Consumer;)V

    .line 353
    monitor-exit v0

    .line 354
    return-void

    .line 353
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist removeWindowlessRoot(Landroid/view/ViewRootImpl;)V
    .registers 4
    .param p1, "impl"    # Landroid/view/ViewRootImpl;

    .line 1087
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1088
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mWindowlessRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1089
    monitor-exit v0

    .line 1090
    return-void

    .line 1089
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public greylist-max-o reportNewConfiguration(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 729
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 731
    .local v1, "count":I
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object p1, v2

    .line 732
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_20

    .line 733
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 734
    .local v3, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v3, p1}, Landroid/view/ViewRootImpl;->requestUpdateConfiguration(Landroid/content/res/Configuration;)V

    .line 732
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 736
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_20
    monitor-exit v0

    .line 737
    return-void

    .line 736
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public blacklist setRecentsAppBehindSystemBars(Z)V
    .registers 4
    .param p1, "behindSystemBars"    # Z

    .line 1094
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setRecentsAppBehindSystemBars(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1097
    nop

    .line 1098
    return-void

    .line 1095
    :catch_9
    move-exception v0

    .line 1096
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setStoppedState(Landroid/os/IBinder;Z)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "stopped"    # Z

    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, "nonCurrentThreadRoots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 696
    :try_start_4
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 697
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_c
    if-ltz v3, :cond_45

    .line 698
    if-eqz p1, :cond_1c

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_42

    .line 699
    :cond_1c
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewRootImpl;

    .line 701
    .local v4, "root":Landroid/view/ViewRootImpl;
    iget-object v5, v4, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-ne v5, v6, :cond_30

    .line 702
    invoke-virtual {v4, p2}, Landroid/view/ViewRootImpl;->setWindowStopped(Z)V

    goto :goto_3b

    .line 704
    :cond_30
    if-nez v0, :cond_38

    .line 705
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 707
    :cond_38
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    :goto_3b
    iget-object v5, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p0, v5, p2}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 697
    .end local v4    # "root":Landroid/view/ViewRootImpl;
    :cond_42
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    .line 715
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_4 .. :try_end_46} :catchall_66

    .line 720
    if-eqz v0, :cond_65

    .line 721
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_4e
    if-ltz v1, :cond_65

    .line 722
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 723
    .local v2, "root":Landroid/view/ViewRootImpl;
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v4, Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p2}, Landroid/view/WindowManagerGlobal$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewRootImpl;Z)V

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/ViewRootImpl$ViewRootHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 721
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    add-int/lit8 v1, v1, -0x1

    goto :goto_4e

    .line 726
    .end local v1    # "i":I
    :cond_65
    return-void

    .line 715
    :catchall_66
    move-exception v2

    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v2
.end method

.method blacklist transferTouchGesture(Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z
    .registers 4
    .param p1, "transferFromToken"    # Landroid/window/InputTransferToken;
    .param p2, "transferToToken"    # Landroid/window/InputTransferToken;

    .line 999
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->transferTouchGesture(Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1001
    :catch_9
    move-exception v0

    .line 1002
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1004
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist trimCaches(I)V
    .registers 2
    .param p1, "level"    # I

    .line 638
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->trimCaches(I)V

    .line 639
    return-void
.end method

.method public greylist-max-p trimMemory(I)V
    .registers 2
    .param p1, "level"    # I

    .line 633
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->trimMemory(I)V

    .line 634
    return-void
.end method

.method public blacklist unregisterProposedRotationListener(Landroid/os/IBinder;Ljava/util/function/IntConsumer;)V
    .registers 6
    .param p1, "contextToken"    # Landroid/os/IBinder;
    .param p2, "listener"    # Ljava/util/function/IntConsumer;

    .line 799
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mProposedRotationListenerMap:Ljava/util/WeakHashMap;

    if-nez v1, :cond_9

    .line 801
    monitor-exit v0

    return-void

    .line 803
    :cond_9
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mProposedRotationListenerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;

    .line 804
    .local v1, "delegate":Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;
    if-nez v1, :cond_15

    .line 805
    monitor-exit v0

    return-void

    .line 807
    :cond_15
    invoke-virtual {v1, p2}, Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;->remove(Ljava/util/function/IntConsumer;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 809
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mProposedRotationListenerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_30

    .line 816
    :try_start_21
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_29

    .line 819
    goto :goto_2d

    .line 817
    :catch_29
    move-exception v0

    .line 818
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 820
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2d
    return-void

    .line 812
    :cond_2e
    :try_start_2e
    monitor-exit v0

    return-void

    .line 814
    .end local v1    # "delegate":Landroid/view/WindowManagerGlobal$ProposedRotationListenerDelegate;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    throw v1
.end method

.method blacklist unregisterSurfaceControlInputReceiver(Landroid/view/SurfaceControl;)V
    .registers 6
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 968
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mSurfaceControlInputReceivers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 969
    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mSurfaceControlInputReceivers:Landroid/util/SparseArray;

    .line 970
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v2

    .line 969
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;

    .line 971
    .local v1, "surfaceControlInputReceiverInfo":Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_36

    .line 973
    if-nez v1, :cond_2b

    .line 974
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No registered input event receiver with sc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return-void

    .line 977
    :cond_2b
    iget-object v0, v1, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;->mClientToken:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/view/WindowManagerGlobal;->removeInputChannel(Landroid/os/IBinder;)V

    .line 979
    iget-object v0, v1, Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 980
    return-void

    .line 971
    .end local v1    # "surfaceControlInputReceiverInfo":Landroid/view/WindowManagerGlobal$SurfaceControlInputReceiverInfo;
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public blacklist unregisterTrustedPresentationListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 891
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mTrustedPresentationListener:Landroid/view/WindowManagerGlobal$TrustedPresentationListener;

    invoke-static {v0, p1}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->-$$Nest$mremoveListener(Landroid/view/WindowManagerGlobal$TrustedPresentationListener;Ljava/util/function/Consumer;)V

    .line 892
    return-void
.end method

.method public greylist-max-o updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 505
    if-eqz p1, :cond_37

    .line 508
    instance-of v0, p2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2f

    .line 512
    move-object v0, p2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 514
    .local v0, "wparams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    iget-object v1, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 517
    const/4 v2, 0x1

    :try_start_10
    invoke-direct {p0, p1, v2}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v2

    .line 518
    .local v2, "index":I
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 519
    .local v3, "root":Landroid/view/ViewRootImpl;
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 520
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 521
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 522
    .end local v2    # "index":I
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    monitor-exit v1

    .line 523
    return-void

    .line 522
    :catchall_2c
    move-exception v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2c

    throw v2

    .line 509
    .end local v0    # "wparams":Landroid/view/WindowManager$LayoutParams;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params must be WindowManager.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
