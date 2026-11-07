.class public final synthetic Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Map$Entry;

.field public final synthetic blacklist f$1:Landroid/media/session/MediaSession$Token;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Map$Entry;Landroid/media/session/MediaSession$Token;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map$Entry;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/session/MediaSession$Token;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map$Entry;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/session/MediaSession$Token;

    invoke-static {v0, v1}, Landroid/media/session/MediaSessionManager$RemoteSessionCallbackStub;->lambda$onSessionChanged$1(Ljava/util/Map$Entry;Landroid/media/session/MediaSession$Token;)V

    return-void
.end method
