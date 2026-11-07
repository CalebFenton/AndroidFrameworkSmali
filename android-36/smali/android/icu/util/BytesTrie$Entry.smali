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
.field private greylist-max-o bytes:[B

.field private greylist-max-o length:I

.field public greylist-max-o value:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetlength(Landroid/icu/util/BytesTrie$Entry;)I
    .registers 1

    iget p0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mappend(Landroid/icu/util/BytesTrie$Entry;B)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrie$Entry;->append(B)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mappend(Landroid/icu/util/BytesTrie$Entry;[BII)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/BytesTrie$Entry;->append([BII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtruncateString(Landroid/icu/util/BytesTrie$Entry;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrie$Entry;->truncateString(I)V

    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    new-array v0, p1, [B

    iput-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    .line 485
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/icu/util/BytesTrie-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrie$Entry;-><init>(I)V

    return-void
.end method

.method private greylist-max-o append(B)V
    .registers 5
    .param p1, "b"    # B

    .line 525
    iget v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/util/BytesTrie$Entry;->ensureCapacity(I)V

    .line 526
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    iget v1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    aput-byte p1, v0, v1

    .line 527
    return-void
.end method

.method private greylist-max-o append([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 529
    iget v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Landroid/icu/util/BytesTrie$Entry;->ensureCapacity(I)V

    .line 530
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    iget v1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    iget v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    .line 532
    return-void
.end method

.method private greylist-max-o ensureCapacity(I)V
    .registers 6
    .param p1, "len"    # I

    .line 518
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    array-length v0, v0

    if-ge v0, p1, :cond_1c

    .line 519
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v1, p1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    .line 520
    .local v0, "newBytes":[B
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    iget v2, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 521
    iput-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    .line 523
    .end local v0    # "newBytes":[B
    :cond_1c
    return-void
.end method

.method private greylist-max-o truncateString(I)V
    .registers 2
    .param p1, "newLength"    # I

    .line 533
    iput p1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    return-void
.end method


# virtual methods
.method public greylist-max-o byteAt(I)B
    .registers 3
    .param p1, "index"    # I

    .line 496
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public greylist-max-o bytesAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 4

    .line 509
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    const/4 v1, 0x0

    iget v2, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o bytesLength()I
    .registers 2

    .line 490
    iget v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    return v0
.end method

.method public greylist-max-o copyBytesTo([BI)V
    .registers 6
    .param p1, "dest"    # [B
    .param p2, "destOffset"    # I

    .line 503
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    const/4 v1, 0x0

    iget v2, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    return-void
.end method
