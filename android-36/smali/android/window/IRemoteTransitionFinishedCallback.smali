.class public interface abstract Landroid/window/IRemoteTransitionFinishedCallback;
.super Ljava/lang/Object;
.source "IRemoteTransitionFinishedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IRemoteTransitionFinishedCallback$Stub;,
        Landroid/window/IRemoteTransitionFinishedCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.IRemoteTransitionFinishedCallback"


# virtual methods
.method public abstract blacklist onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
