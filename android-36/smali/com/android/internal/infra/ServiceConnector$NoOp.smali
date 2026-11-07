.class public Lcom/android/internal/infra/ServiceConnector$NoOp;
.super Lcom/android/internal/infra/AndroidFuture;
.source "ServiceConnector.java"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/android/internal/infra/AndroidFuture<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/android/internal/infra/ServiceConnector<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 814
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$NoOp;, "Lcom/android/internal/infra/ServiceConnector$NoOp<TT;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 816
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ServiceConnector is a no-op"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$NoOp;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 817
    return-void
.end method


# virtual methods
.method public blacklist connect()Lcom/android/internal/infra/AndroidFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 841
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$NoOp;, "Lcom/android/internal/infra/ServiceConnector$NoOp<TT;>;"
    return-object p0
.end method

.method public blacklist post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$VoidJob<",
            "TT;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 826
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$NoOp;, "Lcom/android/internal/infra/ServiceConnector$NoOp<TT;>;"
    .local p1, "job":Lcom/android/internal/infra/ServiceConnector$VoidJob;, "Lcom/android/internal/infra/ServiceConnector$VoidJob<TT;>;"
    return-object p0
.end method

.method public blacklist postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TT;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TR;>;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation

    .line 836
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$NoOp;, "Lcom/android/internal/infra/ServiceConnector$NoOp<TT;>;"
    .local p1, "job":Lcom/android/internal/infra/ServiceConnector$Job;, "Lcom/android/internal/infra/ServiceConnector$Job<TT;Ljava/util/concurrent/CompletableFuture<TR;>;>;"
    return-object p0
.end method

.method public blacklist postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TT;TR;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation

    .line 831
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$NoOp;, "Lcom/android/internal/infra/ServiceConnector$NoOp<TT;>;"
    .local p1, "job":Lcom/android/internal/infra/ServiceConnector$Job;, "Lcom/android/internal/infra/ServiceConnector$Job<TT;TR;>;"
    return-object p0
.end method

.method public blacklist run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$VoidJob<",
            "TT;>;)Z"
        }
    .end annotation

    .line 821
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$NoOp;, "Lcom/android/internal/infra/ServiceConnector$NoOp<TT;>;"
    .local p1, "job":Lcom/android/internal/infra/ServiceConnector$VoidJob;, "Lcom/android/internal/infra/ServiceConnector$VoidJob<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "TT;>;)V"
        }
    .end annotation

    .line 850
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$NoOp;, "Lcom/android/internal/infra/ServiceConnector$NoOp<TT;>;"
    .local p1, "callbacks":Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;, "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<TT;>;"
    return-void
.end method

.method public blacklist unbind()V
    .registers 1

    .line 845
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$NoOp;, "Lcom/android/internal/infra/ServiceConnector$NoOp<TT;>;"
    return-void
.end method
