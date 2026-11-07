.class public Landroid/media/MediaRouter;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$Static;,
        Landroid/media/MediaRouter$RouteInfo;,
        Landroid/media/MediaRouter$RouteCategory;,
        Landroid/media/MediaRouter$Callback;,
        Landroid/media/MediaRouter$CallbackInfo;,
        Landroid/media/MediaRouter$RouteGroup;,
        Landroid/media/MediaRouter$UserRouteInfo;,
        Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;,
        Landroid/media/MediaRouter$VolumeChangeReceiver;,
        Landroid/media/MediaRouter$VolumeCallback;,
        Landroid/media/MediaRouter$VolumeCallbackInfo;,
        Landroid/media/MediaRouter$SimpleCallback;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final greylist-max-o AVAILABILITY_FLAG_IGNORE_DEFAULT_ROUTE:I = 0x1

.field public static final greylist-max-o CALLBACK_FLAG_PASSIVE_DISCOVERY:I = 0x8

.field public static final whitelist CALLBACK_FLAG_PERFORM_ACTIVE_SCAN:I = 0x1

.field public static final greylist-max-o CALLBACK_FLAG_REQUEST_DISCOVERY:I = 0x4

.field public static final whitelist CALLBACK_FLAG_UNFILTERED_EVENTS:I = 0x2

.field private static final greylist-max-o DEBUG:Z

.field private static final blacklist DEBUG_RESTORE_ROUTE:Z = true

.field public static final blacklist MIRRORING_GROUP_ID:Ljava/lang/String; = "android.media.mirroring_group"

.field static final greylist-max-o ROUTE_TYPE_ANY:I = 0x800007

.field public static final whitelist ROUTE_TYPE_LIVE_AUDIO:I = 0x1

.field public static final whitelist ROUTE_TYPE_LIVE_VIDEO:I = 0x2

.field public static final greylist-max-o ROUTE_TYPE_REMOTE_DISPLAY:I = 0x4

.field public static final whitelist ROUTE_TYPE_USER:I = 0x800000

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaRouter"

.field static final greylist-max-o sRouters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Landroid/media/MediaRouter;",
            ">;"
        }
    .end annotation
.end field

.field static greylist-max-o sStatic:Landroid/media/MediaRouter$Static;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/media/MediaRouter;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 78
    nop

    .line 81
    const-string v0, "MediaRouter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaRouter;->DEBUG:Z

    .line 831
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaRouter;->sRouters:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    const-class v0, Landroid/media/MediaRouter$Static;

    monitor-enter v0

    .line 853
    :try_start_6
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    if-nez v1, :cond_1a

    .line 854
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 855
    .local v1, "appContext":Landroid/content/Context;
    new-instance v2, Landroid/media/MediaRouter$Static;

    invoke-direct {v2, v1}, Landroid/media/MediaRouter$Static;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    .line 856
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v2, v1}, Landroid/media/MediaRouter$Static;->startMonitoringRoutes(Landroid/content/Context;)V

    .line 858
    .end local v1    # "appContext":Landroid/content/Context;
    :cond_1a
    monitor-exit v0

    .line 859
    return-void

    .line 858
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method static greylist-max-o addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 1183
    sget-boolean v0, Landroid/media/MediaRouter;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_1c
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    .line 1187
    .local v0, "cat":Landroid/media/MediaRouter$RouteCategory;
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1188
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    :cond_31
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteCategory;->isGroupable()Z

    move-result v1

    if-eqz v1, :cond_57

    instance-of v1, p0, Landroid/media/MediaRouter$RouteGroup;

    if-nez v1, :cond_57

    .line 1192
    new-instance v1, Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaRouter$RouteGroup;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 1193
    .local v1, "group":Landroid/media/MediaRouter$RouteGroup;
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    iput v2, v1, Landroid/media/MediaRouter$RouteGroup;->mSupportedTypes:I

    .line 1194
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    invoke-static {v1}, Landroid/media/MediaRouter;->dispatchRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1196
    invoke-virtual {v1, p0}, Landroid/media/MediaRouter$RouteGroup;->addRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1198
    move-object p0, v1

    .line 1199
    .end local v1    # "group":Landroid/media/MediaRouter$RouteGroup;
    goto :goto_61

    .line 1200
    :cond_57
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1203
    :goto_61
    return-void
.end method

.method static greylist-max-o dispatchRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V
    .registers 5
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 1423
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$CallbackInfo;

    .line 1424
    .local v1, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v1, p0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1425
    iget-object v2, v1, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v1, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    .line 1427
    .end local v1    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_21
    goto :goto_8

    .line 1428
    :cond_22
    return-void
