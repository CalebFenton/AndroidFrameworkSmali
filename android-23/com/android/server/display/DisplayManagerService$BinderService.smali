.class final Lcom/android/server/display/DisplayManagerService$BinderService;
.super Landroid/hardware/display/IDisplayManager$Stub;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;

    #@0
    .prologue
    .line 1164
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2
    invoke-direct {p0}, Landroid/hardware/display/IDisplayManager$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$BinderService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    #@3
    return-void
.end method

.method private canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z
    .locals 5
    .param p1, "projection"    # Landroid/media/projection/IMediaProjection;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1487
    if-eqz p1, :cond_0

    #@4
    .line 1489
    :try_start_0
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectSecureVideo()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 1490
    return v1

    #@b
    .line 1492
    :catch_0
    move-exception v0

    #@c
    .line 1493
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DisplayManagerService"

    #@f
    const-string/jumbo v4, "Unable to query projection service for permissions"

    #@12
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 1496
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@17
    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    #@1a
    move-result-object v3

    #@1b
    .line 1497
    const-string/jumbo v4, "android.permission.CAPTURE_SECURE_VIDEO_OUTPUT"

    #@1e
    .line 1496
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@21
    move-result v3

    #@22
    if-nez v3, :cond_1

    #@24
    :goto_0
    return v1

    #@25
    :cond_1
    move v1, v2

    #@26
    goto :goto_0
.end method

.method private canProjectVideo(Landroid/media/projection/IMediaProjection;)Z
    .locals 4
    .param p1, "projection"    # Landroid/media/projection/IMediaProjection;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1469
    if-eqz p1, :cond_0

    #@3
    .line 1471
    :try_start_0
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectVideo()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1472
    return v3

    #@a
    .line 1474
    :catch_0
    move-exception v0

    #@b
    .line 1475
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManagerService"

    #@e
    const-string/jumbo v2, "Unable to query projection service for permissions"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 1478
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@16
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    #@19
    move-result-object v1

    #@1a
    .line 1479
    const-string/jumbo v2, "android.permission.CAPTURE_VIDEO_OUTPUT"

    #@1d
    .line 1478
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_1

    #@23
    .line 1481
    return v3

    #@24
    .line 1483
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$BinderService;->canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    #@27
    move-result v1

    #@28
    return v1
.end method

