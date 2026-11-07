.class Landroid/printservice/PrintService$1;
.super Landroid/printservice/IPrintService$Stub;
.source "PrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/printservice/PrintService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/printservice/PrintService;


# direct methods
.method constructor blacklist <init>(Landroid/printservice/PrintService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/printservice/PrintService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 388
    iput-object p1, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    invoke-direct {p0}, Landroid/printservice/IPrintService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createPrinterDiscoverySession()V
    .registers 3

    .line 391
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->-$$Nest$fgetmHandler(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 392
    return-void
.end method

.method public blacklist destroyPrinterDiscoverySession()V
    .registers 3

    .line 396
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->-$$Nest$fgetmHandler(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 397
    return-void
.end method

.method public blacklist onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .registers 4
    .param p1, "printJobInfo"    # Landroid/print/PrintJobInfo;

    .line 448
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->-$$Nest$fgetmHandler(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 450
    return-void
.end method

.method public blacklist requestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    .registers 4
    .param p1, "printJobInfo"    # Landroid/print/PrintJobInfo;

    .line 442
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->-$$Nest$fgetmHandler(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 444
    return-void
.end method

.method public blacklist requestCustomPrinterIcon(Landroid/print/PrinterId;)V
    .registers 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 424
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->-$$Nest$fgetmHandler(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 426
    return-void
.end method

.method public blacklist setClient(Landroid/printservice/IPrintServiceClient;)V
    .registers 4
    .param p1, "client"    # Landroid/printservice/IPrintServiceClient;

    .line 436
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->-$$Nest$fgetmHandler(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 438
    return-void
.end method

.method public blacklist startPrinterDiscovery(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 401
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->-$$Nest$fgetmHandler(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 403
    return-void
.end method

.method public blacklist startPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 418
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->-$$Nest$fgetmHandler(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 420
    return-void
.end method

.method public blacklist stopPrinterDiscovery()V
    .registers 3

    .line 407
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->-$$Nest$fgetmHandler(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 408
    return-void
.end method

.method public blacklist stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 430
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->-$$Nest$fgetmHandler(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 432
    return-void
.end method

.method public blacklist validatePrinters(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 412
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    invoke-static {v0}, Landroid/printservice/PrintService;->-$$Nest$fgetmHandler(Landroid/printservice/PrintService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 414
    return-void
.end method