.end method

.method static greylist-max-o dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .registers 2
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 1388
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    invoke-static {p0, v0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 1389
    return-void
.end method

.method static greylist-max-o dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;I)V
    .registers 9
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p1, "oldSupportedTypes"    # I

    .line 1392
    sget-boolean v0, Landroid/media/MediaRouter;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatching route change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_1c
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 1396
    .local v0, "newSupportedTypes":I
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$CallbackInfo;

    .line 1402
    .local v2, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v2, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(I)Z

    move-result v3

    .line 1403
    .local v3, "oldVisibility":Z
    invoke-virtual {v2, v0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(I)Z

    move-result v4

    .line 1404
    .local v4, "newVisibility":Z
    if-nez v3, :cond_52

    if-eqz v4, :cond_52

    .line 1405
    iget-object v5, v2, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v6, v2, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v5, v6, p0}, Landroid/media/MediaRouter$Callback;->onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    .line 1406
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 1407
    iget-object v5, v2, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v6, v2, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v5, v6, v0, p0}, Landroid/media/MediaRouter$Callback;->onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    .line 1410
    :cond_52
    if-nez v3, :cond_56

    if-eqz v4, :cond_5d

    .line 1411
    :cond_56
    iget-object v5, v2, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v6, v2, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v5, v6, p0}, Landroid/media/MediaRouter$Callback;->onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    .line 1413
    :cond_5d
    if-eqz v3, :cond_75

    if-nez v4, :cond_75

    .line 1414
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 1415
    iget-object v5, v2, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v6, v2, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v5, v6, p1, p0}, Landroid/media/MediaRouter$Callback;->onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    .line 1417
    :cond_6e
    iget-object v5, v2, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v6, v2, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v5, v6, p0}, Landroid/media/MediaRouter$Callback;->onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    .line 1419
    .end local v2    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    .end local v3    # "oldVisibility":Z
    .end local v4    # "newVisibility":Z
    :cond_75
    goto :goto_26

    .line 1420
    :cond_76
    return-void
.end method

.method static greylist-max-o dispatchRouteGrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .registers 7
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p1, "group"    # Landroid/media/MediaRouter$RouteGroup;
    .param p2, "index"    # I

    .line 1439
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$CallbackInfo;

    .line 1440
    .local v1, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v1, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1441
    iget-object v2, v1, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v1, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1, p2}, Landroid/media/MediaRouter$Callback;->onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V

    .line 1443
    .end local v1    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_21
    goto :goto_8

    .line 1444
    :cond_22
    return-void
.end method

.method static greylist-max-o dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .registers 5
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 1463
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$CallbackInfo;

    .line 1464
    .local v1, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v1, p0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1465
    iget-object v2, v1, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v1, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    .line 1467
    .end local v1    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_21
    goto :goto_8

    .line 1468
    :cond_22
    return-void
.end method

.method static greylist-max-o dispatchRouteRemoved(Landroid/media/MediaRouter$RouteInfo;)V
    .registers 5
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 1431
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$CallbackInfo;

    .line 1432
    .local v1, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v1, p0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1433
    iget-object v2, v1, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v1, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    .line 1435
    .end local v1    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_21
    goto :goto_8

    .line 1436
    :cond_22
    return-void
.end method

.method static greylist-max-o dispatchRouteSelected(ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 6
    .param p0, "type"    # I
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 1372
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$CallbackInfo;

    .line 1373
    .local v1, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v1, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1374
    iget-object v2, v1, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v1, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1}, Landroid/media/MediaRouter$Callback;->onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    .line 1376
    .end local v1    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_21
    goto :goto_8

    .line 1377
    :cond_22
    return-void
.end method

.method static greylist-max-o dispatchRouteUngrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .registers 6
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p1, "group"    # Landroid/media/MediaRouter$RouteGroup;

    .line 1447
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$CallbackInfo;

    .line 1448
    .local v1, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v1, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1449
    iget-object v2, v1, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v1, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1}, Landroid/media/MediaRouter$Callback;->onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V

    .line 1451
    .end local v1    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_21
    goto :goto_8

    .line 1452
    :cond_22
    return-void
.end method

