.class Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    #@0
    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$1:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;)V

    #@6
    return-void
.end method


# virtual methods
.method public onSetPrintJobTagResult(ZI)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "sequence"    # I

    #@0
    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$1:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    #@2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    #@9
    .line 534
    return-void
.end method
