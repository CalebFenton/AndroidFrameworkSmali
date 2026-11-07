.class public Lcom/google/android/mms/pdu/QuotedPrintable;
.super Ljava/lang/Object;
.source "QuotedPrintable.java"


# static fields
.field private static blacklist ESCAPE_CHAR:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    const/16 v0, 0x3d

    sput-byte v0, Lcom/google/android/mms/pdu/QuotedPrintable;->ESCAPE_CHAR:B

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final greylist decodeQuotedPrintable([B)[B
    .registers 8
    .param p0, "bytes"    # [B

    .line 43
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 44
    return-object v0

    .line 46
    :cond_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 47
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, p0

    if-ge v2, v3, :cond_53

    .line 48
    aget-byte v3, p0, v2

    .line 49
    .local v3, "b":I
    sget-byte v4, Lcom/google/android/mms/pdu/QuotedPrintable;->ESCAPE_CHAR:B

    if-ne v3, v4, :cond_4d

    .line 51
    add-int/lit8 v4, v2, 0x1

    :try_start_15
    aget-byte v4, p0, v4

    int-to-char v4, v4

    const/16 v5, 0xd

    if-ne v5, v4, :cond_28

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    int-to-char v4, v4

    const/16 v5, 0xa

    if-ne v5, v4, :cond_28

    .line 53
    add-int/lit8 v2, v2, 0x2

    .line 54
    goto :goto_50

    .line 56
    :cond_28
    add-int/lit8 v2, v2, 0x1

    aget-byte v4, p0, v2

    int-to-char v4, v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 57
    .local v4, "u":I
    add-int/lit8 v2, v2, 0x1

    aget-byte v6, p0, v2

    int-to-char v6, v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 58
    .local v5, "l":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_4a

    if-ne v5, v6, :cond_42

    goto :goto_4a

    .line 61
    :cond_42
    shl-int/lit8 v6, v4, 0x4

    add-int/2addr v6, v5

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_49
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_15 .. :try_end_49} :catch_4b

    .line 64
    .end local v4    # "u":I
    .end local v5    # "l":I
    goto :goto_50

    .line 59
    .restart local v4    # "u":I
    .restart local v5    # "l":I
    :cond_4a
    :goto_4a
    return-object v0

    .line 62
    .end local v4    # "u":I
    .end local v5    # "l":I
    :catch_4b
    move-exception v4

    .line 63
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-object v0

    .line 66
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4d
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 47
    .end local v3    # "b":I
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 69
    .end local v2    # "i":I
    :cond_53
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
