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
        "Landroid/content/Loader<",
        "Ljava/util/List<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

.field private final greylist-max-o mPrintManager:Landroid/print/PrintManager;

.field private final greylist-max-o mSelectionFlags:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mqueueNewResult(Landroid/print/PrintServicesLoader;)V
    .registers 1

    invoke-direct {p0}, Landroid/print/PrintServicesLoader;->queueNewResult()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/print/PrintManager;Landroid/content/Context;I)V
    .registers 5
    .param p1, "printManager"    # Landroid/print/PrintManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "selectionFlags"    # I

    .line 57
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Landroid/print/PrintServicesLoader$MyHandler;

    invoke-direct {v0, p0}, Landroid/print/PrintServicesLoader$MyHandler;-><init>(Landroid/print/PrintServicesLoader;)V

    iput-object v0, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    .line 59
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    iput-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    .line 60
    const/4 v0, 0x3

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    move-result v0

    iput v0, p0, Landroid/print/PrintServicesLoader;->mSelectionFlags:I

    .line 62
    return-void
.end method

.method private greylist-max-o queueNewResult()V
    .registers 4

    .line 73
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 74
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    iget v2, p0, Landroid/print/PrintServicesLoader;->mSelectionFlags:I

    invoke-virtual {v1, v2}, Landroid/print/PrintManager;->getPrintServices(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    return-void
.end method


# virtual methods
.method protected whitelist onForceLoad()V
    .registers 1

    .line 66
    invoke-direct {p0}, Landroid/print/PrintServicesLoader;->queueNewResult()V

    .line 67
    return-void
.end method

.method protected whitelist onReset()V
    .registers 1

    .line 104
    invoke-virtual {p0}, Landroid/print/PrintServicesLoader;->onStopLoading()V

    .line 105
    return-void
.end method

.method protected whitelist onStartLoading()V
    .registers 4

    .line 80
    new-instance v0, Landroid/print/PrintServicesLoader$1;

    invoke-direct {v0, p0}, Landroid/print/PrintServicesLoader$1;-><init>(Landroid/print/PrintServicesLoader;)V

    iput-object v0, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    .line 86
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/print/PrintManager;->addPrintServicesChangeListener(Landroid/print/PrintManager$PrintServicesChangeListener;Landroid/os/Handler;)V

    .line 89
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    iget v1, p0, Landroid/print/PrintServicesLoader;->mSelectionFlags:I

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getPrintServices(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/print/PrintServicesLoader;->deliverResult(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method protected whitelist onStopLoading()V
    .registers 3

    .line 94
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    if-eqz v0, :cond_e

    .line 95
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintServicesChangeListener(Landroid/print/PrintManager$PrintServicesChangeListener;)V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    .line 99
    :cond_e
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    return-void
.end method
