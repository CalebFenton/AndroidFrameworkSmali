.class final Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetPrintJobStateCaller"
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
    .line 510
    const-wide/16 v0, 0x1388

    #@2
    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    #@5
    .line 511
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;)V

    #@a
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    #@c
    .line 509
    return-void
.end method


# virtual methods
.method public setPrintJobState(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .locals 6
    .param p1, "target"    # Landroid/print/IPrintSpooler;
    .param p2, "printJobId"    # Landroid/print/PrintJobId;
    .param p3, "status"    # I
    .param p4, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->onBeforeRemoteCall()I

    #@3
    move-result v5

    #@4
    .line 522
    .local v5, "sequence":I
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    #@6
    move-object v0, p1

    #@7
    move-object v1, p2

    #@8
    move v2, p3

    #@9
    move-object v3, p4

    #@a
    invoke-interface/range {v0 .. v5}, Landroid/print/IPrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    #@d
    .line 523
    invoke-virtual {p0, v5}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->getResultTimed(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/lang/Boolean;

    #@13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@16
    move-result v0

    #@17
    return v0
.end method
