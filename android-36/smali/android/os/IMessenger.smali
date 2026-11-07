.class public interface abstract Landroid/os/IMessenger;
.super Ljava/lang/Object;
.source "IMessenger.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IMessenger$Stub;,
        Landroid/os/IMessenger$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o send(Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
