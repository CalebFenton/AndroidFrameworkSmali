.class public Landroid/media/MediaRouter;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$Static;,
        Landroid/media/MediaRouter$RouteInfo;,
        Landroid/media/MediaRouter$UserRouteInfo;,
        Landroid/media/MediaRouter$RouteGroup;,
        Landroid/media/MediaRouter$RouteCategory;,
        Landroid/media/MediaRouter$CallbackInfo;,
        Landroid/media/MediaRouter$Callback;,
        Landroid/media/MediaRouter$SimpleCallback;,
        Landroid/media/MediaRouter$VolumeCallbackInfo;,
        Landroid/media/MediaRouter$VolumeCallback;,
        Landroid/media/MediaRouter$VolumeChangeReceiver;,
        Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final AVAILABILITY_FLAG_IGNORE_DEFAULT_ROUTE:I = 0x1

.field public static final CALLBACK_FLAG_PASSIVE_DISCOVERY:I = 0x8

.field public static final CALLBACK_FLAG_PERFORM_ACTIVE_SCAN:I = 0x1

.field public static final CALLBACK_FLAG_REQUEST_DISCOVERY:I = 0x4

.field public static final CALLBACK_FLAG_UNFILTERED_EVENTS:I = 0x2

.field private static final DEBUG:Z

.field static final ROUTE_TYPE_ANY:I = 0x800007

.field public static final ROUTE_TYPE_LIVE_AUDIO:I = 0x1

.field public static final ROUTE_TYPE_LIVE_VIDEO:I = 0x2

.field public static final ROUTE_TYPE_REMOTE_DISPLAY:I = 0x4

.field public static final ROUTE_TYPE_USER:I = 0x800000

.field private static final TAG:Ljava/lang/String; = "MediaRouter"

.field static final sRouters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/media/MediaRouter;",
            ">;"
        }
    .end annotation
.end field

