.class public interface abstract Landroid/media/IMediaRouterClient;
.super Ljava/lang/Object;
.source "IMediaRouterClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRouterClient$Stub;,
        Landroid/media/IMediaRouterClient$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist onGroupRouteSelected(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onRestoreRoute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onStateChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
