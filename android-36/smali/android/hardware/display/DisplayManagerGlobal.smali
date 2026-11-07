.class public final Landroid/hardware/display/DisplayManagerGlobal;
.super Ljava/lang/Object;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;,
        Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;,
        Landroid/hardware/display/DisplayManagerGlobal$InternalEventFlag;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayEvent;
    }
.end annotation


# static fields
.field private static final blacklist CACHE_KEY_DISPLAY_INFO_API:Ljava/lang/String; = "display_info"

.field private static final greylist-max-o DEBUG:Z

.field public static final greylist-max-o EVENT_DISPLAY_ADDED:I = 0x1

.field public static final blacklist EVENT_DISPLAY_BASIC_CHANGED:I = 0x2

.field public static final blacklist EVENT_DISPLAY_BRIGHTNESS_CHANGED:I = 0x4

.field public static final blacklist EVENT_DISPLAY_COMMITTED_STATE_CHANGED:I = 0xa

.field public static final blacklist EVENT_DISPLAY_CONNECTED:I = 0x6

.field public static final blacklist EVENT_DISPLAY_DISCONNECTED:I = 0x7

.field public static final blacklist EVENT_DISPLAY_HDR_SDR_RATIO_CHANGED:I = 0x5

.field public static final blacklist EVENT_DISPLAY_REFRESH_RATE_CHANGED:I = 0x8

.field public static final greylist-max-o EVENT_DISPLAY_REMOVED:I = 0x3

.field public static final blacklist EVENT_DISPLAY_STATE_CHANGED:I = 0x9

.field private static final blacklist EXTRA_LOGGING_PACKAGE_NAME:Ljava/lang/String;

.field public static final blacklist INTERNAL_EVENT_FLAG_DISPLAY_ADDED:J = 0x1L

.field public static final blacklist INTERNAL_EVENT_FLAG_DISPLAY_BASIC_CHANGED:J = 0x2L

.field public static final blacklist INTERNAL_EVENT_FLAG_DISPLAY_BRIGHTNESS_CHANGED:J = 0x8L

.field public static final blacklist INTERNAL_EVENT_FLAG_DISPLAY_COMMITTED_STATE_CHANGED:J = 0x200L

.field public static final blacklist INTERNAL_EVENT_FLAG_DISPLAY_CONNECTION_CHANGED:J = 0x20L

.field public static final blacklist INTERNAL_EVENT_FLAG_DISPLAY_HDR_SDR_RATIO_CHANGED:J = 0x10L

.field public static final blacklist INTERNAL_EVENT_FLAG_DISPLAY_REFRESH_RATE:J = 0x40L

.field public static final blacklist INTERNAL_EVENT_FLAG_DISPLAY_REMOVED:J = 0x4L

.field public static final blacklist INTERNAL_EVENT_FLAG_DISPLAY_STATE:J = 0x80L

.field public static final blacklist INTERNAL_EVENT_FLAG_TOPOLOGY_UPDATED:J = 0x100L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DisplayManager"

.field private static final greylist-max-o USE_CACHE:Z = false

.field private static blacklist sCurrentPackageName:Ljava/lang/String;

.field private static blacklist sExtraDisplayListenerLogging:Z

.field private static greylist sInstance:Landroid/hardware/display/DisplayManagerGlobal;


# instance fields
.field private greylist-max-o mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

.field private blacklist mDispatchNativeCallbacks:Z

