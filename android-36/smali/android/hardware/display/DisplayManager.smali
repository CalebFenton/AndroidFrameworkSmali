.class public final Landroid/hardware/display/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManager$WeakDisplayCache;,
        Landroid/hardware/display/DisplayManager$DisplayListener;,
        Landroid/hardware/display/DisplayManager$DeviceConfig;,
        Landroid/hardware/display/DisplayManager$PrivateEventType;,
        Landroid/hardware/display/DisplayManager$EventType;,
        Landroid/hardware/display/DisplayManager$SwitchingType;,
        Landroid/hardware/display/DisplayManager$MatchContentFrameRateType;,
        Landroid/hardware/display/DisplayManager$VirtualDisplayFlag;
    }
.end annotation


# static fields
.field public static final greylist-max-r ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String; = "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

.field static final greylist-max-o DEBUG:Z

.field public static final blacklist DISPLAY_CATEGORY_ALL_INCLUDING_DISABLED:Ljava/lang/String; = "android.hardware.display.category.ALL_INCLUDING_DISABLED"

.field public static final blacklist DISPLAY_CATEGORY_BUILT_IN_DISPLAYS:Ljava/lang/String; = "android.hardware.display.category.BUILT_IN_DISPLAYS"

.field public static final whitelist DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field public static final blacklist DISPLAY_CATEGORY_REAR:Ljava/lang/String; = "android.hardware.display.category.REAR"

.field private static final blacklist ENABLE_VIRTUAL_DISPLAY_REFRESH_RATE:Z = true

.field public static final whitelist EVENT_TYPE_DISPLAY_ADDED:J = 0x1L

.field public static final whitelist EVENT_TYPE_DISPLAY_CHANGED:J = 0x4L

.field public static final whitelist EVENT_TYPE_DISPLAY_REFRESH_RATE:J = 0x8L

.field public static final whitelist EVENT_TYPE_DISPLAY_REMOVED:J = 0x2L

.field public static final whitelist EVENT_TYPE_DISPLAY_STATE:J = 0x10L

.field public static final greylist-max-r EXTRA_WIFI_DISPLAY_STATUS:Ljava/lang/String; = "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

.field public static final blacklist HDR_OUTPUT_CONTROL_FLAG:Ljava/lang/String; = "enable_hdr_output_control"

.field public static final whitelist MATCH_CONTENT_FRAMERATE_ALWAYS:I = 0x2

.field public static final whitelist MATCH_CONTENT_FRAMERATE_NEVER:I = 0x0

.field public static final whitelist MATCH_CONTENT_FRAMERATE_SEAMLESSS_ONLY:I = 0x1

.field public static final whitelist MATCH_CONTENT_FRAMERATE_UNKNOWN:I = -0x1

.field public static final blacklist PRIVATE_EVENT_TYPE_DISPLAY_BRIGHTNESS:J = 0x1L

.field public static final blacklist PRIVATE_EVENT_TYPE_DISPLAY_COMMITTED_STATE_CHANGED:J = 0x8L

.field public static final blacklist PRIVATE_EVENT_TYPE_DISPLAY_CONNECTION_CHANGED:J = 0x4L

.field public static final blacklist PRIVATE_EVENT_TYPE_HDR_SDR_RATIO_CHANGED:J = 0x2L

.field public static final blacklist SWITCHING_TYPE_ACROSS_AND_WITHIN_GROUPS:I = 0x2

.field public static final blacklist SWITCHING_TYPE_NONE:I = 0x0

.field public static final blacklist SWITCHING_TYPE_RENDER_FRAME_RATE_ONLY:I = 0x3

.field public static final blacklist SWITCHING_TYPE_WITHIN_GROUPS:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DisplayManager"

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_ALWAYS_UNLOCKED:I = 0x1000

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR:I = 0x10

.field public static final greylist-max-o VIRTUAL_DISPLAY_FLAG_CAN_SHOW_WITH_INSECURE_KEYGUARD:I = 0x20

