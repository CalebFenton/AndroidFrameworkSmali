.class Lcom/android/internal/telephony/NetworkScanRequestTracker$1;
.super Landroid/os/Handler;
.source "NetworkScanRequestTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkScanRequestTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received Event :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanRequestTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_bc

    return-void

    .line 121
    :pswitch_20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 122
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmScheduler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object p0

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {p0, v0, v2, v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$mdeleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    .line 126
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->setNetworkScanStarted(Z)V

    return-void

    .line 113
    :pswitch_3d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 114
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmScheduler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$minterruptScanDone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V

    .line 115
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->setNetworkScanStarted(Z)V

    return-void

    .line 109
    :pswitch_56
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmScheduler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$mdoInterruptScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;I)V

    return-void

    .line 103
    :pswitch_62
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 104
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmScheduler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$mstopScanDone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V

    .line 105
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->setNetworkScanStarted(Z)V

    return-void

    .line 99
    :pswitch_7b
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmScheduler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$mdoStopScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;I)V

    return-void

    .line 95
    :pswitch_87
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmScheduler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$mreceiveResult(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V

    return-void

    .line 89
    :pswitch_95
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 90
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmScheduler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$mstartScanDone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V

    .line 91
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/Phone;->setNetworkScanStarted(Z)V

    return-void

    .line 85
    :pswitch_ae
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmScheduler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$mdoStartScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)V

    return-void

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_ae
        :pswitch_95
        :pswitch_87
        :pswitch_7b
        :pswitch_62
        :pswitch_56
        :pswitch_3d
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method
