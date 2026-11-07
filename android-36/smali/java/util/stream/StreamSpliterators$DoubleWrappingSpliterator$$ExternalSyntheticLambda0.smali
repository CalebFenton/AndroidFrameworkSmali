.class public final synthetic Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/stream/Sink$OfDouble;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/DoubleConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/DoubleConsumer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/DoubleConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(D)V
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method
