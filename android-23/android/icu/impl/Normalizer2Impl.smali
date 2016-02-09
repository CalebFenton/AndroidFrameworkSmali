.class public final Landroid/icu/impl/Normalizer2Impl;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Normalizer2Impl$Hangul;,
        Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;,
        Landroid/icu/impl/Normalizer2Impl$UTF16Plus;,
        Landroid/icu/impl/Normalizer2Impl$IsAcceptable;,
        Landroid/icu/impl/Normalizer2Impl$1;
    }
.end annotation


# static fields
.field private static final CANON_HAS_COMPOSITIONS:I = 0x40000000

.field private static final CANON_HAS_SET:I = 0x200000

.field private static final CANON_NOT_SEGMENT_STARTER:I = -0x80000000

.field private static final CANON_VALUE_MASK:I = 0x1fffff

.field public static final COMP_1_LAST_TUPLE:I = 0x8000

.field public static final COMP_1_TRAIL_LIMIT:I = 0x3400

.field public static final COMP_1_TRAIL_MASK:I = 0x7ffe

.field public static final COMP_1_TRAIL_SHIFT:I = 0x9

.field public static final COMP_1_TRIPLE:I = 0x1

.field public static final COMP_2_TRAIL_MASK:I = 0xffc0

.field public static final COMP_2_TRAIL_SHIFT:I = 0x6

.field private static final DATA_FORMAT:I = 0x4e726d32

.field private static final IS_ACCEPTABLE:Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

.field public static final IX_COUNT:I = 0x10

.field public static final IX_EXTRA_DATA_OFFSET:I = 0x1

.field public static final IX_LIMIT_NO_NO:I = 0xc

.field public static final IX_MIN_COMP_NO_MAYBE_CP:I = 0x9

.field public static final IX_MIN_DECOMP_NO_CP:I = 0x8

.field public static final IX_MIN_MAYBE_YES:I = 0xd

.field public static final IX_MIN_NO_NO:I = 0xb

.field public static final IX_MIN_YES_NO:I = 0xa

.field public static final IX_MIN_YES_NO_MAPPINGS_ONLY:I = 0xe

.field public static final IX_NORM_TRIE_OFFSET:I = 0x0

.field public static final IX_RESERVED3_OFFSET:I = 0x3

.field public static final IX_SMALL_FCD_OFFSET:I = 0x2

.field public static final IX_TOTAL_SIZE:I = 0x7

.field public static final JAMO_L:I = 0x1

.field public static final JAMO_VT:I = 0xff00

.field public static final MAPPING_HAS_CCC_LCCC_WORD:I = 0x80

.field public static final MAPPING_HAS_RAW_MAPPING:I = 0x40

.field public static final MAPPING_LENGTH_MASK:I = 0x1f

.field public static final MAPPING_NO_COMP_BOUNDARY_AFTER:I = 0x20

.field public static final MAX_DELTA:I = 0x40

.field public static final MIN_CCC_LCCC_CP:I = 0x300

.field public static final MIN_NORMAL_MAYBE_YES:I = 0xfe00

.field public static final MIN_YES_YES_WITH_CC:I = 0xff01

.field private static final segmentStarterMapper:Landroid/icu/impl/Trie2$ValueMapper;


# instance fields
.field private canonIterData:Landroid/icu/impl/Trie2_32;

.field private canonStartSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/icu/text/UnicodeSet;",
            ">;"
        }
    .end annotation
.end field

.field private dataVersion:Landroid/icu/util/VersionInfo;

.field private extraData:Ljava/lang/String;

.field private limitNoNo:I

.field private maybeYesCompositions:Ljava/lang/String;

.field private minCompNoMaybeCP:I

.field private minDecompNoCP:I

.field private minMaybeYes:I

.field private minNoNo:I

.field private minYesNo:I

.field private minYesNoMappingsOnly:I

.field private normTrie:Landroid/icu/impl/Trie2_16;

