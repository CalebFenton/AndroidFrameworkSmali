.class Landroid/graphics/HardwareRenderer$ProcessInitializer;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessInitializer"
.end annotation


# static fields
.field static blacklist sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDisplayInitialized:Z

.field private blacklist mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

.field private blacklist mGraphicsStatsService:Landroid/view/IGraphicsStats;

.field private blacklist mInitialized:Z

.field private blacklist mIsolated:Z

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mrotateBuffer(Landroid/graphics/HardwareRenderer$ProcessInitializer;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->rotateBuffer()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1298
    new-instance v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-direct {v0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;-><init>()V

    sput-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 1314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1300
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z

    .line 1301
    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    .line 1303
    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mIsolated:Z

    .line 1307
    new-instance v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$1;

    invoke-direct {v0, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer$1;-><init>(Landroid/graphics/HardwareRenderer$ProcessInitializer;)V

    iput-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

    .line 1315
    return-void
.end method

.method private blacklist initDisplayInfo()V
    .registers 25

    .line 1375
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    if-eqz v1, :cond_7

    return-void

    .line 1376
    :cond_7
    iget-boolean v1, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mIsolated:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    .line 1377
    iput-boolean v2, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    .line 1378
    return-void

    .line 1381
    :cond_f
    iget-object v1, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 1382
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    const-string v3, "HardwareRenderer"

    if-nez v1, :cond_23

    .line 1383
    const-string v2, "Failed to find DisplayManager for display-based configuration"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    return-void

    .line 1387
    :cond_23
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v5

    .line 1388
    .local v5, "defaultDisplay":Landroid/view/Display;
    if-nez v5, :cond_30

    .line 1389
    const-string v2, "Failed to find default display for display-based configuration"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    return-void

    .line 1393
    :cond_30
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v6

    .line 1394
    .local v6, "allDisplays":[Landroid/view/Display;
    array-length v7, v6

    if-nez v7, :cond_3d

    .line 1395
    const-string v2, "Failed to query displays"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    return-void

    .line 1399
    :cond_3d
    invoke-virtual {v5}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v3

    .line 1400
    .local v3, "activeMode":Landroid/view/Display$Mode;
    nop

    .line 1401
    invoke-virtual {v5}, Landroid/view/Display;->getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v7

    .line 1402
    .local v7, "defaultWideColorSpace":Landroid/graphics/ColorSpace;
    if-eqz v7, :cond_4d

    .line 1403
    invoke-virtual {v7}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v4

    goto :goto_4e

    :cond_4d
    nop

    .line 1407
    .local v4, "wideColorDataspace":I
    :goto_4e
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v8

    .line 1408
    .local v8, "largestWidth":I
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v9

    .line 1409
    .local v9, "largestHeight":I
    invoke-virtual {v5}, Landroid/view/Display;->getOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v10

    .line 1411
    .local v10, "overlayProperties":Landroid/hardware/OverlayProperties;
    const/4 v11, 0x0

    move v15, v4

    move v12, v8

    move v13, v9

    .end local v4    # "wideColorDataspace":I
    .end local v8    # "largestWidth":I
    .end local v9    # "largestHeight":I
    .local v11, "i":I
    .local v12, "largestWidth":I
    .local v13, "largestHeight":I
    .local v15, "wideColorDataspace":I
    :goto_5e
    array-length v4, v6

    if-ge v11, v4, :cond_9a

    .line 1412
    aget-object v4, v6, v11

    .line 1416
    .local v4, "display":Landroid/view/Display;
    if-nez v15, :cond_70

    .line 1417
    invoke-virtual {v4}, Landroid/view/Display;->getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v8

    .line 1418
    .local v8, "cs":Landroid/graphics/ColorSpace;
    if-eqz v8, :cond_70

    .line 1419
    invoke-virtual {v8}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v9

    move v15, v9

    .line 1422
    .end local v8    # "cs":Landroid/graphics/ColorSpace;
    :cond_70
    invoke-virtual {v4}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v8

    .line 1423
    .local v8, "modes":[Landroid/view/Display$Mode;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_75
    array-length v14, v8

    if-ge v9, v14, :cond_94

    .line 1424
    aget-object v14, v8, v9

    .line 1425
    .local v14, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v16

    .line 1426
    .local v16, "width":I
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v17

    .line 1427
    .local v17, "height":I
    mul-int v2, v16, v17

    move-object/from16 v23, v1

    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .local v23, "dm":Landroid/hardware/display/DisplayManager;
    mul-int v1, v12, v13

    if-le v2, v1, :cond_8e

    .line 1428
    move/from16 v12, v16

    .line 1429
    move/from16 v13, v17

    .line 1423
    .end local v14    # "mode":Landroid/view/Display$Mode;
    .end local v16    # "width":I
    .end local v17    # "height":I
    :cond_8e
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v23

    const/4 v2, 0x1

    goto :goto_75

    .end local v23    # "dm":Landroid/hardware/display/DisplayManager;
    .restart local v1    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_94
    move-object/from16 v23, v1

    .line 1411
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v4    # "display":Landroid/view/Display;
    .end local v8    # "modes":[Landroid/view/Display$Mode;
    .end local v9    # "j":I
    .restart local v23    # "dm":Landroid/hardware/display/DisplayManager;
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x1

    goto :goto_5e

    .end local v23    # "dm":Landroid/hardware/display/DisplayManager;
    .restart local v1    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_9a
    move-object/from16 v23, v1

    .line 1434
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v11    # "i":I
    .restart local v23    # "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v5}, Landroid/view/Display;->getRefreshRate()F

    move-result v14

    .line 1435
    invoke-virtual {v5}, Landroid/view/Display;->getAppVsyncOffsetNanos()J

    move-result-wide v16

    .line 1436
    invoke-virtual {v5}, Landroid/view/Display;->getPresentationDeadlineNanos()J

    move-result-wide v18

    .line 1437
    const/high16 v1, 0x18810000

    const/16 v2, 0x16

    invoke-virtual {v10, v1, v2}, Landroid/hardware/OverlayProperties;->isCombinationSupported(II)Z

    move-result v20

    .line 1440
    const/high16 v1, 0xa0000

    const/high16 v2, 0x800000

    const/high16 v4, 0x18000000

    invoke-static {v1, v2, v4}, Landroid/hardware/DataSpace;->pack(III)I

    move-result v1

    .line 1439
    const/16 v2, 0x3b

    invoke-virtual {v10, v1, v2}, Landroid/hardware/OverlayProperties;->isCombinationSupported(II)Z

    move-result v21

    .line 1445
    invoke-virtual {v10}, Landroid/hardware/OverlayProperties;->isMixedColorSpacesSupported()Z

    move-result v22

    .line 1434
    invoke-static/range {v12 .. v22}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnInitDisplayInfo(IIFIJJZZZ)V

    .line 1447
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    .line 1448
    return-void
.end method

.method private blacklist initGraphicsStats()V
    .registers 4

    .line 1350
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 1353
    :cond_5
    :try_start_5
    const-string/jumbo v0, "graphicsstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1354
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_f

    return-void

    .line 1355
    :cond_f
    invoke-static {v0}, Landroid/view/IGraphicsStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGraphicsStats;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsService:Landroid/view/IGraphicsStats;

    .line 1356
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->requestBuffer()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    .line 1359
    .end local v0    # "binder":Landroid/os/IBinder;
    goto :goto_21

    .line 1357
    :catchall_19
    move-exception v0

    .line 1358
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "HardwareRenderer"

    const-string v2, "Could not acquire gfx stats buffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1360
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_21
    return-void
.end method

.method private blacklist initSched(J)V
    .registers 6
    .param p1, "renderProxy"    # J

    .line 1342
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnGetRenderThreadTid(J)I

    move-result v0

    .line 1343
    .local v0, "tid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setRenderThread(I)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 1346
    .end local v0    # "tid":I
    goto :goto_14

    .line 1344
    :catchall_c
    move-exception v0

    .line 1345
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "HardwareRenderer"

    const-string v2, "Failed to set scheduler for RenderThread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1347
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_14
    return-void
.end method

.method private blacklist requestBuffer()V
    .registers 4

    .line 1457
    :try_start_0
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsService:Landroid/view/IGraphicsStats;

    iget-object v1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

    .line 1458
    invoke-interface {v0, v1, v2}, Landroid/view/IGraphicsStats;->requestBufferForProcess(Ljava/lang/String;Landroid/view/IGraphicsStatsCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1459
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnSetProcessStatsBuffer(I)V

    .line 1460
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    .line 1463
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_1d

    .line 1461
    :catchall_15
    move-exception v0

    .line 1462
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "HardwareRenderer"

    const-string v2, "Could not acquire gfx stats buffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1464
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1d
    return-void
.end method

.method private blacklist rotateBuffer()V
    .registers 1

    .line 1451
    invoke-static {}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnRotateProcessStatsBuffer()V

    .line 1452
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->requestBuffer()V

    .line 1453
    return-void
.end method


# virtual methods
.method declared-synchronized blacklist init(J)V
    .registers 4
    .param p1, "renderProxy"    # J

    monitor-enter p0

    .line 1333
    :try_start_1
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 1334
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z

    .line 1336
    invoke-direct {p0, p1, p2}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initSched(J)V

    .line 1337
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initGraphicsStats()V
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_12

    .line 1338
    monitor-exit p0

    return-void

    .line 1332
    .end local p0    # "this":Landroid/graphics/HardwareRenderer$ProcessInitializer;
    .end local p1    # "renderProxy":J
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method declared-synchronized blacklist initUsingContext()V
    .registers 2

    monitor-enter p0

    .line 1363
    :try_start_1
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 1365
    :cond_7
    :try_start_7
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initDisplayInfo()V

    .line 1367
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnSetIsHighEndGfx(Z)V

    .line 1368
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnSetIsLowRam(Z)V

    .line 1371
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1d

    .line 1372
    monitor-exit p0

    return-void

    .line 1362
    .end local p0    # "this":Landroid/graphics/HardwareRenderer$ProcessInitializer;
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method declared-synchronized blacklist setContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 1328
    :try_start_1
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 1329
    :cond_7
    :try_start_7
    iput-object p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    .line 1330
    monitor-exit p0

    return-void

    .line 1327
    .end local p0    # "this":Landroid/graphics/HardwareRenderer$ProcessInitializer;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized blacklist setIsolated(Z)V
    .registers 3
    .param p1, "isolated"    # Z

    monitor-enter p0

    .line 1323
    :try_start_1
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 1324
    :cond_7
    :try_start_7
    iput-boolean p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mIsolated:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    .line 1325
    monitor-exit p0

    return-void

    .line 1322
    .end local p0    # "this":Landroid/graphics/HardwareRenderer$ProcessInitializer;
    .end local p1    # "isolated":Z
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized blacklist setPackageName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 1318
    :try_start_1
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 1319
    :cond_7
    :try_start_7
    iput-object p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mPackageName:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    .line 1320
    monitor-exit p0

    return-void

    .line 1317
    .end local p0    # "this":Landroid/graphics/HardwareRenderer$ProcessInitializer;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method
