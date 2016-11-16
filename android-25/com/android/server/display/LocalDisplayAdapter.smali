.class final Lcom/android/server/display/LocalDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;,
        Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;,
        Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    }
.end annotation


# static fields
.field private static final BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

.field private static final DEBUG:Z = false

.field private static final PROPERTY_EMULATOR_CIRCULAR:Ljava/lang/String; = "ro.emulator.circular"

.field private static final TAG:Ljava/lang/String; = "LocalDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "local:"


# instance fields
.field private final mDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHotplugReceiver:Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/display/LocalDisplayAdapter;I)V
    .locals 0
    .param p1, "builtInDisplayId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/LocalDisplayAdapter;I)V
    .locals 0
    .param p1, "builtInDisplayId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 60
    const/4 v0, 0x0

    #@1
    .line 61
    const/4 v1, 0x1

    #@2
    .line 59
    filled-new-array {v0, v1}, [I

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/display/LocalDisplayAdapter;->BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

    #@8
    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .locals 6
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;

    #@0
    .prologue
    .line 72
    const-string/jumbo v5, "LocalDisplayAdapter"

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v4, p4

    #@8
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    #@b
    .line 65
    new-instance v0, Landroid/util/SparseArray;

    #@d
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@10
    .line 64
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    #@12
    .line 71
    return-void
.end method

.method static getPowerModeForState(I)I
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 144
    packed-switch p0, :pswitch_data_0

    #@3
    .line 152
    :pswitch_0
    const/4 v0, 0x2

    #@4
    return v0

    #@5
    .line 146
    :pswitch_1
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 148
    :pswitch_2
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 150
    :pswitch_3
    const/4 v0, 0x3

    #@a
    return v0

    #@b
    .line 144
    nop

    #@c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private tryConnectDisplayLocked(I)V
    .locals 9
    .param p1, "builtInDisplayId"    # I

    #@0
    .prologue
    .line 87
    invoke-static {p1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    #@3
    move-result-object v2

    #@4
    .line 88
    .local v2, "displayToken":Landroid/os/IBinder;
    if-eqz v2, :cond_3

    #@6
    .line 90
    invoke-static {v2}, Landroid/view/SurfaceControl;->getDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@9
    move-result-object v4

    #@a
    .line 91
    .local v4, "configs":[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    if-nez v4, :cond_0

    #@c
    .line 93
    const-string/jumbo v1, "LocalDisplayAdapter"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v8, "No valid configs found for display device "

    #@17
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 95
    return-void

    #@27
    .line 97
    :cond_0
    invoke-static {v2}, Landroid/view/SurfaceControl;->getActiveConfig(Landroid/os/IBinder;)I

    #@2a
    move-result v5

    #@2b
    .line 98
    .local v5, "activeConfig":I
    if-gez v5, :cond_1

    #@2d
    .line 101
    const-string/jumbo v1, "LocalDisplayAdapter"

    #@30
    new-instance v3, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v8, "No active config found for display device "

    #@38
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 103
    return-void

    #@48
    .line 105
    :cond_1
    invoke-static {v2}, Landroid/view/SurfaceControl;->getActiveColorMode(Landroid/os/IBinder;)I

    #@4b
    move-result v7

    #@4c
    .line 106
    .local v7, "activeColorMode":I
    if-gez v7, :cond_2

    #@4e
    .line 110
    const-string/jumbo v1, "LocalDisplayAdapter"

    #@51
    new-instance v3, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v8, "Unable to get active color mode for display device "

    #@59
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 112
    const/4 v7, -0x1

    #@69
    .line 114
    :cond_2
    invoke-static {v2}, Landroid/view/SurfaceControl;->getDisplayColorModes(Landroid/os/IBinder;)[I

    #@6c
    move-result-object v6

    #@6d
    .line 115
    .local v6, "colorModes":[I
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    #@6f
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@72
    move-result-object v0

    #@73
    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    #@75
    .line 116
    .local v0, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-nez v0, :cond_4

    #@77
    .line 118
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    #@79
    .end local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    move-object v1, p0

    #@7a
    move v3, p1

    #@7b
    invoke-direct/range {v0 .. v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;I[Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[II)V

    #@7e
    .line 120
    .restart local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    #@80
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@83
    .line 121
    const/4 v1, 0x1

    #@84
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    #@87
    .line 86
    .end local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .end local v4    # "configs":[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v5    # "activeConfig":I
    .end local v6    # "colorModes":[I
    .end local v7    # "activeColorMode":I
    :cond_3
    :goto_0
    return-void

    #@88
    .line 122
    .restart local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v4    # "configs":[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .restart local v5    # "activeConfig":I
    .restart local v6    # "colorModes":[I
    .restart local v7    # "activeColorMode":I
    :cond_4
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[II)Z

    #@8b
    move-result v1

    #@8c
    if-eqz v1, :cond_3

    #@8e
    .line 125
    const/4 v1, 0x2

    #@8f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    #@92
    goto :goto_0
.end method

.method private tryDisconnectDisplayLocked(I)V
    .locals 2
    .param p1, "builtInDisplayId"    # I

    #@0
    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    #@8
    .line 136
    .local v0, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-eqz v0, :cond_0

    #@a
    .line 138
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    #@f
    .line 139
    const/4 v1, 0x3

    #@10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    #@13
    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public registerLocked()V
    .locals 4

    #@0
    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    #@3
    .line 79
    new-instance v1, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

    #@5
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V

    #@10
    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mHotplugReceiver:Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

    #@12
    .line 81
    sget-object v2, Lcom/android/server/display/LocalDisplayAdapter;->BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

    #@14
    const/4 v1, 0x0

    #@15
    array-length v3, v2

    #@16
    :goto_0
    if-ge v1, v3, :cond_0

    #@18
    aget v0, v2, v1

    #@1a
    .line 82
    .local v0, "builtInDisplayId":I
    invoke-direct {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(I)V

    #@1d
    .line 81
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 76
    .end local v0    # "builtInDisplayId":I
    :cond_0
    return-void
.end method
