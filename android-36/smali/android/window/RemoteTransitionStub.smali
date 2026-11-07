.class public abstract Landroid/window/RemoteTransitionStub;
.super Landroid/window/IRemoteTransition$Stub;
.source "RemoteTransitionStub.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 6
    .param p1, "transition"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/window/TransitionInfo;
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p4, "mergeTarget"    # Landroid/os/IBinder;
    .param p5, "finishCallback"    # Landroid/window/IRemoteTransitionFinishedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist onTransitionConsumed(Landroid/os/IBinder;Z)V
    .registers 3
    .param p1, "transition"    # Landroid/os/IBinder;
    .param p2, "aborted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist takeOverAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;[Landroid/window/WindowAnimationState;)V
    .registers 8
    .param p1, "transition"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/window/TransitionInfo;
    .param p3, "startTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p4, "finishCallback"    # Landroid/window/IRemoteTransitionFinishedCallback;
    .param p5, "states"    # [Landroid/window/WindowAnimationState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Takeovers are not supported by this IRemoteTransition"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
