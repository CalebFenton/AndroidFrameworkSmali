.class final Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;
.super Ljava/lang/Object;
.source "SubmissionPublisher.java"

# interfaces
.implements Ljava/util/concurrent/Flow$Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SubmissionPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConsumerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Flow$Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final blacklist consumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final blacklist status:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field blacklist subscription:Ljava/util/concurrent/Flow$Subscription;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 935
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;, "Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber<TT;>;"
    .local p1, "status":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    iput-object p1, p0, Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;->status:Ljava/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;->consumer:Ljava/util/function/Consumer;

    .line 937
    return-void
.end method

.method static synthetic blacklist lambda$onSubscribe$0(Ljava/util/concurrent/Flow$Subscription;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "subscription"    # Ljava/util/concurrent/Flow$Subscription;
    .param p1, "v"    # Ljava/lang/Void;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 940
    invoke-interface {p0}, Ljava/util/concurrent/Flow$Subscription;->cancel()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api onComplete()V
    .registers 3

    .line 948
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;, "Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;->status:Ljava/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 949
    return-void
.end method

.method public final whitelist test-api onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 945
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;, "Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;->status:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 946
    return-void
.end method

.method public final whitelist test-api onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 952
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;, "Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;->consumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 956
    goto :goto_11

    .line 953
    :catchall_6
    move-exception v0

    .line 954
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;->subscription:Ljava/util/concurrent/Flow$Subscription;

    invoke-interface {v1}, Ljava/util/concurrent/Flow$Subscription;->cancel()V

    .line 955
    iget-object v1, p0, Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;->status:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 957
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_11
    return-void
.end method

.method public final whitelist test-api onSubscribe(Ljava/util/concurrent/Flow$Subscription;)V
    .registers 4
    .param p1, "subscription"    # Ljava/util/concurrent/Flow$Subscription;

    .line 939
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;, "Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber<TT;>;"
    iput-object p1, p0, Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;->subscription:Ljava/util/concurrent/Flow$Subscription;

    .line 940
    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;->status:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Flow$Subscription;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 941
    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;->status:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 942
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Ljava/util/concurrent/Flow$Subscription;->request(J)V

    .line 943
    :cond_1c
    return-void
.end method
