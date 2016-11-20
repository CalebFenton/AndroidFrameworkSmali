.class final Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetCustomPrinterIconCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/TimedRemoteCaller",
        "<",
        "Landroid/graphics/drawable/Icon;",
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
    .line 849
    const-wide/16 v0, 0x1388

    #@2
    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    #@5
    .line 850
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;)V

    #@a
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    #@c
    .line 848
    return-void
.end method


# virtual methods
.method public getCustomPrinterIcon(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .locals 2
    .param p1, "target"    # Landroid/print/IPrintSpooler;
    .param p2, "printerId"    # Landroid/print/PrinterId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->onBeforeRemoteCall()I

    #@3
    move-result v0

    #@4
    .line 861
    .local v0, "sequence":I
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    #@6
    invoke-interface {p1, p2, v1, v0}, Landroid/print/IPrintSpooler;->getCustomPrinterIcon(Landroid/print/PrinterId;Landroid/print/IPrintSpoolerCallbacks;I)V

    #@9
    .line 862
    invoke-virtual {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->getResultTimed(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/graphics/drawable/Icon;

    #@f
    return-object v1
.end method
