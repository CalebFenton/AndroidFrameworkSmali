.class public final synthetic Landroid/media/session/MediaSessionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/session/MediaSessionManager;

.field public final synthetic blacklist f$1:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/session/MediaSessionManager;Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$$ExternalSyntheticLambda0;->f$0:Landroid/media/session/MediaSessionManager;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$$ExternalSyntheticLambda0;->f$1:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$$ExternalSyntheticLambda0;->f$0:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$$ExternalSyntheticLambda0;->f$1:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    invoke-static {v0, v1}, Landroid/media/session/MediaSessionManager;->$r8$lambda$TySiB21HHVf7LjmwXYno0ol5cEw(Landroid/media/session/MediaSessionManager;Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V

    return-void
.end method
