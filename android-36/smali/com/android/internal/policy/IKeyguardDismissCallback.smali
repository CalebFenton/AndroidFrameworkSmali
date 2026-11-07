.class public interface abstract Lcom/android/internal/policy/IKeyguardDismissCallback;
.super Ljava/lang/Object;
.source "IKeyguardDismissCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;,
        Lcom/android/internal/policy/IKeyguardDismissCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onDismissCancelled()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onDismissError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onDismissSucceeded()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
