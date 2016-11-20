.class public Landroid/print/PrintServicesLoader;
.super Landroid/content/Loader;
.source "PrintServicesLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintServicesLoader$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

.field private final mPrintManager:Landroid/print/PrintManager;

.field private final mSelectionFlags:I


# direct methods
.method static synthetic -wrap0(Landroid/print/PrintServicesLoader;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/print/PrintServicesLoader;->queueNewResult()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/print/PrintManager;Landroid/content/Context;I)V
    .locals 1
    .param p1, "printManager"    # Landroid/print/PrintManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "selectionFlags"    # I

    #@0
    .prologue
    .line 56
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/content/Context;

    #@6
    invoke-direct {p0, v0}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    #@9
    .line 57
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/print/PrintManager;

    #@f
    iput-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    #@11
    .line 59
    const/4 v0, 0x3

    #@12
    .line 58
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/print/PrintServicesLoader;->mSelectionFlags:I

    #@18
    .line 55
    return-void
.end method

.method private queueNewResult()V
    .locals 3

    #@0
    .prologue
    .line 71
    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 72
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    #@9
    iget v2, p0, Landroid/print/PrintServicesLoader;->mSelectionFlags:I

    #@b
    invoke-virtual {v1, v2}, Landroid/print/PrintManager;->getPrintServices(I)Ljava/util/List;

    #@e
    move-result-object v1

    #@f
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11
    .line 73
    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    #@13
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@16
    .line 70
    return-void
.end method


# virtual methods
.method protected onForceLoad()V
    .locals 0

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Landroid/print/PrintServicesLoader;->queueNewResult()V

    #@3
    .line 63
    return-void
.end method

.method protected onReset()V
    .locals 0

    #@0
    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/print/PrintServicesLoader;->onStopLoading()V

    #@3
    .line 105
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    #@0
    .prologue
    .line 78
    new-instance v0, Landroid/print/PrintServicesLoader$MyHandler;

    #@2
    invoke-direct {v0, p0}, Landroid/print/PrintServicesLoader$MyHandler;-><init>(Landroid/print/PrintServicesLoader;)V

    #@5
    iput-object v0, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    #@7
    .line 79
    new-instance v0, Landroid/print/PrintServicesLoader$1;

    #@9
    invoke-direct {v0, p0}, Landroid/print/PrintServicesLoader$1;-><init>(Landroid/print/PrintServicesLoader;)V

    #@c
    iput-object v0, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    #@e
    .line 85
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    #@10
    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    #@12
    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->addPrintServicesChangeListener(Landroid/print/PrintManager$PrintServicesChangeListener;)V

    #@15
    .line 88
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    #@17
    iget v1, p0, Landroid/print/PrintServicesLoader;->mSelectionFlags:I

    #@19
    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getPrintServices(I)Ljava/util/List;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p0, v0}, Landroid/print/PrintServicesLoader;->deliverResult(Ljava/lang/Object;)V

    #@20
    .line 77
    return-void
.end method

.method protected onStopLoading()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 93
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 94
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    #@7
    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    #@9
    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintServicesChangeListener(Landroid/print/PrintManager$PrintServicesChangeListener;)V

    #@c
    .line 95
    iput-object v2, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    #@e
    .line 98
    :cond_0
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 99
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@18
    .line 100
    iput-object v2, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    #@1a
    .line 92
    :cond_1
    return-void
.end method
