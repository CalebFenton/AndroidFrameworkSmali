.class public final synthetic Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/stream/Sink$OfInt;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/IntConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/IntConsumer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(I)V
    .registers 3

    .line 0
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/IntConsumer;

    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method
