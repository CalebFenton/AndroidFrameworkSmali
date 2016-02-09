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
.field public static final MSG_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x1

.field public static final MSG_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0x2

.field public static final MSG_ON_PRINTJOB_QUEUED:I = 0x8

.field public static final MSG_ON_REQUEST_CANCEL_PRINTJOB:I = 0x9

.field public static final MSG_SET_CLIENT:I = 0xa

.field public static final MSG_START_PRINTER_DISCOVERY:I = 0x3

.field public static final MSG_START_PRINTER_STATE_TRACKING:I = 0x6

.field public static final MSG_STOP_PRINTER_DISCOVERY:I = 0x4

.field public static final MSG_STOP_PRINTER_STATE_TRACKING:I = 0x7

.field public static final MSG_VALIDATE_PRINTERS:I = 0x5


# instance fields
.field final synthetic this$0:Landroid/printservice/PrintService;


# direct methods
.method public constructor <init>(Landroid/printservice/PrintService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/printservice/PrintService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 431
    iput-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@2
    .line 432
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 431
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 438
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    .line 439
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@6
    .line 557
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v7, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v8, "Unknown message: "

    #@10
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v7

    #@14
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v7

    #@18
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v7

    #@1c
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v6

    #@20
    .line 445
    :pswitch_0
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@22
    invoke-virtual {v6}, Landroid/printservice/PrintService;->onCreatePrinterDiscoverySession()Landroid/printservice/PrinterDiscoverySession;

    #@25
    move-result-object v5

    #@26
    .line 446
    .local v5, "session":Landroid/printservice/PrinterDiscoverySession;
    if-nez v5, :cond_0

    #@28
    .line 447
    new-instance v6, Ljava/lang/NullPointerException;

    #@2a
    const-string/jumbo v7, "session cannot be null"

    #@2d
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@30
    throw v6

    #@31
    .line 449
    :cond_0
    invoke-virtual {v5}, Landroid/printservice/PrinterDiscoverySession;->getId()I

    #@34
    move-result v6

    #@35
    iget-object v7, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@37
    invoke-static {v7}, Landroid/printservice/PrintService;->-get3(Landroid/printservice/PrintService;)I

    #@3a
    move-result v7

    #@3b
    if-ne v6, v7, :cond_1

    #@3d
    .line 450
    new-instance v6, Ljava/lang/IllegalStateException;

    #@3f
    const-string/jumbo v7, "cannot reuse session instances"

    #@42
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@45
    throw v6

    #@46
    .line 452
    :cond_1
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@48
    invoke-static {v6, v5}, Landroid/printservice/PrintService;->-set1(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)Landroid/printservice/PrinterDiscoverySession;

    #@4b
    .line 453
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@4d
    invoke-virtual {v5}, Landroid/printservice/PrinterDiscoverySession;->getId()I

    #@50
    move-result v7

    #@51
    invoke-static {v6, v7}, Landroid/printservice/PrintService;->-set2(Landroid/printservice/PrintService;I)I

    #@54
    .line 454
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@56
    invoke-static {v6}, Landroid/printservice/PrintService;->-get0(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    #@59
    move-result-object v6

    #@5a
    invoke-virtual {v5, v6}, Landroid/printservice/PrinterDiscoverySession;->setObserver(Landroid/printservice/IPrintServiceClient;)V

    #@5d
    .line 437
    .end local v5    # "session":Landroid/printservice/PrinterDiscoverySession;
    :cond_2
    :goto_0
    return-void

    #@5e
    .line 462
    :pswitch_1
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@60
    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    #@63
    move-result-object v6

    #@64
    if-eqz v6, :cond_2

    #@66
    .line 463
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@68
    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    #@6b
    move-result-object v6

    #@6c
    invoke-virtual {v6}, Landroid/printservice/PrinterDiscoverySession;->destroy()V

    #@6f
    .line 464
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@71
    invoke-static {v6, v7}, Landroid/printservice/PrintService;->-set1(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)Landroid/printservice/PrinterDiscoverySession;

    #@74
    goto :goto_0

    #@75
    .line 473
    :pswitch_2
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@77
    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    #@7a
    move-result-object v6

    #@7b
    if-eqz v6, :cond_2

    #@7d
    .line 474
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7f
    check-cast v4, Ljava/util/ArrayList;

    #@81
    .line 475
    .local v4, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@83
    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    #@86
    move-result-object v6

    #@87
    invoke-virtual {v6, v4}, Landroid/printservice/PrinterDiscoverySession;->startPrinterDiscovery(Ljava/util/List;)V

    #@8a
    goto :goto_0

    #@8b
    .line 484
    .end local v4    # "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_3
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@8d
    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    #@90
    move-result-object v6

    #@91
    if-eqz v6, :cond_2

    #@93
    .line 485
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@95
    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    #@98
    move-result-object v6

    #@99
    invoke-virtual {v6}, Landroid/printservice/PrinterDiscoverySession;->stopPrinterDiscovery()V

    #@9c
    goto :goto_0

    #@9d
    .line 494
    :pswitch_4
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@9f
    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    #@a2
    move-result-object v6

    #@a3
    if-eqz v6, :cond_2

    #@a5
    .line 495
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a7
    check-cast v3, Ljava/util/List;

    #@a9
    .line 496
    .local v3, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@ab
    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    #@ae
    move-result-object v6

    #@af
    invoke-virtual {v6, v3}, Landroid/printservice/PrinterDiscoverySession;->validatePrinters(Ljava/util/List;)V

    #@b2
    goto :goto_0

    #@b3
    .line 505
    .end local v3    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_5
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@b5
    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    #@b8
    move-result-object v6

    #@b9
    if-eqz v6, :cond_2

    #@bb
    .line 506
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@bd
    check-cast v2, Landroid/print/PrinterId;

    #@bf
    .line 507
    .local v2, "printerId":Landroid/print/PrinterId;
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@c1
    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    #@c4
    move-result-object v6

    #@c5
    invoke-virtual {v6, v2}, Landroid/printservice/PrinterDiscoverySession;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    #@c8
    goto :goto_0

    #@c9
    .line 516
    .end local v2    # "printerId":Landroid/print/PrinterId;
    :pswitch_6
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@cb
    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    #@ce
    move-result-object v6

    #@cf
    if-eqz v6, :cond_2

    #@d1
    .line 517
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d3
    check-cast v2, Landroid/print/PrinterId;

    #@d5
    .line 518
    .restart local v2    # "printerId":Landroid/print/PrinterId;
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@d7
    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    #@da
    move-result-object v6

    #@db
    invoke-virtual {v6, v2}, Landroid/printservice/PrinterDiscoverySession;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    #@de
    goto/16 :goto_0

    #@e0
    .line 527
    .end local v2    # "printerId":Landroid/print/PrinterId;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e2
    check-cast v1, Landroid/print/PrintJobInfo;

    #@e4
    .line 528
    .local v1, "printJobInfo":Landroid/print/PrintJobInfo;
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@e6
    new-instance v7, Landroid/printservice/PrintJob;

    #@e8
    iget-object v8, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@ea
    invoke-static {v8}, Landroid/printservice/PrintService;->-get0(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    #@ed
    move-result-object v8

    #@ee
    invoke-direct {v7, v1, v8}, Landroid/printservice/PrintJob;-><init>(Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    #@f1
    invoke-virtual {v6, v7}, Landroid/printservice/PrintService;->onRequestCancelPrintJob(Landroid/printservice/PrintJob;)V

    #@f4
    goto/16 :goto_0

    #@f6
    .line 536
    .end local v1    # "printJobInfo":Landroid/print/PrintJobInfo;
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f8
    check-cast v1, Landroid/print/PrintJobInfo;

    #@fa
    .line 540
    .restart local v1    # "printJobInfo":Landroid/print/PrintJobInfo;
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@fc
    new-instance v7, Landroid/printservice/PrintJob;

    #@fe
    iget-object v8, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@100
    invoke-static {v8}, Landroid/printservice/PrintService;->-get0(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    #@103
    move-result-object v8

    #@104
    invoke-direct {v7, v1, v8}, Landroid/printservice/PrintJob;-><init>(Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    #@107
    invoke-virtual {v6, v7}, Landroid/printservice/PrintService;->onPrintJobQueued(Landroid/printservice/PrintJob;)V

    #@10a
    goto/16 :goto_0

    #@10c
    .line 548
    .end local v1    # "printJobInfo":Landroid/print/PrintJobInfo;
    :pswitch_9
    iget-object v7, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@10e
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@110
    check-cast v6, Landroid/printservice/IPrintServiceClient;

    #@112
    invoke-static {v7, v6}, Landroid/printservice/PrintService;->-set0(Landroid/printservice/PrintService;Landroid/printservice/IPrintServiceClient;)Landroid/printservice/IPrintServiceClient;

    #@115
    .line 549
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@117
    invoke-static {v6}, Landroid/printservice/PrintService;->-get0(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    #@11a
    move-result-object v6

    #@11b
    if-eqz v6, :cond_3

    #@11d
    .line 550
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@11f
    invoke-virtual {v6}, Landroid/printservice/PrintService;->onConnected()V

    #@122
    goto/16 :goto_0

    #@124
    .line 552
    :cond_3
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    #@126
    invoke-virtual {v6}, Landroid/printservice/PrintService;->onDisconnected()V

    #@129
    goto/16 :goto_0

    #@12b
    .line 439
    nop

    #@12c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method
