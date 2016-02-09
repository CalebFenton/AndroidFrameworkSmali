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
.field private static final ASCII:[C

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

.field private static final REPLACEMENT_CHAR:C = '\ufffd'

.field private static final serialVersionUID:J = -0x5f0f5bc785c44cbeL


# instance fields
.field private final count:I

.field private hashCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 69
    new-instance v1, Ljava/lang/String$CaseInsensitiveComparator;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-direct {v1, v2}, Ljava/lang/String$CaseInsensitiveComparator;-><init>(Ljava/lang/String$CaseInsensitiveComparator;)V

    #@6
    sput-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    #@8
    .line 73
    const/16 v1, 0x80

    #@a
    new-array v1, v1, [C

    #@c
    sput-object v1, Ljava/lang/String;->ASCII:[C

    #@e
    .line 74
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    sget-object v1, Ljava/lang/String;->ASCII:[C

    #@11
    array-length v1, v1

    #@12
    if-ge v0, v1, :cond_0

    #@14
    .line 75
    sget-object v1, Ljava/lang/String;->ASCII:[C

    #@16
    int-to-char v2, v0

    #@17
    aput-char v2, v1, v0

    #@19
    .line 74
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 43
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 87
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
    .param p2, "charCount"    # I
    .param p3, "chars"    # [C

    #@0
    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 237
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
    .param p1, "toCopy"    # Ljava/lang/String;

    #@0
    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 245
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
    .param p1, "stringBuffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 253
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
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 282
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
    .param p1, "data"    # [B
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "DM_DEFAULT_ENCODING"
        }
    .end annotation

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
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
    .param p1, "data"    # [B
    .param p2, "high"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 113
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
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 126
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
    .param p1, "data"    # [B
    .param p2, "high"    # I
    .param p3, "offset"    # I
    .param p4, "byteCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 142
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
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .param p4, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 159
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
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 192
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
    .param p1, "data"    # [B
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 174
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
    .param p1, "data"    # [B
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 202
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
    .param p1, "data"    # [C

    #@0
    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 213
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
    .param p1, "data"    # [C
    .param p2, "offset"    # I
    .param p3, "charCount"    # I

    #@0
    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 227
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
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string/jumbo v1, "Use StringFactory instead."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public static copyValueOf([C)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [C

    #@0
    .prologue
    .line 389
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static copyValueOf([CII)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [C
    .param p1, "start"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 404
    invoke-static {p0, p1, p2}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 1
    .param p1, "arrayLength"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@2
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(III)V

    #@5
    throw v0
.end method

.method private native fastIndexOf(II)I
.end method

.method private native fastSubstring(II)Ljava/lang/String;
.end method

.method private foldCase(C)C
    .locals 1
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 310
    const/16 v0, 0x80

    #@2
    if-ge p1, v0, :cond_1

    #@4
    .line 311
    const/16 v0, 0x41

    #@6
    if-gt v0, p1, :cond_0

    #@8
    const/16 v0, 0x5a

    #@a
    if-gt p1, v0, :cond_0

    #@c
    .line 312
    add-int/lit8 v0, p1, 0x20

    #@e
    int-to-char v0, v0

    #@f
    return v0

    #@10
    .line 314
    :cond_0
    return p1

    #@11
    .line 316
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    #@14
    move-result v0

    #@15
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1528
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1549
    if-nez p1, :cond_0

    #@2
    .line 1550
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "format == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1552
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v3

    #@f
    if-nez p2, :cond_1

    #@11
    const/4 v2, 0x0

    #@12
    :goto_0
    add-int v0, v3, v2

    #@14
    .line 1553
    .local v0, "bufferSize":I
    new-instance v1, Ljava/util/Formatter;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1b
    invoke-direct {v1, v2, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    #@1e
    .line 1554
    .local v1, "f":Ljava/util/Formatter;
    invoke-virtual {v1, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    return-object v2

    #@27
    .line 1552
    .end local v0    # "bufferSize":I
    .end local v1    # "f":Ljava/util/Formatter;
    :cond_1
    array-length v2, p2

    #@28
    mul-int/lit8 v2, v2, 0xa

    #@2a
    goto :goto_0
.end method

.method private indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    #@5
    throw v0
.end method

.method private static indexOf(Ljava/lang/String;Ljava/lang/String;IIC)I
    .locals 9
    .param p0, "haystackString"    # Ljava/lang/String;
    .param p1, "needleString"    # Ljava/lang/String;
    .param p2, "cache"    # I
    .param p3, "md2"    # I
    .param p4, "lastChar"    # C
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "UPM_UNCALLED_PRIVATE_METHOD"
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 1570
    iget v0, p0, Ljava/lang/String;->count:I

    #@3
    .line 1571
    .local v0, "haystackLength":I
    iget v3, p1, Ljava/lang/String;->count:I

    #@5
    .line 1572
    .local v3, "needleLength":I
    add-int/lit8 v4, v3, -0x1

    #@7
    .line 1573
    .local v4, "needleLengthMinus1":I
    move v1, v4

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    #@a
    .line 1574
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v6

    #@e
    if-ne p4, v6, :cond_3

    #@10
    .line 1575
    const/4 v2, 0x0

    #@11
    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_2

    #@13
    .line 1576
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v6

    #@17
    .line 1577
    add-int v7, v1, v2

    #@19
    sub-int/2addr v7, v4

    #@1a
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v7

    #@1e
    .line 1576
    if-eq v6, v7, :cond_1

    #@20
    .line 1578
    const/4 v5, 0x1

    #@21
    .line 1579
    .local v5, "skip":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v6

    #@25
    shl-int v6, v8, v6

    #@27
    and-int/2addr v6, p2

    #@28
    if-nez v6, :cond_0

    #@2a
    .line 1580
    add-int/lit8 v5, v2, 0x1

    #@2c
    .line 1582
    :cond_0
    invoke-static {p3, v5}, Ljava/lang/Math;->max(II)I

    #@2f
    move-result v6

    #@30
    add-int/2addr v1, v6

    #@31
    .line 1583
    goto :goto_0

    #@32
    .line 1575
    .end local v5    # "skip":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_1

    #@35
    .line 1586
    :cond_2
    sub-int v6, v1, v4

    #@37
    return v6

    #@38
    .line 1589
    .end local v2    # "j":I
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@3b
    move-result v6

    #@3c
    shl-int v6, v8, v6

    #@3e
    and-int/2addr v6, p2

    #@3f
    if-nez v6, :cond_4

    #@41
    .line 1590
    add-int/2addr v1, v4

    #@42
    .line 1592
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_0

    #@45
    .line 1594
    :cond_5
    const/4 v6, -0x1

    #@46
    return v6
.end method

.method private indexOfSupplementary(II)I
    .locals 4
    .param p1, "c"    # I
    .param p2, "start"    # I

    #@0
    .prologue
    .line 651
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 652
    const/4 v2, -0x1

    #@7
    return v2

    #@8
    .line 654
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    #@b
    move-result-object v0

    #@c
    .line 655
    .local v0, "chars":[C
    new-instance v1, Ljava/lang/String;

    #@e
    array-length v2, v0

    #@f
    const/4 v3, 0x0

    #@10
    invoke-direct {v1, v3, v2, v0}, Ljava/lang/String;-><init>(II[C)V

    #@13
    .line 656
    .local v1, "needle":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@16
    move-result v2

    #@17
    return v2
.end method

.method private lastIndexOfSupplementary(II)I
    .locals 4
    .param p1, "c"    # I
    .param p2, "start"    # I

    #@0
    .prologue
    .line 797
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 798
    const/4 v2, -0x1

    #@7
    return v2

    #@8
    .line 800
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    #@b
    move-result-object v0

    #@c
    .line 801
    .local v0, "chars":[C
    array-length v2, v0

    #@d
    const/4 v3, 0x0

    #@e
    invoke-static {v3, v2, v0}, Ljava/lang/StringFactory;->newStringFromChars(II[C)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 802
    .local v1, "needle":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    #@15
    move-result v2

    #@16
    return v2
.end method

.method private startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@2
    sub-int v1, p2, p1

    #@4
    invoke-direct {v0, p0, p1, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    #@7
    throw v0
.end method

.method public static valueOf(C)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # C

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 1211
    const/16 v1, 0x80

    #@4
    if-ge p0, v1, :cond_0

    #@6
    .line 1212
    sget-object v1, Ljava/lang/String;->ASCII:[C

    #@8
    invoke-static {p0, v2, v1}, Ljava/lang/StringFactory;->newStringFromChars(II[C)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 1216
    .local v0, "s":Ljava/lang/String;
    :goto_0
    iput p0, v0, Ljava/lang/String;->hashCode:I

    #@e
    .line 1217
    return-object v0

    #@f
    .line 1214
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    new-array v1, v2, [C

    #@11
    aput-char p0, v1, v3

    #@13
    invoke-static {v3, v2, v1}, Ljava/lang/StringFactory;->newStringFromChars(II[C)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0
.end method

.method public static valueOf(D)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # D

    #@0
    .prologue
    .line 1224
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # F

    #@0
    .prologue
    .line 1231
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    .line 1238
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # J

    #@0
    .prologue
    .line 1245
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1258
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    const-string/jumbo v0, "null"

    #@a
    goto :goto_0
.end method

.method public static valueOf(Z)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Z

    #@0
    .prologue
    .line 1271
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
    .locals 2
    .param p0, "data"    # [C

    #@0
    .prologue
    .line 1189
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static valueOf([CII)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [C
    .param p1, "start"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1203
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
    .line 1435
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/lang/String;->count:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 1436
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    #@9
    move-result-object v0

    #@a
    throw v0

    #@b
    .line 1438
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public codePointBefore(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1449
    const/4 v0, 0x1

    #@1
    if-lt p1, v0, :cond_0

    #@3
    iget v0, p0, Ljava/lang/String;->count:I

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 1450
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    #@a
    move-result-object v0

    #@b
    throw v0

    #@c
    .line 1452
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public codePointCount(II)I
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1470
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/lang/String;->count:I

    #@4
    if-le p2, v0, :cond_1

    #@6
    .line 1471
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    #@9
    move-result-object v0

    #@a
    throw v0

    #@b
    .line 1470
    :cond_1
    if-gt p1, p2, :cond_0

    #@d
    .line 1473
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 335
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "string":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public native compareTo(Ljava/lang/String;)I
.end method

.method public compareToIgnoreCase(Ljava/lang/String;)I
    .locals 7
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 355
    iget v5, p0, Ljava/lang/String;->count:I

    #@2
    iget v6, p1, Ljava/lang/String;->count:I

    #@4
    if-ge v5, v6, :cond_1

    #@6
    iget v2, p0, Ljava/lang/String;->count:I

    #@8
    .line 357
    .local v2, "end":I
    :goto_0
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    #@b
    .line 358
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v0

    #@f
    .local v0, "c1":C
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v1

    #@13
    .local v1, "c2":C
    if-ne v0, v1, :cond_2

    #@15
    .line 357
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@17
    goto :goto_1

    #@18
    .line 355
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "end":I
    .end local v3    # "i":I
    :cond_1
    iget v2, p1, Ljava/lang/String;->count:I

    #@1a
    .restart local v2    # "end":I
    goto :goto_0

    #@1b
    .line 361
    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    .restart local v3    # "i":I
    :cond_2
    invoke-direct {p0, v0}, Ljava/lang/String;->foldCase(C)C

    #@1e
    move-result v0

    #@1f
    .line 362
    invoke-direct {p0, v1}, Ljava/lang/String;->foldCase(C)C

    #@22
    move-result v1

    #@23
    .line 363
    sub-int v4, v0, v1

    #@25
    .local v4, "result":I
    if-eqz v4, :cond_0

    #@27
    .line 364
    return v4

    #@28
    .line 367
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v4    # "result":I
    :cond_3
    iget v5, p0, Ljava/lang/String;->count:I

    #@2a
    iget v6, p1, Ljava/lang/String;->count:I

    #@2c
    sub-int/2addr v5, v6

    #@2d
    return v5
.end method

.method public native concat(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1482
    if-nez p1, :cond_0

    #@3
    .line 1483
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "cs == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 1485
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@13
    move-result v1

    #@14
    if-ltz v1, :cond_1

    #@16
    const/4 v0, 0x1

    #@17
    :cond_1
    return v0
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1300
    if-nez p1, :cond_0

    #@3
    .line 1301
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "cs == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 1304
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@f
    move-result v0

    #@10
    .line 1306
    .local v0, "len":I
    iget v1, p0, Ljava/lang/String;->count:I

    #@12
    if-eq v0, v1, :cond_1

    #@14
    .line 1307
    return v2

    #@15
    .line 1310
    :cond_1
    if-nez v0, :cond_2

    #@17
    iget v1, p0, Ljava/lang/String;->count:I

    #@19
    if-nez v1, :cond_2

    #@1b
    .line 1311
    const/4 v1, 0x1

    #@1c
    return v1

    #@1d
    .line 1314
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p0, v2, v1, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@24
    move-result v1

    #@25
    return v1
.end method

.method public contentEquals(Ljava/lang/StringBuffer;)Z
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1283
    monitor-enter p1

    #@2
    .line 1284
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@5
    move-result v1

    #@6
    .line 1285
    .local v1, "size":I
    iget v2, p0, Ljava/lang/String;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-eq v2, v1, :cond_0

    #@a
    monitor-exit p1

    #@b
    .line 1286
    return v3

    #@c
    .line 1288
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->getValue()[C

    #@f
    move-result-object v2

    #@10
    const/4 v3, 0x0

    #@11
    invoke-static {v3, v1, v2}, Ljava/lang/StringFactory;->newStringFromChars(II[C)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 1289
    .local v0, "s":Ljava/lang/String;
    const/4 v2, 0x0

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {p0, v2, v0, v3, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result v2

    #@1b
    monitor-exit p1

    #@1c
    return v2

    #@1d
    .line 1283
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    #@1e
    monitor-exit p1

    #@1f
    throw v2
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 3
    .param p1, "suffix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 415
    iget v0, p0, Ljava/lang/String;->count:I

    #@2
    iget v1, p1, Ljava/lang/String;->count:I

    #@4
    sub-int/2addr v0, v1

    #@5
    iget v1, p1, Ljava/lang/String;->count:I

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {p0, v0, p1, v2, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 424
    if-ne p1, p0, :cond_0

    #@4
    .line 425
    return v6

    #@5
    .line 427
    :cond_0
    instance-of v3, p1, Ljava/lang/String;

    #@7
    if-eqz v3, :cond_5

    #@9
    move-object v2, p1

    #@a
    .line 428
    check-cast v2, Ljava/lang/String;

    #@c
    .line 429
    .local v2, "s":Ljava/lang/String;
    iget v0, p0, Ljava/lang/String;->count:I

    #@e
    .line 430
    .local v0, "count":I
    iget v3, v2, Ljava/lang/String;->count:I

    #@10
    if-eq v3, v0, :cond_1

    #@12
    .line 431
    return v5

    #@13
    .line 439
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@16
    move-result v3

    #@17
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@1a
    move-result v4

    #@1b
    if-eq v3, v4, :cond_2

    #@1d
    .line 440
    return v5

    #@1e
    .line 442
    :cond_2
    const/4 v1, 0x0

    #@1f
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@21
    .line 443
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v3

    #@25
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    #@28
    move-result v4

    #@29
    if-eq v3, v4, :cond_3

    #@2b
    .line 444
    return v5

    #@2c
    .line 442
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 447
    :cond_4
    return v6

    #@30
    .line 449
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :cond_5
    return v5
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 7
    .param p1, "string"    # Ljava/lang/String;
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "ES_COMPARING_PARAMETER_STRING_WITH_EQ"
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 462
    if-ne p1, p0, :cond_0

    #@4
    .line 463
    return v6

    #@5
    .line 465
    :cond_0
    if-eqz p1, :cond_1

    #@7
    iget v3, p0, Ljava/lang/String;->count:I

    #@9
    iget v4, p1, Ljava/lang/String;->count:I

    #@b
    if-eq v3, v4, :cond_2

    #@d
    .line 466
    :cond_1
    return v5

    #@e
    .line 468
    :cond_2
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    iget v3, p0, Ljava/lang/String;->count:I

    #@11
    if-ge v2, v3, :cond_4

    #@13
    .line 469
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v0

    #@17
    .line 470
    .local v0, "c1":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v1

    #@1b
    .line 471
    .local v1, "c2":C
    if-eq v0, v1, :cond_3

    #@1d
    invoke-direct {p0, v0}, Ljava/lang/String;->foldCase(C)C

    #@20
    move-result v3

    #@21
    invoke-direct {p0, v1}, Ljava/lang/String;->foldCase(C)C

    #@24
    move-result v4

    #@25
    if-eq v3, v4, :cond_3

    #@27
    .line 472
    return v5

    #@28
    .line 468
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 475
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_4
    return v6
.end method

.method public getBytes(II[BI)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "data"    # [B
    .param p4, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 499
    if-ltz p1, :cond_0

    #@2
    if-gt p1, p2, :cond_0

    #@4
    iget v3, p0, Ljava/lang/String;->count:I

    #@6
    if-gt p2, v3, :cond_0

    #@8
    .line 501
    move v0, p1

    #@9
    .local v0, "i":I
    move v2, p4

    #@a
    .end local p4    # "index":I
    .local v2, "index":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@c
    .line 502
    add-int/lit8 p4, v2, 0x1

    #@e
    .end local v2    # "index":I
    .restart local p4    # "index":I
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v3

    #@12
    int-to-byte v3, v3

    #@13
    aput-byte v3, p3, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 501
    add-int/lit8 v0, v0, 0x1

    #@17
    move v2, p4

    #@18
    .end local p4    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    #@19
    .line 504
    .end local v2    # "index":I
    .restart local p4    # "index":I
    :catch_0
    move-exception v1

    #@1a
    .line 505
    .local v1, "ignored":Ljava/lang/ArrayIndexOutOfBoundsException;
    array-length v3, p3

    #@1b
    sub-int v4, p2, p1

    #@1d
    invoke-direct {p0, v3, p4, v4}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    #@20
    move-result-object v3

    #@21
    throw v3

    #@22
    .line 508
    .end local v0    # "i":I
    .end local v1    # "ignored":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    #@25
    move-result-object v3

    #@26
    throw v3

    #@27
    .line 498
    .end local p4    # "index":I
    .restart local v0    # "i":I
    .restart local v2    # "index":I
    :cond_1
    return-void
.end method

.method public getBytes()[B
    .locals 1

    #@0
    .prologue
    .line 521
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
    .line 534
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
    .locals 5
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 548
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 549
    .local v2, "canonicalCharsetName":Ljava/lang/String;
    const-string/jumbo v3, "UTF-8"

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 550
    iget v3, p0, Ljava/lang/String;->count:I

    #@10
    invoke-static {p0, v4, v3}, Llibcore/util/CharsetUtils;->toUtf8Bytes(Ljava/lang/String;II)[B

    #@13
    move-result-object v3

    #@14
    return-object v3

    #@15
    .line 551
    :cond_0
    const-string/jumbo v3, "ISO-8859-1"

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_1

    #@1e
    .line 552
    iget v3, p0, Ljava/lang/String;->count:I

    #@20
    invoke-static {p0, v4, v3}, Llibcore/util/CharsetUtils;->toIsoLatin1Bytes(Ljava/lang/String;II)[B

    #@23
    move-result-object v3

    #@24
    return-object v3

    #@25
    .line 553
    :cond_1
    const-string/jumbo v3, "US-ASCII"

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_2

    #@2e
    .line 554
    iget v3, p0, Ljava/lang/String;->count:I

    #@30
    invoke-static {p0, v4, v3}, Llibcore/util/CharsetUtils;->toAsciiBytes(Ljava/lang/String;II)[B

    #@33
    move-result-object v3

    #@34
    return-object v3

    #@35
    .line 555
    :cond_2
    const-string/jumbo v3, "UTF-16BE"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_3

    #@3e
    .line 556
    iget v3, p0, Ljava/lang/String;->count:I

    #@40
    invoke-static {p0, v4, v3}, Llibcore/util/CharsetUtils;->toBigEndianUtf16Bytes(Ljava/lang/String;II)[B

    #@43
    move-result-object v3

    #@44
    return-object v3

    #@45
    .line 558
    :cond_3
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    #@48
    move-result-object v0

    #@49
    .line 559
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    #@4c
    move-result v3

    #@4d
    new-array v1, v3, [B

    #@4f
    .line 560
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@52
    .line 561
    return-object v1
.end method

.method public getChars(II[CI)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "buffer"    # [C
    .param p4, "index"    # I

    #@0
    .prologue
    .line 585
    if-ltz p1, :cond_3

    #@2
    if-gt p1, p2, :cond_3

    #@4
    iget v0, p0, Ljava/lang/String;->count:I

    #@6
    if-gt p2, v0, :cond_3

    #@8
    .line 586
    if-nez p3, :cond_0

    #@a
    .line 587
    new-instance v0, Ljava/lang/NullPointerException;

    #@c
    const-string/jumbo v1, "buffer == null"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 589
    :cond_0
    if-gez p4, :cond_1

    #@15
    .line 590
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@17
    const-string/jumbo v1, "index < 0"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 592
    :cond_1
    sub-int v0, p2, p1

    #@20
    array-length v1, p3

    #@21
    sub-int/2addr v1, p4

    #@22
    if-le v0, v1, :cond_2

    #@24
    .line 593
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@26
    const-string/jumbo v1, "end - start > buffer.length - index"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 595
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    #@30
    .line 584
    return-void

    #@31
    .line 598
    :cond_3
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    #@34
    move-result-object v0

    #@35
    throw v0
.end method

.method native getCharsNoCheck(II[CI)V
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 610
    iget v0, p0, Ljava/lang/String;->hashCode:I

    #@3
    .line 611
    .local v0, "hash":I
    if-nez v0, :cond_2

    #@5
    .line 612
    iget v2, p0, Ljava/lang/String;->count:I

    #@7
    if-nez v2, :cond_0

    #@9
    .line 613
    return v3

    #@a
    .line 615
    :cond_0
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljava/lang/String;->count:I

    #@d
    if-ge v1, v2, :cond_1

    #@f
    .line 616
    mul-int/lit8 v2, v0, 0x1f

    #@11
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v3

    #@15
    add-int v0, v2, v3

    #@17
    .line 615
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 618
    :cond_1
    iput v0, p0, Ljava/lang/String;->hashCode:I

    #@1c
    .line 620
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public indexOf(I)I
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 630
    const v0, 0xffff

    #@4
    if-le p1, v0, :cond_0

    #@6
    .line 631
    invoke-direct {p0, p1, v1}, Ljava/lang/String;->indexOfSupplementary(II)I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 633
    :cond_0
    invoke-direct {p0, p1, v1}, Ljava/lang/String;->fastIndexOf(II)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public indexOf(II)I
    .locals 1
    .param p1, "c"    # I
    .param p2, "start"    # I

    #@0
    .prologue
    .line 642
    const v0, 0xffff

    #@3
    if-le p1, v0, :cond_0

    #@5
    .line 643
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->indexOfSupplementary(II)I

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 645
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->fastIndexOf(II)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 10
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 668
    const/4 v5, 0x0

    #@3
    .line 669
    .local v5, "start":I
    iget v6, p1, Ljava/lang/String;->count:I

    #@5
    .line 670
    .local v6, "subCount":I
    iget v0, p0, Ljava/lang/String;->count:I

    #@7
    .line 671
    .local v0, "_count":I
    if-lez v6, :cond_6

    #@9
    .line 672
    if-le v6, v0, :cond_0

    #@b
    .line 673
    return v9

    #@c
    .line 675
    :cond_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v1

    #@10
    .line 677
    .local v1, "firstChar":C
    :goto_0
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->indexOf(II)I

    #@13
    move-result v2

    #@14
    .line 678
    .local v2, "i":I
    if-eq v2, v9, :cond_1

    #@16
    add-int v7, v6, v2

    #@18
    if-le v7, v0, :cond_2

    #@1a
    .line 679
    :cond_1
    return v9

    #@1b
    .line 681
    :cond_2
    move v3, v2

    #@1c
    .local v3, "o1":I
    const/4 v4, 0x0

    #@1d
    .line 682
    .local v4, "o2":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@1f
    if-ge v4, v6, :cond_4

    #@21
    add-int/lit8 v3, v3, 0x1

    #@23
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v7

    #@27
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v8

    #@2b
    if-eq v7, v8, :cond_3

    #@2d
    .line 685
    :cond_4
    if-ne v4, v6, :cond_5

    #@2f
    .line 686
    return v2

    #@30
    .line 688
    :cond_5
    add-int/lit8 v5, v2, 0x1

    #@32
    goto :goto_0

    #@33
    .line 691
    .end local v1    # "firstChar":C
    .end local v2    # "i":I
    .end local v3    # "o1":I
    .end local v4    # "o2":I
    :cond_6
    if-lez v0, :cond_7

    #@35
    move v0, v7

    #@36
    .end local v0    # "_count":I
    :cond_7
    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 9
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "start"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v8, -0x1

    #@2
    .line 703
    if-gez p2, :cond_0

    #@4
    .line 704
    const/4 p2, 0x0

    #@5
    .line 706
    :cond_0
    iget v5, p1, Ljava/lang/String;->count:I

    #@7
    .line 707
    .local v5, "subCount":I
    iget v0, p0, Ljava/lang/String;->count:I

    #@9
    .line 708
    .local v0, "_count":I
    if-lez v5, :cond_7

    #@b
    .line 709
    add-int v6, v5, p2

    #@d
    if-le v6, v0, :cond_1

    #@f
    .line 710
    return v8

    #@10
    .line 712
    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v1

    #@14
    .line 714
    .local v1, "firstChar":C
    :goto_0
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->indexOf(II)I

    #@17
    move-result v2

    #@18
    .line 715
    .local v2, "i":I
    if-eq v2, v8, :cond_2

    #@1a
    add-int v6, v5, v2

    #@1c
    if-le v6, v0, :cond_3

    #@1e
    .line 716
    :cond_2
    return v8

    #@1f
    .line 718
    :cond_3
    move v3, v2

    #@20
    .local v3, "o1":I
    const/4 v4, 0x0

    #@21
    .line 719
    .local v4, "o2":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@23
    if-ge v4, v5, :cond_5

    #@25
    add-int/lit8 v3, v3, 0x1

    #@27
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v6

    #@2b
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@2e
    move-result v7

    #@2f
    if-eq v6, v7, :cond_4

    #@31
    .line 722
    :cond_5
    if-ne v4, v5, :cond_6

    #@33
    .line 723
    return v2

    #@34
    .line 725
    :cond_6
    add-int/lit8 p2, v2, 0x1

    #@36
    goto :goto_0

    #@37
    .line 728
    .end local v1    # "firstChar":C
    .end local v2    # "i":I
    .end local v3    # "o1":I
    .end local v4    # "o2":I
    :cond_7
    if-ge p2, v0, :cond_8

    #@39
    .end local p2    # "start":I
    :goto_1
    return p2

    #@3a
    .restart local p2    # "start":I
    :cond_8
    move p2, v0

    #@3b
    goto :goto_1
.end method

.method public native intern()Ljava/lang/String;
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 752
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
    .locals 3
    .param p1, "c"    # I

    #@0
    .prologue
    .line 761
    const v2, 0xffff

    #@3
    if-le p1, v2, :cond_0

    #@5
    .line 762
    const v2, 0x7fffffff

    #@8
    invoke-direct {p0, p1, v2}, Ljava/lang/String;->lastIndexOfSupplementary(II)I

    #@b
    move-result v2

    #@c
    return v2

    #@d
    .line 764
    :cond_0
    iget v0, p0, Ljava/lang/String;->count:I

    #@f
    .line 765
    .local v0, "_count":I
    add-int/lit8 v1, v0, -0x1

    #@11
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@13
    .line 766
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v2

    #@17
    if-ne v2, p1, :cond_1

    #@19
    .line 767
    return v1

    #@1a
    .line 765
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 770
    :cond_2
    const/4 v2, -0x1

    #@1e
    return v2
.end method

.method public lastIndexOf(II)I
    .locals 3
    .param p1, "c"    # I
    .param p2, "start"    # I

    #@0
    .prologue
    .line 779
    const v2, 0xffff

    #@3
    if-le p1, v2, :cond_0

    #@5
    .line 780
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->lastIndexOfSupplementary(II)I

    #@8
    move-result v2

    #@9
    return v2

    #@a
    .line 782
    :cond_0
    iget v0, p0, Ljava/lang/String;->count:I

    #@c
    .line 783
    .local v0, "_count":I
    if-ltz p2, :cond_3

    #@e
    .line 784
    if-lt p2, v0, :cond_1

    #@10
    .line 785
    add-int/lit8 p2, v0, -0x1

    #@12
    .line 787
    :cond_1
    move v1, p2

    #@13
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@15
    .line 788
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v2

    #@19
    if-ne v2, p1, :cond_2

    #@1b
    .line 789
    return v1

    #@1c
    .line 787
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 793
    .end local v1    # "i":I
    :cond_3
    const/4 v2, -0x1

    #@20
    return v2
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 815
    iget v0, p0, Ljava/lang/String;->count:I

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 8
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "start"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v7, -0x1

    #@2
    .line 828
    iget v4, p1, Ljava/lang/String;->count:I

    #@4
    .line 829
    .local v4, "subCount":I
    iget v5, p0, Ljava/lang/String;->count:I

    #@6
    if-gt v4, v5, :cond_7

    #@8
    if-ltz p2, :cond_7

    #@a
    .line 830
    if-lez v4, :cond_5

    #@c
    .line 831
    iget v5, p0, Ljava/lang/String;->count:I

    #@e
    sub-int/2addr v5, v4

    #@f
    if-le p2, v5, :cond_0

    #@11
    .line 832
    iget v5, p0, Ljava/lang/String;->count:I

    #@13
    sub-int p2, v5, v4

    #@15
    .line 835
    :cond_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v0

    #@19
    .line 837
    .local v0, "firstChar":C
    :goto_0
    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->lastIndexOf(II)I

    #@1c
    move-result v1

    #@1d
    .line 838
    .local v1, "i":I
    if-ne v1, v7, :cond_1

    #@1f
    .line 839
    return v7

    #@20
    .line 841
    :cond_1
    move v2, v1

    #@21
    .local v2, "o1":I
    const/4 v3, 0x0

    #@22
    .line 842
    .local v3, "o2":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@24
    if-ge v3, v4, :cond_3

    #@26
    add-int/lit8 v2, v2, 0x1

    #@28
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@2b
    move-result v5

    #@2c
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@2f
    move-result v6

    #@30
    if-eq v5, v6, :cond_2

    #@32
    .line 845
    :cond_3
    if-ne v3, v4, :cond_4

    #@34
    .line 846
    return v1

    #@35
    .line 848
    :cond_4
    add-int/lit8 p2, v1, -0x1

    #@37
    goto :goto_0

    #@38
    .line 851
    .end local v0    # "firstChar":C
    .end local v1    # "i":I
    .end local v2    # "o1":I
    .end local v3    # "o2":I
    :cond_5
    iget v5, p0, Ljava/lang/String;->count:I

    #@3a
    if-ge p2, v5, :cond_6

    #@3c
    .end local p2    # "start":I
    :goto_1
    return p2

    #@3d
    .restart local p2    # "start":I
    :cond_6
    iget p2, p0, Ljava/lang/String;->count:I

    #@3f
    goto :goto_1

    #@40
    .line 853
    :cond_7
    return v7
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 861
    iget v0, p0, Ljava/lang/String;->count:I

    #@2
    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regularExpression"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1334
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
    .line 1504
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public regionMatches(ILjava/lang/String;II)Z
    .locals 5
    .param p1, "thisStart"    # I
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 876
    if-nez p2, :cond_0

    #@4
    .line 877
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v2, "string == null"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 879
    :cond_0
    if-ltz p3, :cond_1

    #@f
    iget v1, p2, Ljava/lang/String;->count:I

    #@11
    sub-int/2addr v1, p3

    #@12
    if-ge v1, p4, :cond_2

    #@14
    .line 880
    :cond_1
    return v3

    #@15
    .line 882
    :cond_2
    if-ltz p1, :cond_3

    #@17
    iget v1, p0, Ljava/lang/String;->count:I

    #@19
    sub-int/2addr v1, p1

    #@1a
    if-ge v1, p4, :cond_4

    #@1c
    .line 883
    :cond_3
    return v3

    #@1d
    .line 885
    :cond_4
    if-gtz p4, :cond_5

    #@1f
    .line 886
    return v4

    #@20
    .line 888
    :cond_5
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_7

    #@23
    .line 889
    add-int v1, p1, v0

    #@25
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@28
    move-result v1

    #@29
    add-int v2, p3, v0

    #@2b
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    #@2e
    move-result v2

    #@2f
    if-eq v1, v2, :cond_6

    #@31
    .line 890
    return v3

    #@32
    .line 888
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 893
    :cond_7
    return v4
.end method

.method public regionMatches(ZILjava/lang/String;II)Z
    .locals 8
    .param p1, "ignoreCase"    # Z
    .param p2, "thisStart"    # I
    .param p3, "string"    # Ljava/lang/String;
    .param p4, "start"    # I
    .param p5, "length"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 916
    if-nez p1, :cond_0

    #@3
    .line 917
    invoke-virtual {p0, p2, p3, p4, p5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@6
    move-result v5

    #@7
    return v5

    #@8
    .line 919
    :cond_0
    if-nez p3, :cond_1

    #@a
    .line 920
    new-instance v5, Ljava/lang/NullPointerException;

    #@c
    const-string/jumbo v6, "string == null"

    #@f
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@12
    throw v5

    #@13
    .line 922
    :cond_1
    if-ltz p2, :cond_2

    #@15
    iget v5, p0, Ljava/lang/String;->count:I

    #@17
    sub-int/2addr v5, p2

    #@18
    if-le p5, v5, :cond_3

    #@1a
    .line 923
    :cond_2
    return v7

    #@1b
    .line 925
    :cond_3
    if-ltz p4, :cond_4

    #@1d
    iget v5, p3, Ljava/lang/String;->count:I

    #@1f
    sub-int/2addr v5, p4

    #@20
    if-le p5, v5, :cond_5

    #@22
    .line 926
    :cond_4
    return v7

    #@23
    .line 928
    :cond_5
    add-int v2, p2, p5

    #@25
    .local v2, "end":I
    move v3, p4

    #@26
    .end local p4    # "start":I
    .local v3, "start":I
    move v4, p2

    #@27
    .line 929
    .end local p2    # "thisStart":I
    .local v4, "thisStart":I
    :goto_0
    if-ge v4, v2, :cond_7

    #@29
    .line 930
    add-int/lit8 p2, v4, 0x1

    #@2b
    .end local v4    # "thisStart":I
    .restart local p2    # "thisStart":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@2e
    move-result v0

    #@2f
    .line 931
    .local v0, "c1":C
    add-int/lit8 p4, v3, 0x1

    #@31
    .end local v3    # "start":I
    .restart local p4    # "start":I
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v1

    #@35
    .line 932
    .local v1, "c2":C
    if-eq v0, v1, :cond_6

    #@37
    invoke-direct {p0, v0}, Ljava/lang/String;->foldCase(C)C

    #@3a
    move-result v5

    #@3b
    invoke-direct {p0, v1}, Ljava/lang/String;->foldCase(C)C

    #@3e
    move-result v6

    #@3f
    if-eq v5, v6, :cond_6

    #@41
    .line 933
    return v7

    #@42
    :cond_6
    move v3, p4

    #@43
    .end local p4    # "start":I
    .restart local v3    # "start":I
    move v4, p2

    #@44
    .end local p2    # "thisStart":I
    .restart local v4    # "thisStart":I
    goto :goto_0

    #@45
    .line 936
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_7
    const/4 v5, 0x1

    #@46
    return v5
.end method

.method public replace(CC)Ljava/lang/String;
    .locals 5
    .param p1, "oldChar"    # C
    .param p2, "newChar"    # C

    #@0
    .prologue
    .line 943
    const/4 v3, 0x0

    #@1
    .line 944
    .local v3, "s":Ljava/lang/String;
    iget v0, p0, Ljava/lang/String;->count:I

    #@3
    .line 945
    .local v0, "_count":I
    const/4 v1, 0x0

    #@4
    .line 946
    .local v1, "copied":Z
    const/4 v2, 0x0

    #@5
    .end local v3    # "s":Ljava/lang/String;
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@7
    .line 947
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v4

    #@b
    if-ne v4, p1, :cond_1

    #@d
    .line 948
    if-nez v1, :cond_0

    #@f
    .line 949
    invoke-static {p0}, Ljava/lang/StringFactory;->newStringFromString(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 950
    .local v3, "s":Ljava/lang/String;
    const/4 v1, 0x1

    #@14
    .line 952
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v2, p2}, Ljava/lang/String;->setCharAt(IC)V

    #@17
    .line 946
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 956
    :cond_2
    if-eqz v1, :cond_3

    #@1c
    :goto_1
    return-object v3

    #@1d
    :cond_3
    move-object v3, p0

    #@1e
    goto :goto_1
.end method

.method public replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 11
    .param p1, "target"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v9, -0x1

    #@2
    .line 968
    if-nez p1, :cond_0

    #@4
    .line 969
    new-instance v8, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v9, "target == null"

    #@9
    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v8

    #@d
    .line 971
    :cond_0
    if-nez p2, :cond_1

    #@f
    .line 972
    new-instance v8, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v9, "replacement == null"

    #@14
    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v8

    #@18
    .line 975
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1b
    move-result-object v7

    #@1c
    .line 976
    .local v7, "targetString":Ljava/lang/String;
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@1f
    move-result v1

    #@20
    .line 977
    .local v1, "matchStart":I
    if-ne v1, v9, :cond_2

    #@22
    .line 979
    return-object p0

    #@23
    .line 982
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 985
    .local v2, "replacementString":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@2a
    move-result v6

    #@2b
    .line 986
    .local v6, "targetLength":I
    if-nez v6, :cond_4

    #@2d
    .line 990
    iget v8, p0, Ljava/lang/String;->count:I

    #@2f
    iget v9, p0, Ljava/lang/String;->count:I

    #@31
    add-int/lit8 v9, v9, 0x1

    #@33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@36
    move-result v10

    #@37
    mul-int/2addr v9, v10

    #@38
    add-int v4, v8, v9

    #@3a
    .line 991
    .local v4, "resultLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@3f
    .line 992
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 993
    const/4 v0, 0x0

    #@43
    .local v0, "i":I
    :goto_0
    iget v8, p0, Ljava/lang/String;->count:I

    #@45
    if-eq v0, v8, :cond_3

    #@47
    .line 994
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@4a
    move-result v8

    #@4b
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4e
    .line 995
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    .line 993
    add-int/lit8 v0, v0, 0x1

    #@53
    goto :goto_0

    #@54
    .line 997
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v8

    #@58
    return-object v8

    #@59
    .line 1000
    .end local v0    # "i":I
    .end local v3    # "result":Ljava/lang/StringBuilder;
    .end local v4    # "resultLength":I
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    #@5b
    iget v8, p0, Ljava/lang/String;->count:I

    #@5d
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    #@60
    .line 1001
    .restart local v3    # "result":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    #@61
    .line 1005
    .local v5, "searchStart":I
    :cond_5
    move v0, v5

    #@62
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_6

    #@64
    .line 1006
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@67
    move-result v8

    #@68
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6b
    .line 1005
    add-int/lit8 v0, v0, 0x1

    #@6d
    goto :goto_1

    #@6e
    .line 1009
    :cond_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    .line 1011
    add-int v5, v1, v6

    #@73
    .line 1012
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@76
    move-result v1

    #@77
    if-ne v1, v9, :cond_5

    #@79
    .line 1015
    move v0, v5

    #@7a
    :goto_2
    iget v8, p0, Ljava/lang/String;->count:I

    #@7c
    if-ge v0, v8, :cond_7

    #@7e
    .line 1016
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@81
    move-result v8

    #@82
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@85
    .line 1015
    add-int/lit8 v0, v0, 0x1

    #@87
    goto :goto_2

    #@88
    .line 1018
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v8

    #@8c
    return-object v8
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "regularExpression"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1353
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
    .param p1, "regularExpression"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1372
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
    .param p1, "regularExpression"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1392
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
    .param p1, "regularExpression"    # Ljava/lang/String;
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 1410
    invoke-static {p1, p0, p2}, Ljava/util/regex/Splitter;->fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1411
    .local v0, "result":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .end local v0    # "result":[Ljava/lang/String;
    :goto_0
    return-object v0

    #@7
    .restart local v0    # "result":[Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1, p0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1033
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "start"    # I

    #@0
    .prologue
    .line 1050
    iget v0, p1, Ljava/lang/String;->count:I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, p2, p1, v1, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1424
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I

    #@0
    .prologue
    .line 1061
    if-nez p1, :cond_0

    #@2
    .line 1062
    return-object p0

    #@3
    .line 1064
    :cond_0
    if-ltz p1, :cond_1

    #@5
    iget v0, p0, Ljava/lang/String;->count:I

    #@7
    if-gt p1, v0, :cond_1

    #@9
    .line 1065
    iget v0, p0, Ljava/lang/String;->count:I

    #@b
    sub-int/2addr v0, p1

    #@c
    invoke-direct {p0, p1, v0}, Ljava/lang/String;->fastSubstring(II)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 1067
    :cond_1
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    #@14
    move-result-object v0

    #@15
    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1080
    if-nez p1, :cond_0

    #@2
    iget v0, p0, Ljava/lang/String;->count:I

    #@4
    if-ne p2, v0, :cond_0

    #@6
    .line 1081
    return-object p0

    #@7
    .line 1084
    :cond_0
    if-ltz p1, :cond_1

    #@9
    if-gt p1, p2, :cond_1

    #@b
    iget v0, p0, Ljava/lang/String;->count:I

    #@d
    if-gt p2, v0, :cond_1

    #@f
    .line 1085
    sub-int v0, p2, p1

    #@11
    invoke-direct {p0, p1, v0}, Ljava/lang/String;->fastSubstring(II)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 1087
    :cond_1
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    #@19
    move-result-object v0

    #@1a
    throw v0
.end method

.method public native toCharArray()[C
.end method

.method public toLowerCase()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0}, Ljava/lang/CaseMapper;->toLowerCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

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
    .line 1123
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
    .line 1131
    return-object p0
.end method

.method public toUpperCase()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1141
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Ljava/lang/String;->count:I

    #@6
    invoke-static {v0, p0, v1}, Ljava/lang/CaseMapper;->toUpperCase(Ljava/util/Locale;Ljava/lang/String;I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1158
    iget v0, p0, Ljava/lang/String;->count:I

    #@2
    invoke-static {p1, p0, v0}, Ljava/lang/CaseMapper;->toUpperCase(Ljava/util/Locale;Ljava/lang/String;I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public trim()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    .line 1166
    const/4 v2, 0x0

    #@3
    .local v2, "start":I
    iget v3, p0, Ljava/lang/String;->count:I

    #@5
    add-int/lit8 v1, v3, -0x1

    #@7
    .line 1167
    .local v1, "last":I
    move v0, v1

    #@8
    .line 1168
    .local v0, "end":I
    :goto_0
    if-gt v2, v0, :cond_0

    #@a
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v3

    #@e
    if-gt v3, v4, :cond_0

    #@10
    .line 1169
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1171
    :cond_0
    :goto_1
    if-lt v0, v2, :cond_1

    #@15
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v3

    #@19
    if-gt v3, v4, :cond_1

    #@1b
    .line 1172
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_1

    #@1e
    .line 1174
    :cond_1
    if-nez v2, :cond_2

    #@20
    if-ne v0, v1, :cond_2

    #@22
    .line 1175
    return-object p0

    #@23
    .line 1177
    :cond_2
    sub-int v3, v0, v2

    #@25
    add-int/lit8 v3, v3, 0x1

    #@27
    invoke-direct {p0, v2, v3}, Ljava/lang/String;->fastSubstring(II)Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    return-object v3
.end method
