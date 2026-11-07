.class public final synthetic Landroid/view/SurfaceView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/SurfaceView$SyncBufferTransactionCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;->f$0:Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;->f$0:Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;->onTransactionReady(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
