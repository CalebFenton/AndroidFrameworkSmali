.class public interface abstract Landroid/view/IInputFilter;
.super Ljava/lang/Object;
.source "IInputFilter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IInputFilter$Stub;,
        Landroid/view/IInputFilter$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o filterInputEvent(Landroid/view/InputEvent;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o install(Landroid/view/IInputFilterHost;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o uninstall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
