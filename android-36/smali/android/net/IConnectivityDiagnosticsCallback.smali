.class public interface abstract Landroid/net/IConnectivityDiagnosticsCallback;
.super Ljava/lang/Object;
.source "IConnectivityDiagnosticsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityDiagnosticsCallback$Stub;,
        Landroid/net/IConnectivityDiagnosticsCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityDiagnosticsCallback"


# virtual methods
.method public abstract blacklist onConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDataStallSuspected(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onNetworkConnectivityReported(Landroid/net/Network;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
