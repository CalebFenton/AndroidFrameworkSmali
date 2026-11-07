.class public Landroid/print/PrintServiceRecommendationsLoader;
.super Landroid/content/Loader;
.source "PrintServiceRecommendationsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintServiceRecommendationsLoader$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader<",
        "Ljava/util/List<",
        "Landroid/printservice/recommendation/RecommendationInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mListener:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

.field private final greylist-max-o mPrintManager:Landroid/print/PrintManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mqueueNewResult(Landroid/print/PrintServiceRecommendationsLoader;)V
    .registers 1

    invoke-direct {p0}, Landroid/print/PrintServiceRecommendationsLoader;->queueNewResult()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/print/PrintManager;Landroid/content/Context;)V
    .registers 4
    .param p1, "printManager"    # Landroid/print/PrintManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 53
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Landroid/print/PrintServiceRecommendationsLoader$MyHandler;

    invoke-direct {v0, p0}, Landroid/print/PrintServiceRecommendationsLoader$MyHandler;-><init>(Landroid/print/PrintServiceRecommendationsLoader;)V

    iput-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mHandler:Landroid/os/Handler;

    .line 55
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    iput-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mPrintManager:Landroid/print/PrintManager;

    .line 56
    return-void
.end method

.method private greylist-max-o queueNewResult()V
    .registers 3

    .line 67
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 68
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/print/PrintServiceRecommendationsLoader;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v1}, Landroid/print/PrintManager;->getPrintServiceRecommendations()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Landroid/print/PrintServiceRecommendationsLoader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    return-void
.end method


# virtual methods
.method protected whitelist onForceLoad()V
    .registers 1

    .line 60
    invoke-direct {p0}, Landroid/print/PrintServiceRecommendationsLoader;->queueNewResult()V

    .line 61
    return-void
.end method

.method protected whitelist onReset()V
    .registers 1

    .line 99
    invoke-virtual {p0}, Landroid/print/PrintServiceRecommendationsLoader;->onStopLoading()V

    .line 100
    return-void
.end method

.method protected whitelist onStartLoading()V
    .registers 4

    .line 74
    new-instance v0, Landroid/print/PrintServiceRecommendationsLoader$1;

    invoke-direct {v0, p0}, Landroid/print/PrintServiceRecommendationsLoader$1;-><init>(Landroid/print/PrintServiceRecommendationsLoader;)V

    iput-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mListener:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    .line 81
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Landroid/print/PrintServiceRecommendationsLoader;->mListener:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/print/PrintManager;->addPrintServiceRecommendationsChangeListener(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;Landroid/os/Handler;)V

    .line 84
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0}, Landroid/print/PrintManager;->getPrintServiceRecommendations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/print/PrintServiceRecommendationsLoader;->deliverResult(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method protected whitelist onStopLoading()V
    .registers 3

    .line 89
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mListener:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    if-eqz v0, :cond_e

    .line 90
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Landroid/print/PrintServiceRecommendationsLoader;->mListener:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintServiceRecommendationsChangeListener(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;)V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mListener:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    .line 94
    :cond_e
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    return-void
.end method
