.class public final synthetic Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Flow$Subscription;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Flow$Subscription;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Flow$Subscription;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Flow$Subscription;

    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Ljava/util/concurrent/SubmissionPublisher$ConsumerSubscriber;->lambda$onSubscribe$0(Ljava/util/concurrent/Flow$Subscription;Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method
