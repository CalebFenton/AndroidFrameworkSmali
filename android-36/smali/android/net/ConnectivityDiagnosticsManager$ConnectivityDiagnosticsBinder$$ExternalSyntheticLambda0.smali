.class public final synthetic Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;

.field public final synthetic blacklist f$1:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$$ExternalSyntheticLambda0;->f$0:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;

    iput-object p2, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$$ExternalSyntheticLambda0;->f$1:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$$ExternalSyntheticLambda0;->f$0:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;

    iget-object v1, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$$ExternalSyntheticLambda0;->f$1:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    invoke-static {v0, v1}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->$r8$lambda$ezy3TaRWsU_POGFYv51GED6V-cs(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V

    return-void
.end method
