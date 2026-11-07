.class public Landroid/net/connectivity/android/net/netstats/IUsageCallback$Default;
.super Ljava/lang/Object;
.source "IUsageCallback.java"

# interfaces
.implements Landroid/net/connectivity/android/net/netstats/IUsageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/netstats/IUsageCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCallbackReleased(Landroid/net/DataUsageRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/net/DataUsageRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onThresholdReached(Landroid/net/DataUsageRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/net/DataUsageRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
