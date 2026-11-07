.class public Landroid/net/IConnectivityDiagnosticsCallback$Default;
.super Ljava/lang/Object;
.source "IConnectivityDiagnosticsCallback.java"

# interfaces
.implements Landroid/net/IConnectivityDiagnosticsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityDiagnosticsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .registers 2
    .param p1, "report"    # Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onDataStallSuspected(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    .registers 2
    .param p1, "report"    # Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onNetworkConnectivityReported(Landroid/net/Network;Z)V
    .registers 3
    .param p1, "n"    # Landroid/net/Network;
    .param p2, "hasConnectivity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
