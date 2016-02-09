.class final Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetPrintJobInfoCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/TimedRemoteCaller",
        "<",
        "Landroid/print/PrintJobInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/print/IPrintSpoolerCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 489
    const-wide/16 v0, 0x1388

    #@2
    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    #@5
    .line 490
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;)V

    #@a
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    #@c
    .line 488
    return-void
.end method


# virtual methods
.method public getPrintJobInfo(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .locals 2
    .param p1, "target"    # Landroid/print/IPrintSpooler;
    .param p2, "printJobId"    # Landroid/print/PrintJobId;
    .param p3, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->onBeforeRemoteCall()I

    #@3
    move-result v0

    #@4
    .line 501
    .local v0, "sequence":I
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    #@6
    invoke-interface {p1, p2, v1, p3, v0}, Landroid/print/IPrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;Landroid/print/IPrintSpoolerCallbacks;II)V

    #@9
    .line 502
    invoke-virtual {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->getResultTimed(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/print/PrintJobInfo;

    #@f
    return-object v1
.end method
