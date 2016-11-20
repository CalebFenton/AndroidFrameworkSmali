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
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final cleaner:Lsun/misc/Cleaner;

.field final memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/nio/DirectByteBuffer;

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
    sput-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    #@b
    .line 38
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    .locals 6
    .param p1, "cap"    # I
    .param p2, "addr"    # J
    .param p4, "fd"    # Ljava/io/FileDescriptor;
    .param p5, "unmapper"    # Ljava/lang/Runnable;
    .param p6, "isReadOnly"    # Z

    #@0
    .prologue
    .line 106
    const/4 v1, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    move-object v0, p0

    #@3
    move v3, p1

    #@4
    move v4, p1

    #@5
    move-object v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/nio/MappedByteBuffer;-><init>(IIIILjava/io/FileDescriptor;)V

    #@9
    .line 107
    iput-boolean p6, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@b
    .line 108
    new-instance v0, Ljava/nio/DirectByteBuffer$MemoryRef;

    #@d
    invoke-direct {v0, p2, p3}, Ljava/nio/DirectByteBuffer$MemoryRef;-><init>(J)V

    #@10
    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@12
    .line 109
    iput-wide p2, p0, Ljava/nio/DirectByteBuffer;->address:J

    #@14
    .line 110
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@16
    invoke-static {v0, p5}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    #@1c
    .line 105
    return-void
.end method

.method constructor <init>(ILjava/nio/DirectByteBuffer$MemoryRef;)V
    .locals 7
    .param p1, "capacity"    # I
    .param p2, "memoryRef"    # Ljava/nio/DirectByteBuffer$MemoryRef;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 83
    iget-object v5, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    #@3
    iget v6, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    #@5
    const/4 v1, -0x1

    #@6
    move-object v0, p0

    #@7
    move v3, p1

    #@8
    move v4, p1

    #@9
    invoke-direct/range {v0 .. v6}, Ljava/nio/MappedByteBuffer;-><init>(IIII[BI)V

    #@c
    .line 86
    iput-object p2, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@e
    .line 87
    iget-wide v0, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    #@10
    iget v3, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    #@12
    int-to-long v4, v3

    #@13
    add-long/2addr v0, v4

    #@14
    iput-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    #@16
    .line 88
    const/4 v0, 0x0

    #@17
    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    #@19
    .line 89
    iput-boolean v2, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@1b
    .line 82
    return-void
.end method

.method private constructor <init>(JI)V
    .locals 3
    .param p1, "addr"    # J
    .param p3, "cap"    # I

    #@0
    .prologue
    .line 95
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1, p3, p3}, Ljava/nio/MappedByteBuffer;-><init>(IIII)V

    #@5
    .line 96
    new-instance v0, Ljava/nio/DirectByteBuffer$MemoryRef;

    #@7
    invoke-direct {v0, p1, p2}, Ljava/nio/DirectByteBuffer$MemoryRef;-><init>(J)V

    #@a
    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@c
    .line 97
    iput-wide p1, p0, Ljava/nio/DirectByteBuffer;->address:J

    #@e
    .line 98
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    #@11
    .line 94
    return-void
.end method

.method constructor <init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIII)V
    .locals 8
    .param p1, "memoryRef"    # Ljava/nio/DirectByteBuffer$MemoryRef;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I

    #@0
    .prologue
    .line 118
    const/4 v7, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    #@b
    .line 117
    return-void
.end method

