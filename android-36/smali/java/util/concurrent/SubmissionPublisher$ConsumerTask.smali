.class final Ljava/util/concurrent/SubmissionPublisher$ConsumerTask;
.super Ljava/util/concurrent/ForkJoinTask;
.source "SubmissionPublisher.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SubmissionPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConsumerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ForkJoinTask<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;"
    }
.end annotation


# instance fields
.field final blacklist consumer:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 972
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$ConsumerTask;, "Ljava/util/concurrent/SubmissionPublisher$ConsumerTask<TT;>;"
    .local p1, "consumer":Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;, "Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 973
    iput-object p1, p0, Ljava/util/concurrent/SubmissionPublisher$ConsumerTask;->consumer:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    .line 974
    return-void
.end method


# virtual methods
.method public final whitelist test-api exec()Z
    .registers 2

    .line 977
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$ConsumerTask;, "Ljava/util/concurrent/SubmissionPublisher$ConsumerTask<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher$ConsumerTask;->consumer:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    invoke-virtual {v0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->consume()V

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2

    .line 968
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$ConsumerTask;, "Ljava/util/concurrent/SubmissionPublisher$ConsumerTask<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/SubmissionPublisher$ConsumerTask;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getRawResult()Ljava/lang/Void;
    .registers 2

    .line 975
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$ConsumerTask;, "Ljava/util/concurrent/SubmissionPublisher$ConsumerTask<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist test-api run()V
    .registers 2

    .line 978
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$ConsumerTask;, "Ljava/util/concurrent/SubmissionPublisher$ConsumerTask<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher$ConsumerTask;->consumer:Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;

    invoke-virtual {v0}, Ljava/util/concurrent/SubmissionPublisher$BufferedSubscription;->consume()V

    return-void
.end method

.method public bridge synthetic whitelist test-api setRawResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 968
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$ConsumerTask;, "Ljava/util/concurrent/SubmissionPublisher$ConsumerTask<TT;>;"
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/SubmissionPublisher$ConsumerTask;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final blacklist setRawResult(Ljava/lang/Void;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/Void;

    .line 976
    .local p0, "this":Ljava/util/concurrent/SubmissionPublisher$ConsumerTask;, "Ljava/util/concurrent/SubmissionPublisher$ConsumerTask<TT;>;"
    return-void
.end method
