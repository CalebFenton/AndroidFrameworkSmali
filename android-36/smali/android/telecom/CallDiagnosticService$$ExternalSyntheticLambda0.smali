.class public final synthetic Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telecom/CallDiagnosticService;

.field public final synthetic blacklist f$1:Landroid/telecom/BluetoothCallQualityReport;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/BluetoothCallQualityReport;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda0;->f$0:Landroid/telecom/CallDiagnosticService;

    iput-object p2, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda0;->f$1:Landroid/telecom/BluetoothCallQualityReport;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda0;->f$0:Landroid/telecom/CallDiagnosticService;

    iget-object v1, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda0;->f$1:Landroid/telecom/BluetoothCallQualityReport;

    invoke-static {v0, v1}, Landroid/telecom/CallDiagnosticService;->$r8$lambda$3vbqIExCyIhISmunk1D_iCb7UAE(Landroid/telecom/CallDiagnosticService;Landroid/telecom/BluetoothCallQualityReport;)V

    return-void
.end method
