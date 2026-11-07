.class public interface abstract Landroid/devicelock/IGetKioskAppsCallback;
.super Ljava/lang/Object;
.source "IGetKioskAppsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/devicelock/IGetKioskAppsCallback$Stub;,
        Landroid/devicelock/IGetKioskAppsCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.devicelock.IGetKioskAppsCallback"


# virtual methods
.method public abstract blacklist onError(Landroid/devicelock/ParcelableException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onKioskAppsReceived(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
