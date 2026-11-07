.class public interface abstract Landroid/view/IWindowId;
.super Ljava/lang/Object;
.source "IWindowId.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowId$Stub;,
        Landroid/view/IWindowId$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o isFocused()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
