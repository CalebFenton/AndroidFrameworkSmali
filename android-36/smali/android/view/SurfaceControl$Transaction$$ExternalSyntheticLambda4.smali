.class public final synthetic Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/SurfaceControl$TransactionCommittedListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/SurfaceControl$TransactionCommittedListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda4;->f$0:Landroid/view/SurfaceControl$TransactionCommittedListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda4;->f$0:Landroid/view/SurfaceControl$TransactionCommittedListener;

    invoke-interface {v0}, Landroid/view/SurfaceControl$TransactionCommittedListener;->onTransactionCommitted()V

    return-void
.end method
