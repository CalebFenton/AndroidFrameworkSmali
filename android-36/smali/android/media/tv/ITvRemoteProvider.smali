.class public interface abstract Landroid/media/tv/ITvRemoteProvider;
.super Ljava/lang/Object;
.source "ITvRemoteProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvRemoteProvider$Stub;,
        Landroid/media/tv/ITvRemoteProvider$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onInputBridgeConnected(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o setRemoteServiceInputSink(Landroid/media/tv/ITvRemoteServiceInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
