.class final Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetPrintJobInfosCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/TimedRemoteCaller",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/print/PrintJobInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/print/IPrintSpoolerCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 467
    const-wide/16 v0, 0x1388

    #@2
    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    #@5
    .line 468
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;)V

    #@a
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    #@c
    .line 466
    return-void
.end method


# virtual methods
.method public getPrintJobInfos(Landroid/print/IPrintSpooler;Landroid/content/ComponentName;II)Ljava/util/List;
    .locals 6
    .param p1, "target"    # Landroid/print/IPrintSpooler;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "state"    # I
    .param p4, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrintSpooler;",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->onBeforeRemoteCall()I

    #@3
    move-result v5

    #@4
    .line 480
    .local v5, "sequence":I
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    #@6
    move-object v0, p1

    #@7
    move-object v2, p2

    #@8
    move v3, p3

    #@9
    move v4, p4

    #@a
    invoke-interface/range {v0 .. v5}, Landroid/print/IPrintSpooler;->getPrintJobInfos(Landroid/print/IPrintSpoolerCallbacks;Landroid/content/ComponentName;III)V

    #@d
    .line 481
    invoke-virtual {p0, v5}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->getResultTimed(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/util/List;

    #@13
    return-object v0
.end method
