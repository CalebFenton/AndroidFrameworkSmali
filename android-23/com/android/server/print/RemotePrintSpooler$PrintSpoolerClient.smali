.class final Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;
.super Landroid/print/IPrintSpoolerClient$Stub;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintSpoolerClient"
.end annotation


# instance fields
.field private final mWeakSpooler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/print/RemotePrintSpooler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler;)V
    .locals 1
    .param p1, "spooler"    # Lcom/android/server/print/RemotePrintSpooler;

    #@0
    .prologue
    .line 580
    invoke-direct {p0}, Landroid/print/IPrintSpoolerClient$Stub;-><init>()V

    #@3
    .line 581
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    #@a
    .line 580
    return-void
.end method


# virtual methods
.method public onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "printService"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 599
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Lcom/android/server/print/RemotePrintSpooler;

    #@8
    .line 600
    .local v2, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v2, :cond_0

    #@a
    .line 601
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@d
    move-result-wide v0

    #@e
    .line 603
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintSpooler;->-get0(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    #@11
    move-result-object v3

    #@12
    invoke-interface {v3, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 605
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 598
    .end local v0    # "identity":J
    :cond_0
    return-void

    #@19
    .line 604
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    #@1a
    .line 605
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 604
    throw v3
.end method

.method public onAllPrintJobsHandled()V
    .locals 4

    #@0
    .prologue
    .line 612
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Lcom/android/server/print/RemotePrintSpooler;

    #@8
    .line 613
    .local v2, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v2, :cond_0

    #@a
    .line 614
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@d
    move-result-wide v0

    #@e
    .line 616
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintSpooler;->-wrap1(Lcom/android/server/print/RemotePrintSpooler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 618
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14
    .line 611
    .end local v0    # "identity":J
    :cond_0
    return-void

    #@15
    .line 617
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    #@16
    .line 618
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 617
    throw v3
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 4
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 586
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Lcom/android/server/print/RemotePrintSpooler;

    #@8
    .line 587
    .local v2, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v2, :cond_0

    #@a
    .line 588
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@d
    move-result-wide v0

    #@e
    .line 590
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintSpooler;->-get0(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    #@11
    move-result-object v3

    #@12
    invoke-interface {v3, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 592
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 585
    .end local v0    # "identity":J
    :cond_0
    return-void

    #@19
    .line 591
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    #@1a
    .line 592
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 591
    throw v3
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .locals 4
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 625
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Lcom/android/server/print/RemotePrintSpooler;

    #@8
    .line 626
    .local v2, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v2, :cond_0

    #@a
    .line 627
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@d
    move-result-wide v0

    #@e
    .line 629
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2, p1}, Lcom/android/server/print/RemotePrintSpooler;->-wrap2(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/PrintJobInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 631
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14
    .line 624
    .end local v0    # "identity":J
    :cond_0
    return-void

    #@15
    .line 630
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    #@16
    .line 631
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 630
    throw v3
.end method
