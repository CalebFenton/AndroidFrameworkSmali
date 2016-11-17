.class Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    #@0
    .prologue
    .line 826
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller$1;->this$1:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;)V

    #@6
    return-void
.end method


# virtual methods
.method public customPrinterIconCacheCleared(I)V
    .locals 2
    .param p1, "sequence"    # I

    #@0
    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller$1;->this$1:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1, p1}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    #@6
    .line 828
    return-void
.end method
