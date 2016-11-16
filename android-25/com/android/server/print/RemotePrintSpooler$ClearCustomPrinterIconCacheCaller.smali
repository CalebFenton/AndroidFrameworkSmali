.class final Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClearCustomPrinterIconCacheCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/TimedRemoteCaller",
        "<",
        "Ljava/lang/Void;",
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
    .line 828
    const-wide/16 v0, 0x1388

    #@2
    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    #@5
    .line 829
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;)V

    #@a
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    #@c
    .line 827
    return-void
.end method


# virtual methods
.method public clearCustomPrinterIconCache(Landroid/print/IPrintSpooler;)Ljava/lang/Void;
    .locals 2
    .param p1, "target"    # Landroid/print/IPrintSpooler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;->onBeforeRemoteCall()I

    #@3
    move-result v0

    #@4
    .line 840
    .local v0, "sequence":I
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    #@6
    invoke-interface {p1, v1, v0}, Landroid/print/IPrintSpooler;->clearCustomPrinterIconCache(Landroid/print/IPrintSpoolerCallbacks;I)V

    #@9
    .line 841
    invoke-virtual {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;->getResultTimed(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Ljava/lang/Void;

    #@f
    return-object v1
.end method
