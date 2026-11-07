.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl;

.field public final synthetic blacklist f$1:Landroid/window/SurfaceSyncGroup;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncGroup;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;->f$1:Landroid/window/SurfaceSyncGroup;

    return-void
.end method


# virtual methods
.method public final whitelist onTransactionCommitted()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;->f$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda8;->f$1:Landroid/window/SurfaceSyncGroup;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->$r8$lambda$CiEVNAad0OHeP5EhXA-moSv5I1g(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method
