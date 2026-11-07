.class public final Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;
.super Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrintServiceRecommendationsChangeListenerWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1399
    invoke-direct {p0}, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;-><init>()V

    .line 1400
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    .line 1401
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 1402
    return-void
.end method


# virtual methods
.method public greylist-max-o destroy()V
    .registers 2

    .line 1414
    iget-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1415
    return-void
.end method

.method public greylist-max-o onRecommendationsChanged()V
    .registers 4

    .line 1406
    iget-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1407
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    .line 1408
    .local v1, "listener":Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;
    if-eqz v0, :cond_1f

    if-eqz v1, :cond_1f

    .line 1409
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1411
    :cond_1f
    return-void
.end method
