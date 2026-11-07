.class public interface abstract Landroid/net/wifi/nl80211/IWificondEventCallback;
.super Ljava/lang/Object;
.source "IWificondEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IWificondEventCallback$Stub;,
        Landroid/net/wifi/nl80211/IWificondEventCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.nl80211.IWificondEventCallback"


# virtual methods
.method public abstract blacklist OnRegDomainChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
