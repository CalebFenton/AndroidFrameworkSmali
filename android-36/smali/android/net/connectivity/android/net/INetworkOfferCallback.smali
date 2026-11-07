.class public interface abstract Landroid/net/connectivity/android/net/INetworkOfferCallback;
.super Ljava/lang/Object;
.source "INetworkOfferCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/INetworkOfferCallback$Stub;,
        Landroid/net/connectivity/android/net/INetworkOfferCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.connectivity.android.net.INetworkOfferCallback"


# virtual methods
.method public abstract blacklist onNetworkNeeded(Landroid/net/NetworkRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onNetworkUnneeded(Landroid/net/NetworkRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
