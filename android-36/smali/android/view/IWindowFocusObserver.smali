.class public interface abstract Landroid/view/IWindowFocusObserver;
.super Ljava/lang/Object;
.source "IWindowFocusObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowFocusObserver$Stub;,
        Landroid/view/IWindowFocusObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o focusGained(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o focusLost(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
