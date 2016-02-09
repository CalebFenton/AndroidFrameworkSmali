.class public Landroid/icu/util/ByteArrayWrapper;
.super Ljava/lang/Object;
.source "ByteArrayWrapper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/util/ByteArrayWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field public bytes:[B

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "source"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@9
    .line 77
    iget v0, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@b
    new-array v0, v0, [B

    #@d
    iput-object v0, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@f
    .line 78
    iget-object v0, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@11
    iget v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@13
    const/4 v2, 0x0

    #@14
    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@17
    .line 75
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3
    .param p1, "bytesToAdopt"    # [B
    .param p2, "size"    # I

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    if-nez p1, :cond_1

    #@5
    if-eqz p2, :cond_1

    #@7
    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "illegal size: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 63
    :cond_1
    if-ltz p2, :cond_0

    #@23
    array-length v0, p1

    #@24
    if-gt p2, v0, :cond_0

    #@26
    .line 66
    iput-object p1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@28
    .line 67
    iput p2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@2a
    .line 62
    return-void
.end method

.method private static final copyBytes([BI[BII)V
    .locals 3
    .param p0, "src"    # [B
    .param p1, "srcoff"    # I
    .param p2, "tgt"    # [B
    .param p3, "tgtoff"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 274
    const/16 v2, 0x40

    #@2
    if-ge p4, v2, :cond_0

    #@4
    .line 275
    move v0, p1

    #@5
    .local v0, "i":I
    move v1, p3

    #@6
    .local v1, "n":I
    :goto_0
    add-int/lit8 p4, p4, -0x1

    #@8
    if-ltz p4, :cond_1

    #@a
    .line 276
    aget-byte v2, p0, v0

    #@c
    aput-byte v2, p2, v1

    #@e
    .line 275
    add-int/lit8 v0, v0, 0x1

    #@10
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 280
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@16
    .line 273
    :cond_1
    return-void
.end method


# virtual methods
.method public final append([BII)Landroid/icu/util/ByteArrayWrapper;
    .locals 3
    .param p1, "src"    # [B
    .param p2, "start"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 164
    sub-int v0, p3, p2

    #@2
    .line 165
    .local v0, "len":I
    iget v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@4
    add-int/2addr v1, v0

    #@5
    invoke-virtual {p0, v1}, Landroid/icu/util/ByteArrayWrapper;->ensureCapacity(I)Landroid/icu/util/ByteArrayWrapper;

    #@8
    .line 166
    iget-object v1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@a
    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@c
    invoke-static {p1, p2, v1, v2, v0}, Landroid/icu/util/ByteArrayWrapper;->copyBytes([BI[BII)V

    #@f
    .line 167
    iget v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@11
    add-int/2addr v1, v0

    #@12
    iput v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@14
    .line 168
    return-object p0
.end method

.method public compareTo(Landroid/icu/util/ByteArrayWrapper;)I
    .locals 4
    .param p1, "other"    # Landroid/icu/util/ByteArrayWrapper;

    #@0
    .prologue
    .line 251
    if-ne p0, p1, :cond_0

    #@2
    const/4 v2, 0x0

    #@3
    return v2

    #@4
    .line 252
    :cond_0
    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@6
    iget v3, p1, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@8
    if-ge v2, v3, :cond_1

    #@a
    iget v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@c
    .line 253
    .local v1, "minSize":I
    :goto_0
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    #@f
    .line 254
    iget-object v2, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@11
    aget-byte v2, v2, v0

    #@13
    iget-object v3, p1, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@15
    aget-byte v3, v3, v0

    #@17
    if-eq v2, v3, :cond_2

    #@19
    .line 255
    iget-object v2, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@1b
    aget-byte v2, v2, v0

    #@1d
    and-int/lit16 v2, v2, 0xff

    #@1f
    iget-object v3, p1, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@21
    aget-byte v3, v3, v0

    #@23
    and-int/lit16 v3, v3, 0xff

    #@25
    sub-int/2addr v2, v3

    #@26
    return v2

    #@27
    .line 252
    .end local v0    # "i":I
    .end local v1    # "minSize":I
    :cond_1
    iget v1, p1, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@29
    .restart local v1    # "minSize":I
    goto :goto_0

    #@2a
    .line 253
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 258
    :cond_3
    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@2f
    iget v3, p1, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@31
    sub-int/2addr v2, v3

    #@32
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 250
    check-cast p1, Landroid/icu/util/ByteArrayWrapper;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/util/ByteArrayWrapper;->compareTo(Landroid/icu/util/ByteArrayWrapper;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public ensureCapacity(I)Landroid/icu/util/ByteArrayWrapper;
    .locals 4
    .param p1, "capacity"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 116
    iget-object v1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@7
    array-length v1, v1

    #@8
    if-ge v1, p1, :cond_1

    #@a
    .line 117
    :cond_0
    new-array v0, p1, [B

    #@c
    .line 118
    .local v0, "newbytes":[B
    iget-object v1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@e
    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@10
    invoke-static {v1, v3, v0, v3, v2}, Landroid/icu/util/ByteArrayWrapper;->copyBytes([BI[BII)V

    #@13
    .line 119
    iput-object v0, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@15
    .line 121
    .end local v0    # "newbytes":[B
    :cond_1
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 214
    if-ne p0, p1, :cond_0

    #@4
    return v7

    #@5
    .line 215
    :cond_0
    if-nez p1, :cond_1

    #@7
    return v6

    #@8
    .line 217
    :cond_1
    :try_start_0
    move-object v0, p1

    #@9
    check-cast v0, Landroid/icu/util/ByteArrayWrapper;

    #@b
    move-object v3, v0

    #@c
    .line 218
    .local v3, "that":Landroid/icu/util/ByteArrayWrapper;
    iget v4, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@e
    iget v5, v3, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@10
    if-eq v4, v5, :cond_2

    #@12
    return v6

    #@13
    .line 219
    :cond_2
    const/4 v2, 0x0

    #@14
    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@16
    if-ge v2, v4, :cond_4

    #@18
    .line 220
    iget-object v4, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@1a
    aget-byte v4, v4, v2

    #@1c
    iget-object v5, v3, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@1e
    aget-byte v5, v5, v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    if-eq v4, v5, :cond_3

    #@22
    return v6

    #@23
    .line 219
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 222
    :cond_4
    return v7

    #@27
    .line 224
    .end local v2    # "i":I
    .end local v3    # "that":Landroid/icu/util/ByteArrayWrapper;
    :catch_0
    move-exception v1

    #@28
    .line 226
    .local v1, "e":Ljava/lang/ClassCastException;
    return v6
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 235
    iget-object v2, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@2
    array-length v1, v2

    #@3
    .line 236
    .local v1, "result":I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@6
    if-ge v0, v2, :cond_0

    #@8
    .line 237
    mul-int/lit8 v2, v1, 0x25

    #@a
    iget-object v3, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@c
    aget-byte v3, v3, v0

    #@e
    add-int v1, v2, v3

    #@10
    .line 236
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 239
    :cond_0
    return v1
.end method

.method public final releaseBytes()[B
    .locals 2

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@2
    .line 187
    .local v0, "result":[B
    const/4 v1, 0x0

    #@3
    iput-object v1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@5
    .line 188
    const/4 v1, 0x0

    #@6
    iput v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@8
    .line 189
    return-object v0
.end method

.method public final set([BII)Landroid/icu/util/ByteArrayWrapper;
    .locals 1
    .param p1, "src"    # [B
    .param p2, "start"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 137
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@3
    .line 138
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/util/ByteArrayWrapper;->append([BII)Landroid/icu/util/ByteArrayWrapper;

    #@6
    .line 139
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 200
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@8
    if-ge v0, v2, :cond_1

    #@a
    .line 201
    if-eqz v0, :cond_0

    #@c
    const-string/jumbo v2, " "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 202
    :cond_0
    iget-object v2, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@14
    aget-byte v2, v2, v0

    #@16
    and-int/lit16 v2, v2, 0xff

    #@18
    int-to-long v2, v2

    #@19
    const/4 v4, 0x2

    #@1a
    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 200
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 204
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    return-object v2
.end method
