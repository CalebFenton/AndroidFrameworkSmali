.class public final synthetic Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Landroid/view/SurfaceControl$TransactionStats;

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->lambda$addTransactionCompletedListener$2(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/view/SurfaceControl$TransactionStats;)V

    return-void
.end method
