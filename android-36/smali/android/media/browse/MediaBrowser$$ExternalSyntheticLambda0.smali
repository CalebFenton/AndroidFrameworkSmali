.class public final synthetic Landroid/media/browse/MediaBrowser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/browse/MediaBrowser;

.field public final synthetic blacklist f$1:Landroid/media/browse/MediaBrowser$ServiceCallbacks;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$ServiceCallbacks;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/browse/MediaBrowser$$ExternalSyntheticLambda0;->f$0:Landroid/media/browse/MediaBrowser;

    iput-object p2, p0, Landroid/media/browse/MediaBrowser$$ExternalSyntheticLambda0;->f$1:Landroid/media/browse/MediaBrowser$ServiceCallbacks;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$$ExternalSyntheticLambda0;->f$0:Landroid/media/browse/MediaBrowser;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$$ExternalSyntheticLambda0;->f$1:Landroid/media/browse/MediaBrowser$ServiceCallbacks;

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->$r8$lambda$RF0mfol8_PY8gWLw6SvMi6d5dPE(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$ServiceCallbacks;)V

    return-void
.end method
