.class Landroid/telecom/CallDiagnosticService$1;
.super Ljava/lang/Object;
.source "CallDiagnosticService.java"

# interfaces
.implements Landroid/telecom/CallDiagnostics$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallDiagnosticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/CallDiagnosticService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/CallDiagnosticService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telecom/CallDiagnosticService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 128
    iput-object p1, p0, Landroid/telecom/CallDiagnosticService$1;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onClearDiagnosticMessage(Landroid/telecom/CallDiagnostics;I)V
    .registers 4
    .param p1, "callDiagnostics"    # Landroid/telecom/CallDiagnostics;
    .param p2, "messageId"    # I

    .line 146
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$1;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1, p2}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleClearDiagnosticMessage(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;I)V

    .line 147
    return-void
.end method

.method public blacklist onDisplayDiagnosticMessage(Landroid/telecom/CallDiagnostics;ILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "callDiagnostics"    # Landroid/telecom/CallDiagnostics;
    .param p2, "messageId"    # I
    .param p3, "message"    # Ljava/lang/CharSequence;

    .line 140
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$1;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1, p2, p3}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleDisplayDiagnosticMessage(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;ILjava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method public blacklist onSendDeviceToDeviceMessage(Landroid/telecom/CallDiagnostics;II)V
    .registers 5
    .param p1, "callDiagnostics"    # Landroid/telecom/CallDiagnostics;
    .param p2, "message"    # I
    .param p3, "value"    # I

    .line 133
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$1;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1, p2, p3}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleSendDeviceToDeviceMessage(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;II)V

    .line 134
    return-void
.end method