.field public static final greylist-max-o VIRTUAL_DISPLAY_FLAG_DESTROY_CONTENT_ON_REMOVAL:I = 0x100

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_DEVICE_DISPLAY_GROUP:I = 0x8000

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY:I = 0x8

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_OWN_DISPLAY_GROUP:I = 0x800

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_OWN_FOCUS:I = 0x4000

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_PRESENTATION:I = 0x2

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_PUBLIC:I = 0x1

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_ROTATES_WITH_CONTENT:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_SECURE:I = 0x4

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_SHOULD_SHOW_SYSTEM_DECORATIONS:I = 0x200

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_STEAL_TOP_FOCUS_DISABLED:I = 0x10000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o VIRTUAL_DISPLAY_FLAG_SUPPORTS_TOUCH:I = 0x40

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_TOUCH_FEEDBACK_DISABLED:I = 0x2000

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_TRUSTED:I = 0x400
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private blacklist mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mDisplayCache:Landroid/hardware/display/DisplayManager$WeakDisplayCache;

.field private blacklist mDisplayIdToMirror:I

.field private final greylist-max-o mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$0oEBnf5MlJ63XG3Xyp_qO5VrFbw(Landroid/view/Display;)Z
    .registers 1

    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->isBuiltInDisplay(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$F6SlQe9yX1OohndV6-ukqDL-L9I(Landroid/view/Display;)Z
    .registers 1

    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->isPresentationDisplay(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$qqP-Le8zJzAr3Y5cQEW9VAoNXF4(Landroid/view/Display;)Z
    .registers 1

    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->isRearDisplay(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 87
    const-string v0, "DisplayManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 88
    const-string v0, "DisplayManager_All"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    sput-boolean v0, Landroid/hardware/display/DisplayManager;->DEBUG:Z

    .line 87
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Landroid/hardware/display/DisplayManager$WeakDisplayCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/hardware/display/DisplayManager$WeakDisplayCache;-><init>(Landroid/hardware/display/DisplayManager-IA;)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mDisplayCache:Landroid/hardware/display/DisplayManager$WeakDisplayCache;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/display/DisplayManager;->mDisplayIdToMirror:I

    .line 720
    iput-object p1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    .line 721
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 722
    return-void
.end method

.method public static whitelist createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;)Landroid/hardware/display/VirtualDisplay;
    .registers 14
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "displayIdToMirror"    # I
    .param p4, "surface"    # Landroid/view/Surface;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1836
    nop

    .line 1837
    const-string v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1836
    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    .line 1838
    .local v0, "sDm":Landroid/hardware/display/IDisplayManager;
    nop

    .line 1839
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1838
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1842
    .local v1, "sPackageManager":Landroid/content/pm/IPackageManager;
    new-instance v2, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, p2, v3}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 1844
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object v2

    .line 1845
    invoke-virtual {v2, p3}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setDisplayIdToMirror(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object v2

    .line 1846
    .local v2, "builder":Landroid/hardware/display/VirtualDisplayConfig$Builder;
    if-eqz p4, :cond_2b

    .line 1847
    invoke-virtual {v2, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 1849
    :cond_2b
    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object v3

    .line 1853
    .local v3, "virtualDisplayConfig":Landroid/hardware/display/VirtualDisplayConfig;
    :try_start_2f
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_37} :catch_59

    .line 1856
    .local v4, "packages":[Ljava/lang/String;
    nop

    .line 1862
    const/4 v5, 0x0

    if-nez v4, :cond_3d

    move-object v6, v5

    goto :goto_40

    :cond_3d
    const/4 v6, 0x0

    aget-object v6, v4, v6

    .line 1864
    .local v6, "packageName":Ljava/lang/String;
    :goto_40
    new-instance v7, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;

    invoke-direct {v7, v5, v5}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)V

    .line 1867
    .local v7, "callbackWrapper":Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;
    :try_start_45
    invoke-interface {v0, v3, v7, v5, v6}, Landroid/hardware/display/IDisplayManager;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;)I

    move-result v5
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_49} :catch_53

    .line 1871
    .local v5, "displayId":I
    nop

    .line 1872
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v8

    invoke-virtual {v8, v3, v7, v5}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplayWrapper(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v8

    return-object v8

    .line 1869
    .end local v5    # "displayId":I
    :catch_53
    move-exception v5

    .line 1870
    .local v5, "ex":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    .line 1854
    .end local v4    # "packages":[Ljava/lang/String;
    .end local v5    # "ex":Landroid/os/RemoteException;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "callbackWrapper":Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;
    :catch_59
    move-exception v4

    .line 1855
    .local v4, "ex":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method private blacklist getAmbientDisplayConfiguration()Landroid/hardware/display/AmbientDisplayConfiguration;
    .registers 3

    .line 1813
    monitor-enter p0

    .line 1814
    :try_start_1
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v0, :cond_e

    .line 1815
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 1817
    :cond_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    .line 1818
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object v0

    .line 1817
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private blacklist getDisplayIdToMirror()I
    .registers 3

    .line 1933
    iget v0, p0, Landroid/hardware/display/DisplayManager;->mDisplayIdToMirror:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 1934
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1935
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isVisibleBackgroundUsersSupported()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1936
    invoke-virtual {v0}, Landroid/os/UserManager;->getMainDisplayIdAssignedToUser()I

    move-result v1

    goto :goto_1b

    .line 1937
    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    iput v1, p0, Landroid/hardware/display/DisplayManager;->mDisplayIdToMirror:I

    .line 1939
    .end local v0    # "userManager":Landroid/os/UserManager;
    :cond_1d
    iget v0, p0, Landroid/hardware/display/DisplayManager;->mDisplayIdToMirror:I

    return v0
.end method

.method private blacklist getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;
    .registers 9
    .param p1, "displayIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/function/Predicate<",
            "Landroid/view/Display;",
            ">;)[",
            "Landroid/view/Display;"
        }
    .end annotation

    .line 790
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/Display;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v0, "tmpDisplays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1c

    aget v3, p1, v2

    .line 792
    .local v3, "displayId":I
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplay(IZ)Landroid/view/Display;

    move-result-object v4

    .line 793
    .local v4, "display":Landroid/view/Display;
    invoke-interface {p2, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 794
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    .end local v3    # "displayId":I
    .end local v4    # "display":Landroid/view/Display;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 797
    :cond_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/Display;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display;

    return-object v1
.end method

.method private blacklist getOrCreateDisplay(IZ)Landroid/view/Display;
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "assumeValid"    # Z

    .line 832
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 833
    :try_start_3
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mDisplayCache:Landroid/hardware/display/DisplayManager$WeakDisplayCache;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->get(I)Landroid/view/Display;

    move-result-object v1

    .line 834
    .local v1, "display":Landroid/view/Display;
    if-nez v1, :cond_2a

    .line 837
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_1a

    .line 838
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    .line 840
    .local v2, "resources":Landroid/content/res/Resources;
    :goto_1b
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v3, p1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v3

    move-object v1, v3

    .line 841
    if-eqz v1, :cond_29

    .line 842
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mDisplayCache:Landroid/hardware/display/DisplayManager$WeakDisplayCache;

    invoke-virtual {v3, v1}, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->put(Landroid/view/Display;)V

    .line 844
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_29
    goto :goto_33

    :cond_2a
    if-nez p2, :cond_29

    invoke-virtual {v1}, Landroid/view/Display;->isValid()Z

    move-result v2

    if-nez v2, :cond_29

    .line 845
    const/4 v1, 0x0

    .line 847
    :goto_33
    monitor-exit v0

    .line 848
    return-object v1

    .line 847
    .end local v1    # "display":Landroid/view/Display;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private static blacklist isBuiltInDisplay(Landroid/view/Display;)Z
    .registers 4
    .param p0, "display"    # Landroid/view/Display;

    .line 801
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 802
    return v0

    .line 804
    :cond_4
    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    move v0, v2

    :cond_c
    return v0
.end method

.method private static blacklist isPresentationDisplay(Landroid/view/Display;)Z
    .registers 3
    .param p0, "display"    # Landroid/view/Display;

    .line 808
    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_1c

    .line 809
    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_12

    goto :goto_1c

    .line 812
    :cond_12
    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    .line 820
    return v0

    .line 818
    :pswitch_1a
    const/4 v0, 0x1

    return v0

    .line 810
    :cond_1c
    :goto_1c
    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method private static blacklist isRearDisplay(Landroid/view/Display;)Z
    .registers 3
    .param p0, "display"    # Landroid/view/Display;

    .line 825
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_18

    .line 826
    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 827
    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 825
    :goto_19
    return v1
.end method

.method private blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJLjava/lang/String;Z)V
    .registers 16
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "eventFilter"    # J
    .param p5, "privateEventFilter"    # J
    .param p7, "packageName"    # Ljava/lang/String;
    .param p8, "isEventFilterExplicit"    # Z

    .line 953
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 954
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/hardware/display/DisplayManagerGlobal;->mapFiltersToInternalEventFlag(JJ)J

    move-result-wide v3

    .line 953
    move-object v1, p1

    move-object v2, p2

    move-object v5, p7

    move v6, p8

    .end local p1    # "listener":Landroid/hardware/display/DisplayManager$DisplayListener;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p7    # "packageName":Ljava/lang/String;
    .end local p8    # "isEventFilterExplicit":Z
    .local v1, "listener":Landroid/hardware/display/DisplayManager$DisplayListener;
    .local v2, "handler":Landroid/os/Handler;
    .local v5, "packageName":Ljava/lang/String;
    .local v6, "isEventFilterExplicit":Z
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JLjava/lang/String;Z)V

    .line 956
    return-void
