.class public final synthetic Landroid/service/media/MediaBrowserService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/media/MediaBrowserService$ServiceState;

.field public final synthetic blacklist f$1:Landroid/media/session/MediaSession$Token;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/media/session/MediaSession$Token;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/media/MediaBrowserService$$ExternalSyntheticLambda0;->f$0:Landroid/service/media/MediaBrowserService$ServiceState;

    iput-object p2, p0, Landroid/service/media/MediaBrowserService$$ExternalSyntheticLambda0;->f$1:Landroid/media/session/MediaSession$Token;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$$ExternalSyntheticLambda0;->f$0:Landroid/service/media/MediaBrowserService$ServiceState;

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$$ExternalSyntheticLambda0;->f$1:Landroid/media/session/MediaSession$Token;

    invoke-static {v0, v1}, Landroid/service/media/MediaBrowserService;->lambda$setSessionToken$0(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/media/session/MediaSession$Token;)V

    return-void
.end method
