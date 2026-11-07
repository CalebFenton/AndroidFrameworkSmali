.class public abstract Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;
.super Ljava/lang/Object;
.source "ConnectivityDiagnosticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityDiagnosticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ConnectivityDiagnosticsCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .registers 2
    .param p1, "report"    # Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    .line 678
    return-void
.end method

.method public whitelist onDataStallSuspected(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    .registers 2
    .param p1, "report"    # Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    .line 688
    return-void
.end method

.method public whitelist onNetworkConnectivityReported(Landroid/net/Network;Z)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "hasConnectivity"    # Z

    .line 697
    return-void
.end method
