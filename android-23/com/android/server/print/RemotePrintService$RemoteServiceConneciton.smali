.class Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConneciton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method private constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/print/RemotePrintService;

    #@0
    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/RemotePrintService;Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/print/RemotePrintService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;-><init>(Lcom/android/server/print/RemotePrintService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 548
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@3
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get4(Lcom/android/server/print/RemotePrintService;)Z

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_2

    #@9
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@b
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get0(Lcom/android/server/print/RemotePrintService;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_2

    #@11
    .line 552
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@13
    invoke-static {v4, v6}, Lcom/android/server/print/RemotePrintService;->-set0(Lcom/android/server/print/RemotePrintService;Z)Z

    #@16
    .line 553
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@18
    invoke-static {p2}, Landroid/printservice/IPrintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintService;

    #@1b
    move-result-object v5

    #@1c
    invoke-static {v4, v5}, Lcom/android/server/print/RemotePrintService;->-set1(Lcom/android/server/print/RemotePrintService;Landroid/printservice/IPrintService;)Landroid/printservice/IPrintService;

    #@1f
    .line 555
    :try_start_0
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@21
    const/4 v5, 0x0

    #@22
    invoke-interface {p2, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 561
    :try_start_1
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@27
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get9(Lcom/android/server/print/RemotePrintService;)Landroid/printservice/IPrintService;

    #@2a
    move-result-object v4

    #@2b
    iget-object v5, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@2d
    invoke-static {v5}, Lcom/android/server/print/RemotePrintService;->-get10(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    #@30
    move-result-object v5

    #@31
    invoke-interface {v4, v5}, Landroid/printservice/IPrintService;->setClient(Landroid/printservice/IPrintServiceClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@34
    .line 568
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@36
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get12(Lcom/android/server/print/RemotePrintService;)Z

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_0

    #@3c
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@3e
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get7(Lcom/android/server/print/RemotePrintService;)Z

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_0

    #@44
    .line 569
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@46
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap2(Lcom/android/server/print/RemotePrintService;)V

    #@49
    .line 572
    :cond_0
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@4b
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get12(Lcom/android/server/print/RemotePrintService;)Z

    #@4e
    move-result v4

    #@4f
    if-eqz v4, :cond_1

    #@51
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@53
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get5(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    #@56
    move-result-object v4

    #@57
    if-eqz v4, :cond_1

    #@59
    .line 573
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@5b
    iget-object v5, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@5d
    invoke-static {v5}, Lcom/android/server/print/RemotePrintService;->-get5(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    #@60
    move-result-object v5

    #@61
    invoke-static {v4, v5}, Lcom/android/server/print/RemotePrintService;->-wrap8(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    #@64
    .line 576
    :cond_1
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@66
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get12(Lcom/android/server/print/RemotePrintService;)Z

    #@69
    move-result v4

    #@6a
    if-eqz v4, :cond_3

    #@6c
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@6e
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get14(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    #@71
    move-result-object v4

    #@72
    if-eqz v4, :cond_3

    #@74
    .line 577
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@76
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get14(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    #@79
    move-result-object v4

    #@7a
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@7d
    move-result v3

    #@7e
    .line 578
    .local v3, "trackedPrinterCount":I
    const/4 v0, 0x0

    #@7f
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    #@81
    .line 579
    iget-object v5, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@83
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@85
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get14(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    #@88
    move-result-object v4

    #@89
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@8c
    move-result-object v4

    #@8d
    check-cast v4, Landroid/print/PrinterId;

    #@8f
    invoke-static {v5, v4}, Lcom/android/server/print/RemotePrintService;->-wrap9(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    #@92
    .line 578
    add-int/lit8 v0, v0, 0x1

    #@94
    goto :goto_0

    #@95
    .line 549
    .end local v0    # "i":I
    .end local v3    # "trackedPrinterCount":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@97
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get3(Lcom/android/server/print/RemotePrintService;)Landroid/content/Context;

    #@9a
    move-result-object v4

    #@9b
    iget-object v5, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@9d
    invoke-static {v5}, Lcom/android/server/print/RemotePrintService;->-get11(Lcom/android/server/print/RemotePrintService;)Landroid/content/ServiceConnection;

    #@a0
    move-result-object v5

    #@a1
    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@a4
    .line 550
    return-void

    #@a5
    .line 556
    :catch_0
    move-exception v2

    #@a6
    .line 557
    .local v2, "re":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@a8
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap1(Lcom/android/server/print/RemotePrintService;)V

    #@ab
    .line 558
    return-void

    #@ac
    .line 562
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@ad
    .line 563
    .restart local v2    # "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "RemotePrintService"

    #@b0
    new-instance v5, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v6, "Error setting client for: "

    #@b8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v5

    #@bc
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v5

    #@c0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v5

    #@c4
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c7
    .line 564
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@c9
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap1(Lcom/android/server/print/RemotePrintService;)V

    #@cc
    .line 565
    return-void

    #@cd
    .line 583
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@cf
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get8(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    #@d2
    move-result-object v4

    #@d3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@d6
    move-result v4

    #@d7
    if-nez v4, :cond_4

    #@d9
    .line 584
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@db
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get8(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    #@de
    move-result-object v4

    #@df
    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@e2
    move-result-object v1

    #@e3
    check-cast v1, Ljava/lang/Runnable;

    #@e5
    .line 585
    .local v1, "pendingCommand":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    #@e8
    goto :goto_1

    #@e9
    .line 590
    .end local v1    # "pendingCommand":Ljava/lang/Runnable;
    :cond_4
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@eb
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get7(Lcom/android/server/print/RemotePrintService;)Z

    #@ee
    move-result v4

    #@ef
    if-nez v4, :cond_5

    #@f1
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@f3
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get6(Lcom/android/server/print/RemotePrintService;)Z

    #@f6
    move-result v4

    #@f7
    if-eqz v4, :cond_6

    #@f9
    .line 593
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@fb
    invoke-static {v4, v6}, Lcom/android/server/print/RemotePrintService;->-set2(Lcom/android/server/print/RemotePrintService;Z)Z

    #@fe
    .line 547
    return-void

    #@ff
    .line 591
    :cond_6
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@101
    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap0(Lcom/android/server/print/RemotePrintService;)V

    #@104
    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v0, v1}, Lcom/android/server/print/RemotePrintService;->-set0(Lcom/android/server/print/RemotePrintService;Z)Z

    #@6
    .line 597
    return-void
.end method
