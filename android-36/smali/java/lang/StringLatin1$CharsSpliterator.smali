.class Ljava/lang/StringLatin1$CharsSpliterator;
.super Ljava/lang/Object;
.source "StringLatin1.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StringLatin1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsSpliterator"
.end annotation


# instance fields
.field private final blacklist array:[B

.field private final blacklist cs:I

.field private final blacklist fence:I

.field private blacklist index:I


# direct methods
.method constructor blacklist <init>([BI)V
    .registers 5
    .param p1, "array"    # [B
    .param p2, "acs"    # I

    .line 798
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/lang/StringLatin1$CharsSpliterator;-><init>([BIII)V

    .line 799
    return-void
.end method

.method constructor blacklist <init>([BIII)V
    .registers 6
    .param p1, "array"    # [B
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "acs"    # I

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    iput-object p1, p0, Ljava/lang/StringLatin1$CharsSpliterator;->array:[B

    .line 803
    iput p2, p0, Ljava/lang/StringLatin1$CharsSpliterator;->index:I

    .line 804
    iput p3, p0, Ljava/lang/StringLatin1$CharsSpliterator;->fence:I

    .line 805
    or-int/lit8 v0, p4, 0x10

    or-int/lit8 v0, v0, 0x40

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Ljava/lang/StringLatin1$CharsSpliterator;->cs:I

    .line 807
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 844
    iget v0, p0, Ljava/lang/StringLatin1$CharsSpliterator;->cs:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 840
    iget v0, p0, Ljava/lang/StringLatin1$CharsSpliterator;->fence:I

    iget v1, p0, Ljava/lang/StringLatin1$CharsSpliterator;->index:I

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

    .line 791
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/lang/StringLatin1$CharsSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 6
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 820
    if-eqz p1, :cond_20

    .line 822
    iget-object v0, p0, Ljava/lang/StringLatin1$CharsSpliterator;->array:[B

    move-object v1, v0

    .local v1, "a":[B
    array-length v0, v0

    iget v2, p0, Ljava/lang/StringLatin1$CharsSpliterator;->fence:I

    move v3, v2

    .local v3, "hi":I
    if-lt v0, v2, :cond_1f

    iget v0, p0, Ljava/lang/StringLatin1$CharsSpliterator;->index:I

    move v2, v0

    .local v2, "i":I
    if-ltz v0, :cond_1f

    iput v3, p0, Ljava/lang/StringLatin1$CharsSpliterator;->index:I

    if-ge v2, v3, :cond_1f

    .line 824
    :cond_14
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_14

    .line 826
    .end local v2    # "i":I
    :cond_1f
    return-void

    .line 821
    .end local v1    # "a":[B
    .end local v3    # "hi":I
    :cond_20
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

    .line 791
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/lang/StringLatin1$CharsSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 5
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 830
    if-eqz p1, :cond_1f

    .line 832
    iget v0, p0, Ljava/lang/StringLatin1$CharsSpliterator;->index:I

    if-ltz v0, :cond_1d

    iget v0, p0, Ljava/lang/StringLatin1$CharsSpliterator;->index:I

    iget v1, p0, Ljava/lang/StringLatin1$CharsSpliterator;->fence:I

    if-ge v0, v1, :cond_1d

    .line 833
    iget-object v0, p0, Ljava/lang/StringLatin1$CharsSpliterator;->array:[B

    iget v1, p0, Ljava/lang/StringLatin1$CharsSpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/StringLatin1$CharsSpliterator;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 834
    const/4 v0, 0x1

    return v0

    .line 836
    :cond_1d
    const/4 v0, 0x0

    return v0

    .line 831
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 6

    .line 811
    iget v0, p0, Ljava/lang/StringLatin1$CharsSpliterator;->index:I

    .local v0, "lo":I
    iget v1, p0, Ljava/lang/StringLatin1$CharsSpliterator;->fence:I

    add-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x1

    .line 812
    .local v1, "mid":I
    if-lt v0, v1, :cond_b

    .line 813
    const/4 v2, 0x0

    goto :goto_16

    .line 814
    :cond_b
    new-instance v2, Ljava/lang/StringLatin1$CharsSpliterator;

    iget-object v3, p0, Ljava/lang/StringLatin1$CharsSpliterator;->array:[B

    iput v1, p0, Ljava/lang/StringLatin1$CharsSpliterator;->index:I

    iget v4, p0, Ljava/lang/StringLatin1$CharsSpliterator;->cs:I

    invoke-direct {v2, v3, v0, v1, v4}, Ljava/lang/StringLatin1$CharsSpliterator;-><init>([BIII)V

    .line 812
    :goto_16
    return-object v2
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 791
    invoke-virtual {p0}, Ljava/lang/StringLatin1$CharsSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 791
    invoke-virtual {p0}, Ljava/lang/StringLatin1$CharsSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
