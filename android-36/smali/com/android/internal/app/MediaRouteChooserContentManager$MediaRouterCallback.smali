.class final Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MediaRouteChooserContentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteChooserContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/MediaRouteChooserContentManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/MediaRouteChooserContentManager;Lcom/android/internal/app/MediaRouteChooserContentManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteChooserContentManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 242
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserContentManager;->refreshRoutes()V

    .line 243
    return-void
.end method

.method public whitelist onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 252
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserContentManager;->refreshRoutes()V

    .line 253
    return-void
.end method

.method public whitelist onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 247
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserContentManager;->refreshRoutes()V

    .line 248
    return-void
.end method

.method public whitelist onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 5
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 257
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    iget-object v0, v0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;

    invoke-interface {v0}, Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;->dismissView()V

    .line 258
    return-void
.end method
