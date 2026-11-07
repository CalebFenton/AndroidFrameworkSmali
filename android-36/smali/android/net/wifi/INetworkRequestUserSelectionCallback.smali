.class public interface abstract Landroid/net/wifi/INetworkRequestUserSelectionCallback;
.super Ljava/lang/Object;
.source "INetworkRequestUserSelectionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub;,
        Landroid/net/wifi/INetworkRequestUserSelectionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.INetworkRequestUserSelectionCallback"


# virtual methods
.method public abstract blacklist reject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist select(Landroid/net/wifi/WifiConfiguration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
