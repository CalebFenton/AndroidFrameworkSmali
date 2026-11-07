.class final Landroid/printservice/PrintService$ServiceHandler;
.super Landroid/os/Handler;
.source "PrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/PrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final greylist-max-o MSG_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x1

.field public static final greylist-max-o MSG_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0x2

.field public static final greylist-max-o MSG_ON_PRINTJOB_QUEUED:I = 0x9

.field public static final greylist-max-o MSG_ON_REQUEST_CANCEL_PRINTJOB:I = 0xa

.field public static final greylist-max-o MSG_REQUEST_CUSTOM_PRINTER_ICON:I = 0x7

.field public static final greylist-max-o MSG_SET_CLIENT:I = 0xb

.field public static final greylist-max-o MSG_START_PRINTER_DISCOVERY:I = 0x3

.field public static final greylist-max-o MSG_START_PRINTER_STATE_TRACKING:I = 0x6

.field public static final greylist-max-o MSG_STOP_PRINTER_DISCOVERY:I = 0x4

.field public static final greylist-max-o MSG_STOP_PRINTER_STATE_TRACKING:I = 0x8

.field public static final greylist-max-o MSG_VALIDATE_PRINTERS:I = 0x5


# instance fields
.field final synthetic blacklist this$0:Landroid/printservice/PrintService;


