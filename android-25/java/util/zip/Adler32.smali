.class public Ljava/util/zip/Adler32;
.super Ljava/lang/Object;
.source "Adler32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private adler:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/zip/Adler32;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/zip/Adler32;->-assertionsDisabled:Z

    #@b
    .line 40
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    const/4 v0, 0x1

    #@4
    iput v0, p0, Ljava/util/zip/Adler32;->adler:I

    #@6
    .line 46
    return-void
.end method

.method private static native update(II)I
.end method

.method private update(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 94
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@4
    move-result v2

    #@5
    .line 95
    .local v2, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@8
    move-result v1

    #@9
    .line 96
    .local v1, "limit":I
    sget-boolean v4, Ljava/util/zip/Adler32;->-assertionsDisabled:Z

    #@b
    if-nez v4, :cond_1

    #@d
    if-gt v2, v1, :cond_0

    #@f
    const/4 v4, 0x1

    #@10
    :goto_0
    if-nez v4, :cond_1

    #@12
    new-instance v4, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@17
    throw v4

    #@18
    :cond_0
    move v4, v5

    #@19
    goto :goto_0

    #@1a
    .line 97
    :cond_1
    sub-int v3, v1, v2

    #@1c
    .line 98
    .local v3, "rem":I
    if-gtz v3, :cond_2

    #@1e
    .line 99
    return-void

    #@1f
    .line 100
    :cond_2
    instance-of v4, p1, Lsun/nio/ch/DirectBuffer;

    #@21
    if-eqz v4, :cond_3

    #@23
    .line 101
    iget v5, p0, Ljava/util/zip/Adler32;->adler:I

    #@25
    move-object v4, p1

    #@26
    check-cast v4, Lsun/nio/ch/DirectBuffer;

    #@28
    invoke-interface {v4}, Lsun/nio/ch/DirectBuffer;->address()J

    #@2b
    move-result-wide v6

    #@2c
    invoke-static {v5, v6, v7, v2, v3}, Ljava/util/zip/Adler32;->updateByteBuffer(IJII)I

    #@2f
    move-result v4

    #@30
    iput v4, p0, Ljava/util/zip/Adler32;->adler:I

    #@32
    .line 109
    :goto_1
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@35
    .line 93
    return-void

    #@36
    .line 102
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_4

    #@3c
    .line 103
    iget v4, p0, Ljava/util/zip/Adler32;->adler:I

    #@3e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@41
    move-result-object v5

    #@42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@45
    move-result v6

    #@46
    add-int/2addr v6, v2

    #@47
    invoke-static {v4, v5, v6, v3}, Ljava/util/zip/Adler32;->updateBytes(I[BII)I

    #@4a
    move-result v4

    #@4b
    iput v4, p0, Ljava/util/zip/Adler32;->adler:I

    #@4d
    goto :goto_1

    #@4e
    .line 105
    :cond_4
    new-array v0, v3, [B

    #@50
    .line 106
    .local v0, "b":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@53
    .line 107
    iget v4, p0, Ljava/util/zip/Adler32;->adler:I

    #@55
    array-length v6, v0

    #@56
    invoke-static {v4, v0, v5, v6}, Ljava/util/zip/Adler32;->updateBytes(I[BII)I

    #@59
    move-result v4

    #@5a
    iput v4, p0, Ljava/util/zip/Adler32;->adler:I

    #@5c
    goto :goto_1
.end method

.method private static native updateByteBuffer(IJII)I
.end method

.method private static native updateBytes(I[BII)I
.end method


# virtual methods
.method public getValue()J
    .locals 4

    #@0
    .prologue
    .line 123
    iget v0, p0, Ljava/util/zip/Adler32;->adler:I

    #@2
    int-to-long v0, v0

    #@3
    const-wide v2, 0xffffffffL

    #@8
    and-long/2addr v0, v2

    #@9
    return-wide v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 116
    const/4 v0, 0x1

    #@1
    iput v0, p0, Ljava/util/zip/Adler32;->adler:I

    #@3
    .line 115
    return-void
.end method

.method public update(I)V
    .locals 1
    .param p1, "b"    # I

    #@0
    .prologue
    .line 56
    iget v0, p0, Ljava/util/zip/Adler32;->adler:I

    #@2
    invoke-static {v0, p1}, Ljava/util/zip/Adler32;->update(II)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Ljava/util/zip/Adler32;->adler:I

    #@8
    .line 55
    return-void
.end method

.method public update([B)V
    .locals 3
    .param p1, "b"    # [B

    #@0
    .prologue
    .line 78
    iget v0, p0, Ljava/util/zip/Adler32;->adler:I

    #@2
    array-length v1, p1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-static {v0, p1, v2, v1}, Ljava/util/zip/Adler32;->updateBytes(I[BII)I

    #@7
    move-result v0

    #@8
    iput v0, p0, Ljava/util/zip/Adler32;->adler:I

    #@a
    .line 77
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 63
    if-nez p1, :cond_0

    #@2
    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 66
    :cond_0
    if-ltz p2, :cond_1

    #@a
    if-gez p3, :cond_2

    #@c
    .line 67
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@e
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@11
    throw v0

    #@12
    .line 66
    :cond_2
    array-length v0, p1

    #@13
    sub-int/2addr v0, p3

    #@14
    if-gt p2, v0, :cond_1

    #@16
    .line 69
    iget v0, p0, Ljava/util/zip/Adler32;->adler:I

    #@18
    invoke-static {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->updateBytes(I[BII)I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Ljava/util/zip/Adler32;->adler:I

    #@1e
    .line 62
    return-void
.end method