.field private blacklist mDisplayCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDisplayIdCache:[I

.field private final greylist-max-o mDisplayInfoCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mDm:Landroid/hardware/display/IDisplayManager;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private blacklist mNativeCallbackReportedRefreshRate:F

.field private final blacklist mOverlayProperties:Landroid/hardware/OverlayProperties;

.field private blacklist mRegisteredInternalEventFlag:J

.field private blacklist mShouldImplicitlyRegisterRrChanges:Z

.field private final blacklist mToken:Landroid/os/Binder;

.field private final blacklist mTopologyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWideColorSpace:Landroid/graphics/ColorSpace;

.field private greylist-max-o mWifiDisplayScanNestCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDm(Landroid/hardware/display/DisplayManagerGlobal;)Landroid/hardware/display/IDisplayManager;
    .registers 1

    iget-object p0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTopologyListeners(Landroid/hardware/display/DisplayManagerGlobal;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mTopologyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDisplayEvent(Landroid/hardware/display/DisplayManagerGlobal;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayEvent(IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/hardware/display/DisplayManagerGlobal;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smeventToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/hardware/display/DisplayManagerGlobal;->eventToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smextraLogging()Z
    .registers 1

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->extraLogging()Z

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 89
    invoke-static {}, Landroid/sysprop/DisplayProperties;->debug_vri_package()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Landroid/hardware/display/DisplayManagerGlobal;->EXTRA_LOGGING_PACKAGE_NAME:Ljava/lang/String;

    .line 90
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/display/DisplayManagerGlobal;->sCurrentPackageName:Ljava/lang/String;

    .line 91
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->initExtraLogging()Z

    move-result v0

    sput-boolean v0, Landroid/hardware/display/DisplayManagerGlobal;->sExtraDisplayListenerLogging:Z

    .line 95
    sget-boolean v0, Landroid/hardware/display/DisplayManager;->DEBUG:Z

    if-nez v0, :cond_24

    sget-boolean v0, Landroid/hardware/display/DisplayManagerGlobal;->sExtraDisplayListenerLogging:Z

    if-eqz v0, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v0, 0x1

    :goto_25
    sput-boolean v0, Landroid/hardware/display/DisplayManagerGlobal;->DEBUG:Z

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/display/IDisplayManager;)V
    .registers 6
    .param p1, "dm"    # Landroid/hardware/display/IDisplayManager;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDispatchNativeCallbacks:Z

    .line 168
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    .line 174
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mRegisteredInternalEventFlag:J

    .line 175
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 178
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mTopologyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 181
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayInfoCache:Landroid/util/SparseArray;

    .line 188
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mToken:Landroid/os/Binder;

    .line 191
    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mShouldImplicitlyRegisterRrChanges:Z

    .line 208
    new-instance v1, Landroid/hardware/display/DisplayManagerGlobal$1;

    new-instance v2, Landroid/app/PropertyInvalidatedCache$Args;

    const-string v3, "system_server"

    invoke-direct {v2, v3}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    .line 211
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v2

    const-string v3, "display_info"

    invoke-virtual {v2, v3}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/PropertyInvalidatedCache$Args;->isolateUids(Z)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v3, v2}, Landroid/hardware/display/DisplayManagerGlobal$1;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    iput-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayCache:Landroid/app/PropertyInvalidatedCache;

    .line 195
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 196
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->initExtraLogging()Z

    .line 199
    nop

    .line 201
    :try_start_54
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->getPreferredWideGamutColorSpaceId()I

    move-result v1

    aget-object v0, v0, v1

    .line 200
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWideColorSpace:Landroid/graphics/ColorSpace;

    .line 202
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mOverlayProperties:Landroid/hardware/OverlayProperties;
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_6e} :catch_70

    .line 205
    nop

    .line 206
    return-void

    .line 203
    :catch_70
    move-exception v0

    .line 204
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist calculateEventsMaskLocked()J
    .registers 8

    .line 563
    const-wide/16 v0, 0x0

    .line 564
    .local v0, "mask":J
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 565
    .local v2, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_26

    .line 566
    iget-object v4, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    .line 567
    .local v4, "displayListenerDelegate":Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->delayImplicitRrRegistrationUntilRrAccessed()Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-boolean v5, p0, Landroid/hardware/display/DisplayManagerGlobal;->mShouldImplicitlyRegisterRrChanges:Z

    if-eqz v5, :cond_20

    .line 569
    :cond_1d
    invoke-static {v4}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->-$$Nest$mimplicitlyRegisterForRRChanges(Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;)V

    .line 571
    :cond_20
    iget-wide v5, v4, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mInternalEventFlagsMask:J

    or-long/2addr v0, v5

    .line 565
    .end local v4    # "displayListenerDelegate":Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 574
    .end local v3    # "i":I
    :cond_26
    iget-boolean v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDispatchNativeCallbacks:Z

    if-eqz v3, :cond_2d

    .line 575
    const-wide/16 v3, 0x47

    or-long/2addr v0, v3

    .line 580
    :cond_2d
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mTopologyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_38

    .line 581
    const-wide/16 v3, 0x100

    or-long/2addr v0, v3

    .line 583
    :cond_38
    return-wide v0
.end method

.method private static blacklist eventToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "event"    # I

    .line 1794
    packed-switch p0, :pswitch_data_24

    .line 1816
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1814
    :pswitch_6
    const-string v0, "EVENT_DISPLAY_COMMITTED_STATE_CHANGED"

    return-object v0

    .line 1812
    :pswitch_9
    const-string v0, "EVENT_DISPLAY_STATE_CHANGED"

    return-object v0

    .line 1810
    :pswitch_c
    const-string v0, "EVENT_DISPLAY_REFRESH_RATE_CHANGED"

    return-object v0

    .line 1808
    :pswitch_f
    const-string v0, "EVENT_DISPLAY_DISCONNECTED"

    return-object v0

    .line 1806
    :pswitch_12
    const-string v0, "EVENT_DISPLAY_CONNECTED"

    return-object v0

    .line 1804
    :pswitch_15
    const-string v0, "HDR_SDR_RATIO_CHANGED"

    return-object v0

    .line 1802
    :pswitch_18
    const-string v0, "BRIGHTNESS_CHANGED"

    return-object v0

    .line 1800
    :pswitch_1b
    const-string v0, "REMOVED"

    return-object v0

    .line 1798
    :pswitch_1e
    const-string v0, "BASIC_CHANGED"

    return-object v0

    .line 1796
    :pswitch_21
    const-string v0, "ADDED"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist extraLogging()Z
    .registers 1

    .line 1830
    sget-boolean v0, Landroid/hardware/display/DisplayManagerGlobal;->sExtraDisplayListenerLogging:Z

    return v0
.end method

.method private greylist-max-o findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 552
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 553
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 554
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-ne v2, p1, :cond_16

    .line 555
    return v1

    .line 553
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 558
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist findTopologyListenerLocked(Ljava/util/function/Consumer;)Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/display/DisplayTopology;",
            ">;)",
            "Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;"
        }
    .end annotation

    .line 588
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/hardware/display/DisplayTopology;>;"
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mTopologyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;

    .line 589
    .local v1, "delegate":Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;
    invoke-static {v1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;->-$$Nest$fgetmListener(Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;)Ljava/util/function/Consumer;

    move-result-object v2

    if-ne v2, p1, :cond_19

    .line 590
    return-object v1

    .line 592
    .end local v1    # "delegate":Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;
    :cond_19
    goto :goto_6

    .line 593
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getDisplayInfoLocked(I)Landroid/view/DisplayInfo;
    .registers 5
    .param p1, "displayId"    # I

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "info":Landroid/view/DisplayInfo;
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayCache:Landroid/app/PropertyInvalidatedCache;

    if-eqz v1, :cond_13

    .line 268
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/DisplayInfo;

    goto :goto_1f

    .line 271
    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_19} :catch_1b

    move-object v0, v1

    .line 274
    goto :goto_1f

    .line 272
    :catch_1b
    move-exception v1

    .line 273
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 276
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1f
    if-nez v0, :cond_23

    .line 277
    const/4 v1, 0x0

    return-object v1

    .line 280
    :cond_23
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 282
    sget-boolean v1, Landroid/hardware/display/DisplayManagerGlobal;->DEBUG:Z

    if-eqz v1, :cond_4c

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayInfo: displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_4c
    return-object v0
.end method