.field private smallFCD:[B

.field private tccc180:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 418
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/impl/Normalizer2Impl$IsAcceptable;-><init>(Landroid/icu/impl/Normalizer2Impl$IsAcceptable;)V

    #@6
    sput-object v0, Landroid/icu/impl/Normalizer2Impl;->IS_ACCEPTABLE:Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

    #@8
    .line 567
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$1;

    #@a
    invoke-direct {v0}, Landroid/icu/impl/Normalizer2Impl$1;-><init>()V

    #@d
    sput-object v0, Landroid/icu/impl/Normalizer2Impl;->segmentStarterMapper:Landroid/icu/impl/Trie2$ValueMapper;

    #@f
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private addComposites(ILandroid/icu/text/UnicodeSet;)V
    .locals 6
    .param p1, "list"    # I
    .param p2, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 1877
    :cond_0
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    #@2
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v2

    #@6
    .line 1878
    .local v2, "firstUnit":I
    and-int/lit8 v3, v2, 0x1

    #@8
    if-nez v3, :cond_2

    #@a
    .line 1879
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    #@c
    add-int/lit8 v4, p1, 0x1

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v1

    #@12
    .line 1880
    .local v1, "compositeAndFwd":I
    add-int/lit8 p1, p1, 0x2

    #@14
    .line 1886
    :goto_0
    shr-int/lit8 v0, v1, 0x1

    #@16
    .line 1887
    .local v0, "composite":I
    and-int/lit8 v3, v1, 0x1

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 1888
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@1d
    move-result v3

    #@1e
    invoke-direct {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForComposite(I)I

    #@21
    move-result v3

    #@22
    invoke-direct {p0, v3, p2}, Landroid/icu/impl/Normalizer2Impl;->addComposites(ILandroid/icu/text/UnicodeSet;)V

    #@25
    .line 1890
    :cond_1
    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@28
    .line 1891
    const v3, 0x8000

    #@2b
    and-int/2addr v3, v2

    #@2c
    if-eqz v3, :cond_0

    #@2e
    .line 1874
    return-void

    #@2f
    .line 1882
    .end local v0    # "composite":I
    .end local v1    # "compositeAndFwd":I
    :cond_2
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    #@31
    add-int/lit8 v4, p1, 0x1

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@36
    move-result v3

    #@37
    const v4, -0xffc1

    #@3a
    and-int/2addr v3, v4

    #@3b
    shl-int/lit8 v3, v3, 0x10

    #@3d
    .line 1883
    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    #@3f
    add-int/lit8 v5, p1, 0x2

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@44
    move-result v4

    #@45
    .line 1882
    or-int v1, v3, v4

    #@47
    .line 1884
    .restart local v1    # "compositeAndFwd":I
    add-int/lit8 p1, p1, 0x3

    #@49
    goto :goto_0
.end method

.method private addToStartSet(Landroid/icu/impl/Trie2Writable;II)V
    .locals 6
    .param p1, "newData"    # Landroid/icu/impl/Trie2Writable;
    .param p2, "origin"    # I
    .param p3, "decompLead"    # I

    #@0
    .prologue
    const/high16 v5, 0x200000

    #@2
    const v4, 0x1fffff

    #@5
    .line 2169
    invoke-virtual {p1, p3}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@8
    move-result v0

    #@9
    .line 2170
    .local v0, "canonValue":I
    const v3, 0x3fffff

    #@c
    and-int/2addr v3, v0

    #@d
    if-nez v3, :cond_0

    #@f
    if-eqz p2, :cond_0

    #@11
    .line 2173
    or-int v3, v0, p2

    #@13
    invoke-virtual {p1, p3, v3}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@16
    .line 2168
    :goto_0
    return-void

    #@17
    .line 2177
    :cond_0
    and-int v3, v0, v5

    #@19
    if-nez v3, :cond_2

    #@1b
    .line 2178
    and-int v1, v0, v4

    #@1d
    .line 2179
    .local v1, "firstOrigin":I
    const/high16 v3, -0x200000

    #@1f
    and-int/2addr v3, v0

    #@20
    or-int/2addr v3, v5

    #@21
    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v4

    #@27
    or-int v0, v3, v4

    #@29
    .line 2180
    invoke-virtual {p1, p3, v0}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@2c
    .line 2181
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    #@2e
    new-instance v2, Landroid/icu/text/UnicodeSet;

    #@30
    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@33
    .local v2, "set":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36
    .line 2182
    if-eqz v1, :cond_1

    #@38
    .line 2183
    invoke-virtual {v2, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@3b
    .line 2188
    .end local v1    # "firstOrigin":I
    :cond_1
    :goto_1
    invoke-virtual {v2, p2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@3e
    goto :goto_0

    #@3f
    .line 2186
    .end local v2    # "set":Landroid/icu/text/UnicodeSet;
    :cond_2
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    #@41
    and-int/2addr v4, v0

    #@42
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@45
    move-result-object v2

    #@46
    check-cast v2, Landroid/icu/text/UnicodeSet;

    #@48
    .restart local v2    # "set":Landroid/icu/text/UnicodeSet;
    goto :goto_1
.end method

.method private static combine(Ljava/lang/String;II)I
    .locals 6
    .param p0, "compositions"    # Ljava/lang/String;
    .param p1, "list"    # I
    .param p2, "trail"    # I

    #@0
    .prologue
    const/16 v4, 0x3400

    #@2
    .line 1828
    if-ge p2, v4, :cond_2

    #@4
    .line 1831
    shl-int/lit8 v1, p2, 0x1

    #@6
    .line 1832
    .local v1, "key1":I
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v0

    #@a
    .local v0, "firstUnit":I
    if-le v1, v0, :cond_0

    #@c
    .line 1833
    and-int/lit8 v4, v0, 0x1

    #@e
    add-int/lit8 v4, v4, 0x2

    #@10
    add-int/2addr p1, v4

    #@11
    goto :goto_0

    #@12
    .line 1835
    :cond_0
    and-int/lit16 v4, v0, 0x7ffe

    #@14
    if-ne v1, v4, :cond_4

    #@16
    .line 1836
    and-int/lit8 v4, v0, 0x1

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 1837
    add-int/lit8 v4, p1, 0x1

    #@1c
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v4

    #@20
    shl-int/lit8 v4, v4, 0x10

    #@22
    add-int/lit8 v5, p1, 0x2

    #@24
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@27
    move-result v5

    #@28
    or-int/2addr v4, v5

    #@29
    return v4

    #@2a
    .line 1839
    :cond_1
    add-int/lit8 v4, p1, 0x1

    #@2c
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@2f
    move-result v4

    #@30
    return v4

    #@31
    .line 1845
    .end local v0    # "firstUnit":I
    .end local v1    # "key1":I
    :cond_2
    shr-int/lit8 v4, p2, 0x9

    #@33
    and-int/lit8 v4, v4, -0x2

    #@35
    add-int/lit16 v1, v4, 0x3400

    #@37
    .line 1846
    .restart local v1    # "key1":I
    shl-int/lit8 v4, p2, 0x6

    #@39
    const v5, 0xffff

    #@3c
    and-int v2, v4, v5

    #@3e
    .line 1849
    .local v2, "key2":I
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@41
    move-result v0

    #@42
    .restart local v0    # "firstUnit":I
    if-le v1, v0, :cond_3

    #@44
    .line 1850
    and-int/lit8 v4, v0, 0x1

    #@46
    add-int/lit8 v4, v4, 0x2

    #@48
    add-int/2addr p1, v4

    #@49
    goto :goto_1

    #@4a
    .line 1851
    :cond_3
    and-int/lit16 v4, v0, 0x7ffe

    #@4c
    if-ne v1, v4, :cond_4

    #@4e
    .line 1852
    add-int/lit8 v4, p1, 0x1

    #@50
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@53
    move-result v3

    #@54
    .local v3, "secondUnit":I
    if-le v2, v3, :cond_6

    #@56
    .line 1853
    const v4, 0x8000

    #@59
    and-int/2addr v4, v0

    #@5a
    if-eqz v4, :cond_5

    #@5c
    .line 1868
    .end local v2    # "key2":I
    .end local v3    # "secondUnit":I
    :cond_4
    const/4 v4, -0x1

    #@5d
    return v4

    #@5e
    .line 1856
    .restart local v2    # "key2":I
    .restart local v3    # "secondUnit":I
    :cond_5
    add-int/lit8 p1, p1, 0x3

    #@60
    goto :goto_1

    #@61
    .line 1858
    :cond_6
    const v4, 0xffc0

    #@64
    and-int/2addr v4, v3

    #@65
    if-ne v2, v4, :cond_4

    #@67
    .line 1859
    const v4, -0xffc1

    #@6a
    and-int/2addr v4, v3

    #@6b
    shl-int/lit8 v4, v4, 0x10

    #@6d
    add-int/lit8 v5, p1, 0x2

    #@6f
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@72
    move-result v5

    #@73
    or-int/2addr v4, v5

    #@74
    return v4
.end method

.method private decompose(IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 8
    .param p1, "c"    # I
    .param p2, "norm16"    # I
    .param p3, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@0
    .prologue
    .line 1774
    :goto_0
    invoke-virtual {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1776
    invoke-static {p2}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    #@9
    move-result v0

    #@a
    invoke-virtual {p3, p1, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    #@d
    .line 1798
    :goto_1
    return-void

    #@e
    .line 1777
    :cond_0
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isHangul(I)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 1779
    invoke-static {p1, p3}, Landroid/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    #@17
    goto :goto_1

    #@18
    .line 1780
    :cond_1
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 1781
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    #@21
    move-result p1

    #@22
    .line 1782
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@25
    move-result p2

    #@26
    goto :goto_0

    #@27
    .line 1786
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@29
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    #@2c
    move-result v6

    #@2d
    .line 1787
    .local v6, "firstUnit":I
    and-int/lit8 v7, v6, 0x1f

    #@2f
    .line 1789
    .local v7, "length":I
    shr-int/lit8 v5, v6, 0x8

    #@31
    .line 1790
    .local v5, "trailCC":I
    and-int/lit16 v0, v6, 0x80

    #@33
    if-eqz v0, :cond_3

    #@35
    .line 1791
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@37
    add-int/lit8 v1, p2, -0x1

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@3c
    move-result v0

    #@3d
    shr-int/lit8 v4, v0, 0x8

    #@3f
    .line 1795
    .local v4, "leadCC":I
    :goto_2
    add-int/lit8 p2, p2, 0x1

    #@41
    .line 1796
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@43
    add-int v3, p2, v7

    #@45
    move-object v0, p3

    #@46
    move v2, p2

    #@47
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;IIII)V

    #@4a
    goto :goto_1

    #@4b
    .line 1793
    .end local v4    # "leadCC":I
    :cond_3
    const/4 v4, 0x0

    #@4c
    .restart local v4    # "leadCC":I
    goto :goto_2
.end method

.method private enumLcccRange(IIILandroid/icu/text/UnicodeSet;)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "norm16"    # I
    .param p4, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    const/16 v2, 0xff

    #@2
    .line 501
    invoke-virtual {p0, p3}, Landroid/icu/impl/Normalizer2Impl;->isAlgorithmicNoNo(I)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_3

    #@8
    .line 505
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@b
    move-result v0

    #@c
    .line 506
    .local v0, "fcd16":I
    if-le v0, v2, :cond_1

    #@e
    invoke-virtual {p4, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@11
    .line 507
    :cond_1
    add-int/lit8 p1, p1, 0x1

    #@13
    if-le p1, p2, :cond_0

    #@15
    .line 500
    :cond_2
    :goto_0
    return-void

    #@16
    .line 509
    .end local v0    # "fcd16":I
    :cond_3
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@19
    move-result v0

    #@1a
    .line 510
    .restart local v0    # "fcd16":I
    if-le v0, v2, :cond_2

    #@1c
    invoke-virtual {p4, p1, p2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    #@1f
    goto :goto_0
.end method

.method private enumNorm16PropertyStartsRange(IIILandroid/icu/text/UnicodeSet;)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # I
    .param p4, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 516
    invoke-virtual {p4, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@3
    .line 517
    if-eq p1, p2, :cond_1

    #@5
    invoke-virtual {p0, p3}, Landroid/icu/impl/Normalizer2Impl;->isAlgorithmicNoNo(I)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 520
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@e
    move-result v1

    #@f
    .line 521
    .local v1, "prevFCD16":I
    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    #@11
    if-gt p1, p2, :cond_1

    #@13
    .line 522
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@16
    move-result v0

    #@17
    .line 523
    .local v0, "fcd16":I
    if-eq v0, v1, :cond_0

    #@19
    .line 524
    invoke-virtual {p4, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@1c
    .line 525
    move v1, v0

    #@1d
    goto :goto_0

    #@1e
    .line 514
    .end local v0    # "fcd16":I
    .end local v1    # "prevFCD16":I
    :cond_1
    return-void
.end method

.method private findNextCompBoundary(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "p"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 2136
    :goto_0
    if-ge p2, p3, :cond_0

    #@2
    .line 2137
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@5
    move-result v0

    #@6
    .line 2138
    .local v0, "c":I
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    #@8
    invoke-virtual {v2, v0}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@b
    move-result v1

    #@c
    .line 2139
    .local v1, "norm16":I
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 2144
    .end local v0    # "c":I
    .end local v1    # "norm16":I
    :cond_0
    return p2

    #@13
    .line 2142
    .restart local v0    # "c":I
    .restart local v1    # "norm16":I
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@16
    move-result v2

    #@17
    add-int/2addr p2, v2

    #@18
    goto :goto_0
.end method

.method private findNextFCDBoundary(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "p"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 2158
    :goto_0
    if-ge p2, p3, :cond_0

    #@2
    .line 2159
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@5
    move-result v0

    #@6
    .line 2160
    .local v0, "c":I
    const/16 v1, 0x300

    #@8
    if-lt v0, v1, :cond_0

    #@a
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@d
    move-result v1

    #@e
    const/16 v2, 0xff

    #@10
    if-gt v1, v2, :cond_1

    #@12
    .line 2165
    .end local v0    # "c":I
    :cond_0
    return p2

    #@13
    .line 2163
    .restart local v0    # "c":I
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@16
    move-result v1

    #@17
    add-int/2addr p2, v1

    #@18
    goto :goto_0
.end method

.method private findPreviousCompBoundary(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "p"    # I

    #@0
    .prologue
    .line 2124
    :cond_0
    if-lez p2, :cond_1

    #@2
    .line 2125
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@5
    move-result v0

    #@6
    .line 2126
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@9
    move-result v1

    #@a
    sub-int/2addr p2, v1

    #@b
    .line 2127
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(I)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 2133
    .end local v0    # "c":I
    :cond_1
    return p2
.end method

.method private findPreviousFCDBoundary(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "p"    # I

    #@0
    .prologue
    .line 2148
    :cond_0
    if-lez p2, :cond_1

    #@2
    .line 2149
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@5
    move-result v0

    #@6
    .line 2150
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@9
    move-result v1

    #@a
    sub-int/2addr p2, v1

    #@b
    .line 2151
    const/16 v1, 0x300

    #@d
    if-lt v0, v1, :cond_1

    #@f
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@12
    move-result v1

    #@13
    const/16 v2, 0xff

    #@15
    if-gt v1, v2, :cond_0

    #@17
    .line 2155
    .end local v0    # "c":I
    :cond_1
    return p2
.end method

.method private getCCFromNoNo(I)I
    .locals 2
    .param p1, "norm16"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1690
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v0

    #@7
    and-int/lit16 v0, v0, 0x80

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1691
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@d
    add-int/lit8 v1, p1, -0x1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v0

    #@13
    and-int/lit16 v0, v0, 0xff

    #@15
    return v0

    #@16
    .line 1693
    :cond_0
    return v1
.end method

.method public static getCCFromYesOrMaybe(I)I
    .locals 1
    .param p0, "norm16"    # I

    #@0
    .prologue
    .line 697
    const v0, 0xfe00

    #@3
    if-lt p0, v0, :cond_0

    #@5
    and-int/lit16 v0, p0, 0xff

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private getCompositionsList(I)I
    .locals 1
    .param p1, "norm16"    # I

    #@0
    .prologue
    .line 1751
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1752
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForDecompYes(I)I

    #@9
    move-result v0

    #@a
    .line 1751
    :goto_0
    return v0

    #@b
    .line 1753
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForComposite(I)I

    #@e
    move-result v0

    #@f
    goto :goto_0
.end method

.method private getCompositionsListForComposite(I)I
    .locals 3
    .param p1, "norm16"    # I

    #@0
    .prologue
    .line 1741
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@2
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v0

    #@6
    .line 1742
    .local v0, "firstUnit":I
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@8
    const v2, 0xfe00

    #@b
    sub-int v1, v2, v1

    #@d
    add-int/2addr v1, p1

    #@e
    add-int/lit8 v1, v1, 0x1

    #@10
    .line 1744
    and-int/lit8 v2, v0, 0x1f

    #@12
    .line 1742
    add-int/2addr v1, v2

    #@13
    return v1
.end method

.method private getCompositionsListForDecompYes(I)I
    .locals 2
    .param p1, "norm16"    # I

    #@0
    .prologue
    const v1, 0xfe00

    #@3
    .line 1724
    if-eqz p1, :cond_0

    #@5
    if-gt v1, p1, :cond_1

    #@7
    .line 1725
    :cond_0
    const/4 v0, -0x1

    #@8
    return v0

    #@9
    .line 1727
    :cond_1
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@b
    sub-int/2addr p1, v0

    #@c
    if-gez p1, :cond_2

    #@e
    .line 1731
    add-int/2addr p1, v1

    #@f
    .line 1733
    :cond_2
    return p1
.end method

.method private hasCompBoundaryBefore(II)Z
    .locals 4
    .param p1, "c"    # I
    .param p2, "norm16"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2103
    :goto_0
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 2104
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 2105
    :cond_0
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 2106
    return v3

    #@10
    .line 2107
    :cond_1
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 2108
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    #@19
    move-result p1

    #@1a
    .line 2109
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@1d
    move-result p2

    #@1e
    goto :goto_0

    #@1f
    .line 2112
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@21
    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v0

    #@25
    .line 2113
    .local v0, "firstUnit":I
    and-int/lit8 v1, v0, 0x1f

    #@27
    if-nez v1, :cond_3

    #@29
    .line 2114
    return v3

    #@2a
    .line 2116
    :cond_3
    and-int/lit16 v1, v0, 0x80

    #@2c
    if-eqz v1, :cond_4

    #@2e
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@30
    add-int/lit8 v2, p2, -0x1

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@35
    move-result v1

    #@36
    const v2, 0xff00

    #@39
    and-int/2addr v1, v2

    #@3a
    if-eqz v1, :cond_4

    #@3c
    .line 2117
    return v3

    #@3d
    .line 2119
    :cond_4
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@3f
    add-int/lit8 v2, p2, 0x1

    #@41
    invoke-static {v1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@44
    move-result v1

    #@45
    invoke-virtual {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@48
    move-result v1

    #@49
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    #@4c
    move-result v1

    #@4d
    return v1
.end method

.method private isCompYesAndZeroCC(I)Z
    .locals 1
    .param p1, "norm16"    # I

    #@0
    .prologue
    .line 1659
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    #@2
    if-ge p1, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private isDecompNoAlgorithmic(I)Z
    .locals 1
    .param p1, "norm16"    # I

    #@0
    .prologue
    .line 1682
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private isDecompYesAndZeroCC(I)Z
    .locals 3
    .param p1, "norm16"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1670
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@4
    if-lt p1, v2, :cond_0

    #@6
    .line 1671
    const v2, 0xff00

    #@9
    if-ne p1, v2, :cond_1

    #@b
    .line 1670
    :cond_0
    :goto_0
    return v0

    #@c
    .line 1672
    :cond_1
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@e
    if-gt v2, p1, :cond_2

    #@10
    const v2, 0xfe00

    #@13
    if-le p1, v2, :cond_0

    #@15
    :cond_2
    move v0, v1

    #@16
    goto :goto_0
.end method

.method private isHangul(I)Z
    .locals 1
    .param p1, "norm16"    # I

    #@0
    .prologue
    .line 1658
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@2
    if-ne p1, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private static isInert(I)Z
    .locals 1
    .param p0, "norm16"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1655
    if-nez p0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :cond_0
    return v0
.end method

.method private static isJamoL(I)Z
    .locals 1
    .param p0, "norm16"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1656
    if-ne p0, v0, :cond_0

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method private static isJamoVT(I)Z
    .locals 1
    .param p0, "norm16"    # I

    #@0
    .prologue
    .line 1657
    const v0, 0xff00

    #@3
    if-ne p0, v0, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private isMaybe(I)Z
    .locals 2
    .param p1, "norm16"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1653
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@3
    if-gt v1, p1, :cond_0

    #@5
    const v1, 0xff00

    #@8
    if-gt p1, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    return v0
.end method

.method private isMaybeOrNonZeroCC(I)Z
    .locals 1
    .param p1, "norm16"    # I

    #@0
    .prologue
    .line 1654
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private isMostDecompYesAndZeroCC(I)Z
    .locals 2
    .param p1, "norm16"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1680
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@3
    if-lt p1, v1, :cond_0

    #@5
    const v1, 0xfe00

    #@8
    if-ne p1, v1, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    const v1, 0xff00

    #@e
    if-eq p1, v1, :cond_0

    #@10
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method private mapAlgorithmic(II)I
    .locals 2
    .param p1, "c"    # I
    .param p2, "norm16"    # I

    #@0
    .prologue
    .line 1714
    add-int v0, p1, p2

    #@2
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@4
    add-int/lit8 v1, v1, -0x40

    #@6
    add-int/lit8 v1, v1, -0x1

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method private recompose(Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;IZ)V
    .locals 19
    .param p1, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .param p2, "recomposeStartIndex"    # I
    .param p3, "onlyContiguous"    # Z

    #@0
    .prologue
    .line 1905
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    #@3
    move-result-object v12

    #@4
    .line 1906
    .local v12, "sb":Ljava/lang/StringBuilder;
    move/from16 v8, p2

    #@6
    .line 1907
    .local v8, "p":I
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    #@9
    move-result v17

    #@a
    move/from16 v0, v17

    #@c
    if-ne v8, v0, :cond_0

    #@e
    .line 1908
    return-void

    #@f
    .line 1920
    :cond_0
    const/4 v6, -0x1

    #@10
    .line 1921
    .local v6, "compositionsList":I
    const/4 v13, -0x1

    #@11
    .line 1922
    .local v13, "starter":I
    const/4 v14, 0x0

    #@12
    .line 1923
    .local v14, "starterIsSupplementary":Z
    const/4 v11, 0x0

    #@13
    .line 1926
    .local v11, "prevCC":I
    :cond_1
    :goto_0
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->codePointAt(I)I

    #@16
    move-result v2

    #@17
    .line 1927
    .local v2, "c":I
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    #@1a
    move-result v17

    #@1b
    add-int v8, v8, v17

    #@1d
    .line 1928
    move-object/from16 v0, p0

    #@1f
    invoke-virtual {v0, v2}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@22
    move-result v7

    #@23
    .line 1929
    .local v7, "norm16":I
    invoke-static {v7}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    #@26
    move-result v3

    #@27
    .line 1931
    .local v3, "cc":I
    move-object/from16 v0, p0

    #@29
    invoke-direct {v0, v7}, Landroid/icu/impl/Normalizer2Impl;->isMaybe(I)Z

    #@2c
    move-result v17

    #@2d
    if-eqz v17, :cond_c

    #@2f
    .line 1933
    if-ltz v6, :cond_c

    #@31
    .line 1935
    if-lt v11, v3, :cond_2

    #@33
    if-nez v11, :cond_c

    #@35
    .line 1937
    :cond_2
    invoke-static {v7}, Landroid/icu/impl/Normalizer2Impl;->isJamoVT(I)Z

    #@38
    move-result v17

    #@39
    if-eqz v17, :cond_7

    #@3b
    .line 1939
    const/16 v17, 0x11a7

    #@3d
    move/from16 v0, v17

    #@3f
    if-ge v2, v0, :cond_4

    #@41
    .line 1941
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    #@44
    move-result v17

    #@45
    move/from16 v0, v17

    #@47
    add-int/lit16 v0, v0, -0x1100

    #@49
    move/from16 v17, v0

    #@4b
    move/from16 v0, v17

    #@4d
    int-to-char v10, v0

    #@4e
    .line 1942
    .local v10, "prev":C
    const/16 v17, 0x13

    #@50
    move/from16 v0, v17

    #@52
    if-ge v10, v0, :cond_4

    #@54
    .line 1943
    add-int/lit8 v9, v8, -0x1

    #@56
    .line 1946
    .local v9, "pRemove":I
    mul-int/lit8 v17, v10, 0x15

    #@58
    add-int/lit16 v0, v2, -0x1161

    #@5a
    move/from16 v18, v0

    #@5c
    add-int v17, v17, v18

    #@5e
    mul-int/lit8 v17, v17, 0x1c

    #@60
    .line 1945
    const v18, 0xac00

    #@63
    add-int v17, v17, v18

    #@65
    .line 1944
    move/from16 v0, v17

    #@67
    int-to-char v15, v0

    #@68
    .line 1949
    .local v15, "syllable":C
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    #@6b
    move-result v17

    #@6c
    move/from16 v0, v17

    #@6e
    if-eq v8, v0, :cond_3

    #@70
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    #@73
    move-result v17

    #@74
    move/from16 v0, v17

    #@76
    add-int/lit16 v0, v0, -0x11a7

    #@78
    move/from16 v17, v0

    #@7a
    move/from16 v0, v17

    #@7c
    int-to-char v0, v0

    #@7d
    move/from16 v16, v0

    #@7f
    .local v16, "t":C
    const/16 v17, 0x1c

    #@81
    move/from16 v0, v16

    #@83
    move/from16 v1, v17

    #@85
    if-ge v0, v1, :cond_3

    #@87
    .line 1950
    add-int/lit8 v8, v8, 0x1

    #@89
    .line 1951
    add-int v17, v15, v16

    #@8b
    move/from16 v0, v17

    #@8d
    int-to-char v15, v0

    #@8e
    .line 1953
    .end local v16    # "t":C
    :cond_3
    invoke-virtual {v12, v13, v15}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@91
    .line 1955
    invoke-virtual {v12, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@94
    .line 1956
    move v8, v9

    #@95
    .line 1965
    .end local v9    # "pRemove":I
    .end local v10    # "prev":C
    .end local v15    # "syllable":C
    :cond_4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    #@98
    move-result v17

    #@99
    move/from16 v0, v17

    #@9b
    if-ne v8, v0, :cond_6

    #@9d
    .line 2046
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flush()V

    #@a0
    .line 1904
    return-void

    #@a1
    .line 1968
    :cond_6
    const/4 v6, -0x1

    #@a2
    .line 1969
    goto/16 :goto_0

    #@a4
    .line 1970
    :cond_7
    move-object/from16 v0, p0

    #@a6
    iget-object v0, v0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    #@a8
    move-object/from16 v17, v0

    #@aa
    move-object/from16 v0, v17

    #@ac
    invoke-static {v0, v6, v2}, Landroid/icu/impl/Normalizer2Impl;->combine(Ljava/lang/String;II)I

    #@af
    move-result v5

    #@b0
    .local v5, "compositeAndFwd":I
    if-ltz v5, :cond_c

    #@b2
    .line 1972
    shr-int/lit8 v4, v5, 0x1

    #@b4
    .line 1975
    .local v4, "composite":I
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    #@b7
    move-result v17

    #@b8
    sub-int v9, v8, v17

    #@ba
    .line 1976
    .restart local v9    # "pRemove":I
    invoke-virtual {v12, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@bd
    .line 1977
    move v8, v9

    #@be
    .line 1979
    if-eqz v14, :cond_9

    #@c0
    .line 1980
    const v17, 0xffff

    #@c3
    move/from16 v0, v17

    #@c5
    if-le v4, v0, :cond_8

    #@c7
    .line 1982
    invoke-static {v4}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    #@ca
    move-result v17

    #@cb
    move/from16 v0, v17

    #@cd
    invoke-virtual {v12, v13, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@d0
    .line 1983
    add-int/lit8 v17, v13, 0x1

    #@d2
    invoke-static {v4}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    #@d5
    move-result v18

    #@d6
    move/from16 v0, v17

    #@d8
    move/from16 v1, v18

    #@da
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@dd
    .line 2006
    :goto_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    #@e0
    move-result v17

    #@e1
    move/from16 v0, v17

    #@e3
    if-eq v8, v0, :cond_5

    #@e5
    .line 2010
    and-int/lit8 v17, v5, 0x1

    #@e7
    if-eqz v17, :cond_b

    #@e9
    .line 2012
    move-object/from16 v0, p0

    #@eb
    invoke-virtual {v0, v4}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@ee
    move-result v17

    #@ef
    move-object/from16 v0, p0

    #@f1
    move/from16 v1, v17

    #@f3
    invoke-direct {v0, v1}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForComposite(I)I

    #@f6
    move-result v6

    #@f7
    goto/16 :goto_0

    #@f9
    .line 1985
    :cond_8
    int-to-char v0, v2

    #@fa
    move/from16 v17, v0

    #@fc
    move/from16 v0, v17

    #@fe
    invoke-virtual {v12, v13, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@101
    .line 1986
    add-int/lit8 v17, v13, 0x1

    #@103
    move/from16 v0, v17

    #@105
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    #@108
    .line 1989
    const/4 v14, 0x0

    #@109
    .line 1990
    add-int/lit8 v8, v8, -0x1

    #@10b
    goto :goto_1

    #@10c
    .line 1992
    :cond_9
    const v17, 0xffff

    #@10f
    move/from16 v0, v17

    #@111
    if-le v4, v0, :cond_a

    #@113
    .line 1995
    const/4 v14, 0x1

    #@114
    .line 1996
    invoke-static {v4}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    #@117
    move-result v17

    #@118
    move/from16 v0, v17

    #@11a
    invoke-virtual {v12, v13, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@11d
    .line 1997
    add-int/lit8 v17, v13, 0x1

    #@11f
    invoke-static {v4}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    #@122
    move-result v18

    #@123
    move/from16 v0, v17

    #@125
    move/from16 v1, v18

    #@127
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@12a
    .line 1998
    add-int/lit8 v8, v8, 0x1

    #@12c
    goto :goto_1

    #@12d
    .line 2001
    :cond_a
    int-to-char v0, v4

    #@12e
    move/from16 v17, v0

    #@130
    move/from16 v0, v17

    #@132
    invoke-virtual {v12, v13, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@135
    goto :goto_1

    #@136
    .line 2014
    :cond_b
    const/4 v6, -0x1

    #@137
    goto/16 :goto_0

    #@139
    .line 2023
    .end local v4    # "composite":I
    .end local v5    # "compositeAndFwd":I
    .end local v9    # "pRemove":I
    :cond_c
    move v11, v3

    #@13a
    .line 2024
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    #@13d
    move-result v17

    #@13e
    move/from16 v0, v17

    #@140
    if-eq v8, v0, :cond_5

    #@142
    .line 2029
    if-nez v3, :cond_e

    #@144
    .line 2031
    move-object/from16 v0, p0

    #@146
    invoke-direct {v0, v7}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForDecompYes(I)I

    #@149
    move-result v6

    #@14a
    if-ltz v6, :cond_1

    #@14c
    .line 2033
    const v17, 0xffff

    #@14f
    move/from16 v0, v17

    #@151
    if-gt v2, v0, :cond_d

    #@153
    .line 2034
    const/4 v14, 0x0

    #@154
    .line 2035
    add-int/lit8 v13, v8, -0x1

    #@156
    goto/16 :goto_0

    #@158
    .line 2037
    :cond_d
    const/4 v14, 0x1

    #@159
    .line 2038
    add-int/lit8 v13, v8, -0x2

    #@15b
    goto/16 :goto_0

    #@15d
    .line 2041
    :cond_e
    if-eqz p3, :cond_1

    #@15f
    .line 2043
    const/4 v6, -0x1

    #@160
    goto/16 :goto_0
.end method


# virtual methods
.method public addCanonIterPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .locals 4
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 558
    invoke-virtual {p0}, Landroid/icu/impl/Normalizer2Impl;->ensureCanonIterData()Landroid/icu/impl/Normalizer2Impl;

    #@3
    .line 560
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/impl/Trie2_32;

    #@5
    sget-object v3, Landroid/icu/impl/Normalizer2Impl;->segmentStarterMapper:Landroid/icu/impl/Trie2$ValueMapper;

    #@7
    invoke-virtual {v2, v3}, Landroid/icu/impl/Trie2_32;->iterator(Landroid/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .line 562
    .local v1, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/icu/impl/Trie2$Range;

    #@17
    .local v0, "range":Landroid/icu/impl/Trie2$Range;
    iget-boolean v2, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 556
    .end local v0    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_0
    return-void

    #@1c
    .line 564
    .restart local v0    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_1
    iget v2, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@1e
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@21
    goto :goto_0
.end method

.method public addLcccChars(Landroid/icu/text/UnicodeSet;)V
    .locals 5
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 533
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v2}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .line 535
    .local v1, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/icu/impl/Trie2$Range;

    #@12
    .local v0, "range":Landroid/icu/impl/Trie2$Range;
    iget-boolean v2, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 531
    .end local v0    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_0
    return-void

    #@17
    .line 536
    .restart local v0    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_1
    iget v2, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@19
    iget v3, v0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    #@1b
    iget v4, v0, Landroid/icu/impl/Trie2$Range;->value:I

    #@1d
    invoke-direct {p0, v2, v3, v4, p1}, Landroid/icu/impl/Normalizer2Impl;->enumLcccRange(IIILandroid/icu/text/UnicodeSet;)V

    #@20
    goto :goto_0
.end method

.method public addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .locals 7
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    const v6, 0xd7a4

    #@3
    .line 542
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    #@5
    invoke-virtual {v3}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .line 544
    .local v2, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/icu/impl/Trie2$Range;

    #@15
    .local v1, "range":Landroid/icu/impl/Trie2$Range;
    iget-boolean v3, v1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 549
    .end local v1    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_0
    const v0, 0xac00

    #@1c
    .local v0, "c":I
    :goto_1
    if-ge v0, v6, :cond_2

    #@1e
    .line 550
    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@21
    .line 551
    add-int/lit8 v3, v0, 0x1

    #@23
    invoke-virtual {p1, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@26
    .line 549
    add-int/lit8 v0, v0, 0x1c

    #@28
    goto :goto_1

    #@29
    .line 545
    .end local v0    # "c":I
    .restart local v1    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_1
    iget v3, v1, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@2b
    iget v4, v1, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    #@2d
    iget v5, v1, Landroid/icu/impl/Trie2$Range;->value:I

    #@2f
    invoke-direct {p0, v3, v4, v5, p1}, Landroid/icu/impl/Normalizer2Impl;->enumNorm16PropertyStartsRange(IIILandroid/icu/text/UnicodeSet;)V

    #@32
    goto :goto_0

    #@33
    .line 553
    .end local v1    # "range":Landroid/icu/impl/Trie2$Range;
    .restart local v0    # "c":I
    :cond_2
    invoke-virtual {p1, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@36
    .line 540
    return-void
.end method

.method public compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z
    .locals 19
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "src"    # I
    .param p3, "limit"    # I
    .param p4, "onlyContiguous"    # Z
    .param p5, "doCompose"    # Z
    .param p6, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@0
    .prologue
    .line 1054
    move-object/from16 v0, p0

    #@2
    iget v7, v0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    #@4
    .line 1068
    .local v7, "minNoMaybeCP":I
    move/from16 v11, p2

    #@6
    .line 1070
    .local v11, "prevBoundary":I
    const/4 v4, 0x0

    #@7
    .line 1071
    .local v4, "c":I
    const/4 v9, 0x0

    #@8
    .line 1074
    .local v9, "norm16":I
    const/4 v12, 0x0

    #@9
    .line 1078
    .local v12, "prevCC":I
    :goto_0
    move/from16 v13, p2

    #@b
    .local v13, "prevSrc":I
    :goto_1
    move/from16 v0, p2

    #@d
    move/from16 v1, p3

    #@f
    if-eq v0, v1, :cond_2

    #@11
    .line 1079
    invoke-interface/range {p1 .. p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@14
    move-result v4

    #@15
    if-lt v4, v7, :cond_0

    #@17
    .line 1080
    move-object/from16 v0, p0

    #@19
    iget-object v0, v0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    #@1b
    move-object/from16 v17, v0

    #@1d
    int-to-char v0, v4

    #@1e
    move/from16 v18, v0

    #@20
    invoke-virtual/range {v17 .. v18}, Landroid/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    #@23
    move-result v9

    #@24
    move-object/from16 v0, p0

    #@26
    invoke-direct {v0, v9}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    #@29
    move-result v17

    #@2a
    .line 1079
    if-eqz v17, :cond_1

    #@2c
    .line 1082
    :cond_0
    add-int/lit8 p2, p2, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 1083
    :cond_1
    int-to-char v0, v4

    #@30
    move/from16 v17, v0

    #@32
    invoke-static/range {v17 .. v17}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@35
    move-result v17

    #@36
    if-nez v17, :cond_4

    #@38
    .line 1105
    :cond_2
    move/from16 v0, p2

    #@3a
    if-eq v0, v13, :cond_b

    #@3c
    .line 1106
    move/from16 v0, p2

    #@3e
    move/from16 v1, p3

    #@40
    if-ne v0, v1, :cond_7

    #@42
    .line 1107
    if-eqz p5, :cond_3

    #@44
    .line 1108
    move-object/from16 v0, p6

    #@46
    move-object/from16 v1, p1

    #@48
    move/from16 v2, p2

    #@4a
    invoke-virtual {v0, v1, v13, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@4d
    .line 1287
    :cond_3
    :goto_2
    const/16 v17, 0x1

    #@4f
    return v17

    #@50
    .line 1087
    :cond_4
    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    #@53
    move-result v17

    #@54
    if-eqz v17, :cond_6

    #@56
    .line 1088
    add-int/lit8 v17, p2, 0x1

    #@58
    move/from16 v0, v17

    #@5a
    move/from16 v1, p3

    #@5c
    if-eq v0, v1, :cond_5

    #@5e
    add-int/lit8 v17, p2, 0x1

    #@60
    move-object/from16 v0, p1

    #@62
    move/from16 v1, v17

    #@64
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@67
    move-result v5

    #@68
    .local v5, "c2":C
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@6b
    move-result v17

    #@6c
    if-eqz v17, :cond_5

    #@6e
    .line 1089
    int-to-char v0, v4

    #@6f
    move/from16 v17, v0

    #@71
    move/from16 v0, v17

    #@73
    invoke-static {v0, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    #@76
    move-result v4

    #@77
    .line 1097
    .end local v5    # "c2":C
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    #@79
    invoke-virtual {v0, v4}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@7c
    move-result v9

    #@7d
    move-object/from16 v0, p0

    #@7f
    invoke-direct {v0, v9}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    #@82
    move-result v17

    #@83
    if-eqz v17, :cond_2

    #@85
    .line 1098
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    #@88
    move-result v17

    #@89
    add-int p2, p2, v17

    #@8b
    goto :goto_1

    #@8c
    .line 1092
    :cond_6
    move/from16 v0, p2

    #@8e
    if-ge v13, v0, :cond_5

    #@90
    add-int/lit8 v17, p2, -0x1

    #@92
    move-object/from16 v0, p1

    #@94
    move/from16 v1, v17

    #@96
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@99
    move-result v5

    #@9a
    .restart local v5    # "c2":C
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@9d
    move-result v17

    #@9e
    if-eqz v17, :cond_5

    #@a0
    .line 1093
    add-int/lit8 p2, p2, -0x1

    #@a2
    .line 1094
    int-to-char v0, v4

    #@a3
    move/from16 v17, v0

    #@a5
    move/from16 v0, v17

    #@a7
    invoke-static {v5, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    #@aa
    move-result v4

    #@ab
    goto :goto_3

    #@ac
    .line 1113
    .end local v5    # "c2":C
    :cond_7
    add-int/lit8 v11, p2, -0x1

    #@ae
    .line 1114
    move-object/from16 v0, p1

    #@b0
    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    #@b3
    move-result v17

    #@b4
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@b7
    move-result v17

    #@b8
    if-eqz v17, :cond_8

    #@ba
    if-ge v13, v11, :cond_8

    #@bc
    .line 1115
    add-int/lit8 v17, v11, -0x1

    #@be
    move-object/from16 v0, p1

    #@c0
    move/from16 v1, v17

    #@c2
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@c5
    move-result v17

    #@c6
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@c9
    move-result v17

    #@ca
    .line 1114
    if-eqz v17, :cond_8

    #@cc
    .line 1117
    add-int/lit8 v11, v11, -0x1

    #@ce
    .line 1119
    :cond_8
    if-eqz p5, :cond_a

    #@d0
    .line 1122
    move-object/from16 v0, p6

    #@d2
    move-object/from16 v1, p1

    #@d4
    invoke-virtual {v0, v1, v13, v11}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@d7
    .line 1123
    move-object/from16 v0, p6

    #@d9
    move-object/from16 v1, p1

    #@db
    move/from16 v2, p2

    #@dd
    invoke-virtual {v0, v1, v11, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@e0
    .line 1128
    :goto_4
    move/from16 v13, p2

    #@e2
    .line 1133
    :cond_9
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    #@e5
    move-result v17

    #@e6
    add-int p2, p2, v17

    #@e8
    .line 1141
    invoke-static {v9}, Landroid/icu/impl/Normalizer2Impl;->isJamoVT(I)Z

    #@eb
    move-result v17

    #@ec
    if-eqz v17, :cond_12

    #@ee
    if-eq v11, v13, :cond_12

    #@f0
    .line 1142
    add-int/lit8 v17, v13, -0x1

    #@f2
    move-object/from16 v0, p1

    #@f4
    move/from16 v1, v17

    #@f6
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@f9
    move-result v10

    #@fa
    .line 1143
    .local v10, "prev":C
    const/4 v8, 0x0

    #@fb
    .line 1144
    .local v8, "needToDecompose":Z
    const/16 v17, 0x11a7

    #@fd
    move/from16 v0, v17

    #@ff
    if-ge v4, v0, :cond_f

    #@101
    .line 1146
    add-int/lit16 v0, v10, -0x1100

    #@103
    move/from16 v17, v0

    #@105
    move/from16 v0, v17

    #@107
    int-to-char v10, v0

    #@108
    .line 1147
    const/16 v17, 0x13

    #@10a
    move/from16 v0, v17

    #@10c
    if-ge v10, v0, :cond_e

    #@10e
    .line 1148
    if-nez p5, :cond_c

    #@110
    .line 1149
    const/16 v17, 0x0

    #@112
    return v17

    #@113
    .line 1125
    .end local v8    # "needToDecompose":Z
    .end local v10    # "prev":C
    :cond_a
    const/4 v12, 0x0

    #@114
    goto :goto_4

    #@115
    .line 1129
    :cond_b
    move/from16 v0, p2

    #@117
    move/from16 v1, p3

    #@119
    if-ne v0, v1, :cond_9

    #@11b
    goto/16 :goto_2

    #@11d
    .line 1153
    .restart local v8    # "needToDecompose":Z
    .restart local v10    # "prev":C
    :cond_c
    mul-int/lit8 v17, v10, 0x15

    #@11f
    add-int/lit16 v0, v4, -0x1161

    #@121
    move/from16 v18, v0

    #@123
    add-int v17, v17, v18

    #@125
    mul-int/lit8 v17, v17, 0x1c

    #@127
    .line 1152
    const v18, 0xac00

    #@12a
    add-int v17, v17, v18

    #@12c
    .line 1151
    move/from16 v0, v17

    #@12e
    int-to-char v15, v0

    #@12f
    .line 1156
    .local v15, "syllable":C
    move/from16 v0, p2

    #@131
    move/from16 v1, p3

    #@133
    if-eq v0, v1, :cond_d

    #@135
    invoke-interface/range {p1 .. p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@138
    move-result v17

    #@139
    move/from16 v0, v17

    #@13b
    add-int/lit16 v0, v0, -0x11a7

    #@13d
    move/from16 v17, v0

    #@13f
    move/from16 v0, v17

    #@141
    int-to-char v0, v0

    #@142
    move/from16 v16, v0

    #@144
    .local v16, "t":C
    const/16 v17, 0x1c

    #@146
    move/from16 v0, v16

    #@148
    move/from16 v1, v17

    #@14a
    if-ge v0, v1, :cond_d

    #@14c
    .line 1157
    add-int/lit8 p2, p2, 0x1

    #@14e
    .line 1158
    add-int v17, v15, v16

    #@150
    move/from16 v0, v17

    #@152
    int-to-char v15, v0

    #@153
    .line 1159
    move/from16 v11, p2

    #@155
    .line 1160
    move-object/from16 v0, p6

    #@157
    invoke-virtual {v0, v15}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->setLastChar(C)V

    #@15a
    goto/16 :goto_0

    #@15c
    .line 1172
    .end local v16    # "t":C
    :cond_d
    const/4 v8, 0x1

    #@15d
    .line 1184
    .end local v15    # "syllable":C
    :cond_e
    if-nez v8, :cond_12

    #@15f
    .line 1186
    if-eqz p5, :cond_11

    #@161
    .line 1187
    int-to-char v0, v4

    #@162
    move/from16 v17, v0

    #@164
    move-object/from16 v0, p6

    #@166
    move/from16 v1, v17

    #@168
    invoke-virtual {v0, v1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(C)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@16b
    goto/16 :goto_0

    #@16d
    .line 1174
    :cond_f
    invoke-static {v10}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isHangulWithoutJamoT(C)Z

    #@170
    move-result v17

    #@171
    if-eqz v17, :cond_e

    #@173
    .line 1177
    if-nez p5, :cond_10

    #@175
    .line 1178
    const/16 v17, 0x0

    #@177
    return v17

    #@178
    .line 1180
    :cond_10
    add-int v17, v10, v4

    #@17a
    move/from16 v0, v17

    #@17c
    add-int/lit16 v0, v0, -0x11a7

    #@17e
    move/from16 v17, v0

    #@180
    move/from16 v0, v17

    #@182
    int-to-char v0, v0

    #@183
    move/from16 v17, v0

    #@185
    move-object/from16 v0, p6

    #@187
    move/from16 v1, v17

    #@189
    invoke-virtual {v0, v1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->setLastChar(C)V

    #@18c
    .line 1181
    move/from16 v11, p2

    #@18e
    .line 1182
    goto/16 :goto_0

    #@190
    .line 1189
    :cond_11
    const/4 v12, 0x0

    #@191
    goto/16 :goto_0

    #@193
    .line 1216
    .end local v8    # "needToDecompose":Z
    .end local v10    # "prev":C
    :cond_12
    const v17, 0xff01

    #@196
    move/from16 v0, v17

    #@198
    if-lt v9, v0, :cond_17

    #@19a
    .line 1217
    and-int/lit16 v6, v9, 0xff

    #@19c
    .line 1218
    .local v6, "cc":I
    if-eqz p4, :cond_14

    #@19e
    .line 1219
    if-eqz p5, :cond_13

    #@1a0
    invoke-virtual/range {p6 .. p6}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getLastCC()I

    #@1a3
    move-result v17

    #@1a4
    :goto_5
    if-nez v17, :cond_14

    #@1a6
    .line 1220
    if-ge v11, v13, :cond_14

    #@1a8
    .line 1228
    move-object/from16 v0, p0

    #@1aa
    move-object/from16 v1, p1

    #@1ac
    invoke-virtual {v0, v1, v11, v13}, Landroid/icu/impl/Normalizer2Impl;->getTrailCCFromCompYesAndZeroCC(Ljava/lang/CharSequence;II)I

    #@1af
    move-result v17

    #@1b0
    move/from16 v0, v17

    #@1b2
    if-le v0, v6, :cond_14

    #@1b4
    .line 1231
    if-nez p5, :cond_18

    #@1b6
    .line 1232
    const/16 v17, 0x0

    #@1b8
    return v17

    #@1b9
    :cond_13
    move/from16 v17, v12

    #@1bb
    .line 1219
    goto :goto_5

    #@1bc
    .line 1234
    :cond_14
    if-eqz p5, :cond_15

    #@1be
    .line 1235
    move-object/from16 v0, p6

    #@1c0
    invoke-virtual {v0, v4, v6}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    #@1c3
    goto/16 :goto_0

    #@1c5
    .line 1237
    :cond_15
    if-gt v12, v6, :cond_16

    #@1c7
    .line 1238
    move v12, v6

    #@1c8
    .line 1239
    goto/16 :goto_0

    #@1ca
    .line 1241
    :cond_16
    const/16 v17, 0x0

    #@1cc
    return v17

    #@1cd
    .line 1243
    .end local v6    # "cc":I
    :cond_17
    if-nez p5, :cond_18

    #@1cf
    move-object/from16 v0, p0

    #@1d1
    invoke-direct {v0, v9}, Landroid/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    #@1d4
    move-result v17

    #@1d5
    if-eqz v17, :cond_1a

    #@1d7
    .line 1262
    :cond_18
    move-object/from16 v0, p0

    #@1d9
    invoke-direct {v0, v4, v9}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    #@1dc
    move-result v17

    #@1dd
    if-eqz v17, :cond_1b

    #@1df
    .line 1263
    move v11, v13

    #@1e0
    .line 1270
    :cond_19
    :goto_6
    invoke-direct/range {p0 .. p3}, Landroid/icu/impl/Normalizer2Impl;->findNextCompBoundary(Ljava/lang/CharSequence;II)I

    #@1e3
    move-result p2

    #@1e4
    .line 1273
    invoke-virtual/range {p6 .. p6}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    #@1e7
    move-result v14

    #@1e8
    .line 1274
    .local v14, "recomposeStartIndex":I
    move-object/from16 v0, p0

    #@1ea
    move-object/from16 v1, p1

    #@1ec
    move/from16 v2, p2

    #@1ee
    move-object/from16 v3, p6

    #@1f0
    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/icu/impl/Normalizer2Impl;->decomposeShort(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    #@1f3
    .line 1275
    move-object/from16 v0, p0

    #@1f5
    move-object/from16 v1, p6

    #@1f7
    move/from16 v2, p4

    #@1f9
    invoke-direct {v0, v1, v14, v2}, Landroid/icu/impl/Normalizer2Impl;->recompose(Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;IZ)V

    #@1fc
    .line 1276
    if-nez p5, :cond_1d

    #@1fe
    .line 1277
    move-object/from16 v0, p6

    #@200
    move-object/from16 v1, p1

    #@202
    move/from16 v2, p2

    #@204
    invoke-virtual {v0, v1, v11, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->equals(Ljava/lang/CharSequence;II)Z

    #@207
    move-result v17

    #@208
    if-nez v17, :cond_1c

    #@20a
    .line 1278
    const/16 v17, 0x0

    #@20c
    return v17

    #@20d
    .line 1244
    .end local v14    # "recomposeStartIndex":I
    :cond_1a
    const/16 v17, 0x0

    #@20f
    return v17

    #@210
    .line 1264
    :cond_1b
    if-eqz p5, :cond_19

    #@212
    .line 1265
    sub-int v17, v13, v11

    #@214
    move-object/from16 v0, p6

    #@216
    move/from16 v1, v17

    #@218
    invoke-virtual {v0, v1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    #@21b
    goto :goto_6

    #@21c
    .line 1280
    .restart local v14    # "recomposeStartIndex":I
    :cond_1c
    invoke-virtual/range {p6 .. p6}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->remove()V

    #@21f
    .line 1281
    const/4 v12, 0x0

    #@220
    .line 1285
    :cond_1d
    move/from16 v11, p2

    #@222
    goto/16 :goto_0
.end method

.method public composeAndAppend(Ljava/lang/CharSequence;ZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 13
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "doCompose"    # Z
    .param p3, "onlyContiguous"    # Z
    .param p4, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@0
    .prologue
    .line 1397
    const/4 v5, 0x0

    #@1
    .local v5, "src":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v12

    #@5
    .line 1398
    .local v12, "limit":I
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->isEmpty()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 1399
    const/4 v1, 0x0

    #@c
    invoke-direct {p0, p1, v1, v12}, Landroid/icu/impl/Normalizer2Impl;->findNextCompBoundary(Ljava/lang/CharSequence;II)I

    #@f
    move-result v10

    #@10
    .line 1400
    .local v10, "firstStarterInSrc":I
    if-eqz v10, :cond_0

    #@12
    .line 1401
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 1402
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    #@19
    move-result v3

    #@1a
    .line 1401
    invoke-direct {p0, v1, v3}, Landroid/icu/impl/Normalizer2Impl;->findPreviousCompBoundary(Ljava/lang/CharSequence;I)I

    #@1d
    move-result v11

    #@1e
    .line 1403
    .local v11, "lastStarterInDest":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    #@23
    move-result v1

    #@24
    sub-int/2addr v1, v11

    #@25
    add-int/2addr v1, v10

    #@26
    add-int/lit8 v1, v1, 0x10

    #@28
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@2b
    .line 1405
    .local v2, "middle":Ljava/lang/StringBuilder;
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    #@32
    move-result v3

    #@33
    invoke-virtual {v2, v1, v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@36
    .line 1406
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    #@39
    move-result v1

    #@3a
    sub-int/2addr v1, v11

    #@3b
    move-object/from16 v0, p4

    #@3d
    invoke-virtual {v0, v1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    #@40
    .line 1407
    const/4 v1, 0x0

    #@41
    invoke-virtual {v2, p1, v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@44
    .line 1408
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@47
    move-result v4

    #@48
    const/4 v3, 0x0

    #@49
    const/4 v6, 0x1

    #@4a
    move-object v1, p0

    #@4b
    move/from16 v5, p3

    #@4d
    move-object/from16 v7, p4

    #@4f
    invoke-virtual/range {v1 .. v7}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    #@52
    .line 1409
    .end local v5    # "src":I
    move v5, v10

    #@53
    .line 1412
    .end local v2    # "middle":Ljava/lang/StringBuilder;
    .end local v10    # "firstStarterInSrc":I
    .end local v11    # "lastStarterInDest":I
    .restart local v5    # "src":I
    :cond_0
    if-eqz p2, :cond_1

    #@55
    .line 1413
    const/4 v8, 0x1

    #@56
    move-object v3, p0

    #@57
    move-object v4, p1

    #@58
    move v6, v12

    #@59
    move/from16 v7, p3

    #@5b
    move-object/from16 v9, p4

    #@5d
    invoke-virtual/range {v3 .. v9}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    #@60
    .line 1396
    :goto_0
    return-void

    #@61
    .line 1415
    :cond_1
    move-object/from16 v0, p4

    #@63
    invoke-virtual {v0, p1, v5, v12}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@66
    goto :goto_0
.end method

.method public composePair(II)I
    .locals 5
    .param p1, "a"    # I
    .param p2, "b"    # I

    #@0
    .prologue
    const v4, 0xfe00

    #@3
    const/4 v3, -0x1

    #@4
    .line 2050
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@7
    move-result v1

    #@8
    .line 2052
    .local v1, "norm16":I
    invoke-static {v1}, Landroid/icu/impl/Normalizer2Impl;->isInert(I)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 2053
    return v3

    #@f
    .line 2054
    :cond_0
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNoMappingsOnly:I

    #@11
    if-ge v1, v2, :cond_7

    #@13
    .line 2055
    invoke-static {v1}, Landroid/icu/impl/Normalizer2Impl;->isJamoL(I)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 2056
    add-int/lit16 p2, p2, -0x1161

    #@1b
    .line 2057
    if-ltz p2, :cond_1

    #@1d
    const/16 v2, 0x15

    #@1f
    if-ge p2, v2, :cond_1

    #@21
    .line 2060
    add-int/lit16 v2, p1, -0x1100

    #@23
    mul-int/lit8 v2, v2, 0x15

    #@25
    add-int/2addr v2, p2

    #@26
    mul-int/lit8 v2, v2, 0x1c

    #@28
    .line 2059
    const v3, 0xac00

    #@2b
    add-int/2addr v2, v3

    #@2c
    .line 2058
    return v2

    #@2d
    .line 2063
    :cond_1
    return v3

    #@2e
    .line 2065
    :cond_2
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isHangul(I)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_4

    #@34
    .line 2066
    add-int/lit16 p2, p2, -0x11a7

    #@36
    .line 2067
    int-to-char v2, p1

    #@37
    invoke-static {v2}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isHangulWithoutJamoT(C)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_3

    #@3d
    if-lez p2, :cond_3

    #@3f
    const/16 v2, 0x1c

    #@41
    if-ge p2, v2, :cond_3

    #@43
    .line 2068
    add-int v2, p1, p2

    #@45
    return v2

    #@46
    .line 2070
    :cond_3
    return v3

    #@47
    .line 2074
    :cond_4
    move v0, v1

    #@48
    .line 2075
    .local v0, "list":I
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@4a
    if-le v1, v2, :cond_5

    #@4c
    .line 2078
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@4e
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    #@51
    move-result v2

    #@52
    and-int/lit8 v2, v2, 0x1f

    #@54
    .line 2077
    add-int/lit8 v2, v2, 0x1

    #@56
    .line 2076
    add-int/2addr v0, v2

    #@57
    .line 2081
    :cond_5
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@59
    sub-int v2, v4, v2

    #@5b
    add-int/2addr v0, v2

    #@5c
    .line 2088
    :goto_0
    if-ltz p2, :cond_6

    #@5e
    const v2, 0x10ffff

    #@61
    if-ge v2, p2, :cond_a

    #@63
    .line 2089
    :cond_6
    return v3

    #@64
    .line 2083
    .end local v0    # "list":I
    :cond_7
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@66
    if-lt v1, v2, :cond_8

    #@68
    if-gt v4, v1, :cond_9

    #@6a
    .line 2084
    :cond_8
    return v3

    #@6b
    .line 2086
    :cond_9
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@6d
    sub-int v0, v1, v2

    #@6f
    .restart local v0    # "list":I
    goto :goto_0

    #@70
    .line 2091
    :cond_a
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    #@72
    invoke-static {v2, v0, p2}, Landroid/icu/impl/Normalizer2Impl;->combine(Ljava/lang/String;II)I

    #@75
    move-result v2

    #@76
    shr-int/lit8 v2, v2, 0x1

    #@78
    return v2
.end method

.method public composeQuickCheck(Ljava/lang/CharSequence;IIZZ)I
    .locals 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "src"    # I
    .param p3, "limit"    # I
    .param p4, "onlyContiguous"    # Z
    .param p5, "doSpan"    # Z

    #@0
    .prologue
    .line 1299
    const/4 v8, 0x0

    #@1
    .line 1300
    .local v8, "qcResult":I
    iget v3, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    #@3
    .line 1306
    .local v3, "minNoMaybeCP":I
    move v5, p2

    #@4
    .line 1308
    .local v5, "prevBoundary":I
    const/4 v0, 0x0

    #@5
    .line 1309
    .local v0, "c":I
    const/4 v4, 0x0

    #@6
    .line 1310
    .local v4, "norm16":I
    const/4 v6, 0x0

    #@7
    .line 1314
    .local v6, "prevCC":I
    :cond_0
    :goto_0
    move v7, p2

    #@8
    .line 1315
    .local v7, "prevSrc":I
    :goto_1
    if-ne p2, p3, :cond_1

    #@a
    .line 1316
    shl-int/lit8 v9, p2, 0x1

    #@c
    or-int/2addr v9, v8

    #@d
    return v9

    #@e
    .line 1318
    :cond_1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@11
    move-result v0

    #@12
    if-lt v0, v3, :cond_2

    #@14
    .line 1319
    iget-object v9, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    #@16
    int-to-char v10, v0

    #@17
    invoke-virtual {v9, v10}, Landroid/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    #@1a
    move-result v4

    #@1b
    invoke-direct {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    #@1e
    move-result v9

    #@1f
    .line 1318
    if-eqz v9, :cond_3

    #@21
    .line 1321
    :cond_2
    add-int/lit8 p2, p2, 0x1

    #@23
    goto :goto_1

    #@24
    .line 1322
    :cond_3
    int-to-char v9, v0

    #@25
    invoke-static {v9}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@28
    move-result v9

    #@29
    if-nez v9, :cond_8

    #@2b
    .line 1343
    :cond_4
    if-eq p2, v7, :cond_6

    #@2d
    .line 1345
    add-int/lit8 v5, p2, -0x1

    #@2f
    .line 1346
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@32
    move-result v9

    #@33
    invoke-static {v9}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@36
    move-result v9

    #@37
    if-eqz v9, :cond_5

    #@39
    if-ge v7, v5, :cond_5

    #@3b
    .line 1347
    add-int/lit8 v9, v5, -0x1

    #@3d
    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@40
    move-result v9

    #@41
    invoke-static {v9}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@44
    move-result v9

    #@45
    .line 1346
    if-eqz v9, :cond_5

    #@47
    .line 1349
    add-int/lit8 v5, v5, -0x1

    #@49
    .line 1351
    :cond_5
    const/4 v6, 0x0

    #@4a
    .line 1353
    move v7, p2

    #@4b
    .line 1356
    :cond_6
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@4e
    move-result v9

    #@4f
    add-int/2addr p2, v9

    #@50
    .line 1362
    invoke-direct {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    #@53
    move-result v9

    #@54
    if-eqz v9, :cond_7

    #@56
    .line 1363
    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    #@59
    move-result v2

    #@5a
    .line 1364
    .local v2, "cc":I
    if-eqz p4, :cond_b

    #@5c
    .line 1365
    if-eqz v2, :cond_b

    #@5e
    .line 1366
    if-nez v6, :cond_b

    #@60
    .line 1367
    if-ge v5, v7, :cond_b

    #@62
    .line 1375
    invoke-virtual {p0, p1, v5, v7}, Landroid/icu/impl/Normalizer2Impl;->getTrailCCFromCompYesAndZeroCC(Ljava/lang/CharSequence;II)I

    #@65
    move-result v9

    #@66
    if-le v9, v2, :cond_b

    #@68
    .line 1390
    .end local v2    # "cc":I
    :cond_7
    shl-int/lit8 v9, v5, 0x1

    #@6a
    return v9

    #@6b
    .line 1326
    :cond_8
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    #@6e
    move-result v9

    #@6f
    if-eqz v9, :cond_a

    #@71
    .line 1327
    add-int/lit8 v9, p2, 0x1

    #@73
    if-eq v9, p3, :cond_9

    #@75
    add-int/lit8 v9, p2, 0x1

    #@77
    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@7a
    move-result v1

    #@7b
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@7e
    move-result v9

    #@7f
    if-eqz v9, :cond_9

    #@81
    .line 1328
    int-to-char v9, v0

    #@82
    invoke-static {v9, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    #@85
    move-result v0

    #@86
    .line 1336
    .end local v1    # "c2":C
    :cond_9
    :goto_2
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@89
    move-result v4

    #@8a
    invoke-direct {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    #@8d
    move-result v9

    #@8e
    if-eqz v9, :cond_4

    #@90
    .line 1337
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@93
    move-result v9

    #@94
    add-int/2addr p2, v9

    #@95
    goto/16 :goto_1

    #@97
    .line 1331
    :cond_a
    if-ge v7, p2, :cond_9

    #@99
    add-int/lit8 v9, p2, -0x1

    #@9b
    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@9e
    move-result v1

    #@9f
    .restart local v1    # "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@a2
    move-result v9

    #@a3
    if-eqz v9, :cond_9

    #@a5
    .line 1332
    add-int/lit8 p2, p2, -0x1

    #@a7
    .line 1333
    int-to-char v9, v0

    #@a8
    invoke-static {v1, v9}, Ljava/lang/Character;->toCodePoint(CC)I

    #@ab
    move-result v0

    #@ac
    goto :goto_2

    #@ad
    .line 1378
    .end local v1    # "c2":C
    .restart local v2    # "cc":I
    :cond_b
    if-le v6, v2, :cond_c

    #@af
    if-nez v2, :cond_7

    #@b1
    .line 1379
    :cond_c
    move v6, v2

    #@b2
    .line 1380
    const v9, 0xff01

    #@b5
    if-ge v4, v9, :cond_0

    #@b7
    .line 1381
    if-nez p5, :cond_d

    #@b9
    .line 1382
    const/4 v8, 0x1

    #@ba
    goto/16 :goto_0

    #@bc
    .line 1384
    :cond_d
    shl-int/lit8 v9, v5, 0x1

    #@be
    return v9
.end method

.method public decompose(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I
    .locals 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "src"    # I
    .param p3, "limit"    # I
    .param p4, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@0
    .prologue
    .line 950
    iget v3, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    #@2
    .line 953
    .local v3, "minNoCP":I
    const/4 v0, 0x0

    #@3
    .line 954
    .local v0, "c":I
    const/4 v4, 0x0

    #@4
    .line 957
    .local v4, "norm16":I
    move v5, p2

    #@5
    .line 958
    .local v5, "prevBoundary":I
    const/4 v6, 0x0

    #@6
    .line 962
    .local v6, "prevCC":I
    :cond_0
    :goto_0
    move v7, p2

    #@7
    .local v7, "prevSrc":I
    :goto_1
    if-eq p2, p3, :cond_3

    #@9
    .line 963
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@c
    move-result v0

    #@d
    if-lt v0, v3, :cond_1

    #@f
    .line 964
    iget-object v8, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    #@11
    int-to-char v9, v0

    #@12
    invoke-virtual {v8, v9}, Landroid/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    #@15
    move-result v4

    #@16
    invoke-direct {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->isMostDecompYesAndZeroCC(I)Z

    #@19
    move-result v8

    #@1a
    .line 963
    if-eqz v8, :cond_2

    #@1c
    .line 966
    :cond_1
    add-int/lit8 p2, p2, 0x1

    #@1e
    goto :goto_1

    #@1f
    .line 967
    :cond_2
    int-to-char v8, v0

    #@20
    invoke-static {v8}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@23
    move-result v8

    #@24
    if-nez v8, :cond_5

    #@26
    .line 989
    :cond_3
    if-eq p2, v7, :cond_4

    #@28
    .line 990
    if-eqz p4, :cond_8

    #@2a
    .line 991
    invoke-virtual {p4, p1, v7, p2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@2d
    .line 997
    :cond_4
    :goto_2
    if-ne p2, p3, :cond_9

    #@2f
    .line 1019
    return p2

    #@30
    .line 971
    :cond_5
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    #@33
    move-result v8

    #@34
    if-eqz v8, :cond_7

    #@36
    .line 972
    add-int/lit8 v8, p2, 0x1

    #@38
    if-eq v8, p3, :cond_6

    #@3a
    add-int/lit8 v8, p2, 0x1

    #@3c
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    #@3f
    move-result v1

    #@40
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@43
    move-result v8

    #@44
    if-eqz v8, :cond_6

    #@46
    .line 973
    int-to-char v8, v0

    #@47
    invoke-static {v8, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    #@4a
    move-result v0

    #@4b
    .line 981
    .end local v1    # "c2":C
    :cond_6
    :goto_3
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@4e
    move-result v4

    #@4f
    invoke-direct {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->isMostDecompYesAndZeroCC(I)Z

    #@52
    move-result v8

    #@53
    if-eqz v8, :cond_3

    #@55
    .line 982
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@58
    move-result v8

    #@59
    add-int/2addr p2, v8

    #@5a
    goto :goto_1

    #@5b
    .line 976
    :cond_7
    if-ge v7, p2, :cond_6

    #@5d
    add-int/lit8 v8, p2, -0x1

    #@5f
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    #@62
    move-result v1

    #@63
    .restart local v1    # "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@66
    move-result v8

    #@67
    if-eqz v8, :cond_6

    #@69
    .line 977
    add-int/lit8 p2, p2, -0x1

    #@6b
    .line 978
    int-to-char v8, v0

    #@6c
    invoke-static {v1, v8}, Ljava/lang/Character;->toCodePoint(CC)I

    #@6f
    move-result v0

    #@70
    goto :goto_3

    #@71
    .line 993
    .end local v1    # "c2":C
    :cond_8
    const/4 v6, 0x0

    #@72
    .line 994
    move v5, p2

    #@73
    goto :goto_2

    #@74
    .line 1002
    :cond_9
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@77
    move-result v8

    #@78
    add-int/2addr p2, v8

    #@79
    .line 1003
    if-eqz p4, :cond_a

    #@7b
    .line 1004
    invoke-direct {p0, v0, v4, p4}, Landroid/icu/impl/Normalizer2Impl;->decompose(IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    #@7e
    goto :goto_0

    #@7f
    .line 1006
    :cond_a
    invoke-virtual {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    #@82
    move-result v8

    #@83
    if-eqz v8, :cond_c

    #@85
    .line 1007
    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    #@88
    move-result v2

    #@89
    .line 1008
    .local v2, "cc":I
    if-le v6, v2, :cond_b

    #@8b
    if-nez v2, :cond_c

    #@8d
    .line 1009
    :cond_b
    move v6, v2

    #@8e
    .line 1010
    const/4 v8, 0x1

    #@8f
    if-gt v2, v8, :cond_0

    #@91
    .line 1011
    move v5, p2

    #@92
    goto/16 :goto_0

    #@94
    .line 1016
    .end local v2    # "cc":I
    :cond_c
    return v5
.end method

.method public decompose(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/Appendable;
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 927
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v3

    #@4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v5

    #@8
    const/4 v2, 0x0

    #@9
    move-object v0, p0

    #@a
    move-object v1, p1

    #@b
    move-object v4, p2

    #@c
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V

    #@f
    .line 928
    return-object p2
.end method

.method public decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "src"    # I
    .param p3, "limit"    # I
    .param p4, "dest"    # Ljava/lang/StringBuilder;
    .param p5, "destLengthEstimate"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 937
    if-gez p5, :cond_0

    #@3
    .line 938
    sub-int p5, p3, p2

    #@5
    .line 940
    :cond_0
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@8
    .line 941
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@a
    invoke-direct {v0, p0, p4, p5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    #@d
    .line 942
    .local v0, "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    #@10
    .line 936
    return-void
.end method

.method public decomposeAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "doDecompose"    # Z
    .param p3, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1022
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v8

    #@5
    .line 1023
    .local v8, "limit":I
    if-nez v8, :cond_0

    #@7
    .line 1024
    return-void

    #@8
    .line 1026
    :cond_0
    if-eqz p2, :cond_1

    #@a
    .line 1027
    invoke-virtual {p0, p1, v2, v8, p3}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    #@d
    .line 1028
    return-void

    #@e
    .line 1031
    :cond_1
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@11
    move-result v6

    #@12
    .line 1032
    .local v6, "c":I
    const/4 v3, 0x0

    #@13
    .line 1034
    .local v3, "src":I
    invoke-virtual {p0, v6}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@16
    move-result v0

    #@17
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getCC(I)I

    #@1a
    move-result v7

    #@1b
    .local v7, "cc":I
    move v5, v7

    #@1c
    .local v5, "prevCC":I
    move v4, v7

    #@1d
    .line 1035
    .local v4, "firstCC":I
    :goto_0
    if-eqz v7, :cond_2

    #@1f
    .line 1036
    move v5, v7

    #@20
    .line 1037
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    #@23
    move-result v0

    #@24
    add-int/2addr v3, v0

    #@25
    .line 1038
    if-lt v3, v8, :cond_3

    #@27
    :cond_2
    move-object v0, p3

    #@28
    move-object v1, p1

    #@29
    .line 1044
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;IIII)V

    #@2c
    .line 1045
    invoke-virtual {p3, p1, v3, v8}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@2f
    .line 1021
    return-void

    #@30
    .line 1041
    :cond_3
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@33
    move-result v6

    #@34
    .line 1042
    invoke-virtual {p0, v6}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@37
    move-result v0

    #@38
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getCC(I)I

    #@3b
    move-result v7

    #@3c
    goto :goto_0
.end method

.method public decomposeShort(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "src"    # I
    .param p3, "limit"    # I
    .param p4, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@0
    .prologue
    .line 1763
    :goto_0
    if-ge p2, p3, :cond_0

    #@2
    .line 1764
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@5
    move-result v0

    #@6
    .line 1765
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@9
    move-result v1

    #@a
    add-int/2addr p2, v1

    #@b
    .line 1766
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@e
    move-result v1

    #@f
    invoke-direct {p0, v0, v1, p4}, Landroid/icu/impl/Normalizer2Impl;->decompose(IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    #@12
    goto :goto_0

    #@13
    .line 1762
    .end local v0    # "c":I
    :cond_0
    return-void
.end method

.method public declared-synchronized ensureCanonIterData()Landroid/icu/impl/Normalizer2Impl;
    .locals 15

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 593
    :try_start_0
    iget-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/impl/Trie2_32;

    #@3
    if-nez v13, :cond_2

    #@5
    .line 594
    new-instance v6, Landroid/icu/impl/Trie2Writable;

    #@7
    const/4 v13, 0x0

    #@8
    const/4 v14, 0x0

    #@9
    invoke-direct {v6, v13, v14}, Landroid/icu/impl/Trie2Writable;-><init>(II)V

    #@c
    .line 595
    .local v6, "newData":Landroid/icu/impl/Trie2Writable;
    new-instance v13, Ljava/util/ArrayList;

    #@e
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    #@13
    .line 596
    iget-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    #@15
    invoke-virtual {v13}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v12

    #@19
    .line 598
    .local v12, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v13

    #@1d
    if-eqz v13, :cond_1

    #@1f
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v11

    #@23
    check-cast v11, Landroid/icu/impl/Trie2$Range;

    #@25
    .local v11, "range":Landroid/icu/impl/Trie2$Range;
    iget-boolean v13, v11, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    #@27
    if-eqz v13, :cond_3

    #@29
    .line 667
    .end local v11    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_1
    invoke-virtual {v6}, Landroid/icu/impl/Trie2Writable;->toTrie2_32()Landroid/icu/impl/Trie2_32;

    #@2c
    move-result-object v13

    #@2d
    iput-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/impl/Trie2_32;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .end local v6    # "newData":Landroid/icu/impl/Trie2Writable;
    .end local v12    # "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
    :cond_2
    monitor-exit p0

    #@30
    .line 669
    return-object p0

    #@31
    .line 599
    .restart local v6    # "newData":Landroid/icu/impl/Trie2Writable;
    .restart local v11    # "range":Landroid/icu/impl/Trie2$Range;
    .restart local v12    # "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
    :cond_3
    :try_start_1
    iget v8, v11, Landroid/icu/impl/Trie2$Range;->value:I

    #@33
    .line 600
    .local v8, "norm16":I
    if-eqz v8, :cond_0

    #@35
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@37
    if-gt v13, v8, :cond_4

    #@39
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    #@3b
    if-lt v8, v13, :cond_0

    #@3d
    .line 609
    :cond_4
    iget v0, v11, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@3f
    .local v0, "c":I
    :goto_0
    iget v13, v11, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    #@41
    if-gt v0, v13, :cond_0

    #@43
    .line 610
    invoke-virtual {v6, v0}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@46
    move-result v10

    #@47
    .line 611
    .local v10, "oldValue":I
    move v7, v10

    #@48
    .line 612
    .local v7, "newValue":I
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@4a
    if-lt v8, v13, :cond_7

    #@4c
    .line 614
    const/high16 v13, -0x80000000

    #@4e
    or-int/2addr v7, v13

    #@4f
    .line 615
    const v13, 0xfe00

    #@52
    if-ge v8, v13, :cond_5

    #@54
    .line 616
    const/high16 v13, 0x40000000    # 2.0f

    #@56
    or-int/2addr v7, v13

    #@57
    .line 662
    :cond_5
    :goto_1
    if-eq v7, v10, :cond_6

    #@59
    .line 663
    invoke-virtual {v6, v0, v7}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@5c
    .line 609
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 618
    :cond_7
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@61
    if-ge v8, v13, :cond_8

    #@63
    .line 619
    const/high16 v13, 0x40000000    # 2.0f

    #@65
    or-int/2addr v7, v13

    #@66
    goto :goto_1

    #@67
    .line 622
    :cond_8
    move v1, v0

    #@68
    .line 623
    .local v1, "c2":I
    move v9, v8

    #@69
    .line 624
    .local v9, "norm16_2":I
    :goto_2
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    #@6b
    if-gt v13, v9, :cond_9

    #@6d
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@6f
    if-ge v9, v13, :cond_9

    #@71
    .line 625
    invoke-direct {p0, v1, v9}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    #@74
    move-result v1

    #@75
    .line 626
    invoke-virtual {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@78
    move-result v9

    #@79
    goto :goto_2

    #@7a
    .line 628
    :cond_9
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@7c
    if-gt v13, v9, :cond_c

    #@7e
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    #@80
    if-ge v9, v13, :cond_c

    #@82
    .line 630
    iget-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@84
    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    #@87
    move-result v3

    #@88
    .line 631
    .local v3, "firstUnit":I
    and-int/lit8 v4, v3, 0x1f

    #@8a
    .line 632
    .local v4, "length":I
    and-int/lit16 v13, v3, 0x80

    #@8c
    if-eqz v13, :cond_a

    #@8e
    .line 633
    if-ne v0, v1, :cond_a

    #@90
    iget-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@92
    add-int/lit8 v14, v9, -0x1

    #@94
    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    #@97
    move-result v13

    #@98
    and-int/lit16 v13, v13, 0xff

    #@9a
    if-eqz v13, :cond_a

    #@9c
    .line 634
    const/high16 v13, -0x80000000

    #@9e
    or-int/2addr v7, v13

    #@9f
    .line 638
    :cond_a
    if-eqz v4, :cond_5

    #@a1
    .line 639
    add-int/lit8 v9, v9, 0x1

    #@a3
    .line 641
    add-int v5, v9, v4

    #@a5
    .line 642
    .local v5, "limit":I
    iget-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@a7
    invoke-virtual {v13, v9}, Ljava/lang/String;->codePointAt(I)I

    #@aa
    move-result v1

    #@ab
    .line 643
    invoke-direct {p0, v6, v0, v1}, Landroid/icu/impl/Normalizer2Impl;->addToStartSet(Landroid/icu/impl/Trie2Writable;II)V

    #@ae
    .line 647
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    #@b0
    if-lt v9, v13, :cond_5

    #@b2
    .line 648
    :cond_b
    :goto_3
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@b5
    move-result v13

    #@b6
    add-int/2addr v9, v13

    #@b7
    if-ge v9, v5, :cond_5

    #@b9
    .line 649
    iget-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@bb
    invoke-virtual {v13, v9}, Ljava/lang/String;->codePointAt(I)I

    #@be
    move-result v1

    #@bf
    .line 650
    invoke-virtual {v6, v1}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@c2
    move-result v2

    #@c3
    .line 651
    .local v2, "c2Value":I
    const/high16 v13, -0x80000000

    #@c5
    and-int/2addr v13, v2

    #@c6
    if-nez v13, :cond_b

    #@c8
    .line 652
    const/high16 v13, -0x80000000

    #@ca
    or-int/2addr v13, v2

    #@cb
    invoke-virtual {v6, v1, v13}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ce
    goto :goto_3

    #@cf
    .end local v0    # "c":I
    .end local v1    # "c2":I
    .end local v2    # "c2Value":I
    .end local v3    # "firstUnit":I
    .end local v4    # "length":I
    .end local v5    # "limit":I
    .end local v6    # "newData":Landroid/icu/impl/Trie2Writable;
    .end local v7    # "newValue":I
    .end local v8    # "norm16":I
    .end local v9    # "norm16_2":I
    .end local v10    # "oldValue":I
    .end local v11    # "range":Landroid/icu/impl/Trie2$Range;
    .end local v12    # "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
    :catchall_0
    move-exception v13

    #@d0
    monitor-exit p0

    #@d1
    throw v13

    #@d2
    .line 659
    .restart local v0    # "c":I
    .restart local v1    # "c2":I
    .restart local v6    # "newData":Landroid/icu/impl/Trie2Writable;
    .restart local v7    # "newValue":I
    .restart local v8    # "norm16":I
    .restart local v9    # "norm16_2":I
    .restart local v10    # "oldValue":I
    .restart local v11    # "range":Landroid/icu/impl/Trie2$Range;
    .restart local v12    # "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
    :cond_c
    :try_start_2
    invoke-direct {p0, v6, v0, v1}, Landroid/icu/impl/Normalizer2Impl;->addToStartSet(Landroid/icu/impl/Trie2Writable;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d5
    goto :goto_1
.end method

.method public getCC(I)I
    .locals 1
    .param p1, "norm16"    # I

    #@0
    .prologue
    .line 688
    const v0, 0xfe00

    #@3
    if-lt p1, v0, :cond_0

    #@5
    .line 689
    and-int/lit16 v0, p1, 0xff

    #@7
    return v0

    #@8
    .line 691
    :cond_0
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    #@a
    if-lt p1, v0, :cond_1

    #@c
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    #@e
    if-gt v0, p1, :cond_2

    #@10
    .line 692
    :cond_1
    const/4 v0, 0x0

    #@11
    return v0

    #@12
    .line 694
    :cond_2
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getCCFromNoNo(I)I

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public getCanonStartSet(ILandroid/icu/text/UnicodeSet;)Z
    .locals 8
    .param p1, "c"    # I
    .param p2, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 856
    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/impl/Trie2_32;

    #@4
    invoke-virtual {v4, p1}, Landroid/icu/impl/Trie2_32;->get(I)I

    #@7
    move-result v4

    #@8
    const v5, 0x7fffffff

    #@b
    and-int v0, v4, v5

    #@d
    .line 857
    .local v0, "canonValue":I
    if-nez v0, :cond_0

    #@f
    .line 858
    return v6

    #@10
    .line 860
    :cond_0
    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    #@13
    .line 861
    const v4, 0x1fffff

    #@16
    and-int v3, v0, v4

    #@18
    .line 862
    .local v3, "value":I
    const/high16 v4, 0x200000

    #@1a
    and-int/2addr v4, v0

    #@1b
    if-eqz v4, :cond_3

    #@1d
    .line 863
    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Landroid/icu/text/UnicodeSet;

    #@25
    invoke-virtual {p2, v4}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@28
    .line 867
    :cond_1
    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    #@2a
    and-int/2addr v4, v0

    #@2b
    if-eqz v4, :cond_2

    #@2d
    .line 868
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@30
    move-result v1

    #@31
    .line 869
    .local v1, "norm16":I
    if-ne v1, v7, :cond_4

    #@33
    .line 870
    add-int/lit16 v4, p1, -0x1100

    #@35
    mul-int/lit16 v4, v4, 0x24c

    #@37
    const v5, 0xac00

    #@3a
    add-int v2, v5, v4

    #@3c
    .line 871
    .local v2, "syllable":I
    add-int/lit16 v4, v2, 0x24c

    #@3e
    add-int/lit8 v4, v4, -0x1

    #@40
    invoke-virtual {p2, v2, v4}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    #@43
    .line 876
    .end local v1    # "norm16":I
    .end local v2    # "syllable":I
    :cond_2
    :goto_1
    return v7

    #@44
    .line 864
    :cond_3
    if-eqz v3, :cond_1

    #@46
    .line 865
    invoke-virtual {p2, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@49
    goto :goto_0

    #@4a
    .line 873
    .restart local v1    # "norm16":I
    :cond_4
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsList(I)I

    #@4d
    move-result v4

    #@4e
    invoke-direct {p0, v4, p2}, Landroid/icu/impl/Normalizer2Impl;->addComposites(ILandroid/icu/text/UnicodeSet;)V

    #@51
    goto :goto_1
.end method

.method public getCompQuickCheck(I)I
    .locals 1
    .param p1, "norm16"    # I

    #@0
    .prologue
    .line 675
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    const v0, 0xff01

    #@7
    if-gt v0, p1, :cond_1

    #@9
    .line 676
    :cond_0
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 677
    :cond_1
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@d
    if-gt v0, p1, :cond_2

    #@f
    .line 678
    const/4 v0, 0x2

    #@10
    return v0

    #@11
    .line 680
    :cond_2
    const/4 v0, 0x0

    #@12
    return v0
.end method

.method public getDecomposition(I)Ljava/lang/String;
    .locals 7
    .param p1, "c"    # I

    #@0
    .prologue
    .line 766
    const/4 v1, -0x1

    #@1
    .line 769
    .local v1, "decomp":I
    :goto_0
    iget v5, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    #@3
    if-lt p1, v5, :cond_0

    #@5
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@8
    move-result v3

    #@9
    .local v3, "norm16":I
    invoke-virtual {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_1

    #@f
    .line 784
    .end local v3    # "norm16":I
    :cond_0
    if-gez v1, :cond_4

    #@11
    .line 785
    const/4 v5, 0x0

    #@12
    return-object v5

    #@13
    .line 771
    .restart local v3    # "norm16":I
    :cond_1
    invoke-direct {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->isHangul(I)Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_2

    #@19
    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    .line 774
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-static {p1, v0}, Landroid/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    #@21
    .line 775
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    return-object v5

    #@26
    .line 776
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_2
    invoke-direct {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_3

    #@2c
    .line 777
    invoke-direct {p0, p1, v3}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    #@2f
    move-result p1

    #@30
    move v1, p1

    #@31
    .line 778
    goto :goto_0

    #@32
    .line 781
    :cond_3
    iget-object v5, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@34
    add-int/lit8 v4, v3, 0x1

    #@36
    .end local v3    # "norm16":I
    .local v4, "norm16":I
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    #@39
    move-result v5

    #@3a
    and-int/lit8 v2, v5, 0x1f

    #@3c
    .line 782
    .local v2, "length":I
    iget-object v5, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@3e
    add-int v6, v4, v2

    #@40
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    return-object v5

    #@45
    .line 787
    .end local v2    # "length":I
    .end local v4    # "norm16":I
    :cond_4
    invoke-static {v1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    return-object v5
.end method

.method public getFCD16(I)I
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 706
    if-gez p1, :cond_0

    #@3
    .line 707
    return v1

    #@4
    .line 708
    :cond_0
    const/16 v0, 0x180

    #@6
    if-ge p1, v0, :cond_1

    #@8
    .line 709
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->tccc180:[I

    #@a
    aget v0, v0, p1

    #@c
    return v0

    #@d
    .line 710
    :cond_1
    const v0, 0xffff

    #@10
    if-gt p1, v0, :cond_2

    #@12
    .line 711
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_2

    #@18
    return v1

    #@19
    .line 713
    :cond_2
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    #@1c
    move-result v0

    #@1d
    return v0
.end method

.method public getFCD16FromBelow180(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 716
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->tccc180:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public getFCD16FromNormData(I)I
    .locals 5
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 729
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@4
    move-result v2

    #@5
    .line 730
    .local v2, "norm16":I
    iget v3, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@7
    if-gt v2, v3, :cond_0

    #@9
    .line 732
    return v4

    #@a
    .line 733
    :cond_0
    const v3, 0xfe00

    #@d
    if-lt v2, v3, :cond_1

    #@f
    .line 735
    and-int/lit16 v2, v2, 0xff

    #@11
    .line 736
    shl-int/lit8 v3, v2, 0x8

    #@13
    or-int/2addr v3, v2

    #@14
    return v3

    #@15
    .line 737
    :cond_1
    iget v3, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@17
    if-lt v2, v3, :cond_2

    #@19
    .line 738
    return v4

    #@1a
    .line 739
    :cond_2
    invoke-direct {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_3

    #@20
    .line 740
    invoke-direct {p0, p1, v2}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    #@23
    move-result p1

    #@24
    goto :goto_0

    #@25
    .line 743
    :cond_3
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@27
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v1

    #@2b
    .line 744
    .local v1, "firstUnit":I
    and-int/lit8 v3, v1, 0x1f

    #@2d
    if-nez v3, :cond_4

    #@2f
    .line 748
    const/16 v3, 0x1ff

    #@31
    return v3

    #@32
    .line 750
    :cond_4
    shr-int/lit8 v0, v1, 0x8

    #@34
    .line 751
    .local v0, "fcd16":I
    and-int/lit16 v3, v1, 0x80

    #@36
    if-eqz v3, :cond_5

    #@38
    .line 752
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@3a
    add-int/lit8 v4, v2, -0x1

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@3f
    move-result v3

    #@40
    const v4, 0xff00

    #@43
    and-int/2addr v3, v4

    #@44
    or-int/2addr v0, v3

    #@45
    .line 754
    :cond_5
    return v0
.end method

.method public getNorm16(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 672
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNormTrie()Landroid/icu/impl/Trie2_16;
    .locals 1

    #@0
    .prologue
    .line 575
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    #@2
    return-object v0
.end method

.method public getRawDecomposition(I)Ljava/lang/String;
    .locals 8
    .param p1, "c"    # I

    #@0
    .prologue
    .line 801
    iget v6, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    #@2
    if-lt p1, v6, :cond_0

    #@4
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@7
    move-result v3

    #@8
    .local v3, "norm16":I
    invoke-virtual {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_1

    #@e
    .line 803
    .end local v3    # "norm16":I
    :cond_0
    const/4 v6, 0x0

    #@f
    return-object v6

    #@10
    .line 804
    .restart local v3    # "norm16":I
    :cond_1
    invoke-direct {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->isHangul(I)Z

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_2

    #@16
    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    .line 807
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-static {p1, v0}, Landroid/icu/impl/Normalizer2Impl$Hangul;->getRawDecomposition(ILjava/lang/Appendable;)V

    #@1e
    .line 808
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    return-object v6

    #@23
    .line 809
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_2
    invoke-direct {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_3

    #@29
    .line 810
    invoke-direct {p0, p1, v3}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    #@2c
    move-result v6

    #@2d
    invoke-static {v6}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    return-object v6

    #@32
    .line 813
    :cond_3
    iget-object v6, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@34
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    #@37
    move-result v1

    #@38
    .line 814
    .local v1, "firstUnit":I
    and-int/lit8 v2, v1, 0x1f

    #@3a
    .line 815
    .local v2, "mLength":I
    and-int/lit8 v6, v1, 0x40

    #@3c
    if-eqz v6, :cond_5

    #@3e
    .line 818
    shr-int/lit8 v6, v1, 0x7

    #@40
    and-int/lit8 v6, v6, 0x1

    #@42
    sub-int v6, v3, v6

    #@44
    add-int/lit8 v4, v6, -0x1

    #@46
    .line 819
    .local v4, "rawMapping":I
    iget-object v6, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@48
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    #@4b
    move-result v5

    #@4c
    .line 820
    .local v5, "rm0":C
    const/16 v6, 0x1f

    #@4e
    if-gt v5, v6, :cond_4

    #@50
    .line 821
    iget-object v6, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@52
    sub-int v7, v4, v5

    #@54
    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    return-object v6

    #@59
    .line 824
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    #@5b
    add-int/lit8 v7, v2, -0x1

    #@5d
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    #@60
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    .line 825
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    add-int/lit8 v3, v3, 0x3

    #@66
    .line 826
    iget-object v6, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@68
    add-int v7, v3, v2

    #@6a
    add-int/lit8 v7, v7, -0x2

    #@6c
    invoke-virtual {v0, v6, v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v6

    #@70
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v6

    #@74
    return-object v6

    #@75
    .line 829
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v4    # "rawMapping":I
    .end local v5    # "rm0":C
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@77
    .line 830
    iget-object v6, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@79
    add-int v7, v3, v2

    #@7b
    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7e
    move-result-object v6

    #@7f
    return-object v6
.end method

.method getTrailCCFromCompYesAndZeroCC(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "cpStart"    # I
    .param p3, "cpLimit"    # I

    #@0
    .prologue
    .line 1699
    add-int/lit8 v2, p3, -0x1

    #@2
    if-ne p2, v2, :cond_0

    #@4
    .line 1700
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@7
    move-result v0

    #@8
    .line 1704
    .local v0, "c":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@b
    move-result v1

    #@c
    .line 1705
    .local v1, "prevNorm16":I
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@e
    if-gt v1, v2, :cond_1

    #@10
    .line 1706
    const/4 v2, 0x0

    #@11
    return v2

    #@12
    .line 1702
    .end local v0    # "c":I
    .end local v1    # "prevNorm16":I
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@15
    move-result v0

    #@16
    .restart local v0    # "c":I
    goto :goto_0

    #@17
    .line 1708
    .restart local v1    # "prevNorm16":I
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@19
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v2

    #@1d
    shr-int/lit8 v2, v2, 0x8

    #@1f
    return v2
.end method

.method public hasCompBoundaryAfter(IZZ)Z
    .locals 5
    .param p1, "c"    # I
    .param p2, "onlyContiguous"    # Z
    .param p3, "testInert"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1616
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@5
    move-result v1

    #@6
    .line 1617
    .local v1, "norm16":I
    invoke-static {v1}, Landroid/icu/impl/Normalizer2Impl;->isInert(I)Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    .line 1618
    return v3

    #@d
    .line 1619
    :cond_0
    iget v4, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@f
    if-gt v1, v4, :cond_3

    #@11
    .line 1623
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isHangul(I)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_1

    #@17
    int-to-char v4, p1

    #@18
    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isHangulWithoutJamoT(C)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_2

    #@1e
    :cond_1
    :goto_1
    return v2

    #@1f
    :cond_2
    move v2, v3

    #@20
    goto :goto_1

    #@21
    .line 1624
    :cond_3
    if-eqz p3, :cond_4

    #@23
    iget v4, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    #@25
    :goto_2
    if-lt v1, v4, :cond_5

    #@27
    .line 1625
    return v2

    #@28
    .line 1624
    :cond_4
    iget v4, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@2a
    goto :goto_2

    #@2b
    .line 1626
    :cond_5
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_6

    #@31
    .line 1627
    invoke-direct {p0, p1, v1}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    #@34
    move-result p1

    #@35
    goto :goto_0

    #@36
    .line 1632
    :cond_6
    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@38
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@3b
    move-result v0

    #@3c
    .line 1640
    .local v0, "firstUnit":I
    and-int/lit8 v4, v0, 0x20

    #@3e
    if-nez v4, :cond_9

    #@40
    .line 1641
    if-eqz p2, :cond_7

    #@42
    const/16 v4, 0x1ff

    #@44
    if-gt v0, v4, :cond_8

    #@46
    .line 1639
    :cond_7
    :goto_3
    return v3

    #@47
    :cond_8
    move v3, v2

    #@48
    .line 1641
    goto :goto_3

    #@49
    :cond_9
    move v3, v2

    #@4a
    .line 1640
    goto :goto_3
.end method

.method public hasCompBoundaryBefore(I)Z
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 1612
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@7
    move-result v0

    #@8
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method public hasDecompBoundary(IZ)Z
    .locals 6
    .param p1, "c"    # I
    .param p2, "before"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1577
    :goto_0
    iget v4, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    #@4
    if-ge p1, v4, :cond_0

    #@6
    .line 1578
    return v2

    #@7
    .line 1580
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@a
    move-result v1

    #@b
    .line 1581
    .local v1, "norm16":I
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isHangul(I)Z

    #@e
    move-result v4

    #@f
    if-nez v4, :cond_1

    #@11
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isDecompYesAndZeroCC(I)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_2

    #@17
    .line 1582
    :cond_1
    return v2

    #@18
    .line 1583
    :cond_2
    const v4, 0xfe00

    #@1b
    if-le v1, v4, :cond_3

    #@1d
    .line 1584
    return v3

    #@1e
    .line 1585
    :cond_3
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_4

    #@24
    .line 1586
    invoke-direct {p0, p1, v1}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    #@27
    move-result p1

    #@28
    goto :goto_0

    #@29
    .line 1589
    :cond_4
    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@2b
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@2e
    move-result v0

    #@2f
    .line 1590
    .local v0, "firstUnit":I
    and-int/lit8 v4, v0, 0x1f

    #@31
    if-nez v4, :cond_5

    #@33
    .line 1591
    return v3

    #@34
    .line 1593
    :cond_5
    if-nez p2, :cond_7

    #@36
    .line 1596
    const/16 v4, 0x1ff

    #@38
    if-le v0, v4, :cond_6

    #@3a
    .line 1597
    return v3

    #@3b
    .line 1599
    :cond_6
    const/16 v4, 0xff

    #@3d
    if-gt v0, v4, :cond_7

    #@3f
    .line 1600
    return v2

    #@40
    .line 1605
    :cond_7
    and-int/lit16 v4, v0, 0x80

    #@42
    if-eqz v4, :cond_8

    #@44
    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@46
    add-int/lit8 v5, v1, -0x1

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@4b
    move-result v4

    #@4c
    const v5, 0xff00

    #@4f
    and-int/2addr v4, v5

    #@50
    if-nez v4, :cond_9

    #@52
    :cond_8
    :goto_1
    return v2

    #@53
    :cond_9
    move v2, v3

    #@54
    goto :goto_1
.end method

.method public hasFCDBoundaryAfter(I)Z
    .locals 4
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 1648
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@5
    move-result v0

    #@6
    .line 1649
    .local v0, "fcd16":I
    if-le v0, v1, :cond_0

    #@8
    and-int/lit16 v3, v0, 0xff

    #@a
    if-nez v3, :cond_1

    #@c
    :cond_0
    :goto_0
    return v1

    #@d
    :cond_1
    move v1, v2

    #@e
    goto :goto_0
.end method

.method public hasFCDBoundaryBefore(I)Z
    .locals 3
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1646
    const/16 v1, 0x300

    #@3
    if-lt p1, v1, :cond_0

    #@5
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@8
    move-result v1

    #@9
    const/16 v2, 0xff

    #@b
    if-gt v1, v2, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public isAlgorithmicNoNo(I)Z
    .locals 2
    .param p1, "norm16"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 683
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    #@3
    if-gt v1, p1, :cond_0

    #@5
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@7
    if-ge p1, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isCanonSegmentStarter(I)Z
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 843
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/impl/Trie2_32;

    #@3
    invoke-virtual {v1, p1}, Landroid/icu/impl/Trie2_32;->get(I)I

    #@6
    move-result v1

    #@7
    if-ltz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isCompNo(I)Z
    .locals 2
    .param p1, "norm16"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 684
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    #@3
    if-gt v1, p1, :cond_0

    #@5
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@7
    if-ge p1, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isDecompInert(I)Z
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 1609
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->isDecompYesAndZeroCC(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isDecompYes(I)Z
    .locals 2
    .param p1, "norm16"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 685
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@3
    if-lt p1, v1, :cond_0

    #@5
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@7
    if-gt v1, p1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isFCDInert(I)Z
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1651
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@4
    move-result v1

    #@5
    if-gt v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public load(Ljava/lang/String;)Landroid/icu/impl/Normalizer2Impl;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 497
    invoke-static {p1}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->load(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Normalizer2Impl;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public load(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Normalizer2Impl;
    .locals 14
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 423
    :try_start_0
    sget-object v11, Landroid/icu/impl/Normalizer2Impl;->IS_ACCEPTABLE:Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

    #@2
    const v12, 0x4e726d32

    #@5
    invoke-static {p1, v12, v11}, Landroid/icu/impl/ICUBinary;->readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)Landroid/icu/util/VersionInfo;

    #@8
    move-result-object v11

    #@9
    iput-object v11, p0, Landroid/icu/impl/Normalizer2Impl;->dataVersion:Landroid/icu/util/VersionInfo;

    #@b
    .line 424
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@e
    move-result v11

    #@f
    div-int/lit8 v6, v11, 0x4

    #@11
    .line 425
    .local v6, "indexesLength":I
    const/16 v11, 0xd

    #@13
    if-gt v6, v11, :cond_0

    #@15
    .line 426
    new-instance v11, Landroid/icu/util/ICUUncheckedIOException;

    #@17
    const-string/jumbo v12, "Normalizer2 data: not enough indexes"

    #@1a
    invoke-direct {v11, v12}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 492
    .end local v6    # "indexesLength":I
    :catch_0
    move-exception v3

    #@1f
    .line 493
    .local v3, "e":Ljava/io/IOException;
    new-instance v11, Landroid/icu/util/ICUUncheckedIOException;

    #@21
    invoke-direct {v11, v3}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@24
    throw v11

    #@25
    .line 428
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "indexesLength":I
    :cond_0
    :try_start_1
    new-array v5, v6, [I

    #@27
    .line 429
    .local v5, "inIndexes":[I
    mul-int/lit8 v11, v6, 0x4

    #@29
    const/4 v12, 0x0

    #@2a
    aput v11, v5, v12

    #@2c
    .line 430
    const/4 v4, 0x1

    #@2d
    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_1

    #@2f
    .line 431
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@32
    move-result v11

    #@33
    aput v11, v5, v4

    #@35
    .line 430
    add-int/lit8 v4, v4, 0x1

    #@37
    goto :goto_0

    #@38
    .line 434
    :cond_1
    const/16 v11, 0x8

    #@3a
    aget v11, v5, v11

    #@3c
    iput v11, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    #@3e
    .line 435
    const/16 v11, 0x9

    #@40
    aget v11, v5, v11

    #@42
    iput v11, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    #@44
    .line 437
    const/16 v11, 0xa

    #@46
    aget v11, v5, v11

    #@48
    iput v11, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@4a
    .line 438
    const/16 v11, 0xe

    #@4c
    aget v11, v5, v11

    #@4e
    iput v11, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNoMappingsOnly:I

    #@50
    .line 439
    const/16 v11, 0xb

    #@52
    aget v11, v5, v11

    #@54
    iput v11, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    #@56
    .line 440
    const/16 v11, 0xc

    #@58
    aget v11, v5, v11

    #@5a
    iput v11, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    #@5c
    .line 441
    const/16 v11, 0xd

    #@5e
    aget v11, v5, v11

    #@60
    iput v11, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@62
    .line 444
    const/4 v11, 0x0

    #@63
    aget v9, v5, v11

    #@65
    .line 445
    .local v9, "offset":I
    const/4 v11, 0x1

    #@66
    aget v7, v5, v11

    #@68
    .line 446
    .local v7, "nextOffset":I
    invoke-static {p1}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    #@6b
    move-result-object v11

    #@6c
    iput-object v11, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    #@6e
    .line 447
    iget-object v11, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    #@70
    invoke-virtual {v11}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    #@73
    move-result v10

    #@74
    .line 448
    .local v10, "trieLength":I
    sub-int v11, v7, v9

    #@76
    if-le v10, v11, :cond_2

    #@78
    .line 449
    new-instance v11, Landroid/icu/util/ICUUncheckedIOException;

    #@7a
    const-string/jumbo v12, "Normalizer2 data: not enough bytes for normTrie"

    #@7d
    invoke-direct {v11, v12}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    #@80
    throw v11

    #@81
    .line 451
    :cond_2
    sub-int v11, v7, v9

    #@83
    sub-int/2addr v11, v10

    #@84
    invoke-static {p1, v11}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@87
    .line 454
    move v9, v7

    #@88
    .line 455
    const/4 v11, 0x2

    #@89
    aget v7, v5, v11

    #@8b
    .line 456
    sub-int v11, v7, v9

    #@8d
    div-int/lit8 v8, v11, 0x2

    #@8f
    .line 458
    .local v8, "numChars":I
    if-eqz v8, :cond_4

    #@91
    .line 459
    new-array v2, v8, [C

    #@93
    .line 460
    .local v2, "chars":[C
    const/4 v4, 0x0

    #@94
    :goto_1
    if-ge v4, v8, :cond_3

    #@96
    .line 461
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getChar()C

    #@99
    move-result v11

    #@9a
    aput-char v11, v2, v4

    #@9c
    .line 460
    add-int/lit8 v4, v4, 0x1

    #@9e
    goto :goto_1

    #@9f
    .line 463
    :cond_3
    new-instance v11, Ljava/lang/String;

    #@a1
    invoke-direct {v11, v2}, Ljava/lang/String;-><init>([C)V

    #@a4
    iput-object v11, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    #@a6
    .line 464
    iget-object v11, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    #@a8
    iget v12, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@aa
    const v13, 0xfe00

    #@ad
    sub-int v12, v13, v12

    #@af
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@b2
    move-result-object v11

    #@b3
    iput-object v11, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@b5
    .line 468
    .end local v2    # "chars":[C
    :cond_4
    move v9, v7

    #@b6
    .line 469
    const/16 v11, 0x100

    #@b8
    new-array v11, v11, [B

    #@ba
    iput-object v11, p0, Landroid/icu/impl/Normalizer2Impl;->smallFCD:[B

    #@bc
    .line 470
    const/4 v4, 0x0

    #@bd
    :goto_2
    const/16 v11, 0x100

    #@bf
    if-ge v4, v11, :cond_5

    #@c1
    .line 471
    iget-object v11, p0, Landroid/icu/impl/Normalizer2Impl;->smallFCD:[B

    #@c3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@c6
    move-result v12

    #@c7
    aput-byte v12, v11, v4

    #@c9
    .line 470
    add-int/lit8 v4, v4, 0x1

    #@cb
    goto :goto_2

    #@cc
    .line 476
    :cond_5
    const/16 v11, 0x180

    #@ce
    new-array v11, v11, [I

    #@d0
    iput-object v11, p0, Landroid/icu/impl/Normalizer2Impl;->tccc180:[I

    #@d2
    .line 477
    const/4 v0, 0x0

    #@d3
    .line 478
    .local v0, "bits":I
    const/4 v1, 0x0

    #@d4
    .local v1, "c":I
    :goto_3
    const/16 v11, 0x180

    #@d6
    if-ge v1, v11, :cond_9

    #@d8
    .line 479
    and-int/lit16 v11, v1, 0xff

    #@da
    if-nez v11, :cond_6

    #@dc
    .line 480
    iget-object v11, p0, Landroid/icu/impl/Normalizer2Impl;->smallFCD:[B

    #@de
    shr-int/lit8 v12, v1, 0x8

    #@e0
    aget-byte v0, v11, v12

    #@e2
    .line 482
    :cond_6
    and-int/lit8 v11, v0, 0x1

    #@e4
    if-eqz v11, :cond_7

    #@e6
    .line 483
    const/4 v4, 0x0

    #@e7
    :goto_4
    const/16 v11, 0x20

    #@e9
    if-ge v4, v11, :cond_8

    #@eb
    .line 484
    iget-object v11, p0, Landroid/icu/impl/Normalizer2Impl;->tccc180:[I

    #@ed
    invoke-virtual {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    #@f0
    move-result v12

    #@f1
    and-int/lit16 v12, v12, 0xff

    #@f3
    aput v12, v11, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@f5
    .line 483
    add-int/lit8 v4, v4, 0x1

    #@f7
    add-int/lit8 v1, v1, 0x1

    #@f9
    goto :goto_4

    #@fa
    .line 487
    :cond_7
    add-int/lit8 v1, v1, 0x20

    #@fc
    .line 478
    :cond_8
    shr-int/lit8 v0, v0, 0x1

    #@fe
    goto :goto_3

    #@ff
    .line 491
    :cond_9
    return-object p0
.end method

.method public makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I
    .locals 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "src"    # I
    .param p3, "limit"    # I
    .param p4, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 1430
    move v5, p2

    #@2
    .line 1432
    .local v5, "prevBoundary":I
    const/4 v0, 0x0

    #@3
    .line 1433
    .local v0, "c":I
    const/4 v6, 0x0

    #@4
    .line 1434
    .local v6, "prevFCD16":I
    const/4 v2, 0x0

    #@5
    .line 1438
    .local v2, "fcd16":I
    :goto_0
    move v7, p2

    #@6
    .local v7, "prevSrc":I
    :goto_1
    if-eq p2, p3, :cond_4

    #@8
    .line 1439
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@b
    move-result v0

    #@c
    const/16 v8, 0x300

    #@e
    if-ge v0, v8, :cond_0

    #@10
    .line 1440
    not-int v6, v0

    #@11
    .line 1441
    add-int/lit8 p2, p2, 0x1

    #@13
    goto :goto_1

    #@14
    .line 1442
    :cond_0
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    #@17
    move-result v8

    #@18
    if-nez v8, :cond_1

    #@1a
    .line 1443
    const/4 v6, 0x0

    #@1b
    .line 1444
    add-int/lit8 p2, p2, 0x1

    #@1d
    goto :goto_1

    #@1e
    .line 1446
    :cond_1
    int-to-char v8, v0

    #@1f
    invoke-static {v8}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@22
    move-result v8

    #@23
    if-eqz v8, :cond_2

    #@25
    .line 1448
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    #@28
    move-result v8

    #@29
    if-eqz v8, :cond_3

    #@2b
    .line 1449
    add-int/lit8 v8, p2, 0x1

    #@2d
    if-eq v8, p3, :cond_2

    #@2f
    add-int/lit8 v8, p2, 0x1

    #@31
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    #@34
    move-result v1

    #@35
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@38
    move-result v8

    #@39
    if-eqz v8, :cond_2

    #@3b
    .line 1450
    int-to-char v8, v0

    #@3c
    invoke-static {v8, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    #@3f
    move-result v0

    #@40
    .line 1459
    .end local v1    # "c2":C
    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    #@43
    move-result v2

    #@44
    const/16 v8, 0xff

    #@46
    if-gt v2, v8, :cond_4

    #@48
    .line 1460
    move v6, v2

    #@49
    .line 1461
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@4c
    move-result v8

    #@4d
    add-int/2addr p2, v8

    #@4e
    goto :goto_1

    #@4f
    .line 1453
    :cond_3
    if-ge v7, p2, :cond_2

    #@51
    add-int/lit8 v8, p2, -0x1

    #@53
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    #@56
    move-result v1

    #@57
    .restart local v1    # "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@5a
    move-result v8

    #@5b
    if-eqz v8, :cond_2

    #@5d
    .line 1454
    add-int/lit8 p2, p2, -0x1

    #@5f
    .line 1455
    int-to-char v8, v0

    #@60
    invoke-static {v1, v8}, Ljava/lang/Character;->toCodePoint(CC)I

    #@63
    move-result v0

    #@64
    goto :goto_2

    #@65
    .line 1468
    .end local v1    # "c2":C
    :cond_4
    if-eq p2, v7, :cond_f

    #@67
    .line 1469
    if-ne p2, p3, :cond_6

    #@69
    .line 1470
    if-eqz p4, :cond_5

    #@6b
    .line 1471
    invoke-virtual {p4, p1, v7, p2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@6e
    .line 1547
    :cond_5
    :goto_3
    return p2

    #@6f
    .line 1475
    :cond_6
    move v5, p2

    #@70
    .line 1477
    if-gez v6, :cond_d

    #@72
    .line 1479
    not-int v4, v6

    #@73
    .line 1480
    .local v4, "prev":I
    const/16 v8, 0x180

    #@75
    if-ge v4, v8, :cond_c

    #@77
    iget-object v8, p0, Landroid/icu/impl/Normalizer2Impl;->tccc180:[I

    #@79
    aget v6, v8, v4

    #@7b
    .line 1481
    :goto_4
    if-le v6, v10, :cond_7

    #@7d
    .line 1482
    add-int/lit8 v5, v5, -0x1

    #@7f
    .line 1499
    .end local v4    # "prev":I
    :cond_7
    :goto_5
    if-eqz p4, :cond_8

    #@81
    .line 1502
    invoke-virtual {p4, p1, v7, v5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@84
    .line 1503
    invoke-virtual {p4, p1, v5, p2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@87
    .line 1506
    :cond_8
    move v7, p2

    #@88
    .line 1511
    :cond_9
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@8b
    move-result v8

    #@8c
    add-int/2addr p2, v8

    #@8d
    .line 1514
    and-int/lit16 v8, v6, 0xff

    #@8f
    shr-int/lit8 v9, v2, 0x8

    #@91
    if-gt v8, v9, :cond_10

    #@93
    .line 1516
    and-int/lit16 v8, v2, 0xff

    #@95
    if-gt v8, v10, :cond_a

    #@97
    .line 1517
    move v5, p2

    #@98
    .line 1519
    :cond_a
    if-eqz p4, :cond_b

    #@9a
    .line 1520
    invoke-virtual {p4, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appendZeroCC(I)V

    #@9d
    .line 1522
    :cond_b
    move v6, v2

    #@9e
    .line 1523
    goto/16 :goto_0

    #@a0
    .line 1480
    .restart local v4    # "prev":I
    :cond_c
    invoke-virtual {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    #@a3
    move-result v6

    #@a4
    goto :goto_4

    #@a5
    .line 1485
    .end local v4    # "prev":I
    :cond_d
    add-int/lit8 v3, p2, -0x1

    #@a7
    .line 1486
    .local v3, "p":I
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@aa
    move-result v8

    #@ab
    invoke-static {v8}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@ae
    move-result v8

    #@af
    if-eqz v8, :cond_e

    #@b1
    if-ge v7, v3, :cond_e

    #@b3
    .line 1487
    add-int/lit8 v8, v3, -0x1

    #@b5
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    #@b8
    move-result v8

    #@b9
    invoke-static {v8}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@bc
    move-result v8

    #@bd
    .line 1486
    if-eqz v8, :cond_e

    #@bf
    .line 1489
    add-int/lit8 v3, v3, -0x1

    #@c1
    .line 1492
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@c4
    move-result v8

    #@c5
    add-int/lit8 v9, v3, 0x1

    #@c7
    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@ca
    move-result v9

    #@cb
    invoke-static {v8, v9}, Ljava/lang/Character;->toCodePoint(CC)I

    #@ce
    move-result v8

    #@cf
    invoke-virtual {p0, v8}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    #@d2
    move-result v6

    #@d3
    .line 1495
    :cond_e
    if-le v6, v10, :cond_7

    #@d5
    .line 1496
    move v5, v3

    #@d6
    goto :goto_5

    #@d7
    .line 1507
    .end local v3    # "p":I
    :cond_f
    if-ne p2, p3, :cond_9

    #@d9
    goto :goto_3

    #@da
    .line 1524
    :cond_10
    if-nez p4, :cond_11

    #@dc
    .line 1525
    return v5

    #@dd
    .line 1532
    :cond_11
    sub-int v8, v7, v5

    #@df
    invoke-virtual {p4, v8}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    #@e2
    .line 1537
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/Normalizer2Impl;->findNextFCDBoundary(Ljava/lang/CharSequence;II)I

    #@e5
    move-result p2

    #@e6
    .line 1542
    invoke-virtual {p0, p1, v5, p2, p4}, Landroid/icu/impl/Normalizer2Impl;->decomposeShort(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    #@e9
    .line 1543
    move v5, p2

    #@ea
    .line 1544
    const/4 v6, 0x0

    #@eb
    goto/16 :goto_0
.end method

.method public makeFCDAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "doMakeFCD"    # Z
    .param p3, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1550
    const/4 v4, 0x0

    #@2
    .local v4, "src":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v2

    #@6
    .line 1551
    .local v2, "limit":I
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->isEmpty()Z

    #@9
    move-result v5

    #@a
    if-nez v5, :cond_0

    #@c
    .line 1552
    invoke-direct {p0, p1, v7, v2}, Landroid/icu/impl/Normalizer2Impl;->findNextFCDBoundary(Ljava/lang/CharSequence;II)I

    #@f
    move-result v0

    #@10
    .line 1553
    .local v0, "firstBoundaryInSrc":I
    if-eqz v0, :cond_0

    #@12
    .line 1554
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    .line 1555
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    #@19
    move-result v6

    #@1a
    .line 1554
    invoke-direct {p0, v5, v6}, Landroid/icu/impl/Normalizer2Impl;->findPreviousFCDBoundary(Ljava/lang/CharSequence;I)I

    #@1d
    move-result v1

    #@1e
    .line 1556
    .local v1, "lastBoundaryInDest":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    #@23
    move-result v5

    #@24
    sub-int/2addr v5, v1

    #@25
    add-int/2addr v5, v0

    #@26
    add-int/lit8 v5, v5, 0x10

    #@28
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@2b
    .line 1558
    .local v3, "middle":Ljava/lang/StringBuilder;
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    #@32
    move-result v6

    #@33
    invoke-virtual {v3, v5, v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@36
    .line 1559
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    #@39
    move-result v5

    #@3a
    sub-int/2addr v5, v1

    #@3b
    invoke-virtual {p3, v5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    #@3e
    .line 1560
    invoke-virtual {v3, p1, v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@41
    .line 1561
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@44
    move-result v5

    #@45
    invoke-virtual {p0, v3, v7, v5, p3}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    #@48
    .line 1562
    move v4, v0

    #@49
    .line 1565
    .end local v0    # "firstBoundaryInSrc":I
    .end local v1    # "lastBoundaryInDest":I
    .end local v3    # "middle":Ljava/lang/StringBuilder;
    :cond_0
    if-eqz p2, :cond_1

    #@4b
    .line 1566
    invoke-virtual {p0, p1, v4, v2, p3}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    #@4e
    .line 1549
    :goto_0
    return-void

    #@4f
    .line 1568
    :cond_1
    invoke-virtual {p3, p1, v4, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@52
    goto :goto_0
.end method

.method public singleLeadMightHaveNonZeroFCD16(I)Z
    .locals 4
    .param p1, "lead"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 720
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->smallFCD:[B

    #@3
    shr-int/lit8 v3, p1, 0x8

    #@5
    aget-byte v0, v2, v3

    #@7
    .line 721
    .local v0, "bits":B
    if-nez v0, :cond_0

    #@9
    return v1

    #@a
    .line 722
    :cond_0
    shr-int/lit8 v2, p1, 0x5

    #@c
    and-int/lit8 v2, v2, 0x7

    #@e
    shr-int v2, v0, v2

    #@10
    and-int/lit8 v2, v2, 0x1

    #@12
    if-eqz v2, :cond_1

    #@14
    const/4 v1, 0x1

    #@15
    :cond_1
    return v1
.end method
