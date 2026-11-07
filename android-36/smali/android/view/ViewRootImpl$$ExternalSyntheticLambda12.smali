.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl;

.field public final synthetic blacklist f$1:Landroid/window/SurfaceSyncGroup;

.field public final synthetic blacklist f$2:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda12;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda12;->f$1:Landroid/window/SurfaceSyncGroup;

    iput-object p3, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda12;->f$2:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda12;->f$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda12;->f$1:Landroid/window/SurfaceSyncGroup;

    iget-object v2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda12;->f$2:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, v2}, Landroid/view/ViewRootImpl;->$r8$lambda$HCO2IqDk0LMHeKuBviYdoE5Nuho(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncGroup;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