.end method

.method private blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;JJLjava/lang/String;Z)V
    .registers 16
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "eventFilter"    # J
    .param p5, "privateEventFilter"    # J
    .param p7, "packageName"    # Ljava/lang/String;
    .param p8, "isEventFilterExplicit"    # Z

    .line 962
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 963
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/hardware/display/DisplayManagerGlobal;->mapFiltersToInternalEventFlag(JJ)J

    move-result-wide v3

    .line 962
    move-object v1, p1

    move-object v2, p2

    move-object v5, p7

    move v6, p8

    .end local p1    # "listener":Landroid/hardware/display/DisplayManager$DisplayListener;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p7    # "packageName":Ljava/lang/String;
    .end local p8    # "isEventFilterExplicit":Z
    .local v1, "listener":Landroid/hardware/display/DisplayManager$DisplayListener;
    .local v2, "executor":Ljava/util/concurrent/Executor;
    .local v5, "packageName":Ljava/lang/String;
    .local v6, "isEventFilterExplicit":Z
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;JLjava/lang/String;Z)V

    .line 965
    return-void
.end method

.method private blacklist shouldIncludeDisabledDisplays(Ljava/lang/String;)Z
    .registers 4
    .param p1, "category"    # Ljava/lang/String;

    .line 780
    const-string v0, "android.hardware.display.category.BUILT_IN_DISPLAYS"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 781
    return v1

    .line 783
    :cond_a
    const-string v0, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 784
    return v1

    .line 786
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist toMatchContentFrameRateSetting(I)I
    .registers 4
    .param p1, "switchingType"    # I

    .line 1798
    packed-switch p1, :pswitch_data_24

    .line 1807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a valid value of switching type."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const/4 v0, -0x1

    return v0

    .line 1805
    :pswitch_1d
    const/4 v0, 0x2

    return v0

    .line 1803
    :pswitch_1f
    const/4 v0, 0x1

    return v0

    .line 1800
    :pswitch_21
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public blacklist areUserDisabledHdrTypesAllowed()Z
    .registers 2

    .line 1170
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->areUserDisabledHdrTypesAllowed()Z

    move-result v0

    return v0
