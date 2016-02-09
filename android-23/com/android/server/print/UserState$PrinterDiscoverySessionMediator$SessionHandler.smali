.class final Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;
.super Landroid/os/Handler;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionHandler"
.end annotation


# static fields
.field public static final MSG_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x5

.field public static final MSG_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0x6

.field public static final MSG_DESTROY_SERVICE:I = 0x10

.field public static final MSG_DISPATCH_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x9

.field public static final MSG_DISPATCH_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0xa

.field public static final MSG_DISPATCH_PRINTERS_ADDED:I = 0x3

.field public static final MSG_DISPATCH_PRINTERS_REMOVED:I = 0x4

.field public static final MSG_DISPATCH_START_PRINTER_DISCOVERY:I = 0xb

.field public static final MSG_DISPATCH_STOP_PRINTER_DISCOVERY:I = 0xc

.field public static final MSG_PRINTERS_ADDED:I = 0x1

.field public static final MSG_PRINTERS_REMOVED:I = 0x2

.field public static final MSG_START_PRINTER_DISCOVERY:I = 0x7

.field public static final MSG_START_PRINTER_STATE_TRACKING:I = 0xe

.field public static final MSG_STOP_PRINTER_DISCOVERY:I = 0x8

.field public static final MSG_STOP_PRINTER_STATE_TRACKING:I = 0xf

.field public static final MSG_VALIDATE_PRINTERS:I = 0xd


# instance fields
.field final synthetic this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$1"    # Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1456
    iput-object p1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@2
    .line 1457
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 1456
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1463
    iget v8, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v8, :pswitch_data_0

    #@5
    .line 1462
    :goto_0
    return-void

    #@6
    .line 1465
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@a
    .line 1466
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@c
    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    #@e
    .line 1467
    .local v2, "observer":Landroid/print/IPrinterDiscoveryObserver;
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@10
    check-cast v0, Ljava/util/List;

    #@12
    .line 1468
    .local v0, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@15
    .line 1469
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@17
    invoke-static {v8, v2, v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap6(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    #@1a
    goto :goto_0

    #@1b
    .line 1473
    .end local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@1f
    .line 1474
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@21
    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    #@23
    .line 1475
    .restart local v2    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@25
    check-cast v5, Ljava/util/List;

    #@27
    .line 1476
    .local v5, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@2a
    .line 1477
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@2c
    invoke-static {v8, v2, v5}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap7(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    #@2f
    .line 1481
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    .end local v5    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@31
    check-cast v0, Ljava/util/List;

    #@33
    .line 1482
    .restart local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@35
    invoke-static {v8, v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap2(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    #@38
    goto :goto_0

    #@39
    .line 1486
    .end local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    :pswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3b
    check-cast v5, Ljava/util/List;

    #@3d
    .line 1487
    .restart local v5    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@3f
    invoke-static {v8, v5}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap3(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    #@42
    goto :goto_0

    #@43
    .line 1491
    .end local v5    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@45
    check-cast v6, Lcom/android/server/print/RemotePrintService;

    #@47
    .line 1492
    .local v6, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->createPrinterDiscoverySession()V

    #@4a
    goto :goto_0

    #@4b
    .line 1496
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4d
    check-cast v6, Lcom/android/server/print/RemotePrintService;

    #@4f
    .line 1497
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->destroyPrinterDiscoverySession()V

    #@52
    goto :goto_0

    #@53
    .line 1501
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@55
    check-cast v6, Lcom/android/server/print/RemotePrintService;

    #@57
    .line 1502
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    const/4 v8, 0x0

    #@58
    invoke-virtual {v6, v8}, Lcom/android/server/print/RemotePrintService;->startPrinterDiscovery(Ljava/util/List;)V

    #@5b
    goto :goto_0

    #@5c
    .line 1506
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_7
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5e
    check-cast v6, Lcom/android/server/print/RemotePrintService;

    #@60
    .line 1507
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->stopPrinterDiscovery()V

    #@63
    goto :goto_0

    #@64
    .line 1511
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_8
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@66
    check-cast v7, Ljava/util/List;

    #@68
    .line 1512
    .local v7, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@6a
    invoke-static {v8, v7}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap0(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    #@6d
    goto :goto_0

    #@6e
    .line 1516
    .end local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    :pswitch_9
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@70
    check-cast v7, Ljava/util/List;

    #@72
    .line 1517
    .restart local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@74
    invoke-static {v8, v7}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap1(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    #@77
    goto :goto_0

    #@78
    .line 1521
    .end local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7a
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@7c
    .line 1522
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@7e
    check-cast v7, Ljava/util/List;

    #@80
    .line 1523
    .restart local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@82
    check-cast v4, Ljava/util/List;

    #@84
    .line 1524
    .local v4, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@87
    .line 1525
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@89
    invoke-static {v8, v7, v4}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap4(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;Ljava/util/List;)V

    #@8c
    goto/16 :goto_0

    #@8e
    .line 1529
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    :pswitch_b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@90
    check-cast v7, Ljava/util/List;

    #@92
    .line 1530
    .restart local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@94
    invoke-static {v8, v7}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap5(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V

    #@97
    goto/16 :goto_0

    #@99
    .line 1534
    .end local v7    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9b
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@9d
    .line 1535
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@9f
    check-cast v6, Lcom/android/server/print/RemotePrintService;

    #@a1
    .line 1536
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@a3
    check-cast v4, Ljava/util/List;

    #@a5
    .line 1537
    .restart local v4    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@a8
    .line 1538
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@aa
    invoke-static {v8, v6, v4}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap10(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    #@ad
    goto/16 :goto_0

    #@af
    .line 1542
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b1
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@b3
    .line 1543
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@b5
    check-cast v6, Lcom/android/server/print/RemotePrintService;

    #@b7
    .line 1544
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@b9
    check-cast v3, Landroid/print/PrinterId;

    #@bb
    .line 1545
    .local v3, "printerId":Landroid/print/PrinterId;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@be
    .line 1546
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@c0
    invoke-static {v8, v6, v3}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap8(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    #@c3
    goto/16 :goto_0

    #@c5
    .line 1550
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "printerId":Landroid/print/PrinterId;
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c7
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@c9
    .line 1551
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@cb
    check-cast v6, Lcom/android/server/print/RemotePrintService;

    #@cd
    .line 1552
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@cf
    check-cast v3, Landroid/print/PrinterId;

    #@d1
    .line 1553
    .restart local v3    # "printerId":Landroid/print/PrinterId;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@d4
    .line 1554
    iget-object v8, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;->this$1:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    #@d6
    invoke-static {v8, v6, v3}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->-wrap9(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    #@d9
    goto/16 :goto_0

    #@db
    .line 1558
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "printerId":Landroid/print/PrinterId;
    .end local v6    # "service":Lcom/android/server/print/RemotePrintService;
    :pswitch_f
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@dd
    check-cast v6, Lcom/android/server/print/RemotePrintService;

    #@df
    .line 1559
    .restart local v6    # "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v6}, Lcom/android/server/print/RemotePrintService;->destroy()V

    #@e2
    goto/16 :goto_0

    #@e4
    .line 1463
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
