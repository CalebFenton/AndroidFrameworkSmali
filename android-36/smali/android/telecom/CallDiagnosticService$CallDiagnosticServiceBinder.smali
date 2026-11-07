.class final Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;
.super Lcom/android/internal/telecom/ICallDiagnosticService$Stub;
.source "CallDiagnosticService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallDiagnosticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallDiagnosticServiceBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/CallDiagnosticService;


# direct methods
.method public static synthetic blacklist $r8$lambda$0efFyxs64PWs5U340Yu28FDt02o(Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;Landroid/telecom/CallAudioState;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->lambda$updateCallAudioState$0(Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telecom/CallDiagnosticService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-direct {p0}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnosticService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;-><init>(Landroid/telecom/CallDiagnosticService;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateCallAudioState$0(Landroid/telecom/CallAudioState;)V
    .registers 3
    .param p1, "callAudioState"    # Landroid/telecom/CallAudioState;

    .line 97
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-virtual {v0, p1}, Landroid/telecom/CallDiagnosticService;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    return-void
.end method


# virtual methods
.method public blacklist callQualityChanged(Ljava/lang/String;Landroid/telephony/CallQuality;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callQuality"    # Landroid/telephony/CallQuality;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1, p2}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleCallQualityChanged(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;Landroid/telephony/CallQuality;)V

    .line 121
    return-void
.end method

.method public blacklist initializeDiagnosticCall(Landroid/telecom/ParcelableCall;)V
    .registers 3
    .param p1, "call"    # Landroid/telecom/ParcelableCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleCallAdded(Landroid/telecom/CallDiagnosticService;Landroid/telecom/ParcelableCall;)V

    .line 83
    return-void
.end method

.method public blacklist notifyCallDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1, p2}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleCallDisconnected(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    .line 115
    return-void
.end method

.method public blacklist receiveBluetoothCallQualityReport(Landroid/telecom/BluetoothCallQualityReport;)V
    .registers 3
    .param p1, "qualityReport"    # Landroid/telecom/BluetoothCallQualityReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleBluetoothCallQualityReport(Landroid/telecom/CallDiagnosticService;Landroid/telecom/BluetoothCallQualityReport;)V

    .line 109
    return-void
.end method

.method public blacklist receiveDeviceToDeviceMessage(Ljava/lang/String;II)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "message"    # I
    .param p3, "value"    # I

    .line 102
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1, p2, p3}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleReceivedD2DMessage(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;II)V

    .line 103
    return-void
.end method

.method public blacklist removeDiagnosticCall(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleCallRemoved(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public blacklist setAdapter(Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V
    .registers 3
    .param p1, "adapter"    # Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleSetAdapter(Landroid/telecom/CallDiagnosticService;Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V

    .line 78
    return-void
.end method

.method public blacklist updateCall(Landroid/telecom/ParcelableCall;)V
    .registers 3
    .param p1, "call"    # Landroid/telecom/ParcelableCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-static {v0, p1}, Landroid/telecom/CallDiagnosticService;->-$$Nest$mhandleCallUpdated(Landroid/telecom/CallDiagnosticService;Landroid/telecom/ParcelableCall;)V

    .line 88
    return-void
.end method

.method public blacklist updateCallAudioState(Landroid/telecom/CallAudioState;)V
    .registers 4
    .param p1, "callAudioState"    # Landroid/telecom/CallAudioState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->this$0:Landroid/telecom/CallDiagnosticService;

    invoke-virtual {v0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;Landroid/telecom/CallAudioState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method
