.class final Lcom/android/server/print/RemotePrintService$MyHandler;
.super Landroid/os/Handler;
.source "RemotePrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_BINDER_DIED:I = 0xc

.field public static final MSG_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x1

.field public static final MSG_DESTROY:I = 0xb

.field public static final MSG_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0x2

.field public static final MSG_ON_ALL_PRINT_JOBS_HANDLED:I = 0x8

.field public static final MSG_ON_PRINT_JOB_QUEUED:I = 0xa

.field public static final MSG_ON_REQUEST_CANCEL_PRINT_JOB:I = 0x9

.field public static final MSG_START_PRINTER_DISCOVERY:I = 0x3

.field public static final MSG_START_PRINTER_STATE_TRACKING:I = 0x6

.field public static final MSG_STOP_PRINTER_DISCOVERY:I = 0x4

.field public static final MSG_STOP_PRINTER_STATE_TRACKING:I = 0x7

.field public static final MSG_VALIDATE_PRINTERS:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/print/RemotePrintService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    #@2
    .line 617
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 616
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 623
    iget v4, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v4, :pswitch_data_0

    #@5
    .line 622
    :goto_0
    return-void

    #@6
    .line 625
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    #@8
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap2(Lcom/android/server/print/RemotePrintService;)V

    #@b
    goto :goto_0

    #@c
    .line 629
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    #@e
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap3(Lcom/android/server/print/RemotePrintService;)V

    #@11
    goto :goto_0

    #@12
    .line 633
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    check-cast v3, Ljava/util/ArrayList;

    #@16
    .line 634
    .local v3, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    #@18
    invoke-static {v4, v3}, Lcom/android/server/print/RemotePrintService;->-wrap8(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    #@1b
    goto :goto_0

    #@1c
    .line 638
    .end local v3    # "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    #@1e
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap10(Lcom/android/server/print/RemotePrintService;)V

    #@21
    goto :goto_0

    #@22
    .line 642
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@24
    check-cast v2, Ljava/util/List;

    #@26
    .line 643
    .local v2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    #@28
    invoke-static {v4, v2}, Lcom/android/server/print/RemotePrintService;->-wrap12(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    #@2b
    goto :goto_0

    #@2c
    .line 647
    .end local v2    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2e
    check-cast v1, Landroid/print/PrinterId;

    #@30
    .line 648
    .local v1, "printerId":Landroid/print/PrinterId;
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    #@32
    invoke-static {v4, v1}, Lcom/android/server/print/RemotePrintService;->-wrap9(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    #@35
    goto :goto_0

    #@36
    .line 652
    .end local v1    # "printerId":Landroid/print/PrinterId;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@38
    check-cast v1, Landroid/print/PrinterId;

    #@3a
    .line 653
    .restart local v1    # "printerId":Landroid/print/PrinterId;
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    #@3c
    invoke-static {v4, v1}, Lcom/android/server/print/RemotePrintService;->-wrap11(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    #@3f
    goto :goto_0

    #@40
    .line 657
    .end local v1    # "printerId":Landroid/print/PrinterId;
    :pswitch_7
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    #@42
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap5(Lcom/android/server/print/RemotePrintService;)V

    #@45
    goto :goto_0

    #@46
    .line 661
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@48
    check-cast v0, Landroid/print/PrintJobInfo;

    #@4a
    .line 662
    .local v0, "printJob":Landroid/print/PrintJobInfo;
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    #@4c
    invoke-static {v4, v0}, Lcom/android/server/print/RemotePrintService;->-wrap7(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    #@4f
    goto :goto_0

    #@50
    .line 666
    .end local v0    # "printJob":Landroid/print/PrintJobInfo;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@52
    check-cast v0, Landroid/print/PrintJobInfo;

    #@54
    .line 667
    .restart local v0    # "printJob":Landroid/print/PrintJobInfo;
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    #@56
    invoke-static {v4, v0}, Lcom/android/server/print/RemotePrintService;->-wrap6(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    #@59
    goto :goto_0

    #@5a
    .line 671
    .end local v0    # "printJob":Landroid/print/PrintJobInfo;
    :pswitch_a
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    #@5c
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap4(Lcom/android/server/print/RemotePrintService;)V

    #@5f
    goto :goto_0

    #@60
    .line 675
    :pswitch_b
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    #@62
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap1(Lcom/android/server/print/RemotePrintService;)V

    #@65
    goto :goto_0

    #@66
    .line 623
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
    .end packed-switch
.end method
