.class public Ljava/util/zip/CRC32;
.super Ljava/lang/Object;
.source "CRC32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# instance fields
.field private crc:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static native update(II)I
.end method

.method private static native updateBytes(I[BII)I
.end method


# virtual methods
.method public getValue()J
    .locals 4

    #@0
    .prologue
    .line 88
    iget v0, p0, Ljava/util/zip/CRC32;->crc:I

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
    .line 81
    const/4 v0, 0x0

    #@1
    iput v0, p0, Ljava/util/zip/CRC32;->crc:I

    #@3
    .line 80
    return-void
.end method

.method public update(I)V
    .locals 1
    .param p1, "b"    # I

    #@0
    .prologue
    .line 52
    iget v0, p0, Ljava/util/zip/CRC32;->crc:I

    #@2
    invoke-static {v0, p1}, Ljava/util/zip/CRC32;->update(II)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Ljava/util/zip/CRC32;->crc:I

    #@8
    .line 51
    return-void
.end method

.method public update([B)V
    .locals 3
    .param p1, "b"    # [B

    #@0
    .prologue
    .line 74
    iget v0, p0, Ljava/util/zip/CRC32;->crc:I

    #@2
    array-length v1, p1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-static {v0, p1, v2, v1}, Ljava/util/zip/CRC32;->updateBytes(I[BII)I

    #@7
    move-result v0

    #@8
    iput v0, p0, Ljava/util/zip/CRC32;->crc:I

    #@a
    .line 73
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 59
    if-nez p1, :cond_0

    #@2
    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 62
    :cond_0
    if-ltz p2, :cond_1

    #@a
    if-gez p3, :cond_2

    #@c
    .line 63
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@e
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@11
    throw v0

    #@12
    .line 62
    :cond_2
    array-length v0, p1

    #@13
    sub-int/2addr v0, p3

    #@14
    if-gt p2, v0, :cond_1

    #@16
    .line 65
    iget v0, p0, Ljava/util/zip/CRC32;->crc:I

    #@18
    invoke-static {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->updateBytes(I[BII)I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Ljava/util/zip/CRC32;->crc:I

    #@1e
    .line 58
    return-void
.end method
