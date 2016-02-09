.class public final Landroid/support/v4/media/routing/MediaRouterJellybean$SelectRouteWorkaround;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectRouteWorkaround"
.end annotation


# instance fields
.field private mSelectRouteIntMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 6

    #@0
    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 283
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5
    const/16 v2, 0x10

    #@7
    if-lt v1, v2, :cond_0

    #@9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@b
    const/16 v2, 0x11

    #@d
    if-le v1, v2, :cond_1

    #@f
    .line 284
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@11
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@14
    throw v1

    #@15
    .line 287
    :cond_1
    :try_start_0
    const-class v1, Landroid/media/MediaRouter;

    #@17
    .line 288
    const-string/jumbo v2, "selectRouteInt"

    #@1a
    .line 287
    const/4 v3, 0x2

    #@1b
    new-array v3, v3, [Ljava/lang/Class;

    #@1d
    .line 288
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1f
    const/4 v5, 0x0

    #@20
    aput-object v4, v3, v5

    #@22
    const-class v4, Landroid/media/MediaRouter$RouteInfo;

    #@24
    const/4 v5, 0x1

    #@25
    aput-object v4, v3, v5

    #@27
    .line 287
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@2a
    move-result-object v1

    #@2b
    iput-object v1, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$SelectRouteWorkaround;->mSelectRouteIntMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 282
    :goto_0
    return-void

    #@2e
    .line 289
    :catch_0
    move-exception v0

    #@2f
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    goto :goto_0
.end method


# virtual methods
.method public selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 9
    .param p1, "routerObj"    # Ljava/lang/Object;
    .param p2, "types"    # I
    .param p3, "routeObj"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v4, p1

    #@1
    .line 294
    check-cast v4, Landroid/media/MediaRouter;

    #@3
    .local v4, "router":Landroid/media/MediaRouter;
    move-object v2, p3

    #@4
    .line 296
    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    #@6
    .line 298
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    #@9
    move-result v3

    #@a
    .line 299
    .local v3, "routeTypes":I
    const/high16 v5, 0x800000

    #@c
    and-int/2addr v5, v3

    #@d
    if-nez v5, :cond_0

    #@f
    .line 305
    iget-object v5, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$SelectRouteWorkaround;->mSelectRouteIntMethod:Ljava/lang/reflect/Method;

    #@11
    if-eqz v5, :cond_1

    #@13
    .line 307
    :try_start_0
    iget-object v5, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$SelectRouteWorkaround;->mSelectRouteIntMethod:Ljava/lang/reflect/Method;

    #@15
    const/4 v6, 0x2

    #@16
    new-array v6, v6, [Ljava/lang/Object;

    #@18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v7

    #@1c
    const/4 v8, 0x0

    #@1d
    aput-object v7, v6, v8

    #@1f
    const/4 v7, 0x1

    #@20
    aput-object v2, v6, v7

    #@22
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 308
    return-void

    #@26
    .line 312
    :catch_0
    move-exception v1

    #@27
    .line 313
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v5, "MediaRouterJellybean"

    #@2a
    const-string/jumbo v6, "Cannot programmatically select non-user route.  Media routing may not work."

    #@2d
    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    .line 324
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    :goto_0
    invoke-virtual {v4, p2, v2}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    #@33
    .line 293
    return-void

    #@34
    .line 309
    :catch_1
    move-exception v0

    #@35
    .line 310
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string/jumbo v5, "MediaRouterJellybean"

    #@38
    const-string/jumbo v6, "Cannot programmatically select non-user route.  Media routing may not work."

    #@3b
    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3e
    goto :goto_0

    #@3f
    .line 317
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :cond_1
    const-string/jumbo v5, "MediaRouterJellybean"

    #@42
    const-string/jumbo v6, "Cannot programmatically select non-user route because the platform is missing the selectRouteInt() method.  Media routing may not work."

    #@45
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    goto :goto_0
.end method
