.class public Landroid/window/IRemoteTransition$Default;
.super Ljava/lang/Object;
.source "IRemoteTransition.java"

# interfaces
.implements Landroid/window/IRemoteTransition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IRemoteTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

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

    .line 52
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

    .line 73
    return-void
.end method

.method public blacklist startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/window/TransitionInfo;
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p4, "finishCallback"    # Landroid/window/IRemoteTransitionFinishedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist takeOverAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;[Landroid/window/WindowAnimationState;)V
    .registers 6
    .param p1, "transition"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/window/TransitionInfo;
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p4, "finishCallback"    # Landroid/window/IRemoteTransitionFinishedCallback;
    .param p5, "states"    # [Landroid/window/WindowAnimationState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method
