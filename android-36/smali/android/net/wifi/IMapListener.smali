.class public interface abstract Landroid/net/wifi/IMapListener;
.super Ljava/lang/Object;
.source "IMapListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IMapListener$Stub;,
        Landroid/net/wifi/IMapListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IMapListener"


# virtual methods
.method public abstract blacklist onResult(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
