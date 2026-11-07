.class public final synthetic Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/media/MediaBrowserService$ServiceState;

.field public final synthetic blacklist f$1:Landroid/service/media/IMediaBrowserServiceCallbacks;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda3;->f$0:Landroid/service/media/MediaBrowserService$ServiceState;

    iput-object p2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda3;->f$1:Landroid/service/media/IMediaBrowserServiceCallbacks;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda3;->f$0:Landroid/service/media/MediaBrowserService$ServiceState;

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda3;->f$1:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-static {v0, v1}, Landroid/service/media/MediaBrowserService$ServiceBinder;->lambda$disconnect$1(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    return-void
.end method
