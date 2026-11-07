.class public interface abstract Landroid/view/IOnKeyguardExitResult;
.super Ljava/lang/Object;
.source "IOnKeyguardExitResult.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IOnKeyguardExitResult$Stub;,
        Landroid/view/IOnKeyguardExitResult$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist onKeyguardExitResult(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
