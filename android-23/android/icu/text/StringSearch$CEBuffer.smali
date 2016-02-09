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
.field static final synthetic -assertionsDisabled:Z

.field static final CEBUFFER_EXTRA:I = 0x20

.field static final MAX_TARGET_IGNORABLES_PER_PAT_JAMO_L:I = 0x8

.field static final MAX_TARGET_IGNORABLES_PER_PAT_OTHER:I = 0x3


# instance fields
.field bufSize_:I

.field buf_:[Landroid/icu/text/StringSearch$CEI;

.field firstIx_:I

.field limitIx_:I

.field strSearch_:Landroid/icu/text/StringSearch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/text/StringSearch$CEBuffer;

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
    sput-boolean v0, Landroid/icu/text/StringSearch$CEBuffer;->-assertionsDisabled:Z

    #@b
    .line 1846
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Landroid/icu/text/StringSearch;)V
    .locals 6
    .param p1, "ss"    # Landroid/icu/text/StringSearch;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1865
    iput-object p1, p0, Landroid/icu/text/StringSearch$CEBuffer;->strSearch_:Landroid/icu/text/StringSearch;

    #@6
    .line 1866
    invoke-static {p1}, Landroid/icu/text/StringSearch;->-get0(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$Pattern;

    #@9
    move-result-object v3

    #@a
    iget v3, v3, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    #@c
    add-int/lit8 v3, v3, 0x20

    #@e
    iput v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    #@10
    .line 1867
    iget-object v3, p1, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@12
    iget-object v3, v3, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@14
    sget-object v4, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@16
    if-eq v3, v4, :cond_1

    #@18
    .line 1868
    invoke-static {p1}, Landroid/icu/text/StringSearch;->-get0(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$Pattern;

    #@1b
    move-result-object v3

    #@1c
    iget-object v2, v3, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    #@1e
    .line 1869
    .local v2, "patText":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@20
    .line 1870
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@24
    move-result v3

    #@25
    if-ge v1, v3, :cond_1

    #@27
    .line 1871
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v0

    #@2b
    .line 1872
    .local v0, "c":C
    invoke-static {v0}, Landroid/icu/text/StringSearch$CEBuffer;->MIGHT_BE_JAMO_L(C)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_0

    #@31
    .line 1873
    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    #@33
    add-int/lit8 v3, v3, 0x8

    #@35
    iput v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    #@37
    .line 1870
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 1876
    :cond_0
    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    #@3c
    add-int/lit8 v3, v3, 0x3

    #@3e
    iput v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    #@40
    goto :goto_1

    #@41
    .line 1885
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "patText":Ljava/lang/String;
    :cond_1
    iput v5, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    #@43
    .line 1886
    iput v5, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    #@45
    .line 1888
    invoke-static {p1}, Landroid/icu/text/StringSearch;->-wrap0(Landroid/icu/text/StringSearch;)Z

    #@48
    move-result v3

    #@49
    if-nez v3, :cond_2

    #@4b
    .line 1889
    return-void

    #@4c
    .line 1892
    :cond_2
    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    #@4e
    new-array v3, v3, [Landroid/icu/text/StringSearch$CEI;

    #@50
    iput-object v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    #@52
    .line 1864
    return-void
.end method

.method static MIGHT_BE_JAMO_L(C)Z
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1980
    const/16 v2, 0x1100

    #@4
    if-lt p0, v2, :cond_1

    #@6
    const/16 v2, 0x115e

    #@8
    if-gt p0, v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    .line 1981
    :cond_1
    const/16 v2, 0x3131

    #@d
    if-lt p0, v2, :cond_2

    #@f
    const/16 v2, 0x314e

    #@11
    if-le p0, v2, :cond_0

    #@13
    .line 1982
    :cond_2
    const/16 v2, 0x3165

    #@15
    if-lt p0, v2, :cond_3

    #@17
    const/16 v2, 0x3186

    #@19
    if-le p0, v2, :cond_0

    #@1b
    :cond_3
    move v0, v1

    #@1c
    goto :goto_0
.end method


# virtual methods
.method get(I)Landroid/icu/text/StringSearch$CEI;
    .locals 6
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1902
    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    #@3
    rem-int v0, p1, v2

    #@5
    .line 1904
    .local v0, "i":I
    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    #@7
    if-lt p1, v2, :cond_0

    #@9
    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    #@b
    if-ge p1, v2, :cond_0

    #@d
    .line 1907
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    #@f
    aget-object v2, v2, v0

    #@11
    return-object v2

    #@12
    .line 1913
    :cond_0
    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    #@14
    if-eq p1, v2, :cond_2

    #@16
    .line 1914
    sget-boolean v2, Landroid/icu/text/StringSearch$CEBuffer;->-assertionsDisabled:Z

    #@18
    if-nez v2, :cond_1

    #@1a
    new-instance v2, Ljava/lang/AssertionError;

    #@1c
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@1f
    throw v2

    #@20
    .line 1915
    :cond_1
    return-object v4

    #@21
    .line 1919
    :cond_2
    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    #@23
    add-int/lit8 v2, v2, 0x1

    #@25
    iput v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    #@27
    .line 1921
    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    #@29
    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    #@2b
    sub-int/2addr v2, v3

    #@2c
    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    #@2e
    if-lt v2, v3, :cond_3

    #@30
    .line 1923
    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    #@32
    add-int/lit8 v2, v2, 0x1

    #@34
    iput v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    #@36
    .line 1926
    :cond_3
    new-instance v1, Landroid/icu/text/StringSearch$CollationPCE$Range;

    #@38
    invoke-direct {v1}, Landroid/icu/text/StringSearch$CollationPCE$Range;-><init>()V

    #@3b
    .line 1927
    .local v1, "range":Landroid/icu/text/StringSearch$CollationPCE$Range;
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    #@3d
    aget-object v2, v2, v0

    #@3f
    if-nez v2, :cond_4

    #@41
    .line 1928
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    #@43
    new-instance v3, Landroid/icu/text/StringSearch$CEI;

    #@45
    invoke-direct {v3, v4}, Landroid/icu/text/StringSearch$CEI;-><init>(Landroid/icu/text/StringSearch$CEI;)V

    #@48
    aput-object v3, v2, v0

    #@4a
    .line 1930
    :cond_4
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    #@4c
    aget-object v2, v2, v0

    #@4e
    iget-object v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->strSearch_:Landroid/icu/text/StringSearch;

    #@50
    invoke-static {v3}, Landroid/icu/text/StringSearch;->-get1(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$CollationPCE;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3, v1}, Landroid/icu/text/StringSearch$CollationPCE;->nextProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J

    #@57
    move-result-wide v4

    #@58
    iput-wide v4, v2, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@5a
    .line 1931
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    #@5c
    aget-object v2, v2, v0

    #@5e
    iget v3, v1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    #@60
    iput v3, v2, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@62
    .line 1932
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    #@64
    aget-object v2, v2, v0

    #@66
    iget v3, v1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    #@68
    iput v3, v2, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@6a
    .line 1934
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    #@6c
    aget-object v2, v2, v0

    #@6e
    return-object v2
.end method

.method getPrevious(I)Landroid/icu/text/StringSearch$CEI;
    .locals 6
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1944
    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    #@3
    rem-int v0, p1, v2

    #@5
    .line 1946
    .local v0, "i":I
    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    #@7
    if-lt p1, v2, :cond_0

    #@9
    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    #@b
    if-ge p1, v2, :cond_0

    #@d
    .line 1949
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    #@f
    aget-object v2, v2, v0

    #@11
    return-object v2

    #@12
    .line 1955
    :cond_0
    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    #@14
    if-eq p1, v2, :cond_2

    #@16
    .line 1956
    sget-boolean v2, Landroid/icu/text/StringSearch$CEBuffer;->-assertionsDisabled:Z

    #@18
    if-nez v2, :cond_1

    #@1a
    new-instance v2, Ljava/lang/AssertionError;

    #@1c
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@1f
    throw v2

    #@20
    .line 1957
    :cond_1
    return-object v4

    #@21
    .line 1961
    :cond_2
    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    #@23
    add-int/lit8 v2, v2, 0x1

    #@25
    iput v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    #@27
    .line 1963
    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    #@29
    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    #@2b
    sub-int/2addr v2, v3

    #@2c
    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    #@2e
    if-lt v2, v3, :cond_3

    #@30
    .line 1965
    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    #@32
    add-int/lit8 v2, v2, 0x1

    #@34
    iput v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    #@36
    .line 1968
    :cond_3
    new-instance v1, Landroid/icu/text/StringSearch$CollationPCE$Range;

    #@38
    invoke-direct {v1}, Landroid/icu/text/StringSearch$CollationPCE$Range;-><init>()V

    #@3b
    .line 1969
    .local v1, "range":Landroid/icu/text/StringSearch$CollationPCE$Range;
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    #@3d
    aget-object v2, v2, v0

    #@3f
    if-nez v2, :cond_4

    #@41
    .line 1970
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    #@43
    new-instance v3, Landroid/icu/text/StringSearch$CEI;

    #@45
    invoke-direct {v3, v4}, Landroid/icu/text/StringSearch$CEI;-><init>(Landroid/icu/text/StringSearch$CEI;)V

    #@48
    aput-object v3, v2, v0

    #@4a
    .line 1972
    :cond_4
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    #@4c
    aget-object v2, v2, v0

    #@4e
    iget-object v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->strSearch_:Landroid/icu/text/StringSearch;

    #@50
    invoke-static {v3}, Landroid/icu/text/StringSearch;->-get1(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$CollationPCE;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3, v1}, Landroid/icu/text/StringSearch$CollationPCE;->previousProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J

    #@57
    move-result-wide v4

    #@58
    iput-wide v4, v2, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@5a
    .line 1973
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    #@5c
    aget-object v2, v2, v0

    #@5e
    iget v3, v1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    #@60
    iput v3, v2, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@62
    .line 1974
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    #@64
    aget-object v2, v2, v0

    #@66
    iget v3, v1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    #@68
    iput v3, v2, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@6a
    .line 1976
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    #@6c
    aget-object v2, v2, v0

    #@6e
    return-object v2
.end method
