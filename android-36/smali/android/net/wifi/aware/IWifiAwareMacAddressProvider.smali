.class public interface abstract Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;
.super Ljava/lang/Object;
.source "IWifiAwareMacAddressProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IWifiAwareMacAddressProvider$Stub;,
        Landroid/net/wifi/aware/IWifiAwareMacAddressProvider$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist macAddress([Landroid/net/wifi/aware/MacAddrMapping;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