.method public static greylist getInstance()Landroid/hardware/display/DisplayManagerGlobal;
    .registers 4

    .line 236
    const-class v0, Landroid/hardware/display/DisplayManagerGlobal;

    monitor-enter v0

    .line 237
    :try_start_3
    sget-object v1, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;

    if-nez v1, :cond_1a

    .line 238
    const-string v1, "display"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 239
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_1a

    .line 240
    new-instance v2, Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;-><init>(Landroid/hardware/display/IDisplayManager;)V

    sput-object v2, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;

    .line 243
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_1a
    sget-object v1, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;

    monitor-exit v0

    return-object v1

    .line 244
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private static blacklist getLooperForHandler(Landroid/os/Handler;)Landroid/os/Looper;
    .registers 4
    .param p0, "handler"    # Landroid/os/Handler;

    .line 541
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 542
    .local v0, "looper":Landroid/os/Looper;
    :goto_b
    if-nez v0, :cond_11

    .line 543
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 545
    :cond_11
    if-eqz v0, :cond_14

    .line 548
    return-object v0

    .line 546
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get Looper for the UI thread."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist handleDisplayEvent(IIZ)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "event"    # I
    .param p3, "forceUpdate"    # Z

    .line 620
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfoLocked(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 630
    .local v1, "info":Landroid/view/DisplayInfo;
    const/4 v2, 0x2

    if-eq p2, v2, :cond_e

    const/16 v2, 0x8

    if-ne p2, v2, :cond_2f

    :cond_e
    iget-boolean v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDispatchNativeCallbacks:Z

    if-eqz v2, :cond_2f

    .line 634
    if-nez p1, :cond_2f

    .line 637
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfoLocked(I)Landroid/view/DisplayInfo;

    move-result-object v2

    .line 638
    .local v2, "display":Landroid/view/DisplayInfo;
    if-eqz v2, :cond_2f

    iget v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mNativeCallbackReportedRefreshRate:F

    .line 639
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2f

    .line 640
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v3

    iput v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mNativeCallbackReportedRefreshRate:F

    .line 642
    iget v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mNativeCallbackReportedRefreshRate:F

    invoke-static {v3}, Landroid/hardware/display/DisplayManagerGlobal;->nSignalNativeCallbacks(F)V

    .line 646
    .end local v2    # "display":Landroid/view/DisplayInfo;
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_47

    .line 649
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    .line 650
    .local v2, "listener":Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
    invoke-virtual {v2, p1, p2, v1, p3}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->sendDisplayEvent(IILandroid/view/DisplayInfo;Z)V

    .line 651
    .end local v2    # "listener":Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
    goto :goto_36

    .line 652
    :cond_46
    return-void

    .line 646
    .end local v1    # "info":Landroid/view/DisplayInfo;
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v1
.end method

.method private static blacklist initExtraLogging()Z
    .registers 2

    .line 1821
    sget-object v0, Landroid/hardware/display/DisplayManagerGlobal;->sCurrentPackageName:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 1822
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/display/DisplayManagerGlobal;->sCurrentPackageName:Ljava/lang/String;

    .line 1823
    sget-object v0, Landroid/hardware/display/DisplayManagerGlobal;->EXTRA_LOGGING_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Landroid/hardware/display/DisplayManagerGlobal;->EXTRA_LOGGING_PACKAGE_NAME:Ljava/lang/String;

    sget-object v1, Landroid/hardware/display/DisplayManagerGlobal;->sCurrentPackageName:Ljava/lang/String;

    .line 1824
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    sput-boolean v0, Landroid/hardware/display/DisplayManagerGlobal;->sExtraDisplayListenerLogging:Z

    .line 1826
    :cond_21
    sget-boolean v0, Landroid/hardware/display/DisplayManagerGlobal;->sExtraDisplayListenerLogging:Z

    return v0
.end method

.method public static blacklist invalidateLocalDisplayInfoCaches()V
    .registers 2

    .line 1741
    const-string v0, "system_server"

    const-string v1, "display_info"

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    return-void
.end method

.method private blacklist mapPrivateEventFlags(J)J
    .registers 11
    .param p1, "privateEventFlags"    # J

    .line 1848
    const-wide/16 v0, 0x0

    .line 1849
    .local v0, "baseEventMask":J
    const-wide/16 v2, 0x1

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-wide/16 v6, 0x8

    if-eqz v2, :cond_e

    .line 1850
    or-long/2addr v0, v6

    .line 1853
    :cond_e
    const-wide/16 v2, 0x2

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    .line 1854
    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    .line 1857
    :cond_18
    const-wide/16 v2, 0x4

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    .line 1859
    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    .line 1862
    :cond_22
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->committedStateSeparateEvent()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1863
    and-long v2, p1, v6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_31

    .line 1865
    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    .line 1868
    :cond_31
    return-wide v0
.end method

.method private blacklist mapPublicEventFlags(J)J
    .registers 13
    .param p1, "eventFlags"    # J

    .line 1872
    const-wide/16 v0, 0x0

    .line 1873
    .local v0, "baseEventMask":J
    const-wide/16 v2, 0x1

    and-long v4, p1, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_d

    .line 1874
    or-long/2addr v0, v2

    .line 1877
    :cond_d
    const-wide/16 v2, 0x4

    and-long v4, p1, v2

    cmp-long v4, v4, v6

    const-wide/16 v8, 0x2

    if-eqz v4, :cond_18

    .line 1878
    or-long/2addr v0, v8

    .line 1881
    :cond_18
    and-long v4, p1, v8

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1f

    .line 1882
    or-long/2addr v0, v2

    .line 1885
    :cond_1f
    const-wide/16 v2, 0x8

    and-long/2addr v2, p1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_29

    .line 1886
    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    .line 1889
    :cond_29
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->displayListenerPerformanceImprovements()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1890
    const-wide/16 v2, 0x10

    and-long/2addr v2, p1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_39

    .line 1891
    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    .line 1895
    :cond_39
    return-wide v0
.end method

.method private blacklist maybeLogAllDisplayListeners()V
    .registers 5

    .line 506
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->extraLogging()Z

    move-result v0

    if-nez v0, :cond_7

    .line 507
    return-void

    .line 510
    :cond_7
    const-string v0, "Currently Registered Display Listeners:"

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3a

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 514
    .end local v0    # "i":I
    :cond_3a
    return-void
.end method

.method private blacklist maybeLogAllTopologyListeners()V
    .registers 7

    .line 517
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->extraLogging()Z

    move-result v0

    if-nez v0, :cond_7

    .line 518
    return-void

    .line 520
    :cond_7
    const-string v0, "Currently registered display topology listeners:"

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "i":I
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mTopologyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;

    .line 523
    .local v3, "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    nop

    .end local v3    # "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;
    add-int/lit8 v0, v0, 0x1

    .line 525
    goto :goto_15

    .line 526
    :cond_3f
    return-void
.end method

.method private static native blacklist nSignalNativeCallbacks(F)V
.end method

.method private greylist-max-o registerCallbackIfNeededLocked()V
    .registers 3

    .line 597
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    if-nez v0, :cond_f

    .line 598
    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/hardware/display/DisplayManagerGlobal-IA;)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    .line 599
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->updateCallbackIfNeededLocked()V

    .line 601
    :cond_f
    return-void
