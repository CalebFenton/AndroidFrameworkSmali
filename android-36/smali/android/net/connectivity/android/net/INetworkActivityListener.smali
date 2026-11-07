.class public interface abstract Landroid/net/connectivity/android/net/INetworkActivityListener;
.super Ljava/lang/Object;
.source "INetworkActivityListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/INetworkActivityListener$Stub;,
        Landroid/net/connectivity/android/net/INetworkActivityListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.connectivity.android.net.INetworkActivityListener"


# virtual methods
.method public abstract blacklist onNetworkActive()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
