.class public interface abstract Landroid/net/wifi/IWifiBandsListener;
.super Ljava/lang/Object;
.source "IWifiBandsListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiBandsListener$Stub;,
        Landroid/net/wifi/IWifiBandsListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiBandsListener"


# virtual methods
.method public abstract blacklist onResult([Landroid/net/wifi/WifiBands;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
