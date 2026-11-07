.class public interface abstract Landroid/net/wifi/ILocalOnlyConnectionStatusListener;
.super Ljava/lang/Object;
.source "ILocalOnlyConnectionStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ILocalOnlyConnectionStatusListener$Stub;,
        Landroid/net/wifi/ILocalOnlyConnectionStatusListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.ILocalOnlyConnectionStatusListener"


# virtual methods
.method public abstract blacklist onConnectionStatus(Landroid/net/wifi/WifiNetworkSpecifier;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
