.class public interface abstract Landroid/net/ICaptivePortal;
.super Ljava/lang/Object;
.source "ICaptivePortal.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ICaptivePortal$Stub;,
        Landroid/net/ICaptivePortal$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist appRequest(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o appResponse(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setDelegateUid(ILandroid/os/IBinder;Landroid/net/IIntResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
