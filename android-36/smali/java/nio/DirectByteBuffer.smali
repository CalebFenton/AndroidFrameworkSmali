.class public Ljava/nio/DirectByteBuffer;
.super Ljava/nio/MappedByteBuffer;
.source "DirectByteBuffer.java"

# interfaces
.implements Lsun/nio/ch/DirectBuffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/DirectByteBuffer$MemoryRef;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final greylist-max-o cleaner:Lsun/misc/Cleaner;

.field final greylist-max-o memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 41
    return-void
.end method

.method public constructor greylist-max-o test-api <init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    .registers 14
    .param p1, "cap"    # I
    .param p2, "addr"    # J
    .param p4, "fd"    # Ljava/io/FileDescriptor;
    .param p5, "unmapper"    # Ljava/lang/Runnable;
    .param p6, "isReadOnly"    # Z

    .line 126
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, -0x1

    move v4, p1

    move-object v0, p0

    move v3, p1

    move-object v5, p4

    .end local p1    # "cap":I
    .end local p4    # "fd":Ljava/io/FileDescriptor;
    .local v3, "cap":I
    .local v5, "fd":Ljava/io/FileDescriptor;
    invoke-direct/range {v0 .. v6}, Ljava/nio/MappedByteBuffer;-><init>(IIIILjava/io/FileDescriptor;Z)V

    .line 127
    iput-boolean p6, v0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 128
    new-instance p1, Ljava/nio/DirectByteBuffer$MemoryRef;

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Ljava/nio/DirectByteBuffer$MemoryRef;-><init>(JLjava/lang/Object;)V

    iput-object p1, v0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 129
    iput-wide p2, v0, Ljava/nio/DirectByteBuffer;->address:J

    .line 130
    iget-object p1, v0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-static {p1, p5}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object p1

    iput-object p1, v0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 131
    return-void
.end method

.method constructor greylist-max-o <init>(ILjava/nio/DirectByteBuffer$MemoryRef;)V
    .registers 10
    .param p1, "capacity"    # I
    .param p2, "memoryRef"    # Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 102
    iget-object v5, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    iget v6, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p1

    move-object v0, p0

    move v3, p1

    .end local p1    # "capacity":I
    .local v3, "capacity":I
    invoke-direct/range {v0 .. v6}, Ljava/nio/MappedByteBuffer;-><init>(IIII[BI)V

    .line 105
    iput-object p2, v0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 106
    iget-wide v1, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    iget p1, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    int-to-long v4, p1

    add-long/2addr v1, v4

    iput-wide v1, v0, Ljava/nio/DirectByteBuffer;->address:J

    .line 107
    const/4 p1, 0x0

    iput-object p1, v0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 108
    const/4 p1, 0x0

    iput-boolean p1, v0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 109
    return-void
.end method

.method private constructor greylist-max-r <init>(JI)V
    .registers 6
    .param p1, "addr"    # J
    .param p3, "cap"    # I

    .line 114
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3, p3}, Ljava/nio/MappedByteBuffer;-><init>(IIII)V

    .line 115
    new-instance v0, Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-direct {v0, p1, p2, p0}, Ljava/nio/DirectByteBuffer$MemoryRef;-><init>(JLjava/lang/Object;)V

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 116
    iput-wide p1, p0, Ljava/nio/DirectByteBuffer;->address:J

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 118
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIII)V
    .registers 15
    .param p1, "memoryRef"    # Ljava/nio/DirectByteBuffer$MemoryRef;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I

    .line 139
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "memoryRef":Ljava/nio/DirectByteBuffer$MemoryRef;
    .end local p2    # "mark":I
    .end local p3    # "pos":I
    .end local p4    # "lim":I
    .end local p5    # "cap":I
    .end local p6    # "off":I
    .local v1, "memoryRef":Ljava/nio/DirectByteBuffer$MemoryRef;
    .local v2, "mark":I
    .local v3, "pos":I
    .local v4, "lim":I
    .local v5, "cap":I
    .local v6, "off":I
    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    .line 140
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V
    .registers 15
    .param p1, "memoryRef"    # Ljava/nio/DirectByteBuffer$MemoryRef;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "isReadOnly"    # Z

    .line 145
    iget-object v5, p1, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v6, p6

    .end local p2    # "mark":I
    .end local p3    # "pos":I
    .end local p4    # "lim":I
    .end local p5    # "cap":I
    .end local p6    # "off":I
    .local v1, "mark":I
    .local v2, "pos":I
    .local v3, "lim":I
    .local v4, "cap":I
    .local v6, "off":I
    invoke-direct/range {v0 .. v6}, Ljava/nio/MappedByteBuffer;-><init>(IIII[BI)V

    .line 146
    iput-boolean p7, v0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 147
    iput-object p1, v0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 148
    iget-wide p2, p1, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    int-to-long p4, v6

    add-long/2addr p2, p4

    iput-wide p2, v0, Ljava/nio/DirectByteBuffer;->address:J

    .line 149
    const/4 p2, 0x0

    iput-object p2, v0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 150
    return-void
.end method

.method private greylist-max-o get(J)B
    .registers 4
    .param p1, "a"    # J

    .line 237
    invoke-static {p1, p2}, Llibcore/io/Memory;->peekByte(J)B

    move-result v0

    return v0
.end method

.method private greylist-max-o getDouble(J)D
    .registers 7
    .param p1, "a"    # J

    .line 905
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekLong(JZ)J

    move-result-wide v0

    .line 906
    .local v0, "x":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method private greylist-max-o getFloat(J)F
    .registers 5
    .param p1, "a"    # J

    .line 801
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekInt(JZ)I

    move-result v0

    .line 802
    .local v0, "x":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method private greylist-max-o getInt(J)I
    .registers 4
    .param p1, "a"    # J

    .line 597
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekInt(JZ)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getLong(J)J
    .registers 5
    .param p1, "a"    # J

    .line 699
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekLong(JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getShort(J)S
    .registers 4
    .param p1, "a"    # J

    .line 495
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    return v0
.end method

.method private greylist-max-o ix(I)J
    .registers 6
    .param p1, "i"    # I

    .line 233
    iget-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private greylist-max-o put(JB)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "a"    # J
    .param p3, "x"    # B

    .line 288
    invoke-static {p1, p2, p3}, Llibcore/io/Memory;->pokeByte(JB)V

    .line 289
    return-object p0
.end method

.method private greylist-max-o putChar(JC)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "a"    # J
    .param p3, "x"    # C

    .line 430
    int-to-short v0, p3

    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v0, v1}, Llibcore/io/Memory;->pokeShort(JSZ)V

    .line 431
    return-object p0
.end method

.method private greylist-max-o putDouble(JD)Ljava/nio/ByteBuffer;
    .registers 8
    .param p1, "a"    # J
    .param p3, "x"    # D

    .line 943
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 944
    .local v0, "y":J
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {p1, p2, v0, v1, v2}, Llibcore/io/Memory;->pokeLong(JJZ)V

    .line 945
    return-object p0
.end method

.method private greylist-max-o putFloat(JF)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "a"    # J
    .param p3, "x"    # F

    .line 839
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 840
    .local v0, "y":I
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v0, v1}, Llibcore/io/Memory;->pokeInt(JIZ)V

    .line 841
    return-object p0
