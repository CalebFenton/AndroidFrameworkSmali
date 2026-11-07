.class public final synthetic Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Landroid/view/SurfaceControl$TransactionCommittedListener;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda2;->f$1:Landroid/view/SurfaceControl$TransactionCommittedListener;

    return-void
.end method


# virtual methods
.method public final whitelist onTransactionCommitted()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda2;->f$1:Landroid/view/SurfaceControl$TransactionCommittedListener;

    invoke-static {v0, v1}, Landroid/view/SurfaceControl$Transaction;->lambda$addTransactionCommittedListener$0(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)V

    return-void
.end method
