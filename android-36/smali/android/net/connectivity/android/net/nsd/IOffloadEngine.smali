.class public interface abstract Landroid/net/connectivity/android/net/nsd/IOffloadEngine;
.super Ljava/lang/Object;
.source "IOffloadEngine.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/nsd/IOffloadEngine$Stub;,
        Landroid/net/connectivity/android/net/nsd/IOffloadEngine$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.connectivity.android.net.nsd.IOffloadEngine"


# virtual methods
.method public abstract blacklist onOffloadServiceRemoved(Landroid/net/nsd/OffloadServiceInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onOffloadServiceUpdated(Landroid/net/nsd/OffloadServiceInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
