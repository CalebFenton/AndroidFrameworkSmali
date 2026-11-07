.class abstract Ljava/lang/AbstractStringBuilder;
.super Ljava/lang/Object;
.source "AbstractStringBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# static fields
.field private static final blacklist EMPTYVALUE:[B

.field private static final greylist-max-o MAX_ARRAY_SIZE:I = 0x7ffffff7


# instance fields
.field blacklist coder:B

.field greylist-max-o count:I

.field blacklist value:[B


# direct methods
.method public static synthetic blacklist $r8$lambda$7n_N--iX4kUgfk5GXyADGcYJh_M(Ljava/lang/AbstractStringBuilder;)Ljava/util/Spliterator$OfInt;
    .registers 1

    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->lambda$chars$0()Ljava/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$9AlO9YOXWh3PUhUdYGLcbBfLM2I(Ljava/lang/AbstractStringBuilder;)Ljava/util/Spliterator$OfInt;
    .registers 1

    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->lambda$codePoints$1()Ljava/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Ljava/lang/AbstractStringBuilder;->EMPTYVALUE:[B

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Ljava/lang/AbstractStringBuilder;->EMPTYVALUE:[B

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 86
    return-void
.end method

.method constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 94
    const/4 v0, 0x0

    iput-byte v0, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    .line 99
    return-void
.end method

.method private final blacklist appendChars(Ljava/lang/CharSequence;II)V
    .registers 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "off"    # I
    .param p3, "end"    # I

    .line 1719
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1720
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 1721
    .local v0, "val":[B
    move v1, p2

    .local v1, "i":I
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .local v2, "j":I
    :goto_b
    if-ge v1, p3, :cond_32

    .line 1722
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1723
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/StringLatin1;->canEncode(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1724
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "j":I
    .local v4, "j":I
    int-to-byte v5, v3

    aput-byte v5, v0, v2

    .line 1721
    .end local v3    # "c":C
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_b

    .line 1726
    .end local v4    # "j":I
    .restart local v2    # "j":I
    .restart local v3    # "c":C
    :cond_20
    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1727
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->inflate()V

    .line 1728
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {v4, v2, p1, v1, p3}, Ljava/lang/StringUTF16;->putCharsSB([BILjava/lang/CharSequence;II)V

    .line 1729
    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v5, p3, v1

    add-int/2addr v4, v5

    iput v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1730
    return-void

    .line 1733
    .end local v0    # "val":[B
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "c":C
    :cond_32
    goto :goto_3a

    .line 1734
    :cond_33
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/StringUTF16;->putCharsSB([BILjava/lang/CharSequence;II)V

    .line 1736
    :goto_3a
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1737
    return-void
.end method

.method private final blacklist appendChars([CII)V
    .registers 11
    .param p1, "s"    # [C
    .param p2, "off"    # I
    .param p3, "end"    # I

    .line 1697
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1698
    .local v0, "count":I
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1699
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 1700
    .local v1, "val":[B
    move v2, p2

    .local v2, "i":I
    move v3, v0

    .local v3, "j":I
    :goto_c
    if-ge v2, p3, :cond_30

    .line 1701
    aget-char v4, p1, v2

    .line 1702
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/StringLatin1;->canEncode(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1703
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .local v5, "j":I
    int-to-byte v6, v4

    aput-byte v6, v1, v3

    .line 1700
    .end local v4    # "c":C
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_c

    .line 1705
    .end local v5    # "j":I
    .restart local v3    # "j":I
    .restart local v4    # "c":C
    :cond_1f
    move v0, v3

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1706
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->inflate()V

    .line 1707
    iget-object v5, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {v5, v3, p1, v2, p3}, Ljava/lang/StringUTF16;->putCharsSB([BI[CII)V

    .line 1708
    add-int v5, v0, p3

    sub-int/2addr v5, v2

    iput v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1709
    return-void

    .line 1712
    .end local v1    # "val":[B
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "c":C
    :cond_30
    goto :goto_36

    .line 1713
    :cond_31
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/StringUTF16;->putCharsSB([BI[CII)V

    .line 1715
    :goto_36
    add-int v1, v0, p3

    sub-int/2addr v1, p2

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1716
    return-void
.end method

.method private greylist-max-o appendNull()Ljava/lang/AbstractStringBuilder;
    .registers 8

    .line 592
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 593
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 594
    .local v2, "count":I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 595
    .local v1, "val":[B
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 596
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "count":I
    .local v0, "count":I
    const/16 v3, 0x6e

    aput-byte v3, v1, v2

    .line 597
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "count":I
    .restart local v2    # "count":I
    const/16 v3, 0x75

    aput-byte v3, v1, v0

    .line 598
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "count":I
    .restart local v0    # "count":I
    const/16 v3, 0x6c

    aput-byte v3, v1, v2

    .line 599
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "count":I
    .restart local v2    # "count":I
    aput-byte v3, v1, v0

    goto :goto_34

    .line 601
    :cond_28
    const/16 v5, 0x6c

    const/16 v6, 0x6c

    const/16 v3, 0x6e

    const/16 v4, 0x75

    invoke-static/range {v1 .. v6}, Ljava/lang/StringUTF16;->putCharsAt([BICCCC)I

    move-result v2

    .line 603
    :goto_34
    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 604
    return-object p0
.end method

.method private static blacklist checkRange(III)V
    .registers 6
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "len"    # I

    .line 1741
    if-ltz p0, :cond_7

    if-gt p0, p1, :cond_7

    if-gt p1, p2, :cond_7

    .line 1745
    return-void

    .line 1742
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist checkRangeSIOOBE(III)V
    .registers 6
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "len"    # I

    .line 1749
    if-ltz p0, :cond_7

    if-gt p0, p1, :cond_7

    if-gt p1, p2, :cond_7

    .line 1753
    return-void

    .line 1750
    :cond_7
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureCapacityInternal(I)V
    .registers 6
    .param p1, "minimumCapacity"    # I

    .line 180
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    array-length v0, v0

    iget-byte v1, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    shr-int/2addr v0, v1

    .line 181
    .local v0, "oldCapacity":I
    sub-int v1, p1, v0

    if-lez v1, :cond_19

    .line 182
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 183
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->newCapacity(I)I

    move-result v2

    iget-byte v3, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    shl-int/2addr v2, v3

    .line 182
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 185
    :cond_19
    return-void
.end method

.method private greylist-max-o hugeCapacity(I)I
    .registers 5
    .param p1, "minCapacity"    # I

    .line 221
    const v0, 0x7ffffff7

    iget-byte v1, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    shr-int/2addr v0, v1

    .line 222
    .local v0, "SAFE_BOUND":I
    const v1, 0x7fffffff

    iget-byte v2, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    shr-int/2addr v1, v2

    .line 223
    .local v1, "UNSAFE_BOUND":I
    sub-int v2, v1, p1

    if-ltz v2, :cond_16

    .line 226
    if-le p1, v0, :cond_14

    .line 227
    move v2, p1

    goto :goto_15

    :cond_14
    move v2, v0

    .line 226
    :goto_15
    return v2

    .line 224
    :cond_16
    new-instance v2, Ljava/lang/OutOfMemoryError;

    invoke-direct {v2}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v2
.end method

.method private blacklist inflate()V
    .registers 5

    .line 235
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v0

    if-nez v0, :cond_7

    .line 236
    return-void

    .line 238
    :cond_7
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/StringUTF16;->newBytesFor(I)[B

    move-result-object v0

    .line 239
    .local v0, "buf":[B
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/StringLatin1;->inflate([BI[BII)V

    .line 240
    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 241
    const/4 v1, 0x1

    iput-byte v1, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    .line 242
    return-void
.end method

.method private synthetic blacklist lambda$chars$0()Ljava/util/Spliterator$OfInt;
    .registers 6

    .line 1571
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 1572
    .local v0, "val":[B
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1573
    .local v1, "count":I
    iget-byte v2, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    .line 1574
    .local v2, "coder":B
    const/4 v3, 0x0

    if-nez v2, :cond_f

    .line 1575
    new-instance v4, Ljava/lang/StringLatin1$CharsSpliterator;

    invoke-direct {v4, v0, v3, v1, v3}, Ljava/lang/StringLatin1$CharsSpliterator;-><init>([BIII)V

    goto :goto_14

    .line 1576
    :cond_f
    new-instance v4, Ljava/lang/StringUTF16$CharsSpliterator;

    invoke-direct {v4, v0, v3, v1, v3}, Ljava/lang/StringUTF16$CharsSpliterator;-><init>([BIII)V

    .line 1574
    :goto_14
    return-object v4
.end method

.method private synthetic blacklist lambda$codePoints$1()Ljava/util/Spliterator$OfInt;
    .registers 6

    .line 1595
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 1596
    .local v0, "val":[B
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1597
    .local v1, "count":I
    iget-byte v2, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    .line 1598
    .local v2, "coder":B
    const/4 v3, 0x0

    if-nez v2, :cond_f

    .line 1599
    new-instance v4, Ljava/lang/StringLatin1$CharsSpliterator;

    invoke-direct {v4, v0, v3, v1, v3}, Ljava/lang/StringLatin1$CharsSpliterator;-><init>([BIII)V

    goto :goto_14

    .line 1600
    :cond_f
    new-instance v4, Ljava/lang/StringUTF16$CodePointsSpliterator;

    invoke-direct {v4, v0, v3, v1, v3}, Ljava/lang/StringUTF16$CodePointsSpliterator;-><init>([BIII)V

    .line 1598
    :goto_14
    return-object v4
.end method

.method private greylist-max-o newCapacity(I)I
    .registers 6
    .param p1, "minCapacity"    # I

    .line 209
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    array-length v0, v0

    iget-byte v1, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    shr-int/2addr v0, v1

    .line 210
    .local v0, "oldCapacity":I
    shl-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0x2

    .line 211
    .local v1, "newCapacity":I
    sub-int v2, v1, p1

    if-gez v2, :cond_f

    .line 212
    move v1, p1

    .line 214
    :cond_f
    const v2, 0x7ffffff7

    iget-byte v3, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    shr-int/2addr v2, v3

    .line 215
    .local v2, "SAFE_BOUND":I
    if-lez v1, :cond_1e

    sub-int v3, v2, v1

    if-gez v3, :cond_1c

    goto :goto_1e

    .line 217
    :cond_1c
    move v3, v1

    goto :goto_22

    .line 216
    :cond_1e
    :goto_1e
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->hugeCapacity(I)I

    move-result v3

    .line 215
    :goto_22
    return v3
.end method

.method private final blacklist putCharsAt(ILjava/lang/CharSequence;II)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "off"    # I
    .param p4, "end"    # I

    .line 1672
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1673
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 1674
    .local v0, "val":[B
    move v1, p3

    .local v1, "i":I
    move v2, p1

    .local v2, "j":I
    :goto_a
    if-ge v1, p4, :cond_28

    .line 1675
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1676
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/StringLatin1;->canEncode(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1677
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "j":I
    .local v4, "j":I
    int-to-byte v5, v3

    aput-byte v5, v0, v2

    .line 1674
    .end local v3    # "c":C
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_a

    .line 1679
    .end local v4    # "j":I
    .restart local v2    # "j":I
    .restart local v3    # "c":C
    :cond_1f
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->inflate()V

    .line 1680
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {v4, v2, p2, v1, p4}, Ljava/lang/StringUTF16;->putCharsSB([BILjava/lang/CharSequence;II)V

    .line 1681
    return-void

    .line 1684
    .end local v0    # "val":[B
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "c":C
    :cond_28
    goto :goto_2e

    .line 1685
    :cond_29
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/StringUTF16;->putCharsSB([BILjava/lang/CharSequence;II)V

    .line 1687
    :goto_2e
    return-void
.end method

.method private final blacklist putCharsAt(I[CII)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "s"    # [C
    .param p3, "off"    # I
    .param p4, "end"    # I

    .line 1654
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1655
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 1656
    .local v0, "val":[B
    move v1, p3

    .local v1, "i":I
    move v2, p1

    .local v2, "j":I
    :goto_a
    if-ge v1, p4, :cond_26

    .line 1657
    aget-char v3, p2, v1

    .line 1658
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/StringLatin1;->canEncode(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1659
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "j":I
    .local v4, "j":I
    int-to-byte v5, v3

    aput-byte v5, v0, v2

    .line 1656
    .end local v3    # "c":C
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_a

    .line 1661
    .end local v4    # "j":I
    .restart local v2    # "j":I
    .restart local v3    # "c":C
    :cond_1d
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->inflate()V

    .line 1662
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {v4, v2, p2, v1, p4}, Ljava/lang/StringUTF16;->putCharsSB([BI[CII)V

    .line 1663
    return-void

    .line 1666
    .end local v0    # "val":[B
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "c":C
    :cond_26
    goto :goto_2c

    .line 1667
    :cond_27
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/StringUTF16;->putCharsSB([BI[CII)V

    .line 1669
    :goto_2c
    return-void
.end method

.method private final blacklist putStringAt(ILjava/lang/String;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "str"    # Ljava/lang/String;

    .line 1690
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->getCoder()B

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->coder()B

    move-result v1

    if-eq v0, v1, :cond_d

    .line 1691
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->inflate()V

    .line 1693
    :cond_d
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    iget-byte v1, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    invoke-virtual {p2, v0, p1, v1}, Ljava/lang/String;->fillBytes([BIB)V

    .line 1694
    return-void
.end method

.method private blacklist shift(II)V
    .registers 9
    .param p1, "offset"    # I
    .param p2, "n"    # I

    .line 1047
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    iget-byte v1, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    shl-int v1, p1, v1

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    add-int v3, p1, p2

    iget-byte v4, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    shl-int/2addr v3, v4

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v4, p1

    iget-byte v5, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    shl-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1049
    return-void
.end method


# virtual methods
.method public blacklist append(C)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "c"    # C

    .line 758
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 759
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {p1}, Ljava/lang/StringLatin1;->canEncode(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 760
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_33

    .line 762
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 763
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->inflate()V

    .line 765
    :cond_28
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v1, p1}, Ljava/lang/StringUTF16;->putCharSB([BII)V

    .line 767
    :goto_33
    return-object p0
.end method

.method public greylist-max-o append(D)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "d"    # D

    .line 859
    :try_start_0
    invoke-static {p1, p2, p0}, Ljdk/internal/math/DoubleToDecimal;->appendTo(DLjava/lang/Appendable;)Ljava/lang/Appendable;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 862
    nop

    .line 863
    return-object p0

    .line 860
    :catch_5
    move-exception v0

    .line 861
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public greylist-max-o append(F)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "f"    # F

    .line 836
    :try_start_0
    invoke-static {p1, p0}, Ljdk/internal/math/FloatToDecimal;->appendTo(FLjava/lang/Appendable;)Ljava/lang/Appendable;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 839
    nop

    .line 840
    return-object p0

    .line 837
    :catch_5
    move-exception v0

    .line 838
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public greylist-max-o append(I)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "i"    # I

    .line 783
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 784
    .local v0, "count":I
    invoke-static {p1}, Ljava/lang/Integer;->stringSize(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 785
    .local v1, "spaceNeeded":I
    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 786
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 787
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {p1, v1, v2}, Ljava/lang/Integer;->getChars(II[B)I

    goto :goto_1b

    .line 789
    :cond_16
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {p1, v0, v1, v2}, Ljava/lang/StringUTF16;->getChars(III[B)I

    .line 791
    :goto_1b
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 792
    return-object p0
.end method

.method public greylist-max-o append(J)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "l"    # J

    .line 808
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 809
    .local v0, "count":I
    invoke-static {p1, p2}, Ljava/lang/Long;->stringSize(J)I

    move-result v1

    add-int/2addr v1, v0

    .line 810
    .local v1, "spaceNeeded":I
    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 811
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 812
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Long;->getChars(JI[B)I

    goto :goto_1b

    .line 814
    :cond_16
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/StringUTF16;->getChars(JII[B)I

    .line 816
    :goto_1b
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 817
    return-object p0
.end method

.method greylist-max-o append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "asb"    # Ljava/lang/AbstractStringBuilder;

    .line 563
    if-nez p1, :cond_7

    .line 564
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->appendNull()Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 566
    :cond_7
    invoke-virtual {p1}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v0

    .line 567
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 568
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->getCoder()B

    move-result v1

    invoke-virtual {p1}, Ljava/lang/AbstractStringBuilder;->getCoder()B

    move-result v2

    if-eq v1, v2, :cond_1e

    .line 569
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->inflate()V

    .line 571
    :cond_1e
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-byte v3, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    invoke-virtual {p1, v1, v2, v3}, Ljava/lang/AbstractStringBuilder;->getBytes([BIB)V

    .line 572
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 573
    return-object p0
.end method

.method public blacklist append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 579
    if-nez p1, :cond_7

    .line 580
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->appendNull()Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 582
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 583
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 585
    :cond_13
    instance-of v0, p1, Ljava/lang/AbstractStringBuilder;

    if-eqz v0, :cond_1f

    .line 586
    move-object v0, p1

    check-cast v0, Ljava/lang/AbstractStringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 588
    :cond_1f
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 638
    if-nez p1, :cond_4

    .line 639
    const-string p1, "null"

    .line 641
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2, p3, v0}, Ljava/lang/AbstractStringBuilder;->checkRange(III)V

    .line 642
    sub-int v0, p3, p2

    .line 643
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 644
    invoke-direct {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->appendChars(Ljava/lang/CharSequence;II)V

    .line 645
    return-object p0
.end method

.method public greylist-max-o append(Ljava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 522
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 544
    if-nez p1, :cond_7

    .line 545
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->appendNull()Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 547
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 548
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 549
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-direct {p0, v1, p1}, Ljava/lang/AbstractStringBuilder;->putStringAt(ILjava/lang/String;)V

    .line 550
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 551
    return-object p0
.end method

.method public greylist-max-o append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 556
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o append(Z)Ljava/lang/AbstractStringBuilder;
    .registers 10
    .param p1, "b"    # Z

    .line 714
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-eqz p1, :cond_6

    const/4 v1, 0x4

    goto :goto_7

    :cond_6
    const/4 v1, 0x5

    :goto_7
    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 715
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 716
    .local v2, "count":I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 717
    .local v1, "val":[B
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 718
    const/16 v0, 0x65

    if-eqz p1, :cond_30

    .line 719
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .local v3, "count":I
    const/16 v4, 0x74

    aput-byte v4, v1, v2

    .line 720
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    const/16 v4, 0x72

    aput-byte v4, v1, v3

    .line 721
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .restart local v3    # "count":I
    const/16 v4, 0x75

    aput-byte v4, v1, v2

    .line 722
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    aput-byte v0, v1, v3

    goto :goto_6b

    .line 724
    :cond_30
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .restart local v3    # "count":I
    const/16 v4, 0x66

    aput-byte v4, v1, v2

    .line 725
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    const/16 v4, 0x61

    aput-byte v4, v1, v3

    .line 726
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .restart local v3    # "count":I
    const/16 v4, 0x6c

    aput-byte v4, v1, v2

    .line 727
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    const/16 v4, 0x73

    aput-byte v4, v1, v3

    .line 728
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .restart local v3    # "count":I
    aput-byte v0, v1, v2

    move v2, v3

    goto :goto_6b

    .line 731
    .end local v3    # "count":I
    .restart local v2    # "count":I
    :cond_4e
    if-eqz p1, :cond_5d

    .line 732
    const/16 v5, 0x75

    const/16 v6, 0x65

    const/16 v3, 0x74

    const/16 v4, 0x72

    invoke-static/range {v1 .. v6}, Ljava/lang/StringUTF16;->putCharsAt([BICCCC)I

    move-result v2

    goto :goto_6b

    .line 734
    :cond_5d
    const/16 v6, 0x73

    const/16 v7, 0x65

    const/16 v3, 0x66

    const/16 v4, 0x61

    const/16 v5, 0x6c

    invoke-static/range {v1 .. v7}, Ljava/lang/StringUTF16;->putCharsAt([BICCCCC)I

    move-result v2

    .line 737
    :goto_6b
    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 738
    return-object p0
.end method

.method public greylist-max-o append([C)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "str"    # [C

    .line 665
    array-length v0, p1

    .line 666
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 667
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/lang/AbstractStringBuilder;->appendChars([CII)V

    .line 668
    return-object p0
.end method

.method public greylist-max-o append([CII)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 694
    add-int v0, p2, p3

    .line 695
    .local v0, "end":I
    array-length v1, p1

    invoke-static {p2, v0, v1}, Ljava/lang/AbstractStringBuilder;->checkRange(III)V

    .line 696
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, p3

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 697
    invoke-direct {p0, p1, p2, v0}, Ljava/lang/AbstractStringBuilder;->appendChars([CII)V

    .line 698
    return-object p0
.end method

.method public bridge synthetic whitelist test-api append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o appendCodePoint(I)Ljava/lang/AbstractStringBuilder;
    .registers 3
    .param p1, "codePoint"    # I

    .line 914
    invoke-static {p1}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 915
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 917
    :cond_c
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->append([C)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o capacity()I
    .registers 3

    .line 146
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    array-length v0, v0

    iget-byte v1, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    shr-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api charAt(I)C
    .registers 3
    .param p1, "index"    # I

    .line 317
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, v0}, Ljava/lang/String;->checkIndex(II)V

    .line 318
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 319
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    return v0

    .line 321
    :cond_13
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {v0, p1}, Ljava/lang/StringUTF16;->charAt([BI)C

    move-result v0

    return v0
.end method

.method public whitelist test-api chars()Ljava/util/stream/IntStream;
    .registers 4

    .line 1566
    new-instance v0, Ljava/lang/AbstractStringBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava/lang/AbstractStringBuilder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/AbstractStringBuilder;)V

    const/16 v1, 0x4050

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o codePointAt(I)I
    .registers 5
    .param p1, "index"    # I

    .line 346
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 347
    .local v0, "count":I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 348
    .local v1, "value":[B
    invoke-static {p1, v0}, Ljava/lang/String;->checkIndex(II)V

    .line 349
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 350
    aget-byte v2, v1, p1

    and-int/lit16 v2, v2, 0xff

    return v2

    .line 352
    :cond_12
    invoke-static {v1, p1, v0}, Ljava/lang/StringUTF16;->codePointAtSB([BII)I

    move-result v2

    return v2
.end method

.method public greylist-max-o codePointBefore(I)I
    .registers 4
    .param p1, "index"    # I

    .line 377
    add-int/lit8 v0, p1, -0x1

    .line 378
    .local v0, "i":I
    if-ltz v0, :cond_1c

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v0, v1, :cond_1c

    .line 381
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 382
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    return v1

    .line 384
    :cond_15
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {v1, p1}, Ljava/lang/StringUTF16;->codePointBeforeSB([BI)I

    move-result v1

    return v1

    .line 379
    :cond_1c
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1
.end method

.method public greylist-max-o codePointCount(II)I
    .registers 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 408
    if-ltz p1, :cond_18

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_18

    if-gt p1, p2, :cond_18

    .line 411
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 412
    sub-int v0, p2, p1

    return v0

    .line 414
    :cond_11
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {v0, p1, p2}, Ljava/lang/StringUTF16;->codePointCountSB([BII)I

    move-result v0

    return v0

    .line 409
    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api codePoints()Ljava/util/stream/IntStream;
    .registers 4

    .line 1590
    new-instance v0, Ljava/lang/AbstractStringBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ljava/lang/AbstractStringBuilder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/AbstractStringBuilder;)V

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method blacklist compareTo(Ljava/lang/AbstractStringBuilder;)I
    .registers 8
    .param p1, "another"    # Ljava/lang/AbstractStringBuilder;

    .line 107
    if-ne p0, p1, :cond_4

    .line 108
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_4
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 112
    .local v0, "val1":[B
    iget-object v1, p1, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 113
    .local v1, "val2":[B
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 114
    .local v2, "count1":I
    iget v3, p1, Ljava/lang/AbstractStringBuilder;->count:I

    .line 116
    .local v3, "count2":I
    iget-byte v4, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    iget-byte v5, p1, Ljava/lang/AbstractStringBuilder;->coder:B

    if-ne v4, v5, :cond_22

    .line 117
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-static {v0, v1, v2, v3}, Ljava/lang/StringLatin1;->compareTo([B[BII)I

    move-result v4

    goto :goto_21

    .line 118
    :cond_1d
    invoke-static {v0, v1, v2, v3}, Ljava/lang/StringUTF16;->compareTo([B[BII)I

    move-result v4

    .line 117
    :goto_21
    return v4

    .line 120
    :cond_22
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-static {v0, v1, v2, v3}, Ljava/lang/StringLatin1;->compareToUTF16([B[BII)I

    move-result v4

    goto :goto_31

    .line 121
    :cond_2d
    invoke-static {v0, v1, v2, v3}, Ljava/lang/StringUTF16;->compareToLatin1([B[BII)I

    move-result v4

    .line 120
    :goto_31
    return v4
.end method

.method public greylist-max-o delete(II)Ljava/lang/AbstractStringBuilder;
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 881
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 882
    .local v0, "count":I
    if-le p2, v0, :cond_5

    .line 883
    move p2, v0

    .line 885
    :cond_5
    invoke-static {p1, p2, v0}, Ljava/lang/AbstractStringBuilder;->checkRangeSIOOBE(III)V

    .line 886
    sub-int v1, p2, p1

    .line 887
    .local v1, "len":I
    if-lez v1, :cond_14

    .line 888
    neg-int v2, v1

    invoke-direct {p0, p2, v2}, Ljava/lang/AbstractStringBuilder;->shift(II)V

    .line 889
    sub-int v2, v0, v1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 891
    :cond_14
    return-object p0
.end method

.method public greylist-max-o deleteCharAt(I)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "index"    # I

    .line 938
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, v0}, Ljava/lang/String;->checkIndex(II)V

    .line 939
    add-int/lit8 v0, p1, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/AbstractStringBuilder;->shift(II)V

    .line 940
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 941
    return-object p0
.end method

.method public greylist-max-o ensureCapacity(I)V
    .registers 2
    .param p1, "minimumCapacity"    # I

    .line 166
    if-lez p1, :cond_5

    .line 167
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 169
    :cond_5
    return-void
.end method

.method blacklist getBytes([BIB)V
    .registers 8
    .param p1, "dst"    # [B
    .param p2, "dstBegin"    # I
    .param p3, "coder"    # B

    .line 1621
    iget-byte v0, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    const/4 v1, 0x0

    if-ne v0, p3, :cond_10

    .line 1622
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    shl-int v2, p2, p3

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    shl-int/2addr v3, p3

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_17

    .line 1624
    :cond_10
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/StringLatin1;->inflate([BI[BII)V

    .line 1626
    :goto_17
    return-void
.end method

.method public greylist-max-o getChars(II[CI)V
    .registers 8
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    .line 474
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, p2, v0}, Ljava/lang/AbstractStringBuilder;->checkRangeSIOOBE(III)V

    .line 475
    sub-int v0, p2, p1

    .line 476
    .local v0, "n":I
    add-int v1, p4, v0

    array-length v2, p3

    invoke-static {p4, v1, v2}, Ljava/lang/AbstractStringBuilder;->checkRange(III)V

    .line 477
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 478
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {v1, p1, p2, p3, p4}, Ljava/lang/StringLatin1;->getChars([BII[CI)V

    goto :goto_1e

    .line 480
    :cond_19
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {v1, p1, p2, p3, p4}, Ljava/lang/StringUTF16;->getChars([BII[CI)V

    .line 482
    :goto_1e
    return-void
.end method

.method final blacklist getCoder()B
    .registers 2

    .line 1646
    iget-byte v0, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    return v0
.end method

.method final blacklist getValue()[B
    .registers 2

    .line 1610
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    return-object v0
.end method

.method public greylist-max-o indexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1441
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o indexOf(Ljava/lang/String;I)I
    .registers 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 1462
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    iget-byte v1, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v1, v2, p1, p2}, Ljava/lang/String;->indexOf([BBILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method blacklist initBytes([CII)V
    .registers 5
    .param p1, "value"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 1631
    invoke-static {p1, p2, p3}, Ljava/lang/StringUTF16;->compress([CII)[B

    move-result-object v0

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 1632
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    if-eqz v0, :cond_e

    .line 1633
    const/4 v0, 0x0

    iput-byte v0, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    .line 1634
    return-void

    .line 1637
    :cond_e
    const/4 v0, 0x1

    iput-byte v0, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    .line 1638
    invoke-static {p1, p2, p3}, Ljava/lang/StringUTF16;->toBytes([CII)[B

    move-result-object v0

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 1639
    return-void
.end method

.method public greylist-max-o insert(IC)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "offset"    # I
    .param p2, "c"    # C

    .line 1319
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, v0}, Ljava/lang/String;->checkOffset(II)V

    .line 1320
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 1321
    invoke-direct {p0, p1, v1}, Ljava/lang/AbstractStringBuilder;->shift(II)V

    .line 1322
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1323
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {p2}, Ljava/lang/StringLatin1;->canEncode(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1324
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    goto :goto_34

    .line 1326
    :cond_26
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1327
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->inflate()V

    .line 1329
    :cond_2f
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {v0, p1, p2}, Ljava/lang/StringUTF16;->putCharSB([BII)V

    .line 1331
    :goto_34
    return-object p0
.end method

.method public greylist-max-o insert(ID)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "offset"    # I
    .param p2, "d"    # D

    .line 1423
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o insert(IF)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "f"    # F

    .line 1400
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o insert(II)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "i"    # I

    .line 1354
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o insert(IJ)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "offset"    # I
    .param p2, "l"    # J

    .line 1377
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    .line 1207
    if-nez p2, :cond_4

    .line 1208
    const-string p2, "null"

    .line 1210
    :cond_4
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1211
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0

    .line 1213
    :cond_10
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .registers 7
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 1263
    if-nez p2, :cond_4

    .line 1264
    const-string p2, "null"

    .line 1266
    :cond_4
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, v0}, Ljava/lang/String;->checkOffset(II)V

    .line 1267
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p3, p4, v0}, Ljava/lang/AbstractStringBuilder;->checkRange(III)V

    .line 1268
    sub-int v0, p4, p3

    .line 1269
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 1270
    invoke-direct {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->shift(II)V

    .line 1271
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1272
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->putCharsAt(ILjava/lang/CharSequence;II)V

    .line 1273
    return-object p0
.end method

.method public greylist-max-o insert(ILjava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1104
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    .line 1139
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, v0}, Ljava/lang/String;->checkOffset(II)V

    .line 1140
    if-nez p2, :cond_9

    .line 1141
    const-string p2, "null"

    .line 1143
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1144
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 1145
    invoke-direct {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->shift(II)V

    .line 1146
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1147
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->putStringAt(ILjava/lang/String;)V

    .line 1148
    return-object p0
.end method

.method public greylist-max-o insert(IZ)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    .line 1296
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o insert(I[C)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .param p1, "offset"    # I
    .param p2, "str"    # [C

    .line 1176
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, v0}, Ljava/lang/String;->checkOffset(II)V

    .line 1177
    array-length v0, p2

    .line 1178
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 1179
    invoke-direct {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->shift(II)V

    .line 1180
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1181
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Ljava/lang/AbstractStringBuilder;->putCharsAt(I[CII)V

    .line 1182
    return-object p0
.end method

.method public greylist-max-o insert(I[CII)Ljava/lang/AbstractStringBuilder;
    .registers 7
    .param p1, "index"    # I
    .param p2, "str"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .line 1075
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, v0}, Ljava/lang/String;->checkOffset(II)V

    .line 1076
    add-int v0, p3, p4

    array-length v1, p2

    invoke-static {p3, v0, v1}, Ljava/lang/AbstractStringBuilder;->checkRangeSIOOBE(III)V

    .line 1077
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p4

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 1078
    invoke-direct {p0, p1, p4}, Ljava/lang/AbstractStringBuilder;->shift(II)V

    .line 1079
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p4

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1080
    add-int v0, p3, p4

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/AbstractStringBuilder;->putCharsAt(I[CII)V

    .line 1081
    return-object p0
.end method

.method final blacklist isLatin1()Z
    .registers 2

    .line 1650
    iget-byte v0, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1481
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o lastIndexOf(Ljava/lang/String;I)I
    .registers 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 1502
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    iget-byte v1, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v1, v2, p1, p2}, Ljava/lang/String;->lastIndexOf([BBILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api length()I
    .registers 2
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 135
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return v0
.end method

.method public greylist-max-o offsetByCodePoints(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    .line 437
    if-ltz p1, :cond_b

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_b

    .line 440
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0

    .line 438
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "str"    # Ljava/lang/String;

    .line 964
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 965
    .local v0, "count":I
    if-le p2, v0, :cond_5

    .line 966
    move p2, v0

    .line 968
    :cond_5
    invoke-static {p1, p2, v0}, Ljava/lang/AbstractStringBuilder;->checkRangeSIOOBE(III)V

    .line 969
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 970
    .local v1, "len":I
    add-int v2, v0, v1

    sub-int v3, p2, p1

    sub-int/2addr v2, v3

    .line 971
    .local v2, "newCount":I
    invoke-direct {p0, v2}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 972
    sub-int v3, v2, v0

    invoke-direct {p0, p2, v3}, Ljava/lang/AbstractStringBuilder;->shift(II)V

    .line 973
    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 974
    invoke-direct {p0, p1, p3}, Ljava/lang/AbstractStringBuilder;->putStringAt(ILjava/lang/String;)V

    .line 975
    return-object p0
.end method

.method public greylist-max-o reverse()Ljava/lang/AbstractStringBuilder;
    .registers 9

    .line 1528
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 1529
    .local v0, "val":[B
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 1530
    .local v1, "count":I
    iget-byte v2, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    .line 1531
    .local v2, "coder":I
    add-int/lit8 v3, v1, -0x1

    .line 1532
    .local v3, "n":I
    if-nez v2, :cond_1e

    .line 1533
    add-int/lit8 v4, v3, -0x1

    shr-int/lit8 v4, v4, 0x1

    .local v4, "j":I
    :goto_e
    if-ltz v4, :cond_1d

    .line 1534
    sub-int v5, v3, v4

    .line 1535
    .local v5, "k":I
    aget-byte v6, v0, v4

    .line 1536
    .local v6, "cj":B
    aget-byte v7, v0, v5

    aput-byte v7, v0, v4

    .line 1537
    aput-byte v6, v0, v5

    .line 1533
    .end local v5    # "k":I
    .end local v6    # "cj":B
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    .end local v4    # "j":I
    :cond_1d
    goto :goto_21

    .line 1540
    :cond_1e
    invoke-static {v0, v1}, Ljava/lang/StringUTF16;->reverse([BI)V

    .line 1542
    :goto_21
    return-object p0
.end method

.method public greylist-max-o setCharAt(IC)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .line 499
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, v0}, Ljava/lang/String;->checkIndex(II)V

    .line 500
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p2}, Ljava/lang/StringLatin1;->canEncode(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 501
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    goto :goto_25

    .line 503
    :cond_17
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 504
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;->inflate()V

    .line 506
    :cond_20
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {v0, p1, p2}, Ljava/lang/StringUTF16;->putCharSB([BII)V

    .line 508
    :goto_25
    return-void
.end method

.method public greylist-max-o setLength(I)V
    .registers 4
    .param p1, "newLength"    # I

    .line 284
    if-ltz p1, :cond_21

    .line 287
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    .line 288
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v0, p1, :cond_1e

    .line 289
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 290
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v1, p1}, Ljava/lang/StringLatin1;->fillNull([BII)V

    goto :goto_1e

    .line 292
    :cond_17
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v1, p1}, Ljava/lang/StringUTF16;->fillNull([BII)V

    .line 295
    :cond_1e
    :goto_1e
    iput p1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 296
    return-void

    .line 285
    :cond_21
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1021
    invoke-virtual {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o substring(I)Ljava/lang/String;
    .registers 3
    .param p1, "start"    # I

    .line 990
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o substring(II)Ljava/lang/String;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1039
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, p2, v0}, Ljava/lang/AbstractStringBuilder;->checkRangeSIOOBE(III)V

    .line 1040
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->isLatin1()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1041
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    sub-int v1, p2, p1

    invoke-static {v0, p1, v1}, Ljava/lang/StringLatin1;->newString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1043
    :cond_14
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    sub-int v1, p2, p1

    invoke-static {v0, p1, v1}, Ljava/lang/StringUTF16;->newString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method

.method public greylist-max-o trimToSize()V
    .registers 3

    .line 252
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-byte v1, p0, Ljava/lang/AbstractStringBuilder;->coder:B

    shl-int/2addr v0, v1

    .line 253
    .local v0, "length":I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 254
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[B

    .line 256
    :cond_12
    return-void
.end method
