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
.field final synthetic this$0:Landroid/printservice/PrintService;


# direct methods
.method constructor <init>(Landroid/printservice/PrintService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/printservice/PrintService;

    #@0
    .prologue
    .line 360
    iput-object p1, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    #@2
    invoke-direct {p0}, Landroid/printservice/IPrintService$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public createPrinterDiscoverySession()V
    .locals 2

    #@0
    .prologue
    .line 363
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    #@2
    invoke-static {v0}, Landroid/printservice/PrintService;->-get2(Landroid/printservice/PrintService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@a
    .line 362
    return-void
.end method

.method public destroyPrinterDiscoverySession()V
    .locals 2

    #@0
    .prologue
    .line 368
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    #@2
    invoke-static {v0}, Landroid/printservice/PrintService;->-get2(Landroid/printservice/PrintService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@a
    .line 367
    return-void
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 2
    .param p1, "printJobInfo"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 413
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    #@2
    invoke-static {v0}, Landroid/printservice/PrintService;->-get2(Landroid/printservice/PrintService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0x8

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 412
    return-void
.end method

.method public requestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    .locals 2
    .param p1, "printJobInfo"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 407
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    #@2
    invoke-static {v0}, Landroid/printservice/PrintService;->-get2(Landroid/printservice/PrintService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0x9

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 406
    return-void
.end method

.method public setClient(Landroid/printservice/IPrintServiceClient;)V
    .locals 2
    .param p1, "client"    # Landroid/printservice/IPrintServiceClient;

    #@0
    .prologue
    .line 401
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    #@2
    invoke-static {v0}, Landroid/printservice/PrintService;->-get2(Landroid/printservice/PrintService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0xa

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 400
    return-void
.end method

.method public startPrinterDiscovery(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 372
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    #@2
    invoke-static {v0}, Landroid/printservice/PrintService;->-get2(Landroid/printservice/PrintService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 371
    return-void
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 389
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    #@2
    invoke-static {v0}, Landroid/printservice/PrintService;->-get2(Landroid/printservice/PrintService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x6

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 388
    return-void
.end method

.method public stopPrinterDiscovery()V
    .locals 2

    #@0
    .prologue
    .line 378
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    #@2
    invoke-static {v0}, Landroid/printservice/PrintService;->-get2(Landroid/printservice/PrintService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x4

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@a
    .line 377
    return-void
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 395
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    #@2
    invoke-static {v0}, Landroid/printservice/PrintService;->-get2(Landroid/printservice/PrintService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x7

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 394
    return-void
.end method

.method public validatePrinters(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 383
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Landroid/printservice/PrintService$1;->this$0:Landroid/printservice/PrintService;

    #@2
    invoke-static {v0}, Landroid/printservice/PrintService;->-get2(Landroid/printservice/PrintService;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x5

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 382
    return-void
.end method
