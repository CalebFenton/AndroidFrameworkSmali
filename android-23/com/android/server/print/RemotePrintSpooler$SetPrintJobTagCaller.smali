.class final Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetPrintJobTagCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/TimedRemoteCaller",
        "<",
        "Ljava/lang/Boolean;",
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
    .line 531
    const-wide/16 v0, 0x1388

    #@2
    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    #@5
    .line 532
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;)V

    #@a
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    #@c
    .line 530
    return-void
.end method


# virtual methods
.method public setPrintJobTag(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .locals 2
    .param p1, "target"    # Landroid/print/IPrintSpooler;
    .param p2, "printJobId"    # Landroid/print/PrintJobId;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->onBeforeRemoteCall()I

    #@3
    move-result v0

    #@4
    .line 543
    .local v0, "sequence":I
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    #@6
    invoke-interface {p1, p2, p3, v1, v0}, Landroid/print/IPrintSpooler;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    #@9
    .line 544
    invoke-virtual {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->getResultTimed(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Ljava/lang/Boolean;

    #@f
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@12
    move-result v1

    #@13
    return v1
.end method
