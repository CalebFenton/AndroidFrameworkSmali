.class public interface abstract Landroid/net/wifi/ILocalOnlyHotspotCallback;
.super Ljava/lang/Object;
.source "ILocalOnlyHotspotCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ILocalOnlyHotspotCallback$Stub;,
        Landroid/net/wifi/ILocalOnlyHotspotCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.ILocalOnlyHotspotCallback"


# virtual methods
.method public abstract blacklist onHotspotFailed(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onHotspotStarted(Landroid/net/wifi/SoftApConfiguration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onHotspotStopped()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
