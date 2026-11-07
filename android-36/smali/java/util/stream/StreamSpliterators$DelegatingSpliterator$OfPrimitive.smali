.class Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;
.super Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator<",
        "TT;TT_SP",
        "LITR;",
        ">;",
        "Ljava/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/function/Supplier;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    .line 561
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT_SPLITR;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;-><init>(Ljava/util/function/Supplier;)V

    .line 562
    return-void
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 571
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->get()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 572
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 566
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->get()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 557
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    invoke-super {p0}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method