.method static greylist-max-o dispatchRouteUnselected(ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 6
    .param p0, "type"    # I
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 1380
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$CallbackInfo;

    .line 1381
    .local v1, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v1, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1382
    iget-object v2, v1, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v1, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1}, Landroid/media/MediaRouter$Callback;->onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    .line 1384
    .end local v1    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_21
    goto :goto_8

    .line 1385
    :cond_22
    return-void
.end method

.method static greylist-max-o dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .registers 5
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 1455
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$CallbackInfo;

    .line 1456
    .local v1, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v1, p0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1457
    iget-object v2, v1, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v1, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    .line 1459
    .end local v1    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_21
    goto :goto_8

    .line 1460
    :cond_22
    return-void
.end method

.method private greylist-max-o findCallbackInfo(Landroid/media/MediaRouter$Callback;)I
    .registers 6
    .param p1, "cb"    # Landroid/media/MediaRouter$Callback;

    .line 1030
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 1031
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1d

    .line 1032
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$CallbackInfo;

    .line 1033
    .local v2, "info":Landroid/media/MediaRouter$CallbackInfo;
    iget-object v3, v2, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    if-ne v3, p1, :cond_1a

    .line 1034
    return v1

    .line 1031
    .end local v2    # "info":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1037
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, -0x1

    return v1
.end method

