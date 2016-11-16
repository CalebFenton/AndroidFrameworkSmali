.class public Lcom/google/android/mms/pdu/QuotedPrintable;
.super Ljava/lang/Object;
.source "QuotedPrintable.java"


# static fields
.field private static ESCAPE_CHAR:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 23
    const/16 v0, 0x3d

    #@2
    sput-byte v0, Lcom/google/android/mms/pdu/QuotedPrintable;->ESCAPE_CHAR:B

    #@4
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final decodeQuotedPrintable([B)[B
    .locals 10
    .param p0, "bytes"    # [B

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 40
    if-nez p0, :cond_0

    #@4
    .line 41
    return-object v8

    #@5
    .line 43
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@7
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@a
    .line 44
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    #@b
    .local v3, "i":I
    :goto_0
    array-length v6, p0

    #@c
    if-ge v3, v6, :cond_5

    #@e
    .line 45
    aget-byte v0, p0, v3

    #@10
    .line 46
    .local v0, "b":I
    sget-byte v6, Lcom/google/android/mms/pdu/QuotedPrintable;->ESCAPE_CHAR:B

    #@12
    if-ne v0, v6, :cond_4

    #@14
    .line 48
    add-int/lit8 v6, v3, 0x1

    #@16
    :try_start_0
    aget-byte v6, p0, v6

    #@18
    int-to-char v6, v6

    #@19
    const/16 v7, 0xd

    #@1b
    if-ne v7, v6, :cond_1

    #@1d
    .line 49
    add-int/lit8 v6, v3, 0x2

    #@1f
    aget-byte v6, p0, v6

    #@21
    int-to-char v6, v6

    #@22
    const/16 v7, 0xa

    #@24
    if-ne v7, v6, :cond_1

    #@26
    .line 50
    add-int/lit8 v3, v3, 0x2

    #@28
    .line 44
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 53
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@2d
    aget-byte v6, p0, v3

    #@2f
    int-to-char v6, v6

    #@30
    const/16 v7, 0x10

    #@32
    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    #@35
    move-result v5

    #@36
    .line 54
    .local v5, "u":I
    add-int/lit8 v3, v3, 0x1

    #@38
    aget-byte v6, p0, v3

    #@3a
    int-to-char v6, v6

    #@3b
    const/16 v7, 0x10

    #@3d
    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    #@40
    move-result v4

    #@41
    .line 55
    .local v4, "l":I
    if-eq v5, v9, :cond_2

    #@43
    if-ne v4, v9, :cond_3

    #@45
    .line 56
    :cond_2
    return-object v8

    #@46
    .line 58
    :cond_3
    shl-int/lit8 v6, v5, 0x4

    #@48
    add-int/2addr v6, v4

    #@49
    int-to-char v6, v6

    #@4a
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@4d
    goto :goto_1

    #@4e
    .line 59
    .end local v4    # "l":I
    .end local v5    # "u":I
    :catch_0
    move-exception v2

    #@4f
    .line 60
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-object v8

    #@50
    .line 63
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@53
    goto :goto_1

    #@54
    .line 66
    .end local v0    # "b":I
    :cond_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@57
    move-result-object v6

    #@58
    return-object v6
.end method