.end method

.method private blacklist updateCallbackIfNeededLocked()V
    .registers 5

    .line 604
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->calculateEventsMaskLocked()J

    move-result-wide v0

    .line 605
    .local v0, "mask":J
    sget-boolean v2, Landroid/hardware/display/DisplayManagerGlobal;->DEBUG:Z

    if-eqz v2, :cond_20

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mask for listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_20
    iget-wide v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mRegisteredInternalEventFlag:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_36

    .line 610
    :try_start_26
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    invoke-interface {v2, v3, v0, v1}, Landroid/hardware/display/IDisplayManager;->registerCallbackWithEventMask(Landroid/hardware/display/IDisplayManagerCallback;J)V

    .line 611
    iput-wide v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mRegisteredInternalEventFlag:J
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2f} :catch_30

    .line 614
    goto :goto_36

    .line 612
    :catch_30
    move-exception v2

    .line 613
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 616
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_36
    :goto_36
    return-void
.end method


# virtual methods
.method public blacklist areUserDisabledHdrTypesAllowed()Z
    .registers 3

    .line 834
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->areUserDisabledHdrTypesAllowed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 835
    :catch_7
    move-exception v0

    .line 836
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o connectWifiDisplay(Ljava/lang/String;)V
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 730
    if-eqz p1, :cond_f

    .line 735
    :try_start_2
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->connectWifiDisplay(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_9

    .line 738
    nop

    .line 739
    return-void

    .line 736
    :catch_9
    move-exception v0

    .line 737
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 731
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)Landroid/hardware/display/VirtualDisplay;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "projection"    # Landroid/media/projection/MediaProjection;
    .param p3, "virtualDisplayConfig"    # Landroid/hardware/display/VirtualDisplayConfig;
    .param p4, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;

    .line 889
    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;

    invoke-direct {v0, p4, p5}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)V

    .line 890
    .local v0, "callbackWrapper":Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/media/projection/MediaProjection;->getProjection()Landroid/media/projection/IMediaProjection;

    move-result-object v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 893
    .local v1, "projectionToken":Landroid/media/projection/IMediaProjection;
    :goto_d
    :try_start_d
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 894
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 893
    invoke-interface {v2, p3, v0, v1, v3}, Landroid/hardware/display/IDisplayManager;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;)I

    move-result v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_1d

    .line 897
    .local v2, "displayId":I
    nop

    .line 898
    invoke-virtual {p0, p3, v0, v2}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplayWrapper(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v3

    return-object v3

    .line 895
    .end local v2    # "displayId":I
    :catch_1d
    move-exception v2

    .line 896
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public blacklist createVirtualDisplayWrapper(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;I)Landroid/hardware/display/VirtualDisplay;
    .registers 9
    .param p1, "virtualDisplayConfig"    # Landroid/hardware/display/VirtualDisplayConfig;
    .param p2, "callbackWrapper"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p3, "displayId"    # I

    .line 909
    const/4 v0, 0x0

    const-string v1, "DisplayManager"

    if-gez p3, :cond_20

    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create virtual display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return-object v0

    .line 913
    :cond_20
    invoke-virtual {p0, p3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 914
    .local v2, "display":Landroid/view/Display;
    if-nez v2, :cond_4d

    .line 915
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not obtain display info for newly created virtual display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 916
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 915
    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :try_start_40
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p2}, Landroid/hardware/display/IDisplayManager;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_45} :catch_47

    .line 921
    nop

    .line 922
    return-object v0

    .line 919
    :catch_47
    move-exception v0

    .line 920
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 924
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_4d
    new-instance v0, Landroid/hardware/display/VirtualDisplay;

    .line 925
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, p0, v2, p2, v1}, Landroid/hardware/display/VirtualDisplay;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/view/Display;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 924
    return-object v0
.end method

