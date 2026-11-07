.class public interface abstract Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener;
.super Ljava/lang/Object;
.source "IOnWifiDriverCountryCodeChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener$Stub;,
        Landroid/net/wifi/IOnWifiDriverCountryCodeChangedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IOnWifiDriverCountryCodeChangedListener"


# virtual methods
.method public abstract blacklist onDriverCountryCodeChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
