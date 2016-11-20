.class public final Landroid/icu/impl/Normalizer2Impl;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Normalizer2Impl$1;,
        Landroid/icu/impl/Normalizer2Impl$Hangul;,
        Landroid/icu/impl/Normalizer2Impl$IsAcceptable;,
        Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;,
        Landroid/icu/impl/Normalizer2Impl$UTF16Plus;
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
    .line 422
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/impl/Normalizer2Impl$IsAcceptable;-><init>(Landroid/icu/impl/Normalizer2Impl$IsAcceptable;)V

    #@6
    sput-object v0, Landroid/icu/impl/Normalizer2Impl;->IS_ACCEPTABLE:Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

    #@8
    .line 564
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$1;

    #@a
    invoke-direct {v0}, Landroid/icu/impl/Normalizer2Impl$1;-><init>()V

    #@d
    sput-object v0, Landroid/icu/impl/Normalizer2Impl;->segmentStarterMapper:Landroid/icu/impl/Trie2$ValueMapper;

    #@f
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 414
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
    .line 1874
    :cond_0
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    #@2
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v2

    #@6
    .line 1875
    .local v2, "firstUnit":I
    and-int/lit8 v3, v2, 0x1

    #@8
    if-nez v3, :cond_2

    #@a
    .line 1876
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    #@c
    add-int/lit8 v4, p1, 0x1

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v1

    #@12
    .line 1877
    .local v1, "compositeAndFwd":I
    add-int/lit8 p1, p1, 0x2

    #@14
    .line 1883
    :goto_0
    shr-int/lit8 v0, v1, 0x1

    #@16
    .line 1884
    .local v0, "composite":I
    and-int/lit8 v3, v1, 0x1

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 1885
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
    .line 1887
    :cond_1
    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@28
    .line 1888
    const v3, 0x8000

    #@2b
    and-int/2addr v3, v2

    #@2c
    if-eqz v3, :cond_0

    #@2e
    .line 1871
    return-void

    #@2f
    .line 1879
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
    .line 1880
    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    #@3f
    add-int/lit8 v5, p1, 0x2

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@44
    move-result v4

    #@45
    .line 1879
    or-int v1, v3, v4

    #@47
    .line 1881
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
    .line 2166
    invoke-virtual {p1, p3}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@8
    move-result v0

    #@9
    .line 2167
    .local v0, "canonValue":I
    const v3, 0x3fffff

    #@c
    and-int/2addr v3, v0

    #@d
    if-nez v3, :cond_0

    #@f
    if-eqz p2, :cond_0

    #@11
    .line 2170
    or-int v3, v0, p2

    #@13
    invoke-virtual {p1, p3, v3}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@16
    .line 2165
    :goto_0
    return-void

    #@17
    .line 2174
    :cond_0
    and-int v3, v0, v5

    #@19
    if-nez v3, :cond_2

    #@1b
    .line 2175
    and-int v1, v0, v4

    #@1d
    .line 2176
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
    .line 2177
    invoke-virtual {p1, p3, v0}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@2c
    .line 2178
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    #@2e
    new-instance v2, Landroid/icu/text/UnicodeSet;

    #@30
    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@33
    .local v2, "set":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36
    .line 2179
    if-eqz v1, :cond_1

    #@38
    .line 2180
    invoke-virtual {v2, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@3b
    .line 2185
    .end local v1    # "firstOrigin":I
    :cond_1
    :goto_1
    invoke-virtual {v2, p2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@3e
    goto :goto_0

    #@3f
    .line 2183
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
    .line 1825
    if-ge p2, v4, :cond_2

    #@4
    .line 1828
    shl-int/lit8 v1, p2, 0x1

    #@6
    .line 1829
    .local v1, "key1":I
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v0

    #@a
    .local v0, "firstUnit":I
    if-le v1, v0, :cond_0

    #@c
    .line 1830
    and-int/lit8 v4, v0, 0x1

    #@e
    add-int/lit8 v4, v4, 0x2

    #@10
    add-int/2addr p1, v4

    #@11
    goto :goto_0

    #@12
    .line 1832
    :cond_0
    and-int/lit16 v4, v0, 0x7ffe

    #@14
    if-ne v1, v4, :cond_4

    #@16
    .line 1833
    and-int/lit8 v4, v0, 0x1

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 1834
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
    .line 1836
    :cond_1
    add-int/lit8 v4, p1, 0x1

    #@2c
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@2f
    move-result v4

    #@30
    return v4

    #@31
    .line 1842
    .end local v0    # "firstUnit":I
    .end local v1    # "key1":I
    :cond_2
    shr-int/lit8 v4, p2, 0x9

    #@33
    and-int/lit8 v4, v4, -0x2

    #@35
    add-int/lit16 v1, v4, 0x3400

    #@37
    .line 1843
    .restart local v1    # "key1":I
    shl-int/lit8 v4, p2, 0x6

    #@39
    const v5, 0xffff

    #@3c
    and-int v2, v4, v5

    #@3e
    .line 1846
    .local v2, "key2":I
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@41
    move-result v0

    #@42
    .restart local v0    # "firstUnit":I
    if-le v1, v0, :cond_3

    #@44
    .line 1847
    and-int/lit8 v4, v0, 0x1

    #@46
    add-int/lit8 v4, v4, 0x2

    #@48
    add-int/2addr p1, v4

    #@49
    goto :goto_1

    #@4a
    .line 1848
    :cond_3
    and-int/lit16 v4, v0, 0x7ffe

    #@4c
    if-ne v1, v4, :cond_4

    #@4e
    .line 1849
    add-int/lit8 v4, p1, 0x1

    #@50
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@53
    move-result v3

    #@54
    .local v3, "secondUnit":I
    if-le v2, v3, :cond_6

    #@56
    .line 1850
    const v4, 0x8000

    #@59
    and-int/2addr v4, v0

    #@5a
    if-eqz v4, :cond_5

    #@5c
    .line 1865
    .end local v2    # "key2":I
    .end local v3    # "secondUnit":I
    :cond_4
    const/4 v4, -0x1

    #@5d
    return v4

    #@5e
    .line 1853
    .restart local v2    # "key2":I
    .restart local v3    # "secondUnit":I
    :cond_5
    add-int/lit8 p1, p1, 0x3

    #@60
    goto :goto_1

    #@61
    .line 1855
    :cond_6
    const v4, 0xffc0

    #@64
    and-int/2addr v4, v3

    #@65
    if-ne v2, v4, :cond_4

    #@67
    .line 1856
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
    .line 1771
    :goto_0
    invoke-virtual {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1773
    invoke-static {p2}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    #@9
    move-result v0

    #@a
    invoke-virtual {p3, p1, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    #@d
    .line 1795
    :goto_1
    return-void

    #@e
    .line 1774
    :cond_0
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isHangul(I)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 1776
    invoke-static {p1, p3}, Landroid/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    #@17
    goto :goto_1

    #@18
    .line 1777
    :cond_1
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 1778
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    #@21
    move-result p1

    #@22
    .line 1779
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@25
    move-result p2

    #@26
    goto :goto_0

    #@27
    .line 1783
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@29
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    #@2c
    move-result v6

    #@2d
    .line 1784
    .local v6, "firstUnit":I
    and-int/lit8 v7, v6, 0x1f

    #@2f
    .line 1786
    .local v7, "length":I
    shr-int/lit8 v5, v6, 0x8

    #@31
    .line 1787
    .local v5, "trailCC":I
    and-int/lit16 v0, v6, 0x80

    #@33
    if-eqz v0, :cond_3

    #@35
    .line 1788
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
    .line 1792
    .local v4, "leadCC":I
    :goto_2
    add-int/lit8 p2, p2, 0x1

    #@41
    .line 1793
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
    .line 1790
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
    .line 498
    invoke-virtual {p0, p3}, Landroid/icu/impl/Normalizer2Impl;->isAlgorithmicNoNo(I)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_3

    #@8
    .line 502
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@b
    move-result v0

    #@c
    .line 503
    .local v0, "fcd16":I
    if-le v0, v2, :cond_1

    #@e
    invoke-virtual {p4, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@11
    .line 504
    :cond_1
    add-int/lit8 p1, p1, 0x1

    #@13
    if-le p1, p2, :cond_0

    #@15
    .line 497
    :cond_2
    :goto_0
    return-void

    #@16
    .line 506
    .end local v0    # "fcd16":I
    :cond_3
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@19
    move-result v0

    #@1a
    .line 507
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
    .line 513
    invoke-virtual {p4, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@3
    .line 514
    if-eq p1, p2, :cond_1

    #@5
    invoke-virtual {p0, p3}, Landroid/icu/impl/Normalizer2Impl;->isAlgorithmicNoNo(I)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 517
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@e
    move-result v1

    #@f
    .line 518
    .local v1, "prevFCD16":I
    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    #@11
    if-gt p1, p2, :cond_1

    #@13
    .line 519
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@16
    move-result v0

    #@17
    .line 520
    .local v0, "fcd16":I
    if-eq v0, v1, :cond_0

    #@19
    .line 521
    invoke-virtual {p4, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@1c
    .line 522
    move v1, v0

    #@1d
    goto :goto_0

    #@1e
    .line 511
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
    .line 2133
    :goto_0
    if-ge p2, p3, :cond_0

    #@2
    .line 2134
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@5
    move-result v0

    #@6
    .line 2135
    .local v0, "c":I
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    #@8
    invoke-virtual {v2, v0}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@b
    move-result v1

    #@c
    .line 2136
    .local v1, "norm16":I
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 2141
    .end local v0    # "c":I
    .end local v1    # "norm16":I
    :cond_0
    return p2

    #@13
    .line 2139
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
    .line 2155
    :goto_0
    if-ge p2, p3, :cond_0

    #@2
    .line 2156
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@5
    move-result v0

    #@6
    .line 2157
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
    .line 2162
    .end local v0    # "c":I
    :cond_0
    return p2

    #@13
    .line 2160
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
    .line 2121
    :cond_0
    if-lez p2, :cond_1

    #@2
    .line 2122
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@5
    move-result v0

    #@6
    .line 2123
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@9
    move-result v1

    #@a
    sub-int/2addr p2, v1

    #@b
    .line 2124
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(I)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 2130
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
    .line 2145
    :cond_0
    if-lez p2, :cond_1

    #@2
    .line 2146
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@5
    move-result v0

    #@6
    .line 2147
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@9
    move-result v1

    #@a
    sub-int/2addr p2, v1

    #@b
    .line 2148
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
    .line 2152
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
    .line 1687
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
    .line 1688
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
    .line 1690
    :cond_0
    return v1
.end method

.method public static getCCFromYesOrMaybe(I)I
    .locals 1
    .param p0, "norm16"    # I

    #@0
    .prologue
    .line 694
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
    .line 1748
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1749
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForDecompYes(I)I

    #@9
    move-result v0

    #@a
    .line 1748
    :goto_0
    return v0

    #@b
    .line 1750
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
    .line 1738
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@2
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v0

    #@6
    .line 1739
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
    .line 1741
    and-int/lit8 v2, v0, 0x1f

    #@12
    .line 1739
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
    .line 1721
    if-eqz p1, :cond_0

    #@5
    if-gt v1, p1, :cond_1

    #@7
    .line 1722
    :cond_0
    const/4 v0, -0x1

    #@8
    return v0

    #@9
    .line 1724
    :cond_1
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@b
    sub-int/2addr p1, v0

    #@c
    if-gez p1, :cond_2

    #@e
    .line 1728
    add-int/2addr p1, v1

    #@f
    .line 1730
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
    .line 2100
    :goto_0
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 2101
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 2102
    :cond_0
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 2103
    return v3

    #@10
    .line 2104
    :cond_1
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 2105
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    #@19
    move-result p1

    #@1a
    .line 2106
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@1d
    move-result p2

    #@1e
    goto :goto_0

    #@1f
    .line 2109
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@21
    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v0

    #@25
    .line 2110
    .local v0, "firstUnit":I
    and-int/lit8 v1, v0, 0x1f

    #@27
    if-nez v1, :cond_3

    #@29
    .line 2111
    return v3

    #@2a
    .line 2113
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
    .line 2114
    return v3

    #@3d
    .line 2116
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
    .line 1656
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
    .line 1679
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
    .line 1667
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@4
    if-lt p1, v2, :cond_0

    #@6
    .line 1668
    const v2, 0xff00

    #@9
    if-ne p1, v2, :cond_1

    #@b
    .line 1667
    :cond_0
    :goto_0
    return v0

    #@c
    .line 1669
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
    .line 1655
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
    .line 1652
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
    .line 1653
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
    .line 1654
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
    .line 1650
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
    .line 1651
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
    .line 1677
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
    .line 1711
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
    .line 1902
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    #@3
    move-result-object v12

    #@4
    .line 1903
    .local v12, "sb":Ljava/lang/StringBuilder;
    move/from16 v8, p2

    #@6
    .line 1904
    .local v8, "p":I
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    #@9
    move-result v17

    #@a
    move/from16 v0, p2

    #@c
    move/from16 v1, v17

    #@e
    if-ne v0, v1, :cond_0

    #@10
    .line 1905
    return-void

    #@11
    .line 1917
    :cond_0
    const/4 v6, -0x1

    #@12
    .line 1918
    .local v6, "compositionsList":I
    const/4 v13, -0x1

    #@13
    .line 1919
    .local v13, "starter":I
    const/4 v14, 0x0

    #@14
    .line 1920
    .local v14, "starterIsSupplementary":Z
    const/4 v11, 0x0

    #@15
    .line 1923
    .local v11, "prevCC":I
    :cond_1
    :goto_0
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->codePointAt(I)I

    #@18
    move-result v2

    #@19
    .line 1924
    .local v2, "c":I
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    #@1c
    move-result v17

    #@1d
    add-int v8, v8, v17

    #@1f
    .line 1925
    move-object/from16 v0, p0

    #@21
    invoke-virtual {v0, v2}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@24
    move-result v7

    #@25
    .line 1926
    .local v7, "norm16":I
    invoke-static {v7}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    #@28
    move-result v3

    #@29
    .line 1928
    .local v3, "cc":I
    move-object/from16 v0, p0

    #@2b
    invoke-direct {v0, v7}, Landroid/icu/impl/Normalizer2Impl;->isMaybe(I)Z

    #@2e
    move-result v17

    #@2f
    if-eqz v17, :cond_c

    #@31
    .line 1930
    if-ltz v6, :cond_c

    #@33
    .line 1932
    if-lt v11, v3, :cond_2

    #@35
    if-nez v11, :cond_c

    #@37
    .line 1934
    :cond_2
    invoke-static {v7}, Landroid/icu/impl/Normalizer2Impl;->isJamoVT(I)Z

    #@3a
    move-result v17

    #@3b
    if-eqz v17, :cond_7

    #@3d
    .line 1936
    const/16 v17, 0x11a7

    #@3f
    move/from16 v0, v17

    #@41
    if-ge v2, v0, :cond_4

    #@43
    .line 1938
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    #@46
    move-result v17

    #@47
    move/from16 v0, v17

    #@49
    add-int/lit16 v0, v0, -0x1100

    #@4b
    move/from16 v17, v0

    #@4d
    move/from16 v0, v17

    #@4f
    int-to-char v10, v0

    #@50
    .line 1939
    .local v10, "prev":C
    const/16 v17, 0x13

    #@52
    move/from16 v0, v17

    #@54
    if-ge v10, v0, :cond_4

    #@56
    .line 1940
    add-int/lit8 v9, v8, -0x1

    #@58
    .line 1943
    .local v9, "pRemove":I
    mul-int/lit8 v17, v10, 0x15

    #@5a
    add-int/lit16 v0, v2, -0x1161

    #@5c
    move/from16 v18, v0

    #@5e
    add-int v17, v17, v18

    #@60
    mul-int/lit8 v17, v17, 0x1c

    #@62
    .line 1942
    const v18, 0xac00

    #@65
    add-int v17, v17, v18

    #@67
    .line 1941
    move/from16 v0, v17

    #@69
    int-to-char v15, v0

    #@6a
    .line 1946
    .local v15, "syllable":C
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    #@6d
    move-result v17

    #@6e
    move/from16 v0, v17

    #@70
    if-eq v8, v0, :cond_3

    #@72
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    #@75
    move-result v17

    #@76
    move/from16 v0, v17

    #@78
    add-int/lit16 v0, v0, -0x11a7

    #@7a
    move/from16 v17, v0

    #@7c
    move/from16 v0, v17

    #@7e
    int-to-char v0, v0

    #@7f
    move/from16 v16, v0

    #@81
    .local v16, "t":C
    const/16 v17, 0x1c

    #@83
    move/from16 v0, v16

    #@85
    move/from16 v1, v17

    #@87
    if-ge v0, v1, :cond_3

    #@89
    .line 1947
    add-int/lit8 v8, v8, 0x1

    #@8b
    .line 1948
    add-int v17, v15, v16

    #@8d
    move/from16 v0, v17

    #@8f
    int-to-char v15, v0

    #@90
    .line 1950
    .end local v16    # "t":C
    :cond_3
    invoke-virtual {v12, v13, v15}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@93
    .line 1952
    invoke-virtual {v12, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@96
    .line 1953
    move v8, v9

    #@97
    .line 1962
    .end local v9    # "pRemove":I
    .end local v10    # "prev":C
    .end local v15    # "syllable":C
    :cond_4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    #@9a
    move-result v17

    #@9b
    move/from16 v0, v17

    #@9d
    if-ne v8, v0, :cond_6

    #@9f
    .line 2043
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flush()V

    #@a2
    .line 1901
    return-void

    #@a3
    .line 1965
    :cond_6
    const/4 v6, -0x1

    #@a4
    .line 1966
    goto/16 :goto_0

    #@a6
    .line 1967
    :cond_7
    move-object/from16 v0, p0

    #@a8
    iget-object v0, v0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    #@aa
    move-object/from16 v17, v0

    #@ac
    move-object/from16 v0, v17

    #@ae
    invoke-static {v0, v6, v2}, Landroid/icu/impl/Normalizer2Impl;->combine(Ljava/lang/String;II)I

    #@b1
    move-result v5

    #@b2
    .local v5, "compositeAndFwd":I
    if-ltz v5, :cond_c

    #@b4
    .line 1969
    shr-int/lit8 v4, v5, 0x1

    #@b6
    .line 1972
    .local v4, "composite":I
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    #@b9
    move-result v17

    #@ba
    sub-int v9, v8, v17

    #@bc
    .line 1973
    .restart local v9    # "pRemove":I
    invoke-virtual {v12, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@bf
    .line 1974
    move v8, v9

    #@c0
    .line 1976
    if-eqz v14, :cond_9

    #@c2
    .line 1977
    const v17, 0xffff

    #@c5
    move/from16 v0, v17

    #@c7
    if-le v4, v0, :cond_8

    #@c9
    .line 1979
    invoke-static {v4}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    #@cc
    move-result v17

    #@cd
    move/from16 v0, v17

    #@cf
    invoke-virtual {v12, v13, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@d2
    .line 1980
    add-int/lit8 v17, v13, 0x1

    #@d4
    invoke-static {v4}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    #@d7
    move-result v18

    #@d8
    move/from16 v0, v17

    #@da
    move/from16 v1, v18

    #@dc
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@df
    .line 2003
    :goto_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    #@e2
    move-result v17

    #@e3
    move/from16 v0, v17

    #@e5
    if-eq v8, v0, :cond_5

    #@e7
    .line 2007
    and-int/lit8 v17, v5, 0x1

    #@e9
    if-eqz v17, :cond_b

    #@eb
    .line 2009
    move-object/from16 v0, p0

    #@ed
    invoke-virtual {v0, v4}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@f0
    move-result v17

    #@f1
    move-object/from16 v0, p0

    #@f3
    move/from16 v1, v17

    #@f5
    invoke-direct {v0, v1}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForComposite(I)I

    #@f8
    move-result v6

    #@f9
    goto/16 :goto_0

    #@fb
    .line 1982
    :cond_8
    int-to-char v0, v2

    #@fc
    move/from16 v17, v0

    #@fe
    move/from16 v0, v17

    #@100
    invoke-virtual {v12, v13, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@103
    .line 1983
    add-int/lit8 v17, v13, 0x1

    #@105
    move/from16 v0, v17

    #@107
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    #@10a
    .line 1986
    const/4 v14, 0x0

    #@10b
    .line 1987
    add-int/lit8 v8, v9, -0x1

    #@10d
    goto :goto_1

    #@10e
    .line 1989
    :cond_9
    const v17, 0xffff

    #@111
    move/from16 v0, v17

    #@113
    if-le v4, v0, :cond_a

    #@115
    .line 1992
    const/4 v14, 0x1

    #@116
    .line 1993
    invoke-static {v4}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    #@119
    move-result v17

    #@11a
    move/from16 v0, v17

    #@11c
    invoke-virtual {v12, v13, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@11f
    .line 1994
    add-int/lit8 v17, v13, 0x1

    #@121
    invoke-static {v4}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    #@124
    move-result v18

    #@125
    move/from16 v0, v17

    #@127
    move/from16 v1, v18

    #@129
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@12c
    .line 1995
    add-int/lit8 v8, v9, 0x1

    #@12e
    goto :goto_1

    #@12f
    .line 1998
    :cond_a
    int-to-char v0, v4

    #@130
    move/from16 v17, v0

    #@132
    move/from16 v0, v17

    #@134
    invoke-virtual {v12, v13, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@137
    goto :goto_1

    #@138
    .line 2011
    :cond_b
    const/4 v6, -0x1

    #@139
    goto/16 :goto_0

    #@13b
    .line 2020
    .end local v4    # "composite":I
    .end local v5    # "compositeAndFwd":I
    .end local v9    # "pRemove":I
    :cond_c
    move v11, v3

    #@13c
    .line 2021
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    #@13f
    move-result v17

    #@140
    move/from16 v0, v17

    #@142
    if-eq v8, v0, :cond_5

    #@144
    .line 2026
    if-nez v3, :cond_e

    #@146
    .line 2028
    move-object/from16 v0, p0

    #@148
    invoke-direct {v0, v7}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForDecompYes(I)I

    #@14b
    move-result v6

    #@14c
    if-ltz v6, :cond_1

    #@14e
    .line 2030
    const v17, 0xffff

    #@151
    move/from16 v0, v17

    #@153
    if-gt v2, v0, :cond_d

    #@155
    .line 2031
    const/4 v14, 0x0

    #@156
    .line 2032
    add-int/lit8 v13, v8, -0x1

    #@158
    goto/16 :goto_0

    #@15a
    .line 2034
    :cond_d
    const/4 v14, 0x1

    #@15b
    .line 2035
    add-int/lit8 v13, v8, -0x2

    #@15d
    goto/16 :goto_0

    #@15f
    .line 2038
    :cond_e
    if-eqz p3, :cond_1

    #@161
    .line 2040
    const/4 v6, -0x1

    #@162
    goto/16 :goto_0
.end method


# virtual methods
.method public addCanonIterPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .locals 4
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 555
    invoke-virtual {p0}, Landroid/icu/impl/Normalizer2Impl;->ensureCanonIterData()Landroid/icu/impl/Normalizer2Impl;

    #@3
    .line 557
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/impl/Trie2_32;

    #@5
    sget-object v3, Landroid/icu/impl/Normalizer2Impl;->segmentStarterMapper:Landroid/icu/impl/Trie2$ValueMapper;

    #@7
    invoke-virtual {v2, v3}, Landroid/icu/impl/Trie2_32;->iterator(Landroid/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .line 559
    .local v1, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
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
    .line 553
    .end local v0    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_0
    return-void

    #@1c
    .line 561
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
    .line 530
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v2}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .line 532
    .local v1, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
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
    .line 528
    .end local v0    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_0
    return-void

    #@17
    .line 533
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
    .line 539
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    #@5
    invoke-virtual {v3}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .line 541
    .local v2, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
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
    .line 546
    .end local v1    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_0
    const v0, 0xac00

    #@1c
    .local v0, "c":I
    :goto_1
    if-ge v0, v6, :cond_2

    #@1e
    .line 547
    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@21
    .line 548
    add-int/lit8 v3, v0, 0x1

    #@23
    invoke-virtual {p1, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@26
    .line 546
    add-int/lit8 v0, v0, 0x1c

    #@28
    goto :goto_1

    #@29
    .line 542
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
    .line 550
    .end local v1    # "range":Landroid/icu/impl/Trie2$Range;
    .restart local v0    # "c":I
    :cond_2
    invoke-virtual {p1, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@36
    .line 537
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
    .line 1051
    move-object/from16 v0, p0

    #@2
    iget v7, v0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    #@4
    .line 1065
    .local v7, "minNoMaybeCP":I
    move/from16 v11, p2

    #@6
    .line 1067
    .local v11, "prevBoundary":I
    const/4 v4, 0x0

    #@7
    .line 1068
    .local v4, "c":I
    const/4 v9, 0x0

    #@8
    .line 1071
    .local v9, "norm16":I
    const/4 v12, 0x0

    #@9
    .line 1075
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
    .line 1076
    invoke-interface/range {p1 .. p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@14
    move-result v4

    #@15
    if-lt v4, v7, :cond_0

    #@17
    .line 1077
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
    .line 1076
    if-eqz v17, :cond_1

    #@2c
    .line 1079
    :cond_0
    add-int/lit8 p2, p2, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 1080
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
    .line 1102
    :cond_2
    move/from16 v0, p2

    #@3a
    if-eq v0, v13, :cond_b

    #@3c
    .line 1103
    move/from16 v0, p2

    #@3e
    move/from16 v1, p3

    #@40
    if-ne v0, v1, :cond_7

    #@42
    .line 1104
    if-eqz p5, :cond_3

    #@44
    .line 1105
    move-object/from16 v0, p6

    #@46
    move-object/from16 v1, p1

    #@48
    move/from16 v2, p2

    #@4a
    invoke-virtual {v0, v1, v13, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@4d
    .line 1284
    :cond_3
    :goto_2
    const/16 v17, 0x1

    #@4f
    return v17

    #@50
    .line 1084
    :cond_4
    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    #@53
    move-result v17

    #@54
    if-eqz v17, :cond_6

    #@56
    .line 1085
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
    .line 1086
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
    .line 1094
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
    .line 1095
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    #@88
    move-result v17

    #@89
    add-int p2, p2, v17

    #@8b
    goto :goto_1

    #@8c
    .line 1089
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
    .line 1090
    add-int/lit8 p2, p2, -0x1

    #@a2
    .line 1091
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
    .line 1110
    .end local v5    # "c2":C
    :cond_7
    add-int/lit8 v11, p2, -0x1

    #@ae
    .line 1111
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
    .line 1112
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
    .line 1111
    if-eqz v17, :cond_8

    #@cc
    .line 1114
    add-int/lit8 v11, v11, -0x1

    #@ce
    .line 1116
    :cond_8
    if-eqz p5, :cond_a

    #@d0
    .line 1119
    move-object/from16 v0, p6

    #@d2
    move-object/from16 v1, p1

    #@d4
    invoke-virtual {v0, v1, v13, v11}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@d7
    .line 1120
    move-object/from16 v0, p6

    #@d9
    move-object/from16 v1, p1

    #@db
    move/from16 v2, p2

    #@dd
    invoke-virtual {v0, v1, v11, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@e0
    .line 1125
    :goto_4
    move/from16 v13, p2

    #@e2
    .line 1130
    :cond_9
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    #@e5
    move-result v17

    #@e6
    add-int p2, p2, v17

    #@e8
    .line 1138
    invoke-static {v9}, Landroid/icu/impl/Normalizer2Impl;->isJamoVT(I)Z

    #@eb
    move-result v17

    #@ec
    if-eqz v17, :cond_12

    #@ee
    if-eq v11, v13, :cond_12

    #@f0
    .line 1139
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
    .line 1140
    .local v10, "prev":C
    const/4 v8, 0x0

    #@fb
    .line 1141
    .local v8, "needToDecompose":Z
    const/16 v17, 0x11a7

    #@fd
    move/from16 v0, v17

    #@ff
    if-ge v4, v0, :cond_f

    #@101
    .line 1143
    add-int/lit16 v0, v10, -0x1100

    #@103
    move/from16 v17, v0

    #@105
    move/from16 v0, v17

    #@107
    int-to-char v10, v0

    #@108
    .line 1144
    const/16 v17, 0x13

    #@10a
    move/from16 v0, v17

    #@10c
    if-ge v10, v0, :cond_e

    #@10e
    .line 1145
    if-nez p5, :cond_c

    #@110
    .line 1146
    const/16 v17, 0x0

    #@112
    return v17

    #@113
    .line 1122
    .end local v8    # "needToDecompose":Z
    .end local v10    # "prev":C
    :cond_a
    const/4 v12, 0x0

    #@114
    goto :goto_4

    #@115
    .line 1126
    :cond_b
    move/from16 v0, p2

    #@117
    move/from16 v1, p3

    #@119
    if-ne v0, v1, :cond_9

    #@11b
    goto/16 :goto_2

    #@11d
    .line 1150
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
    .line 1149
    const v18, 0xac00

    #@12a
    add-int v17, v17, v18

    #@12c
    .line 1148
    move/from16 v0, v17

    #@12e
    int-to-char v15, v0

    #@12f
    .line 1153
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
    .line 1154
    add-int/lit8 p2, p2, 0x1

    #@14e
    .line 1155
    add-int v17, v15, v16

    #@150
    move/from16 v0, v17

    #@152
    int-to-char v15, v0

    #@153
    .line 1156
    move/from16 v11, p2

    #@155
    .line 1157
    move-object/from16 v0, p6

    #@157
    invoke-virtual {v0, v15}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->setLastChar(C)V

    #@15a
    goto/16 :goto_0

    #@15c
    .line 1169
    .end local v16    # "t":C
    :cond_d
    const/4 v8, 0x1

    #@15d
    .line 1181
    .end local v15    # "syllable":C
    :cond_e
    if-nez v8, :cond_12

    #@15f
    .line 1183
    if-eqz p5, :cond_11

    #@161
    .line 1184
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
    .line 1171
    :cond_f
    invoke-static {v10}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isHangulWithoutJamoT(C)Z

    #@170
    move-result v17

    #@171
    if-eqz v17, :cond_e

    #@173
    .line 1174
    if-nez p5, :cond_10

    #@175
    .line 1175
    const/16 v17, 0x0

    #@177
    return v17

    #@178
    .line 1177
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
    .line 1178
    move/from16 v11, p2

    #@18e
    .line 1179
    goto/16 :goto_0

    #@190
    .line 1186
    :cond_11
    const/4 v12, 0x0

    #@191
    goto/16 :goto_0

    #@193
    .line 1213
    .end local v8    # "needToDecompose":Z
    .end local v10    # "prev":C
    :cond_12
    const v17, 0xff01

    #@196
    move/from16 v0, v17

    #@198
    if-lt v9, v0, :cond_17

    #@19a
    .line 1214
    and-int/lit16 v6, v9, 0xff

    #@19c
    .line 1215
    .local v6, "cc":I
    if-eqz p4, :cond_14

    #@19e
    .line 1216
    if-eqz p5, :cond_13

    #@1a0
    invoke-virtual/range {p6 .. p6}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getLastCC()I

    #@1a3
    move-result v17

    #@1a4
    :goto_5
    if-nez v17, :cond_14

    #@1a6
    .line 1217
    if-ge v11, v13, :cond_14

    #@1a8
    .line 1225
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
    .line 1228
    if-nez p5, :cond_18

    #@1b6
    .line 1229
    const/16 v17, 0x0

    #@1b8
    return v17

    #@1b9
    :cond_13
    move/from16 v17, v12

    #@1bb
    .line 1216
    goto :goto_5

    #@1bc
    .line 1231
    :cond_14
    if-eqz p5, :cond_15

    #@1be
    .line 1232
    move-object/from16 v0, p6

    #@1c0
    invoke-virtual {v0, v4, v6}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    #@1c3
    goto/16 :goto_0

    #@1c5
    .line 1234
    :cond_15
    if-gt v12, v6, :cond_16

    #@1c7
    .line 1235
    move v12, v6

    #@1c8
    .line 1236
    goto/16 :goto_0

    #@1ca
    .line 1238
    :cond_16
    const/16 v17, 0x0

    #@1cc
    return v17

    #@1cd
    .line 1240
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
    .line 1259
    :cond_18
    move-object/from16 v0, p0

    #@1d9
    invoke-direct {v0, v4, v9}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    #@1dc
    move-result v17

    #@1dd
    if-eqz v17, :cond_1b

    #@1df
    .line 1260
    move v11, v13

    #@1e0
    .line 1267
    :cond_19
    :goto_6
    invoke-direct/range {p0 .. p3}, Landroid/icu/impl/Normalizer2Impl;->findNextCompBoundary(Ljava/lang/CharSequence;II)I

    #@1e3
    move-result p2

    #@1e4
    .line 1270
    invoke-virtual/range {p6 .. p6}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    #@1e7
    move-result v14

    #@1e8
    .line 1271
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
    .line 1272
    move-object/from16 v0, p0

    #@1f5
    move-object/from16 v1, p6

    #@1f7
    move/from16 v2, p4

    #@1f9
    invoke-direct {v0, v1, v14, v2}, Landroid/icu/impl/Normalizer2Impl;->recompose(Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;IZ)V

    #@1fc
    .line 1273
    if-nez p5, :cond_1d

    #@1fe
    .line 1274
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
    .line 1275
    const/16 v17, 0x0

    #@20c
    return v17

    #@20d
    .line 1241
    .end local v14    # "recomposeStartIndex":I
    :cond_1a
    const/16 v17, 0x0

    #@20f
    return v17

    #@210
    .line 1261
    :cond_1b
    if-eqz p5, :cond_19

    #@212
    .line 1262
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
    .line 1277
    .restart local v14    # "recomposeStartIndex":I
    :cond_1c
    invoke-virtual/range {p6 .. p6}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->remove()V

    #@21f
    .line 1278
    const/4 v12, 0x0

    #@220
    .line 1282
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
    .line 1394
    const/4 v5, 0x0

    #@1
    .local v5, "src":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v12

    #@5
    .line 1395
    .local v12, "limit":I
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->isEmpty()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 1396
    const/4 v1, 0x0

    #@c
    invoke-direct {p0, p1, v1, v12}, Landroid/icu/impl/Normalizer2Impl;->findNextCompBoundary(Ljava/lang/CharSequence;II)I

    #@f
    move-result v10

    #@10
    .line 1397
    .local v10, "firstStarterInSrc":I
    if-eqz v10, :cond_0

    #@12
    .line 1398
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 1399
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    #@19
    move-result v3

    #@1a
    .line 1398
    invoke-direct {p0, v1, v3}, Landroid/icu/impl/Normalizer2Impl;->findPreviousCompBoundary(Ljava/lang/CharSequence;I)I

    #@1d
    move-result v11

    #@1e
    .line 1400
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
    .line 1402
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
    .line 1403
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
    .line 1404
    const/4 v1, 0x0

    #@41
    invoke-virtual {v2, p1, v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@44
    .line 1405
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
    .line 1406
    .end local v5    # "src":I
    move v5, v10

    #@53
    .line 1409
    .end local v2    # "middle":Ljava/lang/StringBuilder;
    .end local v10    # "firstStarterInSrc":I
    .end local v11    # "lastStarterInDest":I
    .restart local v5    # "src":I
    :cond_0
    if-eqz p2, :cond_1

    #@55
    .line 1410
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
    .line 1393
    :goto_0
    return-void

    #@61
    .line 1412
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
    .line 2047
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@7
    move-result v1

    #@8
    .line 2049
    .local v1, "norm16":I
    invoke-static {v1}, Landroid/icu/impl/Normalizer2Impl;->isInert(I)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 2050
    return v3

    #@f
    .line 2051
    :cond_0
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNoMappingsOnly:I

    #@11
    if-ge v1, v2, :cond_7

    #@13
    .line 2052
    invoke-static {v1}, Landroid/icu/impl/Normalizer2Impl;->isJamoL(I)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 2053
    add-int/lit16 p2, p2, -0x1161

    #@1b
    .line 2054
    if-ltz p2, :cond_1

    #@1d
    const/16 v2, 0x15

    #@1f
    if-ge p2, v2, :cond_1

    #@21
    .line 2057
    add-int/lit16 v2, p1, -0x1100

    #@23
    mul-int/lit8 v2, v2, 0x15

    #@25
    add-int/2addr v2, p2

    #@26
    mul-int/lit8 v2, v2, 0x1c

    #@28
    .line 2056
    const v3, 0xac00

    #@2b
    add-int/2addr v2, v3

    #@2c
    .line 2055
    return v2

    #@2d
    .line 2060
    :cond_1
    return v3

    #@2e
    .line 2062
    :cond_2
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isHangul(I)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_4

    #@34
    .line 2063
    add-int/lit16 p2, p2, -0x11a7

    #@36
    .line 2064
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
    .line 2065
    add-int v2, p1, p2

    #@45
    return v2

    #@46
    .line 2067
    :cond_3
    return v3

    #@47
    .line 2071
    :cond_4
    move v0, v1

    #@48
    .line 2072
    .local v0, "list":I
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@4a
    if-le v1, v2, :cond_5

    #@4c
    .line 2075
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@4e
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    #@51
    move-result v2

    #@52
    and-int/lit8 v2, v2, 0x1f

    #@54
    .line 2074
    add-int/lit8 v2, v2, 0x1

    #@56
    .line 2073
    add-int v0, v1, v2

    #@58
    .line 2078
    :cond_5
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@5a
    sub-int v2, v4, v2

    #@5c
    add-int/2addr v0, v2

    #@5d
    .line 2085
    :goto_0
    if-ltz p2, :cond_6

    #@5f
    const v2, 0x10ffff

    #@62
    if-ge v2, p2, :cond_a

    #@64
    .line 2086
    :cond_6
    return v3

    #@65
    .line 2080
    .end local v0    # "list":I
    :cond_7
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@67
    if-lt v1, v2, :cond_8

    #@69
    if-gt v4, v1, :cond_9

    #@6b
    .line 2081
    :cond_8
    return v3

    #@6c
    .line 2083
    :cond_9
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@6e
    sub-int v0, v1, v2

    #@70
    .restart local v0    # "list":I
    goto :goto_0

    #@71
    .line 2088
    :cond_a
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    #@73
    invoke-static {v2, v0, p2}, Landroid/icu/impl/Normalizer2Impl;->combine(Ljava/lang/String;II)I

    #@76
    move-result v2

    #@77
    shr-int/lit8 v2, v2, 0x1

    #@79
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
    .line 1296
    const/4 v8, 0x0

    #@1
    .line 1297
    .local v8, "qcResult":I
    iget v3, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    #@3
    .line 1303
    .local v3, "minNoMaybeCP":I
    move v5, p2

    #@4
    .line 1305
    .local v5, "prevBoundary":I
    const/4 v0, 0x0

    #@5
    .line 1306
    .local v0, "c":I
    const/4 v4, 0x0

    #@6
    .line 1307
    .local v4, "norm16":I
    const/4 v6, 0x0

    #@7
    .line 1311
    .local v6, "prevCC":I
    :cond_0
    :goto_0
    move v7, p2

    #@8
    .line 1312
    .local v7, "prevSrc":I
    :goto_1
    if-ne p2, p3, :cond_1

    #@a
    .line 1313
    shl-int/lit8 v9, p2, 0x1

    #@c
    or-int/2addr v9, v8

    #@d
    return v9

    #@e
    .line 1315
    :cond_1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@11
    move-result v0

    #@12
    if-lt v0, v3, :cond_2

    #@14
    .line 1316
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
    .line 1315
    if-eqz v9, :cond_3

    #@21
    .line 1318
    :cond_2
    add-int/lit8 p2, p2, 0x1

    #@23
    goto :goto_1

    #@24
    .line 1319
    :cond_3
    int-to-char v9, v0

    #@25
    invoke-static {v9}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@28
    move-result v9

    #@29
    if-nez v9, :cond_8

    #@2b
    .line 1340
    :cond_4
    if-eq p2, v7, :cond_6

    #@2d
    .line 1342
    add-int/lit8 v5, p2, -0x1

    #@2f
    .line 1343
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
    .line 1344
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
    .line 1343
    if-eqz v9, :cond_5

    #@47
    .line 1346
    add-int/lit8 v5, v5, -0x1

    #@49
    .line 1348
    :cond_5
    const/4 v6, 0x0

    #@4a
    .line 1350
    move v7, p2

    #@4b
    .line 1353
    :cond_6
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@4e
    move-result v9

    #@4f
    add-int/2addr p2, v9

    #@50
    .line 1359
    invoke-direct {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    #@53
    move-result v9

    #@54
    if-eqz v9, :cond_7

    #@56
    .line 1360
    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    #@59
    move-result v2

    #@5a
    .line 1361
    .local v2, "cc":I
    if-eqz p4, :cond_b

    #@5c
    .line 1362
    if-eqz v2, :cond_b

    #@5e
    .line 1363
    if-nez v6, :cond_b

    #@60
    .line 1364
    if-ge v5, v7, :cond_b

    #@62
    .line 1372
    invoke-virtual {p0, p1, v5, v7}, Landroid/icu/impl/Normalizer2Impl;->getTrailCCFromCompYesAndZeroCC(Ljava/lang/CharSequence;II)I

    #@65
    move-result v9

    #@66
    if-le v9, v2, :cond_b

    #@68
    .line 1387
    .end local v2    # "cc":I
    :cond_7
    shl-int/lit8 v9, v5, 0x1

    #@6a
    return v9

    #@6b
    .line 1323
    :cond_8
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    #@6e
    move-result v9

    #@6f
    if-eqz v9, :cond_a

    #@71
    .line 1324
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
    .line 1325
    int-to-char v9, v0

    #@82
    invoke-static {v9, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    #@85
    move-result v0

    #@86
    .line 1333
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
    .line 1334
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@93
    move-result v9

    #@94
    add-int/2addr p2, v9

    #@95
    goto/16 :goto_1

    #@97
    .line 1328
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
    .line 1329
    add-int/lit8 p2, p2, -0x1

    #@a7
    .line 1330
    int-to-char v9, v0

    #@a8
    invoke-static {v1, v9}, Ljava/lang/Character;->toCodePoint(CC)I

    #@ab
    move-result v0

    #@ac
    goto :goto_2

    #@ad
    .line 1375
    .end local v1    # "c2":C
    .restart local v2    # "cc":I
    :cond_b
    if-le v6, v2, :cond_c

    #@af
    if-nez v2, :cond_7

    #@b1
    .line 1376
    :cond_c
    move v6, v2

    #@b2
    .line 1377
    const v9, 0xff01

    #@b5
    if-ge v4, v9, :cond_0

    #@b7
    .line 1378
    if-nez p5, :cond_d

    #@b9
    .line 1379
    const/4 v8, 0x1

    #@ba
    goto/16 :goto_0

    #@bc
    .line 1381
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
    .line 947
    iget v3, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    #@2
    .line 950
    .local v3, "minNoCP":I
    const/4 v0, 0x0

    #@3
    .line 951
    .local v0, "c":I
    const/4 v4, 0x0

    #@4
    .line 954
    .local v4, "norm16":I
    move v5, p2

    #@5
    .line 955
    .local v5, "prevBoundary":I
    const/4 v6, 0x0

    #@6
    .line 959
    .local v6, "prevCC":I
    :cond_0
    :goto_0
    move v7, p2

    #@7
    .local v7, "prevSrc":I
    :goto_1
    if-eq p2, p3, :cond_3

    #@9
    .line 960
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@c
    move-result v0

    #@d
    if-lt v0, v3, :cond_1

    #@f
    .line 961
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
    .line 960
    if-eqz v8, :cond_2

    #@1c
    .line 963
    :cond_1
    add-int/lit8 p2, p2, 0x1

    #@1e
    goto :goto_1

    #@1f
    .line 964
    :cond_2
    int-to-char v8, v0

    #@20
    invoke-static {v8}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@23
    move-result v8

    #@24
    if-nez v8, :cond_5

    #@26
    .line 986
    :cond_3
    if-eq p2, v7, :cond_4

    #@28
    .line 987
    if-eqz p4, :cond_8

    #@2a
    .line 988
    invoke-virtual {p4, p1, v7, p2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@2d
    .line 994
    :cond_4
    :goto_2
    if-ne p2, p3, :cond_9

    #@2f
    .line 1016
    return p2

    #@30
    .line 968
    :cond_5
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    #@33
    move-result v8

    #@34
    if-eqz v8, :cond_7

    #@36
    .line 969
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
    .line 970
    int-to-char v8, v0

    #@47
    invoke-static {v8, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    #@4a
    move-result v0

    #@4b
    .line 978
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
    .line 979
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@58
    move-result v8

    #@59
    add-int/2addr p2, v8

    #@5a
    goto :goto_1

    #@5b
    .line 973
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
    .line 974
    add-int/lit8 p2, p2, -0x1

    #@6b
    .line 975
    int-to-char v8, v0

    #@6c
    invoke-static {v1, v8}, Ljava/lang/Character;->toCodePoint(CC)I

    #@6f
    move-result v0

    #@70
    goto :goto_3

    #@71
    .line 990
    .end local v1    # "c2":C
    :cond_8
    const/4 v6, 0x0

    #@72
    .line 991
    move v5, p2

    #@73
    goto :goto_2

    #@74
    .line 999
    :cond_9
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@77
    move-result v8

    #@78
    add-int/2addr p2, v8

    #@79
    .line 1000
    if-eqz p4, :cond_a

    #@7b
    .line 1001
    invoke-direct {p0, v0, v4, p4}, Landroid/icu/impl/Normalizer2Impl;->decompose(IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    #@7e
    goto :goto_0

    #@7f
    .line 1003
    :cond_a
    invoke-virtual {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    #@82
    move-result v8

    #@83
    if-eqz v8, :cond_c

    #@85
    .line 1004
    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    #@88
    move-result v2

    #@89
    .line 1005
    .local v2, "cc":I
    if-le v6, v2, :cond_b

    #@8b
    if-nez v2, :cond_c

    #@8d
    .line 1006
    :cond_b
    move v6, v2

    #@8e
    .line 1007
    const/4 v8, 0x1

    #@8f
    if-gt v2, v8, :cond_0

    #@91
    .line 1008
    move v5, p2

    #@92
    goto/16 :goto_0

    #@94
    .line 1013
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
    .line 924
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
    .line 925
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
    .line 934
    if-gez p5, :cond_0

    #@3
    .line 935
    sub-int p5, p3, p2

    #@5
    .line 937
    :cond_0
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@8
    .line 938
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@a
    invoke-direct {v0, p0, p4, p5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    #@d
    .line 939
    .local v0, "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    #@10
    .line 933
    return-void
.end method

.method public decomposeAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "doDecompose"    # Z
    .param p3, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1019
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v9

    #@5
    .line 1020
    .local v9, "limit":I
    if-nez v9, :cond_0

    #@7
    .line 1021
    return-void

    #@8
    .line 1023
    :cond_0
    if-eqz p2, :cond_1

    #@a
    .line 1024
    invoke-virtual {p0, p1, v2, v9, p3}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    #@d
    .line 1025
    return-void

    #@e
    .line 1028
    :cond_1
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@11
    move-result v6

    #@12
    .line 1029
    .local v6, "c":I
    const/4 v3, 0x0

    #@13
    .line 1031
    .local v3, "src":I
    invoke-virtual {p0, v6}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@16
    move-result v0

    #@17
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getCC(I)I

    #@1a
    move-result v4

    #@1b
    .local v4, "cc":I
    move v5, v4

    #@1c
    .local v5, "prevCC":I
    move v8, v4

    #@1d
    .local v8, "firstCC":I
    move v7, v4

    #@1e
    .line 1032
    .end local v4    # "cc":I
    .local v7, "cc":I
    :goto_0
    if-eqz v7, :cond_2

    #@20
    .line 1033
    move v5, v7

    #@21
    .line 1034
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    #@24
    move-result v0

    #@25
    add-int/2addr v3, v0

    #@26
    .line 1035
    if-lt v3, v9, :cond_3

    #@28
    :cond_2
    move-object v0, p3

    #@29
    move-object v1, p1

    #@2a
    .line 1041
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;IIII)V

    #@2d
    .line 1042
    invoke-virtual {p3, p1, v3, v9}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@30
    .line 1018
    return-void

    #@31
    .line 1038
    :cond_3
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@34
    move-result v6

    #@35
    .line 1039
    invoke-virtual {p0, v6}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@38
    move-result v0

    #@39
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getCC(I)I

    #@3c
    move-result v7

    #@3d
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
    .line 1760
    :goto_0
    if-ge p2, p3, :cond_0

    #@2
    .line 1761
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@5
    move-result v0

    #@6
    .line 1762
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@9
    move-result v1

    #@a
    add-int/2addr p2, v1

    #@b
    .line 1763
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@e
    move-result v1

    #@f
    invoke-direct {p0, v0, v1, p4}, Landroid/icu/impl/Normalizer2Impl;->decompose(IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    #@12
    goto :goto_0

    #@13
    .line 1759
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
    .line 590
    :try_start_0
    iget-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/impl/Trie2_32;

    #@3
    if-nez v13, :cond_2

    #@5
    .line 591
    new-instance v6, Landroid/icu/impl/Trie2Writable;

    #@7
    const/4 v13, 0x0

    #@8
    const/4 v14, 0x0

    #@9
    invoke-direct {v6, v13, v14}, Landroid/icu/impl/Trie2Writable;-><init>(II)V

    #@c
    .line 592
    .local v6, "newData":Landroid/icu/impl/Trie2Writable;
    new-instance v13, Ljava/util/ArrayList;

    #@e
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    #@13
    .line 593
    iget-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    #@15
    invoke-virtual {v13}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v12

    #@19
    .line 595
    .local v12, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
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
    .line 664
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
    .end local v12    # "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
    :cond_2
    monitor-exit p0

    #@30
    .line 666
    return-object p0

    #@31
    .line 596
    .restart local v6    # "newData":Landroid/icu/impl/Trie2Writable;
    .restart local v11    # "range":Landroid/icu/impl/Trie2$Range;
    .restart local v12    # "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
    :cond_3
    :try_start_1
    iget v8, v11, Landroid/icu/impl/Trie2$Range;->value:I

    #@33
    .line 597
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
    .line 606
    :cond_4
    iget v0, v11, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@3f
    .local v0, "c":I
    :goto_0
    iget v13, v11, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    #@41
    if-gt v0, v13, :cond_0

    #@43
    .line 607
    invoke-virtual {v6, v0}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@46
    move-result v10

    #@47
    .line 608
    .local v10, "oldValue":I
    move v7, v10

    #@48
    .line 609
    .local v7, "newValue":I
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@4a
    if-lt v8, v13, :cond_7

    #@4c
    .line 611
    const/high16 v13, -0x80000000

    #@4e
    or-int v7, v10, v13

    #@50
    .line 612
    const v13, 0xfe00

    #@53
    if-ge v8, v13, :cond_5

    #@55
    .line 613
    const/high16 v13, 0x40000000    # 2.0f

    #@57
    or-int/2addr v7, v13

    #@58
    .line 659
    :cond_5
    :goto_1
    if-eq v7, v10, :cond_6

    #@5a
    .line 660
    invoke-virtual {v6, v0, v7}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@5d
    .line 606
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 615
    :cond_7
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@62
    if-ge v8, v13, :cond_8

    #@64
    .line 616
    const/high16 v13, 0x40000000    # 2.0f

    #@66
    or-int v7, v10, v13

    #@68
    goto :goto_1

    #@69
    .line 619
    :cond_8
    move v1, v0

    #@6a
    .line 620
    .local v1, "c2":I
    move v9, v8

    #@6b
    .line 621
    .local v9, "norm16_2":I
    :goto_2
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    #@6d
    if-gt v13, v9, :cond_9

    #@6f
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@71
    if-ge v9, v13, :cond_9

    #@73
    .line 622
    invoke-direct {p0, v1, v9}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    #@76
    move-result v1

    #@77
    .line 623
    invoke-virtual {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@7a
    move-result v9

    #@7b
    goto :goto_2

    #@7c
    .line 625
    :cond_9
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@7e
    if-gt v13, v9, :cond_c

    #@80
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    #@82
    if-ge v9, v13, :cond_c

    #@84
    .line 627
    iget-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@86
    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    #@89
    move-result v3

    #@8a
    .line 628
    .local v3, "firstUnit":I
    and-int/lit8 v4, v3, 0x1f

    #@8c
    .line 629
    .local v4, "length":I
    and-int/lit16 v13, v3, 0x80

    #@8e
    if-eqz v13, :cond_a

    #@90
    .line 630
    if-ne v0, v1, :cond_a

    #@92
    iget-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@94
    add-int/lit8 v14, v9, -0x1

    #@96
    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    #@99
    move-result v13

    #@9a
    and-int/lit16 v13, v13, 0xff

    #@9c
    if-eqz v13, :cond_a

    #@9e
    .line 631
    const/high16 v13, -0x80000000

    #@a0
    or-int v7, v10, v13

    #@a2
    .line 635
    :cond_a
    if-eqz v4, :cond_5

    #@a4
    .line 636
    add-int/lit8 v9, v9, 0x1

    #@a6
    .line 638
    add-int v5, v9, v4

    #@a8
    .line 639
    .local v5, "limit":I
    iget-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@aa
    invoke-virtual {v13, v9}, Ljava/lang/String;->codePointAt(I)I

    #@ad
    move-result v1

    #@ae
    .line 640
    invoke-direct {p0, v6, v0, v1}, Landroid/icu/impl/Normalizer2Impl;->addToStartSet(Landroid/icu/impl/Trie2Writable;II)V

    #@b1
    .line 644
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    #@b3
    if-lt v9, v13, :cond_5

    #@b5
    .line 645
    :cond_b
    :goto_3
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@b8
    move-result v13

    #@b9
    add-int/2addr v9, v13

    #@ba
    if-ge v9, v5, :cond_5

    #@bc
    .line 646
    iget-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@be
    invoke-virtual {v13, v9}, Ljava/lang/String;->codePointAt(I)I

    #@c1
    move-result v1

    #@c2
    .line 647
    invoke-virtual {v6, v1}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@c5
    move-result v2

    #@c6
    .line 648
    .local v2, "c2Value":I
    const/high16 v13, -0x80000000

    #@c8
    and-int/2addr v13, v2

    #@c9
    if-nez v13, :cond_b

    #@cb
    .line 649
    const/high16 v13, -0x80000000

    #@cd
    or-int/2addr v13, v2

    #@ce
    invoke-virtual {v6, v1, v13}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d1
    goto :goto_3

    #@d2
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
    .end local v12    # "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
    :catchall_0
    move-exception v13

    #@d3
    monitor-exit p0

    #@d4
    throw v13

    #@d5
    .line 656
    .restart local v0    # "c":I
    .restart local v1    # "c2":I
    .restart local v6    # "newData":Landroid/icu/impl/Trie2Writable;
    .restart local v7    # "newValue":I
    .restart local v8    # "norm16":I
    .restart local v9    # "norm16_2":I
    .restart local v10    # "oldValue":I
    .restart local v11    # "range":Landroid/icu/impl/Trie2$Range;
    .restart local v12    # "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
    :cond_c
    :try_start_2
    invoke-direct {p0, v6, v0, v1}, Landroid/icu/impl/Normalizer2Impl;->addToStartSet(Landroid/icu/impl/Trie2Writable;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d8
    goto :goto_1
.end method

.method public getCC(I)I
    .locals 1
    .param p1, "norm16"    # I

    #@0
    .prologue
    .line 685
    const v0, 0xfe00

    #@3
    if-lt p1, v0, :cond_0

    #@5
    .line 686
    and-int/lit16 v0, p1, 0xff

    #@7
    return v0

    #@8
    .line 688
    :cond_0
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    #@a
    if-lt p1, v0, :cond_1

    #@c
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    #@e
    if-gt v0, p1, :cond_2

    #@10
    .line 689
    :cond_1
    const/4 v0, 0x0

    #@11
    return v0

    #@12
    .line 691
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
    .line 853
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
    .line 854
    .local v0, "canonValue":I
    if-nez v0, :cond_0

    #@f
    .line 855
    return v6

    #@10
    .line 857
    :cond_0
    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    #@13
    .line 858
    const v4, 0x1fffff

    #@16
    and-int v3, v0, v4

    #@18
    .line 859
    .local v3, "value":I
    const/high16 v4, 0x200000

    #@1a
    and-int/2addr v4, v0

    #@1b
    if-eqz v4, :cond_3

    #@1d
    .line 860
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
    .line 864
    :cond_1
    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    #@2a
    and-int/2addr v4, v0

    #@2b
    if-eqz v4, :cond_2

    #@2d
    .line 865
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@30
    move-result v1

    #@31
    .line 866
    .local v1, "norm16":I
    if-ne v1, v7, :cond_4

    #@33
    .line 867
    add-int/lit16 v4, p1, -0x1100

    #@35
    mul-int/lit16 v4, v4, 0x24c

    #@37
    const v5, 0xac00

    #@3a
    add-int v2, v5, v4

    #@3c
    .line 868
    .local v2, "syllable":I
    add-int/lit16 v4, v2, 0x24c

    #@3e
    add-int/lit8 v4, v4, -0x1

    #@40
    invoke-virtual {p2, v2, v4}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    #@43
    .line 873
    .end local v1    # "norm16":I
    .end local v2    # "syllable":I
    :cond_2
    :goto_1
    return v7

    #@44
    .line 861
    :cond_3
    if-eqz v3, :cond_1

    #@46
    .line 862
    invoke-virtual {p2, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@49
    goto :goto_0

    #@4a
    .line 870
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
    .line 672
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    const v0, 0xff01

    #@7
    if-gt v0, p1, :cond_1

    #@9
    .line 673
    :cond_0
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 674
    :cond_1
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@d
    if-gt v0, p1, :cond_2

    #@f
    .line 675
    const/4 v0, 0x2

    #@10
    return v0

    #@11
    .line 677
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
    .line 763
    const/4 v1, -0x1

    #@1
    .line 766
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
    .line 781
    .end local v3    # "norm16":I
    :cond_0
    if-gez v1, :cond_4

    #@11
    .line 782
    const/4 v5, 0x0

    #@12
    return-object v5

    #@13
    .line 768
    .restart local v3    # "norm16":I
    :cond_1
    invoke-direct {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->isHangul(I)Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_2

    #@19
    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    .line 771
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-static {p1, v0}, Landroid/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    #@21
    .line 772
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    return-object v5

    #@26
    .line 773
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_2
    invoke-direct {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_3

    #@2c
    .line 774
    invoke-direct {p0, p1, v3}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    #@2f
    move-result p1

    #@30
    move v1, p1

    #@31
    .line 775
    goto :goto_0

    #@32
    .line 778
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
    .line 779
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
    .line 784
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
    .line 703
    if-gez p1, :cond_0

    #@3
    .line 704
    return v1

    #@4
    .line 705
    :cond_0
    const/16 v0, 0x180

    #@6
    if-ge p1, v0, :cond_1

    #@8
    .line 706
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->tccc180:[I

    #@a
    aget v0, v0, p1

    #@c
    return v0

    #@d
    .line 707
    :cond_1
    const v0, 0xffff

    #@10
    if-gt p1, v0, :cond_2

    #@12
    .line 708
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_2

    #@18
    return v1

    #@19
    .line 710
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
    .line 713
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
    .line 726
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@4
    move-result v2

    #@5
    .line 727
    .local v2, "norm16":I
    iget v3, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@7
    if-gt v2, v3, :cond_0

    #@9
    .line 729
    return v4

    #@a
    .line 730
    :cond_0
    const v3, 0xfe00

    #@d
    if-lt v2, v3, :cond_1

    #@f
    .line 732
    and-int/lit16 v2, v2, 0xff

    #@11
    .line 733
    shl-int/lit8 v3, v2, 0x8

    #@13
    or-int/2addr v3, v2

    #@14
    return v3

    #@15
    .line 734
    :cond_1
    iget v3, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@17
    if-lt v2, v3, :cond_2

    #@19
    .line 735
    return v4

    #@1a
    .line 736
    :cond_2
    invoke-direct {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_3

    #@20
    .line 737
    invoke-direct {p0, p1, v2}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    #@23
    move-result p1

    #@24
    goto :goto_0

    #@25
    .line 740
    :cond_3
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@27
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v1

    #@2b
    .line 741
    .local v1, "firstUnit":I
    and-int/lit8 v3, v1, 0x1f

    #@2d
    if-nez v3, :cond_4

    #@2f
    .line 745
    const/16 v3, 0x1ff

    #@31
    return v3

    #@32
    .line 747
    :cond_4
    shr-int/lit8 v0, v1, 0x8

    #@34
    .line 748
    .local v0, "fcd16":I
    and-int/lit16 v3, v1, 0x80

    #@36
    if-eqz v3, :cond_5

    #@38
    .line 749
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
    .line 751
    :cond_5
    return v0
.end method

.method public getNorm16(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 669
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
    .line 572
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    #@2
    return-object v0
.end method

.method public getRawDecomposition(I)Ljava/lang/String;
    .locals 8
    .param p1, "c"    # I

    #@0
    .prologue
    .line 798
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
    .line 800
    .end local v3    # "norm16":I
    :cond_0
    const/4 v6, 0x0

    #@f
    return-object v6

    #@10
    .line 801
    .restart local v3    # "norm16":I
    :cond_1
    invoke-direct {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->isHangul(I)Z

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_2

    #@16
    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    .line 804
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-static {p1, v0}, Landroid/icu/impl/Normalizer2Impl$Hangul;->getRawDecomposition(ILjava/lang/Appendable;)V

    #@1e
    .line 805
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    return-object v6

    #@23
    .line 806
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_2
    invoke-direct {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_3

    #@29
    .line 807
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
    .line 810
    :cond_3
    iget-object v6, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@34
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    #@37
    move-result v1

    #@38
    .line 811
    .local v1, "firstUnit":I
    and-int/lit8 v2, v1, 0x1f

    #@3a
    .line 812
    .local v2, "mLength":I
    and-int/lit8 v6, v1, 0x40

    #@3c
    if-eqz v6, :cond_5

    #@3e
    .line 815
    shr-int/lit8 v6, v1, 0x7

    #@40
    and-int/lit8 v6, v6, 0x1

    #@42
    sub-int v6, v3, v6

    #@44
    add-int/lit8 v4, v6, -0x1

    #@46
    .line 816
    .local v4, "rawMapping":I
    iget-object v6, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@48
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    #@4b
    move-result v5

    #@4c
    .line 817
    .local v5, "rm0":C
    const/16 v6, 0x1f

    #@4e
    if-gt v5, v6, :cond_4

    #@50
    .line 818
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
    .line 821
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
    .line 822
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    add-int/lit8 v3, v3, 0x3

    #@66
    .line 823
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
    .line 826
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v4    # "rawMapping":I
    .end local v5    # "rm0":C
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@77
    .line 827
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
    .line 1696
    add-int/lit8 v2, p3, -0x1

    #@2
    if-ne p2, v2, :cond_0

    #@4
    .line 1697
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@7
    move-result v0

    #@8
    .line 1701
    .local v0, "c":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@b
    move-result v1

    #@c
    .line 1702
    .local v1, "prevNorm16":I
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@e
    if-gt v1, v2, :cond_1

    #@10
    .line 1703
    const/4 v2, 0x0

    #@11
    return v2

    #@12
    .line 1699
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
    .line 1705
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
    .line 1613
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@5
    move-result v1

    #@6
    .line 1614
    .local v1, "norm16":I
    invoke-static {v1}, Landroid/icu/impl/Normalizer2Impl;->isInert(I)Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    .line 1615
    return v3

    #@d
    .line 1616
    :cond_0
    iget v4, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@f
    if-gt v1, v4, :cond_3

    #@11
    .line 1620
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
    .line 1621
    :cond_3
    if-eqz p3, :cond_4

    #@23
    iget v4, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    #@25
    :goto_2
    if-lt v1, v4, :cond_5

    #@27
    .line 1622
    return v2

    #@28
    .line 1621
    :cond_4
    iget v4, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@2a
    goto :goto_2

    #@2b
    .line 1623
    :cond_5
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_6

    #@31
    .line 1624
    invoke-direct {p0, p1, v1}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    #@34
    move-result p1

    #@35
    goto :goto_0

    #@36
    .line 1629
    :cond_6
    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@38
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@3b
    move-result v0

    #@3c
    .line 1637
    .local v0, "firstUnit":I
    and-int/lit8 v4, v0, 0x20

    #@3e
    if-nez v4, :cond_9

    #@40
    .line 1638
    if-eqz p2, :cond_7

    #@42
    const/16 v4, 0x1ff

    #@44
    if-gt v0, v4, :cond_8

    #@46
    .line 1636
    :cond_7
    :goto_3
    return v3

    #@47
    :cond_8
    move v3, v2

    #@48
    .line 1638
    goto :goto_3

    #@49
    :cond_9
    move v3, v2

    #@4a
    .line 1637
    goto :goto_3
.end method

.method public hasCompBoundaryBefore(I)Z
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 1609
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
    .line 1574
    :goto_0
    iget v4, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    #@4
    if-ge p1, v4, :cond_0

    #@6
    .line 1575
    return v2

    #@7
    .line 1577
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@a
    move-result v1

    #@b
    .line 1578
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
    .line 1579
    :cond_1
    return v2

    #@18
    .line 1580
    :cond_2
    const v4, 0xfe00

    #@1b
    if-le v1, v4, :cond_3

    #@1d
    .line 1581
    return v3

    #@1e
    .line 1582
    :cond_3
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_4

    #@24
    .line 1583
    invoke-direct {p0, p1, v1}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    #@27
    move-result p1

    #@28
    goto :goto_0

    #@29
    .line 1586
    :cond_4
    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@2b
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@2e
    move-result v0

    #@2f
    .line 1587
    .local v0, "firstUnit":I
    and-int/lit8 v4, v0, 0x1f

    #@31
    if-nez v4, :cond_5

    #@33
    .line 1588
    return v3

    #@34
    .line 1590
    :cond_5
    if-nez p2, :cond_7

    #@36
    .line 1593
    const/16 v4, 0x1ff

    #@38
    if-le v0, v4, :cond_6

    #@3a
    .line 1594
    return v3

    #@3b
    .line 1596
    :cond_6
    const/16 v4, 0xff

    #@3d
    if-gt v0, v4, :cond_7

    #@3f
    .line 1597
    return v2

    #@40
    .line 1602
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
    .line 1645
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@5
    move-result v0

    #@6
    .line 1646
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
    .line 1643
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
    .line 680
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
    .line 840
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
    .line 681
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
    .line 1606
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
    .line 682
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
    .line 1648
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
    .line 494
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
    const/16 v13, 0x180

    #@2
    const/16 v12, 0xd

    #@4
    .line 427
    :try_start_0
    sget-object v10, Landroid/icu/impl/Normalizer2Impl;->IS_ACCEPTABLE:Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

    #@6
    const v11, 0x4e726d32

    #@9
    invoke-static {p1, v11, v10}, Landroid/icu/impl/ICUBinary;->readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)Landroid/icu/util/VersionInfo;

    #@c
    move-result-object v10

    #@d
    iput-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->dataVersion:Landroid/icu/util/VersionInfo;

    #@f
    .line 428
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@12
    move-result v10

    #@13
    div-int/lit8 v5, v10, 0x4

    #@15
    .line 429
    .local v5, "indexesLength":I
    if-gt v5, v12, :cond_0

    #@17
    .line 430
    new-instance v10, Landroid/icu/util/ICUUncheckedIOException;

    #@19
    const-string/jumbo v11, "Normalizer2 data: not enough indexes"

    #@1c
    invoke-direct {v10, v11}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 489
    .end local v5    # "indexesLength":I
    :catch_0
    move-exception v2

    #@21
    .line 490
    .local v2, "e":Ljava/io/IOException;
    new-instance v10, Landroid/icu/util/ICUUncheckedIOException;

    #@23
    invoke-direct {v10, v2}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@26
    throw v10

    #@27
    .line 432
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "indexesLength":I
    :cond_0
    :try_start_1
    new-array v4, v5, [I

    #@29
    .line 433
    .local v4, "inIndexes":[I
    mul-int/lit8 v10, v5, 0x4

    #@2b
    const/4 v11, 0x0

    #@2c
    aput v10, v4, v11

    #@2e
    .line 434
    const/4 v3, 0x1

    #@2f
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    #@31
    .line 435
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@34
    move-result v10

    #@35
    aput v10, v4, v3

    #@37
    .line 434
    add-int/lit8 v3, v3, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 438
    :cond_1
    const/16 v10, 0x8

    #@3c
    aget v10, v4, v10

    #@3e
    iput v10, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    #@40
    .line 439
    const/16 v10, 0x9

    #@42
    aget v10, v4, v10

    #@44
    iput v10, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    #@46
    .line 441
    const/16 v10, 0xa

    #@48
    aget v10, v4, v10

    #@4a
    iput v10, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    #@4c
    .line 442
    const/16 v10, 0xe

    #@4e
    aget v10, v4, v10

    #@50
    iput v10, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNoMappingsOnly:I

    #@52
    .line 443
    const/16 v10, 0xb

    #@54
    aget v10, v4, v10

    #@56
    iput v10, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    #@58
    .line 444
    const/16 v10, 0xc

    #@5a
    aget v10, v4, v10

    #@5c
    iput v10, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    #@5e
    .line 445
    const/16 v10, 0xd

    #@60
    aget v10, v4, v10

    #@62
    iput v10, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@64
    .line 448
    const/4 v10, 0x0

    #@65
    aget v8, v4, v10

    #@67
    .line 449
    .local v8, "offset":I
    const/4 v10, 0x1

    #@68
    aget v6, v4, v10

    #@6a
    .line 450
    .local v6, "nextOffset":I
    invoke-static {p1}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    #@6d
    move-result-object v10

    #@6e
    iput-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    #@70
    .line 451
    iget-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    #@72
    invoke-virtual {v10}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    #@75
    move-result v9

    #@76
    .line 452
    .local v9, "trieLength":I
    sub-int v10, v6, v8

    #@78
    if-le v9, v10, :cond_2

    #@7a
    .line 453
    new-instance v10, Landroid/icu/util/ICUUncheckedIOException;

    #@7c
    const-string/jumbo v11, "Normalizer2 data: not enough bytes for normTrie"

    #@7f
    invoke-direct {v10, v11}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    #@82
    throw v10

    #@83
    .line 455
    :cond_2
    sub-int v10, v6, v8

    #@85
    sub-int/2addr v10, v9

    #@86
    invoke-static {p1, v10}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@89
    .line 458
    move v8, v6

    #@8a
    .line 459
    const/4 v10, 0x2

    #@8b
    aget v6, v4, v10

    #@8d
    .line 460
    sub-int v10, v6, v8

    #@8f
    div-int/lit8 v7, v10, 0x2

    #@91
    .line 461
    .local v7, "numChars":I
    if-eqz v7, :cond_3

    #@93
    .line 462
    const/4 v10, 0x0

    #@94
    invoke-static {p1, v7, v10}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    #@97
    move-result-object v10

    #@98
    iput-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    #@9a
    .line 463
    iget-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    #@9c
    iget v11, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    #@9e
    const v12, 0xfe00

    #@a1
    sub-int v11, v12, v11

    #@a3
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@a6
    move-result-object v10

    #@a7
    iput-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    #@a9
    .line 467
    :cond_3
    move v8, v6

    #@aa
    .line 468
    const/16 v10, 0x100

    #@ac
    new-array v10, v10, [B

    #@ae
    iput-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->smallFCD:[B

    #@b0
    .line 469
    iget-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->smallFCD:[B

    #@b2
    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@b5
    .line 473
    const/16 v10, 0x180

    #@b7
    new-array v10, v10, [I

    #@b9
    iput-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->tccc180:[I

    #@bb
    .line 474
    const/4 v0, 0x0

    #@bc
    .line 475
    .local v0, "bits":I
    const/4 v1, 0x0

    #@bd
    .local v1, "c":I
    :goto_1
    if-ge v1, v13, :cond_7

    #@bf
    .line 476
    and-int/lit16 v10, v1, 0xff

    #@c1
    if-nez v10, :cond_4

    #@c3
    .line 477
    iget-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->smallFCD:[B

    #@c5
    shr-int/lit8 v11, v1, 0x8

    #@c7
    aget-byte v0, v10, v11

    #@c9
    .line 479
    :cond_4
    and-int/lit8 v10, v0, 0x1

    #@cb
    if-eqz v10, :cond_5

    #@cd
    .line 480
    const/4 v3, 0x0

    #@ce
    :goto_2
    const/16 v10, 0x20

    #@d0
    if-ge v3, v10, :cond_6

    #@d2
    .line 481
    iget-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->tccc180:[I

    #@d4
    invoke-virtual {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    #@d7
    move-result v11

    #@d8
    and-int/lit16 v11, v11, 0xff

    #@da
    aput v11, v10, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@dc
    .line 480
    add-int/lit8 v3, v3, 0x1

    #@de
    add-int/lit8 v1, v1, 0x1

    #@e0
    goto :goto_2

    #@e1
    .line 484
    :cond_5
    add-int/lit8 v1, v1, 0x20

    #@e3
    .line 475
    :cond_6
    shr-int/lit8 v0, v0, 0x1

    #@e5
    goto :goto_1

    #@e6
    .line 488
    :cond_7
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
    .line 1427
    move v5, p2

    #@2
    .line 1429
    .local v5, "prevBoundary":I
    const/4 v0, 0x0

    #@3
    .line 1430
    .local v0, "c":I
    const/4 v6, 0x0

    #@4
    .line 1431
    .local v6, "prevFCD16":I
    const/4 v2, 0x0

    #@5
    .line 1435
    .local v2, "fcd16":I
    :goto_0
    move v7, p2

    #@6
    .local v7, "prevSrc":I
    :goto_1
    if-eq p2, p3, :cond_4

    #@8
    .line 1436
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@b
    move-result v0

    #@c
    const/16 v8, 0x300

    #@e
    if-ge v0, v8, :cond_0

    #@10
    .line 1437
    not-int v6, v0

    #@11
    .line 1438
    add-int/lit8 p2, p2, 0x1

    #@13
    goto :goto_1

    #@14
    .line 1439
    :cond_0
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    #@17
    move-result v8

    #@18
    if-nez v8, :cond_1

    #@1a
    .line 1440
    const/4 v6, 0x0

    #@1b
    .line 1441
    add-int/lit8 p2, p2, 0x1

    #@1d
    goto :goto_1

    #@1e
    .line 1443
    :cond_1
    int-to-char v8, v0

    #@1f
    invoke-static {v8}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@22
    move-result v8

    #@23
    if-eqz v8, :cond_2

    #@25
    .line 1445
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    #@28
    move-result v8

    #@29
    if-eqz v8, :cond_3

    #@2b
    .line 1446
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
    .line 1447
    int-to-char v8, v0

    #@3c
    invoke-static {v8, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    #@3f
    move-result v0

    #@40
    .line 1456
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
    .line 1457
    move v6, v2

    #@49
    .line 1458
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@4c
    move-result v8

    #@4d
    add-int/2addr p2, v8

    #@4e
    goto :goto_1

    #@4f
    .line 1450
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
    .line 1451
    add-int/lit8 p2, p2, -0x1

    #@5f
    .line 1452
    int-to-char v8, v0

    #@60
    invoke-static {v1, v8}, Ljava/lang/Character;->toCodePoint(CC)I

    #@63
    move-result v0

    #@64
    goto :goto_2

    #@65
    .line 1465
    .end local v1    # "c2":C
    :cond_4
    if-eq p2, v7, :cond_f

    #@67
    .line 1466
    if-ne p2, p3, :cond_6

    #@69
    .line 1467
    if-eqz p4, :cond_5

    #@6b
    .line 1468
    invoke-virtual {p4, p1, v7, p2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@6e
    .line 1544
    :cond_5
    :goto_3
    return p2

    #@6f
    .line 1472
    :cond_6
    move v5, p2

    #@70
    .line 1474
    if-gez v6, :cond_d

    #@72
    .line 1476
    not-int v4, v6

    #@73
    .line 1477
    .local v4, "prev":I
    const/16 v8, 0x180

    #@75
    if-ge v4, v8, :cond_c

    #@77
    iget-object v8, p0, Landroid/icu/impl/Normalizer2Impl;->tccc180:[I

    #@79
    aget v6, v8, v4

    #@7b
    .line 1478
    :goto_4
    if-le v6, v10, :cond_7

    #@7d
    .line 1479
    add-int/lit8 v5, v5, -0x1

    #@7f
    .line 1496
    .end local v4    # "prev":I
    :cond_7
    :goto_5
    if-eqz p4, :cond_8

    #@81
    .line 1499
    invoke-virtual {p4, p1, v7, v5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@84
    .line 1500
    invoke-virtual {p4, p1, v5, p2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@87
    .line 1503
    :cond_8
    move v7, p2

    #@88
    .line 1508
    :cond_9
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@8b
    move-result v8

    #@8c
    add-int/2addr p2, v8

    #@8d
    .line 1511
    and-int/lit16 v8, v6, 0xff

    #@8f
    shr-int/lit8 v9, v2, 0x8

    #@91
    if-gt v8, v9, :cond_10

    #@93
    .line 1513
    and-int/lit16 v8, v2, 0xff

    #@95
    if-gt v8, v10, :cond_a

    #@97
    .line 1514
    move v5, p2

    #@98
    .line 1516
    :cond_a
    if-eqz p4, :cond_b

    #@9a
    .line 1517
    invoke-virtual {p4, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appendZeroCC(I)V

    #@9d
    .line 1519
    :cond_b
    move v6, v2

    #@9e
    .line 1520
    goto/16 :goto_0

    #@a0
    .line 1477
    .restart local v4    # "prev":I
    :cond_c
    invoke-virtual {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    #@a3
    move-result v6

    #@a4
    goto :goto_4

    #@a5
    .line 1482
    .end local v4    # "prev":I
    :cond_d
    add-int/lit8 v3, p2, -0x1

    #@a7
    .line 1483
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
    .line 1484
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
    .line 1483
    if-eqz v8, :cond_e

    #@bf
    .line 1486
    add-int/lit8 v3, v3, -0x1

    #@c1
    .line 1489
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
    .line 1492
    :cond_e
    if-le v6, v10, :cond_7

    #@d5
    .line 1493
    move v5, v3

    #@d6
    goto :goto_5

    #@d7
    .line 1504
    .end local v3    # "p":I
    :cond_f
    if-ne p2, p3, :cond_9

    #@d9
    goto :goto_3

    #@da
    .line 1521
    :cond_10
    if-nez p4, :cond_11

    #@dc
    .line 1522
    return v5

    #@dd
    .line 1529
    :cond_11
    sub-int v8, v7, v5

    #@df
    invoke-virtual {p4, v8}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    #@e2
    .line 1534
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/Normalizer2Impl;->findNextFCDBoundary(Ljava/lang/CharSequence;II)I

    #@e5
    move-result p2

    #@e6
    .line 1539
    invoke-virtual {p0, p1, v5, p2, p4}, Landroid/icu/impl/Normalizer2Impl;->decomposeShort(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    #@e9
    .line 1540
    move v5, p2

    #@ea
    .line 1541
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
    .line 1547
    const/4 v4, 0x0

    #@2
    .local v4, "src":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v2

    #@6
    .line 1548
    .local v2, "limit":I
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->isEmpty()Z

    #@9
    move-result v5

    #@a
    if-nez v5, :cond_0

    #@c
    .line 1549
    invoke-direct {p0, p1, v7, v2}, Landroid/icu/impl/Normalizer2Impl;->findNextFCDBoundary(Ljava/lang/CharSequence;II)I

    #@f
    move-result v0

    #@10
    .line 1550
    .local v0, "firstBoundaryInSrc":I
    if-eqz v0, :cond_0

    #@12
    .line 1551
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    .line 1552
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    #@19
    move-result v6

    #@1a
    .line 1551
    invoke-direct {p0, v5, v6}, Landroid/icu/impl/Normalizer2Impl;->findPreviousFCDBoundary(Ljava/lang/CharSequence;I)I

    #@1d
    move-result v1

    #@1e
    .line 1553
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
    .line 1555
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
    .line 1556
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    #@39
    move-result v5

    #@3a
    sub-int/2addr v5, v1

    #@3b
    invoke-virtual {p3, v5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    #@3e
    .line 1557
    invoke-virtual {v3, p1, v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@41
    .line 1558
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@44
    move-result v5

    #@45
    invoke-virtual {p0, v3, v7, v5, p3}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    #@48
    .line 1559
    move v4, v0

    #@49
    .line 1562
    .end local v0    # "firstBoundaryInSrc":I
    .end local v1    # "lastBoundaryInDest":I
    .end local v3    # "middle":Ljava/lang/StringBuilder;
    :cond_0
    if-eqz p2, :cond_1

    #@4b
    .line 1563
    invoke-virtual {p0, p1, v4, v2, p3}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    #@4e
    .line 1546
    :goto_0
    return-void

    #@4f
    .line 1565
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
    .line 717
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->smallFCD:[B

    #@3
    shr-int/lit8 v3, p1, 0x8

    #@5
    aget-byte v0, v2, v3

    #@7
    .line 718
    .local v0, "bits":B
    if-nez v0, :cond_0

    #@9
    return v1

    #@a
    .line 719
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
