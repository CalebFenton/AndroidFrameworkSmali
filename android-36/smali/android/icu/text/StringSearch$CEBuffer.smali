.class Landroid/icu/text/StringSearch$CEBuffer;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/StringSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CEBuffer"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final greylist-max-o CEBUFFER_EXTRA:I = 0x20

.field static final greylist-max-o MAX_TARGET_IGNORABLES_PER_PAT_JAMO_L:I = 0x8

.field static final greylist-max-o MAX_TARGET_IGNORABLES_PER_PAT_OTHER:I = 0x3


# instance fields
.field greylist-max-o bufSize_:I

.field greylist-max-o buf_:[Landroid/icu/text/StringSearch$CEI;

.field greylist-max-o firstIx_:I

.field greylist-max-o limitIx_:I

.field greylist-max-o strSearch_:Landroid/icu/text/StringSearch;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1928
    const-class v0, Landroid/icu/text/StringSearch;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/icu/text/StringSearch;)V
    .registers 6
    .param p1, "ss"    # Landroid/icu/text/StringSearch;

    .line 1946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1947
    iput-object p1, p0, Landroid/icu/text/StringSearch$CEBuffer;->strSearch_:Landroid/icu/text/StringSearch;

    .line 1948
    invoke-static {p1}, Landroid/icu/text/StringSearch;->-$$Nest$fgetpattern_(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$Pattern;

    move-result-object v0

    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    .line 1949
    iget-object v0, p1, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    if-eq v0, v1, :cond_40

    .line 1950
    invoke-static {p1}, Landroid/icu/text/StringSearch;->-$$Nest$fgetpattern_(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$Pattern;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    .line 1951
    .local v0, "patText":Ljava/lang/String;
    if-eqz v0, :cond_40

    .line 1952
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 1953
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1954
    .local v2, "c":C
    invoke-static {v2}, Landroid/icu/text/StringSearch$CEBuffer;->MIGHT_BE_JAMO_L(C)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1955
    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    goto :goto_3d

    .line 1958
    :cond_37
    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    add-int/lit8 v3, v3, 0x3

    iput v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    .line 1952
    .end local v2    # "c":C
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 1967
    .end local v0    # "patText":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_40
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    .line 1968
    iput v0, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    .line 1970
    invoke-static {p1}, Landroid/icu/text/StringSearch;->-$$Nest$minitTextProcessedIter(Landroid/icu/text/StringSearch;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1971
    return-void

    .line 1974
    :cond_4c
    iget v0, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    new-array v0, v0, [Landroid/icu/text/StringSearch$CEI;

    iput-object v0, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    .line 1975
    return-void
.end method

.method static greylist-max-o MIGHT_BE_JAMO_L(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 2062
    const/16 v0, 0x1100

    if-lt p0, v0, :cond_8

    const/16 v0, 0x115e

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x3131

    if-lt p0, v0, :cond_10

    const/16 v0, 0x314e

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x3165

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x3186

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method


# virtual methods
.method greylist-max-o get(I)Landroid/icu/text/StringSearch$CEI;
    .registers 7
    .param p1, "index"    # I

    .line 1984
    iget v0, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    rem-int v0, p1, v0

    .line 1986
    .local v0, "i":I
    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    if-lt p1, v1, :cond_11

    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    if-ge p1, v1, :cond_11

    .line 1989
    iget-object v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v1, v1, v0

    return-object v1

    .line 1995
    :cond_11
    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    const/4 v2, 0x0

    if-eq p1, v1, :cond_18

    .line 1996
    nop

    .line 1997
    return-object v2

    .line 2001
    :cond_18
    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    .line 2003
    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    sub-int/2addr v1, v3

    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    if-lt v1, v3, :cond_2d

    .line 2005
    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    .line 2008
    :cond_2d
    new-instance v1, Landroid/icu/text/StringSearch$CollationPCE$Range;

    invoke-direct {v1}, Landroid/icu/text/StringSearch$CollationPCE$Range;-><init>()V

    .line 2009
    .local v1, "range":Landroid/icu/text/StringSearch$CollationPCE$Range;
    iget-object v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v3, v3, v0

    if-nez v3, :cond_41

    .line 2010
    iget-object v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    new-instance v4, Landroid/icu/text/StringSearch$CEI;

    invoke-direct {v4, v2}, Landroid/icu/text/StringSearch$CEI;-><init>(Landroid/icu/text/StringSearch-IA;)V

    aput-object v4, v3, v0

    .line 2012
    :cond_41
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->strSearch_:Landroid/icu/text/StringSearch;

    invoke-static {v3}, Landroid/icu/text/StringSearch;->-$$Nest$fgettextProcessedIter_(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$CollationPCE;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/icu/text/StringSearch$CollationPCE;->nextProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/icu/text/StringSearch$CEI;->ce_:J

    .line 2013
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    iput v3, v2, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 2014
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    iput v3, v2, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    .line 2016
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    return-object v2
.end method

.method greylist-max-o getPrevious(I)Landroid/icu/text/StringSearch$CEI;
    .registers 7
    .param p1, "index"    # I

    .line 2026
    iget v0, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    rem-int v0, p1, v0

    .line 2028
    .local v0, "i":I
    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    if-lt p1, v1, :cond_11

    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    if-ge p1, v1, :cond_11

    .line 2031
    iget-object v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v1, v1, v0

    return-object v1

    .line 2037
    :cond_11
    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    const/4 v2, 0x0

    if-eq p1, v1, :cond_18

    .line 2038
    nop

    .line 2039
    return-object v2

    .line 2043
    :cond_18
    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    .line 2045
    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    sub-int/2addr v1, v3

    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    if-lt v1, v3, :cond_2d

    .line 2047
    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    .line 2050
    :cond_2d
    new-instance v1, Landroid/icu/text/StringSearch$CollationPCE$Range;

    invoke-direct {v1}, Landroid/icu/text/StringSearch$CollationPCE$Range;-><init>()V

    .line 2051
    .local v1, "range":Landroid/icu/text/StringSearch$CollationPCE$Range;
    iget-object v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v3, v3, v0

    if-nez v3, :cond_41

    .line 2052
    iget-object v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    new-instance v4, Landroid/icu/text/StringSearch$CEI;

    invoke-direct {v4, v2}, Landroid/icu/text/StringSearch$CEI;-><init>(Landroid/icu/text/StringSearch-IA;)V

    aput-object v4, v3, v0

    .line 2054
    :cond_41
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->strSearch_:Landroid/icu/text/StringSearch;

    invoke-static {v3}, Landroid/icu/text/StringSearch;->-$$Nest$fgettextProcessedIter_(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$CollationPCE;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/icu/text/StringSearch$CollationPCE;->previousProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/icu/text/StringSearch$CEI;->ce_:J

    .line 2055
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    iput v3, v2, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 2056
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    iput v3, v2, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    .line 2058
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    return-object v2
.end method
