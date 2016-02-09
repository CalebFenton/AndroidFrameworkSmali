.class public final Landroid/support/v4/media/routing/MediaRouterJellybean$GetDefaultRouteWorkaround;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetDefaultRouteWorkaround"
.end annotation


# instance fields
.field private mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 336
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
    .line 337
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@11
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@14
    throw v1

    #@15
    .line 341
    :cond_1
    :try_start_0
    const-class v1, Landroid/media/MediaRouter;

    #@17
    const-string/jumbo v2, "getSystemAudioRoute"

    #@1a
    const/4 v3, 0x0

    #@1b
    new-array v3, v3, [Ljava/lang/Class;

    #@1d
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@20
    move-result-object v1

    #@21
    .line 340
    iput-object v1, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$GetDefaultRouteWorkaround;->mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 335
    :goto_0
    return-void

    #@24
    .line 342
    :catch_0
    move-exception v0

    #@25
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    goto :goto_0
.end method


# virtual methods
.method public getDefaultRoute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "routerObj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    move-object v2, p1

    #@2
    .line 347
    check-cast v2, Landroid/media/MediaRouter;

    #@4
    .line 349
    .local v2, "router":Landroid/media/MediaRouter;
    iget-object v3, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$GetDefaultRouteWorkaround;->mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 351
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/media/routing/MediaRouterJellybean$GetDefaultRouteWorkaround;->mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;

    #@a
    const/4 v4, 0x0

    #@b
    new-array v4, v4, [Ljava/lang/Object;

    #@d
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    #@10
    move-result-object v3

    #@11
    return-object v3

    #@12
    .line 352
    :catch_0
    move-exception v0

    #@13
    .line 359
    :cond_0
    :goto_0
    invoke-virtual {v2, v5}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    #@16
    move-result-object v3

    #@17
    return-object v3

    #@18
    .line 353
    :catch_1
    move-exception v1

    #@19
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0
.end method