# direct methods
.method public constructor blacklist <init>(Landroid/printservice/PrintService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 467
    iput-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    .line 468
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 469
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .line 474
    iget v0, p1, Landroid/os/Message;->what:I

    .line 475
    .local v0, "action":I
    packed-switch v0, :pswitch_data_146

    .line 604
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 595
    :pswitch_1e
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/printservice/IPrintServiceClient;

    invoke-static {v1, v2}, Landroid/printservice/PrintService;->-$$Nest$fputmClient(Landroid/printservice/PrintService;Landroid/printservice/IPrintServiceClient;)V

    .line 596
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v1}, Landroid/printservice/PrintService;->-$$Nest$fgetmClient(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 597
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {v1}, Landroid/printservice/PrintService;->onConnected()V

    goto/16 :goto_134

    .line 599
    :cond_36
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {v1}, Landroid/printservice/PrintService;->onDisconnected()V

    .line 601
    goto/16 :goto_134

    .line 574
    :pswitch_3d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintJobInfo;

    .line 575
    .local v1, "printJobInfo":Landroid/print/PrintJobInfo;
    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    new-instance v3, Landroid/printservice/PrintJob;

    iget-object v4, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    iget-object v5, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v5}, Landroid/printservice/PrintService;->-$$Nest$fgetmClient(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object v5

    invoke-direct {v3, v4, v1, v5}, Landroid/printservice/PrintJob;-><init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    invoke-virtual {v2, v3}, Landroid/printservice/PrintService;->onRequestCancelPrintJob(Landroid/printservice/PrintJob;)V

    .line 576
    .end local v1    # "printJobInfo":Landroid/print/PrintJobInfo;
    goto/16 :goto_134

    .line 583
    :pswitch_55
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintJobInfo;

    .line 587
    .restart local v1    # "printJobInfo":Landroid/print/PrintJobInfo;
    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    new-instance v3, Landroid/printservice/PrintJob;

    iget-object v4, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    iget-object v5, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v5}, Landroid/printservice/PrintService;->-$$Nest$fgetmClient(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object v5

    invoke-direct {v3, v4, v1, v5}, Landroid/printservice/PrintJob;-><init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    invoke-virtual {v2, v3}, Landroid/printservice/PrintService;->onPrintJobQueued(Landroid/printservice/PrintJob;)V

    .line 588
    .end local v1    # "printJobInfo":Landroid/print/PrintJobInfo;
    goto/16 :goto_134

    .line 563
    :pswitch_6d
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v1}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    if-eqz v1, :cond_134

    .line 564
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrinterId;

    .line 565
    .local v1, "printerId":Landroid/print/PrinterId;
    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v2}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/printservice/PrinterDiscoverySession;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 566
    .end local v1    # "printerId":Landroid/print/PrinterId;
    goto/16 :goto_134

    .line 552
    :pswitch_84
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v1}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    if-eqz v1, :cond_134

    .line 553
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrinterId;

    .line 554
    .restart local v1    # "printerId":Landroid/print/PrinterId;
    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v2}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/printservice/PrinterDiscoverySession;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V

    .line 555
    .end local v1    # "printerId":Landroid/print/PrinterId;
    goto/16 :goto_134

    .line 541
    :pswitch_9b
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v1}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    if-eqz v1, :cond_134

    .line 542
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrinterId;

    .line 543
    .restart local v1    # "printerId":Landroid/print/PrinterId;
    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v2}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/printservice/PrinterDiscoverySession;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 544
    .end local v1    # "printerId":Landroid/print/PrinterId;
    goto/16 :goto_134

    .line 530
    :pswitch_b2
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v1}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    if-eqz v1, :cond_134

    .line 531
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 532
    .local v1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v2}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/printservice/PrinterDiscoverySession;->validatePrinters(Ljava/util/List;)V

    .line 533
    .end local v1    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    goto :goto_134

    .line 520
    :pswitch_c8
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v1}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    if-eqz v1, :cond_134

    .line 521
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v1}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/printservice/PrinterDiscoverySession;->stopPrinterDiscovery()V

    goto :goto_134

    .line 509
    :pswitch_da
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v1}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    if-eqz v1, :cond_134

    .line 510
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 511
    .local v1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v2}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/printservice/PrinterDiscoverySession;->startPrinterDiscovery(Ljava/util/List;)V

    .line 512
    .end local v1    # "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    goto :goto_134

    .line 498
    :pswitch_f0
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v1}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    if-eqz v1, :cond_134

    .line 499
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v1}, Landroid/printservice/PrintService;->-$$Nest$fgetmDiscoverySession(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/printservice/PrinterDiscoverySession;->destroy()V

    .line 500
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/printservice/PrintService;->-$$Nest$fputmDiscoverySession(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)V

    goto :goto_134

    .line 481
    :pswitch_108
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {v1}, Landroid/printservice/PrintService;->onCreatePrinterDiscoverySession()Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    .line 482
    .local v1, "session":Landroid/printservice/PrinterDiscoverySession;
    if-eqz v1, :cond_13d

    .line 485
    invoke-virtual {v1}, Landroid/printservice/PrinterDiscoverySession;->getId()I

    move-result v2

    iget-object v3, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v3}, Landroid/printservice/PrintService;->-$$Nest$fgetmLastSessionId(Landroid/printservice/PrintService;)I

    move-result v3

    if-eq v2, v3, :cond_135

    .line 488
    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v2, v1}, Landroid/printservice/PrintService;->-$$Nest$fputmDiscoverySession(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)V

    .line 489
    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {v1}, Landroid/printservice/PrinterDiscoverySession;->getId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/printservice/PrintService;->-$$Nest$fputmLastSessionId(Landroid/printservice/PrintService;I)V

    .line 490
    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v2}, Landroid/printservice/PrintService;->-$$Nest$fgetmClient(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/printservice/PrinterDiscoverySession;->setObserver(Landroid/printservice/IPrintServiceClient;)V

    .line 491
    .end local v1    # "session":Landroid/printservice/PrinterDiscoverySession;
    nop

    .line 607
    :cond_134
    :goto_134
    return-void

    .line 486
    .restart local v1    # "session":Landroid/printservice/PrinterDiscoverySession;
    :cond_135
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cannot reuse session instances"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 483
    :cond_13d
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "session cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_146
    .packed-switch 0x1
        :pswitch_108
        :pswitch_f0
        :pswitch_da
        :pswitch_c8
        :pswitch_b2
        :pswitch_9b
        :pswitch_84
        :pswitch_6d
        :pswitch_55
        :pswitch_3d
        :pswitch_1e
    .end packed-switch
.end method
