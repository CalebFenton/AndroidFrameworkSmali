.class final Lcom/android/server/display/WifiDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;,
        Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;,
        Lcom/android/server/display/WifiDisplayAdapter$1;,
        Lcom/android/server/display/WifiDisplayAdapter$2;
    }
.end annotation


# static fields
.field private static final ACTION_DISCONNECT:Ljava/lang/String; = "android.server.display.wfd.DISCONNECT"

.field private static final DEBUG:Z = false

.field private static final DISPLAY_NAME_PREFIX:Ljava/lang/String; = "wifi:"

.field private static final MSG_SEND_STATUS_CHANGE_BROADCAST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiDisplayAdapter"


# instance fields
.field private mActiveDisplay:Landroid/hardware/display/WifiDisplay;

.field private mActiveDisplayState:I

.field private mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mDisplayController:Lcom/android/server/display/WifiDisplayController;

.field private mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

.field private mDisplays:[Landroid/hardware/display/WifiDisplay;

.field private mFeatureState:I

.field private final mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

.field private mPendingStatusChangeBroadcast:Z

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

.field private mScanState:I

.field private mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

.field private final mSupportsProtectedBuffers:Z

.field private final mWifiDisplayListener:Lcom/android/server/display/WifiDisplayController$Listener;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/display/WifiDisplayAdapter;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/content/BroadcastReceiver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/display/WifiDisplayAdapter;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/display/WifiDisplayAdapter;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    #@2
    return v0
.end method

.method static synthetic -get9(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplayListener:Lcom/android/server/display/WifiDisplayController$Listener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/display/WifiDisplayAdapter;Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    #@2
    return p1
.end method

.method static synthetic -set5(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    #@2
    return p1
.end method

.method static synthetic -set6(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplaySessionInfo;)Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 0
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/WifiDisplayAdapter;->addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->fixRememberedDisplayNamesFromAvailableDisplaysLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->handleSendStatusChangeBroadcast()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->removeDisplayDeviceLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->renameDisplayDeviceLocked(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateDisplaysLocked()V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;)V
    .locals 6
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "persistentDataStore"    # Lcom/android/server/display/PersistentDataStore;

    #@0
    .prologue
    .line 97
    const-string/jumbo v5, "WifiDisplayAdapter"

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
    .line 86
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    #@d
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    #@f
    .line 87
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    #@11
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    #@13
    .line 88
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    #@15
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    #@17
    .line 431
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$1;

    #@19
    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    #@1c
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@1e
    .line 443
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$2;

    #@20
    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayAdapter$2;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    #@23
    .line 442
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplayListener:Lcom/android/server/display/WifiDisplayController$Listener;

    #@25
    .line 98
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    #@27
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, p0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/Looper;)V

    #@2e
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    #@30
    .line 99
    iput-object p5, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    #@32
    .line 100
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@35
    move-result-object v0

    #@36
    .line 101
    const v1, 0x1120073

    #@39
    .line 100
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@3c
    move-result v0

    #@3d
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSupportsProtectedBuffers:Z

    #@3f
    .line 96
    return-void
.end method

.method private addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 11
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    #@0
    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->removeDisplayDeviceLocked()V

    #@3
    .line 364
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 365
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    #@d
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    #@10
    .line 366
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    #@13
    .line 367
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    #@16
    .line 370
    :cond_0
    and-int/lit8 v0, p5, 0x1

    #@18
    if-eqz v0, :cond_2

    #@1a
    const/4 v10, 0x1

    #@1b
    .line 371
    .local v10, "secure":Z
    :goto_0
    const/16 v7, 0x40

    #@1d
    .line 372
    .local v7, "deviceFlags":I
    if-eqz v10, :cond_1

    #@1f
    .line 373
    const/16 v7, 0x44

    #@21
    .line 374
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSupportsProtectedBuffers:Z

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 375
    or-int/lit8 v7, v7, 0x8

    #@27
    .line 379
    :cond_1
    const/high16 v6, 0x42700000    # 60.0f

    #@29
    .line 381
    .local v6, "refreshRate":F
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    .line 382
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@30
    move-result-object v8

    #@31
    .line 383
    .local v8, "address":Ljava/lang/String;
    invoke-static {v3, v10}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    #@34
    move-result-object v2

    #@35
    .line 384
    .local v2, "displayToken":Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    #@37
    move-object v1, p0

    #@38
    move v4, p3

    #@39
    move v5, p4

    #@3a
    move-object v9, p2

    #@3b
    invoke-direct/range {v0 .. v9}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFILjava/lang/String;Landroid/view/Surface;)V

    #@3e
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    #@40
    .line 386
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    #@42
    const/4 v1, 0x1

    #@43
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    #@46
    .line 361
    return-void

    #@47
    .line 370
    .end local v2    # "displayToken":Landroid/os/IBinder;
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "refreshRate":F
    .end local v7    # "deviceFlags":I
    .end local v8    # "address":Ljava/lang/String;
    .end local v10    # "secure":Z
    :cond_2
    const/4 v10, 0x0

    #@48
    .restart local v10    # "secure":Z
    goto :goto_0
.end method

.method private findAvailableDisplayLocked(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 352
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    #@2
    const/4 v1, 0x0

    #@3
    array-length v3, v2

    #@4
    :goto_0
    if-ge v1, v3, :cond_1

    #@6
    aget-object v0, v2, v1

    #@8
    .line 353
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 354
    return-object v0

    #@13
    .line 352
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 357
    .end local v0    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_1
    const/4 v1, 0x0

    #@17
    return-object v1
.end method

.method private fixRememberedDisplayNamesFromAvailableDisplaysLocked()V
    .locals 5

    #@0
    .prologue
    .line 332
    const/4 v1, 0x0

    #@1
    .line 333
    .local v1, "changed":Z
    const/4 v2, 0x0

    #@2
    .end local v1    # "changed":Z
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    #@4
    array-length v4, v4

    #@5
    if-ge v2, v4, :cond_2

    #@7
    .line 334
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    #@9
    aget-object v3, v4, v2

    #@b
    .line 336
    .local v3, "rememberedDisplay":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    .line 335
    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayAdapter;->findAvailableDisplayLocked(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    #@12
    move-result-object v0

    #@13
    .line 337
    .local v0, "availableDisplay":Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_0

    #@15
    invoke-virtual {v3, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    .line 333
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 342
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    #@20
    aput-object v0, v4, v2

    #@22
    .line 343
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    #@24
    invoke-virtual {v4, v0}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    #@27
    move-result v4

    #@28
    or-int/2addr v1, v4

    #@29
    .local v1, "changed":Z
    goto :goto_1

    #@2a
    .line 346
    .end local v0    # "availableDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v1    # "changed":Z
    .end local v3    # "rememberedDisplay":Landroid/hardware/display/WifiDisplay;
    :cond_2
    if-eqz v1, :cond_3

    #@2c
    .line 347
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    #@2e
    invoke-virtual {v4}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    #@31
    .line 327
    :cond_3
    return-void
.end method

.method private handleSendStatusChangeBroadcast()V
    .locals 4

    #@0
    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 416
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-nez v1, :cond_0

    #@9
    monitor-exit v2

    #@a
    .line 417
    return-void

    #@b
    .line 420
    :cond_0
    const/4 v1, 0x0

    #@c
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    #@e
    .line 421
    new-instance v0, Landroid/content/Intent;

    #@10
    const-string/jumbo v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    #@13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@16
    .line 422
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    #@18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1b
    .line 423
    const-string/jumbo v1, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    #@1e
    .line 424
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    #@21
    move-result-object v3

    #@22
    .line 423
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit v2

    #@26
    .line 428
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    #@29
    move-result-object v1

    #@2a
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2c
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@2f
    .line 413
    return-void

    #@30
    .line 415
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1
.end method

.method private removeDisplayDeviceLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 390
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 391
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    #@7
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->destroyLocked()V

    #@a
    .line 392
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    #@c
    const/4 v1, 0x3

    #@d
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    #@10
    .line 393
    iput-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    #@12
    .line 389
    :cond_0
    return-void
.end method

.method private renameDisplayDeviceLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    #@6
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->getNameLocked()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 397
    :cond_0
    :goto_0
    return-void

    #@11
    .line 399
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    #@13
    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->setNameLocked(Ljava/lang/String;)V

    #@16
    .line 400
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    #@18
    const/4 v1, 0x2

    #@19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    #@1c
    goto :goto_0
.end method

.method private scheduleStatusChangedBroadcastLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 405
    const/4 v0, 0x0

    #@2
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    #@4
    .line 406
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    #@6
    if-nez v0, :cond_0

    #@8
    .line 407
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    #@a
    .line 408
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->sendEmptyMessage(I)Z

    #@f
    .line 404
    :cond_0
    return-void
.end method

.method private updateDisplaysLocked()V
    .locals 15

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 296
    new-instance v11, Ljava/util/ArrayList;

    #@4
    .line 297
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    #@6
    array-length v0, v0

    #@7
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    #@9
    array-length v1, v1

    #@a
    add-int/2addr v0, v1

    #@b
    .line 296
    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 298
    .local v11, "displays":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/WifiDisplay;>;"
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    #@10
    array-length v0, v0

    #@11
    new-array v13, v0, [Z

    #@13
    .line 299
    .local v13, "remembered":[Z
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    #@15
    array-length v14, v8

    #@16
    move v7, v4

    #@17
    :goto_0
    if-ge v7, v14, :cond_3

    #@19
    aget-object v10, v8, v7

    #@1b
    .line 300
    .local v10, "d":Landroid/hardware/display/WifiDisplay;
    const/4 v9, 0x0

    #@1c
    .line 301
    .local v9, "available":Z
    const/4 v12, 0x0

    #@1d
    .local v12, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    #@1f
    array-length v0, v0

    #@20
    if-ge v12, v0, :cond_0

    #@22
    .line 302
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    #@24
    aget-object v0, v0, v12

    #@26
    invoke-virtual {v10, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_2

    #@2c
    .line 303
    const/4 v9, 0x1

    #@2d
    aput-boolean v6, v13, v12

    #@2f
    .line 307
    :cond_0
    if-nez v9, :cond_1

    #@31
    .line 308
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    #@33
    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 309
    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    move v5, v4

    #@40
    .line 308
    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    #@43
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@46
    .line 299
    :cond_1
    add-int/lit8 v0, v7, 0x1

    #@48
    move v7, v0

    #@49
    goto :goto_0

    #@4a
    .line 301
    :cond_2
    add-int/lit8 v12, v12, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 312
    .end local v9    # "available":Z
    .end local v10    # "d":Landroid/hardware/display/WifiDisplay;
    .end local v12    # "i":I
    :cond_3
    const/4 v12, 0x0

    #@4e
    .restart local v12    # "i":I
    :goto_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    #@50
    array-length v0, v0

    #@51
    if-ge v12, v0, :cond_4

    #@53
    .line 313
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    #@55
    aget-object v10, v0, v12

    #@57
    .line 314
    .restart local v10    # "d":Landroid/hardware/display/WifiDisplay;
    new-instance v2, Landroid/hardware/display/WifiDisplay;

    #@59
    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    .line 315
    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v10}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    #@68
    move-result v7

    #@69
    aget-boolean v8, v13, v12

    #@6b
    .line 314
    invoke-direct/range {v2 .. v8}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    #@6e
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@71
    .line 312
    add-int/lit8 v12, v12, 0x1

    #@73
    goto :goto_2

    #@74
    .line 317
    .end local v10    # "d":Landroid/hardware/display/WifiDisplay;
    :cond_4
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    #@76
    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@79
    move-result-object v0

    #@7a
    check-cast v0, [Landroid/hardware/display/WifiDisplay;

    #@7c
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    #@7e
    .line 295
    return-void
.end method

.method private updateRememberedDisplaysLocked()V
    .locals 2

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    #@2
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getRememberedWifiDisplays()[Landroid/hardware/display/WifiDisplay;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    #@8
    .line 322
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    #@a
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    #@12
    .line 323
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    #@14
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    #@16
    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    #@1c
    .line 324
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateDisplaysLocked()V

    #@1f
    .line 320
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    #@3
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "mCurrentStatus="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v1, "mFeatureState="

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@37
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v1, "mScanState="

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@50
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v1, "mActiveDisplayState="

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@69
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v1, "mActiveDisplay="

    #@71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@82
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v1, "mDisplays="

    #@8a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v0

    #@8e
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    #@90
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9f
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v1, "mAvailableDisplays="

    #@a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v0

    #@ab
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    #@ad
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@b0
    move-result-object v1

    #@b1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v0

    #@b5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v0

    #@b9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bc
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v1, "mRememberedDisplays="

    #@c4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v0

    #@c8
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    #@ca
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@cd
    move-result-object v1

    #@ce
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v0

    #@d2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v0

    #@d6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d9
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string/jumbo v1, "mPendingStatusChangeBroadcast="

    #@e1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v0

    #@e5
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    #@e7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v0

    #@eb
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v0

    #@ef
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f2
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    #@f4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f7
    const-string/jumbo v1, "mSupportsProtectedBuffers="

    #@fa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v0

    #@fe
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSupportsProtectedBuffers:Z

    #@100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@103
    move-result-object v0

    #@104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object v0

    #@108
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10b
    .line 120
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    #@10d
    if-nez v0, :cond_0

    #@10f
    .line 121
    const-string/jumbo v0, "mDisplayController=null"

    #@112
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@115
    .line 105
    :goto_0
    return-void

    #@116
    .line 123
    :cond_0
    const-string/jumbo v0, "mDisplayController:"

    #@119
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11c
    .line 124
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    #@11e
    const-string/jumbo v0, "  "

    #@121
    invoke-direct {v2, p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@124
    .line 125
    .local v2, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@127
    .line 126
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    #@12a
    move-result-object v0

    #@12b
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    #@12d
    const-string/jumbo v3, ""

    #@130
    const-wide/16 v4, 0xc8

    #@132
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    #@135
    goto :goto_0
.end method

.method public getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;
    .locals 7

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 284
    new-instance v0, Landroid/hardware/display/WifiDisplayStatus;

    #@6
    .line 285
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    #@8
    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    #@a
    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    #@c
    .line 286
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    #@e
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    #@10
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    #@12
    .line 284
    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplayStatus;-><init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;)V

    #@15
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    #@17
    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    #@19
    return-object v0
.end method

.method public registerLocked()V
    .locals 2

    #@0
    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    #@3
    .line 134
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    #@6
    .line 136
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    #@9
    move-result-object v0

    #@a
    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$3;

    #@c
    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$3;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@12
    .line 131
    return-void
.end method

.method public requestConnectLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$6;

    #@6
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$6;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 178
    return-void
.end method

.method public requestDisconnectLocked()V
    .locals 2

    #@0
    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$9;

    #@6
    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$9;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 223
    return-void
.end method

.method public requestForgetLocked(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->forgetWifiDisplay(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 272
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    #@a
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    #@d
    .line 273
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    #@10
    .line 274
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    #@13
    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    #@15
    if-eqz v0, :cond_1

    #@17
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    #@19
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 278
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    #@26
    .line 266
    :cond_1
    return-void
.end method

.method public requestPauseLocked()V
    .locals 2

    #@0
    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$7;

    #@6
    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$7;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 193
    return-void
.end method

.method public requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 243
    if-eqz p2, :cond_1

    #@3
    .line 244
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@6
    move-result-object p2

    #@7
    .line 245
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 246
    :cond_0
    const/4 p2, 0x0

    #@14
    .line 250
    .end local p2    # "alias":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    #@16
    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->getRememberedWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    #@19
    move-result-object v7

    #@1a
    .line 251
    .local v7, "display":Landroid/hardware/display/WifiDisplay;
    if-eqz v7, :cond_2

    #@1c
    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v1, p2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_5

    #@26
    :cond_2
    move-object v0, v7

    #@27
    .line 261
    .end local v7    # "display":Landroid/hardware/display/WifiDisplay;
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    #@29
    if-eqz v1, :cond_4

    #@2b
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    #@2d
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_4

    #@37
    .line 262
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    #@39
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->renameDisplayDeviceLocked(Ljava/lang/String;)V

    #@40
    .line 238
    :cond_4
    return-void

    #@41
    .line 252
    .end local v0    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v7    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_5
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    #@43
    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    move-object v1, p1

    #@48
    move-object v3, p2

    #@49
    move v5, v4

    #@4a
    move v6, v4

    #@4b
    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    #@4e
    .line 254
    .end local v7    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v0    # "display":Landroid/hardware/display/WifiDisplay;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    #@50
    invoke-virtual {v1, v0}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    #@53
    move-result v1

    #@54
    if-eqz v1, :cond_3

    #@56
    .line 255
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    #@58
    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    #@5b
    .line 256
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    #@5e
    .line 257
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    #@61
    goto :goto_0
.end method

.method public requestResumeLocked()V
    .locals 2

    #@0
    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$8;

    #@6
    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$8;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 208
    return-void
.end method

.method public requestStartScanLocked()V
    .locals 2

    #@0
    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$4;

    #@6
    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$4;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 148
    return-void
.end method

.method public requestStopScanLocked()V
    .locals 2

    #@0
    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$5;

    #@6
    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$5;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 163
    return-void
.end method