.method private static greylist-max-o findWifiDisplay([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .registers 5
    .param p0, "displays"    # [Landroid/hardware/display/WifiDisplay;
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 1627
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_14

    .line 1628
    aget-object v1, p0, v0

    .line 1629
    .local v1, "d":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1630
    return-object v1

    .line 1627
    .end local v1    # "d":Landroid/hardware/display/WifiDisplay;
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1633
    .end local v0    # "i":I
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o findWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;)Landroid/media/MediaRouter$RouteInfo;
    .registers 6
    .param p0, "d"    # Landroid/hardware/display/WifiDisplay;

    .line 1637
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1638
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_25

    .line 1639
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 1640
    .local v2, "info":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1641
    return-object v2

    .line 1638
    .end local v2    # "info":Landroid/media/MediaRouter$RouteInfo;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1644
    .end local v1    # "i":I
    :cond_25
    const/4 v1, 0x0

    return-object v1
.end method

.method static greylist-max-o getRouteAtStatic(I)Landroid/media/MediaRouter$RouteInfo;
    .registers 2
    .param p0, "index"    # I

    .line 1311
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static greylist-max-o getRouteCountStatic()I
    .registers 1

    .line 1307
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method static greylist-max-o getWifiDisplayStatusCode(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)I
    .registers 6
    .param p0, "d"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "wfdStatus"    # Landroid/hardware/display/WifiDisplayStatus;

    .line 1551
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1552
    const/4 v0, 0x1

    .local v0, "newStatus":I
    goto :goto_1a

    .line 1553
    .end local v0    # "newStatus":I
    :cond_9
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1554
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1555
    const/4 v0, 0x3

    goto :goto_18

    :cond_17
    const/4 v0, 0x5

    .restart local v0    # "newStatus":I
    :goto_18
    goto :goto_1a

    .line 1557
    .end local v0    # "newStatus":I
    :cond_19
    const/4 v0, 0x4

    .line 1560
    .restart local v0    # "newStatus":I
    :goto_1a
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1561
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    .line 1562
    .local v1, "activeState":I
    packed-switch v1, :pswitch_data_38

    goto :goto_37

    .line 1564
    :pswitch_2c
    const/4 v0, 0x6

    .line 1565
    goto :goto_37

    .line 1567
    :pswitch_2e
    const/4 v0, 0x2

    .line 1568
    goto :goto_37

    .line 1570
    :pswitch_30
    const-string v2, "MediaRouter"

    const-string v3, "Active display is not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    .end local v1    # "activeState":I
    :cond_37
    :goto_37
    return v0

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2e
        :pswitch_2c
    .end packed-switch
.end method

.method static greylist-max-o isWifiDisplayEnabled(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Z
    .registers 3
    .param p0, "d"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "wfdStatus"    # Landroid/hardware/display/WifiDisplayStatus;

    .line 1579
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method static greylist-max-o makeWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Landroid/media/MediaRouter$RouteInfo;
    .registers 6
    .param p0, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "wfdStatus"    # Landroid/hardware/display/WifiDisplayStatus;

    .line 1583
    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v0, v1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 1584
    .local v0, "newRoute":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    .line 1585
    const/4 v1, 0x7

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 1587
    const/4 v1, 0x0

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 1588
    const/4 v1, 0x1

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 1590
    invoke-static {p0, p1}, Landroid/media/MediaRouter;->getWifiDisplayStatusCode(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    .line 1591
    invoke-static {p0, p1}, Landroid/media/MediaRouter;->isWifiDisplayEnabled(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Z

    move-result v2

    iput-boolean v2, v0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 1592
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 1593
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    const v3, 0x1040add

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 1595
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 1596
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 1597
    return-object v0
.end method

.method static greylist-max-o matchesDeviceAddress(Landroid/hardware/display/WifiDisplay;Landroid/media/MediaRouter$RouteInfo;)Z
    .registers 5
    .param p0, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 1152
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    iget-object v2, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v2, :cond_a

    move v2, v0

    goto :goto_b

    :cond_a
    move v2, v1

    .line 1153
    .local v2, "routeHasAddress":Z
    :goto_b
    if-nez p0, :cond_10

    if-nez v2, :cond_10

    .line 1154
    return v0

    .line 1157
    :cond_10
    if-eqz p0, :cond_1f

    if-eqz v2, :cond_1f

    .line 1158
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1160
    :cond_1f
    return v1
.end method

.method static greylist-max-o removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V
    .registers 6
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 1240
    sget-boolean v0, Landroid/media/MediaRouter;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_1c
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1244
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    .line 1245
    .local v0, "removingCat":Landroid/media/MediaRouter$RouteCategory;
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1246
    .local v1, "count":I
    const/4 v2, 0x0

    .line 1247
    .local v2, "found":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    if-ge v3, v1, :cond_4b

    .line 1248
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v4, v4, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v4

    .line 1249
    .local v4, "cat":Landroid/media/MediaRouter$RouteCategory;
    if-ne v0, v4, :cond_48

    .line 1250
    const/4 v2, 0x1

    .line 1251
    goto :goto_4b

    .line 1247
    .end local v4    # "cat":Landroid/media/MediaRouter$RouteCategory;
    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 1254
    .end local v3    # "i":I
    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 1256
    invoke-static {}, Landroid/media/MediaRouter;->selectDefaultRouteStatic()V

    .line 1258
    :cond_54
    if-nez v2, :cond_5d

    .line 1259
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1261
    :cond_5d
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteRemoved(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1263
    .end local v0    # "removingCat":Landroid/media/MediaRouter$RouteCategory;
    .end local v1    # "count":I
    .end local v2    # "found":Z
    :cond_60
    return-void
.end method

.method static greylist-max-o selectDefaultRouteStatic()V
    .registers 3

    .line 1139
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v0}, Landroid/media/MediaRouter$Static;->isBluetoothA2dpOn()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x800007

    if-eqz v0, :cond_24

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_24

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 1140
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isBluetooth()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1141
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v2, v0, v1}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    goto :goto_2b

    .line 1143
    :cond_24
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v2, v0, v1}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 1145
    :goto_2b
    return-void
.end method

.method static greylist-max-o selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V
    .registers 12
    .param p0, "types"    # I
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "explicit"    # Z

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selecting route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    nop

    .line 1071
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 1072
    .local v0, "oldRoute":Landroid/media/MediaRouter$RouteInfo;
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v2}, Landroid/media/MediaRouter$Static;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1073
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    goto :goto_2e

    :cond_2a
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    .line 1074
    .local v2, "currentSystemRoute":Landroid/media/MediaRouter$RouteInfo;
    :goto_2e
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_40

    .line 1075
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v5

    if-nez v5, :cond_3e

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isBluetooth()Z

    move-result v5

    if-eqz v5, :cond_40

    :cond_3e
    move v5, v4

    goto :goto_41

    :cond_40
    move v5, v3

    .line 1076
    .local v5, "wasDefaultOrBluetoothRoute":Z
    :goto_41
    if-ne v0, p1, :cond_48

    if-eqz v5, :cond_47

    if-ne p1, v2, :cond_48

    .line 1078
    :cond_47
    return-void

    .line 1080
    :cond_48
    invoke-virtual {p1, p0}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v6

    if-nez v6, :cond_7b

    .line 1081
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectRoute ignored; cannot select route with supported types "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1082
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v4

    invoke-static {v4}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " into route types "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1083
    invoke-static {p0}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1081
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return-void

    .line 1087
    :cond_7b
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v6}, Landroid/media/MediaRouter$Static;->isPlaybackActive()Z

    move-result v6

    if-eqz v6, :cond_b0

    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v6, :cond_b0

    and-int/lit8 v6, p0, 0x1

    if-eqz v6, :cond_b0

    .line 1089
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isBluetooth()Z

    move-result v6

    if-nez v6, :cond_99

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 1091
    :cond_99
    :try_start_99
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    sget-object v7, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v7, v7, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    .line 1092
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isBluetooth()Z

    move-result v8

    .line 1091
    invoke-interface {v6, v7, v8}, Landroid/media/IMediaRouterService;->setBluetoothA2dpOn(Landroid/media/IMediaRouterClient;Z)V
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_a8} :catch_a9

    goto :goto_af

    .line 1093
    :catch_a9
    move-exception v6

    .line 1094
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "Error changing Bluetooth A2DP state"

    invoke-static {v1, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1095
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_af
    goto :goto_e4

    .line 1097
    :cond_b0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip setBluetoothA2dpOn(): types="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isPlaybackActive()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    .line 1098
    invoke-virtual {v7}, Landroid/media/MediaRouter$Static;->isPlaybackActive()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", BT route="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v7, v7, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1097
    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :goto_e4
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    .line 1102
    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v6

    .line 1103
    .local v6, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_f8

    iget-object v7, v0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v7, :cond_f8

    move v7, v4

    goto :goto_f9

    :cond_f8
    move v7, v3

    .line 1104
    .local v7, "oldRouteHasAddress":Z
    :goto_f9
    iget-object v8, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v8, :cond_fe

    move v3, v4

    .line 1105
    .local v3, "newRouteHasAddress":Z
    :cond_fe
    if-nez v6, :cond_104

    if-nez v7, :cond_104

    if-eqz v3, :cond_12d

    .line 1106
    :cond_104
    if-eqz v3, :cond_122

    invoke-static {v6, p1}, Landroid/media/MediaRouter;->matchesDeviceAddress(Landroid/hardware/display/WifiDisplay;Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v4

    if-nez v4, :cond_122

    .line 1107
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-boolean v4, v4, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    if-eqz v4, :cond_11c

    .line 1108
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    iget-object v4, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    goto :goto_12d

    .line 1110
    :cond_11c
    const-string v4, "Cannot connect to wifi displays because this process is not allowed to do so."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12d

    .line 1113
    :cond_122
    if-eqz v6, :cond_12d

    if-nez v3, :cond_12d

    .line 1114
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->disconnectWifiDisplay()V

    .line 1118
    :cond_12d
    :goto_12d
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaRouter$Static;->setSelectedRoute(Landroid/media/MediaRouter$RouteInfo;Z)V

    .line 1120
    if-eqz v0, :cond_145

    .line 1121
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v1

    and-int/2addr v1, p0

    invoke-static {v1, v0}, Landroid/media/MediaRouter;->dispatchRouteUnselected(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 1122
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->resolveStatusCode()Z

    move-result v1

    if-eqz v1, :cond_145

    .line 1123
    invoke-static {v0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1126
    :cond_145
    if-eqz p1, :cond_158

    .line 1127
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->resolveStatusCode()Z

    move-result v1

    if-eqz v1, :cond_150

    .line 1128
    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1130
    :cond_150
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v1

    and-int/2addr v1, p0

    invoke-static {v1, p1}, Landroid/media/MediaRouter;->dispatchRouteSelected(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 1134
    :cond_158
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v1}, Landroid/media/MediaRouter$Static;->updateDiscoveryRequest()V

    .line 1135
    return-void
.end method

.method private static greylist-max-o shouldShowWifiDisplay(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;)Z
    .registers 3
    .param p0, "d"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "activeDisplay"    # Landroid/hardware/display/WifiDisplay;

    .line 1546
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method static greylist-max-o systemVolumeChanged(I)V
    .registers 3
    .param p0, "newValue"    # I

    .line 1471
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 1472
    .local v0, "selectedRoute":Landroid/media/MediaRouter$RouteInfo;
    if-nez v0, :cond_7

    return-void

    .line 1474
    :cond_7
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isBluetooth()Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_35

    .line 1476
    :cond_14
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v1, :cond_2d

    .line 1477
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-boolean v1, v1, Landroid/media/MediaRouter$Static;->mIsBluetoothA2dpOn:Z

    if-eqz v1, :cond_25

    .line 1478
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    goto :goto_29

    :cond_25
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    .line 1477
    :goto_29
    invoke-static {v1}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_38

    .line 1480
    :cond_2d
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v1}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_38

    .line 1475
    :cond_35
    :goto_35
    invoke-static {v0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1482
    :goto_38
    return-void
.end method

.method static greylist-max-o typesToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "types"    # I

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 835
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 836
    const-string v1, "ROUTE_TYPE_LIVE_AUDIO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    :cond_e
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_17

    .line 839
    const-string v1, "ROUTE_TYPE_LIVE_VIDEO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    :cond_17
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_20

    .line 842
    const-string v1, "ROUTE_TYPE_REMOTE_DISPLAY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    :cond_20
    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_2a

    .line 845
    const-string v1, "ROUTE_TYPE_USER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static greylist-max-o updateRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .registers 1
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 1368
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1369
    return-void
.end method

.method private static greylist-max-o updateWifiDisplayRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;Z)V
    .registers 8
    .param p0, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "wfdStatus"    # Landroid/hardware/display/WifiDisplayStatus;
    .param p3, "disconnected"    # Z

    .line 1603
    const/4 v0, 0x0

    .line 1604
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 1605
    .local v1, "newName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1606
    iput-object v1, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 1607
    const/4 v0, 0x1

    .line 1610
    :cond_12
    invoke-static {p1, p2}, Landroid/media/MediaRouter;->isWifiDisplayEnabled(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Z

    move-result v2

    .line 1611
    .local v2, "enabled":Z
    iget-boolean v3, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    if-eq v3, v2, :cond_1c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    or-int/2addr v0, v3

    .line 1612
    iput-boolean v2, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 1614
    invoke-static {p1, p2}, Landroid/media/MediaRouter;->getWifiDisplayStatusCode(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1616
    if-eqz v0, :cond_2e

    .line 1617
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1620
    :cond_2e
    if-eqz v2, :cond_32

    if-eqz p3, :cond_3b

    :cond_32
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1622
    invoke-static {}, Landroid/media/MediaRouter;->selectDefaultRouteStatic()V

    .line 1624
    :cond_3b
    return-void
.end method

.method static greylist-max-o updateWifiDisplayStatus(Landroid/hardware/display/WifiDisplayStatus;)V
    .registers 11
    .param p0, "status"    # Landroid/hardware/display/WifiDisplayStatus;

    .line 1487
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_22

    .line 1488
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 1489
    .local v0, "displays":[Landroid/hardware/display/WifiDisplay;
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 1495
    .local v1, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    sget-object v4, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-boolean v4, v4, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    if-nez v4, :cond_25

    .line 1496
    if-eqz v1, :cond_1f

    .line 1497
    new-array v4, v3, [Landroid/hardware/display/WifiDisplay;

    aput-object v1, v4, v2

    move-object v0, v4

    goto :goto_25

    .line 1499
    :cond_1f
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    goto :goto_25

    .line 1503
    .end local v0    # "displays":[Landroid/hardware/display/WifiDisplay;
    .end local v1    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    :cond_22
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    .line 1504
    .restart local v0    # "displays":[Landroid/hardware/display/WifiDisplay;
    const/4 v1, 0x0

    .line 1506
    .restart local v1    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    :cond_25
    :goto_25
    if-eqz v1, :cond_2c

    .line 1507
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_2d

    :cond_2c
    const/4 v4, 0x0

    .line 1510
    .local v4, "activeDisplayAddress":Ljava/lang/String;
    :goto_2d
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2e
    array-length v6, v0

    if-ge v5, v6, :cond_71

    .line 1511
    aget-object v6, v0, v5

    .line 1512
    .local v6, "d":Landroid/hardware/display/WifiDisplay;
    invoke-static {v6, v1}, Landroid/media/MediaRouter;->shouldShowWifiDisplay(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 1513
    invoke-static {v6}, Landroid/media/MediaRouter;->findWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v7

    .line 1514
    .local v7, "route":Landroid/media/MediaRouter$RouteInfo;
    if-nez v7, :cond_47

    .line 1515
    invoke-static {v6, p0}, Landroid/media/MediaRouter;->makeWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v7

    .line 1516
    invoke-static {v7}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_61

    .line 1518
    :cond_47
    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v8

    .line 1519
    .local v8, "address":Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5d

    sget-object v9, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v9, v9, Landroid/media/MediaRouter$Static;->mPreviousActiveWifiDisplayAddress:Ljava/lang/String;

    .line 1520
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5d

    move v9, v3

    goto :goto_5e

    :cond_5d
    move v9, v2

    .line 1521
    .local v9, "disconnected":Z
    :goto_5e
    invoke-static {v7, v6, p0, v9}, Landroid/media/MediaRouter;->updateWifiDisplayRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;Z)V

    .line 1523
    .end local v8    # "address":Ljava/lang/String;
    .end local v9    # "disconnected":Z
    :goto_61
    invoke-virtual {v6, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 1524
    invoke-virtual {v7}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v8

    invoke-static {v8, v7, v2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 1510
    .end local v6    # "d":Landroid/hardware/display/WifiDisplay;
    .end local v7    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_6e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 1530
    .end local v5    # "i":I
    :cond_71
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "i":I
    :goto_79
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_9e

    .line 1531
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 1532
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v5, v2, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v5, :cond_9c

    .line 1533
    iget-object v5, v2, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/media/MediaRouter;->findWifiDisplay([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v5

    .line 1534
    .local v5, "d":Landroid/hardware/display/WifiDisplay;
    if-eqz v5, :cond_99

    invoke-static {v5, v1}, Landroid/media/MediaRouter;->shouldShowWifiDisplay(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;)Z

    move-result v6

    if-nez v6, :cond_9c

    .line 1535
    :cond_99
    invoke-static {v2}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1538
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v5    # "d":Landroid/hardware/display/WifiDisplay;
    :cond_9c
    move v2, v3

    goto :goto_79

    .line 1542
    .end local v3    # "i":I
    :cond_9e
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iput-object v4, v2, Landroid/media/MediaRouter$Static;->mPreviousActiveWifiDisplayAddress:Ljava/lang/String;

    .line 1543
    return-void
.end method


# virtual methods
.method public whitelist addCallback(ILandroid/media/MediaRouter$Callback;)V
    .registers 4
    .param p1, "types"    # I
    .param p2, "cb"    # Landroid/media/MediaRouter$Callback;

    .line 981
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 982
    return-void
.end method

.method public whitelist addCallback(ILandroid/media/MediaRouter$Callback;I)V
    .registers 7
    .param p1, "types"    # I
    .param p2, "cb"    # Landroid/media/MediaRouter$Callback;
    .param p3, "flags"    # I

    .line 1002
    invoke-direct {p0, p2}, Landroid/media/MediaRouter;->findCallbackInfo(Landroid/media/MediaRouter$Callback;)I

    move-result v0

    .line 1003
    .local v0, "index":I
    if-ltz v0, :cond_1b

    .line 1004
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$CallbackInfo;

    .line 1005
    .local v1, "info":Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v1, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v2, p1

    iput v2, v1, Landroid/media/MediaRouter$CallbackInfo;->type:I

    .line 1006
    iget v2, v1, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    or-int/2addr v2, p3

    iput v2, v1, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    goto :goto_27

    .line 1008
    .end local v1    # "info":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1b
    new-instance v1, Landroid/media/MediaRouter$CallbackInfo;

    invoke-direct {v1, p2, p1, p3, p0}, Landroid/media/MediaRouter$CallbackInfo;-><init>(Landroid/media/MediaRouter$Callback;IILandroid/media/MediaRouter;)V

    .line 1009
    .restart local v1    # "info":Landroid/media/MediaRouter$CallbackInfo;
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    :goto_27
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v2}, Landroid/media/MediaRouter$Static;->updateDiscoveryRequest()V

    .line 1012
    return-void
.end method

.method public greylist-max-o addRouteInt(Landroid/media/MediaRouter$RouteInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 1179
    invoke-static {p1}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1180
    return-void
.end method

.method public whitelist addUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/media/MediaRouter$UserRouteInfo;

    .line 1172
    invoke-static {p1}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1173
    return-void
.end method

.method public whitelist clearUserRoutes()V
    .registers 4

    .line 1221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 1222
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$RouteInfo;

    .line 1225
    .local v1, "info":Landroid/media/MediaRouter$RouteInfo;
    instance-of v2, v1, Landroid/media/MediaRouter$UserRouteInfo;

    if-nez v2, :cond_1d

    instance-of v2, v1, Landroid/media/MediaRouter$RouteGroup;

    if-eqz v2, :cond_22

    .line 1226
    :cond_1d
    invoke-static {v1}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1227
    add-int/lit8 v0, v0, -0x1

    .line 1221
    .end local v1    # "info":Landroid/media/MediaRouter$RouteInfo;
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1230
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method public whitelist createRouteCategory(IZ)Landroid/media/MediaRouter$RouteCategory;
    .registers 5
    .param p1, "nameResId"    # I
    .param p2, "isGroupable"    # Z

    .line 1347
    new-instance v0, Landroid/media/MediaRouter$RouteCategory;

    const/high16 v1, 0x800000

    invoke-direct {v0, p1, v1, p2}, Landroid/media/MediaRouter$RouteCategory;-><init>(IIZ)V

    return-object v0
.end method

.method public whitelist createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;
    .registers 5
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "isGroupable"    # Z

    .line 1336
    new-instance v0, Landroid/media/MediaRouter$RouteCategory;

    const/high16 v1, 0x800000

    invoke-direct {v0, p1, v1, p2}, Landroid/media/MediaRouter$RouteCategory;-><init>(Ljava/lang/CharSequence;IZ)V

    return-object v0
.end method

.method public whitelist createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;
    .registers 3
    .param p1, "category"    # Landroid/media/MediaRouter$RouteCategory;

    .line 1325
    new-instance v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-direct {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    return-object v0
.end method

.method public whitelist getCategoryAt(I)Landroid/media/MediaRouter$RouteCategory;
    .registers 3
    .param p1, "index"    # I

    .line 1283
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteCategory;

    return-object v0
.end method

.method public whitelist getCategoryCount()I
    .registers 2

    .line 1272
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;
    .registers 2

    .line 870
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public greylist-max-o getFallbackRoute()Landroid/media/MediaRouter$RouteInfo;
    .registers 2

    .line 878
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_b

    .line 879
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    goto :goto_f

    :cond_b
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    .line 878
    :goto_f
    return-object v0
.end method

.method public whitelist getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;
    .registers 3
    .param p1, "index"    # I

    .line 1303
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public whitelist getRouteCount()I
    .registers 2

    .line 1293
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public greylist-max-r getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;
    .registers 2

    .line 892
    const v0, 0x800007

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;
    .registers 3
    .param p1, "type"    # I

    .line 902
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_14

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    iget v0, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_14

    .line 906
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object v0

    .line 907
    :cond_14
    const/high16 v0, 0x800000

    if-ne p1, v0, :cond_1a

    .line 910
    const/4 v0, 0x0

    return-object v0

    .line 914
    :cond_1a
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public greylist-max-o getSystemCategory()Landroid/media/MediaRouter$RouteCategory;
    .registers 2

    .line 886
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    return-object v0
.end method

.method public greylist-max-o isRouteAvailable(II)Z
    .registers 7
    .param p1, "types"    # I
    .param p2, "flags"    # I

    .line 934
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 935
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_2a

    .line 936
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 937
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 938
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_25

    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-eq v2, v3, :cond_27

    .line 940
    :cond_25
    const/4 v3, 0x1

    return v3

    .line 935
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 946
    .end local v1    # "i":I
    :cond_2a
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o rebindAsUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 1364
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$Static;->rebindAsUser(I)V

    .line 1365
    return-void
.end method

.method public whitelist removeCallback(Landroid/media/MediaRouter$Callback;)V
    .registers 5
    .param p1, "cb"    # Landroid/media/MediaRouter$Callback;

    .line 1020
    invoke-direct {p0, p1}, Landroid/media/MediaRouter;->findCallbackInfo(Landroid/media/MediaRouter$Callback;)I

    move-result v0

    .line 1021
    .local v0, "index":I
    if-ltz v0, :cond_13

    .line 1022
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 1023
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v1}, Landroid/media/MediaRouter$Static;->updateDiscoveryRequest()V

    goto :goto_31

    .line 1025
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCallback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): callback not registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaRouter"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :goto_31
    return-void
.end method

.method public greylist-max-o removeRouteInt(Landroid/media/MediaRouter$RouteInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 1236
    invoke-static {p1}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1237
    return-void
.end method

.method public whitelist removeUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/media/MediaRouter$UserRouteInfo;

    .line 1212
    invoke-static {p1}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1213
    return-void
.end method

.method public whitelist selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 5
    .param p1, "types"    # I
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .line 1054
    if-eqz p2, :cond_7

    .line 1057
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 1058
    return-void

    .line 1055
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Route cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist selectRouteInt(ILandroid/media/MediaRouter$RouteInfo;Z)V
    .registers 4
    .param p1, "types"    # I
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p3, "explicit"    # Z

    .line 1065
    invoke-static {p1, p2, p3}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 1066
    return-void
.end method

.method public blacklist setRouterGroupId(Ljava/lang/String;)V
    .registers 3
    .param p1, "groupId"    # Ljava/lang/String;

    .line 965
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$Static;->setRouterGroupId(Ljava/lang/String;)V

    .line 966
    return-void
.end method
