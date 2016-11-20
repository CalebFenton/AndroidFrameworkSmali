.class public final Ljava/lang/String;
.super Ljava/lang/Object;
.source "String.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/String$CaseInsensitiveComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/CharSequence;"
    }
.end annotation


# static fields
.field public static final CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x5f0f5bc785c44cbeL


# instance fields
.field private final count:I

.field private hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 141
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@3
    .line 140
    sput-object v0, Ljava/lang/String;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@5
    .line 1097
    new-instance v0, Ljava/lang/String$CaseInsensitiveComparator;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-direct {v0, v1}, Ljava/lang/String$CaseInsensitiveComparator;-><init>(Ljava/lang/String$CaseInsensitiveComparator;)V

    #@b
    .line 1096
    sput-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    #@d
    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string/jumbo v1, "Use StringFactory instead."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method constructor <init>(II[C)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "value"    # [C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 529
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string/jumbo v1, "Use StringFactory instead."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "original"    # Ljava/lang/String;

    #@0
    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string/jumbo v1, "Use StringFactory instead."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 499
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string/jumbo v1, "Use StringFactory instead."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 518
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string/jumbo v1, "Use StringFactory instead."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 486
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string/jumbo v1, "Use StringFactory instead."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "ascii"    # [B
    .param p2, "hibyte"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 312
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string/jumbo v1, "Use StringFactory instead."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 466
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string/jumbo v1, "Use StringFactory instead."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public constructor <init>([BIII)V
    .locals 2
    .param p1, "ascii"    # [B
    .param p2, "hibyte"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string/jumbo v1, "Use StringFactory instead."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public constructor <init>([BIILjava/lang/String;)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 350
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string/jumbo v1, "Use StringFactory instead."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public constructor <init>([BIILjava/nio/charset/Charset;)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 384
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string/jumbo v1, "Use StringFactory instead."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 412
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string/jumbo v1, "Use StringFactory instead."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public constructor <init>([BLjava/nio/charset/Charset;)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 436
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string/jumbo v1, "Use StringFactory instead."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public constructor <init>([C)V
    .locals 2
    .param p1, "value"    # [C

    #@0
    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string/jumbo v1, "Use StringFactory instead."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "value"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 201
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string/jumbo v1, "Use StringFactory instead."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public constructor <init>([III)V
    .locals 2
    .param p1, "codePoints"    # [I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string/jumbo v1, "Use StringFactory instead."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public static copyValueOf([C)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [C

    #@0
    .prologue
    .line 2749
    invoke-static {p0}, Ljava/lang/StringFactory;->newStringFromChars([C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static copyValueOf([CII)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [C
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 2737
    invoke-static {p0, p1, p2}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private native fastIndexOf(II)I
.end method

.method private native fastSubstring(II)Ljava/lang/String;
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 2626
    new-instance v0, Ljava/util/Formatter;

    #@2
    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    #@5
    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 2670
    new-instance v0, Ljava/util/Formatter;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    #@5
    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method static indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1631
    iget v7, p0, Ljava/lang/String;->count:I

    #@4
    if-lt p2, v7, :cond_1

    #@6
    .line 1632
    iget v7, p1, Ljava/lang/String;->count:I

    #@8
    if-nez v7, :cond_0

    #@a
    iget v6, p0, Ljava/lang/String;->count:I

    #@c
    :cond_0
    return v6

    #@d
    .line 1634
    :cond_1
    if-gez p2, :cond_2

    #@f
    .line 1635
    const/4 p2, 0x0

    #@10
    .line 1637
    :cond_2
    iget v7, p1, Ljava/lang/String;->count:I

    #@12
    if-nez v7, :cond_3

    #@14
    .line 1638
    return p2

    #@15
    .line 1641
    :cond_3
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v1

    #@19
    .line 1642
    .local v1, "first":C
    iget v7, p0, Ljava/lang/String;->count:I

    #@1b
    iget v8, p1, Ljava/lang/String;->count:I

    #@1d
    sub-int v5, v7, v8

    #@1f
    .line 1644
    .local v5, "max":I
    move v2, p2

    #@20
    .local v2, "i":I
    :goto_0
    if-gt v2, v5, :cond_8

    #@22
    .line 1646
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v7

    #@26
    if-eq v7, v1, :cond_5

    #@28
    .line 1647
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@2a
    if-gt v2, v5, :cond_5

    #@2c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@2f
    move-result v7

    #@30
    if-ne v7, v1, :cond_4

    #@32
    .line 1651
    :cond_5
    if-gt v2, v5, :cond_7

    #@34
    .line 1652
    add-int/lit8 v3, v2, 0x1

    #@36
    .line 1653
    .local v3, "j":I
    iget v7, p1, Ljava/lang/String;->count:I

    #@38
    add-int/2addr v7, v3

    #@39
    add-int/lit8 v0, v7, -0x1

    #@3b
    .line 1654
    .local v0, "end":I
    const/4 v4, 0x1

    #@3c
    .local v4, "k":I
    :goto_1
    if-ge v3, v0, :cond_6

    #@3e
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@41
    move-result v7

    #@42
    .line 1655
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@45
    move-result v8

    #@46
    .line 1654
    if-ne v7, v8, :cond_6

    #@48
    .line 1655
    add-int/lit8 v3, v3, 0x1

    #@4a
    add-int/lit8 v4, v4, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 1657
    :cond_6
    if-ne v3, v0, :cond_7

    #@4f
    .line 1659
    return v2

    #@50
    .line 1644
    .end local v0    # "end":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@52
    goto :goto_0

    #@53
    .line 1663
    :cond_8
    return v6
.end method

.method static indexOf([CII[CIII)I
    .locals 9
    .param p0, "source"    # [C
    .param p1, "sourceOffset"    # I
    .param p2, "sourceCount"    # I
    .param p3, "target"    # [C
    .param p4, "targetOffset"    # I
    .param p5, "targetCount"    # I
    .param p6, "fromIndex"    # I

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 1682
    if-lt p6, p2, :cond_1

    #@3
    .line 1683
    if-nez p5, :cond_0

    #@5
    .end local p2    # "sourceCount":I
    :goto_0
    return p2

    #@6
    .restart local p2    # "sourceCount":I
    :cond_0
    move p2, v6

    #@7
    goto :goto_0

    #@8
    .line 1685
    :cond_1
    if-gez p6, :cond_2

    #@a
    .line 1686
    const/4 p6, 0x0

    #@b
    .line 1688
    :cond_2
    if-nez p5, :cond_3

    #@d
    .line 1689
    return p6

    #@e
    .line 1692
    :cond_3
    aget-char v1, p3, p4

    #@10
    .line 1693
    .local v1, "first":C
    sub-int v7, p2, p5

    #@12
    add-int v5, p1, v7

    #@14
    .line 1695
    .local v5, "max":I
    add-int v2, p1, p6

    #@16
    .local v2, "i":I
    :goto_1
    if-gt v2, v5, :cond_8

    #@18
    .line 1697
    aget-char v7, p0, v2

    #@1a
    if-eq v7, v1, :cond_5

    #@1c
    .line 1698
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@1e
    if-gt v2, v5, :cond_5

    #@20
    aget-char v7, p0, v2

    #@22
    if-ne v7, v1, :cond_4

    #@24
    .line 1702
    :cond_5
    if-gt v2, v5, :cond_7

    #@26
    .line 1703
    add-int/lit8 v3, v2, 0x1

    #@28
    .line 1704
    .local v3, "j":I
    add-int v7, v3, p5

    #@2a
    add-int/lit8 v0, v7, -0x1

    #@2c
    .line 1705
    .local v0, "end":I
    add-int/lit8 v4, p4, 0x1

    #@2e
    .local v4, "k":I
    :goto_2
    if-ge v3, v0, :cond_6

    #@30
    aget-char v7, p0, v3

    #@32
    .line 1706
    aget-char v8, p3, v4

    #@34
    .line 1705
    if-ne v7, v8, :cond_6

    #@36
    .line 1706
    add-int/lit8 v3, v3, 0x1

    #@38
    add-int/lit8 v4, v4, 0x1

    #@3a
    goto :goto_2

    #@3b
    .line 1708
    :cond_6
    if-ne v3, v0, :cond_7

    #@3d
    .line 1710
    sub-int v6, v2, p1

    #@3f
    return v6

    #@40
    .line 1695
    .end local v0    # "end":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_1

    #@43
    .line 1714
    :cond_8
    return v6
.end method

.method private indexOfSupplementary(II)I
    .locals 5
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    .line 1474
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_1

    #@6
    .line 1475
    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    #@9
    move-result v0

    #@a
    .line 1476
    .local v0, "hi":C
    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    #@d
    move-result v2

    #@e
    .line 1477
    .local v2, "lo":C
    iget v4, p0, Ljava/lang/String;->count:I

    #@10
    add-int/lit8 v3, v4, -0x1

    #@12
    .line 1478
    .local v3, "max":I
    move v1, p2

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@15
    .line 1479
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v4

    #@19
    if-ne v4, v0, :cond_0

    #@1b
    add-int/lit8 v4, v1, 0x1

    #@1d
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v4

    #@21
    if-ne v4, v2, :cond_0

    #@23
    .line 1480
    return v1

    #@24
    .line 1478
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1484
    .end local v0    # "hi":C
    .end local v1    # "i":I
    .end local v2    # "lo":C
    .end local v3    # "max":I
    :cond_1
    const/4 v4, -0x1

    #@28
    return v4
.end method

.method static lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 13
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    const/4 v12, -0x1

    #@1
    .line 1776
    iget v10, p0, Ljava/lang/String;->count:I

    #@3
    iget v11, p1, Ljava/lang/String;->count:I

    #@5
    sub-int v6, v10, v11

    #@7
    .line 1777
    .local v6, "rightIndex":I
    if-gez p2, :cond_0

    #@9
    .line 1778
    return v12

    #@a
    .line 1780
    :cond_0
    if-le p2, v6, :cond_1

    #@c
    .line 1781
    move p2, v6

    #@d
    .line 1784
    :cond_1
    iget v10, p1, Ljava/lang/String;->count:I

    #@f
    if-nez v10, :cond_2

    #@11
    .line 1785
    return p2

    #@12
    .line 1788
    :cond_2
    iget v10, p1, Ljava/lang/String;->count:I

    #@14
    add-int/lit8 v9, v10, -0x1

    #@16
    .line 1789
    .local v9, "strLastIndex":I
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v8

    #@1a
    .line 1790
    .local v8, "strLastChar":C
    iget v10, p1, Ljava/lang/String;->count:I

    #@1c
    add-int/lit8 v5, v10, -0x1

    #@1e
    .line 1791
    .local v5, "min":I
    add-int v0, v5, p2

    #@20
    .line 1795
    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_3

    #@22
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v10

    #@26
    if-eq v10, v8, :cond_3

    #@28
    .line 1796
    add-int/lit8 v0, v0, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1798
    :cond_3
    if-ge v0, v5, :cond_4

    #@2d
    .line 1799
    return v12

    #@2e
    .line 1801
    :cond_4
    add-int/lit8 v1, v0, -0x1

    #@30
    .line 1802
    .local v1, "j":I
    iget v10, p1, Ljava/lang/String;->count:I

    #@32
    add-int/lit8 v10, v10, -0x1

    #@34
    sub-int v7, v1, v10

    #@36
    .line 1803
    .local v7, "start":I
    add-int/lit8 v3, v9, -0x1

    #@38
    .local v3, "k":I
    move v4, v3

    #@39
    .end local v3    # "k":I
    .local v4, "k":I
    move v2, v1

    #@3a
    .line 1805
    .end local v1    # "j":I
    .local v2, "j":I
    :goto_1
    if-le v2, v7, :cond_6

    #@3c
    .line 1806
    add-int/lit8 v1, v2, -0x1

    #@3e
    .end local v2    # "j":I
    .restart local v1    # "j":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@41
    move-result v10

    #@42
    add-int/lit8 v3, v4, -0x1

    #@44
    .end local v4    # "k":I
    .restart local v3    # "k":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@47
    move-result v11

    #@48
    if-eq v10, v11, :cond_5

    #@4a
    .line 1807
    add-int/lit8 v0, v0, -0x1

    #@4c
    .line 1808
    goto :goto_0

    #@4d
    :cond_5
    move v4, v3

    #@4e
    .end local v3    # "k":I
    .restart local v4    # "k":I
    move v2, v1

    #@4f
    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_1

    #@50
    .line 1811
    :cond_6
    add-int/lit8 v10, v7, 0x1

    #@52
    return v10
.end method

.method static lastIndexOf([CII[CIII)I
    .locals 13
    .param p0, "source"    # [C
    .param p1, "sourceOffset"    # I
    .param p2, "sourceCount"    # I
    .param p3, "target"    # [C
    .param p4, "targetOffset"    # I
    .param p5, "targetCount"    # I
    .param p6, "fromIndex"    # I

    #@0
    .prologue
    .line 1835
    sub-int v7, p2, p5

    #@2
    .line 1836
    .local v7, "rightIndex":I
    if-gez p6, :cond_0

    #@4
    .line 1837
    const/4 v11, -0x1

    #@5
    return v11

    #@6
    .line 1839
    :cond_0
    move/from16 v0, p6

    #@8
    if-le v0, v7, :cond_1

    #@a
    .line 1840
    move/from16 p6, v7

    #@c
    .line 1843
    :cond_1
    if-nez p5, :cond_2

    #@e
    .line 1844
    return p6

    #@f
    .line 1847
    :cond_2
    add-int v11, p4, p5

    #@11
    add-int/lit8 v10, v11, -0x1

    #@13
    .line 1848
    .local v10, "strLastIndex":I
    aget-char v9, p3, v10

    #@15
    .line 1849
    .local v9, "strLastChar":C
    add-int v11, p1, p5

    #@17
    add-int/lit8 v6, v11, -0x1

    #@19
    .line 1850
    .local v6, "min":I
    add-int v1, v6, p6

    #@1b
    .line 1854
    .local v1, "i":I
    :goto_0
    if-lt v1, v6, :cond_3

    #@1d
    aget-char v11, p0, v1

    #@1f
    if-eq v11, v9, :cond_3

    #@21
    .line 1855
    add-int/lit8 v1, v1, -0x1

    #@23
    goto :goto_0

    #@24
    .line 1857
    :cond_3
    if-ge v1, v6, :cond_4

    #@26
    .line 1858
    const/4 v11, -0x1

    #@27
    return v11

    #@28
    .line 1860
    :cond_4
    add-int/lit8 v2, v1, -0x1

    #@2a
    .line 1861
    .local v2, "j":I
    add-int/lit8 v11, p5, -0x1

    #@2c
    sub-int v8, v2, v11

    #@2e
    .line 1862
    .local v8, "start":I
    add-int/lit8 v4, v10, -0x1

    #@30
    .local v4, "k":I
    move v5, v4

    #@31
    .end local v4    # "k":I
    .local v5, "k":I
    move v3, v2

    #@32
    .line 1864
    .end local v2    # "j":I
    .local v3, "j":I
    :goto_1
    if-le v3, v8, :cond_6

    #@34
    .line 1865
    add-int/lit8 v2, v3, -0x1

    #@36
    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget-char v11, p0, v3

    #@38
    add-int/lit8 v4, v5, -0x1

    #@3a
    .end local v5    # "k":I
    .restart local v4    # "k":I
    aget-char v12, p3, v5

    #@3c
    if-eq v11, v12, :cond_5

    #@3e
    .line 1866
    add-int/lit8 v1, v1, -0x1

    #@40
    .line 1867
    goto :goto_0

    #@41
    :cond_5
    move v5, v4

    #@42
    .end local v4    # "k":I
    .restart local v5    # "k":I
    move v3, v2

    #@43
    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_1

    #@44
    .line 1870
    :cond_6
    sub-int v11, v8, p1

    #@46
    add-int/lit8 v11, v11, 0x1

    #@48
    return v11
.end method

.method private lastIndexOfSupplementary(II)I
    .locals 4
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    .line 1568
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_1

    #@6
    .line 1569
    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    #@9
    move-result v0

    #@a
    .line 1570
    .local v0, "hi":C
    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    #@d
    move-result v2

    #@e
    .line 1571
    .local v2, "lo":C
    iget v3, p0, Ljava/lang/String;->count:I

    #@10
    add-int/lit8 v3, v3, -0x2

    #@12
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    #@15
    move-result v1

    #@16
    .line 1572
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@18
    .line 1573
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v3

    #@1c
    if-ne v3, v0, :cond_0

    #@1e
    add-int/lit8 v3, v1, 0x1

    #@20
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@23
    move-result v3

    #@24
    if-ne v3, v2, :cond_0

    #@26
    .line 1574
    return v1

    #@27
    .line 1572
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 1578
    .end local v0    # "hi":C
    .end local v1    # "i":I
    .end local v2    # "lo":C
    :cond_1
    const/4 v3, -0x1

    #@2b
    return v3
.end method

.method public static valueOf(C)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2773
    new-array v0, v2, [C

    #@4
    aput-char p0, v0, v1

    #@6
    invoke-static {v1, v2, v0}, Ljava/lang/StringFactory;->newStringFromChars(II[C)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static valueOf(D)Ljava/lang/String;
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 2829
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/String;
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 2815
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 2787
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/String;
    .locals 2
    .param p0, "l"    # J

    #@0
    .prologue
    .line 2801
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2683
    if-nez p0, :cond_0

    #@2
    const-string/jumbo v0, "null"

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    goto :goto_0
.end method

.method public static valueOf(Z)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # Z

    #@0
    .prologue
    .line 2761
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v0, "true"

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    const-string/jumbo v0, "false"

    #@9
    goto :goto_0
.end method

.method public static valueOf([C)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [C

    #@0
    .prologue
    .line 2697
    invoke-static {p0}, Ljava/lang/StringFactory;->newStringFromChars([C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static valueOf([CII)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [C
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 2722
    invoke-static {p0, p1, p2}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method


# virtual methods
.method public native charAt(I)C
.end method

.method public codePointAt(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 601
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/lang/String;->count:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 602
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@8
    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@b
    throw v0

    #@c
    .line 604
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public codePointBefore(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 630
    add-int/lit8 v0, p1, -0x1

    #@2
    .line 631
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@4
    iget v1, p0, Ljava/lang/String;->count:I

    #@6
    if-lt v0, v1, :cond_1

    #@8
    .line 632
    :cond_0
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    #@a
    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@d
    throw v1

    #@e
    .line 634
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@11
    move-result v1

    #@12
    return v1
.end method

.method public codePointCount(II)I
    .locals 1
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    #@0
    .prologue
    .line 659
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/lang/String;->count:I

    #@4
    if-le p2, v0, :cond_1

    #@6
    .line 660
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    .line 659
    :cond_1
    if-gt p1, p2, :cond_0

    #@e
    .line 662
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "anotherString"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1082
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "anotherString":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public native compareTo(Ljava/lang/String;)I
.end method

.method public compareToIgnoreCase(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1148
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    #@2
    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public native concat(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2078
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    const/4 v1, -0x1

    #@9
    if-le v0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .locals 8
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 978
    iget v4, p0, Ljava/lang/String;->count:I

    #@4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v5

    #@8
    if-eq v4, v5, :cond_0

    #@a
    .line 979
    return v6

    #@b
    .line 981
    :cond_0
    instance-of v4, p1, Ljava/lang/AbstractStringBuilder;

    #@d
    if-eqz v4, :cond_3

    #@f
    .line 982
    check-cast p1, Ljava/lang/AbstractStringBuilder;

    #@11
    .end local p1    # "cs":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Ljava/lang/AbstractStringBuilder;->getValue()[C

    #@14
    move-result-object v3

    #@15
    .line 983
    .local v3, "v2":[C
    const/4 v0, 0x0

    #@16
    .line 984
    .local v0, "i":I
    iget v1, p0, Ljava/lang/String;->count:I

    #@18
    .local v1, "n":I
    move v2, v1

    #@19
    .line 985
    .end local v1    # "n":I
    .local v2, "n":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    #@1b
    .end local v2    # "n":I
    .restart local v1    # "n":I
    if-eqz v2, :cond_2

    #@1d
    .line 986
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v4

    #@21
    aget-char v5, v3, v0

    #@23
    if-eq v4, v5, :cond_1

    #@25
    .line 987
    return v6

    #@26
    .line 988
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@28
    move v2, v1

    #@29
    .end local v1    # "n":I
    .restart local v2    # "n":I
    goto :goto_0

    #@2a
    .line 990
    .end local v2    # "n":I
    .restart local v1    # "n":I
    :cond_2
    return v7

    #@2b
    .line 993
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v3    # "v2":[C
    .restart local p1    # "cs":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_4

    #@31
    .line 994
    return v7

    #@32
    .line 996
    :cond_4
    const/4 v0, 0x0

    #@33
    .line 997
    .restart local v0    # "i":I
    iget v1, p0, Ljava/lang/String;->count:I

    #@35
    .restart local v1    # "n":I
    move v2, v1

    #@36
    .line 998
    .end local v1    # "n":I
    .restart local v2    # "n":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    #@38
    .end local v2    # "n":I
    .restart local v1    # "n":I
    if-eqz v2, :cond_6

    #@3a
    .line 999
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@3d
    move-result v4

    #@3e
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@41
    move-result v5

    #@42
    if-eq v4, v5, :cond_5

    #@44
    .line 1000
    return v6

    #@45
    .line 1001
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@47
    move v2, v1

    #@48
    .end local v1    # "n":I
    .restart local v2    # "n":I
    goto :goto_1

    #@49
    .line 1003
    .end local v2    # "n":I
    .restart local v1    # "n":I
    :cond_6
    return v7
.end method

.method public contentEquals(Ljava/lang/StringBuffer;)Z
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 958
    monitor-enter p1

    #@1
    .line 959
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p1

    #@6
    return v0

    #@7
    .line 958
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p1

    #@9
    throw v0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 2
    .param p1, "suffix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1351
    iget v0, p0, Ljava/lang/String;->count:I

    #@2
    iget v1, p1, Ljava/lang/String;->count:I

    #@4
    sub-int/2addr v0, v1

    #@5
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "anObject"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 924
    if-ne p0, p1, :cond_0

    #@4
    .line 925
    return v7

    #@5
    .line 927
    :cond_0
    instance-of v4, p1, Ljava/lang/String;

    #@7
    if-eqz v4, :cond_3

    #@9
    move-object v0, p1

    #@a
    .line 928
    check-cast v0, Ljava/lang/String;

    #@c
    .line 929
    .local v0, "anotherString":Ljava/lang/String;
    iget v2, p0, Ljava/lang/String;->count:I

    #@e
    .line 930
    .local v2, "n":I
    iget v4, v0, Ljava/lang/String;->count:I

    #@10
    if-ne v2, v4, :cond_3

    #@12
    .line 931
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    move v3, v2

    #@14
    .line 932
    .end local v2    # "n":I
    .local v3, "n":I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    #@16
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v3, :cond_2

    #@18
    .line 933
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v4

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v5

    #@20
    if-eq v4, v5, :cond_1

    #@22
    .line 934
    return v6

    #@23
    .line 935
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@25
    move v3, v2

    #@26
    .end local v2    # "n":I
    .restart local v3    # "n":I
    goto :goto_0

    #@27
    .line 937
    .end local v3    # "n":I
    .restart local v2    # "n":I
    :cond_2
    return v7

    #@28
    .line 940
    .end local v0    # "anotherString":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_3
    return v6
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 6
    .param p1, "anotherString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1035
    if-ne p0, p1, :cond_0

    #@4
    :goto_0
    return v1

    #@5
    .line 1036
    :cond_0
    if-eqz p1, :cond_1

    #@7
    .line 1037
    iget v0, p1, Ljava/lang/String;->count:I

    #@9
    iget v3, p0, Ljava/lang/String;->count:I

    #@b
    if-ne v0, v3, :cond_1

    #@d
    .line 1038
    iget v5, p0, Ljava/lang/String;->count:I

    #@f
    move-object v0, p0

    #@10
    move-object v3, p1

    #@11
    move v4, v2

    #@12
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@15
    move-result v1

    #@16
    goto :goto_0

    #@17
    :cond_1
    move v1, v2

    #@18
    .line 1036
    goto :goto_0
.end method

.method public getBytes(II[BI)V
    .locals 7
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [B
    .param p4, "dstBegin"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 810
    if-gez p1, :cond_0

    #@2
    .line 811
    new-instance v5, Ljava/lang/StringIndexOutOfBoundsException;

    #@4
    invoke-direct {v5, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    #@7
    throw v5

    #@8
    .line 813
    :cond_0
    iget v5, p0, Ljava/lang/String;->count:I

    #@a
    if-le p2, v5, :cond_1

    #@c
    .line 814
    new-instance v5, Ljava/lang/StringIndexOutOfBoundsException;

    #@e
    invoke-direct {v5, p0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    #@11
    throw v5

    #@12
    .line 816
    :cond_1
    if-le p1, p2, :cond_2

    #@14
    .line 817
    new-instance v5, Ljava/lang/StringIndexOutOfBoundsException;

    #@16
    sub-int v6, p2, p1

    #@18
    invoke-direct {v5, p0, v6}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    #@1b
    throw v5

    #@1c
    .line 820
    :cond_2
    move v2, p4

    #@1d
    .line 821
    .local v2, "j":I
    move v4, p2

    #@1e
    .line 822
    .local v4, "n":I
    move v0, p1

    #@1f
    .local v0, "i":I
    move v1, v0

    #@20
    .end local v0    # "i":I
    .local v1, "i":I
    move v3, v2

    #@21
    .line 824
    .end local v2    # "j":I
    .local v3, "j":I
    :goto_0
    if-ge v1, p2, :cond_3

    #@23
    .line 825
    add-int/lit8 v2, v3, 0x1

    #@25
    .end local v3    # "j":I
    .restart local v2    # "j":I
    add-int/lit8 v0, v1, 0x1

    #@27
    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v5

    #@2b
    int-to-byte v5, v5

    #@2c
    aput-byte v5, p3, v3

    #@2e
    move v1, v0

    #@2f
    .end local v0    # "i":I
    .restart local v1    # "i":I
    move v3, v2

    #@30
    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    #@31
    .line 809
    :cond_3
    return-void
.end method

.method public getBytes()[B
    .locals 1

    #@0
    .prologue
    .line 905
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 851
    invoke-static {p1}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getBytes(Ljava/nio/charset/Charset;)[B
    .locals 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 873
    if-nez p1, :cond_0

    #@3
    .line 874
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "charset == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 877
    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 878
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "UTF-8"

    #@13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 879
    iget v1, p0, Ljava/lang/String;->count:I

    #@1b
    invoke-static {p0, v2, v1}, Llibcore/util/CharsetUtils;->toUtf8Bytes(Ljava/lang/String;II)[B

    #@1e
    move-result-object v1

    #@1f
    return-object v1

    #@20
    .line 880
    :cond_1
    const-string/jumbo v1, "ISO-8859-1"

    #@23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 881
    iget v1, p0, Ljava/lang/String;->count:I

    #@2b
    invoke-static {p0, v2, v1}, Llibcore/util/CharsetUtils;->toIsoLatin1Bytes(Ljava/lang/String;II)[B

    #@2e
    move-result-object v1

    #@2f
    return-object v1

    #@30
    .line 882
    :cond_2
    const-string/jumbo v1, "US-ASCII"

    #@33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_3

    #@39
    .line 883
    iget v1, p0, Ljava/lang/String;->count:I

    #@3b
    invoke-static {p0, v2, v1}, Llibcore/util/CharsetUtils;->toAsciiBytes(Ljava/lang/String;II)[B

    #@3e
    move-result-object v1

    #@3f
    return-object v1

    #@40
    .line 884
    :cond_3
    const-string/jumbo v1, "UTF-16BE"

    #@43
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_4

    #@49
    .line 885
    iget v1, p0, Ljava/lang/String;->count:I

    #@4b
    invoke-static {p0, v2, v1}, Llibcore/util/CharsetUtils;->toBigEndianUtf16Bytes(Ljava/lang/String;II)[B

    #@4e
    move-result-object v1

    #@4f
    return-object v1

    #@50
    .line 888
    :cond_4
    invoke-static {p1, p0}, Ljava/lang/StringCoding;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    #@53
    move-result-object v1

    #@54
    return-object v1
.end method

.method public getChars(II[CI)V
    .locals 4
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    #@0
    .prologue
    .line 723
    if-nez p3, :cond_0

    #@2
    .line 724
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "dst == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 727
    :cond_0
    if-gez p1, :cond_1

    #@d
    .line 728
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    #@f
    invoke-direct {v1, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    #@12
    throw v1

    #@13
    .line 730
    :cond_1
    iget v1, p0, Ljava/lang/String;->count:I

    #@15
    if-le p2, v1, :cond_2

    #@17
    .line 731
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    #@19
    invoke-direct {v1, p0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    #@1c
    throw v1

    #@1d
    .line 734
    :cond_2
    sub-int v0, p2, p1

    #@1f
    .line 735
    .local v0, "n":I
    if-ge p2, p1, :cond_3

    #@21
    .line 736
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    #@23
    invoke-direct {v1, p0, p1, v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    #@26
    throw v1

    #@27
    .line 739
    :cond_3
    if-gez p4, :cond_4

    #@29
    .line 740
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@2b
    new-instance v2, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v3, "dstBegin < 0. dstBegin="

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@42
    throw v1

    #@43
    .line 744
    :cond_4
    array-length v1, p3

    #@44
    if-le p4, v1, :cond_5

    #@46
    .line 745
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@48
    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v3, "dstBegin > dst.length. dstBegin="

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    const-string/jumbo v3, ", dst.length="

    #@5b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    array-length v3, p3

    #@60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v2

    #@68
    .line 745
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v1

    #@6c
    .line 748
    :cond_5
    array-length v1, p3

    #@6d
    sub-int/2addr v1, p4

    #@6e
    if-le v0, v1, :cond_6

    #@70
    .line 749
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@72
    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v3, "n > dst.length - dstBegin. n="

    #@7a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@81
    move-result-object v2

    #@82
    const-string/jumbo v3, ", dst.length="

    #@85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    array-length v3, p3

    #@8a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v2

    #@8e
    .line 751
    const-string/jumbo v3, "dstBegin="

    #@91
    .line 750
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v2

    #@95
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@98
    move-result-object v2

    #@99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v2

    #@9d
    .line 749
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@a0
    throw v1

    #@a1
    .line 754
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    #@a4
    .line 722
    return-void
.end method

.method native getCharsNoCheck(II[CI)V
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 1368
    iget v0, p0, Ljava/lang/String;->hash:I

    #@2
    .line 1369
    .local v0, "h":I
    if-nez v0, :cond_1

    #@4
    iget v2, p0, Ljava/lang/String;->count:I

    #@6
    if-lez v2, :cond_1

    #@8
    .line 1370
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljava/lang/String;->count:I

    #@b
    if-ge v1, v2, :cond_0

    #@d
    .line 1371
    mul-int/lit8 v2, v0, 0x1f

    #@f
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v3

    #@13
    add-int v0, v2, v3

    #@15
    .line 1370
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1373
    :cond_0
    iput v0, p0, Ljava/lang/String;->hash:I

    #@1a
    .line 1375
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public indexOf(I)I
    .locals 1
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 1403
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public indexOf(II)I
    .locals 4
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1446
    iget v1, p0, Ljava/lang/String;->count:I

    #@3
    .line 1447
    .local v1, "max":I
    if-gez p2, :cond_1

    #@5
    .line 1448
    const/4 p2, 0x0

    #@6
    .line 1454
    :cond_0
    const/high16 v2, 0x10000

    #@8
    if-ge p1, v2, :cond_4

    #@a
    .line 1457
    move v0, p2

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@d
    .line 1458
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v2

    #@11
    if-ne v2, p1, :cond_2

    #@13
    .line 1459
    return v0

    #@14
    .line 1449
    .end local v0    # "i":I
    :cond_1
    if-lt p2, v1, :cond_0

    #@16
    .line 1451
    return v3

    #@17
    .line 1457
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1462
    :cond_3
    return v3

    #@1b
    .line 1464
    .end local v0    # "i":I
    :cond_4
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->indexOfSupplementary(II)I

    #@1e
    move-result v2

    #@1f
    return v2
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1596
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    .line 1616
    invoke-static {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public native intern()Ljava/lang/String;
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 553
    iget v1, p0, Ljava/lang/String;->count:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public lastIndexOf(I)I
    .locals 1
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 1511
    iget v0, p0, Ljava/lang/String;->count:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public lastIndexOf(II)I
    .locals 2
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    .line 1549
    const/high16 v1, 0x10000

    #@2
    if-ge p1, v1, :cond_2

    #@4
    .line 1552
    iget v1, p0, Ljava/lang/String;->count:I

    #@6
    add-int/lit8 v1, v1, -0x1

    #@8
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v0

    #@c
    .line 1553
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@e
    .line 1554
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v1

    #@12
    if-ne v1, p1, :cond_0

    #@14
    .line 1555
    return v0

    #@15
    .line 1553
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1558
    :cond_1
    const/4 v1, -0x1

    #@19
    return v1

    #@1a
    .line 1560
    .end local v0    # "i":I
    :cond_2
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->lastIndexOfSupplementary(II)I

    #@1d
    move-result v1

    #@1e
    return v1
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1733
    iget v0, p0, Ljava/lang/String;->count:I

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    .line 1753
    invoke-static {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 541
    iget v0, p0, Ljava/lang/String;->count:I

    #@2
    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2065
    invoke-static {p1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public offsetByCodePoints(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    #@0
    .prologue
    .line 686
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/lang/String;->count:I

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 687
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    .line 689
    :cond_1
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public regionMatches(ILjava/lang/String;II)Z
    .locals 14
    .param p1, "toffset"    # I
    .param p2, "other"    # Ljava/lang/String;
    .param p3, "ooffset"    # I
    .param p4, "len"    # I

    #@0
    .prologue
    .line 1184
    move v5, p1

    #@1
    .line 1185
    .local v5, "to":I
    move/from16 v3, p3

    #@3
    .line 1187
    .local v3, "po":I
    if-ltz p3, :cond_0

    #@5
    if-gez p1, :cond_1

    #@7
    .line 1190
    :cond_0
    const/4 v7, 0x0

    #@8
    return v7

    #@9
    .line 1188
    :cond_1
    int-to-long v8, p1

    #@a
    iget v7, p0, Ljava/lang/String;->count:I

    #@c
    int-to-long v10, v7

    #@d
    move/from16 v0, p4

    #@f
    int-to-long v12, v0

    #@10
    sub-long/2addr v10, v12

    #@11
    cmp-long v7, v8, v10

    #@13
    if-gtz v7, :cond_0

    #@15
    .line 1189
    move/from16 v0, p3

    #@17
    int-to-long v8, v0

    #@18
    move-object/from16 v0, p2

    #@1a
    iget v7, v0, Ljava/lang/String;->count:I

    #@1c
    int-to-long v10, v7

    #@1d
    move/from16 v0, p4

    #@1f
    int-to-long v12, v0

    #@20
    sub-long/2addr v10, v12

    #@21
    cmp-long v7, v8, v10

    #@23
    if-gtz v7, :cond_0

    #@25
    move v4, v3

    #@26
    .end local v3    # "po":I
    .local v4, "po":I
    move v6, v5

    #@27
    .end local v5    # "to":I
    .local v6, "to":I
    move/from16 v2, p4

    #@29
    .line 1192
    .end local p4    # "len":I
    .local v2, "len":I
    :goto_0
    add-int/lit8 p4, v2, -0x1

    #@2b
    .end local v2    # "len":I
    .restart local p4    # "len":I
    if-lez v2, :cond_3

    #@2d
    .line 1193
    add-int/lit8 v5, v6, 0x1

    #@2f
    .end local v6    # "to":I
    .restart local v5    # "to":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@32
    move-result v7

    #@33
    add-int/lit8 v3, v4, 0x1

    #@35
    .end local v4    # "po":I
    .restart local v3    # "po":I
    move-object/from16 v0, p2

    #@37
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v8

    #@3b
    if-eq v7, v8, :cond_2

    #@3d
    .line 1194
    const/4 v7, 0x0

    #@3e
    return v7

    #@3f
    :cond_2
    move v4, v3

    #@40
    .end local v3    # "po":I
    .restart local v4    # "po":I
    move v6, v5

    #@41
    .end local v5    # "to":I
    .restart local v6    # "to":I
    move/from16 v2, p4

    #@43
    .end local p4    # "len":I
    .restart local v2    # "len":I
    goto :goto_0

    #@44
    .line 1197
    .end local v2    # "len":I
    .restart local p4    # "len":I
    :cond_3
    const/4 v7, 0x1

    #@45
    return v7
.end method

.method public regionMatches(ZILjava/lang/String;II)Z
    .locals 18
    .param p1, "ignoreCase"    # Z
    .param p2, "toffset"    # I
    .param p3, "other"    # Ljava/lang/String;
    .param p4, "ooffset"    # I
    .param p5, "len"    # I

    #@0
    .prologue
    .line 1252
    move/from16 v7, p2

    #@2
    .line 1253
    .local v7, "to":I
    move/from16 v5, p4

    #@4
    .line 1255
    .local v5, "po":I
    if-ltz p4, :cond_0

    #@6
    if-gez p2, :cond_1

    #@8
    .line 1258
    :cond_0
    const/4 v11, 0x0

    #@9
    return v11

    #@a
    .line 1256
    :cond_1
    move/from16 v0, p2

    #@c
    int-to-long v12, v0

    #@d
    move-object/from16 v0, p0

    #@f
    iget v11, v0, Ljava/lang/String;->count:I

    #@11
    int-to-long v14, v11

    #@12
    move/from16 v0, p5

    #@14
    int-to-long v0, v0

    #@15
    move-wide/from16 v16, v0

    #@17
    sub-long v14, v14, v16

    #@19
    cmp-long v11, v12, v14

    #@1b
    if-gtz v11, :cond_0

    #@1d
    .line 1257
    move/from16 v0, p4

    #@1f
    int-to-long v12, v0

    #@20
    move-object/from16 v0, p3

    #@22
    iget v11, v0, Ljava/lang/String;->count:I

    #@24
    int-to-long v14, v11

    #@25
    move/from16 v0, p5

    #@27
    int-to-long v0, v0

    #@28
    move-wide/from16 v16, v0

    #@2a
    sub-long v14, v14, v16

    #@2c
    cmp-long v11, v12, v14

    #@2e
    if-gtz v11, :cond_0

    #@30
    move v6, v5

    #@31
    .end local v5    # "po":I
    .local v6, "po":I
    move v8, v7

    #@32
    .end local v7    # "to":I
    .local v8, "to":I
    move/from16 v4, p5

    #@34
    .line 1260
    .end local p5    # "len":I
    .local v4, "len":I
    :goto_0
    add-int/lit8 p5, v4, -0x1

    #@36
    .end local v4    # "len":I
    .restart local p5    # "len":I
    if-lez v4, :cond_5

    #@38
    .line 1261
    add-int/lit8 v7, v8, 0x1

    #@3a
    .end local v8    # "to":I
    .restart local v7    # "to":I
    move-object/from16 v0, p0

    #@3c
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    #@3f
    move-result v2

    #@40
    .line 1262
    .local v2, "c1":C
    add-int/lit8 v5, v6, 0x1

    #@42
    .end local v6    # "po":I
    .restart local v5    # "po":I
    move-object/from16 v0, p3

    #@44
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@47
    move-result v3

    #@48
    .line 1263
    .local v3, "c2":C
    if-ne v2, v3, :cond_2

    #@4a
    move v6, v5

    #@4b
    .end local v5    # "po":I
    .restart local v6    # "po":I
    move v8, v7

    #@4c
    .end local v7    # "to":I
    .restart local v8    # "to":I
    move/from16 v4, p5

    #@4e
    .line 1264
    .end local p5    # "len":I
    .restart local v4    # "len":I
    goto :goto_0

    #@4f
    .line 1266
    .end local v4    # "len":I
    .end local v6    # "po":I
    .end local v8    # "to":I
    .restart local v5    # "po":I
    .restart local v7    # "to":I
    .restart local p5    # "len":I
    :cond_2
    if-eqz p1, :cond_4

    #@51
    .line 1271
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    #@54
    move-result v9

    #@55
    .line 1272
    .local v9, "u1":C
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    #@58
    move-result v10

    #@59
    .line 1273
    .local v10, "u2":C
    if-ne v9, v10, :cond_3

    #@5b
    move v6, v5

    #@5c
    .end local v5    # "po":I
    .restart local v6    # "po":I
    move v8, v7

    #@5d
    .end local v7    # "to":I
    .restart local v8    # "to":I
    move/from16 v4, p5

    #@5f
    .line 1274
    .end local p5    # "len":I
    .restart local v4    # "len":I
    goto :goto_0

    #@60
    .line 1280
    .end local v4    # "len":I
    .end local v6    # "po":I
    .end local v8    # "to":I
    .restart local v5    # "po":I
    .restart local v7    # "to":I
    .restart local p5    # "len":I
    :cond_3
    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    #@63
    move-result v11

    #@64
    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    #@67
    move-result v12

    #@68
    if-ne v11, v12, :cond_4

    #@6a
    move v6, v5

    #@6b
    .end local v5    # "po":I
    .restart local v6    # "po":I
    move v8, v7

    #@6c
    .end local v7    # "to":I
    .restart local v8    # "to":I
    move/from16 v4, p5

    #@6e
    .line 1281
    .end local p5    # "len":I
    .restart local v4    # "len":I
    goto :goto_0

    #@6f
    .line 1284
    .end local v4    # "len":I
    .end local v6    # "po":I
    .end local v8    # "to":I
    .end local v9    # "u1":C
    .end local v10    # "u2":C
    .restart local v5    # "po":I
    .restart local v7    # "to":I
    .restart local p5    # "len":I
    :cond_4
    const/4 v11, 0x0

    #@70
    return v11

    #@71
    .line 1286
    .end local v2    # "c1":C
    .end local v3    # "c2":C
    .end local v5    # "po":I
    .end local v7    # "to":I
    .restart local v6    # "po":I
    .restart local v8    # "to":I
    :cond_5
    const/4 v11, 0x1

    #@72
    return v11
.end method

.method public replace(CC)Ljava/lang/String;
    .locals 3
    .param p1, "oldChar"    # C
    .param p2, "newChar"    # C

    #@0
    .prologue
    .line 2024
    move-object v1, p0

    #@1
    .line 2025
    .local v1, "replaced":Ljava/lang/String;
    if-eq p1, p2, :cond_2

    #@3
    .line 2026
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/lang/String;->count:I

    #@6
    if-ge v0, v2, :cond_2

    #@8
    .line 2027
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v2

    #@c
    if-ne v2, p1, :cond_1

    #@e
    .line 2028
    if-ne v1, p0, :cond_0

    #@10
    .line 2029
    invoke-static {p0}, Ljava/lang/StringFactory;->newStringFromString(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 2031
    :cond_0
    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->setCharAt(IC)V

    #@17
    .line 2026
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 2035
    .end local v0    # "i":I
    :cond_2
    return-object v1
.end method

.method public replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 8
    .param p1, "target"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2182
    if-nez p1, :cond_0

    #@2
    .line 2183
    new-instance v6, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v7, "target == null"

    #@7
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v6

    #@b
    .line 2186
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 2187
    new-instance v6, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v7, "replacement == null"

    #@12
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v6

    #@16
    .line 2190
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    .line 2191
    .local v3, "replacementStr":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    .line 2199
    .local v5, "targetStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_3

    #@24
    .line 2202
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@29
    move-result v6

    #@2a
    iget v7, p0, Ljava/lang/String;->count:I

    #@2c
    add-int/lit8 v7, v7, 0x2

    #@2e
    mul-int/2addr v6, v7

    #@2f
    iget v7, p0, Ljava/lang/String;->count:I

    #@31
    add-int/2addr v6, v7

    #@32
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@35
    .line 2203
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 2204
    const/4 v1, 0x0

    #@39
    .local v1, "i":I
    :goto_0
    iget v6, p0, Ljava/lang/String;->count:I

    #@3b
    if-ge v1, v6, :cond_2

    #@3d
    .line 2205
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@40
    move-result v6

    #@41
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    .line 2206
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 2204
    add-int/lit8 v1, v1, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 2209
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    return-object v6

    #@4f
    .line 2213
    .end local v1    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const/4 v2, 0x0

    #@50
    .line 2214
    .local v2, "lastMatch":I
    const/4 v4, 0x0

    #@51
    .line 2216
    :goto_1
    invoke-static {p0, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    #@54
    move-result v0

    #@55
    .line 2217
    .local v0, "currentMatch":I
    const/4 v6, -0x1

    #@56
    if-ne v0, v6, :cond_4

    #@58
    .line 2230
    if-eqz v4, :cond_6

    #@5a
    .line 2231
    iget v6, p0, Ljava/lang/String;->count:I

    #@5c
    invoke-virtual {v4, p0, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@5f
    .line 2232
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v6

    #@63
    return-object v6

    #@64
    .line 2221
    :cond_4
    if-nez v4, :cond_5

    #@66
    .line 2222
    new-instance v4, Ljava/lang/StringBuilder;

    #@68
    iget v6, p0, Ljava/lang/String;->count:I

    #@6a
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@6d
    .line 2225
    :cond_5
    invoke-virtual {v4, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@70
    .line 2226
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    .line 2227
    iget v6, v5, Ljava/lang/String;->count:I

    #@75
    add-int v2, v0, v6

    #@77
    goto :goto_1

    #@78
    .line 2234
    :cond_6
    return-object p0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2164
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2121
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method native setCharAt(IC)V
.end method

.method public split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2367
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public split(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 2320
    invoke-static {p1, p0, p2}, Ljava/util/regex/Pattern;->fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 2321
    .local v0, "fast":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 2322
    return-object v0

    #@7
    .line 2325
    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1, p0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1336
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "toffset"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1307
    move v3, p2

    #@2
    .line 1308
    .local v3, "to":I
    const/4 v1, 0x0

    #@3
    .line 1309
    .local v1, "po":I
    iget v0, p1, Ljava/lang/String;->count:I

    #@5
    .line 1311
    .local v0, "pc":I
    if-ltz p2, :cond_0

    #@7
    iget v5, p0, Ljava/lang/String;->count:I

    #@9
    sub-int/2addr v5, v0

    #@a
    if-le p2, v5, :cond_1

    #@c
    .line 1312
    :cond_0
    return v7

    #@d
    :cond_1
    move v2, v1

    #@e
    .end local v1    # "po":I
    .local v2, "po":I
    move v4, v3

    #@f
    .line 1314
    .end local v3    # "to":I
    .local v4, "to":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@11
    if-ltz v0, :cond_3

    #@13
    .line 1315
    add-int/lit8 v3, v4, 0x1

    #@15
    .end local v4    # "to":I
    .restart local v3    # "to":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v5

    #@19
    add-int/lit8 v1, v2, 0x1

    #@1b
    .end local v2    # "po":I
    .restart local v1    # "po":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v6

    #@1f
    if-eq v5, v6, :cond_2

    #@21
    .line 1316
    return v7

    #@22
    :cond_2
    move v2, v1

    #@23
    .end local v1    # "po":I
    .restart local v2    # "po":I
    move v4, v3

    #@24
    .end local v3    # "to":I
    .restart local v4    # "to":I
    goto :goto_0

    #@25
    .line 1319
    :cond_3
    const/4 v5, 0x1

    #@26
    return v5
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    #@0
    .prologue
    .line 1969
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 2
    .param p1, "beginIndex"    # I

    #@0
    .prologue
    .line 1892
    if-gez p1, :cond_0

    #@2
    .line 1893
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    #@4
    invoke-direct {v1, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    #@7
    throw v1

    #@8
    .line 1895
    :cond_0
    iget v1, p0, Ljava/lang/String;->count:I

    #@a
    sub-int v0, v1, p1

    #@c
    .line 1896
    .local v0, "subLen":I
    if-gez v0, :cond_1

    #@e
    .line 1897
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    #@10
    invoke-direct {v1, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    #@13
    throw v1

    #@14
    .line 1899
    :cond_1
    if-nez p1, :cond_2

    #@16
    .end local p0    # "this":Ljava/lang/String;
    :goto_0
    return-object p0

    #@17
    .restart local p0    # "this":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1, v0}, Ljava/lang/String;->fastSubstring(II)Ljava/lang/String;

    #@1a
    move-result-object p0

    #@1b
    goto :goto_0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 2
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    #@0
    .prologue
    .line 1925
    if-gez p1, :cond_0

    #@2
    .line 1926
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    #@4
    invoke-direct {v1, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    #@7
    throw v1

    #@8
    .line 1929
    :cond_0
    sub-int v0, p2, p1

    #@a
    .line 1930
    .local v0, "subLen":I
    iget v1, p0, Ljava/lang/String;->count:I

    #@c
    if-gt p2, v1, :cond_1

    #@e
    if-gez v0, :cond_2

    #@10
    .line 1931
    :cond_1
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    #@12
    invoke-direct {v1, p0, p1, v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    #@15
    throw v1

    #@16
    .line 1934
    :cond_2
    if-nez p1, :cond_3

    #@18
    iget v1, p0, Ljava/lang/String;->count:I

    #@1a
    if-ne p2, v1, :cond_3

    #@1c
    .end local p0    # "this":Ljava/lang/String;
    :goto_0
    return-object p0

    #@1d
    .line 1935
    .restart local p0    # "this":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1, v0}, Ljava/lang/String;->fastSubstring(II)Ljava/lang/String;

    #@20
    move-result-object p0

    #@21
    goto :goto_0
.end method

.method public native toCharArray()[C
.end method

.method public toLowerCase()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2446
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 2423
    invoke-static {p1, p0}, Ljava/lang/CaseMapper;->toLowerCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    #@0
    .prologue
    .line 2574
    return-object p0
.end method

.method public toUpperCase()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2521
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 2498
    iget v0, p0, Ljava/lang/String;->count:I

    #@2
    invoke-static {p1, p0, v0}, Ljava/lang/CaseMapper;->toUpperCase(Ljava/util/Locale;Ljava/lang/String;I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public trim()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x20

    #@2
    .line 2556
    iget v0, p0, Ljava/lang/String;->count:I

    #@4
    .line 2557
    .local v0, "len":I
    const/4 v1, 0x0

    #@5
    .line 2559
    .local v1, "st":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v2

    #@b
    if-gt v2, v3, :cond_0

    #@d
    .line 2560
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 2562
    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    #@12
    add-int/lit8 v2, v0, -0x1

    #@14
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v2

    #@18
    if-gt v2, v3, :cond_1

    #@1a
    .line 2563
    add-int/lit8 v0, v0, -0x1

    #@1c
    goto :goto_1

    #@1d
    .line 2565
    :cond_1
    if-gtz v1, :cond_2

    #@1f
    iget v2, p0, Ljava/lang/String;->count:I

    #@21
    if-ge v0, v2, :cond_3

    #@23
    :cond_2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@26
    move-result-object p0

    #@27
    .end local p0    # "this":Ljava/lang/String;
    :cond_3
    return-object p0
.end method
