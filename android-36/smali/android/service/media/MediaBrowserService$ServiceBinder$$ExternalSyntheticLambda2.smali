.class public final synthetic Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/media/MediaBrowserService$ServiceState;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field public final synthetic blacklist f$3:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/ResultReceiver;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda2;->f$0:Landroid/service/media/MediaBrowserService$ServiceState;

    iput-object p2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda2;->f$2:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object p4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda2;->f$3:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda2;->f$0:Landroid/service/media/MediaBrowserService$ServiceState;

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda2;->f$2:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda2;->f$3:Landroid/os/ResultReceiver;

    invoke-static {v0, v1, v2, v3}, Landroid/service/media/MediaBrowserService$ServiceBinder;->lambda$getMediaItem$4(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/ResultReceiver;)V

    return-void
.end method