.field static sStatic:Landroid/media/MediaRouter$Static;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Landroid/media/MediaRouter;->DEBUG:Z

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const-class v0, Landroid/media/MediaRouter;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/media/MediaRouter;->-assertionsDisabled:Z

    #@b
    .line 63
    const-string/jumbo v0, "MediaRouter"

    #@e
    const/4 v1, 0x3

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@12
    move-result v0

    #@13
    sput-boolean v0, Landroid/media/MediaRouter;->DEBUG:Z

    #@15
    .line 695
    new-instance v0, Ljava/util/HashMap;

    #@17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1a
    sput-object v0, Landroid/media/MediaRouter;->sRouters:Ljava/util/HashMap;

    #@1c
    .line 61
    return-void

    #@1d
    :cond_0
    const/4 v0, 0x1

    #@1e
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 716
    const-class v2, Landroid/media/MediaRouter$Static;

    #@5
    monitor-enter v2

    #@6
    .line 717
    :try_start_0
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 718
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    .line 719
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Landroid/media/MediaRouter$Static;

    #@10
    invoke-direct {v1, v0}, Landroid/media/MediaRouter$Static;-><init>(Landroid/content/Context;)V

    #@13
    sput-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@15
    .line 720
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@17
    invoke-virtual {v1, v0}, Landroid/media/MediaRouter$Static;->startMonitoringRoutes(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_0
    monitor-exit v2

    #@1b
    .line 715
    return-void

    #@1c
    .line 716
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method static addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 1005
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    #@3
    move-result-object v0

    #@4
    .line 1006
    .local v0, "cat":Landroid/media/MediaRouter$RouteCategory;
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@6
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    .line 1007
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@10
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15
    .line 1009
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteCategory;->isGroupable()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    instance-of v2, p0, Landroid/media/MediaRouter$RouteGroup;

    #@1d
    if-eqz v2, :cond_2

    #@1f
    .line 1019
    :cond_1
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@21
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    .line 1020
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V

    #@29
    .line 1004
    :goto_0
    return-void

    #@2a
    .line 1011
    :cond_2
    new-instance v1, Landroid/media/MediaRouter$RouteGroup;

    #@2c
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    #@2f
    move-result-object v2

    #@30
    invoke-direct {v1, v2}, Landroid/media/MediaRouter$RouteGroup;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    #@33
    .line 1012
    .local v1, "group":Landroid/media/MediaRouter$RouteGroup;
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    #@35
    iput v2, v1, Landroid/media/MediaRouter$RouteGroup;->mSupportedTypes:I

    #@37
    .line 1013
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@39
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e
    .line 1014
    invoke-static {v1}, Landroid/media/MediaRouter;->dispatchRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V

    #@41
    .line 1015
    invoke-virtual {v1, p0}, Landroid/media/MediaRouter$RouteGroup;->addRoute(Landroid/media/MediaRouter$RouteInfo;)V

    #@44
    .line 1017
    move-object p0, v1

    #@45
    .line 1009
    goto :goto_0
.end method

.method static dispatchRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 1236
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "cbi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    #@14
    .line 1237
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1238
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    #@1c
    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    #@1e
    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    #@21
    goto :goto_0

    #@22
    .line 1235
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 1204
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    #@2
    invoke-static {p0, v0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;I)V

    #@5
    .line 1203
    return-void
.end method

.method static dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 7
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p1, "oldSupportedTypes"    # I

    #@0
    .prologue
    .line 1208
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    #@2
    .line 1209
    .local v2, "newSupportedTypes":I
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@4
    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "cbi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_5

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    #@16
    .line 1215
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(I)Z

    #@19
    move-result v4

    #@1a
    .line 1216
    .local v4, "oldVisibility":Z
    invoke-virtual {v0, v2}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(I)Z

    #@1d
    move-result v3

    #@1e
    .line 1217
    .local v3, "newVisibility":Z
    if-nez v4, :cond_1

    #@20
    if-eqz v3, :cond_1

    #@22
    .line 1218
    iget-object v5, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    #@24
    iget-object v6, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    #@26
    invoke-virtual {v5, v6, p0}, Landroid/media/MediaRouter$Callback;->onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    #@29
    .line 1219
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_1

    #@2f
    .line 1220
    iget-object v5, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    #@31
    iget-object v6, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    #@33
    invoke-virtual {v5, v6, v2, p0}, Landroid/media/MediaRouter$Callback;->onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    #@36
    .line 1223
    :cond_1
    if-nez v4, :cond_2

    #@38
    if-eqz v3, :cond_3

    #@3a
    .line 1224
    :cond_2
    iget-object v5, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    #@3c
    iget-object v6, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    #@3e
    invoke-virtual {v5, v6, p0}, Landroid/media/MediaRouter$Callback;->onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    #@41
    .line 1226
    :cond_3
    if-eqz v4, :cond_0

    #@43
    if-nez v3, :cond_0

    #@45
    .line 1227
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    #@48
    move-result v5

    #@49
    if-eqz v5, :cond_4

    #@4b
    .line 1228
    iget-object v5, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    #@4d
    iget-object v6, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    #@4f
    invoke-virtual {v5, v6, p1, p0}, Landroid/media/MediaRouter$Callback;->onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    #@52
    .line 1230
    :cond_4
    iget-object v5, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    #@54
    iget-object v6, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    #@56
    invoke-virtual {v5, v6, p0}, Landroid/media/MediaRouter$Callback;->onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    #@59
    goto :goto_0

    #@5a
    .line 1207
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    .end local v3    # "newVisibility":Z
    .end local v4    # "oldVisibility":Z
    :cond_5
    return-void
.end method

.method static dispatchRouteGrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p1, "group"    # Landroid/media/MediaRouter$RouteGroup;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 1252
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "cbi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    #@14
    .line 1253
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1254
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    #@1c
    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    #@1e
    invoke-virtual {v2, v3, p0, p1, p2}, Landroid/media/MediaRouter$Callback;->onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V

    #@21
    goto :goto_0

    #@22
    .line 1251
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 1276
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "cbi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    #@14
    .line 1277
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1278
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    #@1c
    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    #@1e
    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    #@21
    goto :goto_0

    #@22
    .line 1275
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteRemoved(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 1244
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "cbi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    #@14
    .line 1245
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1246
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    #@1c
    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    #@1e
    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    #@21
    goto :goto_0

    #@22
    .line 1243
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteSelected(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 1188
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "cbi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    #@14
    .line 1189
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1190
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    #@1c
    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    #@1e
    invoke-virtual {v2, v3, p0, p1}, Landroid/media/MediaRouter$Callback;->onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    #@21
    goto :goto_0

    #@22
    .line 1187
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteUngrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p1, "group"    # Landroid/media/MediaRouter$RouteGroup;

    #@0
    .prologue
    .line 1260
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "cbi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    #@14
    .line 1261
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1262
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    #@1c
    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    #@1e
    invoke-virtual {v2, v3, p0, p1}, Landroid/media/MediaRouter$Callback;->onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V

    #@21
    goto :goto_0

    #@22
    .line 1259
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteUnselected(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 1196
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "cbi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    #@14
    .line 1197
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1198
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    #@1c
    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    #@1e
    invoke-virtual {v2, v3, p0, p1}, Landroid/media/MediaRouter$Callback;->onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    #@21
    goto :goto_0

    #@22
    .line 1195
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 1268
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "cbi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    #@14
    .line 1269
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1270
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    #@1c
    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    #@1e
    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    #@21
    goto :goto_0

    #@22
    .line 1267
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method private findCallbackInfo(Landroid/media/MediaRouter$Callback;)I
    .locals 4
    .param p1, "cb"    # Landroid/media/MediaRouter$Callback;

    #@0
    .prologue
    .line 865
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@7
    move-result v0

    #@8
    .line 866
    .local v0, "count":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@b
    .line 867
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@d
    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@f
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/media/MediaRouter$CallbackInfo;

    #@15
    .line 868
    .local v2, "info":Landroid/media/MediaRouter$CallbackInfo;
    iget-object v3, v2, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    #@17
    if-ne v3, p1, :cond_0

    #@19
    .line 869
    return v1

    #@1a
    .line 866
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 872
    .end local v2    # "info":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    const/4 v3, -0x1

    #@1e
    return v3
.end method

.method private static findWifiDisplay([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 3
    .param p0, "displays"    # [Landroid/hardware/display/WifiDisplay;
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1444
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@2
    if-ge v1, v2, :cond_1

    #@4
    .line 1445
    aget-object v0, p0, v1

    #@6
    .line 1446
    .local v0, "d":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 1447
    return-object v0

    #@11
    .line 1444
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1450
    .end local v0    # "d":Landroid/hardware/display/WifiDisplay;
    :cond_1
    const/4 v2, 0x0

    #@15
    return-object v2
.end method

.method private static findWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;)Landroid/media/MediaRouter$RouteInfo;
    .locals 5
    .param p0, "d"    # Landroid/hardware/display/WifiDisplay;

    #@0
    .prologue
    .line 1454
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    .line 1455
    .local v0, "count":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@b
    .line 1456
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@d
    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    #@15
    .line 1457
    .local v2, "info":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    iget-object v4, v2, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 1458
    return-object v2

    #@22
    .line 1455
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1461
    .end local v2    # "info":Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    const/4 v3, 0x0

    #@26
    return-object v3
.end method

.method static getRouteAtStatic(I)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .param p0, "index"    # I

    #@0
    .prologue
    .line 1127
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    #@a
    return-object v0
.end method

.method static getRouteCountStatic()I
    .locals 1

    #@0
    .prologue
    .line 1123
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method static getWifiDisplayStatusCode(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)I
    .locals 4
    .param p0, "d"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "wfdStatus"    # Landroid/hardware/display/WifiDisplayStatus;

    #@0
    .prologue
    .line 1369
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    #@3
    move-result v2

    #@4
    const/4 v3, 0x1

    #@5
    if-ne v2, v3, :cond_1

    #@7
    .line 1370
    const/4 v1, 0x1

    #@8
    .line 1378
    .local v1, "newStatus":I
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p0, v2}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 1379
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    #@15
    move-result v0

    #@16
    .line 1380
    .local v0, "activeState":I
    packed-switch v0, :pswitch_data_0

    #@19
    .line 1393
    .end local v0    # "activeState":I
    :cond_0
    :goto_1
    return v1

    #@1a
    .line 1371
    .end local v1    # "newStatus":I
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_3

    #@20
    .line 1372
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 1373
    const/4 v1, 0x3

    #@27
    .restart local v1    # "newStatus":I
    goto :goto_0

    #@28
    .end local v1    # "newStatus":I
    :cond_2
    const/4 v1, 0x5

    #@29
    .restart local v1    # "newStatus":I
    goto :goto_0

    #@2a
    .line 1375
    .end local v1    # "newStatus":I
    :cond_3
    const/4 v1, 0x4

    #@2b
    .restart local v1    # "newStatus":I
    goto :goto_0

    #@2c
    .line 1382
    .restart local v0    # "activeState":I
    :pswitch_0
    const/4 v1, 0x6

    #@2d
    .line 1383
    goto :goto_1

    #@2e
    .line 1385
    :pswitch_1
    const/4 v1, 0x2

    #@2f
    .line 1386
    goto :goto_1

    #@30
    .line 1388
    :pswitch_2
    const-string/jumbo v2, "MediaRouter"

    #@33
    const-string/jumbo v3, "Active display is not connected!"

    #@36
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    goto :goto_1

    #@3a
    .line 1380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static isWifiDisplayEnabled(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Z
    .locals 1
    .param p0, "d"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "wfdStatus"    # Landroid/hardware/display/WifiDisplayStatus;

    #@0
    .prologue
    .line 1397
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p0, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    #@13
    move-result v0

    #@14
    :goto_0
    return v0

    #@15
    :cond_0
    const/4 v0, 0x1

    #@16
    goto :goto_0

    #@17
    :cond_1
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method

.method static makeWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Landroid/media/MediaRouter$RouteInfo;
    .locals 3
    .param p0, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "wfdStatus"    # Landroid/hardware/display/WifiDisplayStatus;

    #@0
    .prologue
    .line 1401
    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    #@2
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@4
    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    #@6
    invoke-direct {v0, v1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    #@9
    .line 1402
    .local v0, "newRoute":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    #@f
    .line 1403
    const/4 v1, 0x7

    #@10
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    #@12
    .line 1405
    const/4 v1, 0x0

    #@13
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    #@15
    .line 1406
    const/4 v1, 0x1

    #@16
    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    #@18
    .line 1408
    invoke-static {p0, p1}, Landroid/media/MediaRouter;->getWifiDisplayStatusCode(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)I

    #@1b
    move-result v1

    #@1c
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    #@1f
    .line 1409
    invoke-static {p0, p1}, Landroid/media/MediaRouter;->isWifiDisplayEnabled(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Z

    #@22
    move-result v1

    #@23
    iput-boolean v1, v0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    #@25
    .line 1410
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    #@2b
    .line 1411
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2d
    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    #@2f
    .line 1412
    const v2, 0x10404b2

    #@32
    .line 1411
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@35
    move-result-object v1

    #@36
    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    #@38
    .line 1413
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    #@3b
    .line 1414
    return-object v0
.end method

.method static matchesDeviceAddress(Landroid/hardware/display/WifiDisplay;Landroid/media/MediaRouter$RouteInfo;)Z
    .locals 3
    .param p0, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 974
    if-eqz p1, :cond_1

    #@2
    iget-object v1, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    #@4
    if-eqz v1, :cond_1

    #@6
    const/4 v0, 0x1

    #@7
    .line 975
    .local v0, "routeHasAddress":Z
    :goto_0
    if-nez p0, :cond_0

    #@9
    if-eqz v0, :cond_2

    #@b
    .line 979
    :cond_0
    if-eqz p0, :cond_3

    #@d
    if-eqz v0, :cond_3

    #@f
    .line 980
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    return v1

    #@1a
    .line 974
    .end local v0    # "routeHasAddress":Z
    :cond_1
    const/4 v0, 0x0

    #@1b
    .restart local v0    # "routeHasAddress":Z
    goto :goto_0

    #@1c
    .line 976
    :cond_2
    const/4 v1, 0x1

    #@1d
    return v1

    #@1e
    .line 982
    :cond_3
    const/4 v1, 0x0

    #@1f
    return v1
.end method

.method static removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 6
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 1059
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_3

    #@a
    .line 1060
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    #@d
    move-result-object v4

    #@e
    .line 1061
    .local v4, "removingCat":Landroid/media/MediaRouter$RouteCategory;
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@10
    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v1

    #@16
    .line 1062
    .local v1, "count":I
    const/4 v2, 0x0

    #@17
    .line 1063
    .local v2, "found":Z
    const/4 v3, 0x0

    #@18
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    #@1a
    .line 1064
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@1c
    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v5

    #@22
    check-cast v5, Landroid/media/MediaRouter$RouteInfo;

    #@24
    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    #@27
    move-result-object v0

    #@28
    .line 1065
    .local v0, "cat":Landroid/media/MediaRouter$RouteCategory;
    if-ne v4, v0, :cond_4

    #@2a
    .line 1066
    const/4 v2, 0x1

    #@2b
    .line 1070
    .end local v0    # "cat":Landroid/media/MediaRouter$RouteCategory;
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_1

    #@31
    .line 1072
    invoke-static {}, Landroid/media/MediaRouter;->selectDefaultRouteStatic()V

    #@34
    .line 1074
    :cond_1
    if-nez v2, :cond_2

    #@36
    .line 1075
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@38
    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@3d
    .line 1077
    :cond_2
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteRemoved(Landroid/media/MediaRouter$RouteInfo;)V

    #@40
    .line 1058
    .end local v1    # "count":I
    .end local v2    # "found":Z
    .end local v3    # "i":I
    .end local v4    # "removingCat":Landroid/media/MediaRouter$RouteCategory;
    :cond_3
    return-void

    #@41
    .line 1063
    .restart local v0    # "cat":Landroid/media/MediaRouter$RouteCategory;
    .restart local v1    # "count":I
    .restart local v2    # "found":Z
    .restart local v3    # "i":I
    .restart local v4    # "removingCat":Landroid/media/MediaRouter$RouteCategory;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@43
    goto :goto_0
.end method

.method static selectDefaultRouteStatic()V
    .locals 4

    #@0
    .prologue
    const v3, 0x800007

    #@3
    const/4 v2, 0x0

    #@4
    .line 961
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@6
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@8
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@a
    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 962
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@10
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    #@12
    if-eqz v0, :cond_0

    #@14
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@16
    invoke-virtual {v0}, Landroid/media/MediaRouter$Static;->isBluetoothA2dpOn()Z

    #@19
    move-result v0

    #@1a
    .line 961
    if-eqz v0, :cond_0

    #@1c
    .line 963
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@1e
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    #@20
    invoke-static {v3, v0, v2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    #@23
    .line 959
    :goto_0
    return-void

    #@24
    .line 965
    :cond_0
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@26
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    #@28
    invoke-static {v3, v0, v2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    #@2b
    goto :goto_0
.end method

.method static selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V
    .locals 9
    .param p0, "types"    # I
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "explicit"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 903
    sget-boolean v8, Landroid/media/MediaRouter;->-assertionsDisabled:Z

    #@4
    if-nez v8, :cond_1

    #@6
    if-eqz p1, :cond_0

    #@8
    move v8, v6

    #@9
    :goto_0
    if-nez v8, :cond_1

    #@b
    new-instance v6, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v6

    #@11
    :cond_0
    move v8, v7

    #@12
    goto :goto_0

    #@13
    .line 904
    :cond_1
    sget-object v8, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@15
    iget-object v4, v8, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@17
    .line 905
    .local v4, "oldRoute":Landroid/media/MediaRouter$RouteInfo;
    if-ne v4, p1, :cond_2

    #@19
    return-void

    #@1a
    .line 906
    :cond_2
    invoke-virtual {p1, p0}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    #@1d
    move-result v8

    #@1e
    if-nez v8, :cond_3

    #@20
    .line 907
    const-string/jumbo v6, "MediaRouter"

    #@23
    new-instance v7, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v8, "selectRoute ignored; cannot select route with supported types "

    #@2b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v7

    #@2f
    .line 908
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    #@32
    move-result v8

    #@33
    invoke-static {v8}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    #@36
    move-result-object v8

    #@37
    .line 907
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    .line 908
    const-string/jumbo v8, " into route types "

    #@3e
    .line 907
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v7

    #@42
    .line 909
    invoke-static {p0}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    #@45
    move-result-object v8

    #@46
    .line 907
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v7

    #@4e
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 910
    return-void

    #@52
    .line 913
    :cond_3
    sget-object v8, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@54
    iget-object v1, v8, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    #@56
    .line 914
    .local v1, "btRoute":Landroid/media/MediaRouter$RouteInfo;
    if-eqz v1, :cond_5

    #@58
    and-int/lit8 v8, p0, 0x1

    #@5a
    if-eqz v8, :cond_5

    #@5c
    .line 915
    if-eq p1, v1, :cond_4

    #@5e
    sget-object v8, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@60
    iget-object v8, v8, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    #@62
    if-ne p1, v8, :cond_5

    #@64
    .line 917
    :cond_4
    :try_start_0
    sget-object v8, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@66
    iget-object v8, v8, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    #@68
    if-ne p1, v1, :cond_c

    #@6a
    :goto_1
    invoke-interface {v8, v6}, Landroid/media/IAudioService;->setBluetoothA2dpOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    .line 924
    :cond_5
    :goto_2
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@6f
    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    #@71
    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    #@74
    move-result-object v6

    #@75
    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    #@78
    move-result-object v0

    #@79
    .line 925
    .local v0, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    if-eqz v4, :cond_d

    #@7b
    iget-object v6, v4, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    #@7d
    if-eqz v6, :cond_d

    #@7f
    const/4 v5, 0x1

    #@80
    .line 926
    .local v5, "oldRouteHasAddress":Z
    :goto_3
    iget-object v6, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    #@82
    if-eqz v6, :cond_e

    #@84
    const/4 v3, 0x1

    #@85
    .line 927
    .local v3, "newRouteHasAddress":Z
    :goto_4
    if-nez v0, :cond_6

    #@87
    if-nez v5, :cond_6

    #@89
    if-eqz v3, :cond_8

    #@8b
    .line 928
    :cond_6
    if-eqz v3, :cond_7

    #@8d
    invoke-static {v0, p1}, Landroid/media/MediaRouter;->matchesDeviceAddress(Landroid/hardware/display/WifiDisplay;Landroid/media/MediaRouter$RouteInfo;)Z

    #@90
    move-result v6

    #@91
    if-eqz v6, :cond_f

    #@93
    .line 935
    :cond_7
    if-eqz v0, :cond_8

    #@95
    if-eqz v3, :cond_11

    #@97
    .line 940
    :cond_8
    :goto_5
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@99
    invoke-virtual {v6, p1, p2}, Landroid/media/MediaRouter$Static;->setSelectedRoute(Landroid/media/MediaRouter$RouteInfo;Z)V

    #@9c
    .line 942
    if-eqz v4, :cond_9

    #@9e
    .line 943
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    #@a1
    move-result v6

    #@a2
    and-int/2addr v6, p0

    #@a3
    invoke-static {v6, v4}, Landroid/media/MediaRouter;->dispatchRouteUnselected(ILandroid/media/MediaRouter$RouteInfo;)V

    #@a6
    .line 944
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->resolveStatusCode()Z

    #@a9
    move-result v6

    #@aa
    if-eqz v6, :cond_9

    #@ac
    .line 945
    invoke-static {v4}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    #@af
    .line 948
    :cond_9
    if-eqz p1, :cond_b

    #@b1
    .line 949
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->resolveStatusCode()Z

    #@b4
    move-result v6

    #@b5
    if-eqz v6, :cond_a

    #@b7
    .line 950
    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    #@ba
    .line 952
    :cond_a
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    #@bd
    move-result v6

    #@be
    and-int/2addr v6, p0

    #@bf
    invoke-static {v6, p1}, Landroid/media/MediaRouter;->dispatchRouteSelected(ILandroid/media/MediaRouter$RouteInfo;)V

    #@c2
    .line 956
    :cond_b
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@c4
    invoke-virtual {v6}, Landroid/media/MediaRouter$Static;->updateDiscoveryRequest()V

    #@c7
    .line 902
    return-void

    #@c8
    .end local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v3    # "newRouteHasAddress":Z
    .end local v5    # "oldRouteHasAddress":Z
    :cond_c
    move v6, v7

    #@c9
    .line 917
    goto :goto_1

    #@ca
    .line 918
    :catch_0
    move-exception v2

    #@cb
    .line 919
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "MediaRouter"

    #@ce
    const-string/jumbo v7, "Error changing Bluetooth A2DP state"

    #@d1
    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@d4
    goto :goto_2

    #@d5
    .line 925
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    :cond_d
    const/4 v5, 0x0

    #@d6
    .restart local v5    # "oldRouteHasAddress":Z
    goto :goto_3

    #@d7
    .line 926
    :cond_e
    const/4 v3, 0x0

    #@d8
    .restart local v3    # "newRouteHasAddress":Z
    goto :goto_4

    #@d9
    .line 929
    :cond_f
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@db
    iget-boolean v6, v6, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    #@dd
    if-eqz v6, :cond_10

    #@df
    .line 930
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@e1
    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    #@e3
    iget-object v7, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    #@e5
    invoke-virtual {v6, v7}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    #@e8
    goto :goto_5

    #@e9
    .line 932
    :cond_10
    const-string/jumbo v6, "MediaRouter"

    #@ec
    const-string/jumbo v7, "Cannot connect to wifi displays because this process is not allowed to do so."

    #@ef
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f2
    goto :goto_5

    #@f3
    .line 936
    :cond_11
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@f5
    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    #@f7
    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->disconnectWifiDisplay()V

    #@fa
    goto :goto_5
.end method

.method private static shouldShowWifiDisplay(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;)Z
    .locals 1
    .param p0, "d"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "activeDisplay"    # Landroid/hardware/display/WifiDisplay;

    #@0
    .prologue
    .line 1364
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method static systemVolumeChanged(I)V
    .locals 4
    .param p0, "newValue"    # I

    #@0
    .prologue
    .line 1284
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v1, v2, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@4
    .line 1285
    .local v1, "selectedRoute":Landroid/media/MediaRouter$RouteInfo;
    if-nez v1, :cond_0

    #@6
    return-void

    #@7
    .line 1287
    :cond_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@9
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    #@b
    if-eq v1, v2, :cond_1

    #@d
    .line 1288
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@f
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    #@11
    if-ne v1, v2, :cond_2

    #@13
    .line 1289
    :cond_1
    invoke-static {v1}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    #@16
    .line 1283
    :goto_0
    return-void

    #@17
    .line 1290
    :cond_2
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@19
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    #@1b
    if-eqz v2, :cond_4

    #@1d
    .line 1292
    :try_start_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@1f
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    #@21
    invoke-interface {v2}, Landroid/media/IAudioService;->isBluetoothA2dpOn()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_3

    #@27
    .line 1293
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@29
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    #@2b
    .line 1292
    :goto_1
    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    goto :goto_0

    #@2f
    .line 1294
    :catch_0
    move-exception v0

    #@30
    .line 1295
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaRouter"

    #@33
    const-string/jumbo v3, "Error checking Bluetooth A2DP state to report volume change"

    #@36
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    goto :goto_0

    #@3a
    .line 1293
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@3c
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@3e
    goto :goto_1

    #@3f
    .line 1298
    :cond_4
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@41
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    #@43
    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    #@46
    goto :goto_0
.end method

.method static typesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "types"    # I

    #@0
    .prologue
    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 699
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 700
    const-string/jumbo v1, "ROUTE_TYPE_LIVE_AUDIO "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 702
    :cond_0
    and-int/lit8 v1, p0, 0x2

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 703
    const-string/jumbo v1, "ROUTE_TYPE_LIVE_VIDEO "

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 705
    :cond_1
    and-int/lit8 v1, p0, 0x4

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 706
    const-string/jumbo v1, "ROUTE_TYPE_REMOTE_DISPLAY "

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 708
    :cond_2
    const/high16 v1, 0x800000

    #@25
    and-int/2addr v1, p0

    #@26
    if-eqz v1, :cond_3

    #@28
    .line 709
    const-string/jumbo v1, "ROUTE_TYPE_USER "

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 711
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    return-object v1
.end method

.method static updateRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 1184
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    #@3
    .line 1183
    return-void
.end method

.method private static updateWifiDisplayRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;Z)V
    .locals 4
    .param p0, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "wfdStatus"    # Landroid/hardware/display/WifiDisplayStatus;
    .param p3, "disconnected"    # Z

    #@0
    .prologue
    .line 1420
    const/4 v0, 0x0

    #@1
    .line 1421
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 1422
    .local v2, "newName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    .line 1423
    iput-object v2, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    #@11
    .line 1424
    const/4 v0, 0x1

    #@12
    .line 1427
    :cond_0
    invoke-static {p1, p2}, Landroid/media/MediaRouter;->isWifiDisplayEnabled(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Z

    #@15
    move-result v1

    #@16
    .line 1428
    .local v1, "enabled":Z
    iget-boolean v3, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    #@18
    if-eq v3, v1, :cond_4

    #@1a
    const/4 v3, 0x1

    #@1b
    :goto_0
    or-int/2addr v0, v3

    #@1c
    .line 1429
    .local v0, "changed":Z
    iput-boolean v1, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    #@1e
    .line 1431
    invoke-static {p1, p2}, Landroid/media/MediaRouter;->getWifiDisplayStatusCode(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)I

    #@21
    move-result v3

    #@22
    invoke-virtual {p0, v3}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    #@25
    move-result v3

    #@26
    or-int/2addr v0, v3

    #@27
    .line 1433
    if-eqz v0, :cond_1

    #@29
    .line 1434
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    #@2c
    .line 1437
    :cond_1
    if-eqz v1, :cond_2

    #@2e
    if-eqz p3, :cond_3

    #@30
    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_3

    #@36
    .line 1439
    invoke-static {}, Landroid/media/MediaRouter;->selectDefaultRouteStatic()V

    #@39
    .line 1419
    :cond_3
    return-void

    #@3a
    .line 1428
    .local v0, "changed":Z
    :cond_4
    const/4 v3, 0x0

    #@3b
    goto :goto_0
.end method

.method static updateWifiDisplayStatus(Landroid/hardware/display/WifiDisplayStatus;)V
    .locals 12
    .param p0, "status"    # Landroid/hardware/display/WifiDisplayStatus;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 1305
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    #@4
    move-result v9

    #@5
    const/4 v10, 0x3

    #@6
    if-ne v9, v10, :cond_3

    #@8
    .line 1306
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    #@b
    move-result-object v5

    #@c
    .line 1307
    .local v5, "displays":[Landroid/hardware/display/WifiDisplay;
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    #@f
    move-result-object v0

    #@10
    .line 1313
    .local v0, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    sget-object v9, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@12
    iget-boolean v9, v9, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    #@14
    if-nez v9, :cond_0

    #@16
    .line 1314
    if-eqz v0, :cond_2

    #@18
    .line 1315
    const/4 v9, 0x1

    #@19
    new-array v5, v9, [Landroid/hardware/display/WifiDisplay;

    #@1b
    .end local v5    # "displays":[Landroid/hardware/display/WifiDisplay;
    aput-object v0, v5, v11

    #@1d
    .line 1324
    .end local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .restart local v5    # "displays":[Landroid/hardware/display/WifiDisplay;
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    #@1f
    .line 1325
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 1328
    :goto_1
    const/4 v6, 0x0

    #@24
    .local v6, "i":I
    :goto_2
    array-length v9, v5

    #@25
    if-ge v6, v9, :cond_7

    #@27
    .line 1329
    aget-object v3, v5, v6

    #@29
    .line 1330
    .local v3, "d":Landroid/hardware/display/WifiDisplay;
    invoke-static {v3, v0}, Landroid/media/MediaRouter;->shouldShowWifiDisplay(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;)Z

    #@2c
    move-result v9

    #@2d
    if-eqz v9, :cond_1

    #@2f
    .line 1331
    invoke-static {v3}, Landroid/media/MediaRouter;->findWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;)Landroid/media/MediaRouter$RouteInfo;

    #@32
    move-result-object v8

    #@33
    .line 1332
    .local v8, "route":Landroid/media/MediaRouter$RouteInfo;
    if-nez v8, :cond_5

    #@35
    .line 1333
    invoke-static {v3, p0}, Landroid/media/MediaRouter;->makeWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Landroid/media/MediaRouter$RouteInfo;

    #@38
    move-result-object v8

    #@39
    .line 1334
    invoke-static {v8}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    #@3c
    .line 1341
    :goto_3
    invoke-virtual {v3, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    #@3f
    move-result v9

    #@40
    if-eqz v9, :cond_1

    #@42
    .line 1342
    invoke-virtual {v8}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    #@45
    move-result v9

    #@46
    invoke-static {v9, v8, v11}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    #@49
    .line 1328
    .end local v8    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    #@4b
    goto :goto_2

    #@4c
    .line 1317
    .end local v3    # "d":Landroid/hardware/display/WifiDisplay;
    .end local v6    # "i":I
    .restart local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    :cond_2
    sget-object v5, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    #@4e
    goto :goto_0

    #@4f
    .line 1321
    .end local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v5    # "displays":[Landroid/hardware/display/WifiDisplay;
    :cond_3
    sget-object v5, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    #@51
    .line 1322
    .restart local v5    # "displays":[Landroid/hardware/display/WifiDisplay;
    const/4 v0, 0x0

    #@52
    .local v0, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    goto :goto_0

    #@53
    .line 1325
    .end local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    :cond_4
    const/4 v1, 0x0

    #@54
    .local v1, "activeDisplayAddress":Ljava/lang/String;
    goto :goto_1

    #@55
    .line 1336
    .end local v1    # "activeDisplayAddress":Ljava/lang/String;
    .restart local v3    # "d":Landroid/hardware/display/WifiDisplay;
    .restart local v6    # "i":I
    .restart local v8    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_5
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 1337
    .local v2, "address":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v9

    #@5d
    if-nez v9, :cond_6

    #@5f
    .line 1338
    sget-object v9, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@61
    iget-object v9, v9, Landroid/media/MediaRouter$Static;->mPreviousActiveWifiDisplayAddress:Ljava/lang/String;

    #@63
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v4

    #@67
    .line 1339
    :goto_4
    invoke-static {v8, v3, p0, v4}, Landroid/media/MediaRouter;->updateWifiDisplayRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;Z)V

    #@6a
    goto :goto_3

    #@6b
    .line 1337
    :cond_6
    const/4 v4, 0x0

    #@6c
    .local v4, "disconnected":Z
    goto :goto_4

    #@6d
    .line 1348
    .end local v2    # "address":Ljava/lang/String;
    .end local v3    # "d":Landroid/hardware/display/WifiDisplay;
    .end local v4    # "disconnected":Z
    .end local v8    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_7
    sget-object v9, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@6f
    iget-object v9, v9, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@71
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@74
    move-result v6

    #@75
    move v7, v6

    #@76
    .end local v6    # "i":I
    .local v7, "i":I
    :goto_5
    add-int/lit8 v6, v7, -0x1

    #@78
    .end local v7    # "i":I
    .restart local v6    # "i":I
    if-lez v7, :cond_a

    #@7a
    .line 1349
    sget-object v9, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@7c
    iget-object v9, v9, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@7e
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@81
    move-result-object v8

    #@82
    check-cast v8, Landroid/media/MediaRouter$RouteInfo;

    #@84
    .line 1350
    .restart local v8    # "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v9, v8, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    #@86
    if-eqz v9, :cond_8

    #@88
    .line 1351
    iget-object v9, v8, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    #@8a
    invoke-static {v5, v9}, Landroid/media/MediaRouter;->findWifiDisplay([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    #@8d
    move-result-object v3

    #@8e
    .line 1352
    .restart local v3    # "d":Landroid/hardware/display/WifiDisplay;
    if-eqz v3, :cond_9

    #@90
    invoke-static {v3, v0}, Landroid/media/MediaRouter;->shouldShowWifiDisplay(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;)Z

    #@93
    move-result v9

    #@94
    if-eqz v9, :cond_9

    #@96
    .end local v3    # "d":Landroid/hardware/display/WifiDisplay;
    :cond_8
    :goto_6
    move v7, v6

    #@97
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_5

    #@98
    .line 1353
    .end local v7    # "i":I
    .restart local v3    # "d":Landroid/hardware/display/WifiDisplay;
    .restart local v6    # "i":I
    :cond_9
    invoke-static {v8}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    #@9b
    goto :goto_6

    #@9c
    .line 1360
    .end local v3    # "d":Landroid/hardware/display/WifiDisplay;
    .end local v8    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_a
    sget-object v9, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@9e
    iput-object v1, v9, Landroid/media/MediaRouter$Static;->mPreviousActiveWifiDisplayAddress:Ljava/lang/String;

    #@a0
    .line 1302
    return-void
.end method


# virtual methods
.method public addCallback(ILandroid/media/MediaRouter$Callback;)V
    .locals 1
    .param p1, "types"    # I
    .param p2, "cb"    # Landroid/media/MediaRouter$Callback;

    #@0
    .prologue
    .line 816
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    #@4
    .line 815
    return-void
.end method

.method public addCallback(ILandroid/media/MediaRouter$Callback;I)V
    .locals 3
    .param p1, "types"    # I
    .param p2, "cb"    # Landroid/media/MediaRouter$Callback;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 837
    invoke-direct {p0, p2}, Landroid/media/MediaRouter;->findCallbackInfo(Landroid/media/MediaRouter$Callback;)I

    #@3
    move-result v0

    #@4
    .line 838
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@6
    .line 839
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@8
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Landroid/media/MediaRouter$CallbackInfo;

    #@10
    .line 840
    .local v1, "info":Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v1, Landroid/media/MediaRouter$CallbackInfo;->type:I

    #@12
    or-int/2addr v2, p1

    #@13
    iput v2, v1, Landroid/media/MediaRouter$CallbackInfo;->type:I

    #@15
    .line 841
    iget v2, v1, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    #@17
    or-int/2addr v2, p3

    #@18
    iput v2, v1, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    #@1a
    .line 846
    :goto_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@1c
    invoke-virtual {v2}, Landroid/media/MediaRouter$Static;->updateDiscoveryRequest()V

    #@1f
    .line 835
    return-void

    #@20
    .line 843
    .end local v1    # "info":Landroid/media/MediaRouter$CallbackInfo;
    :cond_0
    new-instance v1, Landroid/media/MediaRouter$CallbackInfo;

    #@22
    invoke-direct {v1, p2, p1, p3, p0}, Landroid/media/MediaRouter$CallbackInfo;-><init>(Landroid/media/MediaRouter$Callback;IILandroid/media/MediaRouter;)V

    #@25
    .line 844
    .restart local v1    # "info":Landroid/media/MediaRouter$CallbackInfo;
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@27
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@29
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0
.end method

.method public addRouteInt(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 1001
    invoke-static {p1}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    #@3
    .line 1000
    return-void
.end method

.method public addUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaRouter$UserRouteInfo;

    #@0
    .prologue
    .line 994
    invoke-static {p1}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    #@3
    .line 993
    return-void
.end method

.method public clearUserRoutes()V
    .locals 3

    #@0
    .prologue
    .line 1040
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@3
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v2

    #@9
    if-ge v0, v2, :cond_2

    #@b
    .line 1041
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@d
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/media/MediaRouter$RouteInfo;

    #@15
    .line 1044
    .local v1, "info":Landroid/media/MediaRouter$RouteInfo;
    instance-of v2, v1, Landroid/media/MediaRouter$UserRouteInfo;

    #@17
    if-nez v2, :cond_0

    #@19
    instance-of v2, v1, Landroid/media/MediaRouter$RouteGroup;

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 1045
    :cond_0
    invoke-static {v1}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    #@20
    .line 1046
    add-int/lit8 v0, v0, -0x1

    #@22
    .line 1040
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1039
    .end local v1    # "info":Landroid/media/MediaRouter$RouteInfo;
    :cond_2
    return-void
.end method

.method public createRouteCategory(IZ)Landroid/media/MediaRouter$RouteCategory;
    .locals 2
    .param p1, "nameResId"    # I
    .param p2, "isGroupable"    # Z

    #@0
    .prologue
    .line 1163
    new-instance v0, Landroid/media/MediaRouter$RouteCategory;

    #@2
    const/high16 v1, 0x800000

    #@4
    invoke-direct {v0, p1, v1, p2}, Landroid/media/MediaRouter$RouteCategory;-><init>(IIZ)V

    #@7
    return-object v0
.end method

.method public createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "isGroupable"    # Z

    #@0
    .prologue
    .line 1152
    new-instance v0, Landroid/media/MediaRouter$RouteCategory;

    #@2
    const/high16 v1, 0x800000

    #@4
    invoke-direct {v0, p1, v1, p2}, Landroid/media/MediaRouter$RouteCategory;-><init>(Ljava/lang/CharSequence;IZ)V

    #@7
    return-object v0
.end method

.method public createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;
    .locals 1
    .param p1, "category"    # Landroid/media/MediaRouter$RouteCategory;

    #@0
    .prologue
    .line 1141
    new-instance v0, Landroid/media/MediaRouter$UserRouteInfo;

    #@2
    invoke-direct {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    #@5
    return-object v0
.end method

.method public getCategoryAt(I)Landroid/media/MediaRouter$RouteCategory;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1099
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/media/MediaRouter$RouteCategory;

    #@a
    return-object v0
.end method

.method public getCategoryCount()I
    .locals 1

    #@0
    .prologue
    .line 1088
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    #@0
    .prologue
    .line 734
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    #@4
    return-object v0
.end method

.method public getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1119
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    #@a
    return-object v0
.end method

.method public getRouteCount()I
    .locals 1

    #@0
    .prologue
    .line 1109
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    #@0
    .prologue
    .line 746
    const v0, 0x800007

    #@3
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;
    .locals 2
    .param p1, "type"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 756
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@3
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 757
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@9
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@b
    iget v0, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    #@d
    and-int/2addr v0, p1

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 760
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@12
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@14
    return-object v0

    #@15
    .line 761
    :cond_0
    const/high16 v0, 0x800000

    #@17
    if-ne p1, v0, :cond_1

    #@19
    .line 764
    return-object v1

    #@1a
    .line 768
    :cond_1
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@1c
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    #@1e
    return-object v0
.end method

.method public getSystemCategory()Landroid/media/MediaRouter$RouteCategory;
    .locals 1

    #@0
    .prologue
    .line 741
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    #@4
    return-object v0
.end method

.method public isRouteAvailable(II)Z
    .locals 5
    .param p1, "types"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 788
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@3
    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    .line 789
    .local v0, "count":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@c
    .line 790
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@e
    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    #@16
    .line 791
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 792
    and-int/lit8 v3, p2, 0x1

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 793
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@22
    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    #@24
    if-eq v2, v3, :cond_1

    #@26
    .line 794
    :cond_0
    const/4 v3, 0x1

    #@27
    return v3

    #@28
    .line 789
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 800
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_2
    return v4
.end method

.method public rebindAsUser(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1180
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$Static;->rebindAsUser(I)V

    #@5
    .line 1179
    return-void
.end method

.method public removeCallback(Landroid/media/MediaRouter$Callback;)V
    .locals 4
    .param p1, "cb"    # Landroid/media/MediaRouter$Callback;

    #@0
    .prologue
    .line 855
    invoke-direct {p0, p1}, Landroid/media/MediaRouter;->findCallbackInfo(Landroid/media/MediaRouter$Callback;)I

    #@3
    move-result v0

    #@4
    .line 856
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@6
    .line 857
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@8
    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    #@d
    .line 858
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@f
    invoke-virtual {v1}, Landroid/media/MediaRouter$Static;->updateDiscoveryRequest()V

    #@12
    .line 854
    :goto_0
    return-void

    #@13
    .line 860
    :cond_0
    const-string/jumbo v1, "MediaRouter"

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "removeCallback("

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, "): callback not registered"

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    goto :goto_0
.end method

.method public removeRouteInt(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 1055
    invoke-static {p1}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    #@3
    .line 1054
    return-void
.end method

.method public removeUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaRouter$UserRouteInfo;

    #@0
    .prologue
    .line 1031
    invoke-static {p1}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    #@3
    .line 1030
    return-void
.end method

.method public selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "types"    # I
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 889
    if-nez p2, :cond_0

    #@2
    .line 890
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Route cannot be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 892
    :cond_0
    const/4 v0, 0x1

    #@c
    invoke-static {p1, p2, v0}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    #@f
    .line 888
    return-void
.end method

.method public selectRouteInt(ILandroid/media/MediaRouter$RouteInfo;Z)V
    .locals 0
    .param p1, "types"    # I
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p3, "explicit"    # Z

    #@0
    .prologue
    .line 899
    invoke-static {p1, p2, p3}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    #@3
    .line 898
    return-void
.end method
