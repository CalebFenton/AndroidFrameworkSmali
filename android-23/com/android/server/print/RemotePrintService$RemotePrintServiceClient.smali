.class final Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;
.super Landroid/printservice/IPrintServiceClient$Stub;
.source "RemotePrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemotePrintServiceClient"
.end annotation


# instance fields
.field private final mWeakService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    #@0
    .prologue
    .line 684
    invoke-direct {p0}, Landroid/printservice/IPrintServiceClient$Stub;-><init>()V

    #@3
    .line 685
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    #@a
    .line 684
    return-void
.end method

.method private throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V
    .locals 3
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .param p2, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 810
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 812
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Invalid printer id: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 811
    :cond_1
    invoke-virtual {p2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_0

    #@2c
    .line 809
    return-void
.end method

.method private throwIfPrinterIdsForPrinterInfoTampered(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 4
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 793
    .local p2, "printerInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@3
    move-result v2

    #@4
    .line 794
    .local v2, "printerInfoCount":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@7
    .line 795
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    check-cast v3, Landroid/print/PrinterInfo;

    #@d
    invoke-virtual {v3}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    #@10
    move-result-object v1

    #@11
    .line 796
    .local v1, "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p1, v1}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V

    #@14
    .line 794
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 792
    .end local v1    # "printerId":Landroid/print/PrinterId;
    :cond_0
    return-void
.end method

.method private throwIfPrinterIdsTampered(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 3
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 802
    .local p2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@3
    move-result v2

    #@4
    .line 803
    .local v2, "printerIdCount":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@7
    .line 804
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/print/PrinterId;

    #@d
    .line 805
    .local v1, "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p1, v1}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V

    #@10
    .line 803
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 801
    .end local v1    # "printerId":Landroid/print/PrinterId;
    :cond_0
    return-void
.end method


# virtual methods
.method public getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 705
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    #@3
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Lcom/android/server/print/RemotePrintService;

    #@9
    .line 706
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_0

    #@b
    .line 707
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 709
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-get13(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    #@12
    move-result-object v3

    #@13
    .line 710
    const/4 v4, -0x2

    #@14
    .line 709
    invoke-virtual {v3, p1, v4}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result-object v3

    #@18
    .line 712
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 709
    return-object v3

    #@1c
    .line 711
    :catchall_0
    move-exception v3

    #@1d
    .line 712
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 711
    throw v3

    #@21
    .line 715
    .end local v0    # "identity":J
    :cond_0
    return-object v4
.end method

.method public getPrintJobInfos()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 690
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    #@3
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Lcom/android/server/print/RemotePrintService;

    #@9
    .line 691
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_0

    #@b
    .line 692
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@e
    move-result-wide v0

    #@f
    .line 694
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-get13(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    #@12
    move-result-object v3

    #@13
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-get2(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    #@16
    move-result-object v4

    #@17
    .line 695
    const/4 v5, -0x4

    #@18
    const/4 v6, -0x2

    #@19
    .line 694
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v3

    #@1d
    .line 697
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 694
    return-object v3

    #@21
    .line 696
    :catchall_0
    move-exception v3

    #@22
    .line 697
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 696
    throw v3

    #@26
    .line 700
    .end local v0    # "identity":J
    :cond_0
    return-object v4
.end method

.method public onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    .locals 5
    .param p1, "printers"    # Landroid/content/pm/ParceledListSlice;

    #@0
    .prologue
    .line 762
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/server/print/RemotePrintService;

    #@8
    .line 763
    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v1, :cond_0

    #@a
    .line 764
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    .line 765
    .local v0, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-static {v1}, Lcom/android/server/print/RemotePrintService;->-get2(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    #@11
    move-result-object v4

    #@12
    invoke-direct {p0, v4, v0}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdsForPrinterInfoTampered(Landroid/content/ComponentName;Ljava/util/List;)V

    #@15
    .line 766
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@18
    move-result-wide v2

    #@19
    .line 768
    .local v2, "identity":J
    :try_start_0
    invoke-static {v1}, Lcom/android/server/print/RemotePrintService;->-get1(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    #@1c
    move-result-object v4

    #@1d
    invoke-interface {v4, v0}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onPrintersAdded(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 770
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@23
    .line 761
    .end local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .end local v2    # "identity":J
    :cond_0
    return-void

    #@24
    .line 769
    .restart local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .restart local v2    # "identity":J
    :catchall_0
    move-exception v4

    #@25
    .line 770
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 769
    throw v4
.end method

.method public onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    .locals 5
    .param p1, "printerIds"    # Landroid/content/pm/ParceledListSlice;

    #@0
    .prologue
    .line 778
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    check-cast v3, Lcom/android/server/print/RemotePrintService;

    #@8
    .line 779
    .local v3, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v3, :cond_0

    #@a
    .line 780
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@d
    move-result-object v2

    #@e
    .line 781
    .local v2, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-static {v3}, Lcom/android/server/print/RemotePrintService;->-get2(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    #@11
    move-result-object v4

    #@12
    invoke-direct {p0, v4, v2}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdsTampered(Landroid/content/ComponentName;Ljava/util/List;)V

    #@15
    .line 782
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@18
    move-result-wide v0

    #@19
    .line 784
    .local v0, "identity":J
    :try_start_0
    invoke-static {v3}, Lcom/android/server/print/RemotePrintService;->-get1(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    #@1c
    move-result-object v4

    #@1d
    invoke-interface {v4, v2}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onPrintersRemoved(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 786
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@23
    .line 777
    .end local v0    # "identity":J
    .end local v2    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :cond_0
    return-void

    #@24
    .line 785
    .restart local v0    # "identity":J
    .restart local v2    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :catchall_0
    move-exception v4

    #@25
    .line 786
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 785
    throw v4
.end method

.method public setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "state"    # I
    .param p3, "error"    # Ljava/lang/String;

    #@0
    .prologue
    .line 720
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Lcom/android/server/print/RemotePrintService;

    #@8
    .line 721
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_0

    #@a
    .line 722
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@d
    move-result-wide v0

    #@e
    .line 724
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-get13(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v3

    #@16
    .line 726
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 724
    return v3

    #@1a
    .line 725
    :catchall_0
    move-exception v3

    #@1b
    .line 726
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 725
    throw v3

    #@1f
    .line 729
    .end local v0    # "identity":J
    :cond_0
    const/4 v3, 0x0

    #@20
    return v3
.end method

.method public setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 734
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Lcom/android/server/print/RemotePrintService;

    #@8
    .line 735
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_0

    #@a
    .line 736
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@d
    move-result-wide v0

    #@e
    .line 738
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-get13(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v3

    #@16
    .line 740
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 738
    return v3

    #@1a
    .line 739
    :catchall_0
    move-exception v3

    #@1b
    .line 740
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 739
    throw v3

    #@1f
    .line 743
    .end local v0    # "identity":J
    :cond_0
    const/4 v3, 0x0

    #@20
    return v3
.end method

.method public writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .locals 4
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "printJobId"    # Landroid/print/PrintJobId;

    #@0
    .prologue
    .line 748
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Lcom/android/server/print/RemotePrintService;

    #@8
    .line 749
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_0

    #@a
    .line 750
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@d
    move-result-wide v0

    #@e
    .line 752
    .local v0, "identity":J
    :try_start_0
    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-get13(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 754
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 747
    .end local v0    # "identity":J
    :cond_0
    return-void

    #@19
    .line 753
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    #@1a
    .line 754
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 753
    throw v3
.end method
