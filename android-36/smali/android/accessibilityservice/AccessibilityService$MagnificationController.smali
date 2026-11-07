.class public final Landroid/accessibilityservice/AccessibilityService$MagnificationController;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MagnificationController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    }
.end annotation


# instance fields
.field private final blacklist mDisplayId:I

.field private greylist-max-o mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mService:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method public static synthetic blacklist $r8$lambda$peib5KqG0q2mSPCrbP-tB07IOp8(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->lambda$dispatchMagnificationChanged$0(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;I)V
    .registers 4
    .param p1, "service"    # Landroid/accessibilityservice/AccessibilityService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "displayId"    # I

    .line 1424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1425
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1426
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    .line 1427
    iput p3, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    .line 1428
    return-void
.end method

.method private synthetic blacklist lambda$dispatchMagnificationChanged$0(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 4
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 1544
    invoke-interface {p1, p0, p2, p3}, Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;->onMagnificationChanged(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 1546
    return-void
.end method

.method private greylist-max-o setMagnificationCallbackEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 1507
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1508
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1510
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1e

    .line 1512
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationCallbackEnabled(IZ)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    .line 1515
    goto :goto_1e

    .line 1513
    :catch_17
    move-exception v1

    .line 1514
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1517
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1e
    :goto_1e
    return-void
.end method


# virtual methods
.method public whitelist addListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

    .line 1447
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->addListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;)V

    .line 1448
    return-void
.end method

.method public whitelist addListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1462
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1463
    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    if-nez v1, :cond_e

    .line 1464
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    .line 1467
    :cond_e
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 1468
    .local v1, "shouldEnableCallback":Z
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    if-eqz v1, :cond_1f

    .line 1473
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V

    .line 1475
    .end local v1    # "shouldEnableCallback":Z
    :cond_1f
    monitor-exit v0

    .line 1476
    return-void

    .line 1475
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method blacklist dispatchMagnificationChanged(Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 9
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 1526
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1527
    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_3d

    .line 1536
    :cond_10
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 1537
    .local v1, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;>;"
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_4a

    .line 1539
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "count":I
    :goto_1d
    if-ge v0, v2, :cond_3c

    .line 1540
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

    .line 1541
    .local v3, "listener":Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 1542
    .local v4, "handler":Landroid/os/Handler;
    if-eqz v4, :cond_36

    .line 1543
    new-instance v5, Landroid/accessibilityservice/AccessibilityService$MagnificationController$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3, p1, p2}, Landroid/accessibilityservice/AccessibilityService$MagnificationController$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_39

    .line 1549
    :cond_36
    invoke-interface {v3, p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;->onMagnificationChanged(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 1539
    .end local v3    # "listener":Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    .end local v4    # "handler":Landroid/os/Handler;
    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1552
    .end local v0    # "i":I
    .end local v2    # "count":I
    :cond_3c
    return-void

    .line 1528
    .end local v1    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;>;"
    :cond_3d
    :goto_3d
    :try_start_3d
    const-string v1, "AccessibilityService"

    const-string v2, "Received magnification changed callback with no listeners registered!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V

    .line 1531
    monitor-exit v0

    return-void

    .line 1537
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public whitelist getCenterX()F
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1636
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1637
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1639
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 1641
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationCenterX(I)F

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return v1

    .line 1642
    :catch_18
    move-exception v1

    .line 1643
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to obtain center X"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1644
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1647
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getCenterY()F
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1673
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1674
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1676
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 1678
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationCenterY(I)F

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return v1

    .line 1679
    :catch_18
    move-exception v1

    .line 1680
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to obtain center Y"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1681
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1684
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getCurrentMagnificationRegion()Landroid/graphics/Region;
    .registers 5

    .line 1754
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1755
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1757
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 1759
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getCurrentMagnificationRegion(I)Landroid/graphics/Region;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return-object v1

    .line 1760
    :catch_18
    move-exception v1

    .line 1761
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to obtain the current magnified region"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1762
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1765
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getMagnificationConfig()Landroid/accessibilityservice/MagnificationConfig;
    .registers 5

    .line 1566
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1567
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1569
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 1571
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return-object v1

    .line 1572
    :catch_18
    move-exception v1

    .line 1573
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to obtain magnification config"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1574
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1577
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getMagnificationRegion()Landroid/graphics/Region;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1715
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1716
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1718
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 1720
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationRegion(I)Landroid/graphics/Region;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return-object v1

    .line 1721
    :catch_18
    move-exception v1

    .line 1722
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to obtain magnified region"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1723
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1726
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getScale()F
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1599
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1600
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1602
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 1604
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationScale(I)F

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return v1

    .line 1605
    :catch_18
    move-exception v1

    .line 1606
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to obtain scale"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1607
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1610
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method blacklist onServiceConnectedLocked()V
    .registers 2

    .line 1434
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1435
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V

    .line 1437
    :cond_10
    return-void
.end method

.method public whitelist removeListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;)Z
    .registers 7
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

    .line 1485
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1486
    return v1

    .line 1489
    :cond_6
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1490
    :try_start_9
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 1491
    .local v2, "keyIndex":I
    if-ltz v2, :cond_13

    const/4 v3, 0x1

    goto :goto_14

    :cond_13
    move v3, v1

    .line 1492
    .local v3, "hasKey":Z
    :goto_14
    if-eqz v3, :cond_1b

    .line 1493
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1496
    :cond_1b
    if-eqz v3, :cond_28

    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1499
    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V

    .line 1502
    :cond_28
    monitor-exit v0

    return v3

    .line 1503
    .end local v2    # "keyIndex":I
    .end local v3    # "hasKey":Z
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public whitelist reset(Z)Z
    .registers 6
    .param p1, "animate"    # Z

    .line 1788
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1789
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1791
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 1793
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->resetMagnification(IZ)Z

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return v1

    .line 1794
    :catch_18
    move-exception v1

    .line 1795
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to reset"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1796
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1799
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist resetCurrentMagnification(Z)Z
    .registers 6
    .param p1, "animate"    # Z

    .line 1818
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1819
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1821
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 1823
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->resetCurrentMagnification(IZ)Z

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return v1

    .line 1824
    :catch_18
    move-exception v1

    .line 1825
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to reset"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1826
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1829
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setCenter(FFZ)Z
    .registers 8
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "animate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1926
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1927
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1929
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_39

    .line 1931
    :try_start_11
    new-instance v1, Landroid/accessibilityservice/MagnificationConfig$Builder;

    invoke-direct {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    .line 1932
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v1

    .line 1933
    invoke-virtual {v1, p1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v1

    .line 1934
    .local v1, "config":Landroid/accessibilityservice/MagnificationConfig;
    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v2, v1, p3}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z

    move-result v2
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_2d} :catch_2e

    return v2

    .line 1935
    .end local v1    # "config":Landroid/accessibilityservice/MagnificationConfig;
    :catch_2e
    move-exception v1

    .line 1936
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to set center"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1937
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1940
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_39
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setMagnificationConfig(Landroid/accessibilityservice/MagnificationConfig;Z)Z
    .registers 7
    .param p1, "config"    # Landroid/accessibilityservice/MagnificationConfig;
    .param p2, "animate"    # Z

    .line 1849
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1850
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1852
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_23

    .line 1854
    :try_start_11
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return v1

    .line 1855
    :catch_18
    move-exception v1

    .line 1856
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to set magnification config"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1857
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1860
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setScale(FZ)Z
    .registers 7
    .param p1, "scale"    # F
    .param p2, "animate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1884
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1885
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1887
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_35

    .line 1889
    :try_start_11
    new-instance v1, Landroid/accessibilityservice/MagnificationConfig$Builder;

    invoke-direct {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    .line 1890
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v1

    .line 1891
    invoke-virtual {v1, p1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v1

    .line 1892
    .local v1, "config":Landroid/accessibilityservice/MagnificationConfig;
    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v2, v1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z

    move-result v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_29} :catch_2a

    return v2

    .line 1893
    .end local v1    # "config":Landroid/accessibilityservice/MagnificationConfig;
    :catch_2a
    move-exception v1

    .line 1894
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to set scale"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1895
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1898
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_35
    const/4 v1, 0x0

    return v1
.end method
