.class public Landroid/icu/util/ByteArrayWrapper;
.super Ljava/lang/Object;
.source "ByteArrayWrapper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/util/ByteArrayWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field public greylist-max-o bytes:[B

.field public greylist-max-o size:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "source"    # Ljava/nio/ByteBuffer;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    .line 73
    iget v0, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    .line 74
    iget-object v0, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    const/4 v1, 0x0

    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 75
    return-void
.end method

.method public constructor greylist-max-o <init>([BI)V
    .registers 6
    .param p1, "bytesToAdopt"    # [B
    .param p2, "size"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-nez p1, :cond_7

    if-nez p2, :cond_13

    :cond_7
    if-ltz p2, :cond_13

    if-eqz p1, :cond_e

    array-length v0, p1

    if-gt p2, v0, :cond_13

    .line 63
    :cond_e
    iput-object p1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    .line 64
    iput p2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    .line 65
    return-void

    .line 61
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final greylist-max-o copyBytes([BI[BII)V
    .registers 8
    .param p0, "src"    # [B
    .param p1, "srcoff"    # I
    .param p2, "tgt"    # [B
    .param p3, "tgtoff"    # I
    .param p4, "length"    # I

    .line 268
    const/16 v0, 0x40

    if-ge p4, v0, :cond_14

    .line 269
    move v0, p1

    .local v0, "i":I
    move v1, p3

    .local v1, "n":I
    :goto_6
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_13

    .line 270
    aget-byte v2, p0, v0

    aput-byte v2, p2, v1

    .line 269
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_13
    goto :goto_17

    .line 274
    :cond_14
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    :goto_17
    return-void
.end method


# virtual methods
.method public final greylist-max-o append([BII)Landroid/icu/util/ByteArrayWrapper;
    .registers 7
    .param p1, "src"    # [B
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .line 159
    sub-int v0, p3, p2

    .line 160
    .local v0, "len":I
    iget v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/icu/util/ByteArrayWrapper;->ensureCapacity(I)Landroid/icu/util/ByteArrayWrapper;

    .line 161
    iget-object v1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    invoke-static {p1, p2, v1, v2, v0}, Landroid/icu/util/ByteArrayWrapper;->copyBytes([BI[BII)V

    .line 162
    iget v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    .line 163
    return-object p0
.end method

.method public greylist-max-o compareTo(Landroid/icu/util/ByteArrayWrapper;)I
    .registers 6
    .param p1, "other"    # Landroid/icu/util/ByteArrayWrapper;

    .line 245
    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 246
    :cond_4
    iget v0, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    iget v1, p1, Landroid/icu/util/ByteArrayWrapper;->size:I

    if-ge v0, v1, :cond_d

    iget v0, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    goto :goto_f

    :cond_d
    iget v0, p1, Landroid/icu/util/ByteArrayWrapper;->size:I

    .line 247
    .local v0, "minSize":I
    :goto_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_2d

    .line 248
    iget-object v2, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v2, v2, v1

    iget-object v3, p1, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_2a

    .line 249
    iget-object v2, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p1, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v2, v3

    return v2

    .line 247
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 252
    .end local v1    # "i":I
    :cond_2d
    iget v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    iget v2, p1, Landroid/icu/util/ByteArrayWrapper;->size:I

    sub-int/2addr v1, v2

    return v1
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

    .line 27
    check-cast p1, Landroid/icu/util/ByteArrayWrapper;

    invoke-virtual {p0, p1}, Landroid/icu/util/ByteArrayWrapper;->compareTo(Landroid/icu/util/ByteArrayWrapper;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o ensureCapacity(I)Landroid/icu/util/ByteArrayWrapper;
    .registers 6
    .param p1, "capacity"    # I

    .line 111
    iget-object v0, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    array-length v0, v0

    if-ge v0, p1, :cond_19

    .line 112
    :cond_9
    new-array v0, p1, [B

    .line 113
    .local v0, "newbytes":[B
    iget-object v1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    if-eqz v1, :cond_17

    .line 114
    iget-object v1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Landroid/icu/util/ByteArrayWrapper;->copyBytes([BI[BII)V

    .line 116
    :cond_17
    iput-object v0, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    .line 118
    .end local v0    # "newbytes":[B
    :cond_19
    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 208
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 209
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 211
    :cond_8
    :try_start_8
    move-object v2, p1

    check-cast v2, Landroid/icu/util/ByteArrayWrapper;

    .line 212
    .local v2, "that":Landroid/icu/util/ByteArrayWrapper;
    iget v3, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    iget v4, v2, Landroid/icu/util/ByteArrayWrapper;->size:I

    if-eq v3, v4, :cond_12

    return v1

    .line 213
    :cond_12
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    iget v4, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    if-ge v3, v4, :cond_25

    .line 214
    iget-object v4, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v4, v4, v3

    iget-object v5, v2, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v5, v5, v3
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_1f} :catch_26

    if-eq v4, v5, :cond_22

    return v1

    .line 213
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 216
    .end local v3    # "i":I
    :cond_25
    return v0

    .line 218
    .end local v2    # "that":Landroid/icu/util/ByteArrayWrapper;
    :catch_26
    move-exception v0

    .line 220
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 229
    iget v0, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    .line 230
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    if-ge v1, v2, :cond_12

    .line 231
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v3, v3, v1

    add-int v0, v2, v3

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 233
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method public final greylist-max-o releaseBytes()[B
    .registers 3

    .line 180
    iget-object v0, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    .line 181
    .local v0, "result":[B
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    .line 182
    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    .line 183
    return-object v0
.end method

.method public final greylist-max-o set([BII)Landroid/icu/util/ByteArrayWrapper;
    .registers 5
    .param p1, "src"    # [B
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    .line 134
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/util/ByteArrayWrapper;->append([BII)Landroid/icu/util/ByteArrayWrapper;

    .line 135
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    if-ge v1, v2, :cond_23

    .line 195
    if-eqz v1, :cond_11

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_11
    iget-object v2, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 198
    .end local v1    # "i":I
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