.end method

.method private greylist-max-o putInt(JI)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "a"    # J
    .param p3, "x"    # I

    .line 634
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, p3, v0}, Llibcore/io/Memory;->pokeInt(JIZ)V

    .line 635
    return-object p0
.end method

.method private greylist-max-o putLong(JJ)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "a"    # J
    .param p3, "x"    # J

    .line 736
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, p3, p4, v0}, Llibcore/io/Memory;->pokeLong(JJZ)V

    .line 737
    return-object p0
.end method

.method private greylist-max-o putShort(JS)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "a"    # J
    .param p3, "x"    # S

    .line 532
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, p3, v0}, Llibcore/io/Memory;->pokeShort(JSZ)V

    .line 533
    return-object p0
.end method


# virtual methods
.method final greylist-max-o _get(I)B
    .registers 3
    .param p1, "i"    # I

    .line 380
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method final greylist-max-o _put(IB)V
    .registers 3
    .param p1, "i"    # I
    .param p2, "b"    # B

    .line 386
    invoke-virtual {p0, p1, p2}, Ljava/nio/DirectByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 387
    return-void
.end method

.method public final blacklist test-api address()J
    .registers 3

    .line 229
    iget-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    return-wide v0
.end method

.method public final whitelist test-api asCharBuffer()Ljava/nio/CharBuffer;
    .registers 11

    .line 477
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-nez v0, :cond_26

    .line 480
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v7

    .line 481
    .local v7, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

    .line 482
    .local v0, "lim":I
    nop

    .line 483
    if-gt v7, v0, :cond_14

    sub-int v1, v0, v7

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    move v9, v1

    .line 484
    .local v9, "rem":I
    shr-int/lit8 v5, v9, 0x1

    .line 485
    .local v5, "size":I
    new-instance v1, Ljava/nio/ByteBufferAsCharBuffer;

    .line 491
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v6, v5

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 485
    return-object v1

    .line 478
    .end local v0    # "lim":I
    .end local v5    # "size":I
    .end local v7    # "off":I
    .end local v9    # "rem":I
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .registers 11

    .line 991
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-nez v0, :cond_26

    .line 994
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v7

    .line 995
    .local v7, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

    .line 996
    .local v0, "lim":I
    nop

    .line 997
    if-gt v7, v0, :cond_14

    sub-int v1, v0, v7

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    move v9, v1

    .line 999
    .local v9, "rem":I
    shr-int/lit8 v5, v9, 0x3

    .line 1000
    .local v5, "size":I
    new-instance v1, Ljava/nio/ByteBufferAsDoubleBuffer;

    .line 1006
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v6, v5

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 1000
    return-object v1

    .line 992
    .end local v0    # "lim":I
    .end local v5    # "size":I
    .end local v7    # "off":I
    .end local v9    # "rem":I
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api asFloatBuffer()Ljava/nio/FloatBuffer;
    .registers 11

    .line 887
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-nez v0, :cond_26

    .line 890
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v7

    .line 891
    .local v7, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

    .line 892
    .local v0, "lim":I
    nop

    .line 893
    if-gt v7, v0, :cond_14

    sub-int v1, v0, v7

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    move v9, v1

    .line 894
    .local v9, "rem":I
    shr-int/lit8 v5, v9, 0x2

    .line 895
    .local v5, "size":I
    new-instance v1, Ljava/nio/ByteBufferAsFloatBuffer;

    .line 901
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v6, v5

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 895
    return-object v1

    .line 888
    .end local v0    # "lim":I
    .end local v5    # "size":I
    .end local v7    # "off":I
    .end local v9    # "rem":I
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api asIntBuffer()Ljava/nio/IntBuffer;
    .registers 11

    .line 681
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-nez v0, :cond_26

    .line 684
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v7

    .line 685
    .local v7, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

    .line 686
    .local v0, "lim":I
    nop

    .line 687
    if-gt v7, v0, :cond_14

    sub-int v1, v0, v7

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    move v9, v1

    .line 688
    .local v9, "rem":I
    shr-int/lit8 v5, v9, 0x2

    .line 689
    .local v5, "size":I
    new-instance v1, Ljava/nio/ByteBufferAsIntBuffer;

    .line 695
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v6, v5

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 689
    return-object v1

    .line 682
    .end local v0    # "lim":I
    .end local v5    # "size":I
    .end local v7    # "off":I
    .end local v9    # "rem":I
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api asLongBuffer()Ljava/nio/LongBuffer;
    .registers 11

    .line 783
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-nez v0, :cond_26

    .line 786
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v7

    .line 787
    .local v7, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

    .line 788
    .local v0, "lim":I
    nop

    .line 789
    if-gt v7, v0, :cond_14

    sub-int v1, v0, v7

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    move v9, v1

    .line 790
    .local v9, "rem":I
    shr-int/lit8 v5, v9, 0x3

    .line 791
    .local v5, "size":I
    new-instance v1, Ljava/nio/ByteBufferAsLongBuffer;

    .line 797
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v6, v5

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsLongBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 791
    return-object v1

    .line 784
    .end local v0    # "lim":I
    .end local v5    # "size":I
    .end local v7    # "off":I
    .end local v9    # "rem":I
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .registers 10

    .line 215
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-nez v0, :cond_21

    .line 218
    new-instance v1, Ljava/nio/DirectByteBuffer;

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 219
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->markValue()I

    move-result v3

    .line 220
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v4

    .line 221
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v5

    .line 222
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v6

    iget v7, p0, Ljava/nio/DirectByteBuffer;->offset:I

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    .line 218
    return-object v1

    .line 216
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api asShortBuffer()Ljava/nio/ShortBuffer;
    .registers 11

    .line 579
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-nez v0, :cond_26

    .line 582
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v7

    .line 583
    .local v7, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

    .line 584
    .local v0, "lim":I
    nop

    .line 585
    if-gt v7, v0, :cond_14

    sub-int v1, v0, v7

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    move v9, v1

    .line 586
    .local v9, "rem":I
    shr-int/lit8 v5, v9, 0x1

    .line 587
    .local v5, "size":I
    new-instance v1, Ljava/nio/ByteBufferAsShortBuffer;

    .line 593
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v6, v5

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 587
    return-object v1

    .line 580
    .end local v0    # "lim":I
    .end local v5    # "size":I
    .end local v7    # "off":I
    .end local v9    # "rem":I
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist attachment()Ljava/lang/Object;
    .registers 2

    .line 155
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    return-object v0
.end method

