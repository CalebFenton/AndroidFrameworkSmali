.class public abstract Landroid/net/connectivity/com/google/protobuf/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Landroid/net/connectivity/com/google/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;,
        Landroid/net/connectivity/com/google/protobuf/ByteString$ByteArrayCopier;,
        Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;,
        Landroid/net/connectivity/com/google/protobuf/ByteString$Output;,
        Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;,
        Landroid/net/connectivity/com/google/protobuf/ByteString$ByteIterator;,
        Landroid/net/connectivity/com/google/protobuf/ByteString$SystemByteArrayCopier;,
        Landroid/net/connectivity/com/google/protobuf/ByteString$ArraysByteArrayCopier;,
        Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;,
        Landroid/net/connectivity/com/google/protobuf/ByteString$AbstractByteIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final blacklist CONCATENATE_BY_COPY_SIZE:I = 0x80

.field public static final blacklist EMPTY:Landroid/net/connectivity/com/google/protobuf/ByteString;

.field static final blacklist MAX_READ_FROM_CHUNK_SIZE:I = 0x2000

.field static final blacklist MIN_READ_FROM_CHUNK_SIZE:I = 0x100

.field private static final blacklist UNSIGNED_BYTE_MASK:I = 0xff

.field private static final blacklist UNSIGNED_LEXICOGRAPHICAL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist byteArrayCopier:Landroid/net/connectivity/com/google/protobuf/ByteString$ByteArrayCopier;


