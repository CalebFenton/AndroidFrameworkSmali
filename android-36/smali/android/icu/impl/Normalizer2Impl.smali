.class public final Landroid/icu/impl/Normalizer2Impl;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Normalizer2Impl$IsAcceptable;,
        Landroid/icu/impl/Normalizer2Impl$Hangul;,
        Landroid/icu/impl/Normalizer2Impl$UTF16Plus;,
        Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o CANON_HAS_COMPOSITIONS:I = 0x40000000

.field private static final greylist-max-o CANON_HAS_SET:I = 0x200000

.field private static final greylist-max-o CANON_NOT_SEGMENT_STARTER:I = -0x80000000

.field private static final greylist-max-o CANON_VALUE_MASK:I = 0x1fffff

.field public static final blacklist COMP_1_LAST_TUPLE:I = 0x8000

.field public static final blacklist COMP_1_TRAIL_LIMIT:I = 0x3400

.field public static final blacklist COMP_1_TRAIL_MASK:I = 0x7ffe

.field public static final blacklist COMP_1_TRAIL_SHIFT:I = 0x9

.field public static final blacklist COMP_1_TRIPLE:I = 0x1

.field public static final blacklist COMP_2_TRAIL_MASK:I = 0xffc0

.field public static final blacklist COMP_2_TRAIL_SHIFT:I = 0x6

.field private static final greylist-max-o DATA_FORMAT:I = 0x4e726d32

.field public static final blacklist DELTA_SHIFT:I = 0x3

.field public static final blacklist DELTA_TCCC_0:I = 0x0

.field public static final blacklist DELTA_TCCC_1:I = 0x2

.field public static final blacklist DELTA_TCCC_GT_1:I = 0x4

.field public static final blacklist DELTA_TCCC_MASK:I = 0x6

.field public static final blacklist HAS_COMP_BOUNDARY_AFTER:I = 0x1

.field public static final blacklist INERT:I = 0x1

.field private static final greylist-max-o IS_ACCEPTABLE:Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

.field public static final blacklist IX_EXTRA_DATA_OFFSET:I = 0x1

.field public static final blacklist IX_LIMIT_NO_NO:I = 0xc

.field public static final blacklist IX_MIN_COMP_NO_MAYBE_CP:I = 0x9

.field public static final blacklist IX_MIN_DECOMP_NO_CP:I = 0x8

.field public static final blacklist IX_MIN_LCCC_CP:I = 0x12

.field public static final blacklist IX_MIN_MAYBE_NO:I = 0x14

.field public static final blacklist IX_MIN_MAYBE_NO_COMBINES_FWD:I = 0x15

.field public static final blacklist IX_MIN_MAYBE_YES:I = 0xd

.field public static final blacklist IX_MIN_NO_NO:I = 0xb

.field public static final blacklist IX_MIN_NO_NO_COMP_BOUNDARY_BEFORE:I = 0xf

.field public static final blacklist IX_MIN_NO_NO_COMP_NO_MAYBE_CC:I = 0x10

.field public static final blacklist IX_MIN_NO_NO_EMPTY:I = 0x11

.field public static final blacklist IX_MIN_YES_NO:I = 0xa

.field public static final blacklist IX_MIN_YES_NO_MAPPINGS_ONLY:I = 0xe

.field public static final blacklist IX_NORM_TRIE_OFFSET:I = 0x0

.field public static final blacklist IX_RESERVED3_OFFSET:I = 0x3

.field public static final blacklist IX_SMALL_FCD_OFFSET:I = 0x2

.field public static final blacklist IX_TOTAL_SIZE:I = 0x7

.field public static final blacklist JAMO_L:I = 0x2

.field public static final blacklist JAMO_VT:I = 0xfe00

.field public static final blacklist MAPPING_HAS_CCC_LCCC_WORD:I = 0x80

.field public static final blacklist MAPPING_HAS_RAW_MAPPING:I = 0x40

.field public static final blacklist MAPPING_LENGTH_MASK:I = 0x1f

.field public static final blacklist MAX_DELTA:I = 0x40

.field public static final blacklist MIN_NORMAL_MAYBE_YES:I = 0xfc00

.field public static final blacklist MIN_YES_YES_WITH_CC:I = 0xfe02

.field public static final blacklist OFFSET_SHIFT:I = 0x1

.field private static final blacklist segmentStarterMapper:Landroid/icu/util/CodePointMap$ValueFilter;


# instance fields
.field private blacklist canonIterData:Landroid/icu/util/CodePointTrie;

.field private greylist-max-o canonStartSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/icu/text/UnicodeSet;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o centerNoNoDelta:I

.field private greylist-max-o dataVersion:Landroid/icu/util/VersionInfo;

.field private greylist-max-o extraData:Ljava/lang/String;

.field private greylist-max-o limitNoNo:I

.field private greylist-max-o minCompNoMaybeCP:I

.field private greylist-max-o minDecompNoCP:I

.field private greylist-max-o minLcccCP:I

.field private blacklist minMaybeNo:I

.field private blacklist minMaybeNoCombinesFwd:I

.field private greylist-max-o minMaybeYes:I

.field private greylist-max-o minNoNo:I

.field private greylist-max-o minNoNoCompBoundaryBefore:I

.field private greylist-max-o minNoNoCompNoMaybeCC:I

.field private greylist-max-o minNoNoEmpty:I

.field private greylist-max-o minYesNo:I

.field private greylist-max-o minYesNoMappingsOnly:I

.field private blacklist normTrie:Landroid/icu/util/CodePointTrie$Fast16;

