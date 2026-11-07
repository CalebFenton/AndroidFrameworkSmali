.class public interface abstract Landroid/net/connectivity/android/net/netstats/IUsageCallback;
.super Ljava/lang/Object;
.source "IUsageCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/netstats/IUsageCallback$Stub;,
        Landroid/net/connectivity/android/net/netstats/IUsageCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.connectivity.android.net.netstats.IUsageCallback"


# virtual methods
.method public abstract blacklist onCallbackReleased(Landroid/net/DataUsageRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onThresholdReached(Landroid/net/DataUsageRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
