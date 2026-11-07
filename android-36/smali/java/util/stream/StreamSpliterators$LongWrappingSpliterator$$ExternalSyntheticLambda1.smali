.class public final synthetic Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/stream/Sink$OfLong;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/SpinedBuffer$OfLong;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/SpinedBuffer$OfLong;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda1;->f$0:Ljava/util/stream/SpinedBuffer$OfLong;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(J)V
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda1;->f$0:Ljava/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfLong;->accept(J)V

    return-void
.end method
