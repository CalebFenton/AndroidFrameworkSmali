.class Lcom/android/server/print/RemotePrintService$6;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintService;->handleStartPrinterDiscovery(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;

.field final synthetic val$priorityList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/print/RemotePrintService;

    #@0
    .prologue
    .line 322
    .local p2, "val$priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$6;->this$0:Lcom/android/server/print/RemotePrintService;

    #@2
    iput-object p2, p0, Lcom/android/server/print/RemotePrintService$6;->val$priorityList:Ljava/util/List;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$6;->this$0:Lcom/android/server/print/RemotePrintService;

    #@2
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService$6;->val$priorityList:Ljava/util/List;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/print/RemotePrintService;->-wrap8(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    #@7
    .line 324
    return-void
.end method
