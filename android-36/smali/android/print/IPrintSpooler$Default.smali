.class public Landroid/print/IPrintSpooler$Default;
.super Ljava/lang/Object;
.source "IPrintSpooler.java"

# interfaces
.implements Landroid/print/IPrintSpooler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist clearCustomPrinterIconCache(Landroid/print/IPrintSpoolerCallbacks;I)V
    .registers 3
    .param p1, "callbacks"    # Landroid/print/IPrintSpoolerCallbacks;
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    return-void
.end method

.method public blacklist createPrintJob(Landroid/print/PrintJobInfo;)V
    .registers 2
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist getCustomPrinterIcon(Landroid/print/PrinterId;Landroid/print/IPrintSpoolerCallbacks;I)V
    .registers 4
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "callbacks"    # Landroid/print/IPrintSpoolerCallbacks;
    .param p3, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    return-void
.end method

.method public blacklist getPrintJobInfo(Landroid/print/PrintJobId;Landroid/print/IPrintSpoolerCallbacks;II)V
    .registers 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "callback"    # Landroid/print/IPrintSpoolerCallbacks;
    .param p3, "appId"    # I
    .param p4, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist getPrintJobInfos(Landroid/print/IPrintSpoolerCallbacks;Landroid/content/ComponentName;III)V
    .registers 6
    .param p1, "callback"    # Landroid/print/IPrintSpoolerCallbacks;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "state"    # I
    .param p4, "appId"    # I
    .param p5, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;Landroid/print/IPrintSpoolerCallbacks;I)V
    .registers 5
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "callbacks"    # Landroid/print/IPrintSpoolerCallbacks;
    .param p4, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
.end method

.method public blacklist pruneApprovedPrintServices(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    .local p1, "servicesToKeep":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    return-void
.end method

.method public blacklist removeObsoletePrintJobs()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist setClient(Landroid/print/IPrintSpoolerClient;)V
    .registers 2
    .param p1, "client"    # Landroid/print/IPrintSpoolerClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    return-void
.end method

.method public blacklist setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    .registers 3
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "cancelling"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    return-void
.end method

.method public blacklist setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V
    .registers 6
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "status"    # I
    .param p3, "stateReason"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/print/IPrintSpoolerCallbacks;
    .param p5, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V
    .registers 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/print/IPrintSpoolerCallbacks;
    .param p4, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public blacklist setProgress(Landroid/print/PrintJobId;F)V
    .registers 3
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "progress"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "status"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public blacklist setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "status"    # I
    .param p3, "appPackageName"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public blacklist writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "printJobId"    # Landroid/print/PrintJobId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    return-void
.end method
