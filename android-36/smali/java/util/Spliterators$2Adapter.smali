.class Ljava/util/Spliterators$2Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfInt;
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field blacklist nextElement:I

.field final synthetic blacklist val$spliterator:Ljava/util/Spliterator$OfInt;

.field blacklist valueReady:Z


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfInt;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 727
    iput-object p1, p0, Ljava/util/Spliterators$2Adapter;->val$spliterator:Ljava/util/Spliterator$OfInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 3
    .param p1, "t"    # I

    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    .line 734
    iput p1, p0, Ljava/util/Spliterators$2Adapter;->nextElement:I

    .line 735
    return-void
.end method

.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 727
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$2Adapter;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 756
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    iget-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    if-eqz v0, :cond_f

    .line 758
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    .line 759
    iget v0, p0, Ljava/util/Spliterators$2Adapter;->nextElement:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 761
    :cond_f
    iget-object v0, p0, Ljava/util/Spliterators$2Adapter;->val$spliterator:Ljava/util/Spliterator$OfInt;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    .line 762
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 739
    iget-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    if-nez v0, :cond_9

    .line 740
    iget-object v0, p0, Ljava/util/Spliterators$2Adapter;->val$spliterator:Ljava/util/Spliterator$OfInt;

    invoke-interface {v0, p0}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    .line 741
    :cond_9
    iget-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    return v0
.end method

.method public whitelist test-api nextInt()I
    .registers 2

    .line 746
    iget-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Ljava/util/Spliterators$2Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    .line 747
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 749
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    .line 750
    iget v0, p0, Ljava/util/Spliterators$2Adapter;->nextElement:I

    return v0
.end method
