.class public final Lcom/android/server/display/DisplayManagerService;
.super Lcom/android/server/SystemService;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerService$SyncRoot;,
        Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;,
        Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;,
        Lcom/android/server/display/DisplayManagerService$CallbackRecord;,
        Lcom/android/server/display/DisplayManagerService$BinderService;,
        Lcom/android/server/display/DisplayManagerService$LocalService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FORCE_WIFI_DISPLAY_ENABLE:Ljava/lang/String; = "persist.debug.wfd.enable"

.field private static final MSG_DELIVER_DISPLAY_EVENT:I = 0x3

.field private static final MSG_REGISTER_ADDITIONAL_DISPLAY_ADAPTERS:I = 0x2

.field private static final MSG_REGISTER_DEFAULT_DISPLAY_ADAPTER:I = 0x1

.field private static final MSG_REQUEST_TRAVERSAL:I = 0x4

.field private static final MSG_UPDATE_VIEWPORT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "DisplayManagerService"

.field private static final WAIT_FOR_DEFAULT_DISPLAY_TIMEOUT:J = 0x2710L


# instance fields
.field public final mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultViewport:Landroid/hardware/display/DisplayViewport;

.field private final mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

.field private final mDisplayAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/DisplayAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

.field private final mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

.field private mGlobalDisplayBrightness:I

.field private mGlobalDisplayState:I

.field private final mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field private mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private final mLogicalDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private mNextNonDefaultDisplayId:I

.field public mOnlyCore:Z

.field private mPendingTraversal:Z

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private mProjectionService:Landroid/media/projection/IMediaProjectionManager;

.field public mSafeMode:Z

.field private final mSingleDisplayDemoMode:Z

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field private final mTempCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempDefaultViewport:Landroid/hardware/display/DisplayViewport;

.field private final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field private final mTempDisplayStateWorkQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

.field private final mUiHandler:Landroid/os/Handler;

.field private mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

.field private mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

.field private mWifiDisplayScanRequestCount:I