.method blacklist base()Ljava/lang/Object;
    .registers 2

    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public final greylist cleaner()Lsun/misc/Cleaner;
    .registers 2

    .line 160
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    return-object v0
.end method

.method public final whitelist test-api compact()Ljava/nio/ByteBuffer;
    .registers 9

    .line 350
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_3f

    .line 353
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_39

    .line 356
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v0

    .line 357
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v1

    .line 358
    .local v1, "lim":I
    nop

    .line 359
    if-gt v0, v1, :cond_18

    sub-int v2, v1, v0

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 360
    .local v2, "rem":I
    :goto_19
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->hb:[B

    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    iget v5, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ljava/nio/DirectByteBuffer;->hb:[B

    iget v6, p0, Ljava/nio/DirectByteBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->remaining()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    invoke-virtual {p0, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 362
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 363
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->discardMark()V

    .line 364
    return-object p0

    .line 354
    .end local v0    # "pos":I
    .end local v1    # "lim":I
    .end local v2    # "rem":I
    :cond_39
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 351
    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic whitelist compact()Ljava/nio/MappedByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->compact()Ljava/nio/ByteBuffer;

    move-result-object v0

    check-cast v0, Ljava/nio/MappedByteBuffer;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api duplicate()Ljava/nio/Buffer;
    .registers 2

    .line 41
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->duplicate()Ljava/nio/MappedByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api duplicate()Ljava/nio/ByteBuffer;
    .registers 2

    .line 41
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->duplicate()Ljava/nio/MappedByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist test-api duplicate()Ljava/nio/MappedByteBuffer;
    .registers 10

    .line 201
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-nez v0, :cond_22

    .line 204
    new-instance v1, Ljava/nio/DirectByteBuffer;

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 205
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->markValue()I

    move-result v3

    .line 206
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v4

    .line 207
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v5

    .line 208
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v6

    iget v7, p0, Ljava/nio/DirectByteBuffer;->offset:I

    iget-boolean v8, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    invoke-direct/range {v1 .. v8}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    .line 204
    return-object v1

    .line 202
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api get()B
    .registers 3

    .line 242
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_13

    .line 245
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->nextGetIndex()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->get(J)B

    move-result v0

    return v0

    .line 243
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api get(I)B
    .registers 4
    .param p1, "i"    # I

    .line 250
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_13

    .line 253
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->get(J)B

    move-result v0

    return v0

    .line 251
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api get(I[BII)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 277
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_19

    .line 280
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

    invoke-static {p1, p4, v0}, Ljava/nio/DirectByteBuffer;->checkBounds(III)V

    .line 281
    array-length v0, p2

    invoke-static {p3, p4, v0}, Ljava/nio/DirectByteBuffer;->checkBounds(III)V

    .line 282
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3, p4}, Llibcore/io/Memory;->peekByteArray(J[BII)V

    .line 284
    return-object p0

    .line 278
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api get([BII)Ljava/nio/ByteBuffer;
    .registers 9
    .param p1, "dst"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "length"    # I

    .line 259
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_2d

    .line 262
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/DirectByteBuffer;->checkBounds(III)V

    .line 263
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v0

    .line 264
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v1

    .line 265
    .local v1, "lim":I
    nop

    .line 266
    if-gt v0, v1, :cond_18

    sub-int v2, v1, v0

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 267
    .local v2, "rem":I
    :goto_19
    if-gt p3, v2, :cond_27

    .line 269
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v3

    invoke-static {v3, v4, p1, p2, p3}, Llibcore/io/Memory;->peekByteArray(J[BII)V

    .line 271
    add-int v3, v0, p3

    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 272
    return-object p0

    .line 268
    :cond_27
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 260
    .end local v0    # "pos":I
    .end local v1    # "lim":I
    .end local v2    # "rem":I
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getChar()C
    .registers 5

    .line 391
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_28

    .line 394
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v0, 0x2

    .line 395
    .local v0, "newPosition":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v1

    if-gt v0, v1, :cond_22

    .line 398
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    invoke-direct {p0, v1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v3, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v1

    int-to-char v1, v1

    .line 399
    .local v1, "x":C
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 400
    return v1

    .line 396
    .end local v1    # "x":C
    :cond_22
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 392
    .end local v0    # "newPosition":I
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getChar(I)C
    .registers 5
    .param p1, "i"    # I

    .line 405
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_18

    .line 408
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    .line 409
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    int-to-char v0, v0

    return v0

    .line 406
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getCharUnchecked(I)C
    .registers 5
    .param p1, "i"    # I

    .line 414
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_14

    .line 417
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    int-to-char v0, v0

    return v0

    .line 415
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getDouble()D
    .registers 3

    .line 911
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 914
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 912
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getDouble(I)D
    .registers 4
    .param p1, "i"    # I

    .line 919
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 922
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 920
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o getDoubleUnchecked(I)D
    .registers 4
    .param p1, "i"    # I

    .line 927
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_f

    .line 930
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 928
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getFloat()F
    .registers 3

    .line 807
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_14

    .line 810
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    move-result v0

    return v0

    .line 808
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getFloat(I)F
    .registers 4
    .param p1, "i"    # I

    .line 815
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_14

    .line 818
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    move-result v0

    return v0

    .line 816
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o getFloatUnchecked(I)F
    .registers 4
    .param p1, "i"    # I

    .line 823
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_f

    .line 826
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    move-result v0

    return v0

    .line 824
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getInt()I
    .registers 3

    .line 602
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_14

    .line 605
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    move-result v0

    return v0

    .line 603
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getInt(I)I
    .registers 4
    .param p1, "i"    # I

    .line 610
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_14

    .line 613
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    move-result v0

    return v0

    .line 611
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o getIntUnchecked(I)I
    .registers 4
    .param p1, "i"    # I

    .line 618
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_f

    .line 621
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    move-result v0

    return v0

    .line 619
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getLong()J
    .registers 3

    .line 704
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 707
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    move-result-wide v0

    return-wide v0

    .line 705
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getLong(I)J
    .registers 4
    .param p1, "i"    # I

    .line 712
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 715
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    move-result-wide v0

    return-wide v0

    .line 713
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o getLongUnchecked(I)J
    .registers 4
    .param p1, "i"    # I

    .line 720
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_f

    .line 723
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    move-result-wide v0

    return-wide v0

    .line 721
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getShort()S
    .registers 3

    .line 500
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_14

    .line 503
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    move-result v0

    return v0

    .line 501
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getShort(I)S
    .registers 4
    .param p1, "i"    # I

    .line 508
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_14

    .line 511
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    move-result v0

    return v0

    .line 509
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getShortUnchecked(I)S
    .registers 4
    .param p1, "i"    # I

    .line 516
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_f

    .line 519
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    move-result v0

    return v0

    .line 517
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getUnchecked(I[CII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 422
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 425
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p2    # "dst":[C
    .end local p3    # "dstOffset":I
    .end local p4    # "length":I
    .local v3, "dst":[C
    .local v4, "dstOffset":I
    .local v5, "length":I
    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->peekCharArray(J[CIIZ)V

    .line 427
    return-void

    .line 423
    .end local v3    # "dst":[C
    .end local v4    # "dstOffset":I
    .end local v5    # "length":I
    .restart local p2    # "dst":[C
    .restart local p3    # "dstOffset":I
    .restart local p4    # "length":I
    :cond_15
    move-object v3, p2

    move v4, p3

    .end local p2    # "dst":[C
    .end local p3    # "dstOffset":I
    .restart local v3    # "dst":[C
    .restart local v4    # "dstOffset":I
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "buffer is inaccessible"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method final greylist-max-o getUnchecked(I[DII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 935
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 938
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p2    # "dst":[D
    .end local p3    # "dstOffset":I
    .end local p4    # "length":I
    .local v3, "dst":[D
    .local v4, "dstOffset":I
    .local v5, "length":I
    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->peekDoubleArray(J[DIIZ)V

    .line 940
    return-void

    .line 936
    .end local v3    # "dst":[D
    .end local v4    # "dstOffset":I
    .end local v5    # "length":I
    .restart local p2    # "dst":[D
    .restart local p3    # "dstOffset":I
    .restart local p4    # "length":I
    :cond_15
    move-object v3, p2

    move v4, p3

    .end local p2    # "dst":[D
    .end local p3    # "dstOffset":I
    .restart local v3    # "dst":[D
    .restart local v4    # "dstOffset":I
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "buffer is inaccessible"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method final greylist-max-o getUnchecked(I[FII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 831
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 834
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p2    # "dst":[F
    .end local p3    # "dstOffset":I
    .end local p4    # "length":I
    .local v3, "dst":[F
    .local v4, "dstOffset":I
    .local v5, "length":I
    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->peekFloatArray(J[FIIZ)V

    .line 836
    return-void

    .line 832
    .end local v3    # "dst":[F
    .end local v4    # "dstOffset":I
    .end local v5    # "length":I
    .restart local p2    # "dst":[F
    .restart local p3    # "dstOffset":I
    .restart local p4    # "length":I
    :cond_15
    move-object v3, p2

    move v4, p3

    .end local p2    # "dst":[F
    .end local p3    # "dstOffset":I
    .restart local v3    # "dst":[F
    .restart local v4    # "dstOffset":I
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "buffer is inaccessible"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method final greylist-max-o getUnchecked(I[III)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 626
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 629
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p2    # "dst":[I
    .end local p3    # "dstOffset":I
    .end local p4    # "length":I
    .local v3, "dst":[I
    .local v4, "dstOffset":I
    .local v5, "length":I
    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->peekIntArray(J[IIIZ)V

    .line 631
    return-void

    .line 627
    .end local v3    # "dst":[I
    .end local v4    # "dstOffset":I
    .end local v5    # "length":I
    .restart local p2    # "dst":[I
    .restart local p3    # "dstOffset":I
    .restart local p4    # "length":I
    :cond_15
    move-object v3, p2

    move v4, p3

    .end local p2    # "dst":[I
    .end local p3    # "dstOffset":I
    .restart local v3    # "dst":[I
    .restart local v4    # "dstOffset":I
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "buffer is inaccessible"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method final greylist-max-o getUnchecked(I[JII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 728
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 731
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p2    # "dst":[J
    .end local p3    # "dstOffset":I
    .end local p4    # "length":I
    .local v3, "dst":[J
    .local v4, "dstOffset":I
    .local v5, "length":I
    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->peekLongArray(J[JIIZ)V

    .line 733
    return-void

    .line 729
    .end local v3    # "dst":[J
    .end local v4    # "dstOffset":I
    .end local v5    # "length":I
    .restart local p2    # "dst":[J
    .restart local p3    # "dstOffset":I
    .restart local p4    # "length":I
    :cond_15
    move-object v3, p2

    move v4, p3

    .end local p2    # "dst":[J
    .end local p3    # "dstOffset":I
    .restart local v3    # "dst":[J
    .restart local v4    # "dstOffset":I
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "buffer is inaccessible"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method greylist-max-o getUnchecked(I[SII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 524
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 527
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p2    # "dst":[S
    .end local p3    # "dstOffset":I
    .end local p4    # "length":I
    .local v3, "dst":[S
    .local v4, "dstOffset":I
    .local v5, "length":I
    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->peekShortArray(J[SIIZ)V

    .line 529
    return-void

    .line 525
    .end local v3    # "dst":[S
    .end local v4    # "dstOffset":I
    .end local v5    # "length":I
    .restart local p2    # "dst":[S
    .restart local p3    # "dstOffset":I
    .restart local p4    # "length":I
    :cond_15
    move-object v3, p2

    move v4, p3

    .end local p2    # "dst":[S
    .end local p3    # "dstOffset":I
    .restart local v3    # "dst":[S
    .restart local v4    # "dstOffset":I
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "buffer is inaccessible"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final greylist-max-o isAccessible()Z
    .registers 2

    .line 1011
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    return v0
.end method

.method public final whitelist test-api isDirect()Z
    .registers 2

    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist test-api isReadOnly()Z
    .registers 2

    .line 374
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    return v0
.end method

.method public final whitelist test-api put(B)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # B

    .line 302
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1c

    .line 305
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_16

    .line 308
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->nextPutIndex()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->put(JB)Ljava/nio/ByteBuffer;

    .line 309
    return-object p0

    .line 306
    :cond_16
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 303
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api put(IB)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # B

    .line 314
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1c

    .line 317
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_16

    .line 320
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->put(JB)Ljava/nio/ByteBuffer;

    .line 321
    return-object p0

    .line 318
    :cond_16
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 315
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 294
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_b

    .line 297
    invoke-super {p0, p1}, Ljava/nio/MappedByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 295
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api put([BII)Ljava/nio/ByteBuffer;
    .registers 9
    .param p1, "src"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "length"    # I

    .line 327
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_37

    .line 330
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_31

    .line 333
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/nio/DirectByteBuffer;->checkBounds(III)V

    .line 334
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v0

    .line 335
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v1

    .line 336
    .local v1, "lim":I
    nop

    .line 337
    if-gt v0, v1, :cond_1c

    sub-int v2, v1, v0

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    .line 338
    .local v2, "rem":I
    :goto_1d
    if-gt p3, v2, :cond_2b

    .line 340
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v3

    invoke-static {v3, v4, p1, p2, p3}, Llibcore/io/Memory;->pokeByteArray(J[BII)V

    .line 342
    add-int v3, v0, p3

    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 343
    return-object p0

    .line 339
    :cond_2b
    new-instance v3, Ljava/nio/BufferOverflowException;

    invoke-direct {v3}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v3

    .line 331
    .end local v0    # "pos":I
    .end local v1    # "lim":I
    .end local v2    # "rem":I
    :cond_31
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 328
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putChar(C)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # C

    .line 436
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1d

    .line 439
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_17

    .line 442
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    .line 443
    return-object p0

    .line 440
    :cond_17
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 437
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putChar(IC)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # C

    .line 448
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1d

    .line 451
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_17

    .line 454
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    .line 455
    return-object p0

    .line 452
    :cond_17
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 449
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o putCharUnchecked(IC)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # C

    .line 460
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_e

    .line 463
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    .line 464
    return-void

    .line 461
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putDouble(D)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "x"    # D

    .line 950
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1e

    .line 953
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_18

    .line 956
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    .line 957
    return-object p0

    .line 954
    :cond_18
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 951
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putDouble(ID)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # D

    .line 962
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1e

    .line 965
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_18

    .line 968
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    .line 969
    return-object p0

    .line 966
    :cond_18
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 963
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o putDoubleUnchecked(ID)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # D

    .line 974
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_e

    .line 977
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    .line 978
    return-void

    .line 975
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putFloat(F)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # F

    .line 846
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1d

    .line 849
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_17

    .line 852
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    .line 853
    return-object p0

    .line 850
    :cond_17
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 847
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putFloat(IF)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # F

    .line 858
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1d

    .line 861
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_17

    .line 864
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    .line 865
    return-object p0

    .line 862
    :cond_17
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 859
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o putFloatUnchecked(IF)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # F

    .line 870
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_e

    .line 873
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    .line 874
    return-void

    .line 871
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putInt(I)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # I

    .line 640
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1d

    .line 643
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_17

    .line 646
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    .line 647
    return-object p0

    .line 644
    :cond_17
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 641
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putInt(II)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # I

    .line 652
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1d

    .line 655
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_17

    .line 658
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    .line 659
    return-object p0

    .line 656
    :cond_17
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 653
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o putIntUnchecked(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # I

    .line 664
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_e

    .line 667
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    .line 668
    return-void

    .line 665
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putLong(IJ)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # J

    .line 754
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1e

    .line 757
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_18

    .line 760
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    .line 761
    return-object p0

    .line 758
    :cond_18
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 755
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putLong(J)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "x"    # J

    .line 742
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1e

    .line 745
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_18

    .line 748
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    .line 749
    return-object p0

    .line 746
    :cond_18
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 743
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o putLongUnchecked(IJ)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # J

    .line 766
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_e

    .line 769
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    .line 770
    return-void

    .line 767
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putShort(IS)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # S

    .line 550
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1d

    .line 553
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_17

    .line 556
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    .line 557
    return-object p0

    .line 554
    :cond_17
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 551
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api putShort(S)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # S

    .line 538
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1d

    .line 541
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_17

    .line 544
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    .line 545
    return-object p0

    .line 542
    :cond_17
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 539
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o putShortUnchecked(IS)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # S

    .line 562
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_e

    .line 565
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    .line 566
    return-void

    .line 563
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o putUnchecked(I[CII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [C
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 468
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 471
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p2    # "src":[C
    .end local p3    # "srcOffset":I
    .end local p4    # "length":I
    .local v3, "src":[C
    .local v4, "srcOffset":I
    .local v5, "length":I
    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->pokeCharArray(J[CIIZ)V

    .line 473
    return-void

    .line 469
    .end local v3    # "src":[C
    .end local v4    # "srcOffset":I
    .end local v5    # "length":I
    .restart local p2    # "src":[C
    .restart local p3    # "srcOffset":I
    .restart local p4    # "length":I
    :cond_15
    move-object v3, p2

    move v4, p3

    .end local p2    # "src":[C
    .end local p3    # "srcOffset":I
    .restart local v3    # "src":[C
    .restart local v4    # "srcOffset":I
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "buffer is inaccessible"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method final greylist-max-o putUnchecked(I[DII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [D
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 982
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 985
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p2    # "src":[D
    .end local p3    # "srcOffset":I
    .end local p4    # "length":I
    .local v3, "src":[D
    .local v4, "srcOffset":I
    .local v5, "length":I
    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->pokeDoubleArray(J[DIIZ)V

    .line 987
    return-void

    .line 983
    .end local v3    # "src":[D
    .end local v4    # "srcOffset":I
    .end local v5    # "length":I
    .restart local p2    # "src":[D
    .restart local p3    # "srcOffset":I
    .restart local p4    # "length":I
    :cond_15
    move-object v3, p2

    move v4, p3

    .end local p2    # "src":[D
    .end local p3    # "srcOffset":I
    .restart local v3    # "src":[D
    .restart local v4    # "srcOffset":I
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "buffer is inaccessible"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method final greylist-max-o putUnchecked(I[FII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [F
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 878
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 881
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p2    # "src":[F
    .end local p3    # "srcOffset":I
    .end local p4    # "length":I
    .local v3, "src":[F
    .local v4, "srcOffset":I
    .local v5, "length":I
    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->pokeFloatArray(J[FIIZ)V

    .line 883
    return-void

    .line 879
    .end local v3    # "src":[F
    .end local v4    # "srcOffset":I
    .end local v5    # "length":I
    .restart local p2    # "src":[F
    .restart local p3    # "srcOffset":I
    .restart local p4    # "length":I
    :cond_15
    move-object v3, p2

    move v4, p3

    .end local p2    # "src":[F
    .end local p3    # "srcOffset":I
    .restart local v3    # "src":[F
    .restart local v4    # "srcOffset":I
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "buffer is inaccessible"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method final greylist-max-o putUnchecked(I[III)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [I
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 672
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 675
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p2    # "src":[I
    .end local p3    # "srcOffset":I
    .end local p4    # "length":I
    .local v3, "src":[I
    .local v4, "srcOffset":I
    .local v5, "length":I
    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->pokeIntArray(J[IIIZ)V

    .line 677
    return-void

    .line 673
    .end local v3    # "src":[I
    .end local v4    # "srcOffset":I
    .end local v5    # "length":I
    .restart local p2    # "src":[I
    .restart local p3    # "srcOffset":I
    .restart local p4    # "length":I
    :cond_15
    move-object v3, p2

    move v4, p3

    .end local p2    # "src":[I
    .end local p3    # "srcOffset":I
    .restart local v3    # "src":[I
    .restart local v4    # "srcOffset":I
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "buffer is inaccessible"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method final greylist-max-o putUnchecked(I[JII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [J
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 774
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 777
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p2    # "src":[J
    .end local p3    # "srcOffset":I
    .end local p4    # "length":I
    .local v3, "src":[J
    .local v4, "srcOffset":I
    .local v5, "length":I
    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->pokeLongArray(J[JIIZ)V

    .line 779
    return-void

    .line 775
    .end local v3    # "src":[J
    .end local v4    # "srcOffset":I
    .end local v5    # "length":I
    .restart local p2    # "src":[J
    .restart local p3    # "srcOffset":I
    .restart local p4    # "length":I
    :cond_15
    move-object v3, p2

    move v4, p3

    .end local p2    # "src":[J
    .end local p3    # "srcOffset":I
    .restart local v3    # "src":[J
    .restart local v4    # "srcOffset":I
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "buffer is inaccessible"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method greylist-max-o putUnchecked(I[SII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [S
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 570
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_15

    .line 573
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v1

    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p2    # "src":[S
    .end local p3    # "srcOffset":I
    .end local p4    # "length":I
    .local v3, "src":[S
    .local v4, "srcOffset":I
    .local v5, "length":I
    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->pokeShortArray(J[SIIZ)V

    .line 575
    return-void

    .line 571
    .end local v3    # "src":[S
    .end local v4    # "srcOffset":I
    .end local v5    # "length":I
    .restart local p2    # "src":[S
    .restart local p3    # "srcOffset":I
    .restart local p4    # "length":I
    :cond_15
    move-object v3, p2

    move v4, p3

    .end local p2    # "src":[S
    .end local p3    # "srcOffset":I
    .restart local v3    # "src":[S
    .restart local v4    # "srcOffset":I
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "buffer is inaccessible"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final greylist-max-o test-api setAccessible(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 1016
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iput-boolean p1, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    .line 1017
    return-void
.end method

.method public bridge synthetic whitelist test-api slice()Ljava/nio/Buffer;
    .registers 2

    .line 41
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->slice()Ljava/nio/MappedByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api slice(II)Ljava/nio/Buffer;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Ljava/nio/DirectByteBuffer;->slice(II)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api slice()Ljava/nio/ByteBuffer;
    .registers 2

    .line 41
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->slice()Ljava/nio/MappedByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api slice(II)Ljava/nio/ByteBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Ljava/nio/DirectByteBuffer;->slice(II)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist test-api slice()Ljava/nio/MappedByteBuffer;
    .registers 12

    .line 170
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_28

    .line 173
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v0

    .line 174
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v1

    .line 175
    .local v1, "lim":I
    nop

    .line 176
    if-gt v0, v1, :cond_14

    sub-int v2, v1, v0

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    move v7, v2

    .line 177
    .local v7, "rem":I
    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int v9, v0, v2

    .line 178
    .local v9, "off":I
    nop

    .line 179
    new-instance v3, Ljava/nio/DirectByteBuffer;

    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    const/4 v6, 0x0

    iget-boolean v10, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    const/4 v5, -0x1

    move v8, v7

    invoke-direct/range {v3 .. v10}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    return-object v3

    .line 171
    .end local v0    # "pos":I
    .end local v1    # "lim":I
    .end local v7    # "rem":I
    .end local v9    # "off":I
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api slice(II)Ljava/nio/MappedByteBuffer;
    .registers 12
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 184
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-eqz v0, :cond_1f

    .line 187
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 188
    new-instance v1, Ljava/nio/DirectByteBuffer;

    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget v0, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int v7, p1, v0

    iget-boolean v8, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v6, p2

    move v5, p2

    .end local p2    # "length":I
    .local v5, "length":I
    invoke-direct/range {v1 .. v8}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    return-object v1

    .line 185
    .end local v5    # "length":I
    .restart local p2    # "length":I
    :cond_1f
    move v5, p2

    .end local p2    # "length":I
    .restart local v5    # "length":I
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "buffer is inaccessible"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
