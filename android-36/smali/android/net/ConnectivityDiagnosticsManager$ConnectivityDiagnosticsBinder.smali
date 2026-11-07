.class public Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;
.super Landroid/net/IConnectivityDiagnosticsCallback$Stub;
.source "ConnectivityDiagnosticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityDiagnosticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectivityDiagnosticsBinder"
.end annotation


# instance fields
.field private final blacklist mCb:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$P6g9NxP3TYbd0ZjPm3vKowoGCkA(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/Network;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->lambda$onNetworkConnectivityReported$2(Landroid/net/Network;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ezy3TaRWsU_POGFYv51GED6V-cs(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->lambda$onConnectivityReportAvailable$0(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nArDLHbhOEth-NXaWZOndFK2ZOc(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->lambda$onDataStallSuspected$1(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "cb"    # Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 617
    invoke-direct {p0}, Landroid/net/IConnectivityDiagnosticsCallback$Stub;-><init>()V

    .line 618
    iput-object p1, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->mCb:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    .line 619
    iput-object p2, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 620
    return-void
.end method

.method private synthetic blacklist lambda$onConnectivityReportAvailable$0(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .registers 3
    .param p1, "report"    # Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    .line 628
    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->mCb:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;->onConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V

    .line 629
    return-void
.end method

.method private synthetic blacklist lambda$onDataStallSuspected$1(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    .registers 3
    .param p1, "report"    # Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    .line 641
    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->mCb:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;->onDataStallSuspected(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V

    .line 642
    return-void
.end method

.method private synthetic blacklist lambda$onNetworkConnectivityReported$2(Landroid/net/Network;Z)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "hasConnectivity"    # Z

    .line 655
    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->mCb:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    invoke-virtual {v0, p1, p2}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;->onNetworkConnectivityReported(Landroid/net/Network;Z)V

    .line 656
    return-void
.end method


# virtual methods
.method public blacklist onConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .registers 6
    .param p1, "report"    # Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    .line 625
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 627
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$$ExternalSyntheticLambda0;-><init>(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 631
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 632
    nop

    .line 633
    return-void

    .line 631
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 632
    throw v2
.end method

.method public blacklist onDataStallSuspected(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    .registers 6
    .param p1, "report"    # Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    .line 638
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 640
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$$ExternalSyntheticLambda2;-><init>(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 644
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 645
    nop

    .line 646
    return-void

    .line 644
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 645
    throw v2
.end method

.method public blacklist onNetworkConnectivityReported(Landroid/net/Network;Z)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "hasConnectivity"    # Z

    .line 652
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 654
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$$ExternalSyntheticLambda1;-><init>(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/Network;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 658
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 659
    nop

    .line 660
    return-void

    .line 658
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 659
    throw v2
.end method