.method constructor <init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V
    .locals 7
    .param p1, "memoryRef"    # Ljava/nio/DirectByteBuffer$MemoryRef;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "isReadOnly"    # Z

    #@0
    .prologue
    .line 124
    iget-object v5, p1, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    #@2
    move-object v0, p0

    #@3
    move v1, p2

    #@4
    move v2, p3

    #@5
    move v3, p4

    #@6
    move v4, p5

    #@7
    move v6, p6

    #@8
    invoke-direct/range {v0 .. v6}, Ljava/nio/MappedByteBuffer;-><init>(IIII[BI)V

    #@b
    .line 125
    iput-boolean p7, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@d
    .line 126
    iput-object p1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@f
    .line 127
    iget-wide v0, p1, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    #@11
    int-to-long v2, p6

    #@12
    add-long/2addr v0, v2

    #@13
    iput-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    #@15
    .line 128
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    #@18
    .line 123
    return-void
.end method

.method private get(J)B
    .locals 1
    .param p1, "a"    # J

    #@0
    .prologue
    .line 190
    invoke-static {p1, p2}, Llibcore/io/Memory;->peekByte(J)B

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getChar(J)C
    .locals 4
    .param p1, "a"    # J

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "buffer is inaccessible"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 309
    :cond_0
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@11
    int-to-long v2, v0

    #@12
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    const/4 v0, 0x0

    #@17
    :goto_0
    invoke-static {v2, v3, v0}, Llibcore/io/Memory;->peekShort(JZ)S

    #@1a
    move-result v0

    #@1b
    int-to-char v0, v0

    #@1c
    return v0

    #@1d
    :cond_1
    const/4 v0, 0x1

    #@1e
    goto :goto_0
.end method

.method private getDouble(J)D
    .locals 5
    .param p1, "a"    # J

    #@0
    .prologue
    .line 728
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    const/4 v2, 0x0

    #@5
    :goto_0
    invoke-static {p1, p2, v2}, Llibcore/io/Memory;->peekLong(JZ)J

    #@8
    move-result-wide v0

    #@9
    .line 729
    .local v0, "x":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@c
    move-result-wide v2

    #@d
    return-wide v2

    #@e
    .line 728
    .end local v0    # "x":J
    :cond_0
    const/4 v2, 0x1

    #@f
    goto :goto_0
.end method

.method private getFloat(J)F
    .locals 3
    .param p1, "a"    # J

    #@0
    .prologue
    .line 645
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_0
    invoke-static {p1, p2, v1}, Llibcore/io/Memory;->peekInt(JZ)I

    #@8
    move-result v0

    #@9
    .line 646
    .local v0, "x":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 645
    .end local v0    # "x":I
    :cond_0
    const/4 v1, 0x1

    #@f
    goto :goto_0
.end method

.method private getInt(J)I
    .locals 1
    .param p1, "a"    # J

    #@0
    .prologue
    .line 481
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekInt(JZ)I

    #@8
    move-result v0

    #@9
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method private getLong(J)J
    .locals 3
    .param p1, "a"    # J

    #@0
    .prologue
    .line 563
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekLong(JZ)J

    #@8
    move-result-wide v0

    #@9
    return-wide v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method private getShort(J)S
    .locals 1
    .param p1, "a"    # J

    #@0
    .prologue
    .line 399
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekShort(JZ)S

    #@8
    move-result v0

    #@9
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method private ix(I)J
    .locals 4
    .param p1, "i"    # I

    #@0
    .prologue
    .line 186
    iget-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    return-wide v0
.end method

.method private putChar(JC)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "a"    # J
    .param p3, "x"    # C

    #@0
    .prologue
    .line 345
    int-to-short v1, p3

    #@1
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    invoke-static {p1, p2, v1, v0}, Llibcore/io/Memory;->pokeShort(JSZ)V

    #@9
    .line 346
    return-object p0

    #@a
    .line 345
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method private putDouble(JD)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "a"    # J
    .param p3, "x"    # D

    #@0
    .prologue
    .line 756
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    .line 757
    .local v0, "y":J
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v2, 0x0

    #@9
    :goto_0
    invoke-static {p1, p2, v0, v1, v2}, Llibcore/io/Memory;->pokeLong(JJZ)V

    #@c
    .line 758
    return-object p0

    #@d
    .line 757
    :cond_0
    const/4 v2, 0x1

    #@e
    goto :goto_0
.end method

.method private putFloat(JF)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "a"    # J
    .param p3, "x"    # F

    #@0
    .prologue
    .line 673
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@3
    move-result v0

    #@4
    .line 674
    .local v0, "y":I
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v1, 0x0

    #@9
    :goto_0
    invoke-static {p1, p2, v0, v1}, Llibcore/io/Memory;->pokeInt(JIZ)V

    #@c
    .line 675
    return-object p0

    #@d
    .line 674
    :cond_0
    const/4 v1, 0x1

    #@e
    goto :goto_0
.end method

.method private putInt(JI)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "a"    # J
    .param p3, "x"    # I

    #@0
    .prologue
    .line 508
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    invoke-static {p1, p2, p3, v0}, Llibcore/io/Memory;->pokeInt(JIZ)V

    #@8
    .line 509
    return-object p0

    #@9
    .line 508
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method private putLong(JJ)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "a"    # J
    .param p3, "x"    # J

    #@0
    .prologue
    .line 590
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    invoke-static {p1, p2, p3, p4, v0}, Llibcore/io/Memory;->pokeLong(JJZ)V

    #@8
    .line 591
    return-object p0

    #@9
    .line 590
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method private putShort(JS)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "a"    # J
    .param p3, "x"    # S

    #@0
    .prologue
    .line 427
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    invoke-static {p1, p2, p3, v0}, Llibcore/io/Memory;->pokeShort(JSZ)V

    #@8
    .line 428
    return-object p0

    #@9
    .line 427
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method


# virtual methods
.method _get(I)B
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 298
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->get(I)B

    #@3
    move-result v0

    #@4
    return v0
.end method

.method _put(IB)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "b"    # B

    #@0
    .prologue
    .line 302
    invoke-virtual {p0, p1, p2}, Ljava/nio/DirectByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    #@3
    .line 301
    return-void
.end method

.method public address()J
    .locals 2

    #@0
    .prologue
    .line 182
    iget-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    #@2
    return-wide v0
.end method

.method public asCharBuffer()Ljava/nio/CharBuffer;
    .locals 10

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 381
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@3
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 382
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "buffer is inaccessible"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 384
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    #@13
    move-result v6

    #@14
    .line 385
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    #@17
    move-result v8

    #@18
    .line 386
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    #@1a
    if-nez v0, :cond_2

    #@1c
    if-gt v6, v8, :cond_1

    #@1e
    const/4 v0, 0x1

    #@1f
    :goto_0
    if-nez v0, :cond_2

    #@21
    new-instance v0, Ljava/lang/AssertionError;

    #@23
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@26
    throw v0

    #@27
    :cond_1
    move v0, v3

    #@28
    goto :goto_0

    #@29
    .line 387
    :cond_2
    if-gt v6, v8, :cond_3

    #@2b
    sub-int v9, v8, v6

    #@2d
    .line 388
    .local v9, "rem":I
    :goto_1
    shr-int/lit8 v4, v9, 0x1

    #@2f
    .line 389
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsCharBuffer;

    #@31
    .line 395
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    #@34
    move-result-object v7

    #@35
    .line 390
    const/4 v2, -0x1

    #@36
    move-object v1, p0

    #@37
    move v5, v4

    #@38
    .line 389
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    #@3b
    return-object v0

    #@3c
    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_3
    move v9, v3

    #@3d
    .line 387
    goto :goto_1
.end method

.method public asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 10

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 793
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@3
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 794
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "buffer is inaccessible"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 796
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    #@13
    move-result v6

    #@14
    .line 797
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    #@17
    move-result v8

    #@18
    .line 798
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    #@1a
    if-nez v0, :cond_2

    #@1c
    if-gt v6, v8, :cond_1

    #@1e
    const/4 v0, 0x1

    #@1f
    :goto_0
    if-nez v0, :cond_2

    #@21
    new-instance v0, Ljava/lang/AssertionError;

    #@23
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@26
    throw v0

    #@27
    :cond_1
    move v0, v3

    #@28
    goto :goto_0

    #@29
    .line 799
    :cond_2
    if-gt v6, v8, :cond_3

    #@2b
    sub-int v9, v8, v6

    #@2d
    .line 801
    .local v9, "rem":I
    :goto_1
    shr-int/lit8 v4, v9, 0x3

    #@2f
    .line 802
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    #@31
    .line 808
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    #@34
    move-result-object v7

    #@35
    .line 803
    const/4 v2, -0x1

    #@36
    move-object v1, p0

    #@37
    move v5, v4

    #@38
    .line 802
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    #@3b
    return-object v0

    #@3c
    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_3
    move v9, v3

    #@3d
    .line 799
    goto :goto_1
.end method

.method public asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 10

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 710
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@3
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 711
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "buffer is inaccessible"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 713
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    #@13
    move-result v6

    #@14
    .line 714
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    #@17
    move-result v8

    #@18
    .line 715
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    #@1a
    if-nez v0, :cond_2

    #@1c
    if-gt v6, v8, :cond_1

    #@1e
    const/4 v0, 0x1

    #@1f
    :goto_0
    if-nez v0, :cond_2

    #@21
    new-instance v0, Ljava/lang/AssertionError;

    #@23
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@26
    throw v0

    #@27
    :cond_1
    move v0, v3

    #@28
    goto :goto_0

    #@29
    .line 716
    :cond_2
    if-gt v6, v8, :cond_3

    #@2b
    sub-int v9, v8, v6

    #@2d
    .line 717
    .local v9, "rem":I
    :goto_1
    shr-int/lit8 v4, v9, 0x2

    #@2f
    .line 718
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsFloatBuffer;

    #@31
    .line 724
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    #@34
    move-result-object v7

    #@35
    .line 719
    const/4 v2, -0x1

    #@36
    move-object v1, p0

    #@37
    move v5, v4

    #@38
    .line 718
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    #@3b
    return-object v0

    #@3c
    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_3
    move v9, v3

    #@3d
    .line 716
    goto :goto_1
.end method

.method public asIntBuffer()Ljava/nio/IntBuffer;
    .locals 10

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 545
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@3
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 546
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "buffer is inaccessible"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 548
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    #@13
    move-result v6

    #@14
    .line 549
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    #@17
    move-result v8

    #@18
    .line 550
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    #@1a
    if-nez v0, :cond_2

    #@1c
    if-gt v6, v8, :cond_1

    #@1e
    const/4 v0, 0x1

    #@1f
    :goto_0
    if-nez v0, :cond_2

    #@21
    new-instance v0, Ljava/lang/AssertionError;

    #@23
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@26
    throw v0

    #@27
    :cond_1
    move v0, v3

    #@28
    goto :goto_0

    #@29
    .line 551
    :cond_2
    if-gt v6, v8, :cond_3

    #@2b
    sub-int v9, v8, v6

    #@2d
    .line 552
    .local v9, "rem":I
    :goto_1
    shr-int/lit8 v4, v9, 0x2

    #@2f
    .line 553
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsIntBuffer;

    #@31
    .line 559
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    #@34
    move-result-object v7

    #@35
    .line 554
    const/4 v2, -0x1

    #@36
    move-object v1, p0

    #@37
    move v5, v4

    #@38
    .line 553
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    #@3b
    return-object v0

    #@3c
    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_3
    move v9, v3

    #@3d
    .line 551
    goto :goto_1
.end method

.method public asLongBuffer()Ljava/nio/LongBuffer;
    .locals 10

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 627
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@3
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 628
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "buffer is inaccessible"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 630
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    #@13
    move-result v6

    #@14
    .line 631
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    #@17
    move-result v8

    #@18
    .line 632
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    #@1a
    if-nez v0, :cond_2

    #@1c
    if-gt v6, v8, :cond_1

    #@1e
    const/4 v0, 0x1

    #@1f
    :goto_0
    if-nez v0, :cond_2

    #@21
    new-instance v0, Ljava/lang/AssertionError;

    #@23
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@26
    throw v0

    #@27
    :cond_1
    move v0, v3

    #@28
    goto :goto_0

    #@29
    .line 633
    :cond_2
    if-gt v6, v8, :cond_3

    #@2b
    sub-int v9, v8, v6

    #@2d
    .line 634
    .local v9, "rem":I
    :goto_1
    shr-int/lit8 v4, v9, 0x3

    #@2f
    .line 635
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsLongBuffer;

    #@31
    .line 641
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    #@34
    move-result-object v7

    #@35
    .line 636
    const/4 v2, -0x1

    #@36
    move-object v1, p0

    #@37
    move v5, v4

    #@38
    .line 635
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsLongBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    #@3b
    return-object v0

    #@3c
    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_3
    move v9, v3

    #@3d
    .line 633
    goto :goto_1
.end method

.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .locals 8

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "buffer is inaccessible"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 171
    :cond_0
    new-instance v0, Ljava/nio/DirectByteBuffer;

    #@11
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@13
    .line 172
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->markValue()I

    #@16
    move-result v2

    #@17
    .line 173
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    #@1a
    move-result v3

    #@1b
    .line 174
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    #@1e
    move-result v4

    #@1f
    .line 175
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    #@22
    move-result v5

    #@23
    .line 176
    iget v6, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@25
    .line 177
    const/4 v7, 0x1

    #@26
    .line 171
    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    #@29
    return-object v0
.end method

.method public asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 10

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 463
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@3
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 464
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "buffer is inaccessible"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 466
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    #@13
    move-result v6

    #@14
    .line 467
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    #@17
    move-result v8

    #@18
    .line 468
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    #@1a
    if-nez v0, :cond_2

    #@1c
    if-gt v6, v8, :cond_1

    #@1e
    const/4 v0, 0x1

    #@1f
    :goto_0
    if-nez v0, :cond_2

    #@21
    new-instance v0, Ljava/lang/AssertionError;

    #@23
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@26
    throw v0

    #@27
    :cond_1
    move v0, v3

    #@28
    goto :goto_0

    #@29
    .line 469
    :cond_2
    if-gt v6, v8, :cond_3

    #@2b
    sub-int v9, v8, v6

    #@2d
    .line 470
    .local v9, "rem":I
    :goto_1
    shr-int/lit8 v4, v9, 0x1

    #@2f
    .line 471
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsShortBuffer;

    #@31
    .line 477
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    #@34
    move-result-object v7

    #@35
    .line 472
    const/4 v2, -0x1

    #@36
    move-object v1, p0

    #@37
    move v5, v4

    #@38
    .line 471
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    #@3b
    return-object v0

    #@3c
    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_3
    move v9, v3

    #@3d
    .line 469
    goto :goto_1
.end method

.method public attachment()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    return-object v0
.end method

.method public cleaner()Lsun/misc/Cleaner;
    .locals 1

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    #@2
    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .locals 8

    #@0
    .prologue
    .line 272
    iget-boolean v3, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 273
    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v3

    #@a
    .line 275
    :cond_0
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@c
    iget-boolean v3, v3, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@e
    if-nez v3, :cond_1

    #@10
    .line 276
    new-instance v3, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v4, "buffer is inaccessible"

    #@15
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v3

    #@19
    .line 278
    :cond_1
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    #@1c
    move-result v1

    #@1d
    .line 279
    .local v1, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    #@20
    move-result v0

    #@21
    .line 280
    .local v0, "lim":I
    sget-boolean v3, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    #@23
    if-nez v3, :cond_3

    #@25
    if-gt v1, v0, :cond_2

    #@27
    const/4 v3, 0x1

    #@28
    :goto_0
    if-nez v3, :cond_3

    #@2a
    new-instance v3, Ljava/lang/AssertionError;

    #@2c
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@2f
    throw v3

    #@30
    :cond_2
    const/4 v3, 0x0

    #@31
    goto :goto_0

    #@32
    .line 281
    :cond_3
    if-gt v1, v0, :cond_4

    #@34
    sub-int v2, v0, v1

    #@36
    .line 282
    .local v2, "rem":I
    :goto_1
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->hb:[B

    #@38
    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@3a
    iget v5, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@3c
    add-int/2addr v4, v5

    #@3d
    iget-object v5, p0, Ljava/nio/DirectByteBuffer;->hb:[B

    #@3f
    iget v6, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@41
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->remaining()I

    #@44
    move-result v7

    #@45
    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@48
    .line 283
    invoke-virtual {p0, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    #@4b
    .line 284
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    #@4e
    move-result v3

    #@4f
    invoke-virtual {p0, v3}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@52
    .line 285
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->discardMark()V

    #@55
    .line 286
    return-object p0

    #@56
    .line 281
    .end local v2    # "rem":I
    :cond_4
    const/4 v2, 0x0

    #@57
    .restart local v2    # "rem":I
    goto :goto_1
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .locals 8

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "buffer is inaccessible"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 158
    :cond_0
    new-instance v0, Ljava/nio/DirectByteBuffer;

    #@11
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@13
    .line 159
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->markValue()I

    #@16
    move-result v2

    #@17
    .line 160
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    #@1a
    move-result v3

    #@1b
    .line 161
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    #@1e
    move-result v4

    #@1f
    .line 162
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    #@22
    move-result v5

    #@23
    .line 163
    iget v6, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@25
    .line 164
    iget-boolean v7, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@27
    .line 158
    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    #@2a
    return-object v0
.end method

.method public get()B
    .locals 2

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "buffer is inaccessible"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 197
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->nextGetIndex()I

    #@12
    move-result v0

    #@13
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@16
    move-result-wide v0

    #@17
    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->get(J)B

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method public get(I)B
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "buffer is inaccessible"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 204
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)I

    #@12
    move-result v0

    #@13
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@16
    move-result-wide v0

    #@17
    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->get(J)B

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method public get([BII)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "dst"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 208
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@3
    iget-boolean v3, v3, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@5
    if-nez v3, :cond_0

    #@7
    .line 209
    new-instance v3, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v4, "buffer is inaccessible"

    #@c
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v3

    #@10
    .line 211
    :cond_0
    array-length v3, p1

    #@11
    invoke-static {p2, p3, v3}, Ljava/nio/DirectByteBuffer;->checkBounds(III)V

    #@14
    .line 212
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    #@17
    move-result v1

    #@18
    .line 213
    .local v1, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    #@1b
    move-result v0

    #@1c
    .line 214
    .local v0, "lim":I
    sget-boolean v3, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    #@1e
    if-nez v3, :cond_2

    #@20
    if-gt v1, v0, :cond_1

    #@22
    const/4 v3, 0x1

    #@23
    :goto_0
    if-nez v3, :cond_2

    #@25
    new-instance v3, Ljava/lang/AssertionError;

    #@27
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@2a
    throw v3

    #@2b
    :cond_1
    move v3, v2

    #@2c
    goto :goto_0

    #@2d
    .line 215
    :cond_2
    if-gt v1, v0, :cond_3

    #@2f
    sub-int v2, v0, v1

    #@31
    .line 216
    .local v2, "rem":I
    :cond_3
    if-le p3, v2, :cond_4

    #@33
    .line 217
    new-instance v3, Ljava/nio/BufferUnderflowException;

    #@35
    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@38
    throw v3

    #@39
    .line 218
    :cond_4
    invoke-direct {p0, v1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3c
    move-result-wide v4

    #@3d
    invoke-static {v4, v5, p1, p2, p3}, Llibcore/io/Memory;->peekByteArray(J[BII)V

    #@40
    .line 220
    add-int v3, v1, p3

    #@42
    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@44
    .line 221
    return-object p0
.end method

.method public getChar()C
    .locals 6

    #@0
    .prologue
    .line 313
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iget-boolean v2, v2, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 314
    new-instance v2, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v3, "buffer is inaccessible"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 316
    :cond_0
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@11
    add-int/lit8 v0, v2, 0x2

    #@13
    .line 317
    .local v0, "newPosition":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    #@16
    move-result v2

    #@17
    if-le v0, v2, :cond_1

    #@19
    .line 318
    new-instance v2, Ljava/nio/BufferUnderflowException;

    #@1b
    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@1e
    throw v2

    #@1f
    .line 320
    :cond_1
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@21
    invoke-direct {p0, v2}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@24
    move-result-wide v4

    #@25
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@27
    if-eqz v2, :cond_2

    #@29
    const/4 v2, 0x0

    #@2a
    :goto_0
    invoke-static {v4, v5, v2}, Llibcore/io/Memory;->peekShort(JZ)S

    #@2d
    move-result v2

    #@2e
    int-to-char v1, v2

    #@2f
    .line 321
    .local v1, "x":C
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@31
    .line 322
    return v1

    #@32
    .line 320
    .end local v1    # "x":C
    :cond_2
    const/4 v2, 0x1

    #@33
    goto :goto_0
.end method

.method public getChar(I)C
    .locals 4
    .param p1, "i"    # I

    #@0
    .prologue
    .line 326
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iget-boolean v1, v1, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 327
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v2, "buffer is inaccessible"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 329
    :cond_0
    const/4 v1, 0x2

    #@10
    invoke-virtual {p0, p1, v1}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    #@13
    .line 330
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@16
    move-result-wide v2

    #@17
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@19
    if-eqz v1, :cond_1

    #@1b
    const/4 v1, 0x0

    #@1c
    :goto_0
    invoke-static {v2, v3, v1}, Llibcore/io/Memory;->peekShort(JZ)S

    #@1f
    move-result v1

    #@20
    int-to-char v0, v1

    #@21
    .line 331
    .local v0, "x":C
    return v0

    #@22
    .line 330
    .end local v0    # "x":C
    :cond_1
    const/4 v1, 0x1

    #@23
    goto :goto_0
.end method

.method getCharUnchecked(I)C
    .locals 4
    .param p1, "i"    # I

    #@0
    .prologue
    .line 335
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v2

    #@4
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    invoke-static {v2, v3, v0}, Llibcore/io/Memory;->peekShort(JZ)S

    #@c
    move-result v0

    #@d
    int-to-char v0, v0

    #@e
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public getDouble()D
    .locals 2

    #@0
    .prologue
    .line 733
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 734
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "buffer is inaccessible"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 736
    :cond_0
    const/16 v0, 0x8

    #@11
    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    #@14
    move-result v0

    #@15
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@18
    move-result-wide v0

    #@19
    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    #@1c
    move-result-wide v0

    #@1d
    return-wide v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 740
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 741
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "buffer is inaccessible"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 743
    :cond_0
    const/16 v0, 0x8

    #@11
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    #@14
    move-result v0

    #@15
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@18
    move-result-wide v0

    #@19
    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    #@1c
    move-result-wide v0

    #@1d
    return-wide v0
.end method

.method getDoubleUnchecked(I)D
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 747
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getFloat()F
    .locals 2

    #@0
    .prologue
    .line 650
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 651
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "buffer is inaccessible"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 653
    :cond_0
    const/4 v0, 0x4

    #@10
    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    #@13
    move-result v0

    #@14
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@17
    move-result-wide v0

    #@18
    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method public getFloat(I)F
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 657
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 658
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "buffer is inaccessible"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 660
    :cond_0
    const/4 v0, 0x4

    #@10
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    #@13
    move-result v0

    #@14
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@17
    move-result-wide v0

    #@18
    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method getFloatUnchecked(I)F
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 664
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getInt()I
    .locals 2

    #@0
    .prologue
    .line 485
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 486
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "buffer is inaccessible"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 488
    :cond_0
    const/4 v0, 0x4

    #@10
    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    #@13
    move-result v0

    #@14
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@17
    move-result-wide v0

    #@18
    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 492
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 493
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "buffer is inaccessible"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 495
    :cond_0
    const/4 v0, 0x4

    #@10
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    #@13
    move-result v0

    #@14
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@17
    move-result-wide v0

    #@18
    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method getIntUnchecked(I)I
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 499
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getLong()J
    .locals 2

    #@0
    .prologue
    .line 567
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 568
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "buffer is inaccessible"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 570
    :cond_0
    const/16 v0, 0x8

    #@11
    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    #@14
    move-result v0

    #@15
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@18
    move-result-wide v0

    #@19
    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    #@1c
    move-result-wide v0

    #@1d
    return-wide v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 574
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 575
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "buffer is inaccessible"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 577
    :cond_0
    const/16 v0, 0x8

    #@11
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    #@14
    move-result v0

    #@15
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@18
    move-result-wide v0

    #@19
    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    #@1c
    move-result-wide v0

    #@1d
    return-wide v0
.end method

.method getLongUnchecked(I)J
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 581
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getShort()S
    .locals 2

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 404
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "buffer is inaccessible"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 406
    :cond_0
    const/4 v0, 0x2

    #@10
    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    #@13
    move-result v0

    #@14
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@17
    move-result-wide v0

    #@18
    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 410
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 411
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "buffer is inaccessible"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 413
    :cond_0
    const/4 v0, 0x2

    #@10
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    #@13
    move-result v0

    #@14
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@17
    move-result-wide v0

    #@18
    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method getShortUnchecked(I)S
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 417
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    #@7
    move-result v0

    #@8
    return v0
.end method

.method getUnchecked(I[CII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 339
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    .line 340
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v5, 0x0

    #@9
    :goto_0
    move-object v2, p2

    #@a
    move v3, p3

    #@b
    move v4, p4

    #@c
    .line 339
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekCharArray(J[CIIZ)V

    #@f
    .line 338
    return-void

    #@10
    .line 340
    :cond_0
    const/4 v5, 0x1

    #@11
    goto :goto_0
.end method

.method getUnchecked(I[DII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 751
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    .line 752
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v5, 0x0

    #@9
    :goto_0
    move-object v2, p2

    #@a
    move v3, p3

    #@b
    move v4, p4

    #@c
    .line 751
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekDoubleArray(J[DIIZ)V

    #@f
    .line 750
    return-void

    #@10
    .line 752
    :cond_0
    const/4 v5, 0x1

    #@11
    goto :goto_0
.end method

.method getUnchecked(I[FII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 668
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    .line 669
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v5, 0x0

    #@9
    :goto_0
    move-object v2, p2

    #@a
    move v3, p3

    #@b
    move v4, p4

    #@c
    .line 668
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekFloatArray(J[FIIZ)V

    #@f
    .line 667
    return-void

    #@10
    .line 669
    :cond_0
    const/4 v5, 0x1

    #@11
    goto :goto_0
.end method

.method getUnchecked(I[III)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 503
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    .line 504
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v5, 0x0

    #@9
    :goto_0
    move-object v2, p2

    #@a
    move v3, p3

    #@b
    move v4, p4

    #@c
    .line 503
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekIntArray(J[IIIZ)V

    #@f
    .line 502
    return-void

    #@10
    .line 504
    :cond_0
    const/4 v5, 0x1

    #@11
    goto :goto_0
.end method

.method getUnchecked(I[JII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 585
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    .line 586
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v5, 0x0

    #@9
    :goto_0
    move-object v2, p2

    #@a
    move v3, p3

    #@b
    move v4, p4

    #@c
    .line 585
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekLongArray(J[JIIZ)V

    #@f
    .line 584
    return-void

    #@10
    .line 586
    :cond_0
    const/4 v5, 0x1

    #@11
    goto :goto_0
.end method

.method getUnchecked(I[SII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 421
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    .line 422
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v5, 0x0

    #@9
    :goto_0
    move-object v2, p2

    #@a
    move v3, p3

    #@b
    move v4, p4

    #@c
    .line 421
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekShortArray(J[SIIZ)V

    #@f
    .line 420
    return-void

    #@10
    .line 422
    :cond_0
    const/4 v5, 0x1

    #@11
    goto :goto_0
.end method

.method public isAccessible()Z
    .locals 1

    #@0
    .prologue
    .line 812
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    return v0
.end method

.method public isDirect()Z
    .locals 1

    #@0
    .prologue
    .line 290
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 294
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@2
    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # B

    #@0
    .prologue
    .line 230
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 231
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 233
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@c
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "buffer is inaccessible"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 236
    :cond_1
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->nextPutIndex()I

    #@1c
    move-result v0

    #@1d
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@20
    move-result-wide v0

    #@21
    invoke-virtual {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->put(JB)Ljava/nio/ByteBuffer;

    #@24
    .line 237
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # B

    #@0
    .prologue
    .line 241
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 242
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 244
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@c
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 245
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "buffer is inaccessible"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 247
    :cond_1
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)I

    #@1c
    move-result v0

    #@1d
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@20
    move-result-wide v0

    #@21
    invoke-virtual {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->put(JB)Ljava/nio/ByteBuffer;

    #@24
    .line 248
    return-object p0
.end method

.method public put(JB)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "a"    # J
    .param p3, "x"    # B

    #@0
    .prologue
    .line 225
    invoke-static {p1, p2, p3}, Llibcore/io/Memory;->pokeByte(JB)V

    #@3
    .line 226
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "src"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 252
    iget-boolean v3, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 253
    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    #@7
    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@a
    throw v3

    #@b
    .line 255
    :cond_0
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@d
    iget-boolean v3, v3, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@f
    if-nez v3, :cond_1

    #@11
    .line 256
    new-instance v3, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v4, "buffer is inaccessible"

    #@16
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v3

    #@1a
    .line 258
    :cond_1
    array-length v3, p1

    #@1b
    invoke-static {p2, p3, v3}, Ljava/nio/DirectByteBuffer;->checkBounds(III)V

    #@1e
    .line 259
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    #@21
    move-result v1

    #@22
    .line 260
    .local v1, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    #@25
    move-result v0

    #@26
    .line 261
    .local v0, "lim":I
    sget-boolean v3, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    #@28
    if-nez v3, :cond_3

    #@2a
    if-gt v1, v0, :cond_2

    #@2c
    const/4 v3, 0x1

    #@2d
    :goto_0
    if-nez v3, :cond_3

    #@2f
    new-instance v3, Ljava/lang/AssertionError;

    #@31
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@34
    throw v3

    #@35
    :cond_2
    move v3, v2

    #@36
    goto :goto_0

    #@37
    .line 262
    :cond_3
    if-gt v1, v0, :cond_4

    #@39
    sub-int v2, v0, v1

    #@3b
    .line 263
    .local v2, "rem":I
    :cond_4
    if-le p3, v2, :cond_5

    #@3d
    .line 264
    new-instance v3, Ljava/nio/BufferOverflowException;

    #@3f
    invoke-direct {v3}, Ljava/nio/BufferOverflowException;-><init>()V

    #@42
    throw v3

    #@43
    .line 265
    :cond_5
    invoke-direct {p0, v1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@46
    move-result-wide v4

    #@47
    invoke-static {v4, v5, p1, p2, p3}, Llibcore/io/Memory;->pokeByteArray(J[BII)V

    #@4a
    .line 267
    add-int v3, v1, p3

    #@4c
    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@4e
    .line 268
    return-object p0
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # C

    #@0
    .prologue
    .line 350
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 351
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 353
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@c
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 354
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "buffer is inaccessible"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 356
    :cond_1
    const/4 v0, 0x2

    #@1a
    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    #@1d
    move-result v0

    #@1e
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@21
    move-result-wide v0

    #@22
    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    #@25
    .line 357
    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # C

    #@0
    .prologue
    .line 361
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 362
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 364
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@c
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 365
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "buffer is inaccessible"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 367
    :cond_1
    const/4 v0, 0x2

    #@1a
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    #@1d
    move-result v0

    #@1e
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@21
    move-result-wide v0

    #@22
    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    #@25
    .line 368
    return-object p0
.end method

.method putCharUnchecked(IC)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # C

    #@0
    .prologue
    .line 372
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    #@7
    .line 371
    return-void
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "x"    # D

    #@0
    .prologue
    .line 762
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 763
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 765
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@c
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 766
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "buffer is inaccessible"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 768
    :cond_1
    const/16 v0, 0x8

    #@1b
    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    #@1e
    move-result v0

    #@1f
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@22
    move-result-wide v0

    #@23
    invoke-direct {p0, v0, v1, p1, p2}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    #@26
    .line 769
    return-object p0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # D

    #@0
    .prologue
    .line 773
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 774
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 776
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@c
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 777
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "buffer is inaccessible"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 779
    :cond_1
    const/16 v0, 0x8

    #@1b
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    #@1e
    move-result v0

    #@1f
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@22
    move-result-wide v0

    #@23
    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    #@26
    .line 780
    return-object p0
.end method

.method putDoubleUnchecked(ID)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # D

    #@0
    .prologue
    .line 784
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    #@7
    .line 783
    return-void
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # F

    #@0
    .prologue
    .line 679
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 680
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 682
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@c
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 683
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "buffer is inaccessible"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 685
    :cond_1
    const/4 v0, 0x4

    #@1a
    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    #@1d
    move-result v0

    #@1e
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@21
    move-result-wide v0

    #@22
    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    #@25
    .line 686
    return-object p0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # F

    #@0
    .prologue
    .line 690
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 691
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 693
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@c
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 694
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "buffer is inaccessible"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 696
    :cond_1
    const/4 v0, 0x4

    #@1a
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    #@1d
    move-result v0

    #@1e
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@21
    move-result-wide v0

    #@22
    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    #@25
    .line 697
    return-object p0
.end method

.method putFloatUnchecked(IF)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # F

    #@0
    .prologue
    .line 701
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    #@7
    .line 700
    return-void
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # I

    #@0
    .prologue
    .line 513
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 514
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 516
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@c
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 517
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "buffer is inaccessible"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 519
    :cond_1
    const/4 v0, 0x4

    #@1a
    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    #@1d
    move-result v0

    #@1e
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@21
    move-result-wide v0

    #@22
    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    #@25
    .line 520
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # I

    #@0
    .prologue
    .line 524
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 525
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 527
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@c
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 528
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "buffer is inaccessible"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 530
    :cond_1
    const/4 v0, 0x4

    #@1a
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    #@1d
    move-result v0

    #@1e
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@21
    move-result-wide v0

    #@22
    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    #@25
    .line 531
    return-object p0
.end method

.method putIntUnchecked(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # I

    #@0
    .prologue
    .line 535
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    #@7
    .line 534
    return-void
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # J

    #@0
    .prologue
    .line 606
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 607
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 609
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@c
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 610
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "buffer is inaccessible"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 612
    :cond_1
    const/16 v0, 0x8

    #@1b
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    #@1e
    move-result v0

    #@1f
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@22
    move-result-wide v0

    #@23
    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    #@26
    .line 613
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "x"    # J

    #@0
    .prologue
    .line 595
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 596
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 598
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@c
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 599
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "buffer is inaccessible"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 601
    :cond_1
    const/16 v0, 0x8

    #@1b
    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    #@1e
    move-result v0

    #@1f
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@22
    move-result-wide v0

    #@23
    invoke-direct {p0, v0, v1, p1, p2}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    #@26
    .line 602
    return-object p0
.end method

.method putLongUnchecked(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # J

    #@0
    .prologue
    .line 617
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    #@7
    .line 616
    return-void
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # S

    #@0
    .prologue
    .line 443
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 444
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 446
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@c
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 447
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "buffer is inaccessible"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 449
    :cond_1
    const/4 v0, 0x2

    #@1a
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    #@1d
    move-result v0

    #@1e
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@21
    move-result-wide v0

    #@22
    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    #@25
    .line 450
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # S

    #@0
    .prologue
    .line 432
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 433
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 435
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@c
    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 436
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "buffer is inaccessible"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 438
    :cond_1
    const/4 v0, 0x2

    #@1a
    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    #@1d
    move-result v0

    #@1e
    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@21
    move-result-wide v0

    #@22
    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    #@25
    .line 439
    return-object p0
.end method

.method putShortUnchecked(IS)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # S

    #@0
    .prologue
    .line 454
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    #@7
    .line 453
    return-void
.end method

.method putUnchecked(I[CII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "src"    # [C
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 376
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    .line 377
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v5, 0x0

    #@9
    :goto_0
    move-object v2, p2

    #@a
    move v3, p3

    #@b
    move v4, p4

    #@c
    .line 376
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeCharArray(J[CIIZ)V

    #@f
    .line 375
    return-void

    #@10
    .line 377
    :cond_0
    const/4 v5, 0x1

    #@11
    goto :goto_0
.end method

.method putUnchecked(I[DII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "src"    # [D
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 788
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    .line 789
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v5, 0x0

    #@9
    :goto_0
    move-object v2, p2

    #@a
    move v3, p3

    #@b
    move v4, p4

    #@c
    .line 788
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeDoubleArray(J[DIIZ)V

    #@f
    .line 787
    return-void

    #@10
    .line 789
    :cond_0
    const/4 v5, 0x1

    #@11
    goto :goto_0
.end method

.method putUnchecked(I[FII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "src"    # [F
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 705
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    .line 706
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v5, 0x0

    #@9
    :goto_0
    move-object v2, p2

    #@a
    move v3, p3

    #@b
    move v4, p4

    #@c
    .line 705
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeFloatArray(J[FIIZ)V

    #@f
    .line 704
    return-void

    #@10
    .line 706
    :cond_0
    const/4 v5, 0x1

    #@11
    goto :goto_0
.end method

.method putUnchecked(I[III)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "src"    # [I
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 539
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    .line 540
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v5, 0x0

    #@9
    :goto_0
    move-object v2, p2

    #@a
    move v3, p3

    #@b
    move v4, p4

    #@c
    .line 539
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeIntArray(J[IIIZ)V

    #@f
    .line 538
    return-void

    #@10
    .line 540
    :cond_0
    const/4 v5, 0x1

    #@11
    goto :goto_0
.end method

.method putUnchecked(I[JII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "src"    # [J
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 621
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    .line 622
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v5, 0x0

    #@9
    :goto_0
    move-object v2, p2

    #@a
    move v3, p3

    #@b
    move v4, p4

    #@c
    .line 621
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeLongArray(J[JIIZ)V

    #@f
    .line 620
    return-void

    #@10
    .line 622
    :cond_0
    const/4 v5, 0x1

    #@11
    goto :goto_0
.end method

.method putUnchecked(I[SII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "src"    # [S
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 458
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    #@3
    move-result-wide v0

    #@4
    .line 459
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v5, 0x0

    #@9
    :goto_0
    move-object v2, p2

    #@a
    move v3, p3

    #@b
    move v4, p4

    #@c
    .line 458
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeShortArray(J[SIIZ)V

    #@f
    .line 457
    return-void

    #@10
    .line 459
    :cond_0
    const/4 v5, 0x1

    #@11
    goto :goto_0
.end method

.method public setAccessible(Z)V
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 816
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@2
    iput-boolean p1, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@4
    .line 815
    return-void
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .locals 10

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 142
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@4
    iget-boolean v1, v1, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@6
    if-nez v1, :cond_0

    #@8
    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "buffer is inaccessible"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 145
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    #@14
    move-result v9

    #@15
    .line 146
    .local v9, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    #@18
    move-result v8

    #@19
    .line 147
    .local v8, "lim":I
    sget-boolean v1, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    #@1b
    if-nez v1, :cond_2

    #@1d
    if-gt v9, v8, :cond_1

    #@1f
    move v1, v0

    #@20
    :goto_0
    if-nez v1, :cond_2

    #@22
    new-instance v0, Ljava/lang/AssertionError;

    #@24
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@27
    throw v0

    #@28
    :cond_1
    move v1, v3

    #@29
    goto :goto_0

    #@2a
    .line 148
    :cond_2
    if-gt v9, v8, :cond_3

    #@2c
    sub-int v4, v8, v9

    #@2e
    .line 149
    .local v4, "rem":I
    :goto_1
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@30
    add-int v6, v9, v1

    #@32
    .line 150
    .local v6, "off":I
    sget-boolean v1, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    #@34
    if-nez v1, :cond_5

    #@36
    if-ltz v6, :cond_4

    #@38
    :goto_2
    if-nez v0, :cond_5

    #@3a
    new-instance v0, Ljava/lang/AssertionError;

    #@3c
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@3f
    throw v0

    #@40
    .line 148
    .end local v4    # "rem":I
    .end local v6    # "off":I
    :cond_3
    const/4 v4, 0x0

    #@41
    .restart local v4    # "rem":I
    goto :goto_1

    #@42
    .restart local v6    # "off":I
    :cond_4
    move v0, v3

    #@43
    .line 150
    goto :goto_2

    #@44
    .line 151
    :cond_5
    new-instance v0, Ljava/nio/DirectByteBuffer;

    #@46
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@48
    iget-boolean v7, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@4a
    const/4 v2, -0x1

    #@4b
    move v5, v4

    #@4c
    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    #@4f
    return-object v0
.end method
