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
.field private final mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1373
    invoke-direct {p0}, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;-><init>()V

    #@3
    .line 1375
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    #@a
    .line 1376
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@c
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@f
    iput-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    #@11
    .line 1374
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    #@0
    .prologue
    .line 1390
    iget-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    #@5
    .line 1389
    return-void
.end method

.method public getListener()Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;
    .locals 1

    #@0
    .prologue
    .line 1394
    iget-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    #@8
    return-object v0
.end method

.method public onRecommendationsChanged()V
    .locals 3

    #@0
    .prologue
    .line 1381
    iget-object v2, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/Handler;

    #@8
    .line 1382
    .local v0, "handler":Landroid/os/Handler;
    iget-object v2, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    #@a
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    #@10
    .line 1383
    .local v1, "listener":Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;
    if-eqz v0, :cond_0

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 1384
    const/4 v2, 0x3

    #@15
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@1c
    .line 1380
    :cond_0
    return-void
.end method
