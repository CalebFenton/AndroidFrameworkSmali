.class public interface abstract Landroid/net/IPacProxyInstalledListener;
.super Ljava/lang/Object;
.source "IPacProxyInstalledListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IPacProxyInstalledListener$Stub;,
        Landroid/net/IPacProxyInstalledListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.IPacProxyInstalledListener"


# virtual methods
.method public abstract blacklist onPacProxyInstalled(Landroid/net/Network;Landroid/net/ProxyInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
