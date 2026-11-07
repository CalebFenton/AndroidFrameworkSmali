.class public final synthetic Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;

.field public final synthetic blacklist f$1:Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$$ExternalSyntheticLambda2;->f$0:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;

    iput-object p2, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$$ExternalSyntheticLambda2;->f$1:Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$$ExternalSyntheticLambda2;->f$0:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;

    iget-object v1, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder$$ExternalSyntheticLambda2;->f$1:Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    invoke-static {v0, v1}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;->$r8$lambda$nArDLHbhOEth-NXaWZOndFK2ZOc(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsBinder;Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V

    return-void
.end method