.field private mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Landroid/hardware/display/DisplayViewport;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/input/InputManagerInternal;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempDefaultViewport:Landroid/hardware/display/DisplayViewport;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/display/DisplayManagerService;)Landroid/view/WindowManagerInternal;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getWifiDisplayStatusInternal()Landroid/hardware/display/WifiDisplayStatus;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/display/DisplayManagerService;)Landroid/media/projection/IMediaProjectionManager;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .locals 0
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .locals 0
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .locals 0
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->onCallbackDied(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->pauseWifiDisplayInternal()V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->performTraversalInTransactionFromWindowManagerInternal()V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerAdditionalDisplayAdapters()V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IDisplayManagerCallback;I)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;
    .param p2, "callingPid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerDefaultDisplayAdapter()V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "callingUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(II)Landroid/view/DisplayInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap20(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "appToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->releaseVirtualDisplayInternal(Landroid/os/IBinder;)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/display/DisplayManagerService;II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "brightness"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->requestGlobalDisplayStateInternal(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;III)V
    .locals 0
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->resumeWifiDisplayInternal()V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/display/DisplayManagerService;Z)V
    .locals 0
    .param p1, "inTraversal"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "info"    # Landroid/view/DisplayInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/display/DisplayManagerService;III)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->setDisplayOffsetsInternal(III)V

    #@3
    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/display/DisplayManagerService;IZFIZ)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "hasContent"    # Z
    .param p3, "requestedRefreshRate"    # F
    .param p4, "requestedModeId"    # I
    .param p5, "inTraversal"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/DisplayManagerService;->setDisplayPropertiesInternal(IZFIZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 0
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/DisplayManagerService;I)[I
    .locals 1
    .param p1, "callingUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayIdsInternal(I)[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap30(Lcom/android/server/display/DisplayManagerService;I)V
    .locals 0
    .param p1, "callingPid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanInternal(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/display/DisplayManagerService;I)V
    .locals 0
    .param p1, "callingPid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanInternal(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I
    .locals 1
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "projection"    # Landroid/media/projection/IMediaProjection;
    .param p3, "callingUid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "densityDpi"    # I
    .param p9, "surface"    # Landroid/view/Surface;
    .param p10, "flags"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p10}, Lcom/android/server/display/DisplayManagerService;->createVirtualDisplayInternal(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->connectWifiDisplayInternal(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/display/DisplayManagerService;II)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->deliverDisplayEvent(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->disconnectWifiDisplayInternal()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->forgetWifiDisplayInternal(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 143
    new-instance v1, Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@5
    invoke-direct {v1}, Lcom/android/server/display/DisplayManagerService$SyncRoot;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@a
    .line 162
    new-instance v1, Landroid/util/SparseArray;

    #@c
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@f
    .line 161
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    #@11
    .line 165
    new-instance v1, Ljava/util/ArrayList;

    #@13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    #@18
    .line 168
    new-instance v1, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    #@1f
    .line 172
    new-instance v1, Landroid/util/SparseArray;

    #@21
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@24
    .line 171
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@26
    .line 173
    const/4 v1, 0x1

    #@27
    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    #@29
    .line 177
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2b
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@2e
    .line 176
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@30
    .line 184
    const/4 v1, 0x2

    #@31
    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    #@33
    .line 188
    const/4 v1, -0x1

    #@34
    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    #@36
    .line 205
    new-instance v1, Landroid/hardware/display/DisplayViewport;

    #@38
    invoke-direct {v1}, Landroid/hardware/display/DisplayViewport;-><init>()V

    #@3b
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Landroid/hardware/display/DisplayViewport;

    #@3d
    .line 206
    new-instance v1, Landroid/hardware/display/DisplayViewport;

    #@3f
    invoke-direct {v1}, Landroid/hardware/display/DisplayViewport;-><init>()V

    #@42
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    #@44
    .line 209
    new-instance v1, Lcom/android/server/display/PersistentDataStore;

    #@46
    invoke-direct {v1}, Lcom/android/server/display/PersistentDataStore;-><init>()V

    #@49
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    #@4b
    .line 213
    new-instance v1, Ljava/util/ArrayList;

    #@4d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@50
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    #@52
    .line 216
    new-instance v1, Landroid/view/DisplayInfo;

    #@54
    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    #@57
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    #@59
    .line 220
    new-instance v1, Landroid/hardware/display/DisplayViewport;

    #@5b
    invoke-direct {v1}, Landroid/hardware/display/DisplayViewport;-><init>()V

    #@5e
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDefaultViewport:Landroid/hardware/display/DisplayViewport;

    #@60
    .line 221
    new-instance v1, Landroid/hardware/display/DisplayViewport;

    #@62
    invoke-direct {v1}, Landroid/hardware/display/DisplayViewport;-><init>()V

    #@65
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    #@67
    .line 226
    new-instance v1, Ljava/util/ArrayList;

    #@69
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@6c
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    #@6e
    .line 230
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    #@70
    .line 231
    new-instance v1, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    #@72
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    #@79
    move-result-object v2

    #@7a
    invoke-direct {v1, p0, v2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V

    #@7d
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    #@7f
    .line 232
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    #@82
    move-result-object v1

    #@83
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    #@85
    .line 233
    new-instance v1, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    #@87
    const/4 v2, 0x0

    #@88
    invoke-direct {v1, p0, v2}, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;)V

    #@8b
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    #@8d
    .line 234
    const-string/jumbo v1, "persist.demo.singledisplay"

    #@90
    const/4 v2, 0x0

    #@91
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@94
    move-result v1

    #@95
    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    #@97
    .line 236
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    #@99
    const-string/jumbo v2, "power"

    #@9c
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9f
    move-result-object v0

    #@a0
    check-cast v0, Landroid/os/PowerManager;

    #@a2
    .line 237
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    #@a5
    move-result v1

    #@a6
    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    #@a8
    .line 228
    return-void
.end method

.method private addLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 8
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 758
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    #@4
    move-result-object v0

    #@5
    .line 759
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@7
    and-int/lit8 v5, v5, 0x1

    #@9
    if-eqz v5, :cond_1

    #@b
    const/4 v3, 0x1

    #@c
    .line 761
    .local v3, "isDefault":Z
    :goto_0
    if-eqz v3, :cond_0

    #@e
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v5

    #@14
    if-eqz v5, :cond_0

    #@16
    .line 762
    const-string/jumbo v5, "DisplayManagerService"

    #@19
    new-instance v6, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v7, "Ignoring attempt to add a second default display: "

    #@21
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 763
    const/4 v3, 0x0

    #@31
    .line 766
    :cond_0
    if-nez v3, :cond_2

    #@33
    iget-boolean v5, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    #@35
    if-eqz v5, :cond_2

    #@37
    .line 767
    const-string/jumbo v5, "DisplayManagerService"

    #@3a
    new-instance v6, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v7, "Not creating a logical display for a secondary display  because single display demo mode is enabled: "

    #@42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 769
    return-void

    #@52
    .line 759
    .end local v3    # "isDefault":Z
    :cond_1
    const/4 v3, 0x0

    #@53
    .restart local v3    # "isDefault":Z
    goto :goto_0

    #@54
    .line 772
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->assignDisplayIdLocked(Z)I

    #@57
    move-result v2

    #@58
    .line 773
    .local v2, "displayId":I
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->assignLayerStackLocked(I)I

    #@5b
    move-result v4

    #@5c
    .line 775
    .local v4, "layerStack":I
    new-instance v1, Lcom/android/server/display/LogicalDisplay;

    #@5e
    invoke-direct {v1, v2, v4, p1}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;)V

    #@61
    .line 776
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    #@63
    invoke-virtual {v1, v5}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    #@66
    .line 777
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    #@69
    move-result v5

    #@6a
    if-nez v5, :cond_3

    #@6c
    .line 779
    const-string/jumbo v5, "DisplayManagerService"

    #@6f
    new-instance v6, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v7, "Ignoring display device because the logical display created from it was not considered valid: "

    #@77
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v6

    #@7b
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v6

    #@7f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v6

    #@83
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    .line 781
    return-void

    #@87
    .line 784
    :cond_3
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@89
    invoke-virtual {v5, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@8c
    .line 787
    if-eqz v3, :cond_4

    #@8e
    .line 788
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@90
    invoke-virtual {v5}, Lcom/android/server/display/DisplayManagerService$SyncRoot;->notifyAll()V

    #@93
    .line 791
    :cond_4
    const/4 v5, 0x1

    #@94
    invoke-direct {p0, v2, v5}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    #@97
    .line 757
    return-void
.end method

.method private applyGlobalDisplayStateLocked(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 735
    .local p1, "workQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 736
    .local v0, "count":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@9
    .line 737
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/display/DisplayDevice;

    #@11
    .line 738
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    #@14
    move-result-object v3

    #@15
    .line 739
    .local v3, "runnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_0

    #@17
    .line 740
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1a
    .line 736
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 734
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    :cond_1
    return-void
.end method

.method private assignDisplayIdLocked(Z)I
    .locals 2
    .param p1, "isDefault"    # Z

    #@0
    .prologue
    .line 795
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    #@6
    add-int/lit8 v1, v0, 0x1

    #@8
    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    #@a
    goto :goto_0
.end method

.method private assignLayerStackLocked(I)I
    .locals 0
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 801
    return p1
.end method

.method private clearViewportsLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 897
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Landroid/hardware/display/DisplayViewport;

    #@3
    iput-boolean v1, v0, Landroid/hardware/display/DisplayViewport;->valid:Z

    #@5
    .line 898
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    #@7
    iput-boolean v1, v0, Landroid/hardware/display/DisplayViewport;->valid:Z

    #@9
    .line 896
    return-void
.end method

.method private configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 6
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 902
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    #@5
    move-result-object v1

    #@6
    .line 903
    .local v1, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@8
    and-int/lit16 v5, v5, 0x80

    #@a
    if-eqz v5, :cond_2

    #@c
    const/4 v2, 0x1

    #@d
    .line 907
    .local v2, "ownContent":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    #@10
    move-result-object v0

    #@11
    .line 908
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v2, :cond_1

    #@13
    .line 909
    if-eqz v0, :cond_0

    #@15
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_3

    #@1b
    .line 914
    .end local v0    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    #@1d
    .line 915
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@1f
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    #@25
    .line 920
    :cond_1
    if-nez v0, :cond_4

    #@27
    .line 922
    const-string/jumbo v3, "DisplayManagerService"

    #@2a
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v5, "Missing logical display to use for physical display device: "

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    .line 923
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    #@39
    move-result-object v5

    #@3a
    .line 922
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 924
    return-void

    #@46
    .line 903
    .end local v2    # "ownContent":Z
    :cond_2
    const/4 v2, 0x0

    #@47
    .restart local v2    # "ownContent":Z
    goto :goto_0

    #@48
    .line 912
    .restart local v0    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_3
    const/4 v0, 0x0

    #@49
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    goto :goto_1

    #@4a
    .line 926
    .end local v0    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_4
    iget v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@4c
    if-ne v5, v3, :cond_7

    #@4e
    :goto_2
    invoke-virtual {v0, p1, v3}, Lcom/android/server/display/LogicalDisplay;->configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;Z)V

    #@51
    .line 929
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Landroid/hardware/display/DisplayViewport;

    #@53
    iget-boolean v3, v3, Landroid/hardware/display/DisplayViewport;->valid:Z

    #@55
    if-nez v3, :cond_5

    #@57
    .line 930
    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@59
    and-int/lit8 v3, v3, 0x1

    #@5b
    if-eqz v3, :cond_5

    #@5d
    .line 931
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Landroid/hardware/display/DisplayViewport;

    #@5f
    invoke-static {v3, v0, p1}, Lcom/android/server/display/DisplayManagerService;->setViewportLocked(Landroid/hardware/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    #@62
    .line 933
    :cond_5
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    #@64
    iget-boolean v3, v3, Landroid/hardware/display/DisplayViewport;->valid:Z

    #@66
    if-nez v3, :cond_6

    #@68
    .line 934
    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    #@6a
    const/4 v4, 0x2

    #@6b
    if-ne v3, v4, :cond_6

    #@6d
    .line 935
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    #@6f
    invoke-static {v3, v0, p1}, Lcom/android/server/display/DisplayManagerService;->setViewportLocked(Landroid/hardware/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    #@72
    .line 901
    :cond_6
    return-void

    #@73
    :cond_7
    move v3, v4

    #@74
    .line 926
    goto :goto_2
.end method

.method private connectWifiDisplayInternal(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 487
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v1

    #@3
    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 489
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@9
    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 486
    return-void

    #@e
    .line 487
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method private createVirtualDisplayInternal(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I
    .locals 14
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "projection"    # Landroid/media/projection/IMediaProjection;
    .param p3, "callingUid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "densityDpi"    # I
    .param p9, "surface"    # Landroid/view/Surface;
    .param p10, "flags"    # I

    #@0
    .prologue
    .line 546
    iget-object v13, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v13

    #@3
    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 548
    const-string/jumbo v0, "DisplayManagerService"

    #@a
    const-string/jumbo v1, "Rejecting request to create private virtual display because the virtual display adapter is not available."

    #@d
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 550
    const/4 v0, -0x1

    #@11
    monitor-exit v13

    #@12
    return v0

    #@13
    .line 553
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    #@15
    move-object v1, p1

    #@16
    move-object/from16 v2, p2

    #@18
    move/from16 v3, p3

    #@1a
    move-object/from16 v4, p4

    #@1c
    move-object/from16 v5, p5

    #@1e
    move/from16 v6, p6

    #@20
    move/from16 v7, p7

    #@22
    move/from16 v8, p8

    #@24
    move-object/from16 v9, p9

    #@26
    move/from16 v10, p10

    #@28
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/display/VirtualDisplayAdapter;->createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)Lcom/android/server/display/DisplayDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    move-result-object v11

    #@2c
    .line 556
    .local v11, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v11, :cond_1

    #@2e
    .line 557
    const/4 v0, -0x1

    #@2f
    monitor-exit v13

    #@30
    return v0

    #@31
    .line 560
    :cond_1
    :try_start_2
    invoke-direct {p0, v11}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V

    #@34
    .line 561
    invoke-direct {p0, v11}, Lcom/android/server/display/DisplayManagerService;->findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    #@37
    move-result-object v12

    #@38
    .line 562
    .local v12, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v12, :cond_2

    #@3a
    .line 563
    invoke-virtual {v12}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    move-result v0

    #@3e
    monitor-exit v13

    #@3f
    return v0

    #@40
    .line 567
    :cond_2
    :try_start_3
    const-string/jumbo v0, "DisplayManagerService"

    #@43
    const-string/jumbo v1, "Rejecting request to create virtual display because the logical display was not created."

    #@46
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 569
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    #@4b
    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    #@52
    .line 570
    invoke-direct {p0, v11}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@55
    monitor-exit v13

    #@56
    .line 572
    const/4 v0, -0x1

    #@57
    return v0

    #@58
    .line 546
    .end local v11    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v12    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_0
    move-exception v0

    #@59
    monitor-exit v13

    #@5a
    throw v0
.end method

.method private deliverDisplayEvent(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    #@0
    .prologue
    .line 983
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v3

    #@3
    .line 984
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v0

    #@9
    .line 985
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@e
    .line 986
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@11
    .line 987
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    #@13
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    #@1b
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 986
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    :cond_0
    monitor-exit v3

    #@22
    .line 992
    const/4 v1, 0x0

    #@23
    :goto_1
    if-ge v1, v0, :cond_1

    #@25
    .line 993
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    #@2d
    invoke-virtual {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDisplayEventAsync(II)V

    #@30
    .line 992
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_1

    #@33
    .line 983
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    #@34
    monitor-exit v3

    #@35
    throw v2

    #@36
    .line 995
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@3b
    .line 975
    return-void
.end method

.method private disconnectWifiDisplayInternal()V
    .locals 2

    #@0
    .prologue
    .line 511
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v1

    #@3
    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 513
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@9
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 510
    return-void

    #@e
    .line 511
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1007
    const-string/jumbo v11, "DISPLAY MANAGER (dumpsys display)"

    #@3
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1009
    iget-object v12, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@8
    monitor-enter v12

    #@9
    .line 1010
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v13, "  mOnlyCode="

    #@11
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v11

    #@15
    iget-boolean v13, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    #@17
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v11

    #@1b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v11

    #@1f
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 1011
    new-instance v11, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v13, "  mSafeMode="

    #@2a
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v11

    #@2e
    iget-boolean v13, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    #@30
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@33
    move-result-object v11

    #@34
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v11

    #@38
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b
    .line 1012
    new-instance v11, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v13, "  mPendingTraversal="

    #@43
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v11

    #@47
    iget-boolean v13, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    #@49
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v11

    #@4d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v11

    #@51
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 1013
    new-instance v11, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v13, "  mGlobalDisplayState="

    #@5c
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v11

    #@60
    iget v13, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    #@62
    invoke-static {v13}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@65
    move-result-object v13

    #@66
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v11

    #@6a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v11

    #@6e
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@71
    .line 1014
    new-instance v11, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v13, "  mNextNonDefaultDisplayId="

    #@79
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v11

    #@7d
    iget v13, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    #@7f
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@82
    move-result-object v11

    #@83
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v11

    #@87
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8a
    .line 1015
    new-instance v11, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v13, "  mDefaultViewport="

    #@92
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v11

    #@96
    iget-object v13, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Landroid/hardware/display/DisplayViewport;

    #@98
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v11

    #@9c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v11

    #@a0
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a3
    .line 1016
    new-instance v11, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v13, "  mExternalTouchViewport="

    #@ab
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v11

    #@af
    iget-object v13, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;

    #@b1
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v11

    #@b5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v11

    #@b9
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bc
    .line 1017
    new-instance v11, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v13, "  mSingleDisplayDemoMode="

    #@c4
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v11

    #@c8
    iget-boolean v13, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    #@ca
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v11

    #@ce
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v11

    #@d2
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d5
    .line 1018
    new-instance v11, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v13, "  mWifiDisplayScanRequestCount="

    #@dd
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v11

    #@e1
    iget v13, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    #@e3
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v11

    #@e7
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v11

    #@eb
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ee
    .line 1020
    new-instance v9, Lcom/android/internal/util/IndentingPrintWriter;

    #@f0
    const-string/jumbo v11, "    "

    #@f3
    invoke-direct {v9, p1, v11}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@f6
    .line 1021
    .local v9, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@f9
    .line 1023
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@fc
    .line 1024
    new-instance v11, Ljava/lang/StringBuilder;

    #@fe
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@101
    const-string/jumbo v13, "Display Adapters: size="

    #@104
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v11

    #@108
    iget-object v13, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    #@10a
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@10d
    move-result v13

    #@10e
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@111
    move-result-object v11

    #@112
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@115
    move-result-object v11

    #@116
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@119
    .line 1025
    iget-object v11, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    #@11b
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11e
    move-result-object v1

    #@11f
    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@122
    move-result v11

    #@123
    if-eqz v11, :cond_0

    #@125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@128
    move-result-object v0

    #@129
    check-cast v0, Lcom/android/server/display/DisplayAdapter;

    #@12b
    .line 1026
    .local v0, "adapter":Lcom/android/server/display/DisplayAdapter;
    new-instance v11, Ljava/lang/StringBuilder;

    #@12d
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@130
    const-string/jumbo v13, "  "

    #@133
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v11

    #@137
    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getName()Ljava/lang/String;

    #@13a
    move-result-object v13

    #@13b
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v11

    #@13f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@142
    move-result-object v11

    #@143
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@146
    .line 1027
    invoke-virtual {v0, v9}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@149
    goto :goto_0

    #@14a
    .line 1009
    .end local v0    # "adapter":Lcom/android/server/display/DisplayAdapter;
    .end local v1    # "adapter$iterator":Ljava/util/Iterator;
    .end local v9    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_0
    move-exception v11

    #@14b
    monitor-exit v12

    #@14c
    throw v11

    #@14d
    .line 1030
    .restart local v1    # "adapter$iterator":Ljava/util/Iterator;
    .restart local v9    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@150
    .line 1031
    new-instance v11, Ljava/lang/StringBuilder;

    #@152
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@155
    const-string/jumbo v13, "Display Devices: size="

    #@158
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v11

    #@15c
    iget-object v13, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    #@15e
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@161
    move-result v13

    #@162
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@165
    move-result-object v11

    #@166
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@169
    move-result-object v11

    #@16a
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16d
    .line 1032
    iget-object v11, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    #@16f
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@172
    move-result-object v5

    #@173
    .local v5, "device$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@176
    move-result v11

    #@177
    if-eqz v11, :cond_1

    #@179
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17c
    move-result-object v4

    #@17d
    check-cast v4, Lcom/android/server/display/DisplayDevice;

    #@17f
    .line 1033
    .local v4, "device":Lcom/android/server/display/DisplayDevice;
    new-instance v11, Ljava/lang/StringBuilder;

    #@181
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@184
    const-string/jumbo v13, "  "

    #@187
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v11

    #@18b
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    #@18e
    move-result-object v13

    #@18f
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v11

    #@193
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@196
    move-result-object v11

    #@197
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19a
    .line 1034
    invoke-virtual {v4, v9}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    #@19d
    goto :goto_1

    #@19e
    .line 1037
    .end local v4    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_1
    iget-object v11, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@1a0
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    #@1a3
    move-result v10

    #@1a4
    .line 1038
    .local v10, "logicalDisplayCount":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@1a7
    .line 1039
    new-instance v11, Ljava/lang/StringBuilder;

    #@1a9
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1ac
    const-string/jumbo v13, "Logical Displays: size="

    #@1af
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v11

    #@1b3
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v11

    #@1b7
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ba
    move-result-object v11

    #@1bb
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1be
    .line 1040
    const/4 v8, 0x0

    #@1bf
    .local v8, "i":I
    :goto_2
    if-ge v8, v10, :cond_2

    #@1c1
    .line 1041
    iget-object v11, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@1c3
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    #@1c6
    move-result v7

    #@1c7
    .line 1042
    .local v7, "displayId":I
    iget-object v11, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@1c9
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1cc
    move-result-object v6

    #@1cd
    check-cast v6, Lcom/android/server/display/LogicalDisplay;

    #@1cf
    .line 1043
    .local v6, "display":Lcom/android/server/display/LogicalDisplay;
    new-instance v11, Ljava/lang/StringBuilder;

    #@1d1
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1d4
    const-string/jumbo v13, "  Display "

    #@1d7
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v11

    #@1db
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v11

    #@1df
    const-string/jumbo v13, ":"

    #@1e2
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v11

    #@1e6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e9
    move-result-object v11

    #@1ea
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ed
    .line 1044
    invoke-virtual {v6, v9}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    #@1f0
    .line 1040
    add-int/lit8 v8, v8, 0x1

    #@1f2
    goto :goto_2

    #@1f3
    .line 1047
    .end local v6    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v7    # "displayId":I
    :cond_2
    iget-object v11, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    #@1f5
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    #@1f8
    move-result v3

    #@1f9
    .line 1048
    .local v3, "callbackCount":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@1fc
    .line 1049
    new-instance v11, Ljava/lang/StringBuilder;

    #@1fe
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@201
    const-string/jumbo v13, "Callbacks: size="

    #@204
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v11

    #@208
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v11

    #@20c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20f
    move-result-object v11

    #@210
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@213
    .line 1050
    const/4 v8, 0x0

    #@214
    :goto_3
    if-ge v8, v3, :cond_3

    #@216
    .line 1051
    iget-object v11, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    #@218
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@21b
    move-result-object v2

    #@21c
    check-cast v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    #@21e
    .line 1052
    .local v2, "callback":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    new-instance v11, Ljava/lang/StringBuilder;

    #@220
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@223
    const-string/jumbo v13, "  "

    #@226
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@229
    move-result-object v11

    #@22a
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22d
    move-result-object v11

    #@22e
    const-string/jumbo v13, ": mPid="

    #@231
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@234
    move-result-object v11

    #@235
    iget v13, v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    #@237
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23a
    move-result-object v11

    #@23b
    .line 1053
    const-string/jumbo v13, ", mWifiDisplayScanRequested="

    #@23e
    .line 1052
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@241
    move-result-object v11

    #@242
    .line 1053
    iget-boolean v13, v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    #@244
    .line 1052
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@247
    move-result-object v11

    #@248
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24b
    move-result-object v11

    #@24c
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24f
    .line 1050
    add-int/lit8 v8, v8, 0x1

    #@251
    goto :goto_3

    #@252
    .line 1056
    .end local v2    # "callback":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :cond_3
    iget-object v11, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    #@254
    if-eqz v11, :cond_4

    #@256
    .line 1057
    iget-object v11, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    #@258
    invoke-virtual {v11, p1}, Lcom/android/server/display/DisplayPowerController;->dump(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25b
    :cond_4
    monitor-exit v12

    #@25c
    .line 1006
    return-void
.end method

.method private findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .locals 4
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    #@0
    .prologue
    .line 947
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v0

    #@6
    .line 948
    .local v0, "count":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@9
    .line 949
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    #@11
    .line 950
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    #@14
    move-result-object v3

    #@15
    if-ne v3, p1, :cond_0

    #@17
    .line 951
    return-object v1

    #@18
    .line 948
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 954
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_1
    const/4 v3, 0x0

    #@1c
    return-object v3
.end method

.method private forgetWifiDisplayInternal(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 527
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v1

    #@3
    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 529
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@9
    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestForgetLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 526
    return-void

    #@e
    .line 527
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method private getDisplayIdsInternal(I)[I
    .locals 9
    .param p1, "callingUid"    # I

    #@0
    .prologue
    .line 393
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v8

    #@3
    .line 394
    :try_start_0
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v0

    #@9
    .line 395
    .local v0, "count":I
    new-array v2, v0, [I

    #@b
    .line 396
    .local v2, "displayIds":[I
    const/4 v5, 0x0

    #@c
    .line 397
    .local v5, "n":I
    const/4 v3, 0x0

    #@d
    .local v3, "i":I
    move v6, v5

    #@e
    .end local v5    # "n":I
    .local v6, "n":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@10
    .line 398
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    #@18
    .line 399
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    #@1b
    move-result-object v4

    #@1c
    .line 400
    .local v4, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v4, p1}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    #@1f
    move-result v7

    #@20
    if-eqz v7, :cond_2

    #@22
    .line 401
    add-int/lit8 v5, v6, 0x1

    #@24
    .end local v6    # "n":I
    .restart local v5    # "n":I
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@26
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    #@29
    move-result v7

    #@2a
    aput v7, v2, v6

    #@2c
    .line 397
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@2e
    move v6, v5

    #@2f
    .end local v5    # "n":I
    .restart local v6    # "n":I
    goto :goto_0

    #@30
    .line 404
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v4    # "info":Landroid/view/DisplayInfo;
    :cond_0
    if-eq v6, v0, :cond_1

    #@32
    .line 405
    const/4 v7, 0x0

    #@33
    invoke-static {v2, v7, v6}, Ljava/util/Arrays;->copyOfRange([III)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    move-result-object v2

    #@37
    :cond_1
    monitor-exit v8

    #@38
    .line 407
    return-object v2

    #@39
    .line 393
    .end local v0    # "count":I
    .end local v2    # "displayIds":[I
    .end local v3    # "i":I
    .end local v6    # "n":I
    :catchall_0
    move-exception v7

    #@3a
    monitor-exit v8

    #@3b
    throw v7

    #@3c
    .restart local v0    # "count":I
    .restart local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    .restart local v2    # "displayIds":[I
    .restart local v3    # "i":I
    .restart local v4    # "info":Landroid/view/DisplayInfo;
    .restart local v6    # "n":I
    :cond_2
    move v5, v6

    #@3d
    .end local v6    # "n":I
    .restart local v5    # "n":I
    goto :goto_1
.end method

.method private getDisplayInfoInternal(II)Landroid/view/DisplayInfo;
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "callingUid"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 380
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@3
    monitor-enter v3

    #@4
    .line 381
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    #@c
    .line 382
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_0

    #@e
    .line 383
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    #@11
    move-result-object v1

    #@12
    .line 384
    .local v1, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v1, p2}, Landroid/view/DisplayInfo;->hasAccess(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    monitor-exit v3

    #@19
    .line 385
    return-object v1

    #@1a
    .end local v1    # "info":Landroid/view/DisplayInfo;
    :cond_0
    monitor-exit v3

    #@1b
    .line 388
    return-object v4

    #@1c
    .line 380
    .end local v0    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_0
    move-exception v2

    #@1d
    monitor-exit v3

    #@1e
    throw v2
.end method

.method private getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .locals 2

    #@0
    .prologue
    .line 999
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1000
    const-string/jumbo v1, "media_projection"

    #@7
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v0

    #@b
    .line 1001
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    #@11
    .line 1003
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    #@13
    return-object v1
.end method

.method private getWifiDisplayStatusInternal()Landroid/hardware/display/WifiDisplayStatus;
    .locals 2

    #@0
    .prologue
    .line 535
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v1

    #@3
    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 537
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@9
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    monitor-exit v1

    #@e
    return-object v0

    #@f
    .line 539
    :cond_0
    :try_start_1
    new-instance v0, Landroid/hardware/display/WifiDisplayStatus;

    #@11
    invoke-direct {v0}, Landroid/hardware/display/WifiDisplayStatus;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    .line 535
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method private handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V
    .locals 2
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    #@0
    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v0

    #@3
    .line 667
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 665
    return-void

    #@8
    .line 666
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method private handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 5
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    #@0
    .prologue
    .line 672
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    #@3
    move-result-object v0

    #@4
    .line 673
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 674
    const-string/jumbo v2, "DisplayManagerService"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Attempted to add already added display device: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 675
    return-void

    #@27
    .line 678
    :cond_0
    const-string/jumbo v2, "DisplayManagerService"

    #@2a
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v4, "Display device added: "

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 679
    iput-object v0, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@43
    .line 681
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@48
    .line 682
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->addLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;)V

    #@4b
    .line 683
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    #@4e
    move-result-object v1

    #@4f
    .line 684
    .local v1, "work":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    #@51
    .line 685
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    #@54
    .line 687
    :cond_1
    const/4 v2, 0x0

    #@55
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    #@58
    .line 671
    return-void
.end method

.method private handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V
    .locals 6
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    #@0
    .prologue
    .line 691
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v3

    #@3
    .line 692
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    #@6
    move-result-object v1

    #@7
    .line 693
    .local v1, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    .line 694
    const-string/jumbo v2, "DisplayManagerService"

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "Attempted to change non-existent display device: "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    monitor-exit v3

    #@2a
    .line 695
    return-void

    #@2b
    .line 698
    :cond_0
    :try_start_1
    iget-object v2, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@2d
    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayDeviceInfo;->diff(Lcom/android/server/display/DisplayDeviceInfo;)I

    #@30
    move-result v0

    #@31
    .line 699
    .local v0, "diff":I
    const/4 v2, 0x1

    #@32
    if-ne v0, v2, :cond_3

    #@34
    .line 700
    const-string/jumbo v2, "DisplayManagerService"

    #@37
    new-instance v4, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v5, "Display device changed state: \""

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    iget-object v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    .line 701
    const-string/jumbo v5, "\", "

    #@4c
    .line 700
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    .line 701
    iget v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    #@52
    invoke-static {v5}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    .line 700
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 705
    :cond_1
    :goto_0
    iput-object v1, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@63
    .line 707
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->applyPendingDisplayDeviceInfoChangesLocked()V

    #@66
    .line 708
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    #@69
    move-result v2

    #@6a
    if-eqz v2, :cond_2

    #@6c
    .line 709
    const/4 v2, 0x0

    #@6d
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@70
    :cond_2
    monitor-exit v3

    #@71
    .line 690
    return-void

    #@72
    .line 702
    :cond_3
    if-eqz v0, :cond_1

    #@74
    .line 703
    :try_start_2
    const-string/jumbo v2, "DisplayManagerService"

    #@77
    new-instance v4, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v5, "Display device changed: "

    #@7f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v4

    #@87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v4

    #@8b
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8e
    goto :goto_0

    #@8f
    .line 691
    .end local v0    # "diff":I
    .end local v1    # "info":Lcom/android/server/display/DisplayDeviceInfo;
    :catchall_0
    move-exception v2

    #@90
    monitor-exit v3

    #@91
    throw v2
.end method

.method private handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V
    .locals 2
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    #@0
    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v0

    #@3
    .line 716
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 714
    return-void

    #@8
    .line 715
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method private handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    #@0
    .prologue
    .line 721
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    #@3
    move-result-object v0

    #@4
    .line 722
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 723
    const-string/jumbo v1, "DisplayManagerService"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Attempted to remove non-existent display device: "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 724
    return-void

    #@27
    .line 727
    :cond_0
    const-string/jumbo v1, "DisplayManagerService"

    #@2a
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v3, "Display device removed: "

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 728
    iput-object v0, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    #@43
    .line 730
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    #@46
    .line 731
    const/4 v1, 0x0

    #@47
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    #@4a
    .line 720
    return-void
.end method

.method private onCallbackDied(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    #@0
    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v1

    #@3
    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    #@5
    iget v2, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    #@7
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    #@a
    .line 434
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 431
    return-void

    #@f
    .line 432
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method private pauseWifiDisplayInternal()V
    .locals 2

    #@0
    .prologue
    .line 495
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v1

    #@3
    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 497
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@9
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestPauseLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 494
    return-void

    #@e
    .line 495
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method private performTraversalInTransactionFromWindowManagerInternal()V
    .locals 4

    #@0
    .prologue
    .line 319
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v3

    #@3
    .line 320
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v2, :cond_0

    #@7
    monitor-exit v3

    #@8
    .line 321
    return-void

    #@9
    .line 323
    :cond_0
    const/4 v2, 0x0

    #@a
    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    #@c
    .line 325
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->performTraversalInTransactionLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    monitor-exit v3

    #@10
    .line 329
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    #@22
    .line 330
    .local v0, "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;
    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;->onDisplayTransaction()V

    #@25
    goto :goto_0

    #@26
    .line 319
    .end local v0    # "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@27
    monitor-exit v3

    #@28
    throw v2

    #@29
    .line 318
    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private performTraversalInTransactionLocked()V
    .locals 5

    #@0
    .prologue
    .line 830
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->clearViewportsLocked()V

    #@3
    .line 833
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    .line 834
    .local v0, "count":I
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@c
    .line 835
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/display/DisplayDevice;

    #@14
    .line 836
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;)V

    #@17
    .line 837
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->performTraversalInTransactionLocked()V

    #@1a
    .line 834
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 841
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 842
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    #@23
    const/4 v4, 0x5

    #@24
    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    #@27
    .line 827
    :cond_1
    return-void
.end method

.method private registerAdditionalDisplayAdapters()V
    .locals 2

    #@0
    .prologue
    .line 619
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v1

    #@3
    .line 620
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->shouldRegisterNonEssentialDisplayAdaptersLocked()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 621
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerOverlayDisplayAdapterLocked()V

    #@c
    .line 622
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerWifiDisplayAdapterLocked()V

    #@f
    .line 623
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerVirtualDisplayAdapterLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 618
    return-void

    #@14
    .line 619
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method private registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;I)V
    .locals 6
    .param p1, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;
    .param p2, "callingPid"    # I

    #@0
    .prologue
    .line 412
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v4

    #@3
    .line 413
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 414
    new-instance v3, Ljava/lang/SecurityException;

    #@d
    const-string/jumbo v5, "The calling process has already registered an IDisplayManagerCallback."

    #@10
    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@13
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 412
    :catchall_0
    move-exception v3

    #@15
    monitor-exit v4

    #@16
    throw v3

    #@17
    .line 418
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    #@19
    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;-><init>(Lcom/android/server/display/DisplayManagerService;ILandroid/hardware/display/IDisplayManagerCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    .line 420
    .local v2, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :try_start_2
    invoke-interface {p1}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    #@1f
    move-result-object v0

    #@20
    .line 421
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v3, 0x0

    #@21
    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    .line 427
    :try_start_3
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    #@26
    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@29
    monitor-exit v4

    #@2a
    .line 411
    return-void

    #@2b
    .line 422
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    #@2c
    .line 424
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_4
    new-instance v3, Ljava/lang/RuntimeException;

    #@2e
    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@31
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private registerDefaultDisplayAdapter()V
    .locals 6

    #@0
    .prologue
    .line 612
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v1

    #@3
    .line 613
    :try_start_0
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter;

    #@5
    .line 614
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@7
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    #@9
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    #@b
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    #@d
    .line 613
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    #@10
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 610
    return-void

    #@15
    .line 612
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method private registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/android/server/display/DisplayAdapter;

    #@0
    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 662
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    #@8
    .line 660
    return-void
.end method

.method private registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 294
    return-void
.end method

.method private registerOverlayDisplayAdapterLocked()V
    .locals 6

    #@0
    .prologue
    .line 629
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter;

    #@2
    .line 630
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    #@6
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    #@8
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    #@a
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    #@c
    .line 629
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/OverlayDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V

    #@f
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    #@12
    .line 628
    return-void
.end method

.method private registerVirtualDisplayAdapterLocked()V
    .locals 5

    #@0
    .prologue
    .line 645
    new-instance v0, Lcom/android/server/display/VirtualDisplayAdapter;

    #@2
    .line 646
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    #@6
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    #@8
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    #@a
    .line 645
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/display/VirtualDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    #@d
    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    #@f
    .line 647
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    #@11
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    #@14
    .line 644
    return-void
.end method

.method private registerWifiDisplayAdapterLocked()V
    .locals 6

    #@0
    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 635
    const v1, 0x1120070

    #@9
    .line 634
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 636
    const-string/jumbo v0, "persist.debug.wfd.enable"

    #@12
    const/4 v1, -0x1

    #@13
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@16
    move-result v0

    #@17
    const/4 v1, 0x1

    #@18
    if-ne v0, v1, :cond_1

    #@1a
    .line 637
    :cond_0
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter;

    #@1c
    .line 638
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@1e
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    #@20
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    #@22
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    #@24
    .line 639
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    #@26
    .line 637
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;)V

    #@29
    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@2b
    .line 640
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@2d
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    #@30
    .line 633
    :cond_1
    return-void
.end method

.method private releaseVirtualDisplayInternal(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "appToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 597
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v2

    #@3
    .line 598
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v1, :cond_0

    #@7
    monitor-exit v2

    #@8
    .line 599
    return-void

    #@9
    .line 603
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    #@b
    invoke-virtual {v1, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    #@e
    move-result-object v0

    #@f
    .line 604
    .local v0, "device":Lcom/android/server/display/DisplayDevice;
    if-eqz v0, :cond_1

    #@11
    .line 605
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    :cond_1
    monitor-exit v2

    #@15
    .line 596
    return-void

    #@16
    .line 597
    .end local v0    # "device":Lcom/android/server/display/DisplayDevice;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method private renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 519
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v1

    #@3
    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 521
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 518
    return-void

    #@e
    .line 519
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method private requestGlobalDisplayStateInternal(II)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "brightness"    # I

    #@0
    .prologue
    .line 335
    if-nez p1, :cond_0

    #@2
    .line 336
    const/4 p1, 0x2

    #@3
    .line 338
    :cond_0
    const/4 v1, 0x1

    #@4
    if-ne p1, v1, :cond_2

    #@6
    .line 339
    const/4 p2, 0x0

    #@7
    .line 346
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    #@9
    monitor-enter v2

    #@a
    .line 351
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@c
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@d
    .line 352
    :try_start_1
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    #@f
    if-ne v1, p1, :cond_4

    #@11
    .line 353
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    if-ne v1, p2, :cond_4

    #@15
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@16
    .line 374
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@1b
    monitor-exit v2

    #@1c
    .line 354
    return-void

    #@1d
    .line 340
    :cond_2
    if-gez p2, :cond_3

    #@1f
    .line 341
    const/4 p2, -0x1

    #@20
    goto :goto_0

    #@21
    .line 342
    :cond_3
    const/16 v1, 0xff

    #@23
    if-le p2, v1, :cond_1

    #@25
    .line 343
    const/16 p2, 0xff

    #@27
    goto :goto_0

    #@28
    .line 357
    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v4, "requestGlobalDisplayState("

    #@30
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 358
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    .line 357
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 359
    const-string/jumbo v4, ", brightness="

    #@3f
    .line 357
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    .line 359
    const-string/jumbo v4, ")"

    #@4a
    .line 357
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    const-wide/32 v4, 0x20000

    #@55
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@58
    .line 360
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    #@5a
    .line 361
    iput p2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    #@5c
    .line 362
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    #@5e
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->applyGlobalDisplayStateLocked(Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@61
    :try_start_5
    monitor-exit v3

    #@62
    .line 369
    const/4 v0, 0x0

    #@63
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    #@65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@68
    move-result v1

    #@69
    if-ge v0, v1, :cond_5

    #@6b
    .line 370
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    #@6d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@70
    move-result-object v1

    #@71
    check-cast v1, Ljava/lang/Runnable;

    #@73
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    #@76
    .line 369
    add-int/lit8 v0, v0, 0x1

    #@78
    goto :goto_1

    #@79
    .line 351
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@7a
    monitor-exit v3

    #@7b
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@7c
    .line 373
    :catchall_1
    move-exception v1

    #@7d
    .line 374
    :try_start_6
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    #@7f
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@82
    .line 373
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@83
    .line 346
    :catchall_2
    move-exception v1

    #@84
    monitor-exit v2

    #@85
    throw v1

    #@86
    .line 372
    .restart local v0    # "i":I
    :cond_5
    const-wide/32 v4, 0x20000

    #@89
    :try_start_7
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@8c
    .line 374
    :try_start_8
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    #@8e
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@91
    monitor-exit v2

    #@92
    .line 334
    return-void
.end method

.method private resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    #@0
    .prologue
    .line 577
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v1

    #@3
    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 579
    return-void

    #@9
    .line 582
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    #@b
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/VirtualDisplayAdapter;->resizeVirtualDisplayLocked(Landroid/os/IBinder;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 576
    return-void

    #@10
    .line 577
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method private resumeWifiDisplayInternal()V
    .locals 2

    #@0
    .prologue
    .line 503
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v1

    #@3
    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 505
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@9
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestResumeLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 502
    return-void

    #@e
    .line 503
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method private scheduleTraversalLocked(Z)V
    .locals 2
    .param p1, "inTraversal"    # Z

    #@0
    .prologue
    .line 965
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 966
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    #@b
    .line 967
    if-nez p1, :cond_0

    #@d
    .line 968
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    #@f
    const/4 v1, 0x4

    #@10
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    #@13
    .line 964
    :cond_0
    return-void
.end method

.method private sendDisplayEventLocked(II)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    #@0
    .prologue
    .line 958
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    #@2
    const/4 v2, 0x3

    #@3
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->obtainMessage(III)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 959
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    #@9
    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendMessage(Landroid/os/Message;)Z

    #@c
    .line 957
    return-void
.end method

.method private setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "info"    # Landroid/view/DisplayInfo;

    #@0
    .prologue
    .line 307
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v2

    #@3
    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    #@b
    .line 309
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_0

    #@d
    .line 310
    invoke-virtual {v0, p2}, Lcom/android/server/display/LogicalDisplay;->setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 311
    const/4 v1, 0x2

    #@14
    invoke-direct {p0, p1, v1}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    #@17
    .line 312
    const/4 v1, 0x0

    #@18
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_0
    monitor-exit v2

    #@1c
    .line 306
    return-void

    #@1d
    .line 307
    .end local v0    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method private setDisplayOffsetsInternal(III)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    #@0
    .prologue
    .line 879
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v2

    #@3
    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/display/LogicalDisplay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 881
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v0, :cond_0

    #@d
    monitor-exit v2

    #@e
    .line 882
    return-void

    #@f
    .line 884
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffsetXLocked()I

    #@12
    move-result v1

    #@13
    if-ne v1, p2, :cond_1

    #@15
    .line 885
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffsetYLocked()I

    #@18
    move-result v1

    #@19
    if-eq v1, p3, :cond_2

    #@1b
    .line 890
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/android/server/display/LogicalDisplay;->setDisplayOffsetsLocked(II)V

    #@1e
    .line 891
    const/4 v1, 0x0

    #@1f
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    :cond_2
    monitor-exit v2

    #@23
    .line 878
    return-void

    #@24
    .line 879
    .end local v0    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1
.end method

.method private setDisplayPropertiesInternal(IZFIZ)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "hasContent"    # Z
    .param p3, "requestedRefreshRate"    # F
    .param p4, "requestedModeId"    # I
    .param p5, "inTraversal"    # Z

    #@0
    .prologue
    .line 848
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v2

    #@3
    .line 849
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/display/LogicalDisplay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 850
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v0, :cond_0

    #@d
    monitor-exit v2

    #@e
    .line 851
    return-void

    #@f
    .line 853
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    #@12
    move-result v1

    #@13
    if-eq v1, p2, :cond_1

    #@15
    .line 859
    invoke-virtual {v0, p2}, Lcom/android/server/display/LogicalDisplay;->setHasContentLocked(Z)V

    #@18
    .line 860
    invoke-direct {p0, p5}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    #@1b
    .line 862
    :cond_1
    if-nez p4, :cond_2

    #@1d
    const/4 v1, 0x0

    #@1e
    cmpl-float v1, p3, v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 865
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p3}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)I

    #@29
    move-result p4

    #@2a
    .line 868
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getRequestedModeIdLocked()I

    #@2d
    move-result v1

    #@2e
    if-eq v1, p4, :cond_3

    #@30
    .line 872
    invoke-virtual {v0, p4}, Lcom/android/server/display/LogicalDisplay;->setRequestedModeIdLocked(I)V

    #@33
    .line 873
    invoke-direct {p0, p5}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    :cond_3
    monitor-exit v2

    #@37
    .line 847
    return-void

    #@38
    .line 848
    .end local v0    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_0
    move-exception v1

    #@39
    monitor-exit v2

    #@3a
    throw v1
.end method

.method private static setViewportLocked(Landroid/hardware/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V
    .locals 1
    .param p0, "viewport"    # Landroid/hardware/display/DisplayViewport;
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;
    .param p2, "device"    # Lcom/android/server/display/DisplayDevice;

    #@0
    .prologue
    .line 941
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    #@3
    .line 942
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    #@9
    .line 943
    invoke-virtual {p2, p0}, Lcom/android/server/display/DisplayDevice;->populateViewportLocked(Landroid/hardware/display/DisplayViewport;)V

    #@c
    .line 940
    return-void
.end method

.method private setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 2
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 587
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v1

    #@3
    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 589
    return-void

    #@9
    .line 592
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    #@b
    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->setVirtualDisplaySurfaceLocked(Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 586
    return-void

    #@10
    .line 587
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method private shouldRegisterNonEssentialDisplayAdaptersLocked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 657
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    #@3
    if-nez v1, :cond_0

    #@5
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method private startWifiDisplayScanInternal(I)V
    .locals 4
    .param p1, "callingPid"    # I

    #@0
    .prologue
    .line 439
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v2

    #@3
    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    #@b
    .line 441
    .local v0, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    if-nez v0, :cond_0

    #@d
    .line 442
    new-instance v1, Ljava/lang/IllegalStateException;

    #@f
    const-string/jumbo v3, "The calling process has not registered an IDisplayManagerCallback."

    #@12
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 439
    .end local v0    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1

    #@19
    .line 445
    .restart local v0    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit v2

    #@1d
    .line 438
    return-void
.end method

.method private startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .locals 2
    .param p1, "record"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    #@0
    .prologue
    .line 450
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 451
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    #@7
    .line 452
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    #@9
    add-int/lit8 v1, v0, 0x1

    #@b
    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    #@d
    if-nez v0, :cond_0

    #@f
    .line 453
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 454
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@15
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestStartScanLocked()V

    #@18
    .line 449
    :cond_0
    return-void
.end method

.method private stopWifiDisplayScanInternal(I)V
    .locals 4
    .param p1, "callingPid"    # I

    #@0
    .prologue
    .line 461
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v2

    #@3
    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    #@b
    .line 463
    .local v0, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    if-nez v0, :cond_0

    #@d
    .line 464
    new-instance v1, Ljava/lang/IllegalStateException;

    #@f
    const-string/jumbo v3, "The calling process has not registered an IDisplayManagerCallback."

    #@12
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 461
    .end local v0    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1

    #@19
    .line 467
    .restart local v0    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit v2

    #@1d
    .line 460
    return-void
.end method

.method private stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 472
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 473
    iput-boolean v3, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    #@7
    .line 474
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    #@9
    add-int/lit8 v0, v0, -0x1

    #@b
    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    #@d
    if-nez v0, :cond_1

    #@f
    .line 475
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 476
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    #@15
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestStopScanLocked()V

    #@18
    .line 471
    :cond_0
    :goto_0
    return-void

    #@19
    .line 478
    :cond_1
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    #@1b
    if-gez v0, :cond_0

    #@1d
    .line 479
    const-string/jumbo v0, "DisplayManagerService"

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "mWifiDisplayScanRequestCount became negative: "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 480
    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    #@2e
    .line 479
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 481
    iput v3, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    #@3b
    goto :goto_0
.end method

.method private unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 300
    return-void
.end method

.method private updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;
    .locals 3
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    #@0
    .prologue
    .line 748
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    #@3
    move-result-object v0

    #@4
    .line 749
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    #@6
    and-int/lit8 v1, v1, 0x20

    #@8
    if-nez v1, :cond_0

    #@a
    .line 750
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    #@c
    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    #@e
    invoke-virtual {p1, v1, v2}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(II)Ljava/lang/Runnable;

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 752
    :cond_0
    const/4 v1, 0x0

    #@14
    return-object v1
.end method

.method private updateLogicalDisplaysLocked()Z
    .locals 7

    #@0
    .prologue
    .line 808
    const/4 v0, 0x0

    #@1
    .line 809
    .local v0, "changed":Z
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v3

    #@7
    .local v3, "i":I
    move v4, v3

    #@8
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    #@a
    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_2

    #@c
    .line 810
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    #@11
    move-result v2

    #@12
    .line 811
    .local v2, "displayId":I
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    #@1a
    .line 813
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    #@1c
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v5, v6}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    #@23
    .line 814
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v1, v5}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    #@28
    .line 815
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    #@2b
    move-result v5

    #@2c
    if-nez v5, :cond_1

    #@2e
    .line 816
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@30
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    #@33
    .line 817
    const/4 v5, 0x3

    #@34
    invoke-direct {p0, v2, v5}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    #@37
    .line 818
    const/4 v0, 0x1

    #@38
    :cond_0
    :goto_1
    move v4, v3

    #@39
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    #@3a
    .line 819
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    #@3c
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v5, v6}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    #@43
    move-result v5

    #@44
    if-nez v5, :cond_0

    #@46
    .line 820
    const/4 v5, 0x2

    #@47
    invoke-direct {p0, v2, v5}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    #@4a
    .line 821
    const/4 v0, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 824
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v2    # "displayId":I
    :cond_2
    return v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 12
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 251
    const/16 v3, 0x64

    #@2
    if-ne p1, v3, :cond_2

    #@4
    .line 252
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@6
    monitor-enter v6

    #@7
    .line 253
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a
    move-result-wide v8

    #@b
    const-wide/16 v10, 0x2710

    #@d
    add-long v4, v8, v10

    #@f
    .line 254
    .local v4, "timeout":J
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    #@11
    const/4 v7, 0x0

    #@12
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    if-nez v3, :cond_1

    #@18
    .line 255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1b
    move-result-wide v8

    #@1c
    sub-long v0, v4, v8

    #@1e
    .line 256
    .local v0, "delay":J
    const-wide/16 v8, 0x0

    #@20
    cmp-long v3, v0, v8

    #@22
    if-gtz v3, :cond_0

    #@24
    .line 257
    new-instance v3, Ljava/lang/RuntimeException;

    #@26
    const-string/jumbo v7, "Timeout waiting for default display to be initialized."

    #@29
    invoke-direct {v3, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 252
    .end local v0    # "delay":J
    .end local v4    # "timeout":J
    :catchall_0
    move-exception v3

    #@2e
    monitor-exit v6

    #@2f
    throw v3

    #@30
    .line 264
    .restart local v0    # "delay":J
    .restart local v4    # "timeout":J
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@32
    invoke-virtual {v3, v0, v1}, Lcom/android/server/display/DisplayManagerService$SyncRoot;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 265
    :catch_0
    move-exception v2

    #@37
    .local v2, "ex":Ljava/lang/InterruptedException;
    goto :goto_0

    #@38
    .end local v0    # "delay":J
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    :cond_1
    monitor-exit v6

    #@39
    .line 250
    .end local v4    # "timeout":J
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 242
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    #@4
    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    #@7
    .line 244
    const-string/jumbo v0, "display"

    #@a
    new-instance v1, Lcom/android/server/display/DisplayManagerService$BinderService;

    #@c
    invoke-direct {v1, p0, v3}, Lcom/android/server/display/DisplayManagerService$BinderService;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$BinderService;)V

    #@f
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    #@12
    .line 246
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    #@14
    new-instance v1, Lcom/android/server/display/DisplayManagerService$LocalService;

    #@16
    invoke-direct {v1, p0, v3}, Lcom/android/server/display/DisplayManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$LocalService;)V

    #@19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@1c
    .line 241
    return-void
.end method

.method public systemReady(ZZ)V
    .locals 2
    .param p1, "safeMode"    # Z
    .param p2, "onlyCore"    # Z

    #@0
    .prologue
    .line 285
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v1

    #@3
    .line 286
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    #@5
    .line 287
    iput-boolean p2, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 290
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    #@a
    const/4 v1, 0x2

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    #@e
    .line 284
    return-void

    #@f
    .line 285
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public windowManagerAndInputReady()V
    .locals 2

    #@0
    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@2
    monitor-enter v1

    #@3
    .line 275
    :try_start_0
    const-class v0, Landroid/view/WindowManagerInternal;

    #@5
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/view/WindowManagerInternal;

    #@b
    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    #@d
    .line 276
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    #@f
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    #@15
    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    #@17
    .line 277
    const/4 v0, 0x0

    #@18
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 273
    return-void

    #@1d
    .line 274
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method
