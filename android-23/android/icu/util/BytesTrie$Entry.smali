.class public final Landroid/icu/util/BytesTrie$Entry;
.super Ljava/lang/Object;
.source "BytesTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/BytesTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field private bytes:[B

.field private length:I

.field public value:I


# direct methods
.method static synthetic -get0(Landroid/icu/util/BytesTrie$Entry;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Landroid/icu/util/BytesTrie$Entry;[BII)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/BytesTrie$Entry;->append([BII)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/icu/util/BytesTrie$Entry;B)V
    .locals 0
    .param p1, "b"    # B

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrie$Entry;->append(B)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/icu/util/BytesTrie$Entry;I)V
    .locals 0
    .param p1, "newLength"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrie$Entry;->truncateString(I)V

    #@3
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 458
    new-array v0, p1, [B

    #@5
    iput-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    #@7
    .line 457
    return-void
.end method

.method synthetic constructor <init>(ILandroid/icu/util/BytesTrie$Entry;)V
    .locals 0
    .param p1, "capacity"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrie$Entry;-><init>(I)V

    #@3
    return-void
.end method

.method private append(B)V
    .locals 3
    .param p1, "b"    # B

    #@0
    .prologue
    .line 504
    iget v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    invoke-direct {p0, v0}, Landroid/icu/util/BytesTrie$Entry;->ensureCapacity(I)V

    #@7
    .line 505
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    #@9
    iget v1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    #@b
    add-int/lit8 v2, v1, 0x1

    #@d
    iput v2, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    #@f
    aput-byte p1, v0, v1

    #@11
    .line 503
    return-void
.end method

.method private append([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 508
    iget v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    #@2
    add-int/2addr v0, p3

    #@3
    invoke-direct {p0, v0}, Landroid/icu/util/BytesTrie$Entry;->ensureCapacity(I)V

    #@6
    .line 509
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    #@8
    iget v1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    #@a
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@d
    .line 510
    iget v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    #@f
    add-int/2addr v0, p3

    #@10
    iput v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    #@12
    .line 507
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4
    .param p1, "len"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 497
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    #@3
    array-length v1, v1

    #@4
    if-ge v1, p1, :cond_0

    #@6
    .line 498
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    #@8
    array-length v1, v1

    #@9
    mul-int/lit8 v1, v1, 0x2

    #@b
    mul-int/lit8 v2, p1, 0x2

    #@d
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@10
    move-result v1

    #@11
    new-array v0, v1, [B

    #@13
    .line 499
    .local v0, "newBytes":[B
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    #@15
    iget v2, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    #@17
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1a
    .line 500
    iput-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    #@1c
    .line 496
    .end local v0    # "newBytes":[B
    :cond_0
    return-void
.end method

.method private truncateString(I)V
    .locals 0
    .param p1, "newLength"    # I

    #@0
    .prologue
    .line 512
    iput p1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    #@2
    return-void
.end method


# virtual methods
.method public byteAt(I)B
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 472
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    #@2
    aget-byte v0, v0, p1

    #@4
    return v0
.end method

.method public bytesAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    #@0
    .prologue
    .line 487
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    #@2
    iget v1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public bytesLength()I
    .locals 1

    #@0
    .prologue
    .line 465
    iget v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    #@2
    return v0
.end method

.method public copyBytesTo([BI)V
    .locals 3
    .param p1, "dest"    # [B
    .param p2, "destOffset"    # I

    #@0
    .prologue
    .line 480
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    #@2
    iget v1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@8
    .line 479
    return-void
.end method
