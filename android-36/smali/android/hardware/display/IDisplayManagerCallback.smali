.class public interface abstract Landroid/hardware/display/IDisplayManagerCallback;
.super Ljava/lang/Object;
.source "IDisplayManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManagerCallback$Stub;,
        Landroid/hardware/display/IDisplayManagerCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onDisplayEvent(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTopologyChanged(Landroid/hardware/display/DisplayTopology;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
