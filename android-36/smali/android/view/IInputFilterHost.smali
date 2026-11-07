.class public interface abstract Landroid/view/IInputFilterHost;
.super Ljava/lang/Object;
.source "IInputFilterHost.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IInputFilterHost$Stub;,
        Landroid/view/IInputFilterHost$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o sendInputEvent(Landroid/view/InputEvent;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
