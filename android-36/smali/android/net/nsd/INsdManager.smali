.class public interface abstract Landroid/net/nsd/INsdManager;
.super Ljava/lang/Object;
.source "INsdManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/nsd/INsdManager$Stub;,
        Landroid/net/nsd/INsdManager$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist connect(Landroid/net/connectivity/android/net/nsd/INsdManagerCallback;Z)Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
