.class public final synthetic Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl$11;

.field public final synthetic blacklist f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl$11;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda1;->f$0:Landroid/view/ViewRootImpl$11;

    iput-object p2, p0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final whitelist onTransactionCommitted()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda1;->f$0:Landroid/view/ViewRootImpl$11;

    iget-object v1, p0, Landroid/view/ViewRootImpl$11$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl$11;->$r8$lambda$R3FkiByxaHubFL68iUllcN1tkkY(Landroid/view/ViewRootImpl$11;Ljava/lang/Runnable;)V

    return-void
.end method
