.class Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    #@0
    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller$1;->this$1:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;)V

    #@6
    return-void
.end method


# virtual methods
.method public onGetPrintJobInfoResult(Landroid/print/PrintJobInfo;I)V
    .locals 1
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;
    .param p2, "sequence"    # I

    #@0
    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller$1;->this$1:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    #@5
    .line 492
    return-void
.end method
