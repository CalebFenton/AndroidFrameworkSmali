.class public interface abstract Landroid/net/IPacProxyManager;
.super Ljava/lang/Object;
.source "IPacProxyManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IPacProxyManager$Stub;,
        Landroid/net/IPacProxyManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.IPacProxyManager"


# virtual methods
.method public abstract blacklist addListener(Landroid/net/IPacProxyInstalledListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeListener(Landroid/net/IPacProxyInstalledListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
