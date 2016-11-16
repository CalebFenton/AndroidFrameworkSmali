.class Ljava/nio/CharBufferSpliterator;
.super Ljava/lang/Object;
.source "CharBufferSpliterator.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final buffer:Ljava/nio/CharBuffer;

.field private index:I

.field private final limit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/nio/CharBufferSpliterator;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/nio/CharBufferSpliterator;->-assertionsDisabled:Z

    #@b
    .line 39
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/CharBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, p1, v0, v1}, Ljava/nio/CharBufferSpliterator;-><init>(Ljava/nio/CharBuffer;II)V

    #@b
    .line 44
    return-void
.end method

.method constructor <init>(Ljava/nio/CharBuffer;II)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/CharBuffer;
    .param p2, "origin"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    sget-boolean v0, Ljava/nio/CharBufferSpliterator;->-assertionsDisabled:Z

    #@5
    if-nez v0, :cond_1

    #@7
    if-gt p2, p3, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    if-nez v0, :cond_1

    #@c
    new-instance v0, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@11
    throw v0

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0

    #@14
    .line 50
    :cond_1
    iput-object p1, p0, Ljava/nio/CharBufferSpliterator;->buffer:Ljava/nio/CharBuffer;

    #@16
    .line 51
    if-gt p2, p3, :cond_2

    #@18
    .end local p2    # "origin":I
    :goto_1
    iput p2, p0, Ljava/nio/CharBufferSpliterator;->index:I

    #@1a
    .line 52
    iput p3, p0, Ljava/nio/CharBufferSpliterator;->limit:I

    #@1c
    .line 48
    return-void

    #@1d
    .restart local p2    # "origin":I
    :cond_2
    move p2, p3

    #@1e
    .line 51
    goto :goto_1
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 94
    const/16 v0, 0x4050

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 89
    iget v0, p0, Ljava/nio/CharBufferSpliterator;->limit:I

    #@2
    iget v1, p0, Ljava/nio/CharBufferSpliterator;->index:I

    #@4
    sub-int/2addr v0, v1

    #@5
    int-to-long v0, v0

    #@6
    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 64
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/CharBufferSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 5
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 65
    if-nez p1, :cond_0

    #@2
    .line 66
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 67
    :cond_0
    iget-object v0, p0, Ljava/nio/CharBufferSpliterator;->buffer:Ljava/nio/CharBuffer;

    #@a
    .line 68
    .local v0, "cb":Ljava/nio/CharBuffer;
    iget v2, p0, Ljava/nio/CharBufferSpliterator;->index:I

    #@c
    .line 69
    .local v2, "i":I
    iget v1, p0, Ljava/nio/CharBufferSpliterator;->limit:I

    #@e
    .line 70
    .local v1, "hi":I
    iput v1, p0, Ljava/nio/CharBufferSpliterator;->index:I

    #@10
    move v3, v2

    #@11
    .line 71
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    #@13
    .line 72
    add-int/lit8 v2, v3, 0x1

    #@15
    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {v0, v3}, Ljava/nio/CharBuffer;->getUnchecked(I)C

    #@18
    move-result v4

    #@19
    invoke-interface {p1, v4}, Ljava/util/function/IntConsumer;->accept(I)V

    #@1c
    move v3, v2

    #@1d
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@1e
    .line 64
    :cond_1
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 77
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/CharBufferSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 78
    if-nez p1, :cond_0

    #@3
    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0

    #@9
    .line 80
    :cond_0
    iget v0, p0, Ljava/nio/CharBufferSpliterator;->index:I

    #@b
    if-ltz v0, :cond_1

    #@d
    iget v0, p0, Ljava/nio/CharBufferSpliterator;->index:I

    #@f
    iget v1, p0, Ljava/nio/CharBufferSpliterator;->limit:I

    #@11
    if-ge v0, v1, :cond_1

    #@13
    .line 81
    iget-object v0, p0, Ljava/nio/CharBufferSpliterator;->buffer:Ljava/nio/CharBuffer;

    #@15
    iget v1, p0, Ljava/nio/CharBufferSpliterator;->index:I

    #@17
    add-int/lit8 v2, v1, 0x1

    #@19
    iput v2, p0, Ljava/nio/CharBufferSpliterator;->index:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->getUnchecked(I)C

    #@1e
    move-result v0

    #@1f
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    #@22
    .line 82
    const/4 v0, 0x1

    #@23
    return v0

    #@24
    .line 84
    :cond_1
    return v2
.end method

.method public trySplit()Ljava/util/Spliterator$OfInt;
    .locals 4

    #@0
    .prologue
    .line 57
    iget v0, p0, Ljava/nio/CharBufferSpliterator;->index:I

    #@2
    .local v0, "lo":I
    iget v2, p0, Ljava/nio/CharBufferSpliterator;->limit:I

    #@4
    add-int/2addr v2, v0

    #@5
    ushr-int/lit8 v1, v2, 0x1

    #@7
    .line 58
    .local v1, "mid":I
    if-lt v0, v1, :cond_0

    #@9
    .line 59
    const/4 v2, 0x0

    #@a
    .line 58
    :goto_0
    return-object v2

    #@b
    .line 60
    :cond_0
    new-instance v2, Ljava/nio/CharBufferSpliterator;

    #@d
    iget-object v3, p0, Ljava/nio/CharBufferSpliterator;->buffer:Ljava/nio/CharBuffer;

    #@f
    iput v1, p0, Ljava/nio/CharBufferSpliterator;->index:I

    #@11
    invoke-direct {v2, v3, v0, v1}, Ljava/nio/CharBufferSpliterator;-><init>(Ljava/nio/CharBuffer;II)V

    #@14
    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/nio/CharBufferSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/nio/CharBufferSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
