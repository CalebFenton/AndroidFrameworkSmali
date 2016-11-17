.class Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;
.super Ljava/lang/Object;
.source "GEOLocationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/GEOLocationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseBitStream"
.end annotation


# instance fields
.field private mBitoffset:I

.field private final mOctets:[B


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;I)J
    .locals 2
    .param p1, "bits"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->sliceOff(I)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "octets"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 191
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@6
    move-result v0

    #@7
    new-array v0, v0, [B

    #@9
    iput-object v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->mOctets:[B

    #@b
    .line 192
    iget-object v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->mOctets:[B

    #@d
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@10
    .line 190
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;)V
    .locals 0
    .param p1, "octets"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;-><init>(Ljava/nio/ByteBuffer;)V

    #@3
    return-void
.end method

.method private static getBits(BII)I
    .locals 2
    .param p0, "b"    # B
    .param p1, "b0"    # I
    .param p2, "width"    # I

    #@0
    .prologue
    .line 218
    const/4 v1, 0x1

    #@1
    shl-int/2addr v1, p2

    #@2
    add-int/lit8 v0, v1, -0x1

    #@4
    .line 219
    .local v0, "mask":I
    rsub-int/lit8 v1, p1, 0x8

    #@6
    sub-int/2addr v1, p2

    #@7
    shr-int v1, p0, v1

    #@9
    and-int/2addr v1, v0

    #@a
    return v1
.end method

.method private sliceOff(I)J
    .locals 12
    .param p1, "bits"    # I

    #@0
    .prologue
    .line 196
    iget v7, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->mBitoffset:I

    #@2
    add-int v0, v7, p1

    #@4
    .line 197
    .local v0, "bn":I
    move v2, p1

    #@5
    .line 198
    .local v2, "remaining":I
    const-wide/16 v4, 0x0

    #@7
    .line 200
    .local v4, "value":J
    :goto_0
    iget v7, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->mBitoffset:I

    #@9
    if-ge v7, v0, :cond_0

    #@b
    .line 201
    iget v7, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->mBitoffset:I

    #@d
    and-int/lit8 v3, v7, 0x7

    #@f
    .line 202
    .local v3, "sbit":I
    iget v7, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->mBitoffset:I

    #@11
    ushr-int/lit8 v1, v7, 0x3

    #@13
    .line 206
    .local v1, "octet":I
    rsub-int/lit8 v7, v3, 0x8

    #@15
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    #@18
    move-result v6

    #@19
    .line 208
    .local v6, "width":I
    shl-long v8, v4, v6

    #@1b
    iget-object v7, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->mOctets:[B

    #@1d
    aget-byte v7, v7, v1

    #@1f
    invoke-static {v7, v3, v6}, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->getBits(BII)I

    #@22
    move-result v7

    #@23
    int-to-long v10, v7

    #@24
    or-long v4, v8, v10

    #@26
    .line 210
    iget v7, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->mBitoffset:I

    #@28
    add-int/2addr v7, v6

    #@29
    iput v7, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$ReverseBitStream;->mBitoffset:I

    #@2b
    .line 211
    sub-int/2addr v2, v6

    #@2c
    goto :goto_0

    #@2d
    .line 214
    .end local v1    # "octet":I
    .end local v3    # "sbit":I
    .end local v6    # "width":I
    :cond_0
    return-wide v4
.end method
