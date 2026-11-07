.class Ljava/nio/CharBufferSpliterator;
.super Ljava/lang/Object;
.source "CharBufferSpliterator.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist buffer:Ljava/nio/CharBuffer;

.field private blacklist index:I

.field private final blacklist limit:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 39
    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/CharBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/CharBuffer;

    .line 45
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/CharBufferSpliterator;-><init>(Ljava/nio/CharBuffer;II)V

    .line 46
    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/CharBuffer;II)V
    .registers 5
    .param p1, "buffer"    # Ljava/nio/CharBuffer;
    .param p2, "origin"    # I
    .param p3, "limit"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    nop

    .line 50
    iput-object p1, p0, Ljava/nio/CharBufferSpliterator;->buffer:Ljava/nio/CharBuffer;

    .line 51
    if-gt p2, p3, :cond_a

    move v0, p2

    goto :goto_b

    :cond_a
    move v0, p3

    :goto_b
    iput v0, p0, Ljava/nio/CharBufferSpliterator;->index:I

    .line 52
    iput p3, p0, Ljava/nio/CharBufferSpliterator;->limit:I

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 94
    const/16 v0, 0x4050

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 89
    iget v0, p0, Ljava/nio/CharBufferSpliterator;->limit:I

    iget v1, p0, Ljava/nio/CharBufferSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
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

    .line 39
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/nio/CharBufferSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 6
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 65
    if-eqz p1, :cond_18

    .line 67
    iget-object v0, p0, Ljava/nio/CharBufferSpliterator;->buffer:Ljava/nio/CharBuffer;

    .line 68
    .local v0, "cb":Ljava/nio/CharBuffer;
    iget v1, p0, Ljava/nio/CharBufferSpliterator;->index:I

    .line 69
    .local v1, "i":I
    iget v2, p0, Ljava/nio/CharBufferSpliterator;->limit:I

    .line 70
    .local v2, "hi":I
    iput v2, p0, Ljava/nio/CharBufferSpliterator;->index:I

    .line 71
    :goto_a
    if-ge v1, v2, :cond_17

    .line 72
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->getUnchecked(I)C

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    move v1, v3

    goto :goto_a

    .line 74
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_17
    return-void

    .line 66
    .end local v0    # "cb":Ljava/nio/CharBuffer;
    .end local v1    # "i":I
    .end local v2    # "hi":I
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 39
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/nio/CharBufferSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 5
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 78
    if-eqz p1, :cond_1f

    .line 80
    iget v0, p0, Ljava/nio/CharBufferSpliterator;->index:I

    if-ltz v0, :cond_1d

    iget v0, p0, Ljava/nio/CharBufferSpliterator;->index:I

    iget v1, p0, Ljava/nio/CharBufferSpliterator;->limit:I

    if-ge v0, v1, :cond_1d

    .line 81
    iget-object v0, p0, Ljava/nio/CharBufferSpliterator;->buffer:Ljava/nio/CharBuffer;

    iget v1, p0, Ljava/nio/CharBufferSpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/CharBufferSpliterator;->index:I

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->getUnchecked(I)C

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 82
    const/4 v0, 0x1

    return v0

    .line 84
    :cond_1d
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 5

    .line 57
    iget v0, p0, Ljava/nio/CharBufferSpliterator;->index:I

    .local v0, "lo":I
    iget v1, p0, Ljava/nio/CharBufferSpliterator;->limit:I

    add-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x1

    .line 58
    .local v1, "mid":I
    if-lt v0, v1, :cond_b

    .line 59
    const/4 v2, 0x0

    goto :goto_14

    .line 60
    :cond_b
    new-instance v2, Ljava/nio/CharBufferSpliterator;

    iget-object v3, p0, Ljava/nio/CharBufferSpliterator;->buffer:Ljava/nio/CharBuffer;

    iput v1, p0, Ljava/nio/CharBufferSpliterator;->index:I

    invoke-direct {v2, v3, v0, v1}, Ljava/nio/CharBufferSpliterator;-><init>(Ljava/nio/CharBuffer;II)V

    .line 58
    :goto_14
    return-object v2
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 39
    invoke-virtual {p0}, Ljava/nio/CharBufferSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 39
    invoke-virtual {p0}, Ljava/nio/CharBufferSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
