.class final Ljava/util/Spliterators$EmptySpliterator$OfInt;
.super Ljava/util/Spliterators$EmptySpliterator;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators$EmptySpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Spliterators$EmptySpliterator<",
        "Ljava/lang/Integer;",
        "Ljava/util/Spliterator$OfInt;",
        "Ljava/util/function/IntConsumer;",
        ">;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 915
    invoke-direct {p0}, Ljava/util/Spliterators$EmptySpliterator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 911
    invoke-super {p0, p1}, Ljava/util/Spliterators$EmptySpliterator;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 911
    invoke-super {p0, p1}, Ljava/util/Spliterators$EmptySpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 911
    invoke-super {p0}, Ljava/util/Spliterators$EmptySpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 911
    invoke-super {p0}, Ljava/util/Spliterators$EmptySpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method
