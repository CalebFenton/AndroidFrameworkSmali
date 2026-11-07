.class final Ljava/lang/StringLatin1$LinesSpliterator;
.super Ljava/lang/Object;
.source "StringLatin1.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StringLatin1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinesSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist fence:I

.field private blacklist index:I

.field private blacklist value:[B


# direct methods
.method constructor blacklist <init>([B)V
    .registers 4
    .param p1, "value"    # [B

    .line 653
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/StringLatin1$LinesSpliterator;-><init>([BII)V

    .line 654
    return-void
.end method

.method constructor blacklist <init>([BII)V
    .registers 5
    .param p1, "value"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    iput-object p1, p0, Ljava/lang/StringLatin1$LinesSpliterator;->value:[B

    .line 658
    iput p2, p0, Ljava/lang/StringLatin1$LinesSpliterator;->index:I

    .line 659
    add-int v0, p2, p3

    iput v0, p0, Ljava/lang/StringLatin1$LinesSpliterator;->fence:I

    .line 660
    return-void
.end method

.method private blacklist indexOfLineSeparator(I)I
    .registers 5
    .param p1, "start"    # I

    .line 663
    move v0, p1

    .local v0, "current":I
    :goto_1
    iget v1, p0, Ljava/lang/StringLatin1$LinesSpliterator;->fence:I

    if-ge v0, v1, :cond_16

    .line 664
    iget-object v1, p0, Ljava/lang/StringLatin1$LinesSpliterator;->value:[B

    aget-byte v1, v1, v0

    .line 665
    .local v1, "ch":B
    const/16 v2, 0xa

    if-eq v1, v2, :cond_15

    const/16 v2, 0xd

    if-ne v1, v2, :cond_12

    goto :goto_15

    .line 663
    .end local v1    # "ch":B
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 666
    .restart local v1    # "ch":B
    :cond_15
    :goto_15
    return v0

    .line 669
    .end local v0    # "current":I
    .end local v1    # "ch":B
    :cond_16
    iget v0, p0, Ljava/lang/StringLatin1$LinesSpliterator;->fence:I

    return v0
.end method

.method private blacklist next()Ljava/lang/String;
    .registers 5

    .line 686
    iget v0, p0, Ljava/lang/StringLatin1$LinesSpliterator;->index:I

    .line 687
    .local v0, "start":I
    invoke-direct {p0, v0}, Ljava/lang/StringLatin1$LinesSpliterator;->indexOfLineSeparator(I)I

    move-result v1

    .line 688
    .local v1, "end":I
    invoke-direct {p0, v1}, Ljava/lang/StringLatin1$LinesSpliterator;->skipLineSeparator(I)I

    move-result v2

    iput v2, p0, Ljava/lang/StringLatin1$LinesSpliterator;->index:I

    .line 689
    iget-object v2, p0, Ljava/lang/StringLatin1$LinesSpliterator;->value:[B

    sub-int v3, v1, v0

    invoke-static {v2, v0, v3}, Ljava/lang/StringLatin1;->newString([BII)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist skipLineSeparator(I)I
    .registers 5
    .param p1, "start"    # I

    .line 673
    iget v0, p0, Ljava/lang/StringLatin1$LinesSpliterator;->fence:I

    if-ge p1, v0, :cond_20

    .line 674
    iget-object v0, p0, Ljava/lang/StringLatin1$LinesSpliterator;->value:[B

    aget-byte v0, v0, p1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1d

    .line 675
    add-int/lit8 v0, p1, 0x1

    .line 676
    .local v0, "next":I
    iget v1, p0, Ljava/lang/StringLatin1$LinesSpliterator;->fence:I

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Ljava/lang/StringLatin1$LinesSpliterator;->value:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1d

    .line 677
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 680
    .end local v0    # "next":I
    :cond_1d
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 682
    :cond_20
    iget v0, p0, Ljava/lang/StringLatin1$LinesSpliterator;->fence:I

    return v0
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 733
    const/16 v0, 0x510

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 728
    iget v0, p0, Ljava/lang/StringLatin1$LinesSpliterator;->fence:I

    iget v1, p0, Ljava/lang/StringLatin1$LinesSpliterator;->index:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 706
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/String;>;"
    if-eqz p1, :cond_11

    .line 709
    :goto_2
    iget v0, p0, Ljava/lang/StringLatin1$LinesSpliterator;->index:I

    iget v1, p0, Ljava/lang/StringLatin1$LinesSpliterator;->fence:I

    if-eq v0, v1, :cond_10

    .line 710
    invoke-direct {p0}, Ljava/lang/StringLatin1$LinesSpliterator;->next()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    .line 712
    :cond_10
    return-void

    .line 707
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "forEachRemaining action missing"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 694
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/String;>;"
    if-eqz p1, :cond_13

    .line 697
    iget v0, p0, Ljava/lang/StringLatin1$LinesSpliterator;->index:I

    iget v1, p0, Ljava/lang/StringLatin1$LinesSpliterator;->fence:I

    if-eq v0, v1, :cond_11

    .line 698
    invoke-direct {p0}, Ljava/lang/StringLatin1$LinesSpliterator;->next()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 699
    const/4 v0, 0x1

    return v0

    .line 701
    :cond_11
    const/4 v0, 0x0

    return v0

    .line 695
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tryAdvance action missing"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 716
    iget v0, p0, Ljava/lang/StringLatin1$LinesSpliterator;->fence:I

    iget v1, p0, Ljava/lang/StringLatin1$LinesSpliterator;->index:I

    add-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    .line 717
    .local v0, "half":I
    invoke-direct {p0, v0}, Ljava/lang/StringLatin1$LinesSpliterator;->indexOfLineSeparator(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/lang/StringLatin1$LinesSpliterator;->skipLineSeparator(I)I

    move-result v1

    .line 718
    .local v1, "mid":I
    iget v2, p0, Ljava/lang/StringLatin1$LinesSpliterator;->fence:I

    if-ge v1, v2, :cond_21

    .line 719
    iget v2, p0, Ljava/lang/StringLatin1$LinesSpliterator;->index:I

    .line 720
    .local v2, "start":I
    iput v1, p0, Ljava/lang/StringLatin1$LinesSpliterator;->index:I

    .line 721
    new-instance v3, Ljava/lang/StringLatin1$LinesSpliterator;

    iget-object v4, p0, Ljava/lang/StringLatin1$LinesSpliterator;->value:[B

    sub-int v5, v1, v2

    invoke-direct {v3, v4, v2, v5}, Ljava/lang/StringLatin1$LinesSpliterator;-><init>([BII)V

    return-object v3

    .line 723
    .end local v2    # "start":I
    :cond_21
    const/4 v2, 0x0

    return-object v2
.end method