# instance fields
.field private blacklist hash:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 95
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;

    sget-object v1, Landroid/net/connectivity/com/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/ByteString;->EMPTY:Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 135
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/Android;->isOnAndroidDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ByteString$SystemByteArrayCopier;

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString$SystemByteArrayCopier;-><init>(Landroid/net/connectivity/com/google/protobuf/ByteString$1;)V

    goto :goto_1b

    :cond_16
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ByteString$ArraysByteArrayCopier;

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString$ArraysByteArrayCopier;-><init>(Landroid/net/connectivity/com/google/protobuf/ByteString$1;)V

    :goto_1b
    sput-object v0, Landroid/net/connectivity/com/google/protobuf/ByteString;->byteArrayCopier:Landroid/net/connectivity/com/google/protobuf/ByteString$ByteArrayCopier;

    .line 300
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ByteString$2;

    invoke-direct {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString$2;-><init>()V

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/ByteString;->UNSIGNED_LEXICOGRAPHICAL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString;->hash:I

    .line 146
    return-void
.end method

.method static synthetic blacklist access$200(B)I
    .registers 2
    .param p0, "x0"    # B

    .line 77
    invoke-static {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->toInt(B)I

    move-result v0

    return v0
.end method

.method private static blacklist balancedConcat(Ljava/util/Iterator;I)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;I)",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;"
        }
    .end annotation

    .line 687
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/connectivity/com/google/protobuf/ByteString;>;"
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1e

    .line 691
    if-ne p1, v0, :cond_c

    .line 692
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/ByteString;

    .local v0, "result":Landroid/net/connectivity/com/google/protobuf/ByteString;
    goto :goto_1d

    .line 694
    .end local v0    # "result":Landroid/net/connectivity/com/google/protobuf/ByteString;
    :cond_c
    ushr-int/lit8 v0, p1, 0x1

    .line 695
    .local v0, "halfLength":I
    invoke-static {p0, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->balancedConcat(Ljava/util/Iterator;I)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    .line 696
    .local v1, "left":Landroid/net/connectivity/com/google/protobuf/ByteString;
    sub-int v2, p1, v0

    invoke-static {p0, v2}, Landroid/net/connectivity/com/google/protobuf/ByteString;->balancedConcat(Ljava/util/Iterator;I)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v2

    .line 697
    .local v2, "right":Landroid/net/connectivity/com/google/protobuf/ByteString;
    invoke-virtual {v1, v2}, Landroid/net/connectivity/com/google/protobuf/ByteString;->concat(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v3

    move-object v0, v3

    .line 699
    .end local v1    # "left":Landroid/net/connectivity/com/google/protobuf/ByteString;
    .end local v2    # "right":Landroid/net/connectivity/com/google/protobuf/ByteString;
    .local v0, "result":Landroid/net/connectivity/com/google/protobuf/ByteString;
    :goto_1d
    return-object v0

    .line 688
    .end local v0    # "result":Landroid/net/connectivity/com/google/protobuf/ByteString;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "length (%s) must be >= 1"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist checkIndex(II)V
    .registers 5
    .param p0, "index"    # I
    .param p1, "size"    # I

    .line 1321
    add-int/lit8 v0, p0, 0x1

    sub-int v0, p1, v0

    or-int/2addr v0, p0

    if-gez v0, :cond_45

    .line 1322
    if-gez p0, :cond_22

    .line 1323
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1325
    :cond_22
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index > length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1327
    :cond_45
    return-void
.end method

.method static blacklist checkRange(III)I
    .registers 7
    .param p0, "startIndex"    # I
    .param p1, "endIndex"    # I
    .param p2, "size"    # I

    .line 1340
    sub-int v0, p1, p0

    .line 1341
    .local v0, "length":I
    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_73

    .line 1342
    if-ltz p0, :cond_54

    .line 1345
    if-ge p1, p0, :cond_31

    .line 1346
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Beginning index larger than ending index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1350
    :cond_31
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1343
    :cond_54
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Beginning index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1352
    :cond_73
    return v0
.end method

.method public static blacklist copyFrom(Ljava/lang/Iterable;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;)",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;"
        }
    .end annotation

    .line 666
    .local p0, "byteStrings":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/net/connectivity/com/google/protobuf/ByteString;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-nez v0, :cond_17

    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, "tempSize":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 669
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/connectivity/com/google/protobuf/ByteString;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 670
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 671
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/connectivity/com/google/protobuf/ByteString;>;"
    :cond_15
    nop

    .line 672
    .local v0, "size":I
    goto :goto_1e

    .line 673
    .end local v0    # "size":I
    :cond_17
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 676
    .restart local v0    # "size":I
    :goto_1e
    if-nez v0, :cond_23

    .line 677
    sget-object v1, Landroid/net/connectivity/com/google/protobuf/ByteString;->EMPTY:Landroid/net/connectivity/com/google/protobuf/ByteString;

    return-object v1

    .line 680
    :cond_23
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->balancedConcat(Ljava/util/Iterator;I)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist copyFrom(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 499
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static blacklist copyFrom(Ljava/lang/String;Ljava/nio/charset/Charset;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 511
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static blacklist copyFrom(Ljava/nio/ByteBuffer;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 485
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;I)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist copyFrom(Ljava/nio/ByteBuffer;I)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 4
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I

    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->checkRange(III)I

    .line 473
    new-array v0, p1, [B

    .line 474
    .local v0, "copy":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 475
    new-instance v1, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;

    invoke-direct {v1, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v1
.end method

.method public static blacklist copyFrom([B)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 3
    .param p0, "bytes"    # [B

    .line 432
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFrom([BII)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist copyFrom([BII)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .line 421
    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->checkRange(III)I

    .line 422
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;

    sget-object v1, Landroid/net/connectivity/com/google/protobuf/ByteString;->byteArrayCopier:Landroid/net/connectivity/com/google/protobuf/ByteString$ByteArrayCopier;

    invoke-interface {v1, p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/ByteString$ByteArrayCopier;->copyFrom([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static blacklist copyFromUtf8(Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 3
    .param p0, "text"    # Ljava/lang/String;

    .line 522
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;

    sget-object v1, Landroid/net/connectivity/com/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static final blacklist empty()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 1

    .line 241
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/ByteString;->EMPTY:Landroid/net/connectivity/com/google/protobuf/ByteString;

    return-object v0
.end method

.method private static blacklist extractHexDigit(Ljava/lang/String;I)I
    .registers 6
    .param p0, "hexString"    # Ljava/lang/String;
    .param p1, "index"    # I

    .line 280
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->hexDigit(C)I

    move-result v0

    .line 281
    .local v0, "digit":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 290
    return v0

    .line 282
    :cond_c
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid hexString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must only contain [0-9a-fA-F] but contained "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist fromHex(Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 6
    .param p0, "hexString"    # Ljava/lang/String;

    .line 395
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_31

    .line 399
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 400
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v2, v0

    if-ge v1, v2, :cond_2b

    .line 401
    mul-int/lit8 v2, v1, 0x2

    invoke-static {p0, v2}, Landroid/net/connectivity/com/google/protobuf/ByteString;->extractHexDigit(Ljava/lang/String;I)I

    move-result v2

    .line 402
    .local v2, "d1":I
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, v3}, Landroid/net/connectivity/com/google/protobuf/ByteString;->extractHexDigit(Ljava/lang/String;I)I

    move-result v3

    .line 403
    .local v3, "d2":I
    shl-int/lit8 v4, v2, 0x4

    or-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 400
    .end local v2    # "d1":I
    .end local v3    # "d2":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 405
    .end local v1    # "i":I
    :cond_2b
    new-instance v1, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;

    invoke-direct {v1, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v1

    .line 396
    .end local v0    # "bytes":[B
    :cond_31
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hexString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 397
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be even."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist hexDigit(C)I
    .registers 2
    .param p0, "c"    # C

    .line 263
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 264
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 265
    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    .line 266
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 267
    :cond_18
    const/16 v0, 0x61

    if-lt p0, v0, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    .line 268
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 270
    :cond_25
    const/4 v0, -0x1

    return v0
.end method

.method static blacklist newCodedBuilder(I)Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;
    .registers 3
    .param p0, "size"    # I

    .line 1245
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;-><init>(ILandroid/net/connectivity/com/google/protobuf/ByteString$1;)V

    return-object v0
.end method

.method public static blacklist newOutput()Landroid/net/connectivity/com/google/protobuf/ByteString$Output;
    .registers 2

    .line 1052
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;-><init>(I)V

    return-object v0
.end method

.method public static blacklist newOutput(I)Landroid/net/connectivity/com/google/protobuf/ByteString$Output;
    .registers 2
    .param p0, "initialCapacity"    # I

    .line 1038
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;

    invoke-direct {v0, p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;-><init>(I)V

    return-object v0
.end method

.method private static blacklist readChunk(Ljava/io/InputStream;I)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    new-array v0, p1, [B

    .line 609
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 610
    .local v1, "bytesRead":I
    :goto_3
    if-ge v1, p1, :cond_11

    .line 611
    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 612
    .local v2, "count":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    .line 613
    goto :goto_11

    .line 615
    :cond_f
    add-int/2addr v1, v2

    .line 616
    .end local v2    # "count":I
    goto :goto_3

    .line 618
    :cond_11
    :goto_11
    if-nez v1, :cond_15

    .line 619
    const/4 v2, 0x0

    return-object v2

    .line 623
    :cond_15
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFrom([BII)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist readFrom(Ljava/io/InputStream;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 3
    .param p0, "streamToDrain"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    const/16 v0, 0x100

    const/16 v1, 0x2000

    invoke-static {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->readFrom(Ljava/io/InputStream;II)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist readFrom(Ljava/io/InputStream;I)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 3
    .param p0, "streamToDrain"    # Ljava/io/InputStream;
    .param p1, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    invoke-static {p0, p1, p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->readFrom(Ljava/io/InputStream;II)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist readFrom(Ljava/io/InputStream;II)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 7
    .param p0, "streamToDrain"    # Ljava/io/InputStream;
    .param p1, "minChunkSize"    # I
    .param p2, "maxChunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v0, "results":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/connectivity/com/google/protobuf/ByteString;>;"
    move v1, p1

    .line 588
    .local v1, "chunkSize":I
    :goto_6
    invoke-static {p0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->readChunk(Ljava/io/InputStream;I)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v2

    .line 589
    .local v2, "chunk":Landroid/net/connectivity/com/google/protobuf/ByteString;
    if-nez v2, :cond_12

    .line 590
    nop

    .line 596
    .end local v2    # "chunk":Landroid/net/connectivity/com/google/protobuf/ByteString;
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v2

    return-object v2

    .line 592
    .restart local v2    # "chunk":Landroid/net/connectivity/com/google/protobuf/ByteString;
    :cond_12
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 593
    mul-int/lit8 v3, v1, 0x2

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 594
    .end local v2    # "chunk":Landroid/net/connectivity/com/google/protobuf/ByteString;
    goto :goto_6
.end method

.method private static blacklist toInt(B)I
    .registers 2
    .param p0, "value"    # B

    .line 258
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method private blacklist truncateAndEscapeForDisplay()Ljava/lang/String;
    .registers 5

    .line 1366
    const/16 v0, 0x32

    .line 1368
    .local v0, "limit":I
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_f

    invoke-static {p0}, Landroid/net/connectivity/com/google/protobuf/TextFormatEscaper;->escapeBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2d

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x2f

    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/com/google/protobuf/ByteString;->substring(II)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/TextFormatEscaper;->escapeBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2d
    return-object v1
.end method

.method public static blacklist unsignedLexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 332
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/ByteString;->UNSIGNED_LEXICOGRAPHICAL_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static blacklist wrap(Ljava/nio/ByteBuffer;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 437
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 438
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 439
    .local v0, "offset":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/ByteString;->wrap([BII)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    return-object v1

    .line 441
    .end local v0    # "offset":I
    :cond_1c
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/NioByteString;

    invoke-direct {v0, p0}, Landroid/net/connectivity/com/google/protobuf/NioByteString;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method static blacklist wrap([B)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2
    .param p0, "bytes"    # [B

    .line 451
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;

    invoke-direct {v0, p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method static blacklist wrap([BII)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 459
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract blacklist asReadOnlyByteBufferList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist byteAt(I)B
.end method

.method public final blacklist concat(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 5
    .param p1, "other"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 642
    const v0, 0x7fffffff

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v1

    if-lt v0, v1, :cond_13

    .line 647
    invoke-static {p0, p1}, Landroid/net/connectivity/com/google/protobuf/RopeByteString;->concatenate(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 643
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ByteString would be too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 644
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract blacklist copyTo(Ljava/nio/ByteBuffer;)V
.end method

.method public blacklist copyTo([BI)V
    .registers 5
    .param p1, "target"    # [B
    .param p2, "offset"    # I

    .line 716
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyTo([BIII)V

    .line 717
    return-void
.end method

.method public final blacklist copyTo([BIII)V
    .registers 7
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "numberToCopy"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 732
    add-int v0, p2, p4

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v1

    invoke-static {p2, v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->checkRange(III)I

    .line 733
    add-int v0, p3, p4

    array-length v1, p1

    invoke-static {p3, v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->checkRange(III)I

    .line 734
    if-lez p4, :cond_14

    .line 735
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyToInternal([BIII)V

    .line 737
    :cond_14
    return-void
.end method

.method protected abstract blacklist copyToInternal([BIII)V
.end method

.method public final blacklist endsWith(Landroid/net/connectivity/com/google/protobuf/ByteString;)Z
    .registers 4
    .param p1, "suffix"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 381
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v1

    if-lt v0, v1, :cond_1f

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->substring(I)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public abstract whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method protected abstract blacklist getTreeDepth()I
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 983
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString;->hash:I

    .line 985
    .local v0, "h":I
    if-nez v0, :cond_12

    .line 986
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v1

    .line 987
    .local v1, "size":I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->partialHash(III)I

    move-result v0

    .line 988
    if-nez v0, :cond_10

    .line 989
    const/4 v0, 0x1

    .line 991
    :cond_10
    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString;->hash:I

    .line 993
    .end local v1    # "size":I
    :cond_12
    return v0
.end method

.method abstract blacklist internalByteAt(I)B
.end method

.method protected abstract blacklist isBalanced()Z
.end method

.method public final blacklist isEmpty()Z
    .registers 2

    .line 236
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public abstract blacklist isValidUtf8()Z
.end method

.method public blacklist iterator()Landroid/net/connectivity/com/google/protobuf/ByteString$ByteIterator;
    .registers 2

    .line 176
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ByteString$1;

    invoke-direct {v0, p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$1;-><init>(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 76
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->iterator()Landroid/net/connectivity/com/google/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist newCodedInput()Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
.end method

.method public abstract blacklist newInput()Ljava/io/InputStream;
.end method

.method protected abstract blacklist partialHash(III)I
.end method

.method protected abstract blacklist partialIsValidUtf8(III)I
.end method

.method protected final blacklist peekCachedHashCode()I
    .registers 2

    .line 1298
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString;->hash:I

    return v0
.end method

.method public abstract blacklist size()I
.end method

.method public final blacklist startsWith(Landroid/net/connectivity/com/google/protobuf/ByteString;)Z
    .registers 5
    .param p1, "prefix"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 369
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1a

    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->substring(II)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    return v2
.end method

.method public final blacklist substring(I)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 3
    .param p1, "beginIndex"    # I

    .line 346
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->substring(II)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist substring(II)Landroid/net/connectivity/com/google/protobuf/ByteString;
.end method

.method public final blacklist toByteArray()[B
    .registers 4

    .line 765
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v0

    .line 766
    .local v0, "size":I
    if-nez v0, :cond_9

    .line 767
    sget-object v1, Landroid/net/connectivity/com/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object v1

    .line 769
    :cond_9
    new-array v1, v0, [B

    .line 770
    .local v1, "result":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyToInternal([BIII)V

    .line 771
    return-object v1
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1357
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1360
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1361
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1362
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->truncateAndEscapeForDisplay()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 1357
    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 859
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 860
    :catch_9
    move-exception v0

    .line 861
    .local v0, "e":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 862
    .local v1, "exception":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 863
    throw v1
.end method

.method public final blacklist toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 875
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method protected abstract blacklist toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public final blacklist toStringUtf8()Ljava/lang/String;
    .registers 2

    .line 895
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract blacklist writeTo(Landroid/net/connectivity/com/google/protobuf/ByteOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final blacklist writeTo(Ljava/io/OutputStream;II)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "sourceOffset"    # I
    .param p3, "numberToWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 792
    add-int v0, p2, p3

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v1

    invoke-static {p2, v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->checkRange(III)I

    .line 793
    if-lez p3, :cond_e

    .line 794
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    .line 796
    :cond_e
    return-void
.end method

.method abstract blacklist writeToInternal(Ljava/io/OutputStream;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist writeToReverse(Landroid/net/connectivity/com/google/protobuf/ByteOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