.field private greylist-max-o smallFCD:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 32
    nop

    .line 457
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/Normalizer2Impl$IsAcceptable;-><init>(Landroid/icu/impl/Normalizer2Impl-IA;)V

    sput-object v0, Landroid/icu/impl/Normalizer2Impl;->IS_ACCEPTABLE:Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

    .line 584
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$1;

    invoke-direct {v0}, Landroid/icu/impl/Normalizer2Impl$1;-><init>()V

    sput-object v0, Landroid/icu/impl/Normalizer2Impl;->segmentStarterMapper:Landroid/icu/util/CodePointMap$ValueFilter;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o addComposites(ILandroid/icu/text/UnicodeSet;)V
    .registers 7
    .param p1, "list"    # I
    .param p2, "set"    # Landroid/icu/text/UnicodeSet;

    .line 1969
    nop

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1970
    .local v0, "firstUnit":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_16

    .line 1971
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1972
    .local v1, "compositeAndFwd":I
    add-int/lit8 p1, p1, 0x2

    goto :goto_2f

    .line 1974
    .end local v1    # "compositeAndFwd":I
    :cond_16
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, -0xffc1

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x2

    .line 1975
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/2addr v1, v2

    .line 1976
    .restart local v1    # "compositeAndFwd":I
    add-int/lit8 p1, p1, 0x3

    .line 1978
    :goto_2f
    shr-int/lit8 v2, v1, 0x1

    .line 1979
    .local v2, "composite":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_40

    .line 1980
    invoke-virtual {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->getRawNorm16(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForComposite(I)I

    move-result v3

    invoke-direct {p0, v3, p2}, Landroid/icu/impl/Normalizer2Impl;->addComposites(ILandroid/icu/text/UnicodeSet;)V

    .line 1982
    :cond_40
    invoke-virtual {p2, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 1983
    .end local v2    # "composite":I
    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    .line 1984
    return-void
.end method

.method private blacklist addToStartSet(Landroid/icu/util/MutableCodePointTrie;II)V
    .registers 9
    .param p1, "mutableTrie"    # Landroid/icu/util/MutableCodePointTrie;
    .param p2, "origin"    # I
    .param p3, "decompLead"    # I

    .line 2286
    invoke-virtual {p1, p3}, Landroid/icu/util/MutableCodePointTrie;->get(I)I

    move-result v0

    .line 2287
    .local v0, "canonValue":I
    const v1, 0x3fffff

    and-int/2addr v1, v0

    if-nez v1, :cond_12

    if-eqz p2, :cond_12

    .line 2290
    or-int v1, v0, p2

    invoke-virtual {p1, p3, v1}, Landroid/icu/util/MutableCodePointTrie;->set(II)V

    goto :goto_4b

    .line 2294
    :cond_12
    const/high16 v1, 0x200000

    and-int v2, v0, v1

    const v3, 0x1fffff

    if-nez v2, :cond_3d

    .line 2295
    and-int v2, v0, v3

    .line 2296
    .local v2, "firstOrigin":I
    const/high16 v3, -0x200000

    and-int/2addr v3, v0

    or-int/2addr v1, v3

    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    or-int v0, v1, v3

    .line 2297
    invoke-virtual {p1, p3, v0}, Landroid/icu/util/MutableCodePointTrie;->set(II)V

    .line 2298
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    new-instance v3, Landroid/icu/text/UnicodeSet;

    invoke-direct {v3}, Landroid/icu/text/UnicodeSet;-><init>()V

    move-object v4, v3

    .local v4, "set":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2299
    if-eqz v2, :cond_3c

    .line 2300
    invoke-virtual {v4, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 2302
    .end local v2    # "firstOrigin":I
    :cond_3c
    goto :goto_48

    .line 2303
    .end local v4    # "set":Landroid/icu/text/UnicodeSet;
    :cond_3d
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    and-int v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/icu/text/UnicodeSet;

    .line 2305
    .restart local v4    # "set":Landroid/icu/text/UnicodeSet;
    :goto_48
    invoke-virtual {v4, p2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 2307
    .end local v4    # "set":Landroid/icu/text/UnicodeSet;
    :goto_4b
    return-void
.end method

.method private blacklist combine(II)I
    .registers 10
    .param p1, "list"    # I
    .param p2, "trail"    # I

    .line 1920
    const/16 v0, 0x3400

    if-ge p2, v0, :cond_3a

    .line 1923
    shl-int/lit8 v0, p2, 0x1

    .line 1924
    .local v0, "key1":I
    :goto_6
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v2, v1

    .local v2, "firstUnit":I
    if-le v0, v1, :cond_15

    .line 1925
    and-int/lit8 v1, v2, 0x1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    goto :goto_6

    .line 1927
    :cond_15
    and-int/lit16 v1, v2, 0x7ffe

    if-ne v0, v1, :cond_84

    .line 1928
    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_31

    .line 1929
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v1, v3

    return v1

    .line 1931
    :cond_31
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1

    .line 1937
    .end local v0    # "key1":I
    .end local v2    # "firstUnit":I
    :cond_3a
    shr-int/lit8 v1, p2, 0x9

    and-int/lit8 v1, v1, -0x2

    add-int/2addr v0, v1

    .line 1938
    .restart local v0    # "key1":I
    shl-int/lit8 v1, p2, 0x6

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 1941
    .local v1, "key2":I
    :goto_45
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v3, v2

    .local v3, "firstUnit":I
    if-le v0, v2, :cond_54

    .line 1942
    and-int/lit8 v2, v3, 0x1

    add-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    goto :goto_45

    .line 1943
    :cond_54
    and-int/lit16 v2, v3, 0x7ffe

    if-ne v0, v2, :cond_83

    .line 1944
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v4, v2

    .local v4, "secondUnit":I
    if-le v1, v2, :cond_6d

    .line 1945
    const v2, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_6a

    .line 1946
    goto :goto_83

    .line 1948
    :cond_6a
    add-int/lit8 p1, p1, 0x3

    goto :goto_45

    .line 1950
    :cond_6d
    const v2, 0xffc0

    and-int/2addr v2, v4

    if-ne v1, v2, :cond_83

    .line 1951
    const v2, -0xffc1

    and-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0x10

    iget-object v5, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v6, p1, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    or-int/2addr v2, v5

    return v2

    .line 1960
    .end local v1    # "key2":I
    .end local v4    # "secondUnit":I
    :cond_83
    :goto_83
    move v2, v3

    .end local v3    # "firstUnit":I
    .restart local v2    # "firstUnit":I
    :cond_84
    const/4 v1, -0x1

    return v1
.end method

.method private greylist-max-o decompose(IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .registers 14
    .param p1, "c"    # I
    .param p2, "norm16"    # I
    .param p3, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1861
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-lt p2, v0, :cond_1e

    .line 1862
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isMaybeYesOrNonZeroCC(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1863
    invoke-static {p2}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybeYes(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    .line 1864
    return-void

    .line 1865
    :cond_12
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeNo:I

    if-ge p2, v0, :cond_1e

    .line 1867
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    .line 1868
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getRawNorm16(I)I

    move-result p2

    .line 1871
    :cond_1e
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-ge p2, v0, :cond_28

    .line 1873
    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    move-object v3, p3

    goto :goto_66

    .line 1874
    :cond_28
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isHangulLV(I)Z

    move-result v0

    if-nez v0, :cond_62

    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isHangulLVT(I)Z

    move-result v0

    if-eqz v0, :cond_36

    move-object v3, p3

    goto :goto_63

    .line 1879
    :cond_36
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->getData(I)I

    move-result v0

    .line 1880
    .local v0, "mapping":I
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1881
    .local v1, "firstUnit":I
    and-int/lit8 v2, v1, 0x1f

    .line 1883
    .local v2, "length":I
    shr-int/lit8 v9, v1, 0x8

    .line 1884
    .local v9, "trailCC":I
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_54

    .line 1885
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    move v8, v3

    .local v3, "leadCC":I
    goto :goto_56

    .line 1887
    .end local v3    # "leadCC":I
    :cond_54
    const/4 v3, 0x0

    move v8, v3

    .line 1889
    .local v8, "leadCC":I
    :goto_56
    add-int/lit8 v5, v0, 0x1

    .line 1890
    .end local v0    # "mapping":I
    .local v5, "mapping":I
    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int v6, v5, v2

    const/4 v7, 0x1

    move-object v3, p3

    .end local p3    # "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .local v3, "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    invoke-virtual/range {v3 .. v9}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;IIZII)V

    goto :goto_66

    .line 1874
    .end local v1    # "firstUnit":I
    .end local v2    # "length":I
    .end local v3    # "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .end local v5    # "mapping":I
    .end local v8    # "leadCC":I
    .end local v9    # "trailCC":I
    .restart local p3    # "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    :cond_62
    move-object v3, p3

    .line 1876
    .end local p3    # "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .restart local v3    # "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    :goto_63
    invoke-static {p1, v3}, Landroid/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    .line 1892
    :goto_66
    return-void
.end method

.method private greylist-max-o decomposeShort(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I
    .registers 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "src"    # I
    .param p3, "limit"    # I
    .param p4, "stopAtCompBoundary"    # Z
    .param p5, "onlyContiguous"    # Z
    .param p6, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1842
    nop

    :goto_1
    if-ge p2, p3, :cond_2d

    .line 1843
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1844
    .local v0, "c":I
    if-eqz p4, :cond_e

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    if-ge v0, v1, :cond_e

    .line 1845
    return p2

    .line 1847
    :cond_e
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    .line 1848
    .local v1, "norm16":I
    if-eqz p4, :cond_1b

    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryBefore(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1849
    return p2

    .line 1851
    :cond_1b
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr p2, v2

    .line 1852
    invoke-direct {p0, v0, v1, p6}, Landroid/icu/impl/Normalizer2Impl;->decompose(IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    .line 1853
    if-eqz p4, :cond_2c

    invoke-direct {p0, v1, p5}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1854
    return p2

    .line 1856
    .end local v0    # "c":I
    .end local v1    # "norm16":I
    :cond_2c
    goto :goto_1

    .line 1857
    :cond_2d
    return p2
.end method

.method private greylist-max-o findNextCompBoundary(Ljava/lang/CharSequence;IIZ)I
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "p"    # I
    .param p3, "limit"    # I
    .param p4, "onlyContiguous"    # Z

    .line 2235
    nop

    :goto_1
    if-ge p2, p3, :cond_21

    .line 2236
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2237
    .local v0, "c":I
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/util/CodePointTrie$Fast16;

    invoke-virtual {v1, v0}, Landroid/icu/util/CodePointTrie$Fast16;->get(I)I

    move-result v1

    .line 2238
    .local v1, "norm16":I
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2239
    goto :goto_21

    .line 2241
    :cond_14
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr p2, v2

    .line 2242
    invoke-direct {p0, v1, p4}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2243
    goto :goto_21

    .line 2245
    .end local v0    # "c":I
    .end local v1    # "norm16":I
    :cond_20
    goto :goto_1

    .line 2246
    :cond_21
    :goto_21
    return p2
.end method

.method private greylist-max-o findNextFCDBoundary(Ljava/lang/CharSequence;II)I
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "p"    # I
    .param p3, "limit"    # I

    .line 2264
    nop

    :goto_1
    if-ge p2, p3, :cond_24

    .line 2265
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2267
    .local v0, "c":I
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minLcccCP:I

    if-lt v0, v1, :cond_24

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    move v2, v1

    .local v2, "norm16":I
    invoke-virtual {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->norm16HasDecompBoundaryBefore(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2268
    goto :goto_24

    .line 2270
    :cond_17
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    .line 2271
    invoke-virtual {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->norm16HasDecompBoundaryAfter(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2272
    goto :goto_24

    .line 2274
    .end local v0    # "c":I
    .end local v2    # "norm16":I
    :cond_23
    goto :goto_1

    .line 2275
    :cond_24
    :goto_24
    return p2
.end method

.method private greylist-max-o findPreviousCompBoundary(Ljava/lang/CharSequence;IZ)I
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "p"    # I
    .param p3, "onlyContiguous"    # Z

    .line 2221
    nop

    :goto_1
    if-lez p2, :cond_1f

    .line 2222
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2223
    .local v0, "c":I
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    .line 2224
    .local v1, "norm16":I
    invoke-direct {p0, v1, p3}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2225
    goto :goto_1f

    .line 2227
    :cond_12
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr p2, v2

    .line 2228
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2229
    goto :goto_1f

    .line 2231
    .end local v0    # "c":I
    .end local v1    # "norm16":I
    :cond_1e
    goto :goto_1

    .line 2232
    :cond_1f
    :goto_1f
    return p2
.end method

.method private greylist-max-o findPreviousFCDBoundary(Ljava/lang/CharSequence;I)I
    .registers 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "p"    # I

    .line 2250
    nop

    :goto_1
    if-lez p2, :cond_24

    .line 2251
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2253
    .local v0, "c":I
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    if-lt v0, v1, :cond_24

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    move v2, v1

    .local v2, "norm16":I
    invoke-virtual {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->norm16HasDecompBoundaryAfter(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2254
    goto :goto_24

    .line 2256
    :cond_17
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr p2, v1

    .line 2257
    invoke-virtual {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->norm16HasDecompBoundaryBefore(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2258
    goto :goto_24

    .line 2260
    .end local v0    # "c":I
    .end local v2    # "norm16":I
    :cond_23
    goto :goto_1

    .line 2261
    :cond_24
    :goto_24
    return p2
.end method

.method private greylist-max-o getCCFromNoNo(I)I
    .registers 5
    .param p1, "norm16"    # I

    .line 1767
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getDataForYesOrNo(I)I

    move-result v0

    .line 1768
    .local v0, "mapping":I
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_19

    .line 1769
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    return v1

    .line 1771
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist getCCFromNormalYesOrMaybe(I)I
    .registers 2
    .param p0, "norm16"    # I

    .line 731
    shr-int/lit8 v0, p0, 0x1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static blacklist getCCFromYesOrMaybeYes(I)I
    .registers 2
    .param p0, "norm16"    # I

    .line 734
    const v0, 0xfc00

    if-lt p0, v0, :cond_a

    invoke-static {p0}, Landroid/icu/impl/Normalizer2Impl;->getCCFromNormalYesOrMaybe(I)I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private greylist-max-o getCompositionsList(I)I
    .registers 3
    .param p1, "norm16"    # I

    .line 1828
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1829
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForDecompYes(I)I

    move-result v0

    goto :goto_f

    .line 1830
    :cond_b
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForComposite(I)I

    move-result v0

    .line 1828
    :goto_f
    return v0
.end method

.method private greylist-max-o getCompositionsListForComposite(I)I
    .registers 6
    .param p1, "norm16"    # I

    .line 1817
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getData(I)I

    move-result v0

    .line 1818
    .local v0, "list":I
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1819
    .local v1, "firstUnit":I
    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v3, v1, 0x1f

    add-int/2addr v2, v3

    return v2
.end method

.method private greylist-max-o getCompositionsListForDecompYes(I)I
    .registers 3
    .param p1, "norm16"    # I

    .line 1805
    const/4 v0, 0x2

    if-lt p1, v0, :cond_e

    const v0, 0xfc00

    if-gt v0, p1, :cond_9

    goto :goto_e

    .line 1809
    :cond_9
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getData(I)I

    move-result v0

    return v0

    .line 1806
    :cond_e
    :goto_e
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getData(I)I
    .registers 4
    .param p1, "norm16"    # I

    .line 1795
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeNo:I

    if-lt p1, v0, :cond_c

    .line 1796
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeNo:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    add-int p1, v0, v1

    .line 1798
    :cond_c
    shr-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private blacklist getDataForMaybe(I)I
    .registers 4
    .param p1, "norm16"    # I

    .line 1792
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeNo:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist getDataForYesOrNo(I)I
    .registers 3
    .param p1, "norm16"    # I

    .line 1789
    shr-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private blacklist getFCD16FromMaybeOrNonZeroCC(I)I
    .registers 5
    .param p1, "norm16"    # I

    .line 797
    nop

    .line 798
    const v0, 0xfc00

    if-lt p1, v0, :cond_e

    .line 800
    invoke-static {p1}, Landroid/icu/impl/Normalizer2Impl;->getCCFromNormalYesOrMaybe(I)I

    move-result p1

    .line 801
    shl-int/lit8 v0, p1, 0x8

    or-int/2addr v0, p1

    return v0

    .line 802
    :cond_e
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-lt p1, v0, :cond_14

    .line 803
    const/4 v0, 0x0

    return v0

    .line 806
    :cond_14
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getDataForMaybe(I)I

    move-result v0

    .line 807
    .local v0, "mapping":I
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 809
    .local v1, "firstUnit":I
    nop

    .line 811
    shr-int/lit8 v2, v1, 0x8

    return v2
.end method

.method private greylist-max-o getPreviousTrailCC(Ljava/lang/CharSequence;II)I
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "p"    # I

    .line 2279
    if-ne p2, p3, :cond_4

    .line 2280
    const/4 v0, 0x0

    return v0

    .line 2282
    :cond_4
    invoke-static {p1, p3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v0

    return v0
.end method

.method private greylist-max-o hangulLVT()I
    .registers 2

    .line 1729
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNoMappingsOnly:I

    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private greylist-max-o hasCompBoundaryAfter(Ljava/lang/CharSequence;IIZ)Z
    .registers 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "p"    # I
    .param p4, "onlyContiguous"    # Z

    .line 2211
    if-eq p2, p3, :cond_f

    invoke-static {p1, p3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-virtual {p0, v0, p4}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryAfter(IZ)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private greylist-max-o hasCompBoundaryBefore(II)Z
    .registers 4
    .param p1, "c"    # I
    .param p2, "norm16"    # I

    .line 2198
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    if-lt p1, v0, :cond_d

    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryBefore(I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private greylist-max-o hasCompBoundaryBefore(Ljava/lang/CharSequence;II)Z
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "src"    # I
    .param p3, "limit"    # I

    .line 2204
    if-eq p2, p3, :cond_f

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private greylist-max-o isCompYesAndZeroCC(I)Z
    .registers 3
    .param p1, "norm16"    # I

    .line 1734
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    if-ge p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private greylist-max-o isDecompNoAlgorithmic(I)Z
    .registers 3
    .param p1, "norm16"    # I

    .line 1758
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-gt v0, p1, :cond_a

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeNo:I

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private greylist-max-o isDecompYesAndZeroCC(I)Z
    .registers 3
    .param p1, "norm16"    # I

    .line 1745
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-lt p1, v0, :cond_15

    const v0, 0xfe00

    if-eq p1, v0, :cond_15

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt v0, p1, :cond_13

    const v0, 0xfc00

    if-gt p1, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private greylist-max-o isHangulLV(I)Z
    .registers 3
    .param p1, "norm16"    # I

    .line 1730
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private greylist-max-o isHangulLVT(I)Z
    .registers 3
    .param p1, "norm16"    # I

    .line 1732
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl;->hangulLVT()I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static greylist-max-o isInert(I)Z
    .registers 2
    .param p0, "norm16"    # I

    .line 1726
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static greylist-max-o isJamoL(I)Z
    .registers 2
    .param p0, "norm16"    # I

    .line 1727
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private static greylist-max-o isJamoVT(I)Z
    .registers 2
    .param p0, "norm16"    # I

    .line 1728
    const v0, 0xfe00

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private greylist-max-o isMaybe(I)Z
    .registers 3
    .param p1, "norm16"    # I

    .line 1724
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeNo:I

    if-gt v0, p1, :cond_b

    const v0, 0xfe00

    if-gt p1, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private blacklist isMaybeYesOrNonZeroCC(I)Z
    .registers 3
    .param p1, "norm16"    # I

    .line 1725
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private greylist-max-o isMostDecompYesAndZeroCC(I)Z
    .registers 3
    .param p1, "norm16"    # I

    .line 1754
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-lt p1, v0, :cond_11

    const v0, 0xfc00

    if-eq p1, v0, :cond_11

    const v0, 0xfe00

    if-ne p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private greylist-max-o isTrailCC01ForCompBoundaryAfter(I)Z
    .registers 4
    .param p1, "norm16"    # I

    .line 2215
    invoke-static {p1}, Landroid/icu/impl/Normalizer2Impl;->isInert(I)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v0

    if-eqz v0, :cond_12

    and-int/lit8 v0, p1, 0x6

    const/4 v1, 0x2

    if-gt v0, v1, :cond_21

    goto :goto_23

    :cond_12
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    .line 2217
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getDataForYesOrNo(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x1ff

    if-gt v0, v1, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 2215
    :goto_24
    return v0
.end method

.method private greylist-max-o mapAlgorithmic(II)I
    .registers 5
    .param p1, "c"    # I
    .param p2, "norm16"    # I

    .line 1785
    shr-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p1

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->centerNoNoDelta:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o norm16HasCompBoundaryAfter(IZ)Z
    .registers 4
    .param p1, "norm16"    # I
    .param p2, "onlyContiguous"    # Z

    .line 2207
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_e

    if-eqz p2, :cond_c

    .line 2208
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->isTrailCC01ForCompBoundaryAfter(I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 2207
    :goto_f
    return v0
.end method

.method private greylist-max-o norm16HasCompBoundaryBefore(I)Z
    .registers 3
    .param p1, "norm16"    # I

    .line 2201
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNoCompNoMaybeCC:I

    if-lt p1, v0, :cond_d

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->isAlgorithmicNoNo(I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private greylist-max-o recompose(Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;IZ)V
    .registers 20
    .param p1, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .param p2, "recomposeStartIndex"    # I
    .param p3, "onlyContiguous"    # Z

    .line 1997
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1998
    .local v1, "sb":Ljava/lang/StringBuilder;
    move/from16 v2, p2

    .line 1999
    .local v2, "p":I
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ne v2, v3, :cond_f

    .line 2000
    return-void

    .line 2012
    :cond_f
    const/4 v3, -0x1

    .line 2013
    .local v3, "compositionsList":I
    const/4 v4, -0x1

    .line 2014
    .local v4, "starter":I
    const/4 v5, 0x0

    .line 2015
    .local v5, "starterIsSupplementary":Z
    const/4 v6, 0x0

    .line 2018
    .local v6, "prevCC":I
    :cond_13
    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v7

    .line 2019
    .local v7, "c":I
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v2, v8

    .line 2020
    invoke-virtual {v0, v7}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v8

    .line 2021
    .local v8, "norm16":I
    invoke-static {v8}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybeYes(I)I

    move-result v9

    .line 2022
    .local v9, "cc":I
    nop

    .line 2023
    invoke-direct {v0, v8}, Landroid/icu/impl/Normalizer2Impl;->isMaybe(I)Z

    move-result v10

    const v11, 0xffff

    if-eqz v10, :cond_e5

    if-ltz v3, :cond_e5

    if-lt v6, v9, :cond_34

    if-nez v6, :cond_e5

    .line 2029
    :cond_34
    invoke-static {v8}, Landroid/icu/impl/Normalizer2Impl;->isJamoVT(I)Z

    move-result v10

    if-eqz v10, :cond_7d

    .line 2031
    const/16 v10, 0x11a7

    if-ge v7, v10, :cond_73

    .line 2033
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    add-int/lit16 v11, v11, -0x1100

    int-to-char v11, v11

    .line 2034
    .local v11, "prev":C
    const/16 v12, 0x13

    if-ge v11, v12, :cond_73

    .line 2035
    add-int/lit8 v12, v2, -0x1

    .line 2036
    .local v12, "pRemove":I
    mul-int/lit8 v13, v11, 0x15

    add-int/lit16 v14, v7, -0x1161

    add-int/2addr v13, v14

    const/16 v14, 0x1c

    mul-int/2addr v13, v14

    const v15, 0xac00

    add-int/2addr v13, v15

    int-to-char v13, v13

    .line 2041
    .local v13, "syllable":C
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-eq v2, v15, :cond_6c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    sub-int/2addr v15, v10

    int-to-char v10, v15

    move v15, v10

    .local v15, "t":C
    if-ge v10, v14, :cond_6c

    .line 2042
    add-int/lit8 v2, v2, 0x1

    .line 2043
    add-int v10, v13, v15

    int-to-char v13, v10

    .line 2045
    .end local v15    # "t":C
    :cond_6c
    invoke-virtual {v1, v4, v13}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2047
    invoke-virtual {v1, v12, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2048
    move v2, v12

    .line 2057
    .end local v11    # "prev":C
    .end local v12    # "pRemove":I
    .end local v13    # "syllable":C
    :cond_73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-ne v2, v10, :cond_7b

    .line 2058
    goto/16 :goto_ed

    .line 2060
    :cond_7b
    const/4 v3, -0x1

    .line 2061
    goto :goto_13

    .line 2062
    :cond_7d
    invoke-direct {v0, v3, v7}, Landroid/icu/impl/Normalizer2Impl;->combine(II)I

    move-result v10

    move v12, v10

    .local v12, "compositeAndFwd":I
    if-ltz v10, :cond_e5

    .line 2064
    shr-int/lit8 v10, v12, 0x1

    .line 2067
    .local v10, "composite":I
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v13

    sub-int v13, v2, v13

    .line 2068
    .local v13, "pRemove":I
    invoke-virtual {v1, v13, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2069
    move v2, v13

    .line 2071
    if-eqz v5, :cond_b2

    .line 2072
    if-le v10, v11, :cond_a5

    .line 2074
    invoke-static {v10}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v11

    invoke-virtual {v1, v4, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2075
    add-int/lit8 v11, v4, 0x1

    invoke-static {v10}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v14

    invoke-virtual {v1, v11, v14}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_cc

    .line 2077
    :cond_a5
    int-to-char v11, v7

    invoke-virtual {v1, v4, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2078
    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2081
    const/4 v5, 0x0

    .line 2082
    add-int/lit8 v2, v2, -0x1

    goto :goto_cc

    .line 2084
    :cond_b2
    if-le v10, v11, :cond_c8

    .line 2087
    const/4 v5, 0x1

    .line 2088
    invoke-static {v10}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v11

    invoke-virtual {v1, v4, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2089
    add-int/lit8 v11, v4, 0x1

    invoke-static {v10}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v14

    invoke-virtual {v1, v11, v14}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2090
    add-int/lit8 v2, v2, 0x1

    goto :goto_cc

    .line 2093
    :cond_c8
    int-to-char v11, v10

    invoke-virtual {v1, v4, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 2098
    :goto_cc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-ne v2, v11, :cond_d3

    .line 2099
    goto :goto_ed

    .line 2102
    :cond_d3
    and-int/lit8 v11, v12, 0x1

    if-eqz v11, :cond_e2

    .line 2103
    nop

    .line 2104
    invoke-virtual {v0, v10}, Landroid/icu/impl/Normalizer2Impl;->getRawNorm16(I)I

    move-result v11

    invoke-direct {v0, v11}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForComposite(I)I

    move-result v3

    goto/16 :goto_13

    .line 2106
    :cond_e2
    const/4 v3, -0x1

    .line 2110
    goto/16 :goto_13

    .line 2115
    .end local v10    # "composite":I
    .end local v12    # "compositeAndFwd":I
    .end local v13    # "pRemove":I
    :cond_e5
    move v6, v9

    .line 2116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-ne v2, v10, :cond_f1

    .line 2117
    nop

    .line 2138
    :goto_ed
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flush()V

    .line 2139
    return-void

    .line 2121
    :cond_f1
    if-nez v9, :cond_106

    .line 2123
    invoke-direct {v0, v8}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForDecompYes(I)I

    move-result v10

    move v3, v10

    if-ltz v10, :cond_13

    .line 2125
    if-gt v7, v11, :cond_101

    .line 2126
    const/4 v5, 0x0

    .line 2127
    add-int/lit8 v4, v2, -0x1

    goto/16 :goto_13

    .line 2129
    :cond_101
    const/4 v5, 0x1

    .line 2130
    add-int/lit8 v4, v2, -0x2

    goto/16 :goto_13

    .line 2133
    :cond_106
    if-eqz p3, :cond_13

    .line 2135
    const/4 v3, -0x1

    goto/16 :goto_13
.end method


# virtual methods
.method public blacklist addCanonIterPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .registers 6
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 575
    invoke-virtual {p0}, Landroid/icu/impl/Normalizer2Impl;->ensureCanonIterData()Landroid/icu/impl/Normalizer2Impl;

    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, "start":I
    new-instance v1, Landroid/icu/util/CodePointMap$Range;

    invoke-direct {v1}, Landroid/icu/util/CodePointMap$Range;-><init>()V

    .line 579
    .local v1, "range":Landroid/icu/util/CodePointMap$Range;
    :goto_9
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/util/CodePointTrie;

    sget-object v3, Landroid/icu/impl/Normalizer2Impl;->segmentStarterMapper:Landroid/icu/util/CodePointMap$ValueFilter;

    invoke-virtual {v2, v0, v3, v1}, Landroid/icu/util/CodePointTrie;->getRange(ILandroid/icu/util/CodePointMap$ValueFilter;Landroid/icu/util/CodePointMap$Range;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 580
    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 581
    invoke-virtual {v1}, Landroid/icu/util/CodePointMap$Range;->getEnd()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    goto :goto_9

    .line 583
    :cond_1d
    return-void
.end method

.method public blacklist addLcccChars(Landroid/icu/text/UnicodeSet;)V
    .registers 10
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, "start":I
    new-instance v1, Landroid/icu/util/CodePointMap$Range;

    invoke-direct {v1}, Landroid/icu/util/CodePointMap$Range;-><init>()V

    move-object v7, v1

    move v3, v0

    .line 526
    .end local v0    # "start":I
    .local v3, "start":I
    .local v7, "range":Landroid/icu/util/CodePointMap$Range;
    :goto_8
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/util/CodePointTrie$Fast16;

    sget-object v4, Landroid/icu/util/CodePointMap$RangeOption;->FIXED_LEAD_SURROGATES:Landroid/icu/util/CodePointMap$RangeOption;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/icu/util/CodePointTrie$Fast16;->getRange(ILandroid/icu/util/CodePointMap$RangeOption;ILandroid/icu/util/CodePointMap$ValueFilter;Landroid/icu/util/CodePointMap$Range;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 528
    invoke-virtual {v7}, Landroid/icu/util/CodePointMap$Range;->getEnd()I

    move-result v0

    .line 529
    .local v0, "end":I
    invoke-virtual {v7}, Landroid/icu/util/CodePointMap$Range;->getValue()I

    move-result v1

    .line 530
    .local v1, "norm16":I
    const v2, 0xfc00

    if-le v1, v2, :cond_2a

    const v2, 0xfe00

    if-eq v1, v2, :cond_2a

    .line 531
    invoke-virtual {p1, v3, v0}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    goto :goto_3d

    .line 532
    :cond_2a
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNoCompNoMaybeCC:I

    if-gt v2, v1, :cond_3d

    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-ge v1, v2, :cond_3d

    .line 533
    invoke-virtual {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v2

    .line 534
    .local v2, "fcd16":I
    const/16 v4, 0xff

    if-le v2, v4, :cond_3d

    invoke-virtual {p1, v3, v0}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 536
    .end local v2    # "fcd16":I
    :cond_3d
    :goto_3d
    add-int/lit8 v3, v0, 0x1

    .line 537
    .end local v0    # "end":I
    .end local v1    # "norm16":I
    goto :goto_8

    .line 538
    :cond_40
    return-void
.end method

.method public blacklist addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .registers 10
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, "start":I
    new-instance v1, Landroid/icu/util/CodePointMap$Range;

    invoke-direct {v1}, Landroid/icu/util/CodePointMap$Range;-><init>()V

    move-object v7, v1

    move v3, v0

    .line 544
    .end local v0    # "start":I
    .local v3, "start":I
    .local v7, "range":Landroid/icu/util/CodePointMap$Range;
    :goto_8
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/util/CodePointTrie$Fast16;

    sget-object v4, Landroid/icu/util/CodePointMap$RangeOption;->FIXED_LEAD_SURROGATES:Landroid/icu/util/CodePointMap$RangeOption;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/icu/util/CodePointTrie$Fast16;->getRange(ILandroid/icu/util/CodePointMap$RangeOption;ILandroid/icu/util/CodePointMap$ValueFilter;Landroid/icu/util/CodePointMap$Range;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 546
    invoke-virtual {v7}, Landroid/icu/util/CodePointMap$Range;->getEnd()I

    move-result v0

    .line 547
    .local v0, "end":I
    invoke-virtual {v7}, Landroid/icu/util/CodePointMap$Range;->getValue()I

    move-result v1

    .line 548
    .local v1, "value":I
    invoke-virtual {p1, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 549
    if-eq v3, v0, :cond_3f

    invoke-virtual {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isAlgorithmicNoNo(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    and-int/lit8 v2, v1, 0x6

    const/4 v4, 0x2

    if-le v2, v4, :cond_3f

    .line 553
    invoke-virtual {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v2

    .line 554
    .local v2, "prevFCD16":I
    :goto_30
    add-int/lit8 v3, v3, 0x1

    if-gt v3, v0, :cond_3f

    .line 555
    invoke-virtual {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v4

    .line 556
    .local v4, "fcd16":I
    if-eq v4, v2, :cond_3e

    .line 557
    invoke-virtual {p1, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 558
    move v2, v4

    .line 560
    .end local v4    # "fcd16":I
    :cond_3e
    goto :goto_30

    .line 562
    .end local v2    # "prevFCD16":I
    :cond_3f
    add-int/lit8 v3, v0, 0x1

    .line 563
    .end local v0    # "end":I
    .end local v1    # "value":I
    goto :goto_8

    .line 566
    :cond_42
    const v0, 0xac00

    .local v0, "c":I
    :goto_45
    const v1, 0xd7a4

    if-ge v0, v1, :cond_55

    .line 567
    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 568
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 566
    add-int/lit8 v0, v0, 0x1c

    goto :goto_45

    .line 570
    .end local v0    # "c":I
    :cond_55
    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 571
    return-void
.end method

.method public blacklist compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z
    .registers 24
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "src"    # I
    .param p3, "limit"    # I
    .param p4, "onlyContiguous"    # Z
    .param p5, "doCompose"    # Z
    .param p6, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1135
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p3

    move/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v2, p2

    .line 1136
    .local v2, "prevBoundary":I
    iget v8, v0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    move v9, v2

    .line 1142
    .end local p2    # "src":I
    .local v2, "src":I
    .local v8, "minNoMaybeCP":I
    .local v9, "prevBoundary":I
    :goto_f
    const/4 v3, 0x0

    .line 1143
    .local v3, "c":I
    const/4 v4, 0x0

    .line 1145
    .local v4, "norm16":I
    :goto_11
    const/4 v10, 0x1

    if-ne v2, v7, :cond_1c

    .line 1146
    if-eq v9, v7, :cond_1b

    if-eqz p5, :cond_1b

    .line 1147
    invoke-virtual {v6, v1, v9, v7}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1149
    :cond_1b
    return v10

    .line 1151
    :cond_1c
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    move v3, v11

    if-lt v11, v8, :cond_20c

    iget-object v11, v0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/util/CodePointTrie$Fast16;

    .line 1152
    invoke-virtual {v11, v3}, Landroid/icu/util/CodePointTrie$Fast16;->bmpGet(I)I

    move-result v11

    move v4, v11

    invoke-direct {v0, v11}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v11

    if-eqz v11, :cond_32

    goto/16 :goto_20c

    .line 1156
    :cond_32
    add-int/lit8 v11, v2, 0x1

    .line 1157
    .local v2, "prevSrc":I
    .local v11, "src":I
    invoke-static {v3}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isLeadSurrogate(I)Z

    move-result v12

    if-nez v12, :cond_3b

    .line 1158
    goto :goto_5c

    .line 1161
    :cond_3b
    if-eq v11, v7, :cond_207

    invoke-interface {v1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    move v13, v12

    .local v13, "c2":C
    invoke-static {v12}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v12

    if-eqz v12, :cond_207

    .line 1162
    add-int/lit8 v11, v11, 0x1

    .line 1163
    int-to-char v12, v3

    invoke-static {v12, v13}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .line 1164
    iget-object v12, v0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/util/CodePointTrie$Fast16;

    invoke-virtual {v12, v3}, Landroid/icu/util/CodePointTrie$Fast16;->suppGet(I)I

    move-result v4

    .line 1165
    invoke-direct {v0, v4}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v12

    if-nez v12, :cond_207

    .line 1166
    nop

    .line 1179
    .end local v13    # "c2":C
    :goto_5c
    iget v12, v0, Landroid/icu/impl/Normalizer2Impl;->minMaybeNo:I

    const/4 v13, 0x0

    if-ge v4, v12, :cond_df

    .line 1180
    if-nez p5, :cond_64

    .line 1181
    return v13

    .line 1185
    :cond_64
    invoke-direct {v0, v4}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v10

    if-eqz v10, :cond_8a

    .line 1188
    invoke-direct {v0, v4, v5}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v10

    if-nez v10, :cond_7b

    .line 1189
    invoke-direct {v0, v1, v11, v7}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(Ljava/lang/CharSequence;II)Z

    move-result v10

    if-eqz v10, :cond_77

    goto :goto_7b

    :cond_77
    move/from16 p2, v13

    goto/16 :goto_1ae

    .line 1190
    :cond_7b
    :goto_7b
    if-eq v9, v2, :cond_80

    .line 1191
    invoke-virtual {v6, v1, v9, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1193
    :cond_80
    invoke-direct {v0, v3, v4}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result v10

    invoke-virtual {v6, v10, v13}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    .line 1194
    move v9, v11

    .line 1195
    move v2, v11

    goto :goto_f

    .line 1197
    :cond_8a
    iget v10, v0, Landroid/icu/impl/Normalizer2Impl;->minNoNoCompBoundaryBefore:I

    if-ge v4, v10, :cond_bd

    .line 1199
    invoke-direct {v0, v4, v5}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v10

    if-nez v10, :cond_9f

    .line 1200
    invoke-direct {v0, v1, v11, v7}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(Ljava/lang/CharSequence;II)Z

    move-result v10

    if-eqz v10, :cond_9b

    goto :goto_9f

    :cond_9b
    move/from16 p2, v13

    goto/16 :goto_1ae

    .line 1201
    :cond_9f
    :goto_9f
    if-eq v9, v2, :cond_a4

    .line 1202
    invoke-virtual {v6, v1, v9, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1204
    :cond_a4
    invoke-direct {v0, v4}, Landroid/icu/impl/Normalizer2Impl;->getDataForYesOrNo(I)I

    move-result v10

    .line 1205
    .local v10, "mapping":I
    iget-object v12, v0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v13, v10, 0x1

    .end local v10    # "mapping":I
    .local v13, "mapping":I
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    and-int/lit8 v10, v10, 0x1f

    .line 1206
    .local v10, "length":I
    iget-object v12, v0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int v14, v13, v10

    invoke-virtual {v6, v12, v13, v14}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1207
    move v9, v11

    .line 1208
    move v2, v11

    goto/16 :goto_f

    .line 1210
    .end local v10    # "length":I
    .end local v13    # "mapping":I
    :cond_bd
    iget v10, v0, Landroid/icu/impl/Normalizer2Impl;->minNoNoEmpty:I

    if-lt v4, v10, :cond_db

    .line 1214
    invoke-direct {v0, v1, v11, v7}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(Ljava/lang/CharSequence;II)Z

    move-result v10

    if-nez v10, :cond_d2

    .line 1215
    invoke-direct {v0, v1, v9, v2, v5}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryAfter(Ljava/lang/CharSequence;IIZ)Z

    move-result v10

    if-eqz v10, :cond_ce

    goto :goto_d2

    :cond_ce
    move/from16 p2, v13

    goto/16 :goto_1ae

    .line 1216
    :cond_d2
    :goto_d2
    if-eq v9, v2, :cond_d7

    .line 1217
    invoke-virtual {v6, v1, v9, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1219
    :cond_d7
    move v9, v11

    .line 1220
    move v2, v11

    goto/16 :goto_f

    .line 1210
    :cond_db
    move/from16 p2, v13

    goto/16 :goto_1ae

    .line 1225
    :cond_df
    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl;->isJamoVT(I)Z

    move-result v12

    if-eqz v12, :cond_15a

    if-eq v9, v2, :cond_15a

    .line 1226
    add-int/lit8 v10, v2, -0x1

    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 1227
    .local v10, "prev":C
    const/16 v12, 0x11a7

    if-ge v3, v12, :cond_13b

    .line 1230
    add-int/lit16 v14, v10, -0x1100

    int-to-char v14, v14

    .line 1231
    .local v14, "l":C
    const/16 v15, 0x13

    if-ge v14, v15, :cond_138

    .line 1232
    if-nez p5, :cond_fb

    .line 1233
    return v13

    .line 1236
    :cond_fb
    const/16 v15, 0x1c

    if-eq v11, v7, :cond_10e

    .line 1237
    move/from16 p2, v13

    invoke-interface {v1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    sub-int/2addr v13, v12

    move v12, v13

    .local v12, "t":I
    if-lez v13, :cond_110

    if-ge v12, v15, :cond_110

    .line 1240
    add-int/lit8 v11, v11, 0x1

    goto :goto_119

    .line 1236
    .end local v12    # "t":I
    :cond_10e
    move/from16 p2, v13

    .line 1241
    :cond_110
    invoke-direct {v0, v1, v11, v7}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(Ljava/lang/CharSequence;II)Z

    move-result v12

    if-eqz v12, :cond_118

    .line 1243
    const/4 v12, 0x0

    .restart local v12    # "t":I
    goto :goto_119

    .line 1245
    .end local v12    # "t":I
    :cond_118
    const/4 v12, -0x1

    .line 1247
    .restart local v12    # "t":I
    :goto_119
    if-ltz v12, :cond_158

    .line 1248
    mul-int/lit8 v13, v14, 0x15

    move/from16 v16, v15

    add-int/lit16 v15, v3, -0x1161

    add-int/2addr v13, v15

    mul-int/lit8 v13, v13, 0x1c

    const v15, 0xac00

    add-int/2addr v13, v15

    add-int/2addr v13, v12

    .line 1251
    .local v13, "syllable":I
    add-int/lit8 v2, v2, -0x1

    .line 1252
    if-eq v9, v2, :cond_130

    .line 1253
    invoke-virtual {v6, v1, v9, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1255
    :cond_130
    int-to-char v15, v13

    invoke-virtual {v6, v15}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(C)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1256
    move v9, v11

    .line 1257
    move v2, v11

    goto/16 :goto_f

    .line 1231
    .end local v12    # "t":I
    .end local v13    # "syllable":I
    :cond_138
    move/from16 p2, v13

    goto :goto_158

    .line 1267
    .end local v14    # "l":C
    :cond_13b
    move/from16 p2, v13

    invoke-static {v10}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isHangulLV(I)Z

    move-result v13

    if-eqz v13, :cond_158

    .line 1270
    if-nez p5, :cond_146

    .line 1271
    return p2

    .line 1273
    :cond_146
    add-int v13, v10, v3

    sub-int/2addr v13, v12

    .line 1274
    .restart local v13    # "syllable":I
    add-int/lit8 v2, v2, -0x1

    .line 1275
    if-eq v9, v2, :cond_150

    .line 1276
    invoke-virtual {v6, v1, v9, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1278
    :cond_150
    int-to-char v12, v13

    invoke-virtual {v6, v12}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(C)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1279
    move v9, v11

    .line 1280
    move v2, v11

    goto/16 :goto_f

    .line 1267
    .end local v13    # "syllable":I
    :cond_158
    :goto_158
    nop

    .line 1284
    .end local v10    # "prev":C
    :cond_159
    goto :goto_1ae

    .line 1225
    :cond_15a
    move/from16 p2, v13

    .line 1284
    const v12, 0xfe00

    if-le v4, v12, :cond_159

    .line 1288
    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl;->getCCFromNormalYesOrMaybe(I)I

    move-result v12

    .line 1289
    .local v12, "cc":I
    if-eqz v5, :cond_170

    invoke-direct {v0, v1, v9, v2}, Landroid/icu/impl/Normalizer2Impl;->getPreviousTrailCC(Ljava/lang/CharSequence;II)I

    move-result v13

    if-le v13, v12, :cond_170

    .line 1291
    if-nez p5, :cond_1ae

    .line 1292
    return p2

    .line 1299
    :cond_170
    :goto_170
    if-ne v11, v7, :cond_178

    .line 1300
    if-eqz p5, :cond_177

    .line 1301
    invoke-virtual {v6, v1, v9, v7}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1303
    :cond_177
    return v10

    .line 1305
    :cond_178
    move v13, v12

    .line 1306
    .local v13, "prevCC":I
    invoke-static {v1, v11}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1307
    iget-object v14, v0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/util/CodePointTrie$Fast16;

    invoke-virtual {v14, v3}, Landroid/icu/util/CodePointTrie$Fast16;->get(I)I

    move-result v14

    .line 1308
    .local v14, "n16":I
    const v15, 0xfe02

    if-lt v14, v15, :cond_197

    .line 1309
    invoke-static {v14}, Landroid/icu/impl/Normalizer2Impl;->getCCFromNormalYesOrMaybe(I)I

    move-result v12

    .line 1310
    if-le v13, v12, :cond_191

    .line 1311
    if-nez p5, :cond_197

    .line 1312
    return p2

    .line 1319
    :cond_191
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v15

    add-int/2addr v11, v15

    .line 1320
    .end local v13    # "prevCC":I
    goto :goto_170

    .line 1323
    :cond_197
    invoke-direct {v0, v14}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryBefore(I)Z

    move-result v10

    if-eqz v10, :cond_1ae

    .line 1324
    invoke-direct {v0, v14}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v10

    if-eqz v10, :cond_1ab

    .line 1325
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v10, v11

    move v2, v10

    .end local v11    # "src":I
    .local v10, "src":I
    goto/16 :goto_f

    .line 1324
    .end local v10    # "src":I
    .restart local v11    # "src":I
    :cond_1ab
    move v2, v11

    goto/16 :goto_f

    .line 1335
    .end local v12    # "cc":I
    .end local v14    # "n16":I
    :cond_1ae
    :goto_1ae
    if-eq v9, v2, :cond_1d1

    invoke-direct {v0, v4}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryBefore(I)Z

    move-result v10

    if-nez v10, :cond_1d1

    .line 1336
    invoke-static {v1, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1337
    iget-object v10, v0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/util/CodePointTrie$Fast16;

    invoke-virtual {v10, v3}, Landroid/icu/util/CodePointTrie$Fast16;->get(I)I

    move-result v4

    .line 1338
    invoke-direct {v0, v4, v5}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v10

    if-nez v10, :cond_1ce

    .line 1339
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    sub-int/2addr v2, v10

    move v10, v3

    move v12, v4

    goto :goto_1d3

    .line 1338
    :cond_1ce
    move v10, v3

    move v12, v4

    goto :goto_1d3

    .line 1342
    :cond_1d1
    move v10, v3

    move v12, v4

    .end local v3    # "c":I
    .end local v4    # "norm16":I
    .local v10, "c":I
    .local v12, "norm16":I
    :goto_1d3
    if-eqz p5, :cond_1da

    if-eq v9, v2, :cond_1da

    .line 1343
    invoke-virtual {v6, v1, v9, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1345
    :cond_1da
    invoke-virtual {v6}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v13

    .line 1347
    .local v13, "recomposeStartIndex":I
    const/4 v4, 0x0

    move v3, v11

    .end local v11    # "src":I
    .local v3, "src":I
    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->decomposeShort(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    .line 1350
    move v11, v2

    move v2, v3

    .end local v3    # "src":I
    .local v2, "src":I
    .local v11, "prevSrc":I
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p4

    move-object/from16 v6, p6

    move v3, v7

    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->decomposeShort(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move-result v2

    .line 1352
    invoke-direct {v0, v6, v13, v5}, Landroid/icu/impl/Normalizer2Impl;->recompose(Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;IZ)V

    .line 1353
    if-nez p5, :cond_202

    .line 1354
    invoke-virtual {v6, v1, v11, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->equals(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-nez v3, :cond_1ff

    .line 1355
    return p2

    .line 1357
    :cond_1ff
    invoke-virtual {v6}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->remove()V

    .line 1359
    :cond_202
    move v9, v2

    .line 1360
    .end local v10    # "c":I
    .end local v11    # "prevSrc":I
    .end local v12    # "norm16":I
    .end local v13    # "recomposeStartIndex":I
    move/from16 v7, p3

    goto/16 :goto_f

    .line 1169
    .local v2, "prevSrc":I
    .local v3, "c":I
    .restart local v4    # "norm16":I
    .local v11, "src":I
    :cond_207
    move/from16 v7, p3

    move v2, v11

    goto/16 :goto_11

    .line 1154
    .end local v11    # "src":I
    .local v2, "src":I
    :cond_20c
    :goto_20c
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, p3

    goto/16 :goto_11
.end method

.method public blacklist composeAndAppend(Ljava/lang/CharSequence;ZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .registers 16
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "doCompose"    # Z
    .param p3, "onlyContiguous"    # Z
    .param p4, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1478
    move-object v6, p4

    const/4 v7, 0x0

    .local v7, "src":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 1479
    .local v8, "limit":I
    invoke-virtual {p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_51

    .line 1480
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v8, p3}, Landroid/icu/impl/Normalizer2Impl;->findNextCompBoundary(Ljava/lang/CharSequence;IIZ)I

    move-result v9

    .line 1481
    .local v9, "firstStarterInSrc":I
    if-eqz v9, :cond_51

    .line 1482
    invoke-virtual {p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1483
    invoke-virtual {p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v3

    .line 1482
    invoke-direct {p0, v2, v3, p3}, Landroid/icu/impl/Normalizer2Impl;->findPreviousCompBoundary(Ljava/lang/CharSequence;IZ)I

    move-result v10

    .line 1484
    .local v10, "lastStarterInDest":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v10

    add-int/2addr v3, v9

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1486
    .local v2, "middle":Ljava/lang/StringBuilder;
    invoke-virtual {p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v5

    invoke-virtual {v2, v3, v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1487
    invoke-virtual {p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-virtual {p4, v3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    .line 1488
    invoke-virtual {v2, p1, v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1489
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v5, 0x1

    move-object v1, v2

    .end local v2    # "middle":Ljava/lang/StringBuilder;
    .local v1, "middle":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    .line 1490
    move v7, v9

    move v2, v7

    goto :goto_52

    .line 1493
    .end local v1    # "middle":Ljava/lang/StringBuilder;
    .end local v9    # "firstStarterInSrc":I
    .end local v10    # "lastStarterInDest":I
    :cond_51
    move v2, v7

    .end local v7    # "src":I
    .local v2, "src":I
    :goto_52
    if-eqz p2, :cond_5e

    .line 1494
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v6, p4

    move v3, v8

    .end local v8    # "limit":I
    .local v3, "limit":I
    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    goto :goto_63

    .line 1496
    .end local v3    # "limit":I
    .restart local v8    # "limit":I
    :cond_5e
    move-object v6, p4

    move v3, v8

    .end local v8    # "limit":I
    .restart local v3    # "limit":I
    invoke-virtual {p4, p1, v2, v3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1498
    :goto_63
    return-void
.end method

.method public blacklist composePair(II)I
    .registers 7
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 2142
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    .line 2144
    .local v0, "norm16":I
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl;->isInert(I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_c

    .line 2145
    return v2

    .line 2146
    :cond_c
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNoMappingsOnly:I

    if-ge v0, v1, :cond_4f

    .line 2148
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl;->isJamoL(I)Z

    move-result v1

    const/16 v3, 0x1c

    if-eqz v1, :cond_2b

    .line 2149
    add-int/lit16 p2, p2, -0x1161

    .line 2150
    if-ltz p2, :cond_2a

    const/16 v1, 0x15

    if-ge p2, v1, :cond_2a

    .line 2151
    add-int/lit16 v2, p1, -0x1100

    mul-int/2addr v2, v1

    add-int/2addr v2, p2

    mul-int/2addr v2, v3

    const v1, 0xac00

    add-int/2addr v2, v1

    return v2

    .line 2156
    :cond_2a
    return v2

    .line 2158
    :cond_2b
    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->isHangulLV(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2159
    add-int/lit16 p2, p2, -0x11a7

    .line 2160
    if-lez p2, :cond_3a

    if-ge p2, v3, :cond_3a

    .line 2161
    add-int v1, p1, p2

    return v1

    .line 2163
    :cond_3a
    return v2

    .line 2167
    :cond_3b
    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getDataForYesOrNo(I)I

    move-result v1

    .line 2168
    .local v1, "list":I
    iget v3, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-le v0, v3, :cond_6c

    .line 2169
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    .line 2171
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    goto :goto_6c

    .line 2174
    .end local v1    # "list":I
    :cond_4f
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeNoCombinesFwd:I

    if-lt v0, v1, :cond_7c

    const v1, 0xfc00

    if-gt v1, v0, :cond_59

    goto :goto_7c

    .line 2177
    :cond_59
    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getDataForMaybe(I)I

    move-result v1

    .line 2178
    .restart local v1    # "list":I
    iget v3, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-ge v0, v3, :cond_6c

    .line 2179
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    .line 2181
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 2184
    :cond_6c
    :goto_6c
    if-ltz p2, :cond_7b

    const v3, 0x10ffff

    if-ge v3, p2, :cond_74

    goto :goto_7b

    .line 2187
    :cond_74
    invoke-direct {p0, v1, p2}, Landroid/icu/impl/Normalizer2Impl;->combine(II)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    return v2

    .line 2185
    :cond_7b
    :goto_7b
    return v2

    .line 2175
    .end local v1    # "list":I
    :cond_7c
    :goto_7c
    return v2
.end method

.method public blacklist composeQuickCheck(Ljava/lang/CharSequence;IIZZ)I
    .registers 22
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "src"    # I
    .param p3, "limit"    # I
    .param p4, "onlyContiguous"    # Z
    .param p5, "doSpan"    # Z

    .line 1373
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x0

    .line 1374
    .local v4, "qcResult":I
    move/from16 v5, p2

    .line 1375
    .local v5, "prevBoundary":I
    iget v6, v0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    move v7, v5

    move v5, v4

    move/from16 v4, p2

    .line 1381
    .end local p2    # "src":I
    .local v4, "src":I
    .local v5, "qcResult":I
    .local v6, "minNoMaybeCP":I
    .local v7, "prevBoundary":I
    :goto_11
    const/4 v8, 0x0

    .line 1382
    .local v8, "c":I
    const/4 v9, 0x0

    .line 1384
    .local v9, "norm16":I
    :goto_13
    if-ne v4, v2, :cond_19

    .line 1385
    shl-int/lit8 v10, v4, 0x1

    or-int/2addr v10, v5

    return v10

    .line 1387
    :cond_19
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    move v8, v10

    if-lt v10, v6, :cond_d6

    iget-object v10, v0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/util/CodePointTrie$Fast16;

    .line 1388
    invoke-virtual {v10, v8}, Landroid/icu/util/CodePointTrie$Fast16;->bmpGet(I)I

    move-result v10

    move v9, v10

    invoke-direct {v0, v10}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v10

    if-eqz v10, :cond_2f

    goto/16 :goto_d6

    .line 1392
    :cond_2f
    add-int/lit8 v10, v4, 0x1

    .line 1393
    .local v4, "prevSrc":I
    .local v10, "src":I
    invoke-static {v8}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isLeadSurrogate(I)Z

    move-result v11

    if-nez v11, :cond_38

    .line 1394
    goto :goto_59

    .line 1397
    :cond_38
    if-eq v10, v2, :cond_d3

    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    move v12, v11

    .local v12, "c2":C
    invoke-static {v11}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v11

    if-eqz v11, :cond_d3

    .line 1398
    add-int/lit8 v10, v10, 0x1

    .line 1399
    int-to-char v11, v8

    invoke-static {v11, v12}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v8

    .line 1400
    iget-object v11, v0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/util/CodePointTrie$Fast16;

    invoke-virtual {v11, v8}, Landroid/icu/util/CodePointTrie$Fast16;->suppGet(I)I

    move-result v9

    .line 1401
    invoke-direct {v0, v9}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v11

    if-nez v11, :cond_d3

    .line 1402
    nop

    .line 1414
    .end local v12    # "c2":C
    :goto_59
    const/4 v11, 0x1

    .line 1415
    .local v11, "prevNorm16":I
    if-eq v7, v4, :cond_77

    .line 1416
    move v7, v4

    .line 1417
    invoke-direct {v0, v9}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryBefore(I)Z

    move-result v12

    if-nez v12, :cond_77

    .line 1418
    invoke-static {v1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 1419
    invoke-virtual {v0, v8}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v12

    .line 1420
    .local v12, "n16":I
    invoke-direct {v0, v12, v3}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v13

    if-nez v13, :cond_77

    .line 1421
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v13

    sub-int/2addr v7, v13

    .line 1422
    move v11, v12

    .line 1427
    .end local v12    # "n16":I
    :cond_77
    iget v12, v0, Landroid/icu/impl/Normalizer2Impl;->minMaybeNo:I

    if-lt v9, v12, :cond_d0

    .line 1428
    invoke-direct {v0, v9}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromMaybeOrNonZeroCC(I)I

    move-result v12

    .line 1429
    .local v12, "fcd16":I
    shr-int/lit8 v13, v12, 0x8

    and-int/lit16 v13, v13, 0xff

    .line 1430
    .local v13, "cc":I
    if-eqz v3, :cond_8e

    if-eqz v13, :cond_8e

    .line 1431
    invoke-virtual {v0, v11}, Landroid/icu/impl/Normalizer2Impl;->getTrailCCFromCompYesAndZeroCC(I)I

    move-result v14

    if-le v14, v13, :cond_8e

    goto :goto_d0

    .line 1439
    :cond_8e
    :goto_8e
    const v14, 0xfe02

    if-ge v9, v14, :cond_9a

    .line 1440
    if-nez p5, :cond_97

    .line 1441
    const/4 v5, 0x1

    goto :goto_9a

    .line 1443
    :cond_97
    shl-int/lit8 v14, v7, 0x1

    return v14

    .line 1446
    :cond_9a
    :goto_9a
    if-ne v10, v2, :cond_a0

    .line 1447
    shl-int/lit8 v14, v10, 0x1

    or-int/2addr v14, v5

    return v14

    .line 1449
    :cond_a0
    and-int/lit16 v14, v12, 0xff

    .line 1450
    .local v14, "prevCC":I
    invoke-static {v1, v10}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 1451
    invoke-virtual {v0, v8}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v9

    .line 1452
    iget v15, v0, Landroid/icu/impl/Normalizer2Impl;->minMaybeNo:I

    if-lt v9, v15, :cond_c1

    .line 1453
    invoke-direct {v0, v9}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromMaybeOrNonZeroCC(I)I

    move-result v12

    .line 1454
    shr-int/lit8 v15, v12, 0x8

    and-int/lit16 v13, v15, 0xff

    .line 1455
    if-le v14, v13, :cond_bb

    if-eqz v13, :cond_bb

    .line 1456
    goto :goto_c1

    .line 1461
    :cond_bb
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v15

    add-int/2addr v10, v15

    .line 1462
    .end local v14    # "prevCC":I
    goto :goto_8e

    .line 1464
    :cond_c1
    :goto_c1
    invoke-direct {v0, v9}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v14

    if-eqz v14, :cond_d0

    .line 1465
    move v7, v10

    .line 1466
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v14

    add-int/2addr v10, v14

    .line 1467
    move v4, v10

    goto/16 :goto_11

    .line 1471
    .end local v12    # "fcd16":I
    .end local v13    # "cc":I
    :cond_d0
    :goto_d0
    shl-int/lit8 v12, v7, 0x1

    return v12

    .line 1405
    .end local v11    # "prevNorm16":I
    :cond_d3
    move v4, v10

    goto/16 :goto_13

    .line 1390
    .end local v10    # "src":I
    .local v4, "src":I
    :cond_d6
    :goto_d6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13
.end method

.method public blacklist decompose(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I
    .registers 13
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "src"    # I
    .param p3, "limit"    # I
    .param p4, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1034
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    .line 1037
    .local v0, "minNoCP":I
    const/4 v1, 0x0

    .line 1038
    .local v1, "c":I
    const/4 v2, 0x0

    .line 1041
    .local v2, "norm16":I
    move v3, p2

    .line 1042
    .local v3, "prevBoundary":I
    const/4 v4, 0x0

    .line 1046
    .local v4, "prevCC":I
    :cond_6
    :goto_6
    move v5, p2

    .local v5, "prevSrc":I
    :goto_7
    if-eq p2, p3, :cond_50

    .line 1047
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v1, v6

    if-lt v6, v0, :cond_4d

    iget-object v6, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/util/CodePointTrie$Fast16;

    .line 1048
    invoke-virtual {v6, v1}, Landroid/icu/util/CodePointTrie$Fast16;->bmpGet(I)I

    move-result v6

    move v2, v6

    invoke-direct {p0, v6}, Landroid/icu/impl/Normalizer2Impl;->isMostDecompYesAndZeroCC(I)Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_4d

    .line 1051
    :cond_1e
    invoke-static {v1}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isLeadSurrogate(I)Z

    move-result v6

    if-nez v6, :cond_25

    .line 1052
    goto :goto_50

    .line 1055
    :cond_25
    add-int/lit8 v6, p2, 0x1

    if-eq v6, p3, :cond_4a

    add-int/lit8 v6, p2, 0x1

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v7, v6

    .local v7, "c2":C
    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 1056
    int-to-char v6, v1

    invoke-static {v6, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 1057
    iget-object v6, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/util/CodePointTrie$Fast16;

    invoke-virtual {v6, v1}, Landroid/icu/util/CodePointTrie$Fast16;->suppGet(I)I

    move-result v2

    .line 1058
    invoke-direct {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->isMostDecompYesAndZeroCC(I)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 1059
    add-int/lit8 p2, p2, 0x2

    goto :goto_7

    .line 1064
    .end local v7    # "c2":C
    :cond_4a
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 1050
    :cond_4d
    :goto_4d
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 1069
    :cond_50
    :goto_50
    if-eq p2, v5, :cond_5a

    .line 1070
    if-eqz p4, :cond_58

    .line 1071
    invoke-virtual {p4, p1, v5, p2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_5a

    .line 1073
    :cond_58
    const/4 v4, 0x0

    .line 1074
    move v3, p2

    .line 1077
    :cond_5a
    :goto_5a
    if-ne p2, p3, :cond_5e

    .line 1078
    nop

    .line 1099
    return p2

    .line 1082
    :cond_5e
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr p2, v6

    .line 1083
    if-eqz p4, :cond_69

    .line 1084
    invoke-direct {p0, v1, v2, p4}, Landroid/icu/impl/Normalizer2Impl;->decompose(IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    goto :goto_6

    .line 1086
    :cond_69
    invoke-virtual {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 1087
    invoke-static {v2}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybeYes(I)I

    move-result v6

    .line 1088
    .local v6, "cc":I
    if-le v4, v6, :cond_77

    if-nez v6, :cond_7d

    .line 1089
    :cond_77
    move v4, v6

    .line 1090
    const/4 v7, 0x1

    if-gt v6, v7, :cond_6

    .line 1091
    move v3, p2

    goto :goto_6

    .line 1096
    .end local v6    # "cc":I
    :cond_7d
    return v3
.end method

.method public blacklist decompose(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/Appendable;
    .registers 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/StringBuilder;

    .line 1011
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .end local p1    # "s":Ljava/lang/CharSequence;
    .end local p2    # "dest":Ljava/lang/StringBuilder;
    .local v1, "s":Ljava/lang/CharSequence;
    .local v4, "dest":Ljava/lang/StringBuilder;
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V

    .line 1012
    return-object v4
.end method

.method public blacklist decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "src"    # I
    .param p3, "limit"    # I
    .param p4, "dest"    # Ljava/lang/StringBuilder;
    .param p5, "destLengthEstimate"    # I

    .line 1021
    if-gez p5, :cond_4

    .line 1022
    sub-int p5, p3, p2

    .line 1024
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1025
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    invoke-direct {v0, p0, p4, p5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    .line 1026
    .local v0, "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    .line 1027
    return-void
.end method

.method public blacklist decomposeAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .registers 14
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "doDecompose"    # Z
    .param p3, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1102
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 1103
    .local v7, "limit":I
    if-nez v7, :cond_7

    .line 1104
    return-void

    .line 1106
    :cond_7
    const/4 v2, 0x0

    if-eqz p2, :cond_e

    .line 1107
    invoke-virtual {p0, p1, v2, v7, p3}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    .line 1108
    return-void

    .line 1111
    :cond_e
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1112
    .local v2, "c":I
    const/4 v3, 0x0

    .line 1114
    .local v3, "src":I
    invoke-virtual {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->getCC(I)I

    move-result v5

    move v4, v5

    .local v4, "cc":I
    move v6, v5

    .local v6, "prevCC":I
    move v8, v2

    move v9, v4

    .line 1115
    .end local v2    # "c":I
    .end local v4    # "cc":I
    .local v5, "firstCC":I
    .local v8, "c":I
    .local v9, "cc":I
    :goto_1f
    if-eqz v9, :cond_37

    .line 1116
    move v6, v9

    .line 1117
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v3, v2

    .line 1118
    if-lt v3, v7, :cond_2a

    .line 1119
    goto :goto_37

    .line 1121
    :cond_2a
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 1122
    invoke-virtual {p0, v8}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->getCC(I)I

    move-result v9

    goto :goto_1f

    .line 1124
    :cond_37
    :goto_37
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v0, p3

    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;IIZII)V

    .line 1125
    invoke-virtual {p3, p1, v3, v7}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1126
    return-void
.end method

.method public declared-synchronized blacklist ensureCanonIterData()Landroid/icu/impl/Normalizer2Impl;
    .registers 19

    move-object/from16 v1, p0

    monitor-enter p0

    .line 610
    :try_start_3
    iget-object v0, v1, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/util/CodePointTrie;

    if-nez v0, :cond_11f

    .line 611
    new-instance v0, Landroid/icu/util/MutableCodePointTrie;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2}, Landroid/icu/util/MutableCodePointTrie;-><init>(II)V

    .line 612
    .local v0, "mutableTrie":Landroid/icu/util/MutableCodePointTrie;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    .line 613
    const/4 v2, 0x0

    .line 614
    .local v2, "start":I
    new-instance v3, Landroid/icu/util/CodePointMap$Range;

    invoke-direct {v3}, Landroid/icu/util/CodePointMap$Range;-><init>()V

    move-object v9, v3

    move v5, v2

    .line 615
    .end local v2    # "start":I
    .local v5, "start":I
    .local v9, "range":Landroid/icu/util/CodePointMap$Range;
    :goto_1c
    iget-object v4, v1, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/util/CodePointTrie$Fast16;

    sget-object v6, Landroid/icu/util/CodePointMap$RangeOption;->FIXED_LEAD_SURROGATES:Landroid/icu/util/CodePointMap$RangeOption;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/icu/util/CodePointTrie$Fast16;->getRange(ILandroid/icu/util/CodePointMap$RangeOption;ILandroid/icu/util/CodePointMap$ValueFilter;Landroid/icu/util/CodePointMap$Range;)Z

    move-result v2

    if-eqz v2, :cond_115

    .line 617
    invoke-virtual {v9}, Landroid/icu/util/CodePointMap$Range;->getEnd()I

    move-result v2

    .line 618
    .local v2, "end":I
    invoke-virtual {v9}, Landroid/icu/util/CodePointMap$Range;->getValue()I

    move-result v3

    .line 619
    .local v3, "norm16":I
    invoke-static {v3}, Landroid/icu/impl/Normalizer2Impl;->isInert(I)Z

    move-result v4

    if-nez v4, :cond_10f

    iget v4, v1, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt v4, v3, :cond_43

    iget v4, v1, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt v3, v4, :cond_3f

    goto :goto_43

    :cond_3f
    move/from16 v17, v2

    goto/16 :goto_111

    .end local p0    # "this":Landroid/icu/impl/Normalizer2Impl;
    :cond_43
    :goto_43
    iget v4, v1, Landroid/icu/impl/Normalizer2Impl;->minMaybeNo:I

    if-gt v4, v3, :cond_4f

    iget v4, v1, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-ge v3, v4, :cond_4f

    move/from16 v17, v2

    goto/16 :goto_111

    .line 631
    :cond_4f
    move v4, v5

    .local v4, "c":I
    :goto_50
    if-gt v4, v2, :cond_109

    .line 632
    invoke-virtual {v0, v4}, Landroid/icu/util/MutableCodePointTrie;->get(I)I

    move-result v6

    .line 633
    .local v6, "oldValue":I
    move v7, v6

    .line 634
    .local v7, "newValue":I
    invoke-direct {v1, v3}, Landroid/icu/impl/Normalizer2Impl;->isMaybeYesOrNonZeroCC(I)Z

    move-result v8

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, -0x80000000

    if-eqz v8, :cond_70

    .line 636
    or-int/2addr v7, v11

    .line 637
    const v8, 0xfc00

    if-ge v3, v8, :cond_6c

    .line 638
    or-int/2addr v7, v10

    move/from16 v17, v2

    goto/16 :goto_fe

    .line 637
    :cond_6c
    move/from16 v17, v2

    goto/16 :goto_fe

    .line 640
    :cond_70
    iget v8, v1, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-ge v3, v8, :cond_79

    .line 641
    or-int/2addr v7, v10

    move/from16 v17, v2

    goto/16 :goto_fe

    .line 644
    :cond_79
    move v8, v4

    .line 646
    .local v8, "c2":I
    move v10, v3

    .line 647
    .local v10, "norm16_2":I
    invoke-direct {v1, v10}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v12

    if-eqz v12, :cond_8c

    .line 649
    invoke-direct {v1, v8, v10}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result v12

    move v8, v12

    .line 650
    invoke-virtual {v1, v8}, Landroid/icu/impl/Normalizer2Impl;->getRawNorm16(I)I

    move-result v12

    move v10, v12

    .line 652
    nop

    .line 654
    :cond_8c
    iget v12, v1, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-le v10, v12, :cond_f9

    .line 656
    invoke-direct {v1, v10}, Landroid/icu/impl/Normalizer2Impl;->getDataForYesOrNo(I)I

    move-result v12

    .line 657
    .local v12, "mapping":I
    iget-object v13, v1, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 658
    .local v13, "firstUnit":I
    and-int/lit8 v14, v13, 0x1f

    .line 659
    .local v14, "length":I
    and-int/lit16 v15, v13, 0x80

    if-eqz v15, :cond_b6

    .line 660
    if-ne v4, v8, :cond_b3

    iget-object v15, v1, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    move/from16 v16, v11

    add-int/lit8 v11, v12, -0x1

    invoke-virtual {v15, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    and-int/lit16 v11, v11, 0xff

    if-eqz v11, :cond_b8

    .line 661
    or-int v7, v7, v16

    goto :goto_b8

    .line 660
    :cond_b3
    move/from16 v16, v11

    goto :goto_b8

    .line 659
    :cond_b6
    move/from16 v16, v11

    .line 665
    :cond_b8
    :goto_b8
    if-eqz v14, :cond_f6

    .line 666
    add-int/lit8 v12, v12, 0x1

    .line 668
    add-int v11, v12, v14

    .line 669
    .local v11, "limit":I
    iget-object v15, v1, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->codePointAt(I)I

    move-result v15

    move v8, v15

    .line 670
    invoke-direct {v1, v0, v4, v8}, Landroid/icu/impl/Normalizer2Impl;->addToStartSet(Landroid/icu/util/MutableCodePointTrie;II)V

    .line 674
    iget v15, v1, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt v10, v15, :cond_f3

    .line 675
    :goto_cc
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v15

    add-int/2addr v15, v12

    move v12, v15

    if-ge v15, v11, :cond_f0

    .line 676
    iget-object v15, v1, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->codePointAt(I)I

    move-result v15

    move v8, v15

    .line 677
    invoke-virtual {v0, v8}, Landroid/icu/util/MutableCodePointTrie;->get(I)I

    move-result v15

    .line 678
    .local v15, "c2Value":I
    and-int v17, v15, v16

    if-nez v17, :cond_eb

    .line 679
    move/from16 v17, v2

    .end local v2    # "end":I
    .local v17, "end":I
    or-int v2, v15, v16

    invoke-virtual {v0, v8, v2}, Landroid/icu/util/MutableCodePointTrie;->set(II)V

    goto :goto_ed

    .line 678
    .end local v17    # "end":I
    .restart local v2    # "end":I
    :cond_eb
    move/from16 v17, v2

    .line 681
    .end local v2    # "end":I
    .end local v15    # "c2Value":I
    .restart local v17    # "end":I
    :goto_ed
    move/from16 v2, v17

    goto :goto_cc

    .line 675
    .end local v17    # "end":I
    .restart local v2    # "end":I
    :cond_f0
    move/from16 v17, v2

    .end local v2    # "end":I
    .restart local v17    # "end":I
    goto :goto_f8

    .line 674
    .end local v17    # "end":I
    .restart local v2    # "end":I
    :cond_f3
    move/from16 v17, v2

    .end local v2    # "end":I
    .restart local v17    # "end":I
    goto :goto_f8

    .line 665
    .end local v11    # "limit":I
    .end local v17    # "end":I
    .restart local v2    # "end":I
    :cond_f6
    move/from16 v17, v2

    .line 684
    .end local v2    # "end":I
    .end local v12    # "mapping":I
    .end local v13    # "firstUnit":I
    .end local v14    # "length":I
    .restart local v17    # "end":I
    :goto_f8
    goto :goto_fe

    .line 686
    .end local v17    # "end":I
    .restart local v2    # "end":I
    :cond_f9
    move/from16 v17, v2

    .end local v2    # "end":I
    .restart local v17    # "end":I
    invoke-direct {v1, v0, v4, v8}, Landroid/icu/impl/Normalizer2Impl;->addToStartSet(Landroid/icu/util/MutableCodePointTrie;II)V

    .line 689
    .end local v8    # "c2":I
    .end local v10    # "norm16_2":I
    :goto_fe
    if-eq v7, v6, :cond_103

    .line 690
    invoke-virtual {v0, v4, v7}, Landroid/icu/util/MutableCodePointTrie;->set(II)V

    .line 631
    .end local v6    # "oldValue":I
    .end local v7    # "newValue":I
    :cond_103
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v17

    goto/16 :goto_50

    .end local v17    # "end":I
    .restart local v2    # "end":I
    :cond_109
    move/from16 v17, v2

    .line 693
    .end local v2    # "end":I
    .end local v4    # "c":I
    .restart local v17    # "end":I
    add-int/lit8 v5, v17, 0x1

    .line 694
    .end local v3    # "norm16":I
    .end local v17    # "end":I
    goto/16 :goto_1c

    .line 619
    .restart local v2    # "end":I
    .restart local v3    # "norm16":I
    :cond_10f
    move/from16 v17, v2

    .line 628
    .end local v2    # "end":I
    .restart local v17    # "end":I
    :goto_111
    add-int/lit8 v5, v17, 0x1

    .line 629
    goto/16 :goto_1c

    .line 695
    .end local v3    # "norm16":I
    .end local v17    # "end":I
    :cond_115
    sget-object v2, Landroid/icu/util/CodePointTrie$Type;->SMALL:Landroid/icu/util/CodePointTrie$Type;

    sget-object v3, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_32:Landroid/icu/util/CodePointTrie$ValueWidth;

    invoke-virtual {v0, v2, v3}, Landroid/icu/util/MutableCodePointTrie;->buildImmutable(Landroid/icu/util/CodePointTrie$Type;Landroid/icu/util/CodePointTrie$ValueWidth;)Landroid/icu/util/CodePointTrie;

    move-result-object v2

    iput-object v2, v1, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/util/CodePointTrie;
    :try_end_11f
    .catchall {:try_start_3 .. :try_end_11f} :catchall_121

    .line 698
    .end local v0    # "mutableTrie":Landroid/icu/util/MutableCodePointTrie;
    .end local v5    # "start":I
    .end local v9    # "range":Landroid/icu/util/CodePointMap$Range;
    :cond_11f
    monitor-exit p0

    return-object v1

    .line 609
    :catchall_121
    move-exception v0

    :try_start_122
    monitor-exit p0
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_121

    throw v0
.end method

.method public blacklist getCC(I)I
    .registers 3
    .param p1, "norm16"    # I

    .line 722
    const v0, 0xfc00

    if-lt p1, v0, :cond_a

    .line 723
    invoke-static {p1}, Landroid/icu/impl/Normalizer2Impl;->getCCFromNormalYesOrMaybe(I)I

    move-result v0

    return v0

    .line 725
    :cond_a
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt p1, v0, :cond_18

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-gt v0, p1, :cond_13

    goto :goto_18

    .line 728
    :cond_13
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getCCFromNoNo(I)I

    move-result v0

    return v0

    .line 726
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCCFromYesOrMaybeYesCP(I)I
    .registers 3
    .param p1, "c"    # I

    .line 737
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    if-ge p1, v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 738
    :cond_6
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybeYes(I)I

    move-result v0

    return v0
.end method

.method public blacklist getCanonStartSet(ILandroid/icu/text/UnicodeSet;)Z
    .registers 9
    .param p1, "c"    # I
    .param p2, "set"    # Landroid/icu/text/UnicodeSet;

    .line 912
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/util/CodePointTrie;

    invoke-virtual {v0, p1}, Landroid/icu/util/CodePointTrie;->get(I)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 913
    .local v0, "canonValue":I
    if-nez v0, :cond_e

    .line 914
    const/4 v1, 0x0

    return v1

    .line 916
    :cond_e
    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 917
    const v1, 0x1fffff

    and-int/2addr v1, v0

    .line 918
    .local v1, "value":I
    const/high16 v2, 0x200000

    and-int/2addr v2, v0

    if-eqz v2, :cond_26

    .line 919
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/UnicodeSet;

    invoke-virtual {p2, v2}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    goto :goto_2b

    .line 920
    :cond_26
    if-eqz v1, :cond_2b

    .line 921
    invoke-virtual {p2, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 923
    :cond_2b
    :goto_2b
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, v0

    const/4 v3, 0x1

    if-eqz v2, :cond_4e

    .line 924
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getRawNorm16(I)I

    move-result v2

    .line 925
    .local v2, "norm16":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_47

    .line 926
    add-int/lit16 v4, p1, -0x1100

    mul-int/lit16 v4, v4, 0x24c

    const v5, 0xac00

    add-int/2addr v4, v5

    .line 927
    .local v4, "syllable":I
    add-int/lit16 v5, v4, 0x24c

    sub-int/2addr v5, v3

    invoke-virtual {p2, v4, v5}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 928
    .end local v4    # "syllable":I
    goto :goto_4e

    .line 929
    :cond_47
    invoke-direct {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsList(I)I

    move-result v4

    invoke-direct {p0, v4, p2}, Landroid/icu/impl/Normalizer2Impl;->addComposites(ILandroid/icu/text/UnicodeSet;)V

    .line 932
    .end local v2    # "norm16":I
    :cond_4e
    :goto_4e
    return v3
.end method

.method public blacklist getCompQuickCheck(I)I
    .registers 3
    .param p1, "norm16"    # I

    .line 709
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt p1, v0, :cond_12

    const v0, 0xfe02

    if-gt v0, p1, :cond_a

    goto :goto_12

    .line 711
    :cond_a
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeNo:I

    if-gt v0, p1, :cond_10

    .line 712
    const/4 v0, 0x2

    return v0

    .line 714
    :cond_10
    const/4 v0, 0x0

    return v0

    .line 710
    :cond_12
    :goto_12
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getDecomposition(I)Ljava/lang/String;
    .registers 8
    .param p1, "c"    # I

    .line 821
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_5f

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    move v2, v0

    .local v2, "norm16":I
    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->isMaybeYesOrNonZeroCC(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_5f

    .line 825
    :cond_11
    const/4 v0, -0x1

    .line 826
    .local v0, "decomp":I
    invoke-direct {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 828
    invoke-direct {p0, p1, v2}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result v3

    move p1, v3

    move v0, v3

    .line 830
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getRawNorm16(I)I

    move-result v2

    .line 832
    :cond_22
    iget v3, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-ge v2, v3, :cond_2e

    .line 833
    if-gez v0, :cond_29

    .line 834
    return-object v1

    .line 836
    :cond_29
    invoke-static {v0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 838
    :cond_2e
    invoke-direct {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->isHangulLV(I)Z

    move-result v1

    if-nez v1, :cond_52

    invoke-direct {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->isHangulLVT(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_52

    .line 845
    :cond_3b
    invoke-direct {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->getData(I)I

    move-result v1

    .line 846
    .local v1, "mapping":I
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "mapping":I
    .local v4, "mapping":I
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    .line 847
    .local v1, "length":I
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int v5, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 840
    .end local v1    # "length":I
    .end local v4    # "mapping":I
    :cond_52
    :goto_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 841
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-static {p1, v1}, Landroid/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    .line 842
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 823
    .end local v0    # "decomp":I
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v2    # "norm16":I
    :cond_5f
    :goto_5f
    return-object v1
.end method

.method public blacklist getFCD16(I)I
    .registers 4
    .param p1, "c"    # I

    .line 747
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_6

    .line 748
    return v1

    .line 749
    :cond_6
    const v0, 0xffff

    if-gt p1, v0, :cond_12

    .line 750
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 752
    :cond_12
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v0

    return v0
.end method

.method public blacklist getFCD16FromNormData(I)I
    .registers 8
    .param p1, "c"    # I

    .line 764
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    .line 765
    .local v0, "norm16":I
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2f

    .line 766
    const v1, 0xfc00

    if-lt v0, v1, :cond_16

    .line 768
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl;->getCCFromNormalYesOrMaybe(I)I

    move-result v0

    .line 769
    shl-int/lit8 v1, v0, 0x8

    or-int/2addr v1, v0

    return v1

    .line 770
    :cond_16
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-lt v0, v1, :cond_1b

    .line 771
    return v2

    .line 772
    :cond_1b
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeNo:I

    if-ge v0, v1, :cond_2f

    .line 773
    and-int/lit8 v1, v0, 0x6

    .line 774
    .local v1, "deltaTrailCC":I
    const/4 v3, 0x2

    if-gt v1, v3, :cond_27

    .line 775
    shr-int/lit8 v2, v1, 0x1

    return v2

    .line 778
    :cond_27
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    .line 779
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getRawNorm16(I)I

    move-result v0

    .line 782
    .end local v1    # "deltaTrailCC":I
    :cond_2f
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-le v0, v1, :cond_58

    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->isHangulLVT(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_58

    .line 787
    :cond_3a
    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getData(I)I

    move-result v1

    .line 788
    .local v1, "mapping":I
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 789
    .local v2, "firstUnit":I
    shr-int/lit8 v3, v2, 0x8

    .line 790
    .local v3, "fcd16":I
    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_57

    .line 791
    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    .line 793
    :cond_57
    return v3

    .line 784
    .end local v1    # "mapping":I
    .end local v2    # "firstUnit":I
    .end local v3    # "fcd16":I
    :cond_58
    :goto_58
    return v2
.end method

.method public blacklist getNorm16(I)I
    .registers 3
    .param p1, "c"    # I

    .line 704
    invoke-static {p1}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isLeadSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_e

    :cond_8
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/util/CodePointTrie$Fast16;

    invoke-virtual {v0, p1}, Landroid/icu/util/CodePointTrie$Fast16;->get(I)I

    move-result v0

    :goto_e
    return v0
.end method

.method public blacklist getRawDecomposition(I)Ljava/lang/String;
    .registers 11
    .param p1, "c"    # I

    .line 857
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    if-lt p1, v0, :cond_8c

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    move v1, v0

    .local v1, "norm16":I
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_8c

    .line 860
    :cond_11
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isHangulLV(I)Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isHangulLVT(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_7f

    .line 865
    :cond_1e
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 866
    invoke-direct {p0, p1, v1}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 869
    :cond_2d
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->getData(I)I

    move-result v0

    .line 870
    .local v0, "mapping":I
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 871
    .local v2, "firstUnit":I
    and-int/lit8 v3, v2, 0x1f

    .line 872
    .local v3, "mLength":I
    and-int/lit8 v4, v2, 0x40

    if-eqz v4, :cond_74

    .line 875
    shr-int/lit8 v4, v2, 0x7

    and-int/lit8 v4, v4, 0x1

    sub-int v4, v0, v4

    add-int/lit8 v4, v4, -0x1

    .line 876
    .local v4, "rawMapping":I
    iget-object v5, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 877
    .local v5, "rm0":C
    const/16 v6, 0x1f

    if-gt v5, v6, :cond_58

    .line 878
    iget-object v6, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    sub-int v7, v4, v5

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 881
    :cond_58
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v3, -0x1

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 882
    .local v6, "buffer":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x3

    .line 883
    iget-object v7, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int v8, v0, v3

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v6, v7, v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 886
    .end local v4    # "rawMapping":I
    .end local v5    # "rm0":C
    .end local v6    # "buffer":Ljava/lang/StringBuilder;
    :cond_74
    add-int/lit8 v0, v0, 0x1

    .line 887
    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int v5, v0, v3

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 862
    .end local v0    # "mapping":I
    .end local v2    # "firstUnit":I
    .end local v3    # "mLength":I
    :cond_7f
    :goto_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 863
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-static {p1, v0}, Landroid/icu/impl/Normalizer2Impl$Hangul;->getRawDecomposition(ILjava/lang/Appendable;)V

    .line 864
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 859
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "norm16":I
    :cond_8c
    :goto_8c
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRawNorm16(I)I
    .registers 3
    .param p1, "c"    # I

    .line 706
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/util/CodePointTrie$Fast16;

    invoke-virtual {v0, p1}, Landroid/icu/util/CodePointTrie$Fast16;->get(I)I

    move-result v0

    return v0
.end method

.method greylist-max-o getTrailCCFromCompYesAndZeroCC(I)I
    .registers 4
    .param p1, "norm16"    # I

    .line 1775
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt p1, v0, :cond_6

    .line 1776
    const/4 v0, 0x0

    return v0

    .line 1779
    :cond_6
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getDataForYesOrNo(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public blacklist hasCompBoundaryAfter(IZ)Z
    .registers 4
    .param p1, "c"    # I
    .param p2, "onlyContiguous"    # Z

    .line 1709
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryAfter(IZ)Z

    move-result v0

    return v0
.end method

.method public blacklist hasCompBoundaryBefore(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 1706
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    if-lt p1, v0, :cond_11

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->norm16HasCompBoundaryBefore(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public blacklist hasDecompBoundaryAfter(I)Z
    .registers 4
    .param p1, "c"    # I

    .line 1668
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_6

    .line 1669
    return v1

    .line 1671
    :cond_6
    const v0, 0xffff

    if-gt p1, v0, :cond_12

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1672
    return v1

    .line 1674
    :cond_12
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->norm16HasDecompBoundaryAfter(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasDecompBoundaryBefore(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 1651
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minLcccCP:I

    if-lt p1, v0, :cond_1c

    const v0, 0xffff

    if-gt p1, v0, :cond_f

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1652
    :cond_f
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->norm16HasDecompBoundaryBefore(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    .line 1651
    :goto_1d
    return v0
.end method

.method public blacklist hasFCDBoundaryAfter(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 1721
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->hasDecompBoundaryAfter(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasFCDBoundaryBefore(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 1720
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->hasDecompBoundaryBefore(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isAlgorithmicNoNo(I)Z
    .registers 3
    .param p1, "norm16"    # I

    .line 717
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-gt v0, p1, :cond_a

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeNo:I

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isCanonSegmentStarter(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 899
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/util/CodePointTrie;

    invoke-virtual {v0, p1}, Landroid/icu/util/CodePointTrie;->get(I)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isCompInert(IZ)Z
    .registers 6
    .param p1, "c"    # I
    .param p2, "onlyContiguous"    # Z

    .line 1712
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    .line 1713
    .local v0, "norm16":I
    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v1

    if-eqz v1, :cond_26

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_26

    if-eqz p2, :cond_24

    .line 1715
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl;->isInert(I)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    .line 1716
    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getDataForYesOrNo(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x1ff

    if-gt v1, v2, :cond_26

    :cond_24
    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 1713
    :goto_27
    return v1
.end method

.method public blacklist isCompNo(I)Z
    .registers 3
    .param p1, "norm16"    # I

    .line 718
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    if-gt v0, p1, :cond_a

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeNo:I

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isDecompInert(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 1703
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->isDecompYesAndZeroCC(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isDecompYes(I)Z
    .registers 3
    .param p1, "norm16"    # I

    .line 719
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-lt p1, v0, :cond_b

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt v0, p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public blacklist isFCDInert(I)Z
    .registers 4
    .param p1, "c"    # I

    .line 1722
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public blacklist load(Ljava/lang/String;)Landroid/icu/impl/Normalizer2Impl;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 520
    invoke-static {p1}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->load(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Normalizer2Impl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist load(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Normalizer2Impl;
    .registers 11
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .line 462
    :try_start_0
    sget-object v0, Landroid/icu/impl/Normalizer2Impl;->IS_ACCEPTABLE:Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

    const v1, 0x4e726d32

    invoke-static {p1, v1, v0}, Landroid/icu/impl/ICUBinary;->readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)Landroid/icu/util/VersionInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->dataVersion:Landroid/icu/util/VersionInfo;

    .line 463
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 464
    .local v0, "indexesLength":I
    const/16 v1, 0x12

    if-le v0, v1, :cond_c0

    .line 467
    new-array v2, v0, [I

    .line 468
    .local v2, "inIndexes":[I
    mul-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 469
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1d
    if-ge v3, v0, :cond_28

    .line 470
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v2, v3

    .line 469
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 473
    .end local v3    # "i":I
    :cond_28
    const/16 v3, 0x8

    aget v3, v2, v3

    iput v3, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    .line 474
    const/16 v3, 0x9

    aget v3, v2, v3

    iput v3, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    .line 475
    aget v1, v2, v1

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl;->minLcccCP:I

    .line 477
    const/16 v1, 0xa

    aget v1, v2, v1

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    .line 478
    const/16 v1, 0xe

    aget v1, v2, v1

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNoMappingsOnly:I

    .line 479
    const/16 v1, 0xb

    aget v1, v2, v1

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    .line 480
    const/16 v1, 0xf

    aget v1, v2, v1

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNoCompBoundaryBefore:I

    .line 481
    const/16 v1, 0x10

    aget v1, v2, v1

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNoCompNoMaybeCC:I

    .line 482
    const/16 v1, 0x11

    aget v1, v2, v1

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNoEmpty:I

    .line 483
    const/16 v1, 0xc

    aget v1, v2, v1

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    .line 484
    const/16 v1, 0x14

    aget v1, v2, v1

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeNo:I

    .line 485
    const/16 v1, 0x15

    aget v1, v2, v1

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeNoCombinesFwd:I

    .line 486
    const/16 v1, 0xd

    aget v1, v2, v1

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    .line 487
    nop

    .line 488
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeNo:I

    shr-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x40

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl;->centerNoNoDelta:I

    .line 491
    aget v1, v2, v4

    .line 492
    .local v1, "offset":I
    aget v3, v2, v3

    .line 493
    .local v3, "nextOffset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 494
    .local v5, "triePosition":I
    invoke-static {p1}, Landroid/icu/util/CodePointTrie$Fast16;->fromBinary(Ljava/nio/ByteBuffer;)Landroid/icu/util/CodePointTrie$Fast16;

    move-result-object v6

    iput-object v6, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/util/CodePointTrie$Fast16;

    .line 495
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v6, v5

    .line 496
    .local v6, "trieLength":I
    sub-int v7, v3, v1

    if-gt v6, v7, :cond_b8

    .line 499
    sub-int v7, v3, v1

    sub-int/2addr v7, v6

    invoke-static {p1, v7}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 502
    move v1, v3

    .line 503
    const/4 v7, 0x2

    aget v8, v2, v7

    .line 504
    .end local v3    # "nextOffset":I
    .local v8, "nextOffset":I
    sub-int v3, v8, v1

    div-int/2addr v3, v7

    .line 505
    .local v3, "numChars":I
    if-eqz v3, :cond_ab

    .line 506
    invoke-static {p1, v3, v4}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    .line 510
    :cond_ab
    move v1, v8

    .line 511
    const/16 v4, 0x100

    new-array v4, v4, [B

    iput-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->smallFCD:[B

    .line 512
    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->smallFCD:[B

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 514
    return-object p0

    .line 497
    .end local v8    # "nextOffset":I
    .local v3, "nextOffset":I
    :cond_b8
    new-instance v4, Landroid/icu/util/ICUUncheckedIOException;

    const-string v7, "Normalizer2 data: not enough bytes for normTrie"

    invoke-direct {v4, v7}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/icu/impl/Normalizer2Impl;
    .end local p1    # "bytes":Ljava/nio/ByteBuffer;
    throw v4

    .line 465
    .end local v1    # "offset":I
    .end local v2    # "inIndexes":[I
    .end local v3    # "nextOffset":I
    .end local v5    # "triePosition":I
    .end local v6    # "trieLength":I
    .restart local p0    # "this":Landroid/icu/impl/Normalizer2Impl;
    .restart local p1    # "bytes":Ljava/nio/ByteBuffer;
    :cond_c0
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    const-string v2, "Normalizer2 data: not enough indexes"

    invoke-direct {v1, v2}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/icu/impl/Normalizer2Impl;
    .end local p1    # "bytes":Ljava/nio/ByteBuffer;
    throw v1
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c8} :catch_c8

    .line 515
    .end local v0    # "indexesLength":I
    .restart local p0    # "this":Landroid/icu/impl/Normalizer2Impl;
    .restart local p1    # "bytes":Ljava/nio/ByteBuffer;
    :catch_c8
    move-exception v0

    .line 516
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I
    .registers 16
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "src"    # I
    .param p3, "limit"    # I
    .param p4, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1511
    move-object v6, p4

    move v0, p2

    .line 1513
    .local v0, "prevBoundary":I
    const/4 v1, 0x0

    .line 1514
    .local v1, "c":I
    const/4 v2, 0x0

    .line 1515
    .local v2, "prevFCD16":I
    const/4 v3, 0x0

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .line 1519
    .end local p2    # "src":I
    .local v0, "src":I
    .local v1, "prevBoundary":I
    .local v2, "c":I
    .local v3, "prevFCD16":I
    .local v4, "fcd16":I
    :goto_9
    move v5, v0

    .local v5, "prevSrc":I
    :goto_a
    if-eq v0, p3, :cond_52

    .line 1520
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    move v2, v7

    iget v8, p0, Landroid/icu/impl/Normalizer2Impl;->minLcccCP:I

    if-ge v7, v8, :cond_19

    .line 1521
    not-int v3, v2

    .line 1522
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1523
    :cond_19
    invoke-virtual {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    move-result v7

    if-nez v7, :cond_23

    .line 1524
    const/4 v3, 0x0

    .line 1525
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1527
    :cond_23
    invoke-static {v2}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isLeadSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 1529
    add-int/lit8 v7, v0, 0x1

    if-eq v7, p3, :cond_3f

    add-int/lit8 v7, v0, 0x1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    move v8, v7

    .local v8, "c2":C
    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 1530
    int-to-char v7, v2

    invoke-static {v7, v8}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 1533
    .end local v8    # "c2":C
    :cond_3f
    invoke-virtual {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v7

    move v4, v7

    const/16 v8, 0xff

    if-gt v7, v8, :cond_4f

    .line 1534
    move v3, v4

    .line 1535
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v0, v7

    goto :goto_a

    .line 1533
    :cond_4f
    move v7, v2

    move v8, v4

    goto :goto_54

    .line 1519
    :cond_52
    move v7, v2

    move v8, v4

    .line 1542
    .end local v2    # "c":I
    .end local v4    # "fcd16":I
    .local v7, "c":I
    .local v8, "fcd16":I
    :goto_54
    const/4 v2, 0x1

    if-eq v0, v5, :cond_af

    .line 1543
    if-ne v0, p3, :cond_5f

    .line 1544
    if-eqz v6, :cond_b2

    .line 1545
    invoke-virtual {p4, p1, v5, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_b2

    .line 1549
    :cond_5f
    move v1, v0

    .line 1551
    if-gez v3, :cond_72

    .line 1553
    not-int v4, v3

    .line 1554
    .local v4, "prev":I
    iget v9, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    if-ge v4, v9, :cond_69

    .line 1555
    const/4 v3, 0x0

    goto :goto_71

    .line 1557
    :cond_69
    invoke-virtual {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v3

    .line 1558
    if-le v3, v2, :cond_71

    .line 1559
    add-int/lit8 v1, v1, -0x1

    .line 1562
    .end local v4    # "prev":I
    :cond_71
    :goto_71
    goto :goto_a3

    .line 1563
    :cond_72
    add-int/lit8 v4, v0, -0x1

    .line 1564
    .local v4, "p":I
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_a0

    if-ge v5, v4, :cond_a0

    add-int/lit8 v9, v4, -0x1

    .line 1565
    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_a0

    .line 1567
    add-int/lit8 v4, v4, -0x1

    .line 1570
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    add-int/lit8 v10, v4, 0x1

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v3

    .line 1573
    :cond_a0
    if-le v3, v2, :cond_a3

    .line 1574
    move v1, v4

    .line 1577
    .end local v4    # "p":I
    :cond_a3
    :goto_a3
    if-eqz v6, :cond_ab

    .line 1580
    invoke-virtual {p4, p1, v5, v1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1581
    invoke-virtual {p4, p1, v1, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1584
    :cond_ab
    move v5, v0

    move v9, v3

    move v10, v5

    goto :goto_b5

    .line 1585
    :cond_af
    if-ne v0, p3, :cond_b3

    .line 1586
    nop

    .line 1625
    :cond_b2
    :goto_b2
    return v0

    .line 1585
    :cond_b3
    move v9, v3

    move v10, v5

    .line 1589
    .end local v3    # "prevFCD16":I
    .end local v5    # "prevSrc":I
    .local v9, "prevFCD16":I
    .local v10, "prevSrc":I
    :goto_b5
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 1592
    and-int/lit16 v3, v9, 0xff

    shr-int/lit8 v4, v8, 0x8

    if-gt v3, v4, :cond_cf

    .line 1594
    and-int/lit16 v3, v8, 0xff

    if-gt v3, v2, :cond_c5

    .line 1595
    move v1, v0

    .line 1597
    :cond_c5
    if-eqz v6, :cond_ca

    .line 1598
    invoke-virtual {p4, v7}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appendZeroCC(I)V

    .line 1600
    :cond_ca
    move v3, v8

    .line 1601
    .end local v9    # "prevFCD16":I
    .restart local v3    # "prevFCD16":I
    move v2, v7

    move v4, v8

    goto/16 :goto_9

    .line 1602
    .end local v3    # "prevFCD16":I
    .restart local v9    # "prevFCD16":I
    :cond_cf
    if-nez v6, :cond_d2

    .line 1603
    return v1

    .line 1610
    :cond_d2
    sub-int v2, v10, v1

    invoke-virtual {p4, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    .line 1615
    invoke-direct {p0, p1, v0, p3}, Landroid/icu/impl/Normalizer2Impl;->findNextFCDBoundary(Ljava/lang/CharSequence;II)I

    move-result v3

    .line 1620
    .end local v0    # "src":I
    .local v3, "src":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move-object v1, p1

    .end local v1    # "prevBoundary":I
    .local v2, "prevBoundary":I
    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->decomposeShort(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    .line 1621
    move v1, v3

    .line 1622
    .end local v2    # "prevBoundary":I
    .restart local v1    # "prevBoundary":I
    const/4 v0, 0x0

    move v2, v3

    move v3, v0

    move v0, v2

    move-object v6, p4

    move v2, v7

    move v4, v8

    .end local v9    # "prevFCD16":I
    .local v0, "prevFCD16":I
    goto/16 :goto_9
.end method

.method public blacklist makeFCDAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .registers 12
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "doMakeFCD"    # Z
    .param p3, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1628
    const/4 v0, 0x0

    .local v0, "src":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1629
    .local v1, "limit":I
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_49

    .line 1630
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Landroid/icu/impl/Normalizer2Impl;->findNextFCDBoundary(Ljava/lang/CharSequence;II)I

    move-result v3

    .line 1631
    .local v3, "firstBoundaryInSrc":I
    if-eqz v3, :cond_49

    .line 1632
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1633
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v5

    .line 1632
    invoke-direct {p0, v4, v5}, Landroid/icu/impl/Normalizer2Impl;->findPreviousFCDBoundary(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1634
    .local v4, "lastBoundaryInDest":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v6

    sub-int/2addr v6, v4

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x10

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1636
    .local v5, "middle":Ljava/lang/StringBuilder;
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v7

    invoke-virtual {v5, v6, v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1637
    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p3, v6}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    .line 1638
    invoke-virtual {v5, p1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1639
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p0, v5, v2, v6, p3}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    .line 1640
    move v0, v3

    .line 1643
    .end local v3    # "firstBoundaryInSrc":I
    .end local v4    # "lastBoundaryInDest":I
    .end local v5    # "middle":Ljava/lang/StringBuilder;
    :cond_49
    if-eqz p2, :cond_4f

    .line 1644
    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    goto :goto_52

    .line 1646
    :cond_4f
    invoke-virtual {p3, p1, v0, v1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1648
    :goto_52
    return-void
.end method

.method public blacklist norm16HasDecompBoundaryAfter(I)Z
    .registers 8
    .param p1, "norm16"    # I

    .line 1677
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    const/4 v1, 0x1

    if-le p1, v0, :cond_59

    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->isHangulLVT(I)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_59

    .line 1680
    :cond_c
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    const/4 v2, 0x0

    if-lt p1, v0, :cond_30

    .line 1681
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->isMaybeYesOrNonZeroCC(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1682
    const v0, 0xfc00

    if-le p1, v0, :cond_23

    const v0, 0xfe00

    if-ne p1, v0, :cond_22

    goto :goto_23

    :cond_22
    move v1, v2

    :cond_23
    :goto_23
    return v1

    .line 1683
    :cond_24
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeNo:I

    if-ge p1, v0, :cond_30

    .line 1685
    and-int/lit8 v0, p1, 0x6

    const/4 v3, 0x2

    if-gt v0, v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    return v1

    .line 1689
    :cond_30
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getData(I)I

    move-result v0

    .line 1690
    .local v0, "mapping":I
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1693
    .local v3, "firstUnit":I
    const/16 v4, 0x1ff

    if-le v3, v4, :cond_3f

    .line 1694
    return v2

    .line 1696
    :cond_3f
    const/16 v4, 0xff

    if-gt v3, v4, :cond_44

    .line 1697
    return v1

    .line 1701
    :cond_44
    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_58

    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    if-nez v4, :cond_57

    goto :goto_58

    :cond_57
    move v1, v2

    :cond_58
    :goto_58
    return v1

    .line 1678
    .end local v0    # "mapping":I
    .end local v3    # "firstUnit":I
    :cond_59
    :goto_59
    return v1
.end method

.method public blacklist norm16HasDecompBoundaryBefore(I)Z
    .registers 8
    .param p1, "norm16"    # I

    .line 1655
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNoCompNoMaybeCC:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_6

    .line 1656
    return v1

    .line 1658
    :cond_6
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    const/4 v2, 0x0

    if-lt p1, v0, :cond_18

    .line 1659
    const v0, 0xfc00

    if-le p1, v0, :cond_17

    const v0, 0xfe00

    if-ne p1, v0, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :cond_17
    :goto_17
    return v1

    .line 1662
    :cond_18
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getDataForYesOrNo(I)I

    move-result v0

    .line 1663
    .local v0, "mapping":I
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1665
    .local v3, "firstUnit":I
    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_36

    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    if-nez v4, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    :cond_36
    :goto_36
    return v1
.end method

.method public blacklist singleLeadMightHaveNonZeroFCD16(I)Z
    .registers 6
    .param p1, "lead"    # I

    .line 757
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->smallFCD:[B

    shr-int/lit8 v1, p1, 0x8

    aget-byte v0, v0, v1

    .line 758
    .local v0, "bits":B
    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 759
    :cond_a
    shr-int/lit8 v2, p1, 0x5

    and-int/lit8 v2, v2, 0x7

    shr-int v2, v0, v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_15

    move v1, v3

    :cond_15
    return v1
.end method
