.class public final Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;
.super Landroid/hardware/display/IVirtualDisplayCallback$Stub;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VirtualDisplayCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1674
    invoke-direct {p0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;-><init>()V

    .line 1675
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    .line 1676
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    if-eqz v0, :cond_10

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1677
    return-void
.end method


# virtual methods
.method public greylist-max-o onPaused()V
    .registers 4

    .line 1685
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    if-eqz v0, :cond_13

    .line 1686
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1688
    :cond_13
    return-void
.end method

.method public greylist-max-o onResumed()V
    .registers 4

    .line 1692
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    if-eqz v0, :cond_13

    .line 1693
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1695
    :cond_13
    return-void
.end method

.method public greylist-max-o onStopped()V
    .registers 4

    .line 1699
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    if-eqz v0, :cond_13

    .line 1700
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1702
    :cond_13
    return-void
.end method
