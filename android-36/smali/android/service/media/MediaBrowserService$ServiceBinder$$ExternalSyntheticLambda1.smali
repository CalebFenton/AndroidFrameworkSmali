.class public final synthetic Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/media/MediaBrowserService$ServiceState;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:Landroid/os/Bundle;

.field public final synthetic blacklist f$5:Landroid/service/media/IMediaBrowserServiceCallbacks;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;->f$0:Landroid/service/media/MediaBrowserService$ServiceState;

    iput-object p2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput p3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;->f$4:Landroid/os/Bundle;

    iput-object p6, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;->f$5:Landroid/service/media/IMediaBrowserServiceCallbacks;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;->f$0:Landroid/service/media/MediaBrowserService$ServiceState;

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;->f$3:I

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;->f$4:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;->f$5:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-static/range {v0 .. v5}, Landroid/service/media/MediaBrowserService$ServiceBinder;->lambda$connect$0(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    return-void
.end method
