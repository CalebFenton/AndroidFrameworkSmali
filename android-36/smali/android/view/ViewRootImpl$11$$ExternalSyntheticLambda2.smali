.class public final synthetic Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl$11;

.field public final synthetic blacklist f$1:Landroid/window/SurfaceSyncGroup;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl$11;Landroid/window/SurfaceSyncGroup;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda2;->f$0:Landroid/view/ViewRootImpl$11;

    iput-object p2, p0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda2;->f$1:Landroid/window/SurfaceSyncGroup;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda2;->f$0:Landroid/view/ViewRootImpl$11;

    iget-object v1, p0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda2;->f$1:Landroid/window/SurfaceSyncGroup;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, p1}, Landroid/view/ViewRootImpl$11;->$r8$lambda$B3xgjVvEams4YrkJ3Tq8ugo3lrU(Landroid/view/ViewRootImpl$11;Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
