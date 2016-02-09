.class Lcom/android/server/print/RemotePrintService$3;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintService;->handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;

.field final synthetic val$printJob:Landroid/print/PrintJobInfo;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/print/RemotePrintService;
    .param p2, "val$printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$3;->this$0:Lcom/android/server/print/RemotePrintService;

    #@2
    iput-object p2, p0, Lcom/android/server/print/RemotePrintService$3;->val$printJob:Landroid/print/PrintJobInfo;

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
    .line 228
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$3;->this$0:Lcom/android/server/print/RemotePrintService;

    #@2
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService$3;->val$printJob:Landroid/print/PrintJobInfo;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/print/RemotePrintService;->-wrap6(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    #@7
    .line 227
    return-void
.end method
