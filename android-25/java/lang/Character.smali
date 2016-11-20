.class public final Ljava/lang/Character;
.super Ljava/lang/Object;
.source "Character.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Character$CharacterCache;,
        Ljava/lang/Character$Subset;,
        Ljava/lang/Character$UnicodeBlock;,
        Ljava/lang/Character$UnicodeScript;
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


# static fields
.field public static final BYTES:I = 0x2

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

.field static final ERROR:I = -0x1

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
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 179
    const-class v0, [C

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@8
    .line 584
    const/16 v0, 0x13

    #@a
    new-array v0, v0, [B

    #@c
    fill-array-data v0, :array_0

    #@f
    sput-object v0, Ljava/lang/Character;->DIRECTIONALITY:[B

    #@11
    .line 124
    return-void

    #@12
    .line 584
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
    .line 4381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4382
    iput-char p1, p0, Ljava/lang/Character;->value:C

    #@5
    .line 4381
    return-void
.end method

.method public static charCount(I)I
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 4661
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

.method public static codePointAt(Ljava/lang/CharSequence;I)I
    .locals 4
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    #@0
    .prologue
    .line 4709
    add-int/lit8 v2, p1, 0x1

    #@2
    .end local p1    # "index":I
    .local v2, "index":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@5
    move-result v0

    #@6
    .line 4710
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 4711
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@f
    move-result v3

    #@10
    if-ge v2, v3, :cond_0

    #@12
    .line 4712
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@15
    move-result v1

    #@16
    .line 4713
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 4714
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    #@1f
    move-result v3

    #@20
    return v3

    #@21
    .line 4718
    .end local v1    # "c2":C
    :cond_0
    return v0
.end method

.method public static codePointAt([CI)I
    .locals 1
    .param p0, "a"    # [C
    .param p1, "index"    # I

    #@0
    .prologue
    .line 4743
    array-length v0, p0

    #@1
    invoke-static {p0, p1, v0}, Ljava/lang/Character;->codePointAtImpl([CII)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static codePointAt([CII)I
    .locals 1
    .param p0, "a"    # [C
    .param p1, "index"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 4772
    if-ge p1, p2, :cond_0

    #@2
    if-gez p2, :cond_1

    #@4
    .line 4773
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 4772
    :cond_1
    array-length v0, p0

    #@b
    if-gt p2, v0, :cond_0

    #@d
    .line 4775
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointAtImpl([CII)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method static codePointAtImpl([CII)I
    .locals 4
    .param p0, "a"    # [C
    .param p1, "index"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 4780
    add-int/lit8 v2, p1, 0x1

    #@2
    .end local p1    # "index":I
    .local v2, "index":I
    aget-char v0, p0, p1

    #@4
    .line 4781
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 4782
    if-ge v2, p2, :cond_0

    #@c
    .line 4783
    aget-char v1, p0, v2

    #@e
    .line 4784
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 4785
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    #@17
    move-result v3

    #@18
    return v3

    #@19
    .line 4789
    .end local v1    # "c2":C
    :cond_0
    return v0
.end method

.method public static codePointBefore(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    #@0
    .prologue
    .line 4814
    add-int/lit8 p1, p1, -0x1

    #@2
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@5
    move-result v1

    #@6
    .line 4815
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 4816
    if-lez p1, :cond_0

    #@e
    .line 4817
    add-int/lit8 p1, p1, -0x1

    #@10
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 4818
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 4819
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    #@1d
    move-result v2

    #@1e
    return v2

    #@1f
    .line 4823
    .end local v0    # "c1":C
    :cond_0
    return v1
.end method

.method public static codePointBefore([CI)I
    .locals 1
    .param p0, "a"    # [C
    .param p1, "index"    # I

    #@0
    .prologue
    .line 4848
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Ljava/lang/Character;->codePointBeforeImpl([CII)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static codePointBefore([CII)I
    .locals 1
    .param p0, "a"    # [C
    .param p1, "index"    # I
    .param p2, "start"    # I

    #@0
    .prologue
    .line 4879
    if-le p1, p2, :cond_0

    #@2
    if-gez p2, :cond_1

    #@4
    .line 4880
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 4879
    :cond_1
    array-length v0, p0

    #@b
    if-ge p2, v0, :cond_0

    #@d
    .line 4882
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointBeforeImpl([CII)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method static codePointBeforeImpl([CII)I
    .locals 3
    .param p0, "a"    # [C
    .param p1, "index"    # I
    .param p2, "start"    # I

    #@0
    .prologue
    .line 4887
    add-int/lit8 p1, p1, -0x1

    #@2
    aget-char v1, p0, p1

    #@4
    .line 4888
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 4889
    if-le p1, p2, :cond_0

    #@c
    .line 4890
    add-int/lit8 p1, p1, -0x1

    #@e
    aget-char v0, p0, p1

    #@10
    .line 4891
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 4892
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    #@19
    move-result v2

    #@1a
    return v2

    #@1b
    .line 4896
    .end local v0    # "c1":C
    :cond_0
    return v1
.end method

.method public static codePointCount(Ljava/lang/CharSequence;II)I
    .locals 5
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    #@0
    .prologue
    .line 5057
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v2

    #@4
    .line 5058
    .local v2, "length":I
    if-ltz p1, :cond_0

    #@6
    if-le p2, v2, :cond_1

    #@8
    .line 5059
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@a
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@d
    throw v4

    #@e
    .line 5058
    :cond_1
    if-gt p1, p2, :cond_0

    #@10
    .line 5061
    sub-int v3, p2, p1

    #@12
    .line 5062
    .local v3, "n":I
    move v0, p1

    #@13
    .local v0, "i":I
    move v1, v0

    #@14
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_3

    #@16
    .line 5063
    add-int/lit8 v0, v1, 0x1

    #@18
    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@1b
    move-result v4

    #@1c
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_2

    #@22
    if-ge v0, p2, :cond_2

    #@24
    .line 5064
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@27
    move-result v4

    #@28
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@2b
    move-result v4

    #@2c
    .line 5063
    if-eqz v4, :cond_2

    #@2e
    .line 5065
    add-int/lit8 v3, v3, -0x1

    #@30
    .line 5066
    add-int/lit8 v0, v0, 0x1

    #@32
    :cond_2
    move v1, v0

    #@33
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@34
    .line 5069
    :cond_3
    return v3
.end method

.method public static codePointCount([CII)I
    .locals 1
    .param p0, "a"    # [C
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 5092
    array-length v0, p0

    #@1
    sub-int/2addr v0, p1

    #@2
    if-gt p2, v0, :cond_0

    #@4
    if-gez p1, :cond_1

    #@6
    .line 5093
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    .line 5092
    :cond_1
    if-ltz p2, :cond_0

    #@e
    .line 5095
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointCountImpl([CII)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method static codePointCountImpl([CII)I
    .locals 5
    .param p0, "a"    # [C
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 5099
    add-int v0, p1, p2

    #@2
    .line 5100
    .local v0, "endIndex":I
    move v3, p2

    #@3
    .line 5101
    .local v3, "n":I
    move v1, p1

    #@4
    .local v1, "i":I
    move v2, v1

    #@5
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@7
    .line 5102
    add-int/lit8 v1, v2, 0x1

    #@9
    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-char v4, p0, v2

    #@b
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    if-ge v1, v0, :cond_0

    #@13
    .line 5103
    aget-char v4, p0, v1

    #@15
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@18
    move-result v4

    #@19
    .line 5102
    if-eqz v4, :cond_0

    #@1b
    .line 5104
    add-int/lit8 v3, v3, -0x1

    #@1d
    .line 5105
    add-int/lit8 v1, v1, 0x1

    #@1f
    :cond_0
    move v2, v1

    #@20
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@21
    .line 5108
    :cond_1
    return v3
.end method

.method public static compare(CC)I
    .locals 1
    .param p0, "x"    # C
    .param p1, "y"    # C

    #@0
    .prologue
    .line 7138
    sub-int v0, p0, p1

    #@2
    return v0
.end method

.method public static digit(CI)I
    .locals 1
    .param p0, "ch"    # C
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 6427
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
    .line 6479
    const/4 v2, 0x2

    #@2
    if-lt p1, v2, :cond_0

    #@4
    const/16 v2, 0x24

    #@6
    if-le p1, v2, :cond_1

    #@8
    .line 6480
    :cond_0
    return v1

    #@9
    .line 6482
    :cond_1
    const/16 v2, 0x80

    #@b
    if-ge p0, v2, :cond_6

    #@d
    .line 6484
    const/4 v0, -0x1

    #@e
    .line 6485
    .local v0, "result":I
    const/16 v2, 0x30

    #@10
    if-gt v2, p0, :cond_3

    #@12
    const/16 v2, 0x39

    #@14
    if-gt p0, v2, :cond_3

    #@16
    .line 6486
    add-int/lit8 v0, p0, -0x30

    #@18
    .line 6492
    :cond_2
    :goto_0
    if-ge v0, p1, :cond_5

    #@1a
    .end local v0    # "result":I
    :goto_1
    return v0

    #@1b
    .line 6487
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
    .line 6488
    add-int/lit8 v2, p0, -0x61

    #@25
    add-int/lit8 v0, v2, 0xa

    #@27
    .line 6487
    goto :goto_0

    #@28
    .line 6489
    :cond_4
    const/16 v2, 0x41

    #@2a
    if-gt v2, p0, :cond_2

    #@2c
    const/16 v2, 0x5a

    #@2e
    if-gt p0, v2, :cond_2

    #@30
    .line 6490
    add-int/lit8 v2, p0, -0x41

    #@32
    add-int/lit8 v0, v2, 0xa

    #@34
    goto :goto_0

    #@35
    :cond_5
    move v0, v1

    #@36
    .line 6492
    goto :goto_1

    #@37
    .line 6494
    .end local v0    # "result":I
    :cond_6
    invoke-static {p0, p1}, Ljava/lang/Character;->digitImpl(II)I

    #@3a
    move-result v1

    #@3b
    return v1
.end method

.method static native digitImpl(II)I
.end method

.method public static forDigit(II)C
    .locals 2
    .param p0, "digit"    # I
    .param p1, "radix"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6962
    if-ge p0, p1, :cond_0

    #@3
    if-gez p0, :cond_1

    #@5
    .line 6963
    :cond_0
    return v1

    #@6
    .line 6965
    :cond_1
    const/4 v0, 0x2

    #@7
    if-lt p1, v0, :cond_2

    #@9
    const/16 v0, 0x24

    #@b
    if-le p1, v0, :cond_3

    #@d
    .line 6966
    :cond_2
    return v1

    #@e
    .line 6968
    :cond_3
    const/16 v0, 0xa

    #@10
    if-ge p0, v0, :cond_4

    #@12
    .line 6969
    add-int/lit8 v0, p0, 0x30

    #@14
    int-to-char v0, v0

    #@15
    return v0

    #@16
    .line 6971
    :cond_4
    add-int/lit8 v0, p0, 0x57

    #@18
    int-to-char v0, v0

    #@19
    return v0
.end method

.method public static getDirectionality(C)B
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 7012
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
    .line 7049
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 7050
    return v2

    #@8
    .line 7053
    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getDirectionalityImpl(I)B

    #@b
    move-result v0

    #@c
    .line 7054
    .local v0, "directionality":B
    if-ltz v0, :cond_1

    #@e
    sget-object v1, Ljava/lang/Character;->DIRECTIONALITY:[B

    #@10
    array-length v1, v1

    #@11
    if-ge v0, v1, :cond_1

    #@13
    .line 7055
    sget-object v1, Ljava/lang/Character;->DIRECTIONALITY:[B

    #@15
    aget-byte v1, v1, v0

    #@17
    return v1

    #@18
    .line 7057
    :cond_1
    return v2
.end method

.method static native getDirectionalityImpl(I)B
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 6
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 7198
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 7199
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@c
    throw v2

    #@d
    .line 7201
    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getNameImpl(I)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 7202
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@13
    .line 7203
    return-object v1

    #@14
    .line 7204
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_2

    #@1a
    .line 7205
    return-object v3

    #@1b
    .line 7206
    :cond_2
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    #@1e
    move-result-object v0

    #@1f
    .line 7207
    .local v0, "block":Ljava/lang/Character$UnicodeBlock;
    if-eqz v0, :cond_3

    #@21
    .line 7208
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v0}, Ljava/lang/Character$UnicodeBlock;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    const/16 v4, 0x5f

    #@2c
    const/16 v5, 0x20

    #@2e
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    const-string/jumbo v3, " "

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    .line 7209
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    .line 7208
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    return-object v2

    #@50
    .line 7211
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    return-object v2
.end method

.method private static native getNameImpl(I)Ljava/lang/String;
.end method

.method public static getNumericValue(C)I
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 6534
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
    .line 6568
    const/16 v0, 0x80

    #@2
    if-ge p0, v0, :cond_3

    #@4
    .line 6569
    const/16 v0, 0x30

    #@6
    if-lt p0, v0, :cond_0

    #@8
    const/16 v0, 0x39

    #@a
    if-gt p0, v0, :cond_0

    #@c
    .line 6570
    add-int/lit8 v0, p0, -0x30

    #@e
    return v0

    #@f
    .line 6572
    :cond_0
    const/16 v0, 0x61

    #@11
    if-lt p0, v0, :cond_1

    #@13
    const/16 v0, 0x7a

    #@15
    if-gt p0, v0, :cond_1

    #@17
    .line 6573
    add-int/lit8 v0, p0, -0x57

    #@19
    return v0

    #@1a
    .line 6575
    :cond_1
    const/16 v0, 0x41

    #@1c
    if-lt p0, v0, :cond_2

    #@1e
    const/16 v0, 0x5a

    #@20
    if-gt p0, v0, :cond_2

    #@22
    .line 6576
    add-int/lit8 v0, p0, -0x37

    #@24
    return v0

    #@25
    .line 6578
    :cond_2
    const/4 v0, -0x1

    #@26
    return v0

    #@27
    .line 6581
    :cond_3
    const v0, 0xff21

    #@2a
    if-lt p0, v0, :cond_4

    #@2c
    const v0, 0xff3a

    #@2f
    if-gt p0, v0, :cond_4

    #@31
    .line 6582
    const v0, 0xff17

    #@34
    sub-int v0, p0, v0

    #@36
    return v0

    #@37
    .line 6585
    :cond_4
    const v0, 0xff41

    #@3a
    if-lt p0, v0, :cond_5

    #@3c
    const v0, 0xff5a

    #@3f
    if-gt p0, v0, :cond_5

    #@41
    .line 6586
    const v0, 0xff37

    #@44
    sub-int v0, p0, v0

    #@46
    return v0

    #@47
    .line 6588
    :cond_5
    invoke-static {p0}, Ljava/lang/Character;->getNumericValueImpl(I)I

    #@4a
    move-result v0

    #@4b
    return v0
.end method

.method static native getNumericValueImpl(I)I
.end method

.method public static getType(C)I
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 6885
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
    .line 6927
    invoke-static {p0}, Ljava/lang/Character;->getTypeImpl(I)I

    #@3
    move-result v0

    #@4
    .line 6929
    .local v0, "type":I
    const/16 v1, 0x10

    #@6
    if-gt v0, v1, :cond_0

    #@8
    .line 6930
    return v0

    #@9
    .line 6932
    :cond_0
    add-int/lit8 v1, v0, 0x1

    #@b
    return v1
.end method

.method static native getTypeImpl(I)I
.end method

.method public static hashCode(C)I
    .locals 0
    .param p0, "value"    # C

    #@0
    .prologue
    .line 4449
    return p0
.end method

.method public static highSurrogate(I)C
    .locals 2
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 4924
    ushr-int/lit8 v0, p0, 0xa

    #@2
    .line 4925
    const v1, 0xd7c0

    #@5
    .line 4924
    add-int/2addr v0, v1

    #@6
    int-to-char v0, v0

    #@7
    return v0
.end method

.method public static isAlphabetic(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 5799
    invoke-static {p0}, Ljava/lang/Character;->isAlphabeticImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static native isAlphabeticImpl(I)Z
.end method

.method public static isBmpCodePoint(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4527
    ushr-int/lit8 v1, p0, 0x10

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static isDefined(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 5556
    invoke-static {p0}, Ljava/lang/Character;->isDefined(I)Z

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
    .line 5580
    invoke-static {p0}, Ljava/lang/Character;->isDefinedImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static native isDefinedImpl(I)Z
.end method

.method public static isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 5491
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
    .line 5525
    invoke-static {p0}, Ljava/lang/Character;->isDigitImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static native isDigitImpl(I)Z
.end method

.method public static isHighSurrogate(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4572
    const v1, 0xd800

    #@4
    if-lt p0, v1, :cond_0

    #@6
    const v1, 0xdc00

    #@9
    if-ge p0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public static isISOControl(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 6816
    invoke-static {p0}, Ljava/lang/Character;->isISOControl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isISOControl(I)Z
    .locals 3
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 6837
    const/16 v2, 0x9f

    #@4
    if-gt p0, v2, :cond_2

    #@6
    .line 6838
    const/16 v2, 0x7f

    #@8
    if-ge p0, v2, :cond_0

    #@a
    ushr-int/lit8 v2, p0, 0x5

    #@c
    if-nez v2, :cond_1

    #@e
    .line 6837
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    move v0, v1

    #@10
    .line 6838
    goto :goto_0

    #@11
    :cond_2
    move v0, v1

    #@12
    .line 6837
    goto :goto_0
.end method

.method public static isIdentifierIgnorable(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 6138
    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorable(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isIdentifierIgnorable(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 6168
    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorableImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static native isIdentifierIgnorableImpl(I)Z
.end method

.method public static isIdeographic(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 5816
    invoke-static {p0}, Ljava/lang/Character;->isIdeographicImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static native isIdeographicImpl(I)Z
.end method

.method public static isJavaIdentifierPart(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 5929
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isJavaIdentifierPart(I)Z
    .locals 8
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const-wide/16 v4, 0x1

    #@2
    const-wide/16 v6, 0x0

    #@4
    const/4 v0, 0x1

    #@5
    const/4 v1, 0x0

    #@6
    .line 5963
    const/16 v2, 0x40

    #@8
    if-ge p0, v2, :cond_1

    #@a
    .line 5964
    shl-long v2, v4, p0

    #@c
    const-wide v4, 0x3ff00100fffc1ffL

    #@11
    and-long/2addr v2, v4

    #@12
    cmp-long v2, v2, v6

    #@14
    if-eqz v2, :cond_0

    #@16
    :goto_0
    return v0

    #@17
    :cond_0
    move v0, v1

    #@18
    goto :goto_0

    #@19
    .line 5965
    :cond_1
    const/16 v2, 0x80

    #@1b
    if-ge p0, v2, :cond_3

    #@1d
    .line 5966
    add-int/lit8 v2, p0, -0x40

    #@1f
    shl-long v2, v4, v2

    #@21
    const-wide v4, -0x7800000178000002L

    #@26
    and-long/2addr v2, v4

    #@27
    cmp-long v2, v2, v6

    #@29
    if-eqz v2, :cond_2

    #@2b
    :goto_1
    return v0

    #@2c
    :cond_2
    move v0, v1

    #@2d
    goto :goto_1

    #@2e
    .line 5968
    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    #@31
    move-result v2

    #@32
    shl-int v2, v0, v2

    #@34
    .line 5969
    const v3, 0x481077e

    #@37
    .line 5968
    and-int/2addr v2, v3

    #@38
    if-nez v2, :cond_4

    #@3a
    .line 5981
    if-ltz p0, :cond_5

    #@3c
    const/16 v2, 0x8

    #@3e
    if-gt p0, v2, :cond_5

    #@40
    .line 5968
    :cond_4
    :goto_2
    return v0

    #@41
    .line 5981
    :cond_5
    const/16 v2, 0xe

    #@43
    if-lt p0, v2, :cond_6

    #@45
    const/16 v2, 0x1b

    #@47
    if-le p0, v2, :cond_4

    #@49
    .line 5982
    :cond_6
    const/16 v2, 0x7f

    #@4b
    if-lt p0, v2, :cond_7

    #@4d
    const/16 v2, 0x9f

    #@4f
    if-le p0, v2, :cond_4

    #@51
    :cond_7
    move v0, v1

    #@52
    goto :goto_2
.end method

.method public static isJavaIdentifierStart(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 5849
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isJavaIdentifierStart(I)Z
    .locals 6
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 5879
    const/16 v2, 0x40

    #@4
    if-ge p0, v2, :cond_1

    #@6
    .line 5880
    const/16 v2, 0x24

    #@8
    if-ne p0, v2, :cond_0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    move v0, v1

    #@c
    goto :goto_0

    #@d
    .line 5881
    :cond_1
    const/16 v2, 0x80

    #@f
    if-ge p0, v2, :cond_3

    #@11
    .line 5882
    add-int/lit8 v2, p0, -0x40

    #@13
    const-wide/16 v4, 0x1

    #@15
    shl-long v2, v4, v2

    #@17
    const-wide v4, 0x7fffffe87fffffeL

    #@1c
    and-long/2addr v2, v4

    #@1d
    const-wide/16 v4, 0x0

    #@1f
    cmp-long v2, v2, v4

    #@21
    if-eqz v2, :cond_2

    #@23
    :goto_1
    return v0

    #@24
    :cond_2
    move v0, v1

    #@25
    goto :goto_1

    #@26
    .line 5884
    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    #@29
    move-result v2

    #@2a
    shl-int v2, v0, v2

    #@2c
    .line 5885
    const v3, 0x480043e

    #@2f
    .line 5884
    and-int/2addr v2, v3

    #@30
    if-eqz v2, :cond_4

    #@32
    :goto_2
    return v0

    #@33
    :cond_4
    move v0, v1

    #@34
    goto :goto_2
.end method

.method public static isJavaLetter(C)Z
    .locals 1
    .param p0, "ch"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 5737
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isJavaLetterOrDigit(C)Z
    .locals 1
    .param p0, "ch"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 5773
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isLetter(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 5621
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
    .line 5654
    invoke-static {p0}, Ljava/lang/Character;->isLetterImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static native isLetterImpl(I)Z
.end method

.method public static isLetterOrDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 5684
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isLetterOrDigit(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 5705
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigitImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static native isLetterOrDigitImpl(I)Z
.end method

.method public static isLowSurrogate(C)Z
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4595
    const v1, 0xdc00

    #@4
    if-lt p0, v1, :cond_0

    #@6
    const v1, 0xe000

    #@9
    if-ge p0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public static isLowerCase(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 5271
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
    .line 5303
    invoke-static {p0}, Ljava/lang/Character;->isLowerCaseImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static native isLowerCaseImpl(I)Z
.end method

.method public static isMirrored(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 7081
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
    .line 7100
    invoke-static {p0}, Ljava/lang/Character;->isMirroredImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static native isMirroredImpl(I)Z
.end method

.method public static isSpace(C)Z
    .locals 6
    .param p0, "ch"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6619
    const/16 v1, 0x20

    #@3
    if-gt p0, v1, :cond_0

    #@5
    .line 6620
    const-wide v2, 0x100003600L

    #@a
    shr-long/2addr v2, p0

    #@b
    .line 6624
    const-wide/16 v4, 0x1

    #@d
    .line 6620
    and-long/2addr v2, v4

    #@e
    .line 6624
    const-wide/16 v4, 0x0

    #@10
    .line 6620
    cmp-long v1, v2, v4

    #@12
    if-eqz v1, :cond_0

    #@14
    const/4 v0, 0x1

    #@15
    .line 6619
    :cond_0
    return v0
.end method

.method public static isSpaceChar(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 6652
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
    .line 6677
    const/16 v2, 0x20

    #@4
    if-eq p0, v2, :cond_0

    #@6
    const/16 v2, 0xa0

    #@8
    if-ne p0, v2, :cond_1

    #@a
    .line 6678
    :cond_0
    return v0

    #@b
    .line 6680
    :cond_1
    const/16 v2, 0x1000

    #@d
    if-ge p0, v2, :cond_2

    #@f
    .line 6681
    return v1

    #@10
    .line 6684
    :cond_2
    const/16 v2, 0x1680

    #@12
    if-eq p0, v2, :cond_3

    #@14
    const/16 v2, 0x180e

    #@16
    if-ne p0, v2, :cond_4

    #@18
    .line 6685
    :cond_3
    return v0

    #@19
    .line 6687
    :cond_4
    const/16 v2, 0x2000

    #@1b
    if-ge p0, v2, :cond_5

    #@1d
    .line 6688
    return v1

    #@1e
    .line 6690
    :cond_5
    const v2, 0xffff

    #@21
    if-gt p0, v2, :cond_8

    #@23
    .line 6692
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
    .line 6693
    const/16 v2, 0x3000

    #@3a
    if-eq p0, v2, :cond_6

    #@3c
    move v0, v1

    #@3d
    goto :goto_0

    #@3e
    .line 6696
    :cond_8
    invoke-static {p0}, Ljava/lang/Character;->isSpaceCharImpl(I)Z

    #@41
    move-result v0

    #@42
    return v0
.end method

.method static native isSpaceCharImpl(I)Z
.end method

.method public static isSupplementaryCodePoint(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4546
    const/high16 v1, 0x10000

    #@3
    if-lt p0, v1, :cond_0

    #@5
    .line 4547
    const/high16 v1, 0x110000

    #@7
    if-ge p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 4546
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
    .line 4619
    const v1, 0xd800

    #@4
    if-lt p0, v1, :cond_0

    #@6
    const v1, 0xe000

    #@9
    if-ge p0, v1, :cond_0

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
    .line 4641
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
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 5414
    invoke-static {p0}, Ljava/lang/Character;->isTitleCase(I)Z

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
    .line 5450
    invoke-static {p0}, Ljava/lang/Character;->isTitleCaseImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static native isTitleCaseImpl(I)Z
.end method

.method public static isUnicodeIdentifierPart(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 6072
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

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
    .line 6101
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPartImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static native isUnicodeIdentifierPartImpl(I)Z
.end method

.method public static isUnicodeIdentifierStart(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 6011
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStart(I)Z

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
    .line 6035
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStartImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static native isUnicodeIdentifierStartImpl(I)Z
.end method

.method public static isUpperCase(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 5340
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
    .line 5370
    invoke-static {p0}, Ljava/lang/Character;->isUpperCaseImpl(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static native isUpperCaseImpl(I)Z
.end method

.method public static isValidCodePoint(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 4511
    ushr-int/lit8 v0, p0, 0x10

    #@2
    .line 4512
    .local v0, "plane":I
    const/16 v1, 0x11

    #@4
    if-ge v0, v1, :cond_0

    #@6
    const/4 v1, 0x1

    #@7
    :goto_0
    return v1

    #@8
    :cond_0
    const/4 v1, 0x0

    #@9
    goto :goto_0
.end method

.method public static isWhitespace(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 6733
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
    .line 6767
    const/16 v2, 0x1c

    #@4
    if-lt p0, v2, :cond_1

    #@6
    const/16 v2, 0x20

    #@8
    if-gt p0, v2, :cond_1

    #@a
    .line 6768
    :cond_0
    return v0

    #@b
    .line 6767
    :cond_1
    const/16 v2, 0x9

    #@d
    if-lt p0, v2, :cond_2

    #@f
    const/16 v2, 0xd

    #@11
    if-le p0, v2, :cond_0

    #@13
    .line 6770
    :cond_2
    const/16 v2, 0x1000

    #@15
    if-ge p0, v2, :cond_3

    #@17
    .line 6771
    return v1

    #@18
    .line 6774
    :cond_3
    const/16 v2, 0x1680

    #@1a
    if-eq p0, v2, :cond_4

    #@1c
    const/16 v2, 0x180e

    #@1e
    if-ne p0, v2, :cond_5

    #@20
    .line 6775
    :cond_4
    return v0

    #@21
    .line 6777
    :cond_5
    const/16 v2, 0x2000

    #@23
    if-ge p0, v2, :cond_6

    #@25
    .line 6778
    return v1

    #@26
    .line 6781
    :cond_6
    const/16 v2, 0x2007

    #@28
    if-eq p0, v2, :cond_7

    #@2a
    const/16 v2, 0x202f

    #@2c
    if-ne p0, v2, :cond_8

    #@2e
    .line 6782
    :cond_7
    return v1

    #@2f
    .line 6784
    :cond_8
    const v2, 0xffff

    #@32
    if-gt p0, v2, :cond_b

    #@34
    .line 6786
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
    .line 6787
    const/16 v2, 0x3000

    #@47
    if-eq p0, v2, :cond_9

    #@49
    move v0, v1

    #@4a
    goto :goto_0

    #@4b
    .line 6790
    :cond_b
    invoke-static {p0}, Ljava/lang/Character;->isWhitespaceImpl(I)Z

    #@4e
    move-result v0

    #@4f
    return v0
.end method

.method static native isWhitespaceImpl(I)Z
.end method

.method public static lowSurrogate(I)C
    .locals 2
    .param p0, "codePoint"    # I

    #@0
    .prologue
    .line 4953
    and-int/lit16 v0, p0, 0x3ff

    #@2
    const v1, 0xdc00

    #@5
    add-int/2addr v0, v1

    #@6
    int-to-char v0, v0

    #@7
    return v0
.end method

.method public static offsetByCodePoints(Ljava/lang/CharSequence;II)I
    .locals 5
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    #@0
    .prologue
    .line 5135
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v1

    #@4
    .line 5136
    .local v1, "length":I
    if-ltz p1, :cond_0

    #@6
    if-le p1, v1, :cond_1

    #@8
    .line 5137
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@a
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@d
    throw v4

    #@e
    .line 5140
    :cond_1
    move v2, p1

    #@f
    .line 5141
    .local v2, "x":I
    if-ltz p2, :cond_4

    #@11
    .line 5143
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    move v3, v2

    #@13
    .end local v2    # "x":I
    .local v3, "x":I
    :goto_0
    if-ge v3, v1, :cond_3

    #@15
    if-ge v0, p2, :cond_3

    #@17
    .line 5144
    add-int/lit8 v2, v3, 0x1

    #@19
    .end local v3    # "x":I
    .restart local v2    # "x":I
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@1c
    move-result v4

    #@1d
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_2

    #@23
    if-ge v2, v1, :cond_2

    #@25
    .line 5145
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@28
    move-result v4

    #@29
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@2c
    move-result v4

    #@2d
    .line 5144
    if-eqz v4, :cond_2

    #@2f
    .line 5146
    add-int/lit8 v2, v2, 0x1

    #@31
    .line 5143
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@33
    move v3, v2

    #@34
    .end local v2    # "x":I
    .restart local v3    # "x":I
    goto :goto_0

    #@35
    .line 5149
    :cond_3
    if-ge v0, p2, :cond_7

    #@37
    .line 5150
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@39
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@3c
    throw v4

    #@3d
    .line 5154
    .end local v0    # "i":I
    .end local v3    # "x":I
    .restart local v2    # "x":I
    :cond_4
    move v0, p2

    #@3e
    .restart local v0    # "i":I
    :goto_1
    if-lez v2, :cond_6

    #@40
    if-gez v0, :cond_6

    #@42
    .line 5155
    add-int/lit8 v2, v2, -0x1

    #@44
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@47
    move-result v4

    #@48
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@4b
    move-result v4

    #@4c
    if-eqz v4, :cond_5

    #@4e
    if-lez v2, :cond_5

    #@50
    .line 5156
    add-int/lit8 v4, v2, -0x1

    #@52
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@55
    move-result v4

    #@56
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@59
    move-result v4

    #@5a
    .line 5155
    if-eqz v4, :cond_5

    #@5c
    .line 5157
    add-int/lit8 v2, v2, -0x1

    #@5e
    .line 5154
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@60
    goto :goto_1

    #@61
    .line 5160
    :cond_6
    if-gez v0, :cond_8

    #@63
    .line 5161
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@65
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@68
    throw v4

    #@69
    .end local v2    # "x":I
    .restart local v3    # "x":I
    :cond_7
    move v2, v3

    #@6a
    .line 5164
    .end local v3    # "x":I
    .restart local v2    # "x":I
    :cond_8
    return v2
.end method

.method public static offsetByCodePoints([CIIII)I
    .locals 1
    .param p0, "a"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "index"    # I
    .param p4, "codePointOffset"    # I

    #@0
    .prologue
    .line 5202
    array-length v0, p0

    #@1
    sub-int/2addr v0, p1

    #@2
    if-gt p2, v0, :cond_0

    #@4
    if-gez p1, :cond_1

    #@6
    .line 5204
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    .line 5202
    :cond_1
    if-ltz p2, :cond_0

    #@e
    .line 5203
    if-lt p3, p1, :cond_0

    #@10
    add-int v0, p1, p2

    #@12
    if-gt p3, v0, :cond_0

    #@14
    .line 5206
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/Character;->offsetByCodePointsImpl([CIIII)I

    #@17
    move-result v0

    #@18
    return v0
.end method

.method static offsetByCodePointsImpl([CIIII)I
    .locals 5
    .param p0, "a"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "index"    # I
    .param p4, "codePointOffset"    # I

    #@0
    .prologue
    .line 5211
    move v2, p3

    #@1
    .line 5212
    .local v2, "x":I
    if-ltz p4, :cond_2

    #@3
    .line 5213
    add-int v1, p1, p2

    #@5
    .line 5215
    .local v1, "limit":I
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    move v3, v2

    #@7
    .end local v2    # "x":I
    .local v3, "x":I
    :goto_0
    if-ge v3, v1, :cond_1

    #@9
    if-ge v0, p4, :cond_1

    #@b
    .line 5216
    add-int/lit8 v2, v3, 0x1

    #@d
    .end local v3    # "x":I
    .restart local v2    # "x":I
    aget-char v4, p0, v3

    #@f
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    if-ge v2, v1, :cond_0

    #@17
    .line 5217
    aget-char v4, p0, v2

    #@19
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@1c
    move-result v4

    #@1d
    .line 5216
    if-eqz v4, :cond_0

    #@1f
    .line 5218
    add-int/lit8 v2, v2, 0x1

    #@21
    .line 5215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@23
    move v3, v2

    #@24
    .end local v2    # "x":I
    .restart local v3    # "x":I
    goto :goto_0

    #@25
    .line 5221
    :cond_1
    if-ge v0, p4, :cond_5

    #@27
    .line 5222
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@29
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@2c
    throw v4

    #@2d
    .line 5226
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v3    # "x":I
    .restart local v2    # "x":I
    :cond_2
    move v0, p4

    #@2e
    .restart local v0    # "i":I
    :goto_1
    if-le v2, p1, :cond_4

    #@30
    if-gez v0, :cond_4

    #@32
    .line 5227
    add-int/lit8 v2, v2, -0x1

    #@34
    aget-char v4, p0, v2

    #@36
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_3

    #@3c
    if-le v2, p1, :cond_3

    #@3e
    .line 5228
    add-int/lit8 v4, v2, -0x1

    #@40
    aget-char v4, p0, v4

    #@42
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@45
    move-result v4

    #@46
    .line 5227
    if-eqz v4, :cond_3

    #@48
    .line 5229
    add-int/lit8 v2, v2, -0x1

    #@4a
    .line 5226
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 5232
    :cond_4
    if-gez v0, :cond_6

    #@4f
    .line 5233
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@51
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@54
    throw v4

    #@55
    .end local v2    # "x":I
    .restart local v1    # "limit":I
    .restart local v3    # "x":I
    :cond_5
    move v2, v3

    #@56
    .line 5236
    .end local v1    # "limit":I
    .end local v3    # "x":I
    .restart local v2    # "x":I
    :cond_6
    return v2
.end method

.method public static reverseBytes(C)C
    .locals 2
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 7166
    const v0, 0xff00

    #@3
    and-int/2addr v0, p0

    #@4
    shr-int/lit8 v0, v0, 0x8

    #@6
    shl-int/lit8 v1, p0, 0x8

    #@8
    or-int/2addr v0, v1

    #@9
    int-to-char v0, v0

    #@a
    return v0
.end method

.method public static toChars(I[CI)I
    .locals 1
    .param p0, "codePoint"    # I
    .param p1, "dst"    # [C
    .param p2, "dstIndex"    # I

    #@0
    .prologue
    .line 4988
    invoke-static {p0}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4989
    int-to-char v0, p0

    #@7
    aput-char v0, p1, p2

    #@9
    .line 4990
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 4991
    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 4992
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->toSurrogates(I[CI)V

    #@14
    .line 4993
    const/4 v0, 0x2

    #@15
    return v0

    #@16
    .line 4995
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1b
    throw v0
.end method

.method public static toChars(I)[C
    .locals 4
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5016
    invoke-static {p0}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 5017
    const/4 v1, 0x1

    #@8
    new-array v1, v1, [C

    #@a
    int-to-char v2, p0

    #@b
    aput-char v2, v1, v3

    #@d
    return-object v1

    #@e
    .line 5018
    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 5019
    const/4 v1, 0x2

    #@15
    new-array v0, v1, [C

    #@17
    .line 5020
    .local v0, "result":[C
    invoke-static {p0, v0, v3}, Ljava/lang/Character;->toSurrogates(I[CI)V

    #@1a
    .line 5021
    return-object v0

    #@1b
    .line 5023
    .end local v0    # "result":[C
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1d
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@20
    throw v1
.end method

.method public static toCodePoint(CC)I
    .locals 2
    .param p0, "high"    # C
    .param p1, "low"    # C

    #@0
    .prologue
    .line 4681
    shl-int/lit8 v0, p0, 0xa

    #@2
    add-int/2addr v0, p1

    #@3
    const v1, -0x35fdc00

    #@6
    add-int/2addr v0, v1

    #@7
    return v0
.end method

.method public static toLowerCase(C)C
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 6201
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
    .line 6230
    const/16 v0, 0x41

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x5a

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 6231
    add-int/lit8 v0, p0, 0x20

    #@a
    return v0

    #@b
    .line 6235
    :cond_0
    const/16 v0, 0x80

    #@d
    if-ge p0, v0, :cond_1

    #@f
    .line 6236
    return p0

    #@10
    .line 6239
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toLowerCaseImpl(I)I

    #@13
    move-result v0

    #@14
    return v0
.end method

.method static native toLowerCaseImpl(I)I
.end method

.method public static toString(C)Ljava/lang/String;
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 4493
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static toSurrogates(I[CI)V
    .locals 2
    .param p0, "codePoint"    # I
    .param p1, "dst"    # [C
    .param p2, "index"    # I

    #@0
    .prologue
    .line 5029
    add-int/lit8 v0, p2, 0x1

    #@2
    invoke-static {p0}, Ljava/lang/Character;->lowSurrogate(I)C

    #@5
    move-result v1

    #@6
    aput-char v1, p1, v0

    #@8
    .line 5030
    invoke-static {p0}, Ljava/lang/Character;->highSurrogate(I)C

    #@b
    move-result v0

    #@c
    aput-char v0, p1, p2

    #@e
    .line 5027
    return-void
.end method

.method public static toTitleCase(C)C
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 6344
    invoke-static {p0}, Ljava/lang/Character;->toTitleCase(I)I

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
    .line 6371
    invoke-static {p0}, Ljava/lang/Character;->toTitleCaseImpl(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static native toTitleCaseImpl(I)I
.end method

.method public static toUpperCase(C)C
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 6272
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
    .line 6301
    const/16 v0, 0x61

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x7a

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 6302
    add-int/lit8 v0, p0, -0x20

    #@a
    return v0

    #@b
    .line 6306
    :cond_0
    const/16 v0, 0x80

    #@d
    if-ge p0, v0, :cond_1

    #@f
    .line 6307
    return p0

    #@10
    .line 6310
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCaseImpl(I)I

    #@13
    move-result v0

    #@14
    return v0
.end method

.method static native toUpperCaseImpl(I)I
.end method

.method public static valueOf(C)Ljava/lang/Character;
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 4414
    const/16 v0, 0x7f

    #@2
    if-gt p0, v0, :cond_0

    #@4
    .line 4415
    sget-object v0, Ljava/lang/Character$CharacterCache;->cache:[Ljava/lang/Character;

    #@6
    aget-object v0, v0, p0

    #@8
    return-object v0

    #@9
    .line 4417
    :cond_0
    new-instance v0, Ljava/lang/Character;

    #@b
    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    #@e
    return-object v0
.end method


# virtual methods
.method public charValue()C
    .locals 1

    #@0
    .prologue
    .line 4426
    iget-char v0, p0, Ljava/lang/Character;->value:C

    #@2
    return v0
.end method

.method public compareTo(Ljava/lang/Character;)I
    .locals 2
    .param p1, "anotherCharacter"    # Ljava/lang/Character;

    #@0
    .prologue
    .line 7120
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
    .param p1, "anotherCharacter"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 7119
    check-cast p1, Ljava/lang/Character;

    #@2
    .end local p1    # "anotherCharacter":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Character;->compareTo(Ljava/lang/Character;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4463
    instance-of v1, p1, Ljava/lang/Character;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 4464
    iget-char v1, p0, Ljava/lang/Character;->value:C

    #@7
    check-cast p1, Ljava/lang/Character;

    #@9
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    #@c
    move-result v2

    #@d
    if-ne v1, v2, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0

    #@11
    .line 4466
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 4436
    iget-char v0, p0, Ljava/lang/Character;->value:C

    #@2
    invoke-static {v0}, Ljava/lang/Character;->hashCode(C)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 4479
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [C

    #@3
    iget-char v1, p0, Ljava/lang/Character;->value:C

    #@5
    const/4 v2, 0x0

    #@6
    aput-char v1, v0, v2

    #@8
    .line 4480
    .local v0, "buf":[C
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method
