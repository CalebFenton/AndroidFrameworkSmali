.class public interface abstract Landroid/view/AttachedSurfaceControl;
.super Ljava/lang/Object;
.source "AttachedSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;
    }
.end annotation


# virtual methods
.method public whitelist addOnBufferTransformHintChangedListener(Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;

    .line 136
    return-void
.end method

.method public abstract whitelist applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z
.end method

.method public abstract whitelist buildReparentTransaction(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
.end method

.method public whitelist getBufferTransformHint()I
    .registers 2

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getInputTransferToken()Landroid/window/InputTransferToken;
    .registers 3

    .line 206
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The getInputTransferToken needs to be implemented before making this call."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getOrCreateSurfaceSyncGroup()Landroid/window/SurfaceSyncGroup;
    .registers 2

    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist registerOnJankDataListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$OnJankDataListener;)Landroid/view/SurfaceControl$OnJankDataListenerRegistration;
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/view/SurfaceControl$OnJankDataListener;

    .line 227
    sget-object v0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->NONE:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    return-object v0
.end method

.method public whitelist removeOnBufferTransformHintChangedListener(Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;

    .line 145
    return-void
.end method

.method public whitelist setChildBoundingInsets(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 185
    return-void
.end method

.method public whitelist setTouchableRegion(Landroid/graphics/Region;)V
    .registers 2
    .param p1, "r"    # Landroid/graphics/Region;

    .line 157
    return-void
.end method
