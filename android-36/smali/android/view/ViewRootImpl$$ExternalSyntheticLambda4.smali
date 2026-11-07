.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl;

.field public final synthetic blacklist f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;->f$1:Landroid/view/SurfaceControl$Transaction;

    iput p3, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;->f$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;->f$1:Landroid/view/SurfaceControl$Transaction;

    iget v2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/view/ViewRootImpl;->$r8$lambda$wPiiNjFq5mSLo87JwQdIzc8i06M(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl$Transaction;I)V

    return-void
.end method
