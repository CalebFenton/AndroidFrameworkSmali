.class Lcom/android/internal/app/ResolverListController$ComputeCallback;
.super Ljava/lang/Object;
.source "ResolverListController.java"

# interfaces
.implements Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComputeCallback"
.end annotation


# instance fields
.field private blacklist mFinishComputeSignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ResolverListController;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3
    .param p2, "finishComputeSignal"    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p2, p0, Lcom/android/internal/app/ResolverListController$ComputeCallback;->mFinishComputeSignal:Ljava/util/concurrent/CountDownLatch;

    .line 298
    return-void
.end method


# virtual methods
.method public blacklist afterCompute()V
    .registers 2

    .line 301
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController$ComputeCallback;->mFinishComputeSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 302
    return-void
.end method
