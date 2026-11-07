.class public final Ljava/lang/String;
.super Ljava/lang/Object;
.source "String.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/constant/Constable;
.implements Ljava/lang/constant/ConstantDesc;


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
        "Ljava/lang/Comparable<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/constant/Constable;",
        "Ljava/lang/constant/ConstantDesc;"
    }
.end annotation


# static fields
.field public static final whitelist test-api CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist CODER_LATIN1:B = 0x0t

.field static final blacklist CODER_UTF16:B = 0x1t

.field static final blacklist COMPACT_STRINGS:Z = true

.field public static final blacklist EMPTY:Ljava/lang/String; = ""

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = -0x5f0f5bc785c44cbeL


# instance fields
.field private final greylist count:I

.field private greylist-max-r hash:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 233
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    sput-object v0, Ljava/lang/String;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 1521
    new-instance v0, Ljava/lang/String$CaseInsensitiveComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/String$CaseInsensitiveComparator;-><init>(Ljava/lang/String-IA;)V

    sput-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor greylist <init>(II[C)V
    .registers 6
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "value"    # [C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "original"    # Ljava/lang/String;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/StringBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>([B)V
    .registers 4
    .param p1, "bytes"    # [B

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([BB)V
    .registers 5
    .param p1, "value"    # [B
    .param p2, "coder"    # B

    .line 4425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4429
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>([BI)V
    .registers 5
    .param p1, "ascii"    # [B
    .param p2, "hibyte"    # I
    .annotation runtime Ljava/lang/Deprecated;
        since = "1.1"
    .end annotation

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>([BII)V
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>([BIII)V
    .registers 7
    .param p1, "ascii"    # [B
    .param p2, "hibyte"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
        since = "1.1"
    .end annotation

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>([BIILjava/lang/String;)V
    .registers 7
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>([BIILjava/nio/charset/Charset;)V
    .registers 7
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>([BLjava/lang/String;)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>([BLjava/nio/charset/Charset;)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>([C)V
    .registers 4
    .param p1, "value"    # [C

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>([CII)V
    .registers 6
    .param p1, "value"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>([III)V
    .registers 6
    .param p1, "codePoints"    # [I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist checkBoundsBeginEnd(III)V
    .registers 6
    .param p0, "begin"    # I
    .param p1, "end"    # I
    .param p2, "length"    # I

    .line 4518
    if-ltz p0, :cond_7

    if-gt p0, p1, :cond_7

    if-gt p1, p2, :cond_7

    .line 4522
    return-void

    .line 4519
    :cond_7
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist checkBoundsOffCount(III)V
    .registers 6
    .param p0, "offset"    # I
    .param p1, "count"    # I
    .param p2, "length"    # I

    .line 4479
    if-ltz p0, :cond_9

    if-ltz p1, :cond_9

    sub-int v0, p2, p1

    if-gt p0, v0, :cond_9

    .line 4483
    return-void

    .line 4480
    :cond_9
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist checkIndex(II)V
    .registers 5
    .param p0, "index"    # I
    .param p1, "length"    # I

    .line 4453
    if-ltz p0, :cond_5

    if-ge p0, p1, :cond_5

    .line 4457
    return-void

    .line 4454
    :cond_5
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist checkOffset(II)V
    .registers 5
    .param p0, "offset"    # I
    .param p1, "length"    # I

    .line 4464
    if-ltz p0, :cond_5

    if-gt p0, p1, :cond_5

    .line 4468
    return-void

    .line 4465
    :cond_5
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api copyValueOf([C)Ljava/lang/String;
    .registers 2
    .param p0, "data"    # [C

    .line 4178
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static whitelist test-api copyValueOf([CII)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [C
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 4167
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private native blacklist doRepeat(I)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o doReplace(CC)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o fastSubstring(II)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native blacklist fillBytesLatin1([BI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native blacklist fillBytesUTF16([BI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static varargs whitelist test-api format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 4037
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 4078
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 14
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 2182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2183
    .local v0, "sourceLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2184
    .local v1, "targetLength":I
    const/4 v2, -0x1

    if-lt p2, v0, :cond_f

    .line 2185
    if-nez v1, :cond_e

    move v2, v0

    :cond_e
    return v2

    .line 2187
    :cond_f
    if-gez p2, :cond_12

    .line 2188
    const/4 p2, 0x0

    .line 2190
    :cond_12
    if-nez v1, :cond_15

    .line 2191
    return p2

    .line 2194
    :cond_15
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2195
    .local v3, "first":C
    sub-int v4, v0, v1

    .line 2197
    .local v4, "max":I
    move v5, p2

    .local v5, "i":I
    :goto_1d
    if-gt v5, v4, :cond_50

    .line 2199
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v3, :cond_30

    .line 2200
    :goto_25
    add-int/lit8 v5, v5, 0x1

    if-gt v5, v4, :cond_30

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v3, :cond_30

    goto :goto_25

    .line 2204
    :cond_30
    if-gt v5, v4, :cond_4d

    .line 2205
    add-int/lit8 v6, v5, 0x1

    .line 2206
    .local v6, "j":I
    add-int v7, v6, v1

    add-int/lit8 v7, v7, -0x1

    .line 2207
    .local v7, "end":I
    const/4 v8, 0x1

    .local v8, "k":I
    :goto_39
    if-ge v6, v7, :cond_4a

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2208
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_4a

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_39

    .line 2210
    .end local v8    # "k":I
    :cond_4a
    if-ne v6, v7, :cond_4d

    .line 2212
    return v5

    .line 2197
    .end local v6    # "j":I
    .end local v7    # "end":I
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 2216
    .end local v5    # "i":I
    :cond_50
    return v2
.end method

.method static blacklist indexOf([BBILjava/lang/String;I)I
    .registers 8
    .param p0, "src"    # [B
    .param p1, "srcCoder"    # B
    .param p2, "srcCount"    # I
    .param p3, "tgtStr"    # Ljava/lang/String;
    .param p4, "fromIndex"    # I

    .line 2234
    invoke-virtual {p3}, Ljava/lang/String;->coder()B

    move-result v0

    .line 2235
    .local v0, "tgtCoder":B
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 2237
    .local v1, "tgtCount":I
    const/4 v2, -0x1

    if-lt p4, p2, :cond_f

    .line 2238
    if-nez v1, :cond_e

    move v2, p2

    :cond_e
    return v2

    .line 2240
    :cond_f
    if-gez p4, :cond_12

    .line 2241
    const/4 p4, 0x0

    .line 2243
    :cond_12
    if-nez v1, :cond_15

    .line 2244
    return p4

    .line 2246
    :cond_15
    if-le v1, p2, :cond_18

    .line 2247
    return v2

    .line 2249
    :cond_18
    if-ne p1, v0, :cond_26

    .line 2250
    if-nez p1, :cond_21

    .line 2254
    invoke-static {p0, p2, p3, v1, p4}, Ljava/lang/StringLatin1;->indexOf([BILjava/lang/String;II)I

    move-result v2

    goto :goto_25

    .line 2255
    :cond_21
    invoke-static {p0, p2, p3, v1, p4}, Ljava/lang/StringUTF16;->indexOf([BILjava/lang/String;II)I

    move-result v2

    .line 2250
    :goto_25
    return v2

    .line 2257
    :cond_26
    if-nez p1, :cond_2d

    .line 2260
    invoke-static {p0, p2, p3, v1, p4}, Ljava/lang/StringLatin1;->indexOfUTF16([BILjava/lang/String;II)I

    move-result v2

    return v2

    .line 2264
    :cond_2d
    invoke-static {p0, p2, p3, v1, p4}, Ljava/lang/StringUTF16;->indexOfLatin1([BILjava/lang/String;II)I

    move-result v2

    return v2
.end method

.method private blacklist indexOfNonWhitespace()I
    .registers 2

    .line 3605
    invoke-static {p0}, Ljava/lang/StringUTF16;->indexOfNonWhitespace(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private greylist-max-o indexOfSupplementary(II)I
    .registers 8
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .line 2000
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2001
    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    .line 2002
    .local v0, "hi":C
    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v1

    .line 2003
    .local v1, "lo":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 2004
    .local v2, "max":I
    move v3, p2

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_29

    .line 2005
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_26

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_26

    .line 2006
    return v3

    .line 2004
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 2010
    .end local v0    # "hi":C
    .end local v1    # "lo":C
    .end local v2    # "max":I
    .end local v3    # "i":I
    :cond_29
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist test-api join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 5
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3149
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3150
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3151
    new-instance v0, Ljava/util/StringJoiner;

    invoke-direct {v0, p0}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 3152
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 3153
    .local v2, "cs":Ljava/lang/CharSequence;
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 3154
    .end local v2    # "cs":Ljava/lang/CharSequence;
    goto :goto_f

    .line 3155
    :cond_1f
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs whitelist test-api join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "elements"    # [Ljava/lang/CharSequence;

    .line 3103
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3104
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3106
    new-instance v0, Ljava/util/StringJoiner;

    invoke-direct {v0, p0}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 3107
    .local v0, "joiner":Ljava/util/StringJoiner;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, p1, v2

    .line 3108
    .local v3, "cs":Ljava/lang/CharSequence;
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 3107
    .end local v3    # "cs":Ljava/lang/CharSequence;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 3110
    :cond_17
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$indent$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "spaces"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 3590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$indent$1(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 3592
    invoke-virtual {p0}, Ljava/lang/String;->stripLeading()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$indent$2(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "n"    # I
    .param p1, "s"    # Ljava/lang/String;

    .line 3594
    neg-int v0, p0

    invoke-direct {p1}, Ljava/lang/String;->indexOfNonWhitespace()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$stripIndent$3(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "outdent"    # I
    .param p1, "line"    # Ljava/lang/String;

    .line 3718
    invoke-direct {p1}, Ljava/lang/String;->indexOfNonWhitespace()I

    move-result v0

    .line 3719
    .local v0, "firstNonWhitespace":I
    invoke-direct {p1}, Ljava/lang/String;->lastIndexOfNonWhitespace()I

    move-result v1

    .line 3720
    .local v1, "lastNonWhitespace":I
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3721
    .local v2, "incidentalWhitespace":I
    if-le v0, v1, :cond_11

    .line 3722
    const-string v3, ""

    goto :goto_15

    :cond_11
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3721
    :goto_15
    return-object v3
.end method

.method private static greylist-max-o lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 16
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 2326
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2327
    .local v0, "sourceLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2328
    .local v1, "targetLength":I
    sub-int v2, v0, v1

    .line 2329
    .local v2, "rightIndex":I
    const/4 v3, -0x1

    if-gez p2, :cond_e

    .line 2330
    return v3

    .line 2332
    :cond_e
    if-le p2, v2, :cond_11

    .line 2333
    move p2, v2

    .line 2336
    :cond_11
    if-nez v1, :cond_14

    .line 2337
    return p2

    .line 2340
    :cond_14
    add-int/lit8 v4, v1, -0x1

    .line 2341
    .local v4, "strLastIndex":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2342
    .local v5, "strLastChar":C
    add-int/lit8 v6, v1, -0x1

    .line 2343
    .local v6, "min":I
    add-int v7, v6, p2

    .line 2347
    .local v7, "i":I
    :goto_1e
    if-lt v7, v6, :cond_29

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v5, :cond_29

    .line 2348
    add-int/lit8 v7, v7, -0x1

    goto :goto_1e

    .line 2350
    :cond_29
    if-ge v7, v6, :cond_2c

    .line 2351
    return v3

    .line 2353
    :cond_2c
    add-int/lit8 v8, v7, -0x1

    .line 2354
    .local v8, "j":I
    add-int/lit8 v9, v1, -0x1

    sub-int v9, v8, v9

    .line 2355
    .local v9, "start":I
    add-int/lit8 v10, v4, -0x1

    .line 2357
    .local v10, "k":I
    :goto_34
    if-le v8, v9, :cond_4a

    .line 2358
    add-int/lit8 v11, v8, -0x1

    .end local v8    # "j":I
    .local v11, "j":I
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v12, v10, -0x1

    .end local v10    # "k":I
    .local v12, "k":I
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v8, v10, :cond_47

    .line 2359
    add-int/lit8 v7, v7, -0x1

    .line 2360
    goto :goto_1e

    .line 2358
    :cond_47
    move v8, v11

    move v10, v12

    goto :goto_34

    .line 2363
    .end local v11    # "j":I
    .end local v12    # "k":I
    .restart local v8    # "j":I
    .restart local v10    # "k":I
    :cond_4a
    add-int/lit8 v3, v9, 0x1

    return v3
.end method

.method static blacklist lastIndexOf([BBILjava/lang/String;I)I
    .registers 9
    .param p0, "src"    # [B
    .param p1, "srcCoder"    # B
    .param p2, "srcCount"    # I
    .param p3, "tgtStr"    # Ljava/lang/String;
    .param p4, "fromIndex"    # I

    .line 2382
    invoke-virtual {p3}, Ljava/lang/String;->coder()B

    move-result v0

    .line 2383
    .local v0, "tgtCoder":B
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 2388
    .local v1, "tgtCount":I
    sub-int v2, p2, v1

    .line 2389
    .local v2, "rightIndex":I
    if-le p4, v2, :cond_d

    .line 2390
    move p4, v2

    .line 2392
    :cond_d
    if-gez p4, :cond_11

    .line 2393
    const/4 v3, -0x1

    return v3

    .line 2396
    :cond_11
    if-nez v1, :cond_14

    .line 2397
    return p4

    .line 2399
    :cond_14
    if-ne p1, v0, :cond_22

    .line 2400
    if-nez p1, :cond_1d

    .line 2404
    invoke-static {p0, p2, p3, v1, p4}, Ljava/lang/StringLatin1;->lastIndexOf([BILjava/lang/String;II)I

    move-result v3

    goto :goto_21

    .line 2405
    :cond_1d
    invoke-static {p0, p2, p3, v1, p4}, Ljava/lang/StringUTF16;->lastIndexOf([BILjava/lang/String;II)I

    move-result v3

    .line 2400
    :goto_21
    return v3

    .line 2407
    :cond_22
    if-nez p1, :cond_29

    .line 2410
    invoke-static {p0, p2, p3, v1, p4}, Ljava/lang/StringLatin1;->lastIndexOfUTF16([BILjava/lang/String;II)I

    move-result v3

    return v3

    .line 2414
    :cond_29
    invoke-static {p0, p2, p3, v1, p4}, Ljava/lang/StringUTF16;->lastIndexOfLatin1([BILjava/lang/String;II)I

    move-result v3

    return v3
.end method

.method static greylist-max-r lastIndexOf([CII[CIII)I
    .registers 19
    .param p0, "source"    # [C
    .param p1, "sourceOffset"    # I
    .param p2, "sourceCount"    # I
    .param p3, "target"    # [C
    .param p4, "targetOffset"    # I
    .param p5, "targetCount"    # I
    .param p6, "fromIndex"    # I

    .line 2437
    move/from16 v0, p6

    sub-int v1, p2, p5

    .line 2438
    .local v1, "rightIndex":I
    const/4 v2, -0x1

    if-gez v0, :cond_8

    .line 2439
    return v2

    .line 2441
    :cond_8
    if-le v0, v1, :cond_b

    .line 2442
    move v0, v1

    .line 2445
    .end local p6    # "fromIndex":I
    .local v0, "fromIndex":I
    :cond_b
    if-nez p5, :cond_e

    .line 2446
    return v0

    .line 2449
    :cond_e
    add-int v3, p4, p5

    add-int/lit8 v3, v3, -0x1

    .line 2450
    .local v3, "strLastIndex":I
    aget-char v4, p3, v3

    .line 2451
    .local v4, "strLastChar":C
    add-int v5, p1, p5

    add-int/lit8 v5, v5, -0x1

    .line 2452
    .local v5, "min":I
    add-int v6, v5, v0

    .line 2456
    .local v6, "i":I
    :goto_1a
    if-lt v6, v5, :cond_23

    aget-char v7, p0, v6

    if-eq v7, v4, :cond_23

    .line 2457
    add-int/lit8 v6, v6, -0x1

    goto :goto_1a

    .line 2459
    :cond_23
    if-ge v6, v5, :cond_26

    .line 2460
    return v2

    .line 2462
    :cond_26
    add-int/lit8 v7, v6, -0x1

    .line 2463
    .local v7, "j":I
    add-int/lit8 v8, p5, -0x1

    sub-int v8, v7, v8

    .line 2464
    .local v8, "start":I
    add-int/lit8 v9, v3, -0x1

    .line 2466
    .local v9, "k":I
    :goto_2e
    if-le v7, v8, :cond_40

    .line 2467
    add-int/lit8 v10, v7, -0x1

    .end local v7    # "j":I
    .local v10, "j":I
    aget-char v7, p0, v7

    add-int/lit8 v11, v9, -0x1

    .end local v9    # "k":I
    .local v11, "k":I
    aget-char v9, p3, v9

    if-eq v7, v9, :cond_3d

    .line 2468
    add-int/lit8 v6, v6, -0x1

    .line 2469
    goto :goto_1a

    .line 2467
    :cond_3d
    move v7, v10

    move v9, v11

    goto :goto_2e

    .line 2472
    .end local v10    # "j":I
    .end local v11    # "k":I
    .restart local v7    # "j":I
    .restart local v9    # "k":I
    :cond_40
    sub-int v2, v8, p1

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private blacklist lastIndexOfNonWhitespace()I
    .registers 2

    .line 3615
    invoke-static {p0}, Ljava/lang/StringUTF16;->lastIndexOfNonWhitespace(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private greylist-max-o lastIndexOfSupplementary(II)I
    .registers 7
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .line 2100
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2101
    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    .line 2102
    .local v0, "hi":C
    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v1

    .line 2103
    .local v1, "lo":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2104
    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_2c

    .line 2105
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_29

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_29

    .line 2106
    return v2

    .line 2104
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 2110
    .end local v0    # "hi":C
    .end local v1    # "lo":C
    .end local v2    # "i":I
    :cond_2c
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o nonSyncContentEquals(Ljava/lang/AbstractStringBuilder;)Z
    .registers 7
    .param p1, "sb"    # Ljava/lang/AbstractStringBuilder;

    .line 1321
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1322
    .local v0, "len":I
    invoke-virtual {p1}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 1323
    return v2

    .line 1343
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1d

    .line 1344
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v1}, Ljava/lang/AbstractStringBuilder;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1a

    .line 1345
    return v2

    .line 1343
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1349
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist outdent(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 3730
    .local p0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v0, 0x7fffffff

    .line 3731
    .local v0, "outdent":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3732
    .local v2, "line":Ljava/lang/String;
    invoke-direct {v2}, Ljava/lang/String;->indexOfNonWhitespace()I

    move-result v3

    .line 3733
    .local v3, "leadingWhitespace":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_21

    .line 3734
    invoke-static {v0, v3}, Ljava/lang/Integer;->min(II)I

    move-result v0

    .line 3736
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "leadingWhitespace":I
    :cond_21
    goto :goto_7

    .line 3737
    :cond_22
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3738
    .local v1, "lastLine":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isBlank()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 3739
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Integer;->min(II)I

    move-result v0

    .line 3741
    :cond_3c
    return v0
.end method

.method public static whitelist test-api valueOf(C)Ljava/lang/String;
    .registers 4
    .param p0, "c"    # C

    .line 4210
    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    aput-char p0, v1, v2

    invoke-static {v2, v0, v1}, Ljava/lang/StringFactory;->newStringFromChars(II[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api valueOf(D)Ljava/lang/String;
    .registers 3
    .param p0, "d"    # D

    .line 4267
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api valueOf(F)Ljava/lang/String;
    .registers 2
    .param p0, "f"    # F

    .line 4253
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api valueOf(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .line 4225
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api valueOf(J)Ljava/lang/String;
    .registers 3
    .param p0, "l"    # J

    .line 4239
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 4112
    if-nez p0, :cond_5

    const-string v0, "null"

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public static whitelist test-api valueOf(Z)Ljava/lang/String;
    .registers 2
    .param p0, "b"    # Z

    .line 4190
    if-eqz p0, :cond_5

    const-string v0, "true"

    goto :goto_7

    :cond_5
    const-string v0, "false"

    :goto_7
    return-object v0
.end method

.method public static whitelist test-api valueOf([C)Ljava/lang/String;
    .registers 2
    .param p0, "data"    # [C

    .line 4126
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static whitelist test-api valueOf([CII)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [C
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 4150
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method static blacklist valueOfCodePoint(I)Ljava/lang/String;
    .registers 4
    .param p0, "codePoint"    # I

    .line 4497
    invoke-static {p0}, Ljava/lang/StringLatin1;->canEncode(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4498
    new-instance v0, Ljava/lang/String;

    int-to-char v1, p0

    invoke-static {v1}, Ljava/lang/StringLatin1;->toBytes(C)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BB)V

    return-object v0

    .line 4499
    :cond_12
    invoke-static {p0}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    .line 4500
    new-instance v0, Ljava/lang/String;

    int-to-char v2, p0

    invoke-static {v2}, Ljava/lang/StringUTF16;->toBytes(C)[B

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BB)V

    return-object v0

    .line 4501
    :cond_24
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 4502
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/StringUTF16;->toBytesSupplementary(I)[B

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BB)V

    return-object v0

    .line 4505
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 4506
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


# virtual methods
.method public native whitelist test-api charAt(I)C
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist test-api chars()Ljava/util/stream/IntStream;
    .registers 3

    .line 3944
    new-instance v0, Ljava/lang/StringUTF16$CharsSpliteratorForString;

    const/16 v1, 0x400

    invoke-direct {v0, p0, v1}, Ljava/lang/StringUTF16$CharsSpliteratorForString;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api codePointAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 897
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/String;->checkIndex(II)V

    .line 898
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api codePointBefore(I)I
    .registers 4
    .param p1, "index"    # I

    .line 924
    add-int/lit8 v0, p1, -0x1

    .line 925
    .local v0, "i":I
    if-ltz v0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 935
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    return v1

    .line 926
    :cond_f
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1
.end method

.method public whitelist test-api codePointCount(II)I
    .registers 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 960
    if-ltz p1, :cond_f

    if-gt p1, p2, :cond_f

    .line 961
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_f

    .line 971
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0

    .line 962
    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api codePoints()Ljava/util/stream/IntStream;
    .registers 3

    .line 3969
    new-instance v0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;

    const/16 v1, 0x400

    invoke-direct {v0, p0, v1}, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method blacklist coder()B
    .registers 2

    .line 4445
    iget v0, p0, Ljava/lang/String;->count:I

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

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

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .line 134
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public native whitelist test-api compareTo(Ljava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist test-api compareToIgnoreCase(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1587
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public native whitelist test-api concat(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist test-api contains(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 2732
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api contentEquals(Ljava/lang/CharSequence;)Z
    .registers 7
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 1373
    instance-of v0, p1, Ljava/lang/AbstractStringBuilder;

    if-eqz v0, :cond_1d

    .line 1374
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_15

    .line 1375
    monitor-enter p1

    .line 1376
    :try_start_9
    move-object v0, p1

    check-cast v0, Ljava/lang/AbstractStringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/String;->nonSyncContentEquals(Ljava/lang/AbstractStringBuilder;)Z

    move-result v0

    monitor-exit p1

    return v0

    .line 1377
    :catchall_12
    move-exception v0

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    throw v0

    .line 1379
    :cond_15
    move-object v0, p1

    check-cast v0, Ljava/lang/AbstractStringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/String;->nonSyncContentEquals(Ljava/lang/AbstractStringBuilder;)Z

    move-result v0

    return v0

    .line 1383
    :cond_1d
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 1384
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1387
    :cond_26
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1388
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_32

    .line 1389
    return v2

    .line 1403
    :cond_32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    if-ge v1, v0, :cond_43

    .line 1404
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_40

    .line 1406
    return v2

    .line 1403
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 1409
    .end local v1    # "i":I
    :cond_43
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api contentEquals(Ljava/lang/StringBuffer;)Z
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 1317
    invoke-virtual {p0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public blacklist describeConstable()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4534
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api endsWith(Ljava/lang/String;)Z
    .registers 4
    .param p1, "suffix"    # Ljava/lang/String;

    .line 1866
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "anObject"    # Ljava/lang/Object;

    .line 1270
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1271
    return v0

    .line 1273
    :cond_4
    instance-of v1, p1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 1282
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 1283
    .local v1, "anotherString":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1284
    .local v3, "n":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_2b

    .line 1285
    const/4 v4, 0x0

    .line 1286
    .local v4, "i":I
    :goto_17
    add-int/lit8 v5, v3, -0x1

    .end local v3    # "n":I
    .local v5, "n":I
    if-eqz v3, :cond_2a

    .line 1287
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v3, v6, :cond_26

    .line 1288
    return v2

    .line 1289
    :cond_26
    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_17

    .line 1291
    :cond_2a
    return v0

    .line 1295
    .end local v1    # "anotherString":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_2b
    return v2
.end method

.method public whitelist test-api equalsIgnoreCase(Ljava/lang/String;)Z
    .registers 9
    .param p1, "anotherString"    # Ljava/lang/String;

    .line 1442
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1443
    .local v5, "len":I
    const/4 v6, 0x1

    if-ne p0, p1, :cond_9

    move-object v3, p1

    goto :goto_21

    .line 1446
    :cond_9
    if-eqz p1, :cond_1f

    .line 1445
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_1d

    .line 1446
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    .end local p1    # "anotherString":Ljava/lang/String;
    .local v3, "anotherString":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_21

    .line 1445
    .end local v3    # "anotherString":Ljava/lang/String;
    .restart local p1    # "anotherString":Ljava/lang/String;
    :cond_1d
    move-object v3, p1

    .end local p1    # "anotherString":Ljava/lang/String;
    .restart local v3    # "anotherString":Ljava/lang/String;
    goto :goto_20

    .line 1446
    .end local v3    # "anotherString":Ljava/lang/String;
    .restart local p1    # "anotherString":Ljava/lang/String;
    :cond_1f
    move-object v3, p1

    .end local p1    # "anotherString":Ljava/lang/String;
    .restart local v3    # "anotherString":Ljava/lang/String;
    :cond_20
    :goto_20
    const/4 v6, 0x0

    .line 1443
    :goto_21
    return v6
.end method

.method blacklist fillBytes([BIB)V
    .registers 7
    .param p1, "dst"    # [B
    .param p2, "dstBegin"    # I
    .param p3, "coder"    # B

    .line 4394
    const/4 v0, 0x1

    if-ne p3, v0, :cond_13

    .line 4395
    shl-int/lit8 v1, p2, 0x1

    .line 4396
    .local v1, "fromIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    shl-int/lit8 v0, v2, 0x1

    array-length v2, p1

    invoke-static {v1, v0, v2}, Ljava/lang/String;->checkBoundsOffCount(III)V

    .line 4397
    invoke-direct {p0, p1, v1}, Ljava/lang/String;->fillBytesUTF16([BI)V

    .line 4398
    .end local v1    # "fromIndex":I
    goto :goto_1e

    .line 4399
    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    array-length v1, p1

    invoke-static {p2, v0, v1}, Ljava/lang/String;->checkBoundsOffCount(III)V

    .line 4400
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->fillBytesLatin1([BI)V

    .line 4402
    :goto_1e
    return-void
.end method

.method public varargs whitelist test-api formatted([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "args"    # [Ljava/lang/Object;

    .line 4099
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getBytes(II[BI)V
    .registers 10
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [B
    .param p4, "dstBegin"    # I
    .annotation runtime Ljava/lang/Deprecated;
        since = "1.1"
    .end annotation

    .line 1134
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/lang/String;->checkBoundsBeginEnd(III)V

    .line 1135
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    sub-int v0, p2, p1

    array-length v1, p3

    invoke-static {p4, v0, v1}, Ljava/lang/String;->checkBoundsOffCount(III)V

    .line 1145
    move v0, p4

    .line 1146
    .local v0, "j":I
    move v1, p2

    .line 1147
    .local v1, "n":I
    move v2, p1

    .line 1149
    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_23

    .line 1150
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "j":I
    .local v3, "j":I
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p3, v0

    move v0, v3

    move v2, v4

    goto :goto_13

    .line 1153
    .end local v3    # "j":I
    .end local v4    # "i":I
    .restart local v0    # "j":I
    .restart local v2    # "i":I
    :cond_23
    return-void
.end method

.method public whitelist test-api getBytes()[B
    .registers 2

    .line 1247
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getBytes(Ljava/lang/String;)[B
    .registers 3
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1177
    if-eqz p1, :cond_b

    .line 1182
    invoke-static {p1}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 1177
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getBytes(Ljava/nio/charset/Charset;)[B
    .registers 6
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 1205
    if-eqz p1, :cond_4d

    .line 1210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1211
    .local v0, "len":I
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    .line 1212
    .local v1, "name":Ljava/lang/String;
    const-string v2, "UTF-8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    .line 1213
    invoke-static {p0, v3, v0}, Llibcore/util/CharsetUtils;->toUtf8Bytes(Ljava/lang/String;II)[B

    move-result-object v2

    return-object v2

    .line 1214
    :cond_18
    const-string v2, "ISO-8859-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1215
    invoke-static {p0, v3, v0}, Llibcore/util/CharsetUtils;->toIsoLatin1Bytes(Ljava/lang/String;II)[B

    move-result-object v2

    return-object v2

    .line 1216
    :cond_25
    const-string v2, "US-ASCII"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1217
    invoke-static {p0, v3, v0}, Llibcore/util/CharsetUtils;->toAsciiBytes(Ljava/lang/String;II)[B

    move-result-object v2

    return-object v2

    .line 1218
    :cond_32
    const-string v2, "UTF-16BE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1219
    invoke-static {p0, v3, v0}, Llibcore/util/CharsetUtils;->toBigEndianUtf16Bytes(Ljava/lang/String;II)[B

    move-result-object v2

    return-object v2

    .line 1222
    :cond_3f
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1223
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    new-array v3, v3, [B

    .line 1224
    .local v3, "bytes":[B
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1225
    return-object v3

    .line 1205
    .end local v0    # "len":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "bytes":[B
    :cond_4d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getChars(II[CI)V
    .registers 10
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    .line 1044
    if-eqz p3, :cond_81

    .line 1048
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/lang/String;->checkBoundsBeginEnd(III)V

    .line 1058
    if-ltz p4, :cond_68

    .line 1063
    array-length v0, p3

    const-string v1, ", dst.length="

    if-gt p4, v0, :cond_46

    .line 1068
    sub-int v0, p2, p1

    .line 1069
    .local v0, "n":I
    array-length v2, p3

    sub-int/2addr v2, p4

    if-gt v0, v2, :cond_1a

    .line 1075
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    .line 1077
    return-void

    .line 1070
    :cond_1a
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "n > dst.length - dstBegin. n="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "dstBegin="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1064
    .end local v0    # "n":I
    :cond_46
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dstBegin > dst.length. dstBegin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1059
    :cond_68
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dstBegin < 0. dstBegin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :cond_81
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getChars([CI)V
    .registers 5
    .param p1, "dst"    # [C
    .param p2, "dstBegin"    # I

    .line 1009
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    .line 1010
    return-void
.end method

.method native greylist-max-r getCharsNoCheck(II[CI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 1883
    iget v0, p0, Ljava/lang/String;->hash:I

    .line 1890
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1891
    .local v1, "len":I
    if-nez v0, :cond_1a

    if-lez v1, :cond_1a

    .line 1892
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_18

    .line 1893
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v0, v3, v4

    .line 1892
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1895
    .end local v2    # "i":I
    :cond_18
    iput v0, p0, Ljava/lang/String;->hash:I

    .line 1898
    :cond_1a
    return v0
.end method

.method public whitelist test-api indent(I)Ljava/lang/String;
    .registers 6
    .param p1, "n"    # I

    .line 3584
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    .line 3585
    return-object v1

    .line 3587
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->lines()Ljava/util/stream/Stream;

    move-result-object v0

    .line 3588
    .local v0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/lang/String;>;"
    if-lez p1, :cond_1f

    .line 3589
    const-string v2, " "

    invoke-virtual {v2, p1}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v2

    .line 3590
    .local v2, "spaces":Ljava/lang/String;
    new-instance v3, Ljava/lang/String$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Ljava/lang/String$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 3591
    .end local v2    # "spaces":Ljava/lang/String;
    goto :goto_38

    :cond_1f
    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_2d

    .line 3592
    new-instance v2, Ljava/lang/String$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/String$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    goto :goto_38

    .line 3593
    :cond_2d
    if-gez p1, :cond_38

    .line 3594
    new-instance v2, Ljava/lang/String$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Ljava/lang/String$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 3596
    :cond_38
    :goto_38
    const-string v2, "\n"

    invoke-static {v2, v1, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public whitelist test-api indexOf(I)I
    .registers 3
    .param p1, "ch"    # I

    .line 1926
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api indexOf(II)I
    .registers 7
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .line 1974
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1975
    .local v0, "max":I
    const/4 v1, -0x1

    if-gez p2, :cond_9

    .line 1976
    const/4 p2, 0x0

    goto :goto_c

    .line 1977
    :cond_9
    if-lt p2, v0, :cond_c

    .line 1979
    return v1

    .line 1982
    :cond_c
    :goto_c
    const/high16 v2, 0x10000

    if-ge p1, v2, :cond_1e

    .line 1985
    move v2, p2

    .local v2, "i":I
    :goto_11
    if-ge v2, v0, :cond_1d

    .line 1986
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_1a

    .line 1987
    return v2

    .line 1985
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1990
    .end local v2    # "i":I
    :cond_1d
    return v1

    .line 1992
    :cond_1e
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->indexOfSupplementary(II)I

    move-result v1

    return v1
.end method

.method public whitelist test-api indexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 2141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/String;I)I
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 2168
    invoke-static {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public native whitelist test-api intern()Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist test-api isBlank()Z
    .registers 3

    .line 3504
    invoke-direct {p0}, Ljava/lang/String;->indexOfNonWhitespace()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 828
    iget v0, p0, Ljava/lang/String;->count:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api lastIndexOf(I)I
    .registers 3
    .param p1, "ch"    # I

    .line 2038
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api lastIndexOf(II)I
    .registers 5
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .line 2081
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1c

    .line 2084
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2085
    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_1a

    .line 2086
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_17

    .line 2087
    return v0

    .line 2085
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 2090
    :cond_1a
    const/4 v1, -0x1

    return v1

    .line 2092
    .end local v0    # "i":I
    :cond_1c
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->lastIndexOfSupplementary(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 2283
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/String;I)I
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 2308
    invoke-static {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api length()I
    .registers 3

    .line 802
    const/4 v0, 0x1

    .line 806
    .local v0, "STRING_COMPRESSION_ENABLED":Z
    iget v1, p0, Ljava/lang/String;->count:I

    ushr-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public whitelist test-api lines()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3543
    invoke-static {p0}, Ljava/lang/StringUTF16;->lines(Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api matches(Ljava/lang/String;)Z
    .registers 3
    .param p1, "regex"    # Ljava/lang/String;

    .line 2720
    invoke-static {p1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api offsetByCodePoints(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    .line 996
    if-ltz p1, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_d

    .line 999
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0

    .line 997
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api regionMatches(ILjava/lang/String;II)Z
    .registers 12
    .param p1, "toffset"    # I
    .param p2, "other"    # Ljava/lang/String;
    .param p3, "ooffset"    # I
    .param p4, "len"    # I

    .line 1632
    const/4 v0, 0x0

    if-ltz p3, :cond_37

    if-ltz p1, :cond_37

    int-to-long v1, p1

    .line 1633
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    int-to-long v5, p4

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_37

    int-to-long v1, p3

    .line 1634
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    int-to-long v5, p4

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_1e

    goto :goto_37

    .line 1666
    :cond_1e
    :goto_1e
    add-int/lit8 v1, p4, -0x1

    .end local p4    # "len":I
    .local v1, "len":I
    if-lez p4, :cond_35

    .line 1667
    add-int/lit8 p4, p1, 0x1

    .end local p1    # "toffset":I
    .local p4, "toffset":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    add-int/lit8 v2, p3, 0x1

    .end local p3    # "ooffset":I
    .local v2, "ooffset":I
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-eq p1, p3, :cond_31

    .line 1668
    return v0

    .line 1667
    :cond_31
    move p1, p4

    move p4, v1

    move p3, v2

    goto :goto_1e

    .line 1672
    .end local v2    # "ooffset":I
    .end local p4    # "toffset":I
    .restart local p1    # "toffset":I
    .restart local p3    # "ooffset":I
    :cond_35
    const/4 p4, 0x1

    return p4

    .line 1635
    .end local v1    # "len":I
    .local p4, "len":I
    :cond_37
    :goto_37
    return v0
.end method

.method public whitelist test-api regionMatches(ZILjava/lang/String;II)Z
    .registers 13
    .param p1, "ignoreCase"    # Z
    .param p2, "toffset"    # I
    .param p3, "other"    # Ljava/lang/String;
    .param p4, "ooffset"    # I
    .param p5, "len"    # I

    .line 1727
    if-nez p1, :cond_7

    .line 1728
    invoke-virtual {p0, p2, p3, p4, p5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0

    .line 1731
    :cond_7
    const/4 v0, 0x0

    if-ltz p4, :cond_57

    if-ltz p2, :cond_57

    int-to-long v1, p2

    .line 1732
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    int-to-long v5, p5

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_57

    int-to-long v1, p4

    .line 1733
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    int-to-long v5, p5

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_25

    goto :goto_57

    .line 1749
    :cond_25
    :goto_25
    add-int/lit8 v1, p5, -0x1

    .end local p5    # "len":I
    .local v1, "len":I
    if-lez p5, :cond_55

    .line 1750
    add-int/lit8 p5, p2, 0x1

    .end local p2    # "toffset":I
    .local p5, "toffset":I
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 1751
    .local p2, "c1":C
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "ooffset":I
    .local v2, "ooffset":I
    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result p4

    .line 1752
    .local p4, "c2":C
    if-ne p2, p4, :cond_38

    .line 1753
    goto :goto_50

    .line 1755
    :cond_38
    if-eqz p1, :cond_54

    .line 1760
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 1761
    .local v3, "u1":C
    invoke-static {p4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 1762
    .local v4, "u2":C
    if-ne v3, v4, :cond_45

    .line 1763
    goto :goto_50

    .line 1769
    :cond_45
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-ne v5, v6, :cond_54

    .line 1770
    nop

    .line 1749
    .end local v3    # "u1":C
    .end local v4    # "u2":C
    .end local p2    # "c1":C
    .end local p4    # "c2":C
    :goto_50
    move p2, p5

    move p5, v1

    move p4, v2

    goto :goto_25

    .line 1773
    .restart local p2    # "c1":C
    .restart local p4    # "c2":C
    :cond_54
    return v0

    .line 1775
    .end local v2    # "ooffset":I
    .end local p5    # "toffset":I
    .local p2, "toffset":I
    .local p4, "ooffset":I
    :cond_55
    const/4 p5, 0x1

    return p5

    .line 1734
    .end local v1    # "len":I
    .local p5, "len":I
    :cond_57
    :goto_57
    return v0
.end method

.method public whitelist test-api repeat(I)Ljava/lang/String;
    .registers 6
    .param p1, "count"    # I

    .line 4317
    if-ltz p1, :cond_46

    .line 4320
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 4321
    return-object p0

    .line 4325
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4326
    .local v0, "len":I
    if-eqz v0, :cond_43

    if-nez p1, :cond_f

    goto :goto_43

    .line 4338
    :cond_f
    const v1, 0x7fffffff

    div-int/2addr v1, p1

    if-lt v1, v0, :cond_1a

    .line 4355
    invoke-direct {p0, p1}, Ljava/lang/String;->doRepeat(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4339
    :cond_1a
    new-instance v1, Ljava/lang/OutOfMemoryError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Repeating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes String "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " times will produce a String exceeding maximum size."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4327
    :cond_43
    :goto_43
    const-string v1, ""

    return-object v1

    .line 4318
    .end local v0    # "len":I
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api replace(CC)Ljava/lang/String;
    .registers 6
    .param p1, "oldChar"    # C
    .param p2, "newChar"    # C

    .line 2667
    if-eq p1, p2, :cond_17

    .line 2675
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2676
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 2677
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_14

    .line 2678
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->doReplace(CC)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2676
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2683
    .end local v0    # "len":I
    .end local v1    # "i":I
    :cond_17
    return-object p0
.end method

.method public whitelist test-api replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 13
    .param p1, "target"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # Ljava/lang/CharSequence;

    .line 2839
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2840
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2843
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2844
    .local v0, "tgtStr":Ljava/lang/String;
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2845
    .local v1, "replStr":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2846
    .local v2, "j":I
    if-gez v2, :cond_15

    .line 2847
    return-object p0

    .line 2849
    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2850
    .local v3, "tgtLen":I
    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2851
    .local v4, "tgtLen1":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 2853
    .local v5, "thisLen":I
    sub-int v6, v5, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    .line 2854
    .local v6, "newLenHint":I
    if-ltz v6, :cond_4e

    .line 2857
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2858
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 2860
    .local v8, "i":I
    :cond_31
    invoke-virtual {v7, p0, v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2861
    add-int v8, v2, v3

    .line 2862
    if-ge v2, v5, :cond_45

    add-int v9, v2, v4

    invoke-virtual {p0, v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    move v2, v9

    if-gtz v9, :cond_31

    .line 2863
    :cond_45
    invoke-virtual {v7, p0, v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 2855
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "i":I
    :cond_4e
    new-instance v7, Ljava/lang/OutOfMemoryError;

    invoke-direct {v7}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v7
.end method

.method public whitelist test-api replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 2822
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 2777
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/String;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/String;
    .registers 2
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;

    .line 4548
    return-object p0
.end method

.method public whitelist test-api split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "regex"    # Ljava/lang/String;

    .line 3074
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api split(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 5
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .line 3022
    invoke-static {p1, p0, p2}, Ljava/util/regex/Pattern;->fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 3023
    .local v0, "fast":[Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 3024
    return-object v0

    .line 3027
    :cond_7
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api startsWith(Ljava/lang/String;)Z
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    .line 1851
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api startsWith(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "toffset"    # I

    .line 1798
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1800
    .local v0, "pc":I
    const/4 v1, 0x0

    if-ltz p2, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    if-le p2, v2, :cond_f

    goto :goto_28

    .line 1827
    :cond_f
    const/4 v2, 0x0

    .line 1828
    .local v2, "po":I
    :goto_10
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_26

    .line 1829
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "toffset":I
    .local v3, "toffset":I
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "po":I
    .local v4, "po":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq p2, v2, :cond_23

    .line 1830
    return v1

    .line 1829
    :cond_23
    move p2, v3

    move v2, v4

    goto :goto_10

    .line 1834
    .end local v3    # "toffset":I
    .end local v4    # "po":I
    .restart local v2    # "po":I
    .restart local p2    # "toffset":I
    :cond_26
    const/4 v1, 0x1

    return v1

    .line 1801
    .end local v2    # "po":I
    :cond_28
    :goto_28
    return v1
.end method

.method public whitelist test-api strip()Ljava/lang/String;
    .registers 3

    .line 3415
    invoke-static {p0}, Ljava/lang/StringUTF16;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3417
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_8

    move-object v1, p0

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method

.method public whitelist test-api stripIndent()Ljava/lang/String;
    .registers 10

    .line 3708
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3709
    .local v0, "length":I
    const-string v1, ""

    if-nez v0, :cond_9

    .line 3710
    return-object v1

    .line 3712
    :cond_9
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3713
    .local v2, "lastChar":C
    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1b

    const/16 v3, 0xd

    if-ne v2, v3, :cond_19

    goto :goto_1b

    :cond_19
    move v3, v4

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v3, 0x1

    .line 3714
    .local v3, "optOut":Z
    :goto_1c
    invoke-virtual {p0}, Ljava/lang/String;->lines()Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v5

    .line 3715
    .local v5, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_27

    goto :goto_2b

    :cond_27
    invoke-static {v5}, Ljava/lang/String;->outdent(Ljava/util/List;)I

    move-result v4

    .line 3716
    .local v4, "outdent":I
    :goto_2b
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Ljava/lang/String$$ExternalSyntheticLambda3;

    invoke-direct {v7, v4}, Ljava/lang/String$$ExternalSyntheticLambda3;-><init>(I)V

    .line 3717
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 3724
    const-string v7, "\n"

    if-eqz v3, :cond_3e

    move-object v8, v7

    goto :goto_3f

    :cond_3e
    move-object v8, v1

    :goto_3f
    invoke-static {v7, v1, v8}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3716
    return-object v1
.end method

.method public whitelist test-api stripLeading()Ljava/lang/String;
    .registers 3

    .line 3450
    invoke-static {p0}, Ljava/lang/StringUTF16;->stripLeading(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3452
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_8

    move-object v1, p0

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method

.method public whitelist test-api stripTrailing()Ljava/lang/String;
    .registers 3

    .line 3485
    invoke-static {p0}, Ljava/lang/StringUTF16;->stripTrailing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3487
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_8

    move-object v1, p0

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 2587
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api substring(I)Ljava/lang/String;
    .registers 4
    .param p1, "beginIndex"    # I

    .line 2494
    if-ltz p1, :cond_17

    .line 2497
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    .line 2498
    .local v0, "subLen":I
    if-ltz v0, :cond_11

    .line 2501
    if-nez p1, :cond_c

    .line 2502
    return-object p0

    .line 2509
    :cond_c
    invoke-direct {p0, p1, v0}, Ljava/lang/String;->fastSubstring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2499
    :cond_11
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2495
    .end local v0    # "subLen":I
    :cond_17
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public whitelist test-api substring(II)Ljava/lang/String;
    .registers 6
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 2536
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2537
    .local v0, "length":I
    invoke-static {p1, p2, v0}, Ljava/lang/String;->checkBoundsBeginEnd(III)V

    .line 2538
    sub-int v1, p2, p1

    .line 2539
    .local v1, "subLen":I
    if-nez p1, :cond_e

    if-ne p2, v0, :cond_e

    .line 2540
    return-object p0

    .line 2548
    :cond_e
    invoke-direct {p0, p1, v1}, Ljava/lang/String;->fastSubstring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public native whitelist test-api toCharArray()[C
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist test-api toLowerCase()Ljava/lang/String;
    .registers 2

    .line 3242
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 3218
    invoke-static {p1, p0}, Ljava/lang/CaseMapper;->toLowerCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 3930
    return-object p0
.end method

.method public whitelist test-api toUpperCase()Ljava/lang/String;
    .registers 2

    .line 3328
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 3304
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, p0, v0}, Ljava/lang/CaseMapper;->toUpperCase(Ljava/util/Locale;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api transform(Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/lang/String;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 3921
    .local p1, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/String;+TR;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api translateEscapes()Ljava/lang/String;
    .registers 11

    .line 3831
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3832
    const-string v0, ""

    return-object v0

    .line 3834
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3835
    .local v0, "chars":[C
    array-length v1, v0

    .line 3836
    .local v1, "length":I
    const/4 v2, 0x0

    .line 3837
    .local v2, "from":I
    const/4 v3, 0x0

    .line 3838
    .local v3, "to":I
    :goto_10
    const/4 v4, 0x0

    if-ge v2, v1, :cond_93

    .line 3839
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "from":I
    .local v5, "from":I
    aget-char v2, v0, v2

    .line 3840
    .local v2, "ch":C
    const/16 v6, 0x5c

    if-ne v2, v6, :cond_8a

    .line 3841
    if-ge v5, v1, :cond_22

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "from":I
    .local v4, "from":I
    aget-char v5, v0, v5

    goto :goto_25

    .end local v4    # "from":I
    .restart local v5    # "from":I
    :cond_22
    move v9, v5

    move v5, v4

    move v4, v9

    .end local v5    # "from":I
    .restart local v4    # "from":I
    :goto_25
    move v2, v5

    .line 3842
    sparse-switch v2, :sswitch_data_9a

    .line 3888
    nop

    .line 3890
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 3888
    const-string v6, "Invalid escape sequence: \\%c \\\\u%04X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3891
    .local v5, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3859
    .end local v5    # "msg":Ljava/lang/String;
    :sswitch_42
    const/16 v2, 0x9

    .line 3860
    goto :goto_8b

    .line 3856
    :sswitch_45
    const/16 v2, 0x20

    .line 3857
    goto :goto_8b

    .line 3853
    :sswitch_48
    const/16 v2, 0xd

    .line 3854
    goto :goto_8b

    .line 3850
    :sswitch_4b
    const/16 v2, 0xa

    .line 3851
    goto :goto_8b

    .line 3847
    :sswitch_4e
    const/16 v2, 0xc

    .line 3848
    goto :goto_8b

    .line 3844
    :sswitch_51
    const/16 v2, 0x8

    .line 3845
    goto :goto_8b

    .line 3868
    :sswitch_54
    const/16 v5, 0x33

    if-gt v2, v5, :cond_5a

    const/4 v5, 0x2

    goto :goto_5b

    :cond_5a
    const/4 v5, 0x1

    :goto_5b
    add-int/2addr v5, v4

    invoke-static {v5, v1}, Ljava/lang/Integer;->min(II)I

    move-result v5

    .line 3869
    .local v5, "limit":I
    add-int/lit8 v6, v2, -0x30

    .line 3870
    .local v6, "code":I
    :goto_62
    if-ge v4, v5, :cond_78

    .line 3871
    aget-char v2, v0, v4

    .line 3872
    const/16 v7, 0x30

    if-lt v2, v7, :cond_78

    const/16 v7, 0x37

    if-ge v7, v2, :cond_6f

    .line 3873
    goto :goto_78

    .line 3875
    :cond_6f
    add-int/lit8 v4, v4, 0x1

    .line 3876
    shl-int/lit8 v7, v6, 0x3

    add-int/lit8 v8, v2, -0x30

    or-int v6, v7, v8

    goto :goto_62

    .line 3878
    :cond_78
    :goto_78
    int-to-char v2, v6

    .line 3879
    goto :goto_8b

    .line 3865
    .end local v5    # "limit":I
    .end local v6    # "code":I
    :sswitch_7a
    goto :goto_8b

    .line 3883
    :sswitch_7b
    if-ge v4, v1, :cond_88

    aget-char v5, v0, v4

    const/16 v6, 0xa

    if-ne v5, v6, :cond_88

    .line 3884
    add-int/lit8 v4, v4, 0x1

    move v2, v4

    goto :goto_10

    .line 3881
    :sswitch_87
    nop

    .line 3838
    .end local v2    # "ch":C
    :cond_88
    move v2, v4

    goto :goto_10

    .line 3840
    .end local v4    # "from":I
    .restart local v2    # "ch":C
    .local v5, "from":I
    :cond_8a
    move v4, v5

    .line 3896
    .end local v5    # "from":I
    .restart local v4    # "from":I
    :goto_8b
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "to":I
    .local v5, "to":I
    aput-char v2, v0, v3

    .line 3897
    .end local v2    # "ch":C
    move v2, v4

    move v3, v5

    goto/16 :goto_10

    .line 3899
    .end local v4    # "from":I
    .end local v5    # "to":I
    .local v2, "from":I
    .restart local v3    # "to":I
    :cond_93
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v4, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    nop

    :sswitch_data_9a
    .sparse-switch
        0xa -> :sswitch_87
        0xd -> :sswitch_7b
        0x22 -> :sswitch_7a
        0x27 -> :sswitch_7a
        0x30 -> :sswitch_54
        0x31 -> :sswitch_54
        0x32 -> :sswitch_54
        0x33 -> :sswitch_54
        0x34 -> :sswitch_54
        0x35 -> :sswitch_54
        0x36 -> :sswitch_54
        0x37 -> :sswitch_54
        0x5c -> :sswitch_7a
        0x62 -> :sswitch_51
        0x66 -> :sswitch_4e
        0x6e -> :sswitch_4b
        0x72 -> :sswitch_48
        0x73 -> :sswitch_45
        0x74 -> :sswitch_42
    .end sparse-switch
.end method

.method public whitelist test-api trim()Ljava/lang/String;
    .registers 5

    .line 3370
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3371
    .local v0, "len":I
    const/4 v1, 0x0

    .line 3373
    .local v1, "st":I
    :goto_5
    const/16 v2, 0x20

    if-ge v1, v0, :cond_12

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_12

    .line 3374
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3376
    :cond_12
    :goto_12
    if-ge v1, v0, :cond_1f

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_1f

    .line 3377
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 3379
    :cond_1f
    if-gtz v1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_28

    goto :goto_2a

    :cond_28
    move-object v2, p0

    goto :goto_2e

    :cond_2a
    :goto_2a
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_2e
    return-object v2
.end method
