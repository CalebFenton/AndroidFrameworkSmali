.class public final Ljava/lang/Character;
.super Ljava/lang/Object;
.source "Character.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/constant/Constable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Character$CharacterCache;,
        Ljava/lang/Character$UnicodeBlock;,
        Ljava/lang/Character$UnicodeScript;,
        Ljava/lang/Character$Subset;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Character;",
        ">;",
        "Ljava/lang/constant/Constable;"
    }
.end annotation


# static fields
.field public static final whitelist test-api BYTES:I = 0x2

.field public static final whitelist test-api COMBINING_SPACING_MARK:B = 0x8t

.field public static final whitelist test-api CONNECTOR_PUNCTUATION:B = 0x17t

.field public static final whitelist test-api CONTROL:B = 0xft

.field public static final whitelist test-api CURRENCY_SYMBOL:B = 0x1at

.field public static final whitelist test-api DASH_PUNCTUATION:B = 0x14t

.field public static final whitelist test-api DECIMAL_DIGIT_NUMBER:B = 0x9t

.field private static final greylist-max-o DIRECTIONALITY:[B

.field public static final whitelist test-api DIRECTIONALITY_ARABIC_NUMBER:B = 0x6t

.field public static final whitelist test-api DIRECTIONALITY_BOUNDARY_NEUTRAL:B = 0x9t

.field public static final whitelist test-api DIRECTIONALITY_COMMON_NUMBER_SEPARATOR:B = 0x7t

.field public static final whitelist test-api DIRECTIONALITY_EUROPEAN_NUMBER:B = 0x3t

.field public static final whitelist test-api DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR:B = 0x4t

.field public static final whitelist test-api DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR:B = 0x5t

.field public static final whitelist test-api DIRECTIONALITY_FIRST_STRONG_ISOLATE:B = 0x15t

.field public static final whitelist test-api DIRECTIONALITY_LEFT_TO_RIGHT:B = 0x0t

.field public static final whitelist test-api DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING:B = 0xet

.field public static final whitelist test-api DIRECTIONALITY_LEFT_TO_RIGHT_ISOLATE:B = 0x13t

.field public static final whitelist test-api DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE:B = 0xft

.field public static final whitelist test-api DIRECTIONALITY_NONSPACING_MARK:B = 0x8t

.field public static final whitelist test-api DIRECTIONALITY_OTHER_NEUTRALS:B = 0xdt

.field public static final whitelist test-api DIRECTIONALITY_PARAGRAPH_SEPARATOR:B = 0xat

.field public static final whitelist test-api DIRECTIONALITY_POP_DIRECTIONAL_FORMAT:B = 0x12t

.field public static final whitelist test-api DIRECTIONALITY_POP_DIRECTIONAL_ISOLATE:B = 0x16t

.field public static final whitelist test-api DIRECTIONALITY_RIGHT_TO_LEFT:B = 0x1t

.field public static final whitelist test-api DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC:B = 0x2t

.field public static final whitelist test-api DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING:B = 0x10t

.field public static final whitelist test-api DIRECTIONALITY_RIGHT_TO_LEFT_ISOLATE:B = 0x14t

.field public static final whitelist test-api DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE:B = 0x11t

.field public static final whitelist test-api DIRECTIONALITY_SEGMENT_SEPARATOR:B = 0xbt

.field public static final whitelist test-api DIRECTIONALITY_UNDEFINED:B = -0x1t

.field public static final whitelist test-api DIRECTIONALITY_WHITESPACE:B = 0xct

.field public static final whitelist test-api ENCLOSING_MARK:B = 0x7t

.field public static final whitelist test-api END_PUNCTUATION:B = 0x16t

.field static final greylist-max-o ERROR:I = -0x1

.field public static final whitelist test-api FINAL_QUOTE_PUNCTUATION:B = 0x1et

.field public static final whitelist test-api FORMAT:B = 0x10t

.field public static final whitelist test-api INITIAL_QUOTE_PUNCTUATION:B = 0x1dt

.field public static final whitelist test-api LETTER_NUMBER:B = 0xat

.field public static final whitelist test-api LINE_SEPARATOR:B = 0xdt

.field public static final whitelist test-api LOWERCASE_LETTER:B = 0x2t

.field public static final whitelist test-api MATH_SYMBOL:B = 0x19t

.field public static final whitelist test-api MAX_CODE_POINT:I = 0x10ffff

.field public static final whitelist test-api MAX_HIGH_SURROGATE:C = '\udbff'

.field public static final whitelist test-api MAX_LOW_SURROGATE:C = '\udfff'

.field public static final whitelist test-api MAX_RADIX:I = 0x24

.field public static final whitelist test-api MAX_SURROGATE:C = '\udfff'

.field public static final whitelist test-api MAX_VALUE:C = '\uffff'

.field public static final whitelist test-api MIN_CODE_POINT:I = 0x0

.field public static final whitelist test-api MIN_HIGH_SURROGATE:C = '\ud800'

.field public static final whitelist test-api MIN_LOW_SURROGATE:C = '\udc00'

.field public static final whitelist test-api MIN_RADIX:I = 0x2

.field public static final whitelist test-api MIN_SUPPLEMENTARY_CODE_POINT:I = 0x10000

.field public static final whitelist test-api MIN_SURROGATE:C = '\ud800'

.field public static final whitelist test-api MIN_VALUE:C = '\u0000'

.field public static final whitelist test-api MODIFIER_LETTER:B = 0x4t

.field public static final whitelist test-api MODIFIER_SYMBOL:B = 0x1bt

.field public static final whitelist test-api NON_SPACING_MARK:B = 0x6t

.field public static final whitelist test-api OTHER_LETTER:B = 0x5t

.field public static final whitelist test-api OTHER_NUMBER:B = 0xbt

.field public static final whitelist test-api OTHER_PUNCTUATION:B = 0x18t

.field public static final whitelist test-api OTHER_SYMBOL:B = 0x1ct

.field public static final whitelist test-api PARAGRAPH_SEPARATOR:B = 0xet

.field public static final whitelist test-api PRIVATE_USE:B = 0x12t

.field public static final whitelist test-api SIZE:I = 0x10

.field public static final whitelist test-api SPACE_SEPARATOR:B = 0xct

.field public static final whitelist test-api START_PUNCTUATION:B = 0x15t

.field public static final whitelist test-api SURROGATE:B = 0x13t

.field public static final whitelist test-api TITLECASE_LETTER:B = 0x3t

.field public static final whitelist test-api TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api UNASSIGNED:B = 0x0t

.field public static final whitelist test-api UPPERCASE_LETTER:B = 0x1t

.field private static final whitelist serialVersionUID:J = 0x348b47d96b1a2678L


# instance fields
.field private final greylist-max-p value:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 256
    const-string v0, "char"

    invoke-static {v0}, Ljava/lang/Class;->getPrimitiveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 687
    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Ljava/lang/Character;->DIRECTIONALITY:[B

    return-void

    :array_12
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

.method public constructor whitelist test-api <init>(C)V
    .registers 2
    .param p1, "value"    # C
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 9014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9015
    iput-char p1, p0, Ljava/lang/Character;->value:C

    .line 9016
    return-void
.end method

.method public static whitelist test-api charCount(I)I
    .registers 2
    .param p0, "codePoint"    # I

    .line 9328
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0
.end method

.method public static whitelist test-api codePointAt(Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 9376
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 9377
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_21

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p1, v1, :cond_21

    .line 9378
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 9379
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 9380
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 9383
    .end local v1    # "c2":C
    :cond_21
    return v0
.end method

.method public static whitelist test-api codePointAt([CI)I
    .registers 3
    .param p0, "a"    # [C
    .param p1, "index"    # I

    .line 9408
    array-length v0, p0

    invoke-static {p0, p1, v0}, Ljava/lang/Character;->codePointAtImpl([CII)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api codePointAt([CII)I
    .registers 4
    .param p0, "a"    # [C
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 9437
    if-ge p1, p2, :cond_c

    if-ltz p1, :cond_c

    array-length v0, p0

    if-gt p2, v0, :cond_c

    .line 9440
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointAtImpl([CII)I

    move-result v0

    return v0

    .line 9438
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static greylist-max-o codePointAtImpl([CII)I
    .registers 6
    .param p0, "a"    # [C
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 9445
    aget-char v0, p0, p1

    .line 9446
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_19

    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_19

    .line 9447
    aget-char v1, p0, p1

    .line 9448
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 9449
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 9452
    .end local v1    # "c2":C
    :cond_19
    return v0
.end method

.method public static whitelist test-api codePointBefore(Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 9477
    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 9478
    .local v0, "c2":C
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1f

    if-lez p1, :cond_1f

    .line 9479
    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 9480
    .local v1, "c1":C
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 9481
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 9484
    .end local v1    # "c1":C
    :cond_1f
    return v0
.end method

.method public static whitelist test-api codePointBefore([CI)I
    .registers 3
    .param p0, "a"    # [C
    .param p1, "index"    # I

    .line 9509
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/Character;->codePointBeforeImpl([CII)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api codePointBefore([CII)I
    .registers 4
    .param p0, "a"    # [C
    .param p1, "index"    # I
    .param p2, "start"    # I

    .line 9540
    if-le p1, p2, :cond_c

    if-ltz p2, :cond_c

    array-length v0, p0

    if-gt p1, v0, :cond_c

    .line 9543
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointBeforeImpl([CII)I

    move-result v0

    return v0

    .line 9541
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static greylist-max-o codePointBeforeImpl([CII)I
    .registers 6
    .param p0, "a"    # [C
    .param p1, "index"    # I
    .param p2, "start"    # I

    .line 9548
    add-int/lit8 p1, p1, -0x1

    aget-char v0, p0, p1

    .line 9549
    .local v0, "c2":C
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1b

    if-le p1, p2, :cond_1b

    .line 9550
    add-int/lit8 p1, p1, -0x1

    aget-char v1, p0, p1

    .line 9551
    .local v1, "c1":C
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 9552
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 9555
    .end local v1    # "c1":C
    :cond_1b
    return v0
.end method

.method public static whitelist test-api codePointCount(Ljava/lang/CharSequence;II)I
    .registers 6
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 9718
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 9719
    sub-int v0, p2, p1

    .line 9720
    .local v0, "n":I
    move v1, p1

    .local v1, "i":I
    :goto_a
    if-ge v1, p2, :cond_2b

    .line 9721
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_29

    if-ge v2, p2, :cond_29

    .line 9722
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 9723
    add-int/lit8 v0, v0, -0x1

    .line 9724
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_a

    .line 9720
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_29
    move v1, v2

    goto :goto_a

    .line 9727
    .end local v2    # "i":I
    :cond_2b
    return v0
.end method

.method public static whitelist test-api codePointCount([CII)I
    .registers 4
    .param p0, "a"    # [C
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 9750
    array-length v0, p0

    invoke-static {p1, p2, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 9751
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointCountImpl([CII)I

    move-result v0

    return v0
.end method

.method static greylist-max-o codePointCountImpl([CII)I
    .registers 7
    .param p0, "a"    # [C
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 9755
    add-int v0, p1, p2

    .line 9756
    .local v0, "endIndex":I
    move v1, p2

    .line 9757
    .local v1, "n":I
    move v2, p1

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_21

    .line 9758
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-char v2, p0, v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    if-ge v3, v0, :cond_1f

    aget-char v2, p0, v3

    .line 9759
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 9760
    add-int/lit8 v1, v1, -0x1

    .line 9761
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_4

    .line 9757
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_1f
    move v2, v3

    goto :goto_4

    .line 9764
    .end local v3    # "i":I
    :cond_21
    return v1
.end method

.method public static whitelist test-api codePointOf(Ljava/lang/String;)I
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 12374
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 12377
    invoke-static {p0}, Ljava/lang/Character;->codePointOfImpl(Ljava/lang/String;)I

    move-result v0

    .line 12378
    .local v0, "cp":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 12379
    return v0

    .line 12381
    :cond_12
    const/16 v2, 0x20

    :try_start_14
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 12382
    .local v2, "off":I
    if-eq v2, v1, :cond_39

    .line 12383
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    invoke-static {p0, v1, v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/CharSequence;III)I

    move-result v1

    move v0, v1

    .line 12384
    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static {v0}, Ljava/lang/Character;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_35} :catch_38

    if-eqz v1, :cond_39

    .line 12385
    return v0

    .line 12387
    .end local v2    # "off":I
    :catch_38
    move-exception v1

    :cond_39
    nop

    .line 12388
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized character name :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native blacklist codePointOfImpl(Ljava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api compare(CC)I
    .registers 3
    .param p0, "x"    # C
    .param p1, "y"    # C

    .line 12212
    sub-int v0, p0, p1

    return v0
.end method

.method public static whitelist test-api digit(CI)I
    .registers 3
    .param p0, "ch"    # C
    .param p1, "radix"    # I

    .line 11424
    invoke-static {p0, p1}, Ljava/lang/Character;->digit(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api digit(II)I
    .registers 5
    .param p0, "codePoint"    # I
    .param p1, "radix"    # I

    .line 11482
    const/4 v0, 0x2

    const/4 v1, -0x1

    if-lt p1, v0, :cond_3b

    const/16 v0, 0x24

    if-le p1, v0, :cond_9

    goto :goto_3b

    .line 11485
    :cond_9
    const/16 v0, 0x80

    if-ge p0, v0, :cond_36

    .line 11487
    const/4 v0, -0x1

    .line 11488
    .local v0, "result":I
    const/16 v2, 0x30

    if-gt v2, p0, :cond_19

    const/16 v2, 0x39

    if-gt p0, v2, :cond_19

    .line 11489
    add-int/lit8 v0, p0, -0x30

    goto :goto_32

    .line 11490
    :cond_19
    const/16 v2, 0x61

    if-gt v2, p0, :cond_26

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_26

    .line 11491
    add-int/lit8 v2, p0, -0x61

    add-int/lit8 v0, v2, 0xa

    goto :goto_32

    .line 11492
    :cond_26
    const/16 v2, 0x41

    if-gt v2, p0, :cond_32

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_32

    .line 11493
    add-int/lit8 v2, p0, -0x41

    add-int/lit8 v0, v2, 0xa

    .line 11495
    :cond_32
    :goto_32
    if-ge v0, p1, :cond_35

    move v1, v0

    :cond_35
    return v1

    .line 11497
    .end local v0    # "result":I
    :cond_36
    invoke-static {p0, p1}, Ljava/lang/Character;->digitImpl(II)I

    move-result v0

    return v0

    .line 11483
    :cond_3b
    :goto_3b
    return v1
.end method

.method static native greylist-max-o digitImpl(II)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api forDigit(II)C
    .registers 4
    .param p0, "digit"    # I
    .param p1, "radix"    # I

    .line 12011
    const/4 v0, 0x0

    if-ge p0, p1, :cond_1b

    if-gez p0, :cond_6

    goto :goto_1b

    .line 12014
    :cond_6
    const/4 v1, 0x2

    if-lt p1, v1, :cond_1a

    const/16 v1, 0x24

    if-le p1, v1, :cond_e

    goto :goto_1a

    .line 12017
    :cond_e
    const/16 v0, 0xa

    if-ge p0, v0, :cond_16

    .line 12018
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    return v0

    .line 12020
    :cond_16
    add-int/lit8 v0, p0, 0x57

    int-to-char v0, v0

    return v0

    .line 12015
    :cond_1a
    :goto_1a
    return v0

    .line 12012
    :cond_1b
    :goto_1b
    return v0
.end method

.method public static whitelist test-api getDirectionality(C)B
    .registers 2
    .param p0, "ch"    # C

    .line 12065
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    return v0
.end method

.method public static whitelist test-api getDirectionality(I)B
    .registers 4
    .param p0, "codePoint"    # I

    .line 12112
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 12113
    return v1

    .line 12116
    :cond_8
    invoke-static {p0}, Ljava/lang/Character;->getDirectionalityImpl(I)B

    move-result v0

    .line 12117
    .local v0, "directionality":B
    if-ltz v0, :cond_18

    sget-object v2, Ljava/lang/Character;->DIRECTIONALITY:[B

    array-length v2, v2

    if-ge v0, v2, :cond_18

    .line 12118
    sget-object v1, Ljava/lang/Character;->DIRECTIONALITY:[B

    aget-byte v1, v1, v0

    return v1

    .line 12120
    :cond_18
    return v1
.end method

.method static native greylist-max-o getDirectionalityImpl(I)B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api getName(I)Ljava/lang/String;
    .registers 7
    .param p0, "codePoint"    # I

    .line 12319
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 12325
    invoke-static {p0}, Ljava/lang/Character;->getNameImpl(I)Ljava/lang/String;

    move-result-object v0

    .line 12326
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 12327
    return-object v0

    .line 12328
    :cond_d
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v1

    if-nez v1, :cond_15

    .line 12329
    const/4 v1, 0x0

    return-object v1

    .line 12330
    :cond_15
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    .line 12331
    .local v1, "block":Ljava/lang/Character$UnicodeBlock;
    if-eqz v1, :cond_49

    .line 12332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Character$UnicodeBlock;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5f

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 12333
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12332
    return-object v2

    .line 12335
    :cond_49
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 12320
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "block":Ljava/lang/Character$UnicodeBlock;
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12321
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Not a valid Unicode code point: 0x%X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native greylist-max-o getNameImpl(I)Ljava/lang/String;
.end method

.method public static whitelist test-api getNumericValue(C)I
    .registers 2
    .param p0, "ch"    # C

    .line 11540
    invoke-static {p0}, Ljava/lang/Character;->getNumericValue(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getNumericValue(I)I
    .registers 2
    .param p0, "codePoint"    # I

    .line 11581
    const/16 v0, 0x80

    if-ge p0, v0, :cond_27

    .line 11582
    const/16 v0, 0x30

    if-lt p0, v0, :cond_f

    const/16 v0, 0x39

    if-gt p0, v0, :cond_f

    .line 11583
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 11585
    :cond_f
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1a

    .line 11586
    add-int/lit8 v0, p0, -0x57

    return v0

    .line 11588
    :cond_1a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_25

    .line 11589
    add-int/lit8 v0, p0, -0x37

    return v0

    .line 11591
    :cond_25
    const/4 v0, -0x1

    return v0

    .line 11594
    :cond_27
    const v0, 0xff21

    if-lt p0, v0, :cond_37

    const v0, 0xff3a

    if-gt p0, v0, :cond_37

    .line 11595
    const v0, 0xff17

    sub-int v0, p0, v0

    return v0

    .line 11598
    :cond_37
    const v0, 0xff41

    if-lt p0, v0, :cond_47

    const v0, 0xff5a

    if-gt p0, v0, :cond_47

    .line 11599
    const v0, 0xff37

    sub-int v0, p0, v0

    return v0

    .line 11601
    :cond_47
    invoke-static {p0}, Ljava/lang/Character;->getNumericValueImpl(I)I

    move-result v0

    return v0
.end method

.method static native greylist-max-o getNumericValueImpl(I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api getType(C)I
    .registers 2
    .param p0, "ch"    # C

    .line 11926
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getType(I)I
    .registers 3
    .param p0, "codePoint"    # I

    .line 11974
    invoke-static {p0}, Ljava/lang/Character;->getTypeImpl(I)I

    move-result v0

    .line 11976
    .local v0, "type":I
    const/16 v1, 0x10

    if-gt v0, v1, :cond_9

    .line 11977
    return v0

    .line 11979
    :cond_9
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method static native greylist-max-o getTypeImpl(I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api hashCode(C)I
    .registers 1
    .param p0, "value"    # C

    .line 9098
    return p0
.end method

.method public static whitelist test-api highSurrogate(I)C
    .registers 3
    .param p0, "codePoint"    # I

    .line 9583
    ushr-int/lit8 v0, p0, 0xa

    const v1, 0xd7c0

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static whitelist test-api isAlphabetic(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 10533
    invoke-static {p0}, Ljava/lang/Character;->isAlphabeticImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isAlphabeticImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api isBmpCodePoint(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 9194
    ushr-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist test-api isDefined(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 10243
    invoke-static {p0}, Ljava/lang/Character;->isDefined(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isDefined(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 10273
    invoke-static {p0}, Ljava/lang/Character;->isDefinedImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isDefinedImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api isDigit(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 10170
    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isDigit(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 10210
    invoke-static {p0}, Ljava/lang/Character;->isDigitImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isDigitImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api isEmoji(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 11043
    const/16 v0, 0x39

    invoke-static {p0, v0}, Llibcore/icu/ICU;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isEmojiComponent(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 11123
    const/16 v0, 0x3d

    invoke-static {p0, v0}, Llibcore/icu/ICU;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isEmojiModifier(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 11083
    const/16 v0, 0x3b

    invoke-static {p0, v0}, Llibcore/icu/ICU;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isEmojiModifierBase(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 11103
    const/16 v0, 0x3c

    invoke-static {p0, v0}, Llibcore/icu/ICU;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isEmojiPresentation(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 11063
    const/16 v0, 0x3a

    invoke-static {p0, v0}, Llibcore/icu/ICU;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isExtendedPictographic(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 11143
    const/16 v0, 0x40

    invoke-static {p0, v0}, Llibcore/icu/ICU;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isHighSurrogate(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 9239
    const v0, 0xd800

    if-lt p0, v0, :cond_c

    const v0, 0xdc00

    if-ge p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static whitelist test-api isISOControl(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 11857
    invoke-static {p0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isISOControl(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 11878
    const/16 v0, 0x9f

    if-gt p0, v0, :cond_e

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_c

    ushr-int/lit8 v0, p0, 0x5

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static whitelist test-api isIdentifierIgnorable(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 10984
    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorable(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isIdentifierIgnorable(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 11020
    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorableImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isIdentifierIgnorableImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api isIdeographic(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 10557
    invoke-static {p0}, Ljava/lang/Character;->isIdeographicImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isIdeographicImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api isJavaIdentifierPart(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 10684
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isJavaIdentifierPart(I)Z
    .registers 10
    .param p0, "codePoint"    # I

    .line 10726
    const/16 v0, 0x40

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge p0, v0, :cond_17

    .line 10727
    const-wide v7, 0x3ff00100fffc1ffL

    shl-long/2addr v3, p0

    and-long/2addr v3, v7

    cmp-long v0, v3, v1

    if-eqz v0, :cond_16

    move v5, v6

    :cond_16
    return v5

    .line 10728
    :cond_17
    const/16 v0, 0x80

    if-ge p0, v0, :cond_2a

    .line 10729
    add-int/lit8 v0, p0, -0x40

    shl-long/2addr v3, v0

    const-wide v7, -0x7800000178000002L

    and-long/2addr v3, v7

    cmp-long v0, v3, v1

    if-eqz v0, :cond_29

    move v5, v6

    :cond_29
    return v5

    .line 10731
    :cond_2a
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    shl-int v0, v6, v0

    const v1, 0x481077e

    and-int/2addr v0, v1

    if-nez v0, :cond_4c

    if-ltz p0, :cond_3c

    const/16 v0, 0x8

    if-le p0, v0, :cond_4c

    :cond_3c
    const/16 v0, 0xe

    if-lt p0, v0, :cond_44

    const/16 v0, 0x1b

    if-le p0, v0, :cond_4c

    :cond_44
    const/16 v0, 0x7f

    if-lt p0, v0, :cond_4d

    const/16 v0, 0x9f

    if-gt p0, v0, :cond_4d

    :cond_4c
    move v5, v6

    :cond_4d
    return v5
.end method

.method public static whitelist test-api isJavaIdentifierStart(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 10593
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isJavaIdentifierStart(I)Z
    .registers 8
    .param p0, "codePoint"    # I

    .line 10631
    const/16 v0, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p0, v0, :cond_c

    .line 10632
    const/16 v0, 0x24

    if-ne p0, v0, :cond_b

    move v1, v2

    :cond_b
    return v1

    .line 10633
    :cond_c
    const/16 v0, 0x80

    if-ge p0, v0, :cond_23

    .line 10634
    add-int/lit8 v0, p0, -0x40

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v0

    const-wide v5, 0x7fffffe87fffffeL

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_22

    move v1, v2

    :cond_22
    return v1

    .line 10636
    :cond_23
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    shl-int v0, v2, v0

    const v3, 0x480043e

    and-int/2addr v0, v3

    if-eqz v0, :cond_30

    move v1, v2

    :cond_30
    return v1
.end method

.method public static whitelist test-api isJavaLetter(C)Z
    .registers 2
    .param p0, "ch"    # C
    .annotation runtime Ljava/lang/Deprecated;
        since = "1.1"
    .end annotation

    .line 10459
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isJavaLetterOrDigit(C)Z
    .registers 2
    .param p0, "ch"    # C
    .annotation runtime Ljava/lang/Deprecated;
        since = "1.1"
    .end annotation

    .line 10495
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isLetter(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 10316
    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isLetter(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 10360
    invoke-static {p0}, Ljava/lang/Character;->isLetterImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isLetterImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api isLetterOrDigit(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 10392
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isLetterOrDigit(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 10425
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigitImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isLetterOrDigitImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api isLowSurrogate(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 9262
    const v0, 0xdc00

    if-lt p0, v0, :cond_c

    const v0, 0xe000

    if-ge p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static whitelist test-api isLowerCase(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 9927
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isLowerCase(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 9965
    invoke-static {p0}, Ljava/lang/Character;->isLowerCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isLowerCaseImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api isMirrored(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 12147
    invoke-static {p0}, Ljava/lang/Character;->isMirrored(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isMirrored(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 12172
    invoke-static {p0}, Ljava/lang/Character;->isMirroredImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isMirroredImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api isSpace(C)Z
    .registers 5
    .param p0, "ch"    # C
    .annotation runtime Ljava/lang/Deprecated;
        since = "1.1"
    .end annotation

    .line 11642
    const/16 v0, 0x20

    if-gt p0, v0, :cond_15

    const-wide v0, 0x100003600L

    shr-long/2addr v0, p0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public static whitelist test-api isSpaceChar(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 11675
    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isSpaceChar(I)Z
    .registers 4
    .param p0, "codePoint"    # I

    .line 11709
    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p0, v0, :cond_44

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_a

    goto :goto_44

    .line 11712
    :cond_a
    const/16 v0, 0x1000

    const/4 v2, 0x0

    if-ge p0, v0, :cond_10

    .line 11713
    return v2

    .line 11716
    :cond_10
    const/16 v0, 0x1680

    if-eq p0, v0, :cond_43

    const/16 v0, 0x180e

    if-ne p0, v0, :cond_19

    goto :goto_43

    .line 11719
    :cond_19
    const/16 v0, 0x2000

    if-ge p0, v0, :cond_1e

    .line 11720
    return v2

    .line 11722
    :cond_1e
    const v0, 0xffff

    if-gt p0, v0, :cond_3e

    .line 11724
    const/16 v0, 0x200a

    if-le p0, v0, :cond_3d

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_3d

    const/16 v0, 0x2029

    if-eq p0, v0, :cond_3d

    const/16 v0, 0x202f

    if-eq p0, v0, :cond_3d

    const/16 v0, 0x205f

    if-eq p0, v0, :cond_3d

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_3c

    goto :goto_3d

    :cond_3c
    move v1, v2

    :cond_3d
    :goto_3d
    return v1

    .line 11728
    :cond_3e
    invoke-static {p0}, Ljava/lang/Character;->isSpaceCharImpl(I)Z

    move-result v0

    return v0

    .line 11717
    :cond_43
    :goto_43
    return v1

    .line 11710
    :cond_44
    :goto_44
    return v1
.end method

.method static native greylist-max-o isSpaceCharImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api isSupplementaryCodePoint(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 9213
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_a

    const/high16 v0, 0x110000

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static whitelist test-api isSurrogate(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 9286
    const v0, 0xd800

    if-lt p0, v0, :cond_c

    const v0, 0xe000

    if-ge p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static whitelist test-api isSurrogatePair(CC)Z
    .registers 3
    .param p0, "high"    # C
    .param p1, "low"    # C

    .line 9308
    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static whitelist test-api isTitleCase(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 10085
    invoke-static {p0}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isTitleCase(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 10127
    invoke-static {p0}, Ljava/lang/Character;->isTitleCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isTitleCaseImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api isUnicodeIdentifierPart(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 10891
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isUnicodeIdentifierPart(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 10945
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPartImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isUnicodeIdentifierPartImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api isUnicodeIdentifierStart(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 10789
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStart(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isUnicodeIdentifierStart(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 10834
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStartImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isUnicodeIdentifierStartImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api isUpperCase(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 10004
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isUpperCase(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 10040
    invoke-static {p0}, Ljava/lang/Character;->isUpperCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method static native greylist-max-o isUpperCaseImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api isValidCodePoint(I)Z
    .registers 3
    .param p0, "codePoint"    # I

    .line 9178
    ushr-int/lit8 v0, p0, 0x10

    .line 9179
    .local v0, "plane":I
    const/16 v1, 0x11

    if-ge v0, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static whitelist test-api isWhitespace(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 11767
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api isWhitespace(I)Z
    .registers 4
    .param p0, "codePoint"    # I

    .line 11806
    const/16 v0, 0x1c

    const/4 v1, 0x1

    if-lt p0, v0, :cond_9

    const/16 v0, 0x20

    if-le p0, v0, :cond_11

    :cond_9
    const/16 v0, 0x9

    if-lt p0, v0, :cond_12

    const/16 v0, 0xd

    if-gt p0, v0, :cond_12

    .line 11807
    :cond_11
    return v1

    .line 11809
    :cond_12
    const/16 v0, 0x1000

    const/4 v2, 0x0

    if-ge p0, v0, :cond_18

    .line 11810
    return v2

    .line 11813
    :cond_18
    const/16 v0, 0x1680

    if-eq p0, v0, :cond_51

    const/16 v0, 0x180e

    if-ne p0, v0, :cond_21

    goto :goto_51

    .line 11816
    :cond_21
    const/16 v0, 0x2000

    if-ge p0, v0, :cond_26

    .line 11817
    return v2

    .line 11820
    :cond_26
    const/16 v0, 0x2007

    if-eq p0, v0, :cond_50

    const/16 v0, 0x202f

    if-ne p0, v0, :cond_2f

    goto :goto_50

    .line 11823
    :cond_2f
    const v0, 0xffff

    if-gt p0, v0, :cond_4b

    .line 11825
    const/16 v0, 0x200a

    if-le p0, v0, :cond_4a

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_4a

    const/16 v0, 0x2029

    if-eq p0, v0, :cond_4a

    const/16 v0, 0x205f

    if-eq p0, v0, :cond_4a

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_49

    goto :goto_4a

    :cond_49
    move v1, v2

    :cond_4a
    :goto_4a
    return v1

    .line 11829
    :cond_4b
    invoke-static {p0}, Ljava/lang/Character;->isWhitespaceImpl(I)Z

    move-result v0

    return v0

    .line 11821
    :cond_50
    :goto_50
    return v2

    .line 11814
    :cond_51
    :goto_51
    return v1
.end method

.method static native greylist-max-o isWhitespaceImpl(I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api lowSurrogate(I)C
    .registers 3
    .param p0, "codePoint"    # I

    .line 9612
    and-int/lit16 v0, p0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static whitelist test-api offsetByCodePoints(Ljava/lang/CharSequence;II)I
    .registers 7
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    .line 9791
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 9792
    .local v0, "length":I
    if-ltz p1, :cond_66

    if-gt p1, v0, :cond_66

    .line 9796
    move v1, p1

    .line 9797
    .local v1, "x":I
    if-ltz p2, :cond_39

    .line 9799
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v1, v0, :cond_30

    if-ge v2, p2, :cond_30

    .line 9800
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "x":I
    .local v3, "x":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2c

    if-ge v3, v0, :cond_2c

    .line 9801
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 9802
    add-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_2d

    .line 9799
    :cond_2c
    move v1, v3

    .end local v3    # "x":I
    .restart local v1    # "x":I
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 9805
    :cond_30
    if-lt v2, p2, :cond_33

    .line 9808
    .end local v2    # "i":I
    goto :goto_5f

    .line 9806
    .restart local v2    # "i":I
    :cond_33
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 9810
    .end local v2    # "i":I
    :cond_39
    move v2, p2

    .restart local v2    # "i":I
    :goto_3a
    if-lez v1, :cond_5d

    if-gez v2, :cond_5d

    .line 9811
    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_5a

    if-lez v1, :cond_5a

    add-int/lit8 v3, v1, -0x1

    .line 9812
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 9813
    add-int/lit8 v1, v1, -0x1

    .line 9810
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 9816
    :cond_5d
    if-ltz v2, :cond_60

    .line 9820
    .end local v2    # "i":I
    :goto_5f
    return v1

    .line 9817
    .restart local v2    # "i":I
    :cond_60
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 9793
    .end local v1    # "x":I
    .end local v2    # "i":I
    :cond_66
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public static whitelist test-api offsetByCodePoints([CIIII)I
    .registers 6
    .param p0, "a"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "index"    # I
    .param p4, "codePointOffset"    # I

    .line 9858
    array-length v0, p0

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_13

    if-ltz p1, :cond_13

    if-ltz p2, :cond_13

    if-lt p3, p1, :cond_13

    add-int v0, p1, p2

    if-gt p3, v0, :cond_13

    .line 9862
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/Character;->offsetByCodePointsImpl([CIIII)I

    move-result v0

    return v0

    .line 9860
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static greylist-max-o offsetByCodePointsImpl([CIIII)I
    .registers 9
    .param p0, "a"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "index"    # I
    .param p4, "codePointOffset"    # I

    .line 9867
    move v0, p3

    .line 9868
    .local v0, "x":I
    if-ltz p4, :cond_2f

    .line 9869
    add-int v1, p1, p2

    .line 9871
    .local v1, "limit":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v0, v1, :cond_26

    if-ge v2, p4, :cond_26

    .line 9872
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "x":I
    .local v3, "x":I
    aget-char v0, p0, v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_22

    if-ge v3, v1, :cond_22

    aget-char v0, p0, v3

    .line 9873
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 9874
    add-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_23

    .line 9871
    :cond_22
    move v0, v3

    .end local v3    # "x":I
    .restart local v0    # "x":I
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 9877
    :cond_26
    if-lt v2, p4, :cond_29

    .line 9880
    .end local v1    # "limit":I
    .end local v2    # "i":I
    goto :goto_51

    .line 9878
    .restart local v1    # "limit":I
    .restart local v2    # "i":I
    :cond_29
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 9882
    .end local v1    # "limit":I
    .end local v2    # "i":I
    :cond_2f
    move v1, p4

    .local v1, "i":I
    :goto_30
    if-le v0, p1, :cond_4f

    if-gez v1, :cond_4f

    .line 9883
    add-int/lit8 v0, v0, -0x1

    aget-char v2, p0, v0

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4c

    if-le v0, p1, :cond_4c

    add-int/lit8 v2, v0, -0x1

    aget-char v2, p0, v2

    .line 9884
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 9885
    add-int/lit8 v0, v0, -0x1

    .line 9882
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 9888
    :cond_4f
    if-ltz v1, :cond_52

    .line 9892
    .end local v1    # "i":I
    :goto_51
    return v0

    .line 9889
    .restart local v1    # "i":I
    :cond_52
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public static whitelist test-api reverseBytes(C)C
    .registers 3
    .param p0, "ch"    # C

    .line 12281
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, p0, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static whitelist test-api toChars(I[CI)I
    .registers 6
    .param p0, "codePoint"    # I
    .param p1, "dst"    # [C
    .param p2, "dstIndex"    # I

    .line 9647
    invoke-static {p0}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9648
    int-to-char v0, p0

    aput-char v0, p1, p2

    .line 9649
    const/4 v0, 0x1

    return v0

    .line 9650
    :cond_b
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 9651
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->toSurrogates(I[CI)V

    .line 9652
    const/4 v0, 0x2

    return v0

    .line 9654
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9655
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Not a valid Unicode code point: 0x%X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api toChars(I)[C
    .registers 4
    .param p0, "codePoint"    # I

    .line 9676
    invoke-static {p0}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 9677
    int-to-char v0, p0

    const/4 v2, 0x1

    new-array v2, v2, [C

    aput-char v0, v2, v1

    return-object v2

    .line 9678
    :cond_e
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 9679
    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 9680
    .local v0, "result":[C
    invoke-static {p0, v0, v1}, Ljava/lang/Character;->toSurrogates(I[CI)V

    .line 9681
    return-object v0

    .line 9683
    .end local v0    # "result":[C
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9684
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Not a valid Unicode code point: 0x%X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api toCodePoint(CC)I
    .registers 4
    .param p0, "high"    # C
    .param p1, "low"    # C

    .line 9348
    shl-int/lit8 v0, p0, 0xa

    add-int/2addr v0, p1

    const v1, -0x35fdc00

    add-int/2addr v0, v1

    return v0
.end method

.method public static whitelist test-api toLowerCase(C)C
    .registers 2
    .param p0, "ch"    # C

    .line 11174
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static whitelist test-api toLowerCase(I)I
    .registers 2
    .param p0, "codePoint"    # I

    .line 11209
    const/16 v0, 0x41

    if-lt p0, v0, :cond_b

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_b

    .line 11210
    add-int/lit8 v0, p0, 0x20

    return v0

    .line 11214
    :cond_b
    const/16 v0, 0x80

    if-ge p0, v0, :cond_10

    .line 11215
    return p0

    .line 11218
    :cond_10
    invoke-static {p0}, Ljava/lang/Character;->toLowerCaseImpl(I)I

    move-result v0

    return v0
.end method

.method static native greylist-max-o toLowerCaseImpl(I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api toString(C)Ljava/lang/String;
    .registers 2
    .param p0, "c"    # C

    .line 9143
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "codePoint"    # I

    .line 9160
    invoke-static {p0}, Ljava/lang/String;->valueOfCodePoint(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o toSurrogates(I[CI)V
    .registers 5
    .param p0, "codePoint"    # I
    .param p1, "dst"    # [C
    .param p2, "index"    # I

    .line 9690
    add-int/lit8 v0, p2, 0x1

    invoke-static {p0}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v1

    aput-char v1, p1, v0

    .line 9691
    invoke-static {p0}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    aput-char v0, p1, p2

    .line 9692
    return-void
.end method

.method public static whitelist test-api toTitleCase(C)C
    .registers 2
    .param p0, "ch"    # C

    .line 11333
    invoke-static {p0}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static whitelist test-api toTitleCase(I)I
    .registers 2
    .param p0, "codePoint"    # I

    .line 11366
    invoke-static {p0}, Ljava/lang/Character;->toTitleCaseImpl(I)I

    move-result v0

    return v0
.end method

.method static native greylist-max-o toTitleCaseImpl(I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api toUpperCase(C)C
    .registers 2
    .param p0, "ch"    # C

    .line 11253
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static whitelist test-api toUpperCase(I)I
    .registers 2
    .param p0, "codePoint"    # I

    .line 11288
    const/16 v0, 0x61

    if-lt p0, v0, :cond_b

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_b

    .line 11289
    add-int/lit8 v0, p0, -0x20

    return v0

    .line 11293
    :cond_b
    const/16 v0, 0x80

    if-ge p0, v0, :cond_10

    .line 11294
    return p0

    .line 11297
    :cond_10
    invoke-static {p0}, Ljava/lang/Character;->toUpperCaseImpl(I)I

    move-result v0

    return v0
.end method

.method static native greylist-max-o toUpperCaseImpl(I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api valueOf(C)Ljava/lang/Character;
    .registers 2
    .param p0, "c"    # C

    .line 9061
    const/16 v0, 0x7f

    if-gt p0, v0, :cond_9

    .line 9062
    sget-object v0, Ljava/lang/Character$CharacterCache;->cache:[Ljava/lang/Character;

    aget-object v0, v0, p0

    return-object v0

    .line 9064
    :cond_9
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api charValue()C
    .registers 2

    .line 9074
    iget-char v0, p0, Ljava/lang/Character;->value:C

    return v0
.end method

.method public whitelist test-api compareTo(Ljava/lang/Character;)I
    .registers 4
    .param p1, "anotherCharacter"    # Ljava/lang/Character;

    .line 12194
    iget-char v0, p0, Ljava/lang/Character;->value:C

    iget-char v1, p1, Ljava/lang/Character;->value:C

    invoke-static {v0, v1}, Ljava/lang/Character;->compare(CC)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 202
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Ljava/lang/Character;->compareTo(Ljava/lang/Character;)I

    move-result p1

    return p1
.end method

.method public blacklist describeConstable()Ljava/util/Optional;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/constant/DynamicConstantDesc<",
            "Ljava/lang/Character;",
            ">;>;"
        }
    .end annotation

    .line 716
    sget-object v0, Ljava/lang/constant/ConstantDescs;->BSM_EXPLICIT_CAST:Ljava/lang/constant/DirectMethodHandleDesc;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_char:Ljava/lang/constant/ClassDesc;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/constant/ConstantDesc;

    iget-char v3, p0, Ljava/lang/Character;->value:C

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "_"

    invoke-static {v0, v3, v1, v2}, Ljava/lang/constant/DynamicConstantDesc;->ofNamed(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ConstantDesc;)Ljava/lang/constant/DynamicConstantDesc;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 9112
    instance-of v0, p1, Ljava/lang/Character;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 9113
    iget-char v0, p0, Ljava/lang/Character;->value:C

    move-object v2, p1

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    if-ne v0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    .line 9115
    :cond_12
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 9085
    iget-char v0, p0, Ljava/lang/Character;->value:C

    invoke-static {v0}, Ljava/lang/Character;->hashCode(C)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 9129
    iget-char v0, p0, Ljava/lang/Character;->value:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
