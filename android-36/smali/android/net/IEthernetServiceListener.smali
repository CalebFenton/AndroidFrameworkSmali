.class public interface abstract Landroid/net/IEthernetServiceListener;
.super Ljava/lang/Object;
.source "IEthernetServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IEthernetServiceListener$Stub;,
        Landroid/net/IEthernetServiceListener$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist onEthernetStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
