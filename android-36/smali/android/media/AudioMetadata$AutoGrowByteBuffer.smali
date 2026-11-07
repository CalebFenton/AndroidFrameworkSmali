.class Landroid/media/AudioMetadata$AutoGrowByteBuffer;
.super Ljava/lang/Object;
.source "AudioMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoGrowByteBuffer"
.end annotation


# static fields
.field private static final blacklist DOUBLE_BYTE_COUNT:I = 0x8

.field private static final blacklist FLOAT_BYTE_COUNT:I = 0x4

.field private static final blacklist INTEGER_BYTE_COUNT:I = 0x4

.field private static final blacklist LONG_BYTE_COUNT:I = 0x8


# instance fields
.field private blacklist mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 471
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;-><init>(I)V

    .line 472
    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    .line 476
    return-void
.end method

.method private blacklist ensureCapacity(I)V
    .registers 6
    .param p1, "count"    # I

    .line 544
    iget-object v0, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_49

    .line 545
    iget-object v0, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    .line 546
    .local v0, "newCapacity":I
    const v1, 0x3fffffff    # 1.9999999f

    if-gt v0, v1, :cond_30

    .line 550
    shl-int/lit8 v0, v0, 0x1

    .line 551
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 552
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 555
    iget-object v2, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 556
    iget-object v2, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 559
    iput-object v1, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    goto :goto_49

    .line 547
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_30
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item memory requirements too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 561
    .end local v0    # "newCapacity":I
    :cond_49
    :goto_49
    return-void
.end method


# virtual methods
.method public blacklist getRawByteBuffer()Ljava/nio/ByteBuffer;
    .registers 5

    .line 480
    iget-object v0, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 481
    .local v0, "limit":I
    iget-object v1, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 482
    .local v1, "position":I
    iget-object v2, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 483
    iget-object v2, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 484
    iget-object v2, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 487
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 488
    iget-object v3, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 489
    return-object v2
.end method

.method public blacklist order(Ljava/nio/ByteOrder;)Landroid/media/AudioMetadata$AutoGrowByteBuffer;
    .registers 3
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .line 506
    iget-object v0, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 507
    return-object p0
.end method

.method public blacklist order()Ljava/nio/ByteOrder;
    .registers 2

    .line 493
    iget-object v0, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist position()I
    .registers 2

    .line 497
    iget-object v0, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public blacklist position(I)Landroid/media/AudioMetadata$AutoGrowByteBuffer;
    .registers 3
    .param p1, "newPosition"    # I

    .line 501
    iget-object v0, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 502
    return-object p0
.end method

.method public blacklist put([B)Landroid/media/AudioMetadata$AutoGrowByteBuffer;
    .registers 3
    .param p1, "src"    # [B

    .line 535
    array-length v0, p1

    invoke-direct {p0, v0}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->ensureCapacity(I)V

    .line 536
    iget-object v0, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 537
    return-object p0
.end method

.method public blacklist putDouble(D)Landroid/media/AudioMetadata$AutoGrowByteBuffer;
    .registers 4
    .param p1, "value"    # D

    .line 529
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->ensureCapacity(I)V

    .line 530
    iget-object v0, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 531
    return-object p0
.end method

.method public blacklist putFloat(F)Landroid/media/AudioMetadata$AutoGrowByteBuffer;
    .registers 3
    .param p1, "value"    # F

    .line 523
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->ensureCapacity(I)V

    .line 524
    iget-object v0, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 525
    return-object p0
.end method

.method public blacklist putInt(I)Landroid/media/AudioMetadata$AutoGrowByteBuffer;
    .registers 3
    .param p1, "value"    # I

    .line 511
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->ensureCapacity(I)V

    .line 512
    iget-object v0, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 513
    return-object p0
.end method

.method public blacklist putLong(J)Landroid/media/AudioMetadata$AutoGrowByteBuffer;
    .registers 4
    .param p1, "value"    # J

    .line 517
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->ensureCapacity(I)V

    .line 518
    iget-object v0, p0, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 519
    return-object p0
.end method
