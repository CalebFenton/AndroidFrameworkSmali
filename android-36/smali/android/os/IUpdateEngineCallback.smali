.class public interface abstract Landroid/os/IUpdateEngineCallback;
.super Ljava/lang/Object;
.source "IUpdateEngineCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUpdateEngineCallback$Stub;,
        Landroid/os/IUpdateEngineCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onPayloadApplicationComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist onStatusUpdate(IF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