.method private validatePackageName(ILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1455
    if-eqz p2, :cond_1

    #@3
    .line 1456
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@5
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 1457
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_1

    #@13
    .line 1458
    array-length v4, v1

    #@14
    move v2, v3

    #@15
    :goto_0
    if-ge v2, v4, :cond_1

    #@17
    aget-object v0, v1, v2

    #@19
    .line 1459
    .local v0, "n":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_0

    #@1f
    .line 1460
    const/4 v2, 0x1

    #@20
    return v2

    #@21
    .line 1458
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1465
    .end local v0    # "n":Ljava/lang/String;
    .end local v1    # "packageNames":[Ljava/lang/String;
    :cond_1
    return v3
.end method


# virtual methods
.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1242
    if-nez p1, :cond_0

    #@2
    .line 1243
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "address must not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1245
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@d
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    #@10
    move-result-object v2

    #@11
    const-string/jumbo v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    #@14
    .line 1246
    const-string/jumbo v4, "Permission required to connect to a wifi display"

    #@17
    .line 1245
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1248
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1d
    move-result-wide v0

    #@1e
    .line 1250
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@20
    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->-wrap5(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1252
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 1241
    return-void

    #@27
    .line 1251
    :catchall_0
    move-exception v2

    #@28
    .line 1252
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2b
    .line 1251
    throw v2
.end method

.method public createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I
    .locals 16
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "projection"    # Landroid/media/projection/IMediaProjection;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "densityDpi"    # I
    .param p8, "surface"    # Landroid/view/Surface;
    .param p9, "flags"    # I

    #@0
    .prologue
    .line 1346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v5

    #@4
    .line 1347
    .local v5, "callingUid":I
    move-object/from16 v0, p0

    #@6
    move-object/from16 v1, p3

    #@8
    invoke-direct {v0, v5, v1}, Lcom/android/server/display/DisplayManagerService$BinderService;->validatePackageName(ILjava/lang/String;)Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    .line 1348
    new-instance v2, Ljava/lang/SecurityException;

    #@10
    const-string/jumbo v3, "packageName must match the calling uid"

    #@13
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@16
    throw v2

    #@17
    .line 1350
    :cond_0
    if-nez p1, :cond_1

    #@19
    .line 1351
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v3, "appToken must not be null"

    #@1e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2

    #@22
    .line 1353
    :cond_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 1354
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string/jumbo v3, "name must be non-null and non-empty"

    #@2d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v2

    #@31
    .line 1356
    :cond_2
    if-lez p5, :cond_3

    #@33
    if-gtz p6, :cond_4

    #@35
    .line 1357
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@37
    const-string/jumbo v3, "width, height, and densityDpi must be greater than 0"

    #@3a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v2

    #@3e
    .line 1356
    :cond_4
    if-lez p7, :cond_3

    #@40
    .line 1361
    and-int/lit8 v2, p9, 0x1

    #@42
    if-eqz v2, :cond_5

    #@44
    .line 1362
    or-int/lit8 p9, p9, 0x10

    #@46
    .line 1364
    :cond_5
    and-int/lit8 v2, p9, 0x8

    #@48
    if-eqz v2, :cond_6

    #@4a
    .line 1365
    and-int/lit8 p9, p9, -0x11

    #@4c
    .line 1368
    :cond_6
    if-eqz p2, :cond_8

    #@4e
    .line 1370
    :try_start_0
    move-object/from16 v0, p0

    #@50
    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@52
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-wrap1(Lcom/android/server/display/DisplayManagerService;)Landroid/media/projection/IMediaProjectionManager;

    #@55
    move-result-object v2

    #@56
    move-object/from16 v0, p2

    #@58
    invoke-interface {v2, v0}, Landroid/media/projection/IMediaProjectionManager;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    #@5b
    move-result v2

    #@5c
    if-nez v2, :cond_7

    #@5e
    .line 1371
    new-instance v2, Ljava/lang/SecurityException;

    #@60
    const-string/jumbo v3, "Invalid media projection"

    #@63
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@66
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    .line 1374
    :catch_0
    move-exception v13

    #@68
    .line 1375
    .local v13, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/SecurityException;

    #@6a
    const-string/jumbo v3, "unable to validate media projection or flags"

    #@6d
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@70
    throw v2

    #@71
    .line 1373
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_7
    :try_start_1
    move-object/from16 v0, p2

    #@73
    move/from16 v1, p9

    #@75
    invoke-interface {v0, v1}, Landroid/media/projection/IMediaProjection;->applyVirtualDisplayFlags(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@78
    move-result p9

    #@79
    .line 1379
    :cond_8
    const/16 v2, 0x3e8

    #@7b
    if-eq v5, v2, :cond_9

    #@7d
    .line 1380
    and-int/lit8 v2, p9, 0x10

    #@7f
    if-eqz v2, :cond_9

    #@81
    .line 1381
    move-object/from16 v0, p0

    #@83
    move-object/from16 v1, p2

    #@85
    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService;->canProjectVideo(Landroid/media/projection/IMediaProjection;)Z

    #@88
    move-result v2

    #@89
    if-nez v2, :cond_9

    #@8b
    .line 1382
    new-instance v2, Ljava/lang/SecurityException;

    #@8d
    const-string/jumbo v3, "Requires CAPTURE_VIDEO_OUTPUT or CAPTURE_SECURE_VIDEO_OUTPUT permission, or an appropriate MediaProjection token in order to create a screen sharing virtual display."

    #@90
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@93
    throw v2

    #@94
    .line 1388
    :cond_9
    and-int/lit8 v2, p9, 0x4

    #@96
    if-eqz v2, :cond_a

    #@98
    .line 1389
    move-object/from16 v0, p0

    #@9a
    move-object/from16 v1, p2

    #@9c
    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService;->canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    #@9f
    move-result v2

    #@a0
    if-nez v2, :cond_a

    #@a2
    .line 1390
    new-instance v2, Ljava/lang/SecurityException;

    #@a4
    const-string/jumbo v3, "Requires CAPTURE_SECURE_VIDEO_OUTPUT or an appropriate MediaProjection token to create a secure virtual display."

    #@a7
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v2

    #@ab
    .line 1396
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@ae
    move-result-wide v14

    #@af
    .line 1398
    .local v14, "token":J
    :try_start_2
    move-object/from16 v0, p0

    #@b1
    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@b3
    move-object/from16 v3, p1

    #@b5
    move-object/from16 v4, p2

    #@b7
    move-object/from16 v6, p3

    #@b9
    move-object/from16 v7, p4

    #@bb
    move/from16 v8, p5

    #@bd
    move/from16 v9, p6

    #@bf
    move/from16 v10, p7

    #@c1
    move-object/from16 v11, p8

    #@c3
    move/from16 v12, p9

    #@c5
    invoke-static/range {v2 .. v12}, Lcom/android/server/display/DisplayManagerService;->-wrap4(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c8
    move-result v2

    #@c9
    .line 1401
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@cc
    .line 1398
    return v2

    #@cd
    .line 1400
    :catchall_0
    move-exception v2

    #@ce
    .line 1401
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d1
    .line 1400
    throw v2
.end method

.method public disconnectWifiDisplay()V
    .locals 3

    #@0
    .prologue
    .line 1263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 1265
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@6
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-wrap7(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 1267
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c
    .line 1257
    return-void

    #@d
    .line 1266
    :catchall_0
    move-exception v2

    #@e
    .line 1267
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 1266
    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1438
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1439
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@a
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    #@d
    move-result-object v2

    #@e
    const-string/jumbo v3, "android.permission.DUMP"

    #@11
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 1441
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "Permission Denial: can\'t dump DisplayManager from from pid="

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 1442
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@26
    move-result v3

    #@27
    .line 1441
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 1442
    const-string/jumbo v3, ", uid="

    #@2e
    .line 1441
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 1442
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@35
    move-result v3

    #@36
    .line 1441
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@41
    .line 1443
    return-void

    #@42
    .line 1446
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@45
    move-result-wide v0

    #@46
    .line 1448
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@48
    invoke-static {v2, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap8(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    .line 1450
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 1437
    return-void

    #@4f
    .line 1449
    :catchall_0
    move-exception v2

    #@50
    .line 1450
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@53
    .line 1449
    throw v2
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1289
    if-nez p1, :cond_0

    #@2
    .line 1290
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "address must not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1292
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@d
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    #@10
    move-result-object v2

    #@11
    const-string/jumbo v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    #@14
    .line 1293
    const-string/jumbo v4, "Permission required to forget to a wifi display"

    #@17
    .line 1292
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1295
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1d
    move-result-wide v0

    #@1e
    .line 1297
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@20
    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->-wrap9(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1299
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 1288
    return-void

    #@27
    .line 1298
    :catchall_0
    move-exception v2

    #@28
    .line 1299
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2b
    .line 1298
    throw v2
.end method

.method public getDisplayIds()[I
    .locals 4

    #@0
    .prologue
    .line 1188
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1189
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v2

    #@8
    .line 1191
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@a
    invoke-static {v1, v0}, Lcom/android/server/display/DisplayManagerService;->-wrap3(Lcom/android/server/display/DisplayManagerService;I)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v1

    #@e
    .line 1193
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 1191
    return-object v1

    #@12
    .line 1192
    :catchall_0
    move-exception v1

    #@13
    .line 1193
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 1192
    throw v1
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 4
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 1174
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1175
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7
    move-result-wide v2

    #@8
    .line 1177
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@a
    invoke-static {v1, p1, v0}, Lcom/android/server/display/DisplayManagerService;->-wrap2(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v1

    #@e
    .line 1179
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 1177
    return-object v1

    #@12
    .line 1178
    :catchall_0
    move-exception v1

    #@13
    .line 1179
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 1178
    throw v1
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 3

    #@0
    .prologue
    .line 1334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 1336
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@6
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-wrap0(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/WifiDisplayStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v2

    #@a
    .line 1338
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d
    .line 1336
    return-object v2

    #@e
    .line 1337
    :catchall_0
    move-exception v2

    #@f
    .line 1338
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@12
    .line 1337
    throw v2
.end method

.method public pauseWifiDisplay()V
    .locals 5

    #@0
    .prologue
    .line 1305
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    const-string/jumbo v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    #@9
    .line 1306
    const-string/jumbo v4, "Permission required to pause a wifi display session"

    #@c
    .line 1305
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1308
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@12
    move-result-wide v0

    #@13
    .line 1310
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@15
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-wrap14(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 1312
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 1304
    return-void

    #@1c
    .line 1311
    :catchall_0
    move-exception v2

    #@1d
    .line 1312
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 1311
    throw v2
.end method

.method public registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;

    #@0
    .prologue
    .line 1199
    if-nez p1, :cond_0

    #@2
    .line 1200
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "listener must not be null"

    #@7
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1203
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@e
    move-result v0

    #@f
    .line 1204
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@12
    move-result-wide v2

    #@13
    .line 1206
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@15
    invoke-static {v1, p1, v0}, Lcom/android/server/display/DisplayManagerService;->-wrap17(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IDisplayManagerCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 1208
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 1198
    return-void

    #@1c
    .line 1207
    :catchall_0
    move-exception v1

    #@1d
    .line 1208
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 1207
    throw v1
.end method

.method public releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;

    #@0
    .prologue
    .line 1428
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 1430
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@6
    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v3

    #@a
    invoke-static {v2, v3}, Lcom/android/server/display/DisplayManagerService;->-wrap20(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1432
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 1427
    return-void

    #@11
    .line 1431
    :catchall_0
    move-exception v2

    #@12
    .line 1432
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 1431
    throw v2
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1273
    if-nez p1, :cond_0

    #@2
    .line 1274
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "address must not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1276
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@d
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    #@10
    move-result-object v2

    #@11
    const-string/jumbo v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    #@14
    .line 1277
    const-string/jumbo v4, "Permission required to rename to a wifi display"

    #@17
    .line 1276
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 1279
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1d
    move-result-wide v0

    #@1e
    .line 1281
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@20
    invoke-static {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap21(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1283
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 1272
    return-void

    #@27
    .line 1282
    :catchall_0
    move-exception v2

    #@28
    .line 1283
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2b
    .line 1282
    throw v2
.end method

.method public resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    #@0
    .prologue
    .line 1408
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 1410
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@6
    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v3

    #@a
    invoke-static {v2, v3, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->-wrap23(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1412
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 1407
    return-void

    #@11
    .line 1411
    :catchall_0
    move-exception v2

    #@12
    .line 1412
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 1411
    throw v2
.end method

.method public resumeWifiDisplay()V
    .locals 5

    #@0
    .prologue
    .line 1318
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    const-string/jumbo v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    #@9
    .line 1319
    const-string/jumbo v4, "Permission required to resume a wifi display session"

    #@c
    .line 1318
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@12
    move-result-wide v0

    #@13
    .line 1323
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@15
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-wrap24(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 1325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 1317
    return-void

    #@1c
    .line 1324
    :catchall_0
    move-exception v2

    #@1d
    .line 1325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 1324
    throw v2
.end method

.method public setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 1418
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 1420
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@6
    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v3

    #@a
    invoke-static {v2, v3, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap29(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1422
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 1417
    return-void

    #@11
    .line 1421
    :catchall_0
    move-exception v2

    #@12
    .line 1422
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 1421
    throw v2
.end method

.method public startWifiDisplayScan()V
    .locals 6

    #@0
    .prologue
    .line 1214
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v4, "android.permission.CONFIGURE_WIFI_DISPLAY"

    #@9
    .line 1215
    const-string/jumbo v5, "Permission required to start wifi display scans"

    #@c
    .line 1214
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1217
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@12
    move-result v0

    #@13
    .line 1218
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@16
    move-result-wide v2

    #@17
    .line 1220
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@19
    invoke-static {v1, v0}, Lcom/android/server/display/DisplayManagerService;->-wrap30(Lcom/android/server/display/DisplayManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1222
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 1213
    return-void

    #@20
    .line 1221
    :catchall_0
    move-exception v1

    #@21
    .line 1222
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 1221
    throw v1
.end method

.method public stopWifiDisplayScan()V
    .locals 6

    #@0
    .prologue
    .line 1228
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v4, "android.permission.CONFIGURE_WIFI_DISPLAY"

    #@9
    .line 1229
    const-string/jumbo v5, "Permission required to stop wifi display scans"

    #@c
    .line 1228
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1231
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@12
    move-result v0

    #@13
    .line 1232
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@16
    move-result-wide v2

    #@17
    .line 1234
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    #@19
    invoke-static {v1, v0}, Lcom/android/server/display/DisplayManagerService;->-wrap31(Lcom/android/server/display/DisplayManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1236
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 1227
    return-void

    #@20
    .line 1235
    :catchall_0
    move-exception v1

    #@21
    .line 1236
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 1235
    throw v1
.end method
