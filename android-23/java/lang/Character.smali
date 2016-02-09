.class public final Ljava/lang/Character;
.super Ljava/lang/Object;
.source "Character.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Character$Subset;,
        Ljava/lang/Character$UnicodeBlock;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DM_NUMBER_CTOR"
    }
.end annotation


# static fields
.field public static final COMBINING_SPACING_MARK:B = 0x8t

.field public static final CONNECTOR_PUNCTUATION:B = 0x17t

.field public static final CONTROL:B = 0xft

.field public static final CURRENCY_SYMBOL:B = 0x1at

.field public static final DASH_PUNCTUATION:B = 0x14t

.field public static final DECIMAL_DIGIT_NUMBER:B = 0x9t

.field private static final DIRECTIONALITY:[B

.field public static final DIRECTIONALITY_ARABIC_NUMBER:B = 0x6t

.field public static final DIRECTIONALITY_BOUNDARY_NEUTRAL:B = 0x9t

.field public static final DIRECTIONALITY_COMMON_NUMBER_SEPARATOR:B = 0x7t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER:B = 0x3t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR:B = 0x4t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR:B = 0x5t

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT:B = 0x0t

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING:B = 0xet

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE:B = 0xft

.field public static final DIRECTIONALITY_NONSPACING_MARK:B = 0x8t

.field public static final DIRECTIONALITY_OTHER_NEUTRALS:B = 0xdt

.field public static final DIRECTIONALITY_PARAGRAPH_SEPARATOR:B = 0xat

.field public static final DIRECTIONALITY_POP_DIRECTIONAL_FORMAT:B = 0x12t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT:B = 0x1t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC:B = 0x2t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING:B = 0x10t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE:B = 0x11t

.field public static final DIRECTIONALITY_SEGMENT_SEPARATOR:B = 0xbt

.field public static final DIRECTIONALITY_UNDEFINED:B = -0x1t

.field public static final DIRECTIONALITY_WHITESPACE:B = 0xct

.field public static final ENCLOSING_MARK:B = 0x7t

.field public static final END_PUNCTUATION:B = 0x16t

.field public static final FINAL_QUOTE_PUNCTUATION:B = 0x1et

.field public static final FORMAT:B = 0x10t

.field public static final INITIAL_QUOTE_PUNCTUATION:B = 0x1dt

.field public static final LETTER_NUMBER:B = 0xat

.field public static final LINE_SEPARATOR:B = 0xdt

.field public static final LOWERCASE_LETTER:B = 0x2t

.field public static final MATH_SYMBOL:B = 0x19t

.field public static final MAX_CODE_POINT:I = 0x10ffff

.field public static final MAX_HIGH_SURROGATE:C = '\udbff'

.field public static final MAX_LOW_SURROGATE:C = '\udfff'

.field public static final MAX_RADIX:I = 0x24

.field public static final MAX_SURROGATE:C = '\udfff'

.field public static final MAX_VALUE:C = '\uffff'

.field public static final MIN_CODE_POINT:I = 0x0

.field public static final MIN_HIGH_SURROGATE:C = '\ud800'

.field public static final MIN_LOW_SURROGATE:C = '\udc00'

.field public static final MIN_RADIX:I = 0x2

.field public static final MIN_SUPPLEMENTARY_CODE_POINT:I = 0x10000

.field public static final MIN_SURROGATE:C = '\ud800'

.field public static final MIN_VALUE:C = '\u0000'

.field public static final MODIFIER_LETTER:B = 0x4t

.field public static final MODIFIER_SYMBOL:B = 0x1bt

.field public static final NON_SPACING_MARK:B = 0x6t

.field public static final OTHER_LETTER:B = 0x5t

.field public static final OTHER_NUMBER:B = 0xbt

.field public static final OTHER_PUNCTUATION:B = 0x18t

.field public static final OTHER_SYMBOL:B = 0x1ct

.field public static final PARAGRAPH_SEPARATOR:B = 0xet

.field public static final PRIVATE_USE:B = 0x12t

.field public static final SIZE:I = 0x10

.field private static final SMALL_VALUES:[Ljava/lang/Character;

.field public static final SPACE_SEPARATOR:B = 0xct

.field public static final START_PUNCTUATION:B = 0x15t

.field public static final SURROGATE:B = 0x13t

.field public static final TITLECASE_LETTER:B = 0x3t

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNASSIGNED:B = 0x0t

.field public static final UPPERCASE_LETTER:B = 0x1t

.field private static final serialVersionUID:J = 0x348b47d96b1a2678L


# instance fields
.field private final value:C


# direct methods
.method static synthetic -wrap0(I)I
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    invoke-static {p0}, Ljava/lang/Character;->unicodeBlockForCodePoint(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)I
    .locals 1
    .param p0, "blockName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Ljava/lang/Character;->unicodeBlockForName(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(I)V
    .locals 0
    .param p0, "codePoint"    # I

    #@0
    .prologue
    invoke-static {p0}, Ljava/lang/Character;->checkValidCodePoint(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x80

    #@2
    .line 130
    const-class v1, [C

    #@4
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    .line 129
    sput-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@a
    .line 503
    const/16 v1, 0x13

    #@c
    new-array v1, v1, [B

    #@e
    fill-array-data v1, :array_0

    #@11
    sput-object v1, Ljava/lang/Character;->DIRECTIONALITY:[B

    #@13
    .line 1606
    new-array v1, v4, [Ljava/lang/Character;

    #@15
    sput-object v1, Ljava/lang/Character;->SMALL_VALUES:[Ljava/lang/Character;

    #@17
    .line 1609
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@1a
    .line 1610
    sget-object v1, Ljava/lang/Character;->SMALL_VALUES:[Ljava/lang/Character;

    #@1c
    new-instance v2, Ljava/lang/Character;

    #@1e
    int-to-char v3, v0

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    #@22
    aput-object v2, v1, v0

    #@24
    .line 1609
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 100
    :cond_0
    return-void

    #@28
    .line 503
    :array_0
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x2t
        0x10t
        0x11t
        0x12t
        0x8t
        0x9t
    .end array-data
.end method

.method public constructor <init>(C)V
    .locals 0
    .param p1, "value"    # C

    #@0
    .prologue
    .line 1541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1542
    iput-char p1, p0, Ljava/lang/Character;->value:C

    #@5
    .line 1541
    return-void
.end method

.method public static charCount(I)I
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 1714
    const/high16 v0, 0x10000

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/4 v0, 0x2

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method private static checkValidCodePoint(I)V
    .locals 3
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 1555
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1556
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Invalid code point: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 1554
    :cond_0
    return-void
.end method

.method public static codePointAt(Ljava/lang/CharSequence;I)I
    .locals 6
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1763
    if-nez p0, :cond_0

    #@2
    .line 1764
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v5, "seq == null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 1766
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@e
    move-result v2

    #@f
    .line 1767
    .local v2, "len":I
    if-ltz p1, :cond_1

    #@11
    if-lt p1, v2, :cond_2

    #@13
    .line 1768
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@15
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@18
    throw v4

    #@19
    .line 1771
    :cond_2
    add-int/lit8 v1, p1, 0x1

    #@1b
    .end local p1    # "index":I
    .local v1, "index":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@1e
    move-result v0

    #@1f
    .line 1772
    .local v0, "high":C
    if-lt v1, v2, :cond_3

    #@21
    .line 1773
    return v0

    #@22
    .line 1775
    :cond_3
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@25
    move-result v3

    #@26
    .line 1776
    .local v3, "low":C
    invoke-static {v0, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_4

    #@2c
    .line 1777
    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    #@2f
    move-result v4

    #@30
    return v4

    #@31
    .line 1779
    :cond_4
    return v0
.end method

.method public static codePointAt([CI)I
    .locals 6
    .param p0, "seq"    # [C
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1805
    if-nez p0, :cond_0

    #@2
    .line 1806
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v5, "seq == null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 1808
    :cond_0
    array-length v2, p0

    #@c
    .line 1809
    .local v2, "len":I
    if-ltz p1, :cond_1

    #@e
    if-lt p1, v2, :cond_2

    #@10
    .line 1810
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@12
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@15
    throw v4

    #@16
    .line 1813
    :cond_2
    add-int/lit8 v1, p1, 0x1

    #@18
    .end local p1    # "index":I
    .local v1, "index":I
    aget-char v0, p0, p1

    #@1a
    .line 1814
    .local v0, "high":C
    if-lt v1, v2, :cond_3

    #@1c
    .line 1815
    return v0

    #@1d
    .line 1817
    :cond_3
    aget-char v3, p0, v1

    #@1f
    .line 1818
    .local v3, "low":C
    invoke-static {v0, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_4

    #@25
    .line 1819
    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    #@28
    move-result v4

    #@29
    return v4

    #@2a
    .line 1821
    :cond_4
    return v0
.end method

.method public static codePointAt([CII)I
    .locals 4
    .param p0, "seq"    # [C
    .param p1, "index"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 1850
    if-ltz p1, :cond_0

    #@2
    if-lt p1, p2, :cond_1

    #@4
    .line 1851
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v3

    #@a
    .line 1850
    :cond_1
    if-ltz p2, :cond_0

    #@c
    array-length v3, p0

    #@d
    if-gt p2, v3, :cond_0

    #@f
    .line 1854
    add-int/lit8 v1, p1, 0x1

    #@11
    .end local p1    # "index":I
    .local v1, "index":I
    aget-char v0, p0, p1

    #@13
    .line 1855
    .local v0, "high":C
    if-lt v1, p2, :cond_2

    #@15
    .line 1856
    return v0

    #@16
    .line 1858
    :cond_2
    aget-char v2, p0, v1

    #@18
    .line 1859
    .local v2, "low":C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_3

    #@1e
    .line 1860
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    #@21
    move-result v3

    #@22
    return v3

    #@23
    .line 1862
    :cond_3
    return v0
.end method

.method public static codePointBefore(Ljava/lang/CharSequence;I)I
    .locals 5
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1888
    if-nez p0, :cond_0

    #@2
    .line 1889
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "seq == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 1891
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@e
    move-result v1

    #@f
    .line 1892
    .local v1, "len":I
    const/4 v3, 0x1

    #@10
    if-lt p1, v3, :cond_1

    #@12
    if-le p1, v1, :cond_2

    #@14
    .line 1893
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@16
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@19
    throw v3

    #@1a
    .line 1896
    :cond_2
    add-int/lit8 p1, p1, -0x1

    #@1c
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@1f
    move-result v2

    #@20
    .line 1897
    .local v2, "low":C
    add-int/lit8 p1, p1, -0x1

    #@22
    if-gez p1, :cond_3

    #@24
    .line 1898
    return v2

    #@25
    .line 1900
    :cond_3
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@28
    move-result v0

    #@29
    .line 1901
    .local v0, "high":C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_4

    #@2f
    .line 1902
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    #@32
    move-result v3

    #@33
    return v3

    #@34
    .line 1904
    :cond_4
    return v2
.end method

.method public static codePointBefore([CI)I
    .locals 5
    .param p0, "seq"    # [C
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1930
    if-nez p0, :cond_0

    #@2
    .line 1931
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "seq == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 1933
    :cond_0
    array-length v1, p0

    #@c
    .line 1934
    .local v1, "len":I
    const/4 v3, 0x1

    #@d
    if-lt p1, v3, :cond_1

    #@f
    if-le p1, v1, :cond_2

    #@11
    .line 1935
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@13
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@16
    throw v3

    #@17
    .line 1938
    :cond_2
    add-int/lit8 p1, p1, -0x1

    #@19
    aget-char v2, p0, p1

    #@1b
    .line 1939
    .local v2, "low":C
    add-int/lit8 p1, p1, -0x1

    #@1d
    if-gez p1, :cond_3

    #@1f
    .line 1940
    return v2

    #@20
    .line 1942
    :cond_3
    aget-char v0, p0, p1

    #@22
    .line 1943
    .local v0, "high":C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_4

    #@28
    .line 1944
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    #@2b
    move-result v3

    #@2c
    return v3

    #@2d
    .line 1946
    :cond_4
    return v2
.end method

.method public static codePointBefore([CII)I
    .locals 5
    .param p0, "seq"    # [C
    .param p1, "index"    # I
    .param p2, "start"    # I

    #@0
    .prologue
    .line 1977
    if-nez p0, :cond_0

    #@2
    .line 1978
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "seq == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 1980
    :cond_0
    array-length v1, p0

    #@c
    .line 1981
    .local v1, "len":I
    if-le p1, p2, :cond_1

    #@e
    if-le p1, v1, :cond_2

    #@10
    .line 1982
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@12
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@15
    throw v3

    #@16
    .line 1981
    :cond_2
    if-ltz p2, :cond_1

    #@18
    if-ge p2, v1, :cond_1

    #@1a
    .line 1985
    add-int/lit8 p1, p1, -0x1

    #@1c
    aget-char v2, p0, p1

    #@1e
    .line 1986
    .local v2, "low":C
    add-int/lit8 p1, p1, -0x1

    #@20
    if-ge p1, p2, :cond_3

    #@22
    .line 1987
    return v2

    #@23
    .line 1989
    :cond_3
    aget-char v0, p0, p1

    #@25
    .line 1990
    .local v0, "high":C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_4

    #@2b
    .line 1991
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    #@2e
    move-result v3

    #@2f
    return v3

    #@30
    .line 1993
    :cond_4
    return v2
.end method

.method public static codePointCount(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    #@0
    .prologue
    .line 2091
    if-nez p0, :cond_0

    #@2
    .line 2092
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v5, "seq == null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 2094
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@e
    move-result v2

    #@f
    .line 2095
    .local v2, "len":I
    if-ltz p1, :cond_1

    #@11
    if-le p2, v2, :cond_2

    #@13
    .line 2096
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@15
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@18
    throw v4

    #@19
    .line 2095
    :cond_2
    if-gt p1, p2, :cond_1

    #@1b
    .line 2099
    const/4 v3, 0x0

    #@1c
    .line 2100
    .local v3, "result":I
    move v1, p1

    #@1d
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_4

    #@1f
    .line 2101
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@22
    move-result v0

    #@23
    .line 2102
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_3

    #@29
    .line 2103
    add-int/lit8 v1, v1, 0x1

    #@2b
    if-ge v1, p2, :cond_3

    #@2d
    .line 2104
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@30
    move-result v0

    #@31
    .line 2105
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@34
    move-result v4

    #@35
    if-nez v4, :cond_3

    #@37
    .line 2106
    add-int/lit8 v3, v3, 0x1

    #@39
    .line 2110
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@3b
    .line 2100
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 2112
    .end local v0    # "c":C
    :cond_4
    return v3
.end method

.method public static codePointCount([CII)I
    .locals 5
    .param p0, "seq"    # [C
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 2138
    array-length v4, p0

    #@1
    invoke-static {v4, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 2139
    add-int v1, p1, p2

    #@6
    .line 2140
    .local v1, "endIndex":I
    const/4 v3, 0x0

    #@7
    .line 2141
    .local v3, "result":I
    move v2, p1

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@a
    .line 2142
    aget-char v0, p0, v2

    #@c
    .line 2143
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 2144
    add-int/lit8 v2, v2, 0x1

    #@14
    if-ge v2, v1, :cond_0

    #@16
    .line 2145
    aget-char v0, p0, v2

    #@18
    .line 2146
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_0

    #@1e
    .line 2147
    add-int/lit8 v3, v3, 0x1

    #@20
    .line 2151
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@22
    .line 2141
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 2153
    .end local v0    # "c":C
    :cond_1
    return v3
.end method

.method public static compare(CC)I
    .locals 1
    .param p0, "lhs"    # C
    .param p1, "rhs"    # C

    #@0
    .prologue
    .line 1584
    sub-int v0, p0, p1

    #@2
    return v0
.end method

.method public static digit(CI)I
    .locals 1
    .param p0, "c"    # C
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 2323
    invoke-static {p0, p1}, Ljava/lang/Character;->digit(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static digit(II)I
    .locals 3
    .param p0, "codePoint"    # I
    .param p1, "radix"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 2340
    const/4 v2, 0x2

    #@2
    if-lt p1, v2, :cond_0

    #@4
    const/16 v2, 0x24

    #@6
    if-le p1, v2, :cond_1

    #@8
    .line 2341
    :cond_0
    return v1

    #@9
    .line 2343
    :cond_1
    const/16 v2, 0x80

    #@b
    if-ge p0, v2, :cond_6

    #@d
    .line 2345
    const/4 v0, -0x1

    #@e
    .line 2346
    .local v0, "result":I
    const/16 v2, 0x30

    #@10
    if-gt v2, p0, :cond_3

    #@12
    const/16 v2, 0x39

    #@14
    if-gt p0, v2, :cond_3

    #@16
    .line 2347
    add-int/lit8 v0, p0, -0x30

    #@18
    .line 2353
    :cond_2
    :goto_0
    if-ge v0, p1, :cond_5

    #@1a
    .end local v0    # "result":I
    :goto_1
    return v0

    #@1b
    .line 2348
    .restart local v0    # "result":I
    :cond_3
    const/16 v2, 0x61

    #@1d
    if-gt v2, p0, :cond_4

    #@1f
    const/16 v2, 0x7a

    #@21
    if-gt p0, v2, :cond_4

    #@23
    .line 2349
    add-int/lit8 v2, p0, -0x61

    #@25
    add-int/lit8 v0, v2, 0xa

    #@27
    .line 2348
    goto :goto_0

    #@28
    .line 2350
    :cond_4
    const/16 v2, 0x41

    #@2a
    if-gt v2, p0, :cond_2

    #@2c
    const/16 v2, 0x5a

    #@2e
    if-gt p0, v2, :cond_2

    #@30
    .line 2351
    add-int/lit8 v2, p0, -0x41

    #@32
    add-int/lit8 v0, v2, 0xa

    #@34
    goto :goto_0

    #@35
    :cond_5
    move v0, v1

    #@36
    .line 2353
    goto :goto_1

    #@37
    .line 2355
    .end local v0    # "result":I
    :cond_6
    invoke-static {p0, p1}, Ljava/lang/Character;->digitImpl(II)I

    #@3a
    move-result v1

    #@3b
    return v1
.end method

.method private static native digitImpl(II)I
.end method

.method public static forDigit(II)C
    .locals 2
    .param p0, "digit"    # I
    .param p1, "radix"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2390
    const/4 v0, 0x2

    #@2
    if-gt v0, p1, :cond_1

    #@4
    const/16 v0, 0x24

    #@6
    if-gt p1, v0, :cond_1

    #@8
    .line 2391
    if-ltz p0, :cond_1

    #@a
    if-ge p0, p1, :cond_1

    #@c
    .line 2392
    const/16 v0, 0xa

    #@e
    if-ge p0, v0, :cond_0

    #@10
    add-int/lit8 v0, p0, 0x30

    #@12
    :goto_0
    int-to-char v0, v0

    #@13
    return v0

    #@14
    :cond_0
    add-int/lit8 v0, p0, 0x61

    #@16
    add-int/lit8 v0, v0, -0xa

    #@18
    goto :goto_0

    #@19
    .line 2395
    :cond_1
    return v1
.end method

.method public static getDirectionality(C)B
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 2529
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getDirectionality(I)B
    .locals 3
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 2540
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 2541
    return v2

    #@8
    .line 2544
    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getIcuDirectionality(I)B

    #@b
    move-result v0

    #@c
    .line 2545
    .local v0, "directionality":B
    if-ltz v0, :cond_1

    #@e
    sget-object v1, Ljava/lang/Character;->DIRECTIONALITY:[B

    #@10
    array-length v1, v1

    #@11
    if-ge v0, v1, :cond_1

    #@13
    .line 2546
    sget-object v1, Ljava/lang/Character;->DIRECTIONALITY:[B

    #@15
    aget-byte v1, v1, v0

    #@17
    return v1

    #@18
    .line 2548
    :cond_1
    return v2
.end method

.method public static native getIcuDirectionality(I)B
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 6
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 2420
    invoke-static {p0}, Ljava/lang/Character;->checkValidCodePoint(I)V

    #@5
    .line 2421
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 2422
    return-object v3

    #@c
    .line 2424
    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getNameImpl(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 2425
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_1

    #@12
    .line 2426
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/Character$UnicodeBlock;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    const/16 v3, 0x5f

    #@1c
    const/16 v4, 0x20

    #@1e
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 2427
    .local v0, "blockName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    const-string/jumbo v3, " "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    const/4 v3, 0x1

    #@33
    invoke-static {p0, v3, v5}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    .line 2429
    .end local v0    # "blockName":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static native getNameImpl(I)Ljava/lang/String;
.end method

.method public static getNumericValue(C)I
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 2444
    invoke-static {p0}, Ljava/lang/Character;->getNumericValue(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getNumericValue(I)I
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 2467
    const/16 v0, 0x80

    #@2
    if-ge p0, v0, :cond_3

    #@4
    .line 2468
    const/16 v0, 0x30

    #@6
    if-lt p0, v0, :cond_0

    #@8
    const/16 v0, 0x39

    #@a
    if-gt p0, v0, :cond_0

    #@c
    .line 2469
    add-int/lit8 v0, p0, -0x30

    #@e
    return v0

    #@f
    .line 2471
    :cond_0
    const/16 v0, 0x61

    #@11
    if-lt p0, v0, :cond_1

    #@13
    const/16 v0, 0x7a

    #@15
    if-gt p0, v0, :cond_1

    #@17
    .line 2472
    add-int/lit8 v0, p0, -0x57

    #@19
    return v0

    #@1a
    .line 2474
    :cond_1
    const/16 v0, 0x41

    #@1c
    if-lt p0, v0, :cond_2

    #@1e
    const/16 v0, 0x5a

    #@20
    if-gt p0, v0, :cond_2

    #@22
    .line 2475
    add-int/lit8 v0, p0, -0x37

    #@24
    return v0

    #@25
    .line 2477
    :cond_2
    const/4 v0, -0x1

    #@26
    return v0

    #@27
    .line 2480
    :cond_3
    const v0, 0xff21

    #@2a
    if-lt p0, v0, :cond_4

    #@2c
    const v0, 0xff3a

    #@2f
    if-gt p0, v0, :cond_4

    #@31
    .line 2481
    const v0, 0xff17

    #@34
    sub-int v0, p0, v0

    #@36
    return v0

    #@37
    .line 2484
    :cond_4
    const v0, 0xff41

    #@3a
    if-lt p0, v0, :cond_5

    #@3c
    const v0, 0xff5a

    #@3f
    if-gt p0, v0, :cond_5

    #@41
    .line 2485
    const v0, 0xff37

    #@44
    sub-int v0, p0, v0

    #@46
    return v0

    #@47
    .line 2487
    :cond_5
    invoke-static {p0}, Ljava/lang/Character;->getNumericValueImpl(I)I

    #@4a
    move-result v0

    #@4b
    return v0
.end method

.method private static native getNumericValueImpl(I)I
.end method

.method public static getType(C)I
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 2500
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getType(I)I
    .locals 2
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 2511
    invoke-static {p0}, Ljava/lang/Character;->getTypeImpl(I)I

    #@3
    move-result v0

    #@4
    .line 2513
    .local v0, "type":I
    const/16 v1, 0x10

    #@6
    if-gt v0, v1, :cond_0

    #@8
    .line 2514
    return v0

    #@9
    .line 2516
    :cond_0
    add-int/lit8 v1, v0, 0x1

    #@b
    return v1
.end method

.method private static native getTypeImpl(I)I
.end method

.method public static highSurrogate(I)C
    .locals 2
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 2593
    shr-int/lit8 v0, p0, 0xa

    #@2
    const v1, 0xd7c0

    #@5
    add-int/2addr v0, v1

    #@6
    int-to-char v0, v0

    #@7
    return v0
.end method

.method public static native isAlphabetic(I)Z
.end method

.method public static isBmpCodePoint(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2618
    if-ltz p0, :cond_0

    #@3
    const v1, 0xffff

    #@6
    if-gt p0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public static isDefined(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 2631
    invoke-static {p0}, Ljava/lang/Character;->isDefinedImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isDefined(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 2644
    invoke-static {p0}, Ljava/lang/Character;->isDefinedImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static native isDefinedImpl(I)Z
.end method

.method public static isDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 2658
    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isDigit(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 2671
    const/16 v0, 0x30

    #@2
    if-gt v0, p0, :cond_0

    #@4
    const/16 v0, 0x39

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 2672
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 2674
    :cond_0
    const/16 v0, 0x660

    #@c
    if-ge p0, v0, :cond_1

    #@e
    .line 2675
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    .line 2677
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isDigitImpl(I)Z

    #@13
    move-result v0

    #@14
    return v0
.end method

.method private static native isDigitImpl(I)Z
.end method

.method public static isHighSurrogate(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1653
    const v1, 0xd800

    #@4
    if-gt v1, p0, :cond_0

    #@6
    const v1, 0xdbff

    #@9
    if-lt v1, p0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public static isISOControl(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 2729
    invoke-static {p0}, Ljava/lang/Character;->isISOControl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isISOControl(I)Z
    .locals 3
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2741
    if-ltz p0, :cond_1

    #@4
    const/16 v2, 0x1f

    #@6
    if-gt p0, v2, :cond_1

    #@8
    :cond_0
    :goto_0
    return v0

    #@9
    :cond_1
    const/16 v2, 0x7f

    #@b
    if-lt p0, v2, :cond_2

    #@d
    const/16 v2, 0x9f

    #@f
    if-le p0, v2, :cond_0

    #@11
    :cond_2
    move v0, v1

    #@12
    goto :goto_0
.end method

.method public static isIdentifierIgnorable(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 2691
    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorable(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isIdentifierIgnorable(I)Z
    .locals 3
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2711
    const/16 v2, 0x600

    #@4
    if-ge p0, v2, :cond_4

    #@6
    .line 2712
    if-ltz p0, :cond_1

    #@8
    const/16 v2, 0x8

    #@a
    if-gt p0, v2, :cond_1

    #@c
    :cond_0
    :goto_0
    return v0

    #@d
    :cond_1
    const/16 v2, 0xe

    #@f
    if-lt p0, v2, :cond_2

    #@11
    const/16 v2, 0x1b

    #@13
    if-le p0, v2, :cond_0

    #@15
    .line 2713
    :cond_2
    const/16 v2, 0x7f

    #@17
    if-lt p0, v2, :cond_3

    #@19
    const/16 v2, 0x9f

    #@1b
    if-le p0, v2, :cond_0

    #@1d
    :cond_3
    const/16 v2, 0xad

    #@1f
    if-eq p0, v2, :cond_0

    #@21
    move v0, v1

    #@22
    goto :goto_0

    #@23
    .line 2715
    :cond_4
    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorableImpl(I)Z

    #@26
    move-result v0

    #@27
    return v0
.end method

.method private static native isIdentifierIgnorableImpl(I)Z
.end method

.method public static native isIdeographic(I)Z
.end method

.method public static isJavaIdentifierPart(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 2754
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isJavaIdentifierPart(I)Z
    .locals 10
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const-wide/16 v6, 0x1

    #@2
    const-wide/16 v8, 0x0

    #@4
    const/16 v4, 0x8

    #@6
    const/4 v2, 0x0

    #@7
    const/4 v1, 0x1

    #@8
    .line 2768
    const/16 v3, 0x40

    #@a
    if-ge p0, v3, :cond_1

    #@c
    .line 2769
    shl-long v4, v6, p0

    #@e
    const-wide v6, 0x3ff00100fffc1ffL

    #@13
    and-long/2addr v4, v6

    #@14
    cmp-long v3, v4, v8

    #@16
    if-eqz v3, :cond_0

    #@18
    :goto_0
    return v1

    #@19
    :cond_0
    move v1, v2

    #@1a
    goto :goto_0

    #@1b
    .line 2770
    :cond_1
    const/16 v3, 0x80

    #@1d
    if-ge p0, v3, :cond_3

    #@1f
    .line 2771
    add-int/lit8 v3, p0, -0x40

    #@21
    shl-long v4, v6, v3

    #@23
    const-wide v6, -0x7800000178000002L

    #@28
    and-long/2addr v4, v6

    #@29
    cmp-long v3, v4, v8

    #@2b
    if-eqz v3, :cond_2

    #@2d
    :goto_1
    return v1

    #@2e
    :cond_2
    move v1, v2

    #@2f
    goto :goto_1

    #@30
    .line 2773
    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    #@33
    move-result v0

    #@34
    .line 2774
    .local v0, "type":I
    if-lt v0, v1, :cond_5

    #@36
    const/4 v3, 0x5

    #@37
    if-gt v0, v3, :cond_5

    #@39
    :cond_4
    :goto_2
    return v1

    #@3a
    .line 2775
    :cond_5
    const/16 v3, 0x1a

    #@3c
    if-eq v0, v3, :cond_4

    #@3e
    const/16 v3, 0x17

    #@40
    if-eq v0, v3, :cond_4

    #@42
    .line 2776
    const/16 v3, 0x9

    #@44
    if-lt v0, v3, :cond_6

    #@46
    const/16 v3, 0xa

    #@48
    if-le v0, v3, :cond_4

    #@4a
    .line 2777
    :cond_6
    if-eq v0, v4, :cond_4

    #@4c
    const/4 v3, 0x6

    #@4d
    if-eq v0, v3, :cond_4

    #@4f
    .line 2778
    if-ltz p0, :cond_7

    #@51
    if-le p0, v4, :cond_4

    #@53
    :cond_7
    const/16 v3, 0xe

    #@55
    if-lt p0, v3, :cond_8

    #@57
    const/16 v3, 0x1b

    #@59
    if-le p0, v3, :cond_4

    #@5b
    .line 2779
    :cond_8
    const/16 v3, 0x7f

    #@5d
    if-lt p0, v3, :cond_9

    #@5f
    const/16 v3, 0x9f

    #@61
    if-le p0, v3, :cond_4

    #@63
    :cond_9
    const/16 v3, 0x10

    #@65
    if-eq v0, v3, :cond_4

    #@67
    move v1, v2

    #@68
    goto :goto_2
.end method

.method public static isJavaIdentifierStart(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 2792
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isJavaIdentifierStart(I)Z
    .locals 8
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 2806
    const/16 v3, 0x40

    #@4
    if-ge p0, v3, :cond_1

    #@6
    .line 2807
    const/16 v3, 0x24

    #@8
    if-ne p0, v3, :cond_0

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    move v1, v2

    #@c
    goto :goto_0

    #@d
    .line 2808
    :cond_1
    const/16 v3, 0x80

    #@f
    if-ge p0, v3, :cond_3

    #@11
    .line 2809
    add-int/lit8 v3, p0, -0x40

    #@13
    const-wide/16 v4, 0x1

    #@15
    shl-long/2addr v4, v3

    #@16
    const-wide v6, 0x7fffffe87fffffeL

    #@1b
    and-long/2addr v4, v6

    #@1c
    const-wide/16 v6, 0x0

    #@1e
    cmp-long v3, v4, v6

    #@20
    if-eqz v3, :cond_2

    #@22
    :goto_1
    return v1

    #@23
    :cond_2
    move v1, v2

    #@24
    goto :goto_1

    #@25
    .line 2811
    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    #@28
    move-result v0

    #@29
    .line 2812
    .local v0, "type":I
    if-lt v0, v1, :cond_5

    #@2b
    const/4 v3, 0x5

    #@2c
    if-gt v0, v3, :cond_5

    #@2e
    :cond_4
    :goto_2
    return v1

    #@2f
    :cond_5
    const/16 v3, 0x1a

    #@31
    if-eq v0, v3, :cond_4

    #@33
    .line 2813
    const/16 v3, 0x17

    #@35
    if-eq v0, v3, :cond_4

    #@37
    const/16 v3, 0xa

    #@39
    if-eq v0, v3, :cond_4

    #@3b
    move v1, v2

    #@3c
    goto :goto_2
.end method

.method public static isJavaLetter(C)Z
    .locals 1
    .param p0, "c"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2827
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isJavaLetterOrDigit(C)Z
    .locals 1
    .param p0, "c"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2842
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isLetter(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 2853
    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isLetter(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 2865
    const/16 v0, 0x41

    #@2
    if-gt v0, p0, :cond_1

    #@4
    const/16 v0, 0x5a

    #@6
    if-gt p0, v0, :cond_1

    #@8
    .line 2866
    :cond_0
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 2865
    :cond_1
    const/16 v0, 0x61

    #@c
    if-gt v0, p0, :cond_2

    #@e
    const/16 v0, 0x7a

    #@10
    if-le p0, v0, :cond_0

    #@12
    .line 2868
    :cond_2
    const/16 v0, 0x80

    #@14
    if-ge p0, v0, :cond_3

    #@16
    .line 2869
    const/4 v0, 0x0

    #@17
    return v0

    #@18
    .line 2871
    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->isLetterImpl(I)Z

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method private static native isLetterImpl(I)Z
.end method

.method public static isLetterOrDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 2885
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isLetterOrDigit(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2898
    const/16 v0, 0x41

    #@3
    if-gt v0, p0, :cond_1

    #@5
    const/16 v0, 0x5a

    #@7
    if-gt p0, v0, :cond_1

    #@9
    .line 2899
    :cond_0
    return v1

    #@a
    .line 2898
    :cond_1
    const/16 v0, 0x61

    #@c
    if-gt v0, p0, :cond_2

    #@e
    const/16 v0, 0x7a

    #@10
    if-le p0, v0, :cond_0

    #@12
    .line 2901
    :cond_2
    const/16 v0, 0x30

    #@14
    if-gt v0, p0, :cond_3

    #@16
    const/16 v0, 0x39

    #@18
    if-gt p0, v0, :cond_3

    #@1a
    .line 2902
    return v1

    #@1b
    .line 2904
    :cond_3
    const/16 v0, 0x80

    #@1d
    if-ge p0, v0, :cond_4

    #@1f
    .line 2905
    const/4 v0, 0x0

    #@20
    return v0

    #@21
    .line 2907
    :cond_4
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigitImpl(I)Z

    #@24
    move-result v0

    #@25
    return v0
.end method

.method private static native isLetterOrDigitImpl(I)Z
.end method

.method public static isLowSurrogate(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1669
    const v1, 0xdc00

    #@4
    if-gt v1, p0, :cond_0

    #@6
    const v1, 0xdfff

    #@9
    if-lt v1, p0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public static isLowerCase(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 2921
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isLowerCase(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 2934
    const/16 v0, 0x61

    #@2
    if-gt v0, p0, :cond_0

    #@4
    const/16 v0, 0x7a

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 2935
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 2937
    :cond_0
    const/16 v0, 0x80

    #@c
    if-ge p0, v0, :cond_1

    #@e
    .line 2938
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    .line 2940
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isLowerCaseImpl(I)Z

    #@13
    move-result v0

    #@14
    return v0
.end method

.method private static native isLowerCaseImpl(I)Z
.end method

.method public static isMirrored(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 2565
    invoke-static {p0}, Ljava/lang/Character;->isMirrored(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isMirrored(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 2577
    invoke-static {p0}, Ljava/lang/Character;->isMirroredImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static native isMirroredImpl(I)Z
.end method

.method public static isSpace(C)Z
    .locals 2
    .param p0, "c"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 2951
    const/16 v1, 0xa

    #@3
    if-eq p0, v1, :cond_0

    #@5
    const/16 v1, 0x9

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/16 v1, 0xc

    #@c
    if-eq p0, v1, :cond_0

    #@e
    const/16 v1, 0xd

    #@10
    if-eq p0, v1, :cond_0

    #@12
    const/16 v1, 0x20

    #@14
    if-eq p0, v1, :cond_0

    #@16
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method

.method public static isSpaceChar(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 2958
    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isSpaceChar(I)Z
    .locals 3
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 2971
    const/16 v2, 0x20

    #@4
    if-eq p0, v2, :cond_0

    #@6
    const/16 v2, 0xa0

    #@8
    if-ne p0, v2, :cond_1

    #@a
    .line 2972
    :cond_0
    return v0

    #@b
    .line 2974
    :cond_1
    const/16 v2, 0x1000

    #@d
    if-ge p0, v2, :cond_2

    #@f
    .line 2975
    return v1

    #@10
    .line 2978
    :cond_2
    const/16 v2, 0x1680

    #@12
    if-eq p0, v2, :cond_3

    #@14
    const/16 v2, 0x180e

    #@16
    if-ne p0, v2, :cond_4

    #@18
    .line 2979
    :cond_3
    return v0

    #@19
    .line 2981
    :cond_4
    const/16 v2, 0x2000

    #@1b
    if-ge p0, v2, :cond_5

    #@1d
    .line 2982
    return v1

    #@1e
    .line 2984
    :cond_5
    const v2, 0xffff

    #@21
    if-gt p0, v2, :cond_8

    #@23
    .line 2986
    const/16 v2, 0x200a

    #@25
    if-le p0, v2, :cond_6

    #@27
    const/16 v2, 0x2028

    #@29
    if-ne p0, v2, :cond_7

    #@2b
    :cond_6
    :goto_0
    return v0

    #@2c
    :cond_7
    const/16 v2, 0x2029

    #@2e
    if-eq p0, v2, :cond_6

    #@30
    const/16 v2, 0x202f

    #@32
    if-eq p0, v2, :cond_6

    #@34
    const/16 v2, 0x205f

    #@36
    if-eq p0, v2, :cond_6

    #@38
    .line 2987
    const/16 v2, 0x3000

    #@3a
    if-eq p0, v2, :cond_6

    #@3c
    move v0, v1

    #@3d
    goto :goto_0

    #@3e
    .line 2990
    :cond_8
    invoke-static {p0}, Ljava/lang/Character;->isSpaceCharImpl(I)Z

    #@41
    move-result v0

    #@42
    return v0
.end method

.method private static native isSpaceCharImpl(I)Z
.end method

.method public static isSupplementaryCodePoint(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1637
    const/high16 v1, 0x10000

    #@3
    if-gt v1, p0, :cond_0

    #@5
    const v1, 0x10ffff

    #@8
    if-lt v1, p0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    return v0
.end method

.method public static isSurrogate(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1677
    const v1, 0xd800

    #@4
    if-lt p0, v1, :cond_0

    #@6
    const v1, 0xdfff

    #@9
    if-gt p0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public static isSurrogatePair(CC)Z
    .locals 1
    .param p0, "high"    # C
    .param p1, "low"    # C

    #@0
    .prologue
    .line 1695
    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public static isTitleCase(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 3004
    invoke-static {p0}, Ljava/lang/Character;->isTitleCaseImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isTitleCase(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 3016
    invoke-static {p0}, Ljava/lang/Character;->isTitleCaseImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static native isTitleCaseImpl(I)Z
.end method

.method public static isUnicodeIdentifierPart(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 3031
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPartImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isUnicodeIdentifierPart(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 3044
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPartImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static native isUnicodeIdentifierPartImpl(I)Z
.end method

.method public static isUnicodeIdentifierStart(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 3059
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStartImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isUnicodeIdentifierStart(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 3072
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStartImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static native isUnicodeIdentifierStartImpl(I)Z
.end method

.method public static isUpperCase(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 3086
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isUpperCase(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 3099
    const/16 v0, 0x41

    #@2
    if-gt v0, p0, :cond_0

    #@4
    const/16 v0, 0x5a

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 3100
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 3102
    :cond_0
    const/16 v0, 0x80

    #@c
    if-ge p0, v0, :cond_1

    #@e
    .line 3103
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    .line 3105
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isUpperCaseImpl(I)Z

    #@13
    move-result v0

    #@14
    return v0
.end method

.method private static native isUpperCaseImpl(I)Z
.end method

.method public static isValidCodePoint(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1623
    if-ltz p0, :cond_0

    #@3
    const v1, 0x10ffff

    #@6
    if-lt v1, p0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public static isWhitespace(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 3114
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isWhitespace(I)Z
    .locals 3
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3127
    const/16 v2, 0x1c

    #@4
    if-lt p0, v2, :cond_1

    #@6
    const/16 v2, 0x20

    #@8
    if-gt p0, v2, :cond_1

    #@a
    .line 3128
    :cond_0
    return v0

    #@b
    .line 3127
    :cond_1
    const/16 v2, 0x9

    #@d
    if-lt p0, v2, :cond_2

    #@f
    const/16 v2, 0xd

    #@11
    if-le p0, v2, :cond_0

    #@13
    .line 3130
    :cond_2
    const/16 v2, 0x1000

    #@15
    if-ge p0, v2, :cond_3

    #@17
    .line 3131
    return v1

    #@18
    .line 3134
    :cond_3
    const/16 v2, 0x1680

    #@1a
    if-eq p0, v2, :cond_4

    #@1c
    const/16 v2, 0x180e

    #@1e
    if-ne p0, v2, :cond_5

    #@20
    .line 3135
    :cond_4
    return v0

    #@21
    .line 3137
    :cond_5
    const/16 v2, 0x2000

    #@23
    if-ge p0, v2, :cond_6

    #@25
    .line 3138
    return v1

    #@26
    .line 3141
    :cond_6
    const/16 v2, 0x2007

    #@28
    if-eq p0, v2, :cond_7

    #@2a
    const/16 v2, 0x202f

    #@2c
    if-ne p0, v2, :cond_8

    #@2e
    .line 3142
    :cond_7
    return v1

    #@2f
    .line 3144
    :cond_8
    const v2, 0xffff

    #@32
    if-gt p0, v2, :cond_b

    #@34
    .line 3146
    const/16 v2, 0x200a

    #@36
    if-le p0, v2, :cond_9

    #@38
    const/16 v2, 0x2028

    #@3a
    if-ne p0, v2, :cond_a

    #@3c
    :cond_9
    :goto_0
    return v0

    #@3d
    :cond_a
    const/16 v2, 0x2029

    #@3f
    if-eq p0, v2, :cond_9

    #@41
    const/16 v2, 0x205f

    #@43
    if-eq p0, v2, :cond_9

    #@45
    .line 3147
    const/16 v2, 0x3000

    #@47
    if-eq p0, v2, :cond_9

    #@49
    move v0, v1

    #@4a
    goto :goto_0

    #@4b
    .line 3150
    :cond_b
    invoke-static {p0}, Ljava/lang/Character;->isWhitespaceImpl(I)Z

    #@4e
    move-result v0

    #@4f
    return v0
.end method

.method private static native isWhitespaceImpl(I)Z
.end method

.method public static lowSurrogate(I)C
    .locals 2
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 2602
    and-int/lit16 v0, p0, 0x3ff

    #@2
    const v1, 0xdc00

    #@5
    or-int/2addr v0, v1

    #@6
    int-to-char v0, v0

    #@7
    return v0
.end method

.method public static offsetByCodePoints(Ljava/lang/CharSequence;II)I
    .locals 7
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    #@0
    .prologue
    .line 2180
    if-nez p0, :cond_0

    #@2
    .line 2181
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v6, "seq == null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 2183
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@e
    move-result v2

    #@f
    .line 2184
    .local v2, "len":I
    if-ltz p1, :cond_1

    #@11
    if-le p1, v2, :cond_2

    #@13
    .line 2185
    :cond_1
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    #@15
    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@18
    throw v5

    #@19
    .line 2188
    :cond_2
    if-nez p2, :cond_3

    #@1b
    .line 2189
    return p1

    #@1c
    .line 2192
    :cond_3
    if-lez p2, :cond_7

    #@1e
    .line 2193
    move v0, p2

    #@1f
    .line 2194
    .local v0, "codePoints":I
    move v1, p1

    #@20
    .line 2195
    .local v1, "i":I
    :goto_0
    if-lez v0, :cond_6

    #@22
    .line 2196
    add-int/lit8 v0, v0, -0x1

    #@24
    .line 2197
    if-lt v1, v2, :cond_4

    #@26
    .line 2198
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    #@28
    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@2b
    throw v5

    #@2c
    .line 2200
    :cond_4
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@2f
    move-result v5

    #@30
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_5

    #@36
    .line 2201
    add-int/lit8 v3, v1, 0x1

    #@38
    .line 2202
    .local v3, "next":I
    if-ge v3, v2, :cond_5

    #@3a
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@3d
    move-result v5

    #@3e
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@41
    move-result v5

    #@42
    if-eqz v5, :cond_5

    #@44
    .line 2203
    add-int/lit8 v1, v1, 0x1

    #@46
    .line 2206
    .end local v3    # "next":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_0

    #@49
    .line 2208
    :cond_6
    return v1

    #@4a
    .line 2211
    .end local v0    # "codePoints":I
    .end local v1    # "i":I
    :cond_7
    neg-int v0, p2

    #@4b
    .line 2212
    .restart local v0    # "codePoints":I
    move v1, p1

    #@4c
    .line 2213
    .restart local v1    # "i":I
    :cond_8
    :goto_1
    if-lez v0, :cond_a

    #@4e
    .line 2214
    add-int/lit8 v0, v0, -0x1

    #@50
    .line 2215
    add-int/lit8 v1, v1, -0x1

    #@52
    .line 2216
    if-gez v1, :cond_9

    #@54
    .line 2217
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    #@56
    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@59
    throw v5

    #@5a
    .line 2219
    :cond_9
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@5d
    move-result v5

    #@5e
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@61
    move-result v5

    #@62
    if-eqz v5, :cond_8

    #@64
    .line 2220
    add-int/lit8 v4, v1, -0x1

    #@66
    .line 2221
    .local v4, "prev":I
    if-ltz v4, :cond_8

    #@68
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@6b
    move-result v5

    #@6c
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@6f
    move-result v5

    #@70
    if-eqz v5, :cond_8

    #@72
    .line 2222
    add-int/lit8 v1, v1, -0x1

    #@74
    goto :goto_1

    #@75
    .line 2226
    .end local v4    # "prev":I
    :cond_a
    return v1
.end method

.method public static offsetByCodePoints([CIIII)I
    .locals 6
    .param p0, "seq"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "index"    # I
    .param p4, "codePointOffset"    # I

    #@0
    .prologue
    .line 2263
    array-length v5, p0

    #@1
    invoke-static {v5, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 2264
    add-int v1, p1, p2

    #@6
    .line 2265
    .local v1, "end":I
    if-lt p3, p1, :cond_0

    #@8
    if-le p3, v1, :cond_1

    #@a
    .line 2266
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    #@c
    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@f
    throw v5

    #@10
    .line 2269
    :cond_1
    if-nez p4, :cond_2

    #@12
    .line 2270
    return p3

    #@13
    .line 2273
    :cond_2
    if-lez p4, :cond_6

    #@15
    .line 2274
    move v0, p4

    #@16
    .line 2275
    .local v0, "codePoints":I
    move v2, p3

    #@17
    .line 2276
    .local v2, "i":I
    :goto_0
    if-lez v0, :cond_5

    #@19
    .line 2277
    add-int/lit8 v0, v0, -0x1

    #@1b
    .line 2278
    if-lt v2, v1, :cond_3

    #@1d
    .line 2279
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    #@1f
    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@22
    throw v5

    #@23
    .line 2281
    :cond_3
    aget-char v5, p0, v2

    #@25
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_4

    #@2b
    .line 2282
    add-int/lit8 v3, v2, 0x1

    #@2d
    .line 2283
    .local v3, "next":I
    if-ge v3, v1, :cond_4

    #@2f
    aget-char v5, p0, v3

    #@31
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_4

    #@37
    .line 2284
    add-int/lit8 v2, v2, 0x1

    #@39
    .line 2287
    .end local v3    # "next":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 2289
    :cond_5
    return v2

    #@3d
    .line 2292
    .end local v0    # "codePoints":I
    .end local v2    # "i":I
    :cond_6
    neg-int v0, p4

    #@3e
    .line 2293
    .restart local v0    # "codePoints":I
    move v2, p3

    #@3f
    .line 2294
    .restart local v2    # "i":I
    :cond_7
    :goto_1
    if-lez v0, :cond_9

    #@41
    .line 2295
    add-int/lit8 v0, v0, -0x1

    #@43
    .line 2296
    add-int/lit8 v2, v2, -0x1

    #@45
    .line 2297
    if-ge v2, p1, :cond_8

    #@47
    .line 2298
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    #@49
    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@4c
    throw v5

    #@4d
    .line 2300
    :cond_8
    aget-char v5, p0, v2

    #@4f
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@52
    move-result v5

    #@53
    if-eqz v5, :cond_7

    #@55
    .line 2301
    add-int/lit8 v4, v2, -0x1

    #@57
    .line 2302
    .local v4, "prev":I
    if-lt v4, p1, :cond_7

    #@59
    aget-char v5, p0, v4

    #@5b
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@5e
    move-result v5

    #@5f
    if-eqz v5, :cond_7

    #@61
    .line 2303
    add-int/lit8 v2, v2, -0x1

    #@63
    goto :goto_1

    #@64
    .line 2307
    .end local v4    # "prev":I
    :cond_9
    return v2
.end method

.method public static reverseBytes(C)C
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    .line 3164
    shl-int/lit8 v0, p0, 0x8

    #@2
    shr-int/lit8 v1, p0, 0x8

    #@4
    or-int/2addr v0, v1

    #@5
    int-to-char v0, v0

    #@6
    return v0
.end method

.method public static toChars(I[CI)I
    .locals 5
    .param p0, "codePoint"    # I
    .param p1, "dst"    # [C
    .param p2, "dstIndex"    # I

    #@0
    .prologue
    .line 2019
    invoke-static {p0}, Ljava/lang/Character;->checkValidCodePoint(I)V

    #@3
    .line 2020
    if-nez p1, :cond_0

    #@5
    .line 2021
    new-instance v3, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v4, "dst == null"

    #@a
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 2023
    :cond_0
    if-ltz p2, :cond_1

    #@10
    array-length v3, p1

    #@11
    if-lt p2, v3, :cond_2

    #@13
    .line 2024
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@15
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@18
    throw v3

    #@19
    .line 2027
    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_4

    #@1f
    .line 2028
    array-length v3, p1

    #@20
    add-int/lit8 v3, v3, -0x1

    #@22
    if-ne p2, v3, :cond_3

    #@24
    .line 2029
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@26
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@29
    throw v3

    #@2a
    .line 2033
    :cond_3
    const/high16 v3, 0x10000

    #@2c
    sub-int v0, p0, v3

    #@2e
    .line 2034
    .local v0, "cpPrime":I
    shr-int/lit8 v3, v0, 0xa

    #@30
    and-int/lit16 v3, v3, 0x3ff

    #@32
    const v4, 0xd800

    #@35
    or-int v1, v4, v3

    #@37
    .line 2035
    .local v1, "high":I
    and-int/lit16 v3, v0, 0x3ff

    #@39
    const v4, 0xdc00

    #@3c
    or-int v2, v4, v3

    #@3e
    .line 2036
    .local v2, "low":I
    int-to-char v3, v1

    #@3f
    aput-char v3, p1, p2

    #@41
    .line 2037
    add-int/lit8 v3, p2, 0x1

    #@43
    int-to-char v4, v2

    #@44
    aput-char v4, p1, v3

    #@46
    .line 2038
    const/4 v3, 0x2

    #@47
    return v3

    #@48
    .line 2041
    .end local v0    # "cpPrime":I
    .end local v1    # "high":I
    .end local v2    # "low":I
    :cond_4
    int-to-char v3, p0

    #@49
    aput-char v3, p1, p2

    #@4b
    .line 2042
    const/4 v3, 0x1

    #@4c
    return v3
.end method

.method public static toChars(I)[C
    .locals 7
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 2059
    invoke-static {p0}, Ljava/lang/Character;->checkValidCodePoint(I)V

    #@5
    .line 2060
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 2061
    const/high16 v3, 0x10000

    #@d
    sub-int v0, p0, v3

    #@f
    .line 2062
    .local v0, "cpPrime":I
    shr-int/lit8 v3, v0, 0xa

    #@11
    and-int/lit16 v3, v3, 0x3ff

    #@13
    const v4, 0xd800

    #@16
    or-int v1, v4, v3

    #@18
    .line 2063
    .local v1, "high":I
    and-int/lit16 v3, v0, 0x3ff

    #@1a
    const v4, 0xdc00

    #@1d
    or-int v2, v4, v3

    #@1f
    .line 2064
    .local v2, "low":I
    const/4 v3, 0x2

    #@20
    new-array v3, v3, [C

    #@22
    int-to-char v4, v1

    #@23
    aput-char v4, v3, v5

    #@25
    int-to-char v4, v2

    #@26
    aput-char v4, v3, v6

    #@28
    return-object v3

    #@29
    .line 2066
    .end local v0    # "cpPrime":I
    .end local v1    # "high":I
    .end local v2    # "low":I
    :cond_0
    new-array v3, v6, [C

    #@2b
    int-to-char v4, p0

    #@2c
    aput-char v4, v3, v5

    #@2e
    return-object v3
.end method

.method public static toCodePoint(CC)I
    .locals 4
    .param p0, "high"    # C
    .param p1, "low"    # C

    #@0
    .prologue
    .line 1735
    and-int/lit16 v2, p0, 0x3ff

    #@2
    shl-int/lit8 v0, v2, 0xa

    #@4
    .line 1736
    .local v0, "h":I
    and-int/lit16 v1, p1, 0x3ff

    #@6
    .line 1737
    .local v1, "l":I
    or-int v2, v0, v1

    #@8
    const/high16 v3, 0x10000

    #@a
    add-int/2addr v2, v3

    #@b
    return v2
.end method

.method public static toLowerCase(C)C
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 3178
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(I)I

    #@3
    move-result v0

    #@4
    int-to-char v0, v0

    #@5
    return v0
.end method

.method public static toLowerCase(I)I
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 3193
    const/16 v0, 0x41

    #@2
    if-gt v0, p0, :cond_0

    #@4
    const/16 v0, 0x5a

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 3194
    add-int/lit8 v0, p0, 0x20

    #@a
    int-to-char v0, v0

    #@b
    return v0

    #@c
    .line 3196
    :cond_0
    const/16 v0, 0xc0

    #@e
    if-ge p0, v0, :cond_1

    #@10
    .line 3197
    return p0

    #@11
    .line 3199
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toLowerCaseImpl(I)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method private static native toLowerCaseImpl(I)I
.end method

.method public static toString(C)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # C

    #@0
    .prologue
    .line 3217
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static toTitleCase(C)C
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 3230
    invoke-static {p0}, Ljava/lang/Character;->toTitleCaseImpl(I)I

    #@3
    move-result v0

    #@4
    int-to-char v0, v0

    #@5
    return v0
.end method

.method public static toTitleCase(I)I
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 3243
    invoke-static {p0}, Ljava/lang/Character;->toTitleCaseImpl(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static native toTitleCaseImpl(I)I
.end method

.method public static toUpperCase(C)C
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 3259
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(I)I

    #@3
    move-result v0

    #@4
    int-to-char v0, v0

    #@5
    return v0
.end method

.method public static toUpperCase(I)I
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 3274
    const/16 v0, 0x61

    #@2
    if-gt v0, p0, :cond_0

    #@4
    const/16 v0, 0x7a

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 3275
    add-int/lit8 v0, p0, -0x20

    #@a
    int-to-char v0, v0

    #@b
    return v0

    #@c
    .line 3277
    :cond_0
    const/16 v0, 0xb5

    #@e
    if-ge p0, v0, :cond_1

    #@10
    .line 3278
    return p0

    #@11
    .line 3280
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCaseImpl(I)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method private static native toUpperCaseImpl(I)I
.end method

.method private static native unicodeBlockForCodePoint(I)I
.end method

.method private static native unicodeBlockForName(Ljava/lang/String;)I
.end method

.method private static native unicodeScriptForCodePoint(I)I
.end method

.method private static native unicodeScriptForName(Ljava/lang/String;)I
.end method

.method public static valueOf(C)Ljava/lang/Character;
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 1600
    const/16 v0, 0x80

    #@2
    if-ge p0, v0, :cond_0

    #@4
    sget-object v0, Ljava/lang/Character;->SMALL_VALUES:[Ljava/lang/Character;

    #@6
    aget-object v0, v0, p0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    new-instance v0, Ljava/lang/Character;

    #@b
    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    #@e
    goto :goto_0
.end method


# virtual methods
.method public charValue()C
    .locals 1

    #@0
    .prologue
    .line 1551
    iget-char v0, p0, Ljava/lang/Character;->value:C

    #@2
    return v0
.end method

.method public compareTo(Ljava/lang/Character;)I
    .locals 2
    .param p1, "c"    # Ljava/lang/Character;

    #@0
    .prologue
    .line 1575
    iget-char v0, p0, Ljava/lang/Character;->value:C

    #@2
    iget-char v1, p1, Ljava/lang/Character;->value:C

    #@4
    invoke-static {v0, v1}, Ljava/lang/Character;->compare(CC)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "c"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1574
    check-cast p1, Ljava/lang/Character;

    #@2
    .end local p1    # "c":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Character;->compareTo(Ljava/lang/Character;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2372
    instance-of v1, p1, Ljava/lang/Character;

    #@3
    if-eqz v1, :cond_0

    #@5
    check-cast p1, Ljava/lang/Character;

    #@7
    .end local p1    # "object":Ljava/lang/Object;
    iget-char v1, p1, Ljava/lang/Character;->value:C

    #@9
    iget-char v2, p0, Ljava/lang/Character;->value:C

    #@b
    if-ne v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 2584
    iget-char v0, p0, Ljava/lang/Character;->value:C

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3206
    iget-char v0, p0, Ljava/lang/Character;->value:C

    #@2
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