.method public blacklist disableConnectedDisplay(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 675
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->disableConnectedDisplay(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 678
    goto :goto_e

    .line 676
    :catch_6
    move-exception v0

    .line 677
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Error trying to enable external display"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 679
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public blacklist disableLocalDisplayInfoCaches()V
    .registers 2

    .line 1748
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayCache:Landroid/app/PropertyInvalidatedCache;

    .line 1749
    return-void
.end method

.method public greylist disconnectWifiDisplay()V
    .registers 3

    .line 760
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->disconnectWifiDisplay()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 763
    nop

    .line 764
    return-void

    .line 761
    :catch_7
    move-exception v0

    .line 762
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist enableConnectedDisplay(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 661
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->enableConnectedDisplay(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 664
    goto :goto_e

    .line 662
    :catch_6
    move-exception v0

    .line 663
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Error trying to enable external display"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public greylist-max-o forgetWifiDisplay(Ljava/lang/String;)V
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 779
    if-eqz p1, :cond_f

    .line 784
    :try_start_2
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->forgetWifiDisplay(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_9

    .line 787
    nop

    .line 788
    return-void

    .line 785
    :catch_9
    move-exception v0

    .line 786
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 780
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getAmbientBrightnessStats()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 1205
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getAmbientBrightnessStats()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1206
    .local v0, "stats":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    if-nez v0, :cond_d

    .line 1207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1209
    :cond_d
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 1210
    .end local v0    # "stats":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    :catch_12
    move-exception v0

    .line 1211
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getBrightness(I)F
    .registers 4
    .param p1, "displayId"    # I

    .line 1158
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getBrightness(I)F

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1159
    :catch_7
    move-exception v0

    .line 1160
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 5
    .param p1, "uniqueDisplayId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1055
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1056
    :catch_7
    move-exception v0

    .line 1057
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 4
    .param p1, "userId"    # I

    .line 1068
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1069
    :catch_7
    move-exception v0

    .line 1070
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getBrightnessEvents(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 977
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 978
    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getBrightnessEvents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 979
    .local v0, "events":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/hardware/display/BrightnessChangeEvent;>;"
    if-nez v0, :cond_d

    .line 980
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 982
    :cond_d
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 983
    .end local v0    # "events":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/hardware/display/BrightnessChangeEvent;>;"
    :catch_12
    move-exception v0

    .line 984
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;
    .registers 4
    .param p1, "displayId"    # I

    .line 993
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 994
    :catch_7
    move-exception v0

    .line 995
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 369
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 370
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-nez v0, :cond_8

    .line 371
    const/4 v1, 0x0

    return-object v1

    .line 373
    :cond_8
    new-instance v1, Landroid/view/Display;

    invoke-direct {v1, p0, p1, v0, p2}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/content/res/Resources;)V

    return-object v1
.end method

.method public greylist-max-o getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "daj"    # Landroid/view/DisplayAdjustments;

    .line 351
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 352
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-nez v0, :cond_8

    .line 353
    const/4 v1, 0x0

    return-object v1

    .line 355
    :cond_8
    new-instance v1, Landroid/view/Display;

    invoke-direct {v1, p0, p1, v0, p2}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;)V

    return-object v1
.end method

.method public greylist-max-o getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 3

    .line 1081
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1082
    :catch_7
    move-exception v0

    .line 1083
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDefaultDozeBrightness(I)F
    .registers 4
    .param p1, "displayId"    # I

    .line 1396
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getDefaultDozeBrightness(I)F

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1397
    :catch_7
    move-exception v0

    .line 1398
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .registers 4
    .param p1, "displayId"    # I

    .line 1143
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1144
    :catch_7
    move-exception v0

    .line 1145
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getDisplayIds()[I
    .registers 2

    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayIds(Z)[I
    .registers 4
    .param p1, "includeDisabled"    # Z

    .line 306
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_11

    .line 313
    :try_start_3
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->getDisplayIds(Z)[I

    move-result-object v1

    .line 317
    .local v1, "displayIds":[I
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 318
    monitor-exit v0

    return-object v1

    .line 319
    .end local v1    # "displayIds":[I
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    .end local p0    # "this":Landroid/hardware/display/DisplayManagerGlobal;
    .end local p1    # "includeDisabled":Z
    :try_start_10
    throw v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_11} :catch_11

    .line 320
    .restart local p0    # "this":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local p1    # "includeDisabled":Z
    :catch_11
    move-exception v0

    .line 321
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getDisplayInfo(I)Landroid/view/DisplayInfo;
    .registers 4
    .param p1, "displayId"    # I

    .line 256
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfoLocked(I)Landroid/view/DisplayInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 258
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public blacklist getDisplayListeners()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;",
            ">;"
        }
    .end annotation

    .line 1900
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public blacklist getDisplayTopology()Landroid/hardware/display/DisplayTopology;
    .registers 3

    .line 1409
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getDisplayTopology()Landroid/hardware/display/DisplayTopology;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1410
    :catch_7
    move-exception v0

    .line 1411
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDozeBrightnessSensorValueToBrightness(I)[F
    .registers 4
    .param p1, "displayId"    # I

    .line 1383
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getDozeBrightnessSensorValueToBrightness(I)[F

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1384
    :catch_7
    move-exception v0

    .line 1385
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;
    .registers 3

    .line 1278
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1279
    :catch_7
    move-exception v0

    .line 1280
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getHdrConversionModeSetting()Landroid/hardware/display/HdrConversionMode;
    .registers 3

    .line 1267
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getHdrConversionModeSetting()Landroid/hardware/display/HdrConversionMode;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1268
    :catch_7
    move-exception v0

    .line 1269
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getHighestHdrSdrRatio(I)F
    .registers 4
    .param p1, "displayId"    # I

    .line 1370
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getHighestHdrSdrRatio(I)F

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1371
    :catch_7
    move-exception v0

    .line 1372
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getMinimumBrightnessCurve()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 1193
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getMinimumBrightnessCurve()Landroid/hardware/display/Curve;

    move-result-object v0

    .line 1194
    .local v0, "curve":Landroid/hardware/display/Curve;
    invoke-virtual {v0}, Landroid/hardware/display/Curve;->getX()[F

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/display/Curve;->getY()[F

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v1

    .line 1195
    .end local v0    # "curve":Landroid/hardware/display/Curve;
    :catch_13
    move-exception v0

    .line 1196
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getOverlaySupport()Landroid/hardware/OverlayProperties;
    .registers 2

    .line 1016
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mOverlayProperties:Landroid/hardware/OverlayProperties;

    return-object v0
.end method

.method public blacklist getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    .line 1007
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWideColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public greylist getRealDisplay(I)Landroid/view/Display;
    .registers 3
    .param p1, "displayId"    # I

    .line 384
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRefreshRateSwitchingType()I
    .registers 3

    .line 1342
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getRefreshRateSwitchingType()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1343
    :catch_7
    move-exception v0

    .line 1344
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getStableDisplaySize()Landroid/graphics/Point;
    .registers 3

    .line 966
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 967
    :catch_7
    move-exception v0

    .line 968
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSupportedHdrOutputTypes()[I
    .registers 3

    .line 1289
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getSupportedHdrOutputTypes()[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1290
    :catch_7
    move-exception v0

    .line 1291
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;
    .registers 4
    .param p1, "displayId"    # I

    .line 1243
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1244
    :catch_7
    move-exception v0

    .line 1245
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUserDisabledHdrTypes()[I
    .registers 3

    .line 846
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getUserDisabledHdrTypes()[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 847
    :catch_7
    move-exception v0

    .line 848
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;
    .registers 4
    .param p1, "displayId"    # I

    .line 1232
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1233
    :catch_7
    move-exception v0

    .line 1234
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .registers 3

    .line 793
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 794
    :catch_7
    move-exception v0

    .line 795
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist handleDisplayChangeFromWindowManager(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 537
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayEvent(IIZ)V

    .line 538
    return-void
.end method

.method public blacklist isMinimalPostProcessingRequested(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .line 1094
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->isMinimalPostProcessingRequested(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1095
    :catch_7
    move-exception v0

    .line 1096
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isUidPresentOnDisplay(II)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "displayId"    # I

    .line 334
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->isUidPresentOnDisplay(II)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 335
    :catch_7
    move-exception v0

    .line 336
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist mapFiltersToInternalEventFlag(JJ)J
    .registers 9
    .param p1, "eventFlags"    # J
    .param p3, "privateEventFlags"    # J

    .line 1844
    invoke-direct {p0, p3, p4}, Landroid/hardware/display/DisplayManagerGlobal;->mapPrivateEventFlags(J)J

    move-result-wide v0

    invoke-direct {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->mapPublicEventFlags(J)J

    move-result-wide v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist overrideHdrTypes(I[I)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "modes"    # [I

    .line 871
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->overrideHdrTypes(I[I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 874
    nop

    .line 875
    return-void

    .line 872
    :catch_7
    move-exception v0

    .line 873
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o pauseWifiDisplay()V
    .registers 3

    .line 743
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->pauseWifiDisplay()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 746
    nop

    .line 747
    return-void

    .line 744
    :catch_7
    move-exception v0

    .line 745
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JLjava/lang/String;)V
    .registers 13
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "internalEventFlagsMask"    # J
    .param p5, "packageName"    # Ljava/lang/String;

    .line 422
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .end local p1    # "listener":Landroid/hardware/display/DisplayManager$DisplayListener;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "internalEventFlagsMask":J
    .end local p5    # "packageName":Ljava/lang/String;
    .local v1, "listener":Landroid/hardware/display/DisplayManager$DisplayListener;
    .local v2, "handler":Landroid/os/Handler;
    .local v3, "internalEventFlagsMask":J
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JLjava/lang/String;Z)V

    .line 423
    return-void
.end method

.method public blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JLjava/lang/String;Z)V
    .registers 16
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "internalEventFlagsMask"    # J
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "isEventFilterExplicit"    # Z

    .line 402
    invoke-static {p2}, Landroid/hardware/display/DisplayManagerGlobal;->getLooperForHandler(Landroid/os/Handler;)Landroid/os/Looper;

    move-result-object v0

    .line 403
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 404
    .local v1, "springBoard":Landroid/os/Handler;
    new-instance v4, Landroid/os/HandlerExecutor;

    invoke-direct {v4, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p3

    move-object v7, p5

    move v8, p6

    .end local p1    # "listener":Landroid/hardware/display/DisplayManager$DisplayListener;
    .end local p3    # "internalEventFlagsMask":J
    .end local p5    # "packageName":Ljava/lang/String;
    .end local p6    # "isEventFilterExplicit":Z
    .local v3, "listener":Landroid/hardware/display/DisplayManager$DisplayListener;
    .local v5, "internalEventFlagsMask":J
    .local v7, "packageName":Ljava/lang/String;
    .local v8, "isEventFilterExplicit":Z
    invoke-virtual/range {v2 .. v8}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;JLjava/lang/String;Z)V

    .line 406
    return-void
.end method

.method public blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;JLjava/lang/String;Z)V
    .registers 17
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "internalEventFlagsMask"    # J
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "isEventFilterExplicit"    # Z

    .line 439
    if-eqz p1, :cond_6f

    .line 443
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_67

    .line 447
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->extraLogging()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 448
    const-string v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering Display Listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 449
    invoke-static {p3, p4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_34
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_37
    invoke-direct/range {p0 .. p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I

    move-result v0

    .line 455
    .local v0, "index":I
    if-gez v0, :cond_51

    .line 456
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object v8, p5

    move/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;-><init>(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;JLjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    goto :goto_5c

    .line 460
    :cond_51
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    invoke-virtual {v2, p3, p4}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->setEventsMask(J)V

    .line 462
    :goto_5c
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->updateCallbackIfNeededLocked()V

    .line 463
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->maybeLogAllDisplayListeners()V

    .line 464
    .end local v0    # "index":I
    monitor-exit v1

    .line 465
    return-void

    .line 464
    :catchall_64
    move-exception v0

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_37 .. :try_end_66} :catchall_64

    throw v0

    .line 444
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The set of events to listen to must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerForRefreshRateChanges()V
    .registers 4

    .line 472
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->delayImplicitRrRegistrationUntilRrAccessed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 473
    return-void

    .line 475
    :cond_7
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_a
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mShouldImplicitlyRegisterRrChanges:Z

    if-nez v1, :cond_1b

    .line 477
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mShouldImplicitlyRegisterRrChanges:Z

    .line 478
    const-string v1, "DisplayManager"

    const-string v2, "Implicitly registering for refresh rate"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->updateCallbackIfNeededLocked()V

    .line 481
    :cond_1b
    monitor-exit v0

    .line 482
    return-void

    .line 481
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public blacklist registerNativeChoreographerForRefreshRateCallbacks()V
    .registers 5

    .line 1760
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1761
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDispatchNativeCallbacks:Z

    .line 1762
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->delayImplicitRrRegistrationUntilRrAccessed()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1763
    iget-boolean v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mShouldImplicitlyRegisterRrChanges:Z

    if-nez v2, :cond_17

    .line 1764
    const-string v2, "DisplayManager"

    const-string v3, "Choreographer implicitly registered for the refresh rate."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :cond_17
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mShouldImplicitlyRegisterRrChanges:Z

    .line 1768
    :cond_19
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 1769
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->updateCallbackIfNeededLocked()V

    .line 1770
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfoLocked(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1771
    .local v1, "display":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_31

    .line 1774
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v2

    iput v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mNativeCallbackReportedRefreshRate:F

    .line 1775
    iget v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mNativeCallbackReportedRefreshRate:F

    invoke-static {v2}, Landroid/hardware/display/DisplayManagerGlobal;->nSignalNativeCallbacks(F)V

    .line 1777
    .end local v1    # "display":Landroid/view/DisplayInfo;
    :cond_31
    monitor-exit v0

    .line 1778
    return-void

    .line 1777
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public blacklist registerTopologyListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/display/DisplayTopology;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1436
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/hardware/display/DisplayTopology;>;"
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->displayTopology()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1437
    return-void

    .line 1439
    :cond_7
    if-eqz p2, :cond_48

    .line 1442
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->extraLogging()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1443
    const-string v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering display topology listener: packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_27
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1446
    :try_start_2a
    invoke-direct {p0, p2}, Landroid/hardware/display/DisplayManagerGlobal;->findTopologyListenerLocked(Ljava/util/function/Consumer;)Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;

    move-result-object v1

    .line 1447
    .local v1, "delegate":Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;
    if-nez v1, :cond_40

    .line 1448
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mTopologyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;

    invoke-direct {v3, p2, p1, p3}, Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1450
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 1451
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->updateCallbackIfNeededLocked()V

    .line 1453
    :cond_40
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->maybeLogAllTopologyListeners()V

    .line 1454
    .end local v1    # "delegate":Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;
    monitor-exit v0

    .line 1455
    return-void

    .line 1454
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_2a .. :try_end_47} :catchall_45

    throw v1

    .line 1440
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .registers 4
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;

    .line 947
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 950
    nop

    .line 951
    return-void

    .line 948
    :catch_7
    move-exception v0

    .line 949
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 767
    if-eqz p1, :cond_f

    .line 772
    :try_start_2
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_9

    .line 775
    nop

    .line 776
    return-void

    .line 773
    :catch_9
    move-exception v0

    .line 774
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 768
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o requestColorMode(II)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "colorMode"    # I

    .line 880
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->requestColorMode(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 883
    nop

    .line 884
    return-void

    .line 881
    :catch_7
    move-exception v0

    .line 882
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestDisplayModes(I[I)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "modeIds"    # [I

    .line 1356
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/display/IDisplayManager;->requestDisplayModes(Landroid/os/IBinder;I[I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1359
    nop

    .line 1360
    return-void

    .line 1357
    :catch_9
    move-exception v0

    .line 1358
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestDisplayPower(II)Z
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "state"    # I

    .line 692
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->requestDisplayPower(II)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 693
    :catch_7
    move-exception v0

    .line 694
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error trying to request display power: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 696
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist resetImplicitRefreshRateCallbackStatus()V
    .registers 3

    .line 857
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->delayImplicitRrRegistrationUntilRrAccessed()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 858
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 859
    const/4 v1, 0x0

    :try_start_a
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mShouldImplicitlyRegisterRrChanges:Z

    .line 860
    monitor-exit v0

    goto :goto_11

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_e

    throw v1

    .line 862
    :cond_11
    :goto_11
    return-void
.end method

.method public greylist-max-o resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .registers 7
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    .line 939
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/display/IDisplayManager;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 942
    nop

    .line 943
    return-void

    .line 940
    :catch_7
    move-exception v0

    .line 941
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o resumeWifiDisplay()V
    .registers 3

    .line 751
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->resumeWifiDisplay()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 754
    nop

    .line 755
    return-void

    .line 752
    :catch_7
    move-exception v0

    .line 753
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAreUserDisabledHdrTypesAllowed(Z)V
    .registers 4
    .param p1, "areUserDisabledHdrTypesAllowed"    # Z

    .line 822
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setAreUserDisabledHdrTypesAllowed(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 825
    nop

    .line 826
    return-void

    .line 823
    :catch_7
    move-exception v0

    .line 824
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setBrightness(IF)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "brightness"    # F

    .line 1128
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setBrightness(IF)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1131
    nop

    .line 1132
    return-void

    .line 1129
    :catch_7
    move-exception v0

    .line 1130
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "uniqueDisplayId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1041
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/display/IDisplayManager;->setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1044
    nop

    .line 1045
    return-void

    .line 1042
    :catch_7
    move-exception v0

    .line 1043
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .registers 6
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1027
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/display/IDisplayManager;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1030
    nop

    .line 1031
    return-void

    .line 1028
    :catch_7
    move-exception v0

    .line 1029
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setDisplayTopology(Landroid/hardware/display/DisplayTopology;)V
    .registers 4
    .param p1, "topology"    # Landroid/hardware/display/DisplayTopology;

    .line 1420
    if-eqz p1, :cond_f

    .line 1424
    :try_start_2
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setDisplayTopology(Landroid/hardware/display/DisplayTopology;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_9

    .line 1427
    nop

    .line 1428
    return-void

    .line 1425
    :catch_9
    move-exception v0

    .line 1426
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1421
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Topology must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setHdrConversionMode(Landroid/hardware/display/HdrConversionMode;)V
    .registers 4
    .param p1, "hdrConversionMode"    # Landroid/hardware/display/HdrConversionMode;

    .line 1254
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setHdrConversionMode(Landroid/hardware/display/HdrConversionMode;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1257
    nop

    .line 1258
    return-void

    .line 1255
    :catch_7
    move-exception v0

    .line 1256
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRefreshRateSwitchingType(I)V
    .registers 4
    .param p1, "newValue"    # I

    .line 1328
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setRefreshRateSwitchingType(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1331
    nop

    .line 1332
    return-void

    .line 1329
    :catch_7
    move-exception v0

    .line 1330
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setShouldAlwaysRespectAppRequestedMode(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1302
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setShouldAlwaysRespectAppRequestedMode(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1305
    nop

    .line 1306
    return-void

    .line 1303
    :catch_7
    move-exception v0

    .line 1304
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setTemporaryAutoBrightnessAdjustment(F)V
    .registers 4
    .param p1, "adjustment"    # F

    .line 1176
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setTemporaryAutoBrightnessAdjustment(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1179
    nop

    .line 1180
    return-void

    .line 1177
    :catch_7
    move-exception v0

    .line 1178
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setTemporaryBrightness(IF)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "brightness"    # F

    .line 1112
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setTemporaryBrightness(IF)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1115
    nop

    .line 1116
    return-void

    .line 1113
    :catch_7
    move-exception v0

    .line 1114
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setUserDisabledHdrTypes([I)V
    .registers 4
    .param p1, "userDisabledHdrTypes"    # [I

    .line 805
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setUserDisabledHdrTypes([I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 808
    nop

    .line 809
    return-void

    .line 806
    :catch_7
    move-exception v0

    .line 807
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "mode"    # Landroid/view/Display$Mode;

    .line 1221
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1224
    nop

    .line 1225
    return-void

    .line 1222
    :catch_7
    move-exception v0

    .line 1223
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist setVirtualDisplayRotation(Landroid/hardware/display/IVirtualDisplayCallback;I)V
    .registers 5
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "rotation"    # I

    .line 955
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setVirtualDisplayRotation(Landroid/hardware/display/IVirtualDisplayCallback;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 958
    nop

    .line 959
    return-void

    .line 956
    :catch_7
    move-exception v0

    .line 957
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .registers 5
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 930
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 933
    nop

    .line 934
    return-void

    .line 931
    :catch_7
    move-exception v0

    .line 932
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist shouldAlwaysRespectAppRequestedMode()Z
    .registers 3

    .line 1315
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->shouldAlwaysRespectAppRequestedMode()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1316
    :catch_7
    move-exception v0

    .line 1317
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o startWifiDisplayScan()V
    .registers 4

    .line 701
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_3
    iget v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    if-nez v1, :cond_1a

    .line 703
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1c

    .line 705
    :try_start_e
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->startWifiDisplayScan()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14
    .catchall {:try_start_e .. :try_end_13} :catchall_1c

    .line 708
    goto :goto_1a

    .line 706
    :catch_14
    move-exception v1

    .line 707
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_15
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/display/DisplayManagerGlobal;
    throw v2

    .line 710
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/display/DisplayManagerGlobal;
    :cond_1a
    :goto_1a
    monitor-exit v0

    .line 711
    return-void

    .line 710
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public greylist-max-o stopWifiDisplayScan()V
    .registers 5

    .line 714
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 715
    :try_start_3
    iget v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_3a

    if-nez v1, :cond_17

    .line 717
    :try_start_b
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->stopWifiDisplayScan()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_3a

    .line 720
    goto :goto_38

    .line 718
    :catch_11
    move-exception v1

    .line 719
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_12
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/display/DisplayManagerGlobal;
    throw v2

    .line 721
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/display/DisplayManagerGlobal;
    :cond_17
    iget v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    if-gez v1, :cond_38

    .line 722
    const-string v1, "DisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wifi display scan nest count became negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    .line 726
    :cond_38
    :goto_38
    monitor-exit v0

    .line 727
    return-void

    .line 726
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_12 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public greylist-max-o unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 485
    if-eqz p1, :cond_44

    .line 489
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->extraLogging()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 490
    const-string v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering Display Listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_20
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_23
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I

    move-result v1

    .line 495
    .local v1, "index":I
    if-ltz v1, :cond_3c

    .line 496
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    .line 497
    .local v2, "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->clearEvents()V

    .line 498
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 499
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->updateCallbackIfNeededLocked()V

    .line 501
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
    :cond_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_41

    .line 502
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->maybeLogAllDisplayListeners()V

    .line 503
    return-void

    .line 501
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1

    .line 486
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterNativeChoreographerForRefreshRateCallbacks()V
    .registers 3

    .line 1787
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1788
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDispatchNativeCallbacks:Z

    .line 1789
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->updateCallbackIfNeededLocked()V

    .line 1790
    monitor-exit v0

    .line 1791
    return-void

    .line 1790
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist unregisterTopologyListener(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/display/DisplayTopology;",
            ">;)V"
        }
    .end annotation

    .line 1462
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/hardware/display/DisplayTopology;>;"
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->displayTopology()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1463
    return-void

    .line 1465
    :cond_7
    if-eqz p1, :cond_40

    .line 1468
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->extraLogging()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1469
    const-string v0, "DisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering display topology listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_27
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1472
    :try_start_2a
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findTopologyListenerLocked(Ljava/util/function/Consumer;)Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;

    move-result-object v1

    .line 1473
    .local v1, "delegate":Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;
    if-eqz v1, :cond_38

    .line 1474
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mTopologyListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1475
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->updateCallbackIfNeededLocked()V

    .line 1477
    .end local v1    # "delegate":Landroid/hardware/display/DisplayManagerGlobal$DisplayTopologyListenerDelegate;
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_3d

    .line 1478
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->maybeLogAllTopologyListeners()V

    .line 1479
    return-void

    .line 1477
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1

    .line 1466
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
