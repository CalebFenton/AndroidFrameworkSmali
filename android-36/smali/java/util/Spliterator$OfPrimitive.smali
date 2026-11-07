.class public interface abstract Ljava/util/Spliterator$OfPrimitive;
.super Ljava/lang/Object;
.source "Spliterator.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
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
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 654
    .local p0, "this":Ljava/util/Spliterator$OfPrimitive;, "Ljava/util/Spliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    return-void
.end method

.method public abstract whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation
.end method

.method public abstract whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 611
    .local p0, "this":Ljava/util/Spliterator$OfPrimitive;, "Ljava/util/Spliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    invoke-interface {p0}, Ljava/util/Spliterator$OfPrimitive;->trySplit()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method