.end method

.method public blacklist clearGlobalUserPreferredDisplayMode()V
    .registers 4

    .line 1631
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    .line 1632
    return-void
.end method

.method public greylist connectWifiDisplay(Ljava/lang/String;)V
    .registers 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 1023
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplay(Ljava/lang/String;)V

    .line 1024
    return-void
.end method

.method public whitelist createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;)Landroid/hardware/display/VirtualDisplay;
    .registers 3
    .param p1, "config"    # Landroid/hardware/display/VirtualDisplayConfig;

    .line 1299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/os/Handler;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/os/Handler;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;
    .registers 5
    .param p1, "config"    # Landroid/hardware/display/VirtualDisplayConfig;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;

    .line 1341
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p3, p2}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .registers 12
    .param p1, "projection"    # Landroid/media/projection/MediaProjection;
    .param p2, "virtualDisplayConfig"    # Landroid/hardware/display/VirtualDisplayConfig;
    .param p3, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 1374
    const/4 v0, 0x0

    .line 1377
    .local v0, "executor":Ljava/util/concurrent/Executor;
    if-eqz p3, :cond_1a

    .line 1378
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 1379
    if-eqz p4, :cond_c

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_10

    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_10
    invoke-static {v2}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move-object v0, v1

    move-object v6, v0

    goto :goto_1b

    .line 1377
    :cond_1a
    move-object v6, v0

    .line 1381
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    .local v6, "executor":Ljava/util/concurrent/Executor;
    :goto_1b
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "projection":Landroid/media/projection/MediaProjection;
    .end local p2    # "virtualDisplayConfig":Landroid/hardware/display/VirtualDisplayConfig;
    .end local p3    # "callback":Landroid/hardware/display/VirtualDisplay$Callback;
    .local v3, "projection":Landroid/media/projection/MediaProjection;
    .local v4, "virtualDisplayConfig":Landroid/hardware/display/VirtualDisplayConfig;
    .local v5, "callback":Landroid/hardware/display/VirtualDisplay$Callback;
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;
    .registers 13
    .param p1, "projection"    # Landroid/media/projection/MediaProjection;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "densityDpi"    # I
    .param p6, "surface"    # Landroid/view/Surface;
    .param p7, "flags"    # I
    .param p8, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p9, "handler"    # Landroid/os/Handler;
    .param p10, "uniqueId"    # Ljava/lang/String;

    .line 1357
    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 1359
    .local v0, "builder":Landroid/hardware/display/VirtualDisplayConfig$Builder;
    invoke-virtual {v0, p7}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 1360
    if-eqz p10, :cond_d

    .line 1361
    invoke-virtual {v0, p10}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setUniqueId(Ljava/lang/String;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 1363
    :cond_d
    if-eqz p6, :cond_12

    .line 1364
    invoke-virtual {v0, p6}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 1366
    :cond_12
    invoke-direct {p0}, Landroid/hardware/display/DisplayManager;->getDisplayIdToMirror()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setDisplayIdToMirror(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 1367
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p8, p9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    return-object v1
.end method

.method public whitelist createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I
    .param p5, "surface"    # Landroid/view/Surface;
    .param p6, "flags"    # I

    .line 1228
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "width":I
    .end local p3    # "height":I
    .end local p4    # "densityDpi":I
    .end local p5    # "surface":Landroid/view/Surface;
    .end local p6    # "flags":I
    .local v1, "name":Ljava/lang/String;
    .local v2, "width":I
    .local v3, "height":I
    .local v4, "densityDpi":I
    .local v5, "surface":Landroid/view/Surface;
    .local v6, "flags":I
    invoke-virtual/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I
    .param p5, "surface"    # Landroid/view/Surface;
    .param p6, "flags"    # I
    .param p7, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p8, "handler"    # Landroid/os/Handler;

    .line 1282
    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 1284
    .local v0, "builder":Landroid/hardware/display/VirtualDisplayConfig$Builder;
    invoke-virtual {v0, p6}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 1285
    if-eqz p5, :cond_d

    .line 1286
    invoke-virtual {v0, p5}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 1288
    :cond_d
    invoke-direct {p0}, Landroid/hardware/display/DisplayManager;->getDisplayIdToMirror()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setDisplayIdToMirror(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 1289
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object v1

    invoke-virtual {p0, v1, p8, p7}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/os/Handler;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    return-object v1
.end method

.method public blacklist disableConnectedDisplay(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 1113
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->disableConnectedDisplay(I)V

    .line 1114
    return-void
.end method

.method public greylist disconnectWifiDisplay()V
    .registers 2

    .line 1045
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectWifiDisplay()V

    .line 1046
    return-void
.end method

.method public blacklist enableConnectedDisplay(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 1103
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->enableConnectedDisplay(I)V

    .line 1104
    return-void
.end method

.method public greylist forgetWifiDisplay(Ljava/lang/String;)V
    .registers 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 1081
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 1082
    return-void
.end method

.method public whitelist getAmbientBrightnessStats()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 1417
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getAmbientBrightnessStats()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBrightness(I)F
    .registers 3
    .param p1, "displayId"    # I

    .line 1567
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightness(I)F

    move-result v0

    return v0
.end method

.method public whitelist getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1480
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBrightnessConfigurationForDisplay(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 4
    .param p1, "uniqueId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1456
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 3
    .param p1, "userId"    # I

    .line 1493
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBrightnessEvents()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 1406
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightnessEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1506
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultDozeBrightness(I)F
    .registers 3
    .param p1, "displayId"    # I

    .line 1929
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDefaultDozeBrightness(I)F

    move-result v0

    return v0
.end method

.method public whitelist getDisplay(I)Landroid/view/Display;
    .registers 3
    .param p1, "displayId"    # I

    .line 734
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplay(IZ)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayTopology()Landroid/hardware/display/DisplayTopology;
    .registers 2

    .line 1953
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayTopology()Landroid/hardware/display/DisplayTopology;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplays()[Landroid/view/Display;
    .registers 2

    .line 743
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .registers 5
    .param p1, "category"    # Ljava/lang/String;

    .line 763
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManager;->shouldIncludeDisabledDisplays(Ljava/lang/String;)Z

    move-result v0

    .line 764
    .local v0, "includeDisabled":Z
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds(Z)[I

    move-result-object v1

    .line 765
    .local v1, "displayIds":[I
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->displayCategoryBuiltIn()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 766
    const-string v2, "android.hardware.display.category.BUILT_IN_DISPLAYS"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 767
    new-instance v2, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;

    move-result-object v2

    .line 768
    .local v2, "value":[Landroid/view/Display;
    return-object v2

    .line 769
    .end local v2    # "value":[Landroid/view/Display;
    :cond_22
    const-string v2, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 770
    new-instance v2, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;

    move-result-object v2

    return-object v2

    .line 771
    :cond_34
    const-string v2, "android.hardware.display.category.REAR"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 772
    new-instance v2, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;

    move-result-object v2

    return-object v2

    .line 773
    :cond_46
    if-eqz p1, :cond_55

    const-string v2, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    goto :goto_55

    .line 776
    :cond_51
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/view/Display;

    return-object v2

    .line 774
    :cond_55
    :goto_55
    new-instance v2, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getDozeBrightnessSensorValueToBrightness(I)[F
    .registers 3
    .param p1, "displayId"    # I

    .line 1910
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDozeBrightnessSensorValueToBrightness(I)[F

    move-result-object v0

    return-object v0
.end method

.method public blacklist getGlobalUserPreferredDisplayMode()Landroid/view/Display$Mode;
    .registers 3

    .line 1643
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;
    .registers 2

    .line 1682
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHdrConversionModeSetting()Landroid/hardware/display/HdrConversionMode;
    .registers 2

    .line 1699
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getHdrConversionModeSetting()Landroid/hardware/display/HdrConversionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMatchContentFrameRateUserPreference()I
    .registers 2

    .line 1793
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getRefreshRateSwitchingType()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/display/DisplayManager;->toMatchContentFrameRateSetting(I)I

    move-result v0

    return v0
.end method

.method public whitelist getMinimumBrightnessCurve()Landroid/util/Pair;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 1598
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getMinimumBrightnessCurve()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStableDisplaySize()Landroid/graphics/Point;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1396
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedHdrOutputTypes()[I
    .registers 2

    .line 1712
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getSupportedHdrOutputTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUserDisabledHdrTypes()[I
    .registers 2

    .line 1180
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getUserDisabledHdrTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public greylist getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .registers 2

    .line 1094
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isAlwaysOnDisplayCurrentlyAvailable()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1747
    invoke-direct {p0}, Landroid/hardware/display/DisplayManager;->getAmbientDisplayConfiguration()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailableForUser(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isMinimalPostProcessingRequested(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 1517
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->isMinimalPostProcessingRequested(I)Z

    move-result v0

    return v0
.end method

.method public blacklist overrideHdrTypes(I[I)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "modes"    # [I

    .line 1213
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->overrideHdrTypes(I[I)V

    .line 1214
    return-void
.end method

.method public greylist pauseWifiDisplay()V
    .registers 2

    .line 1029
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->pauseWifiDisplay()V

    .line 1030
    return-void
.end method

.method public whitelist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .registers 12
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 871
    nop

    .line 874
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    .line 871
    const-wide/16 v3, 0x7

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "listener":Landroid/hardware/display/DisplayManager$DisplayListener;
    .end local p2    # "handler":Landroid/os/Handler;
    .local v1, "listener":Landroid/hardware/display/DisplayManager$DisplayListener;
    .local v2, "handler":Landroid/os/Handler;
    invoke-direct/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJLjava/lang/String;Z)V

    .line 875
    return-void
.end method

.method public blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V
    .registers 14
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "eventFilter"    # J

    .line 892
    nop

    .line 893
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    .line 892
    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .end local p1    # "listener":Landroid/hardware/display/DisplayManager$DisplayListener;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "eventFilter":J
    .local v1, "listener":Landroid/hardware/display/DisplayManager$DisplayListener;
    .local v2, "handler":Landroid/os/Handler;
    .local v3, "eventFilter":J
    invoke-direct/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJLjava/lang/String;Z)V

    .line 894
    return-void
.end method

.method public blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJ)V
    .registers 16
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "eventFilter"    # J
    .param p5, "privateEventFilter"    # J

    .line 932
    nop

    .line 933
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    .line 932
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .end local p1    # "listener":Landroid/hardware/display/DisplayManager$DisplayListener;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "eventFilter":J
    .end local p5    # "privateEventFilter":J
    .local v1, "listener":Landroid/hardware/display/DisplayManager$DisplayListener;
    .local v2, "handler":Landroid/os/Handler;
    .local v3, "eventFilter":J
    .local v5, "privateEventFilter":J
    invoke-direct/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJLjava/lang/String;Z)V

    .line 934
    return-void
.end method

.method public whitelist registerDisplayListener(Ljava/util/concurrent/Executor;JLandroid/hardware/display/DisplayManager$DisplayListener;)V
    .registers 14
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "eventFilter"    # J
    .param p4, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 910
    nop

    .line 911
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    .line 910
    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v1, p4

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "eventFilter":J
    .end local p4    # "listener":Landroid/hardware/display/DisplayManager$DisplayListener;
    .local v1, "listener":Landroid/hardware/display/DisplayManager$DisplayListener;
    .local v2, "executor":Ljava/util/concurrent/Executor;
    .local v3, "eventFilter":J
    invoke-direct/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;JJLjava/lang/String;Z)V

    .line 912
    return-void
.end method

.method public blacklist registerTopologyListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/display/DisplayTopology;",
            ">;)V"
        }
    .end annotation

    .line 1977
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/hardware/display/DisplayTopology;>;"
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/hardware/display/DisplayManagerGlobal;->registerTopologyListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 1978
    return-void
.end method

.method public greylist renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 1065
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    return-void
.end method

.method public blacklist requestDisplayModes(I[I)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "modeIds"    # [I

    .line 1886
    if-eqz p2, :cond_e

    array-length v0, p2

    if-eqz v0, :cond_6

    goto :goto_e

    .line 1887
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "requestDisplayModes: modesIds can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1889
    :cond_e
    :goto_e
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->requestDisplayModes(I[I)V

    .line 1890
    return-void
.end method

.method public blacklist resetImplicitRefreshRateCallbackStatus()V
    .registers 2

    .line 1202
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->resetImplicitRefreshRateCallbackStatus()V

    .line 1203
    return-void
.end method

.method public greylist resumeWifiDisplay()V
    .registers 2

    .line 1035
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->resumeWifiDisplay()V

    .line 1036
    return-void
.end method

.method public blacklist setAreUserDisabledHdrTypesAllowed(Z)V
    .registers 3
    .param p1, "areUserDisabledHdrTypesAllowed"    # Z

    .line 1159
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setAreUserDisabledHdrTypesAllowed(Z)V

    .line 1160
    return-void
.end method

.method public blacklist setBrightness(IF)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "brightness"    # F

    .line 1549
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->setBrightness(IF)V

    .line 1550
    return-void
.end method

.method public whitelist setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 4
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1428
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/hardware/display/DisplayManager;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 1429
    return-void
.end method

.method public whitelist setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;)V
    .registers 6
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "uniqueId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1441
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    .line 1442
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1441
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    .line 1443
    return-void
.end method

.method public greylist-max-o setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .registers 5
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1469
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 1470
    return-void
.end method

.method public blacklist setDisplayTopology(Landroid/hardware/display/DisplayTopology;)V
    .registers 3
    .param p1, "topology"    # Landroid/hardware/display/DisplayTopology;

    .line 1964
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setDisplayTopology(Landroid/hardware/display/DisplayTopology;)V

    .line 1965
    return-void
.end method

.method public blacklist setGlobalUserPreferredDisplayMode(Landroid/view/Display$Mode;)V
    .registers 6
    .param p1, "mode"    # Landroid/view/Display$Mode;

    .line 1617
    new-instance v0, Landroid/view/Display$Mode;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    .line 1618
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/Display$Mode;-><init>(IIF)V

    .line 1619
    .local v0, "preferredMode":Landroid/view/Display$Mode;
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManagerGlobal;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    .line 1620
    return-void
.end method

.method public blacklist setHdrConversionMode(Landroid/hardware/display/HdrConversionMode;)V
    .registers 3
    .param p1, "hdrConversionMode"    # Landroid/hardware/display/HdrConversionMode;

    .line 1667
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setHdrConversionMode(Landroid/hardware/display/HdrConversionMode;)V

    .line 1668
    return-void
.end method

.method public blacklist setRefreshRateSwitchingType(I)V
    .registers 3
    .param p1, "newValue"    # I

    .line 1775
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setRefreshRateSwitchingType(I)V

    .line 1776
    return-void
.end method

.method public whitelist setSaturationLevel(F)V
    .registers 4
    .param p1, "level"    # F
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1128
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_20

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_20

    .line 1131
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    .line 1132
    .local v0, "cdm":Landroid/hardware/display/ColorDisplayManager;
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorDisplayManager;->setSaturationLevel(I)Z

    .line 1133
    return-void

    .line 1129
    .end local v0    # "cdm":Landroid/hardware/display/ColorDisplayManager;
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saturation level must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setShouldAlwaysRespectAppRequestedMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1724
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setShouldAlwaysRespectAppRequestedMode(Z)V

    .line 1725
    return-void
.end method

.method public greylist-max-o setTemporaryAutoBrightnessAdjustment(F)V
    .registers 3
    .param p1, "adjustment"    # F

    .line 1582
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setTemporaryAutoBrightnessAdjustment(F)V

    .line 1583
    return-void
.end method

.method public blacklist setTemporaryBrightness(IF)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "brightness"    # F

    .line 1531
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->setTemporaryBrightness(IF)V

    .line 1532
    return-void
.end method

.method public blacklist setUserDisabledHdrTypes([I)V
    .registers 3
    .param p1, "userDisabledTypes"    # [I

    .line 1143
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setUserDisabledHdrTypes([I)V

    .line 1144
    return-void
.end method

.method public blacklist shouldAlwaysRespectAppRequestedMode()Z
    .registers 2

    .line 1736
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->shouldAlwaysRespectAppRequestedMode()Z

    move-result v0

    return v0
.end method

.method public greylist startWifiDisplayScan()V
    .registers 2

    .line 992
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->startWifiDisplayScan()V

    .line 993
    return-void
.end method

.method public greylist stopWifiDisplayScan()V
    .registers 2

    .line 1005
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->stopWifiDisplayScan()V

    .line 1006
    return-void
.end method

.method public blacklist supportsSeamlessRefreshRateSwitching()Z
    .registers 3

    .line 1762
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110271

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 975
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 976
    return-void
.end method

.method public blacklist unregisterTopologyListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/display/DisplayTopology;",
            ">;)V"
        }
    .end annotation

    .line 1988
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/hardware/display/DisplayTopology;>;"
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterTopologyListener(Ljava/util/function/Consumer;)V

    .line 1989
    return-void
.end method
