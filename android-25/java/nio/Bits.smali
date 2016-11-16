.class Ljava/nio/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final JNI_COPY_FROM_ARRAY_THRESHOLD:I = 0x6

.field static final JNI_COPY_TO_ARRAY_THRESHOLD:I = 0x6

.field static final UNSAFE_COPY_THRESHOLD:J = 0x100000L

.field private static final byteOrder:Ljava/nio/ByteOrder;

.field private static volatile count:J

.field private static volatile maxMemory:J

.field private static memoryLimitSet:Z

.field private static pageSize:I

.field private static volatile reservedMemory:J

.field private static volatile totalCapacity:J

.field private static unaligned:Z

.field private static unalignedKnown:Z

.field private static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const-class v0, Ljava/nio/Bits;

    #@3
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    move v0, v1

    #@a
    :goto_0
    sput-boolean v0, Ljava/nio/Bits;->-assertionsDisabled:Z

    #@c
    .line 594
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Ljava/nio/Bits;->unsafe:Lsun/misc/Unsafe;

    #@12
    .line 613
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@14
    sput-object v0, Ljava/nio/Bits;->byteOrder:Ljava/nio/ByteOrder;

    #@16
    .line 661
    const/4 v0, -0x1

    #@17
    sput v0, Ljava/nio/Bits;->pageSize:I

    #@19
    .line 674
    sput-boolean v1, Ljava/nio/Bits;->unalignedKnown:Z

    #@1b
    .line 693
    invoke-static {}, Lsun/misc/VM;->maxDirectMemory()J

    #@1e
    move-result-wide v2

    #@1f
    sput-wide v2, Ljava/nio/Bits;->maxMemory:J

    #@21
    .line 697
    sput-boolean v1, Ljava/nio/Bits;->memoryLimitSet:Z

    #@23
    .line 38
    return-void

    #@24
    :cond_0
    const/4 v0, 0x1

    #@25
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static _get(J)B
    .locals 2
    .param p0, "a"    # J

    #@0
    .prologue
    .line 597
    sget-object v0, Ljava/nio/Bits;->unsafe:Lsun/misc/Unsafe;

    #@2
    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static _put(JB)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # B

    #@0
    .prologue
    .line 601
    sget-object v0, Ljava/nio/Bits;->unsafe:Lsun/misc/Unsafe;

    #@2
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putByte(JB)V

    #@5
    .line 600
    return-void
.end method

.method static byteOrder()Ljava/nio/ByteOrder;
    .locals 1

    #@0
    .prologue
    .line 618
    sget-object v0, Ljava/nio/Bits;->byteOrder:Ljava/nio/ByteOrder;

    #@2
    return-object v0
.end method

.method private static char0(C)B
    .locals 1
    .param p0, "x"    # C

    #@0
    .prologue
    .line 102
    int-to-byte v0, p0

    #@1
    return v0
.end method

.method private static char1(C)B
    .locals 1
    .param p0, "x"    # C

    #@0
    .prologue
    .line 98
    shr-int/lit8 v0, p0, 0x8

    #@2
    int-to-byte v0, v0

    #@3
    return v0
.end method

.method static copyFromArray(Ljava/lang/Object;JJJJ)V
    .locals 9
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "srcBaseOffset"    # J
    .param p3, "srcPos"    # J
    .param p5, "dstAddr"    # J
    .param p7, "length"    # J

    #@0
    .prologue
    .line 813
    add-long v2, p1, p3

    #@2
    .line 814
    .local v2, "offset":J
    :goto_0
    const-wide/16 v0, 0x0

    #@4
    cmp-long v0, p7, v0

    #@6
    if-lez v0, :cond_1

    #@8
    .line 815
    const-wide/32 v0, 0x100000

    #@b
    cmp-long v0, p7, v0

    #@d
    if-lez v0, :cond_0

    #@f
    const-wide/32 v6, 0x100000

    #@12
    .line 816
    .local v6, "size":J
    :goto_1
    sget-object v0, Ljava/nio/Bits;->unsafe:Lsun/misc/Unsafe;

    #@14
    move-object v1, p0

    #@15
    move-wide v4, p5

    #@16
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->copyMemoryFromPrimitiveArray(Ljava/lang/Object;JJJ)V

    #@19
    .line 817
    sub-long p7, p7, v6

    #@1b
    .line 818
    add-long/2addr v2, v6

    #@1c
    .line 819
    add-long/2addr p5, v6

    #@1d
    goto :goto_0

    #@1e
    .line 815
    .end local v6    # "size":J
    :cond_0
    move-wide/from16 v6, p7

    #@20
    .restart local v6    # "size":J
    goto :goto_1

    #@21
    .line 812
    .end local v6    # "size":J
    :cond_1
    return-void
.end method

.method static copyFromCharArray(Ljava/lang/Object;JJJ)V
    .locals 1
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "srcPos"    # J
    .param p3, "dstAddr"    # J
    .param p5, "length"    # J

    #@0
    .prologue
    .line 846
    invoke-static/range {p0 .. p6}, Ljava/nio/Bits;->copyFromShortArray(Ljava/lang/Object;JJJ)V

    #@3
    .line 845
    return-void
.end method

.method static native copyFromIntArray(Ljava/lang/Object;JJJ)V
.end method

.method static native copyFromLongArray(Ljava/lang/Object;JJJ)V
.end method

.method static native copyFromShortArray(Ljava/lang/Object;JJJ)V
.end method

.method static copyToArray(JLjava/lang/Object;JJJ)V
    .locals 9
    .param p0, "srcAddr"    # J
    .param p2, "dst"    # Ljava/lang/Object;
    .param p3, "dstBaseOffset"    # J
    .param p5, "dstPos"    # J
    .param p7, "length"    # J

    #@0
    .prologue
    .line 834
    add-long v4, p3, p5

    #@2
    .line 835
    .local v4, "offset":J
    :goto_0
    const-wide/16 v0, 0x0

    #@4
    cmp-long v0, p7, v0

    #@6
    if-lez v0, :cond_1

    #@8
    .line 836
    const-wide/32 v0, 0x100000

    #@b
    cmp-long v0, p7, v0

    #@d
    if-lez v0, :cond_0

    #@f
    const-wide/32 v6, 0x100000

    #@12
    .line 837
    .local v6, "size":J
    :goto_1
    sget-object v0, Ljava/nio/Bits;->unsafe:Lsun/misc/Unsafe;

    #@14
    move-wide v1, p0

    #@15
    move-object v3, p2

    #@16
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->copyMemoryToPrimitiveArray(JLjava/lang/Object;JJ)V

    #@19
    .line 838
    sub-long p7, p7, v6

    #@1b
    .line 839
    add-long/2addr p0, v6

    #@1c
    .line 840
    add-long/2addr v4, v6

    #@1d
    goto :goto_0

    #@1e
    .line 836
    .end local v6    # "size":J
    :cond_0
    move-wide/from16 v6, p7

    #@20
    .restart local v6    # "size":J
    goto :goto_1

    #@21
    .line 833
    .end local v6    # "size":J
    :cond_1
    return-void
.end method

.method static copyToCharArray(JLjava/lang/Object;JJ)V
    .locals 1
    .param p0, "srcAddr"    # J
    .param p2, "dst"    # Ljava/lang/Object;
    .param p3, "dstPos"    # J
    .param p5, "length"    # J

    #@0
    .prologue
    .line 851
    invoke-static/range {p0 .. p6}, Ljava/nio/Bits;->copyToShortArray(JLjava/lang/Object;JJ)V

    #@3
    .line 850
    return-void
.end method

.method static native copyToIntArray(JLjava/lang/Object;JJ)V
.end method

.method static native copyToLongArray(JLjava/lang/Object;JJ)V
.end method

.method static native copyToShortArray(JLjava/lang/Object;JJ)V
.end method

.method static getChar(JZ)C
    .locals 2
    .param p0, "a"    # J
    .param p2, "bigEndian"    # Z

    #@0
    .prologue
    .line 94
    if-eqz p2, :cond_0

    #@2
    invoke-static {p0, p1}, Ljava/nio/Bits;->getCharB(J)C

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/Bits;->getCharL(J)C

    #@a
    move-result v0

    #@b
    goto :goto_0
.end method

.method static getChar(Ljava/nio/ByteBuffer;IZ)C
    .locals 1
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "bigEndian"    # Z

    #@0
    .prologue
    .line 90
    if-eqz p2, :cond_0

    #@2
    invoke-static {p0, p1}, Ljava/nio/Bits;->getCharB(Ljava/nio/ByteBuffer;I)C

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/Bits;->getCharL(Ljava/nio/ByteBuffer;I)C

    #@a
    move-result v0

    #@b
    goto :goto_0
.end method

.method static getCharB(J)C
    .locals 4
    .param p0, "a"    # J

    #@0
    .prologue
    .line 85
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    #@3
    move-result v0

    #@4
    .line 86
    const-wide/16 v2, 0x1

    #@6
    add-long/2addr v2, p0

    #@7
    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    #@a
    move-result v1

    #@b
    .line 85
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeChar(BB)C

    #@e
    move-result v0

    #@f
    return v0
.end method

.method static getCharB(Ljava/nio/ByteBuffer;I)C
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    #@0
    .prologue
    .line 80
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    #@3
    move-result v0

    #@4
    .line 81
    add-int/lit8 v1, p1, 0x1

    #@6
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->_get(I)B

    #@9
    move-result v1

    #@a
    .line 80
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeChar(BB)C

    #@d
    move-result v0

    #@e
    return v0
.end method

.method static getCharL(J)C
    .locals 2
    .param p0, "a"    # J

    #@0
    .prologue
    .line 75
    const-wide/16 v0, 0x1

    #@2
    add-long/2addr v0, p0

    #@3
    invoke-static {v0, v1}, Ljava/nio/Bits;->_get(J)B

    #@6
    move-result v0

    #@7
    .line 76
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    #@a
    move-result v1

    #@b
    .line 75
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeChar(BB)C

    #@e
    move-result v0

    #@f
    return v0
.end method

.method static getCharL(Ljava/nio/ByteBuffer;I)C
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    #@0
    .prologue
    .line 70
    add-int/lit8 v0, p1, 0x1

    #@2
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->_get(I)B

    #@5
    move-result v0

    #@6
    .line 71
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    #@9
    move-result v1

    #@a
    .line 70
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeChar(BB)C

    #@d
    move-result v0

    #@e
    return v0
.end method

.method static getDouble(JZ)D
    .locals 2
    .param p0, "a"    # J
    .param p2, "bigEndian"    # Z

    #@0
    .prologue
    .line 558
    if-eqz p2, :cond_0

    #@2
    invoke-static {p0, p1}, Ljava/nio/Bits;->getDoubleB(J)D

    #@5
    move-result-wide v0

    #@6
    :goto_0
    return-wide v0

    #@7
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/Bits;->getDoubleL(J)D

    #@a
    move-result-wide v0

    #@b
    goto :goto_0
.end method

.method static getDouble(Ljava/nio/ByteBuffer;IZ)D
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "bigEndian"    # Z

    #@0
    .prologue
    .line 554
    if-eqz p2, :cond_0

    #@2
    invoke-static {p0, p1}, Ljava/nio/Bits;->getDoubleB(Ljava/nio/ByteBuffer;I)D

    #@5
    move-result-wide v0

    #@6
    :goto_0
    return-wide v0

    #@7
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/Bits;->getDoubleL(Ljava/nio/ByteBuffer;I)D

    #@a
    move-result-wide v0

    #@b
    goto :goto_0
.end method

.method static getDoubleB(J)D
    .locals 2
    .param p0, "a"    # J

    #@0
    .prologue
    .line 550
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongB(J)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method static getDoubleB(Ljava/nio/ByteBuffer;I)D
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    #@0
    .prologue
    .line 546
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongB(Ljava/nio/ByteBuffer;I)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method static getDoubleL(J)D
    .locals 2
    .param p0, "a"    # J

    #@0
    .prologue
    .line 542
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongL(J)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method static getDoubleL(Ljava/nio/ByteBuffer;I)D
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    #@0
    .prologue
    .line 538
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongL(Ljava/nio/ByteBuffer;I)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method static getFloat(JZ)F
    .locals 2
    .param p0, "a"    # J
    .param p2, "bigEndian"    # Z

    #@0
    .prologue
    .line 501
    if-eqz p2, :cond_0

    #@2
    invoke-static {p0, p1}, Ljava/nio/Bits;->getFloatB(J)F

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/Bits;->getFloatL(J)F

    #@a
    move-result v0

    #@b
    goto :goto_0
.end method

.method static getFloat(Ljava/nio/ByteBuffer;IZ)F
    .locals 1
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "bigEndian"    # Z

    #@0
    .prologue
    .line 497
    if-eqz p2, :cond_0

    #@2
    invoke-static {p0, p1}, Ljava/nio/Bits;->getFloatB(Ljava/nio/ByteBuffer;I)F

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/Bits;->getFloatL(Ljava/nio/ByteBuffer;I)F

    #@a
    move-result v0

    #@b
    goto :goto_0
.end method

.method static getFloatB(J)F
    .locals 2
    .param p0, "a"    # J

    #@0
    .prologue
    .line 493
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntB(J)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method static getFloatB(Ljava/nio/ByteBuffer;I)F
    .locals 1
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    #@0
    .prologue
    .line 489
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntB(Ljava/nio/ByteBuffer;I)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method static getFloatL(J)F
    .locals 2
    .param p0, "a"    # J

    #@0
    .prologue
    .line 485
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntL(J)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method static getFloatL(Ljava/nio/ByteBuffer;I)F
    .locals 1
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    #@0
    .prologue
    .line 481
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntL(Ljava/nio/ByteBuffer;I)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method static getInt(JZ)I
    .locals 2
    .param p0, "a"    # J
    .param p2, "bigEndian"    # Z

    #@0
    .prologue
    .line 259
    if-eqz p2, :cond_0

    #@2
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntB(J)I

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntL(J)I

    #@a
    move-result v0

    #@b
    goto :goto_0
.end method

.method static getInt(Ljava/nio/ByteBuffer;IZ)I
    .locals 1
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "bigEndian"    # Z

    #@0
    .prologue
    .line 255
    if-eqz p2, :cond_0

    #@2
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntB(Ljava/nio/ByteBuffer;I)I

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/Bits;->getIntL(Ljava/nio/ByteBuffer;I)I

    #@a
    move-result v0

    #@b
    goto :goto_0
.end method

.method static getIntB(J)I
    .locals 6
    .param p0, "a"    # J

    #@0
    .prologue
    .line 248
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    #@3
    move-result v0

    #@4
    .line 249
    const-wide/16 v2, 0x1

    #@6
    add-long/2addr v2, p0

    #@7
    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    #@a
    move-result v1

    #@b
    .line 250
    const-wide/16 v2, 0x2

    #@d
    add-long/2addr v2, p0

    #@e
    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    #@11
    move-result v2

    #@12
    .line 251
    const-wide/16 v4, 0x3

    #@14
    add-long/2addr v4, p0

    #@15
    invoke-static {v4, v5}, Ljava/nio/Bits;->_get(J)B

    #@18
    move-result v3

    #@19
    .line 248
    invoke-static {v0, v1, v2, v3}, Ljava/nio/Bits;->makeInt(BBBB)I

    #@1c
    move-result v0

    #@1d
    return v0
.end method

.method static getIntB(Ljava/nio/ByteBuffer;I)I
    .locals 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    #@0
    .prologue
    .line 241
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    #@3
    move-result v0

    #@4
    .line 242
    add-int/lit8 v1, p1, 0x1

    #@6
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->_get(I)B

    #@9
    move-result v1

    #@a
    .line 243
    add-int/lit8 v2, p1, 0x2

    #@c
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->_get(I)B

    #@f
    move-result v2

    #@10
    .line 244
    add-int/lit8 v3, p1, 0x3

    #@12
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->_get(I)B

    #@15
    move-result v3

    #@16
    .line 241
    invoke-static {v0, v1, v2, v3}, Ljava/nio/Bits;->makeInt(BBBB)I

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method static getIntL(J)I
    .locals 4
    .param p0, "a"    # J

    #@0
    .prologue
    .line 234
    const-wide/16 v0, 0x3

    #@2
    add-long/2addr v0, p0

    #@3
    invoke-static {v0, v1}, Ljava/nio/Bits;->_get(J)B

    #@6
    move-result v0

    #@7
    .line 235
    const-wide/16 v2, 0x2

    #@9
    add-long/2addr v2, p0

    #@a
    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    #@d
    move-result v1

    #@e
    .line 236
    const-wide/16 v2, 0x1

    #@10
    add-long/2addr v2, p0

    #@11
    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    #@14
    move-result v2

    #@15
    .line 237
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    #@18
    move-result v3

    #@19
    .line 234
    invoke-static {v0, v1, v2, v3}, Ljava/nio/Bits;->makeInt(BBBB)I

    #@1c
    move-result v0

    #@1d
    return v0
.end method

.method static getIntL(Ljava/nio/ByteBuffer;I)I
    .locals 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    #@0
    .prologue
    .line 227
    add-int/lit8 v0, p1, 0x3

    #@2
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->_get(I)B

    #@5
    move-result v0

    #@6
    .line 228
    add-int/lit8 v1, p1, 0x2

    #@8
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->_get(I)B

    #@b
    move-result v1

    #@c
    .line 229
    add-int/lit8 v2, p1, 0x1

    #@e
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->_get(I)B

    #@11
    move-result v2

    #@12
    .line 230
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    #@15
    move-result v3

    #@16
    .line 227
    invoke-static {v0, v1, v2, v3}, Ljava/nio/Bits;->makeInt(BBBB)I

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method static getLong(JZ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "bigEndian"    # Z

    #@0
    .prologue
    .line 384
    if-eqz p2, :cond_0

    #@2
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongB(J)J

    #@5
    move-result-wide v0

    #@6
    :goto_0
    return-wide v0

    #@7
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongL(J)J

    #@a
    move-result-wide v0

    #@b
    goto :goto_0
.end method

.method static getLong(Ljava/nio/ByteBuffer;IZ)J
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "bigEndian"    # Z

    #@0
    .prologue
    .line 380
    if-eqz p2, :cond_0

    #@2
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongB(Ljava/nio/ByteBuffer;I)J

    #@5
    move-result-wide v0

    #@6
    :goto_0
    return-wide v0

    #@7
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/Bits;->getLongL(Ljava/nio/ByteBuffer;I)J

    #@a
    move-result-wide v0

    #@b
    goto :goto_0
.end method

.method static getLongB(J)J
    .locals 10
    .param p0, "a"    # J

    #@0
    .prologue
    .line 369
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    #@3
    move-result v0

    #@4
    .line 370
    const-wide/16 v2, 0x1

    #@6
    add-long/2addr v2, p0

    #@7
    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    #@a
    move-result v1

    #@b
    .line 371
    const-wide/16 v2, 0x2

    #@d
    add-long/2addr v2, p0

    #@e
    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    #@11
    move-result v2

    #@12
    .line 372
    const-wide/16 v4, 0x3

    #@14
    add-long/2addr v4, p0

    #@15
    invoke-static {v4, v5}, Ljava/nio/Bits;->_get(J)B

    #@18
    move-result v3

    #@19
    .line 373
    const-wide/16 v4, 0x4

    #@1b
    add-long/2addr v4, p0

    #@1c
    invoke-static {v4, v5}, Ljava/nio/Bits;->_get(J)B

    #@1f
    move-result v4

    #@20
    .line 374
    const-wide/16 v6, 0x5

    #@22
    add-long/2addr v6, p0

    #@23
    invoke-static {v6, v7}, Ljava/nio/Bits;->_get(J)B

    #@26
    move-result v5

    #@27
    .line 375
    const-wide/16 v6, 0x6

    #@29
    add-long/2addr v6, p0

    #@2a
    invoke-static {v6, v7}, Ljava/nio/Bits;->_get(J)B

    #@2d
    move-result v6

    #@2e
    .line 376
    const-wide/16 v8, 0x7

    #@30
    add-long/2addr v8, p0

    #@31
    invoke-static {v8, v9}, Ljava/nio/Bits;->_get(J)B

    #@34
    move-result v7

    #@35
    .line 369
    invoke-static/range {v0 .. v7}, Ljava/nio/Bits;->makeLong(BBBBBBBB)J

    #@38
    move-result-wide v0

    #@39
    return-wide v0
.end method

.method static getLongB(Ljava/nio/ByteBuffer;I)J
    .locals 8
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    #@0
    .prologue
    .line 358
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    #@3
    move-result v0

    #@4
    .line 359
    add-int/lit8 v1, p1, 0x1

    #@6
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->_get(I)B

    #@9
    move-result v1

    #@a
    .line 360
    add-int/lit8 v2, p1, 0x2

    #@c
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->_get(I)B

    #@f
    move-result v2

    #@10
    .line 361
    add-int/lit8 v3, p1, 0x3

    #@12
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->_get(I)B

    #@15
    move-result v3

    #@16
    .line 362
    add-int/lit8 v4, p1, 0x4

    #@18
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->_get(I)B

    #@1b
    move-result v4

    #@1c
    .line 363
    add-int/lit8 v5, p1, 0x5

    #@1e
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->_get(I)B

    #@21
    move-result v5

    #@22
    .line 364
    add-int/lit8 v6, p1, 0x6

    #@24
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->_get(I)B

    #@27
    move-result v6

    #@28
    .line 365
    add-int/lit8 v7, p1, 0x7

    #@2a
    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->_get(I)B

    #@2d
    move-result v7

    #@2e
    .line 358
    invoke-static/range {v0 .. v7}, Ljava/nio/Bits;->makeLong(BBBBBBBB)J

    #@31
    move-result-wide v0

    #@32
    return-wide v0
.end method

.method static getLongL(J)J
    .locals 8
    .param p0, "a"    # J

    #@0
    .prologue
    .line 347
    const-wide/16 v0, 0x7

    #@2
    add-long/2addr v0, p0

    #@3
    invoke-static {v0, v1}, Ljava/nio/Bits;->_get(J)B

    #@6
    move-result v0

    #@7
    .line 348
    const-wide/16 v2, 0x6

    #@9
    add-long/2addr v2, p0

    #@a
    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    #@d
    move-result v1

    #@e
    .line 349
    const-wide/16 v2, 0x5

    #@10
    add-long/2addr v2, p0

    #@11
    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    #@14
    move-result v2

    #@15
    .line 350
    const-wide/16 v4, 0x4

    #@17
    add-long/2addr v4, p0

    #@18
    invoke-static {v4, v5}, Ljava/nio/Bits;->_get(J)B

    #@1b
    move-result v3

    #@1c
    .line 351
    const-wide/16 v4, 0x3

    #@1e
    add-long/2addr v4, p0

    #@1f
    invoke-static {v4, v5}, Ljava/nio/Bits;->_get(J)B

    #@22
    move-result v4

    #@23
    .line 352
    const-wide/16 v6, 0x2

    #@25
    add-long/2addr v6, p0

    #@26
    invoke-static {v6, v7}, Ljava/nio/Bits;->_get(J)B

    #@29
    move-result v5

    #@2a
    .line 353
    const-wide/16 v6, 0x1

    #@2c
    add-long/2addr v6, p0

    #@2d
    invoke-static {v6, v7}, Ljava/nio/Bits;->_get(J)B

    #@30
    move-result v6

    #@31
    .line 354
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    #@34
    move-result v7

    #@35
    .line 347
    invoke-static/range {v0 .. v7}, Ljava/nio/Bits;->makeLong(BBBBBBBB)J

    #@38
    move-result-wide v0

    #@39
    return-wide v0
.end method

.method static getLongL(Ljava/nio/ByteBuffer;I)J
    .locals 8
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    #@0
    .prologue
    .line 336
    add-int/lit8 v0, p1, 0x7

    #@2
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->_get(I)B

    #@5
    move-result v0

    #@6
    .line 337
    add-int/lit8 v1, p1, 0x6

    #@8
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->_get(I)B

    #@b
    move-result v1

    #@c
    .line 338
    add-int/lit8 v2, p1, 0x5

    #@e
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->_get(I)B

    #@11
    move-result v2

    #@12
    .line 339
    add-int/lit8 v3, p1, 0x4

    #@14
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->_get(I)B

    #@17
    move-result v3

    #@18
    .line 340
    add-int/lit8 v4, p1, 0x3

    #@1a
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->_get(I)B

    #@1d
    move-result v4

    #@1e
    .line 341
    add-int/lit8 v5, p1, 0x2

    #@20
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->_get(I)B

    #@23
    move-result v5

    #@24
    .line 342
    add-int/lit8 v6, p1, 0x1

    #@26
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->_get(I)B

    #@29
    move-result v6

    #@2a
    .line 343
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    #@2d
    move-result v7

    #@2e
    .line 336
    invoke-static/range {v0 .. v7}, Ljava/nio/Bits;->makeLong(BBBBBBBB)J

    #@31
    move-result-wide v0

    #@32
    return-wide v0
.end method

.method static getShort(JZ)S
    .locals 2
    .param p0, "a"    # J
    .param p2, "bigEndian"    # Z

    #@0
    .prologue
    .line 171
    if-eqz p2, :cond_0

    #@2
    invoke-static {p0, p1}, Ljava/nio/Bits;->getShortB(J)S

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/Bits;->getShortL(J)S

    #@a
    move-result v0

    #@b
    goto :goto_0
.end method

.method static getShort(Ljava/nio/ByteBuffer;IZ)S
    .locals 1
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "bigEndian"    # Z

    #@0
    .prologue
    .line 167
    if-eqz p2, :cond_0

    #@2
    invoke-static {p0, p1}, Ljava/nio/Bits;->getShortB(Ljava/nio/ByteBuffer;I)S

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/Bits;->getShortL(Ljava/nio/ByteBuffer;I)S

    #@a
    move-result v0

    #@b
    goto :goto_0
.end method

.method static getShortB(J)S
    .locals 4
    .param p0, "a"    # J

    #@0
    .prologue
    .line 162
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    #@3
    move-result v0

    #@4
    .line 163
    const-wide/16 v2, 0x1

    #@6
    add-long/2addr v2, p0

    #@7
    invoke-static {v2, v3}, Ljava/nio/Bits;->_get(J)B

    #@a
    move-result v1

    #@b
    .line 162
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeShort(BB)S

    #@e
    move-result v0

    #@f
    return v0
.end method

.method static getShortB(Ljava/nio/ByteBuffer;I)S
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    #@0
    .prologue
    .line 157
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    #@3
    move-result v0

    #@4
    .line 158
    add-int/lit8 v1, p1, 0x1

    #@6
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->_get(I)B

    #@9
    move-result v1

    #@a
    .line 157
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeShort(BB)S

    #@d
    move-result v0

    #@e
    return v0
.end method

.method static getShortL(J)S
    .locals 2
    .param p0, "a"    # J

    #@0
    .prologue
    .line 152
    const-wide/16 v0, 0x1

    #@2
    add-long/2addr v0, p0

    #@3
    invoke-static {v0, v1}, Ljava/nio/Bits;->_get(J)B

    #@6
    move-result v0

    #@7
    .line 153
    invoke-static {p0, p1}, Ljava/nio/Bits;->_get(J)B

    #@a
    move-result v1

    #@b
    .line 152
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeShort(BB)S

    #@e
    move-result v0

    #@f
    return v0
.end method

.method static getShortL(Ljava/nio/ByteBuffer;I)S
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I

    #@0
    .prologue
    .line 147
    add-int/lit8 v0, p1, 0x1

    #@2
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->_get(I)B

    #@5
    move-result v0

    #@6
    .line 148
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->_get(I)B

    #@9
    move-result v1

    #@a
    .line 147
    invoke-static {v0, v1}, Ljava/nio/Bits;->makeShort(BB)S

    #@d
    move-result v0

    #@e
    return v0
.end method

.method private static int0(I)B
    .locals 1
    .param p0, "x"    # I

    #@0
    .prologue
    .line 275
    int-to-byte v0, p0

    #@1
    return v0
.end method

.method private static int1(I)B
    .locals 1
    .param p0, "x"    # I

    #@0
    .prologue
    .line 271
    shr-int/lit8 v0, p0, 0x8

    #@2
    int-to-byte v0, v0

    #@3
    return v0
.end method

.method private static int2(I)B
    .locals 1
    .param p0, "x"    # I

    #@0
    .prologue
    .line 267
    shr-int/lit8 v0, p0, 0x10

    #@2
    int-to-byte v0, v0

    #@3
    return v0
.end method

.method private static int3(I)B
    .locals 1
    .param p0, "x"    # I

    #@0
    .prologue
    .line 263
    shr-int/lit8 v0, p0, 0x18

    #@2
    int-to-byte v0, v0

    #@3
    return v0
.end method

.method private static long0(J)B
    .locals 2
    .param p0, "x"    # J

    #@0
    .prologue
    .line 416
    long-to-int v0, p0

    #@1
    int-to-byte v0, v0

    #@2
    return v0
.end method

.method private static long1(J)B
    .locals 2
    .param p0, "x"    # J

    #@0
    .prologue
    .line 412
    const/16 v0, 0x8

    #@2
    shr-long v0, p0, v0

    #@4
    long-to-int v0, v0

    #@5
    int-to-byte v0, v0

    #@6
    return v0
.end method

.method private static long2(J)B
    .locals 2
    .param p0, "x"    # J

    #@0
    .prologue
    .line 408
    const/16 v0, 0x10

    #@2
    shr-long v0, p0, v0

    #@4
    long-to-int v0, v0

    #@5
    int-to-byte v0, v0

    #@6
    return v0
.end method

.method private static long3(J)B
    .locals 2
    .param p0, "x"    # J

    #@0
    .prologue
    .line 404
    const/16 v0, 0x18

    #@2
    shr-long v0, p0, v0

    #@4
    long-to-int v0, v0

    #@5
    int-to-byte v0, v0

    #@6
    return v0
.end method

.method private static long4(J)B
    .locals 2
    .param p0, "x"    # J

    #@0
    .prologue
    .line 400
    const/16 v0, 0x20

    #@2
    shr-long v0, p0, v0

    #@4
    long-to-int v0, v0

    #@5
    int-to-byte v0, v0

    #@6
    return v0
.end method

.method private static long5(J)B
    .locals 2
    .param p0, "x"    # J

    #@0
    .prologue
    .line 396
    const/16 v0, 0x28

    #@2
    shr-long v0, p0, v0

    #@4
    long-to-int v0, v0

    #@5
    int-to-byte v0, v0

    #@6
    return v0
.end method

.method private static long6(J)B
    .locals 2
    .param p0, "x"    # J

    #@0
    .prologue
    .line 392
    const/16 v0, 0x30

    #@2
    shr-long v0, p0, v0

    #@4
    long-to-int v0, v0

    #@5
    int-to-byte v0, v0

    #@6
    return v0
.end method

.method private static long7(J)B
    .locals 2
    .param p0, "x"    # J

    #@0
    .prologue
    .line 388
    const/16 v0, 0x38

    #@2
    shr-long v0, p0, v0

    #@4
    long-to-int v0, v0

    #@5
    int-to-byte v0, v0

    #@6
    return v0
.end method

.method private static makeChar(BB)C
    .locals 2
    .param p0, "b1"    # B
    .param p1, "b0"    # B

    #@0
    .prologue
    .line 66
    shl-int/lit8 v0, p0, 0x8

    #@2
    and-int/lit16 v1, p1, 0xff

    #@4
    or-int/2addr v0, v1

    #@5
    int-to-char v0, v0

    #@6
    return v0
.end method

.method private static makeInt(BBBB)I
    .locals 2
    .param p0, "b3"    # B
    .param p1, "b2"    # B
    .param p2, "b1"    # B
    .param p3, "b0"    # B

    #@0
    .prologue
    .line 220
    shl-int/lit8 v0, p0, 0x18

    #@2
    .line 221
    and-int/lit16 v1, p1, 0xff

    #@4
    shl-int/lit8 v1, v1, 0x10

    #@6
    .line 220
    or-int/2addr v0, v1

    #@7
    .line 222
    and-int/lit16 v1, p2, 0xff

    #@9
    shl-int/lit8 v1, v1, 0x8

    #@b
    .line 220
    or-int/2addr v0, v1

    #@c
    .line 223
    and-int/lit16 v1, p3, 0xff

    #@e
    .line 220
    or-int/2addr v0, v1

    #@f
    return v0
.end method

.method private static makeLong(BBBBBBBB)J
    .locals 8
    .param p0, "b7"    # B
    .param p1, "b6"    # B
    .param p2, "b5"    # B
    .param p3, "b4"    # B
    .param p4, "b3"    # B
    .param p5, "b2"    # B
    .param p6, "b1"    # B
    .param p7, "b0"    # B

    #@0
    .prologue
    const-wide/16 v6, 0xff

    #@2
    .line 325
    int-to-long v0, p0

    #@3
    const/16 v2, 0x38

    #@5
    shl-long/2addr v0, v2

    #@6
    .line 326
    int-to-long v2, p1

    #@7
    and-long/2addr v2, v6

    #@8
    const/16 v4, 0x30

    #@a
    shl-long/2addr v2, v4

    #@b
    .line 325
    or-long/2addr v0, v2

    #@c
    .line 327
    int-to-long v2, p2

    #@d
    and-long/2addr v2, v6

    #@e
    const/16 v4, 0x28

    #@10
    shl-long/2addr v2, v4

    #@11
    .line 325
    or-long/2addr v0, v2

    #@12
    .line 328
    int-to-long v2, p3

    #@13
    and-long/2addr v2, v6

    #@14
    const/16 v4, 0x20

    #@16
    shl-long/2addr v2, v4

    #@17
    .line 325
    or-long/2addr v0, v2

    #@18
    .line 329
    int-to-long v2, p4

    #@19
    and-long/2addr v2, v6

    #@1a
    const/16 v4, 0x18

    #@1c
    shl-long/2addr v2, v4

    #@1d
    .line 325
    or-long/2addr v0, v2

    #@1e
    .line 330
    int-to-long v2, p5

    #@1f
    and-long/2addr v2, v6

    #@20
    const/16 v4, 0x10

    #@22
    shl-long/2addr v2, v4

    #@23
    .line 325
    or-long/2addr v0, v2

    #@24
    .line 331
    int-to-long v2, p6

    #@25
    and-long/2addr v2, v6

    #@26
    const/16 v4, 0x8

    #@28
    shl-long/2addr v2, v4

    #@29
    .line 325
    or-long/2addr v0, v2

    #@2a
    .line 332
    int-to-long v2, p7

    #@2b
    and-long/2addr v2, v6

    #@2c
    .line 325
    or-long/2addr v0, v2

    #@2d
    return-wide v0
.end method

.method private static makeShort(BB)S
    .locals 2
    .param p0, "b1"    # B
    .param p1, "b0"    # B

    #@0
    .prologue
    .line 143
    shl-int/lit8 v0, p0, 0x8

    #@2
    and-int/lit16 v1, p1, 0xff

    #@4
    or-int/2addr v0, v1

    #@5
    int-to-short v0, v0

    #@6
    return v0
.end method

.method static pageCount(J)I
    .locals 4
    .param p0, "size"    # J

    #@0
    .prologue
    .line 670
    invoke-static {}, Ljava/nio/Bits;->pageSize()I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    add-long/2addr v0, p0

    #@6
    const-wide/16 v2, 0x1

    #@8
    sub-long/2addr v0, v2

    #@9
    long-to-int v0, v0

    #@a
    invoke-static {}, Ljava/nio/Bits;->pageSize()I

    #@d
    move-result v1

    #@e
    div-int/2addr v0, v1

    #@f
    return v0
.end method

.method static pageSize()I
    .locals 2

    #@0
    .prologue
    .line 664
    sget v0, Ljava/nio/Bits;->pageSize:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 665
    invoke-static {}, Ljava/nio/Bits;->unsafe()Lsun/misc/Unsafe;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lsun/misc/Unsafe;->pageSize()I

    #@c
    move-result v0

    #@d
    sput v0, Ljava/nio/Bits;->pageSize:I

    #@f
    .line 666
    :cond_0
    sget v0, Ljava/nio/Bits;->pageSize:I

    #@11
    return v0
.end method

.method static putChar(JCZ)V
    .locals 0
    .param p0, "a"    # J
    .param p2, "x"    # C
    .param p3, "bigEndian"    # Z

    #@0
    .prologue
    .line 133
    if-eqz p3, :cond_0

    #@2
    .line 134
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putCharB(JC)V

    #@5
    .line 132
    :goto_0
    return-void

    #@6
    .line 136
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putCharL(JC)V

    #@9
    goto :goto_0
.end method

.method static putChar(Ljava/nio/ByteBuffer;ICZ)V
    .locals 0
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # C
    .param p3, "bigEndian"    # Z

    #@0
    .prologue
    .line 126
    if-eqz p3, :cond_0

    #@2
    .line 127
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putCharB(Ljava/nio/ByteBuffer;IC)V

    #@5
    .line 125
    :goto_0
    return-void

    #@6
    .line 129
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putCharL(Ljava/nio/ByteBuffer;IC)V

    #@9
    goto :goto_0
.end method

.method static putCharB(JC)V
    .locals 4
    .param p0, "a"    # J
    .param p2, "x"    # C

    #@0
    .prologue
    .line 121
    invoke-static {p2}, Ljava/nio/Bits;->char1(C)B

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    #@7
    .line 122
    const-wide/16 v0, 0x1

    #@9
    add-long/2addr v0, p0

    #@a
    invoke-static {p2}, Ljava/nio/Bits;->char0(C)B

    #@d
    move-result v2

    #@e
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@11
    .line 120
    return-void
.end method

.method static putCharB(Ljava/nio/ByteBuffer;IC)V
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # C

    #@0
    .prologue
    .line 116
    invoke-static {p2}, Ljava/nio/Bits;->char1(C)B

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@7
    .line 117
    add-int/lit8 v0, p1, 0x1

    #@9
    invoke-static {p2}, Ljava/nio/Bits;->char0(C)B

    #@c
    move-result v1

    #@d
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@10
    .line 115
    return-void
.end method

.method static putCharL(JC)V
    .locals 4
    .param p0, "a"    # J
    .param p2, "x"    # C

    #@0
    .prologue
    .line 111
    invoke-static {p2}, Ljava/nio/Bits;->char0(C)B

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    #@7
    .line 112
    const-wide/16 v0, 0x1

    #@9
    add-long/2addr v0, p0

    #@a
    invoke-static {p2}, Ljava/nio/Bits;->char1(C)B

    #@d
    move-result v2

    #@e
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@11
    .line 110
    return-void
.end method

.method static putCharL(Ljava/nio/ByteBuffer;IC)V
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # C

    #@0
    .prologue
    .line 106
    invoke-static {p2}, Ljava/nio/Bits;->char0(C)B

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@7
    .line 107
    add-int/lit8 v0, p1, 0x1

    #@9
    invoke-static {p2}, Ljava/nio/Bits;->char1(C)B

    #@c
    move-result v1

    #@d
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@10
    .line 105
    return-void
.end method

.method static putDouble(JDZ)V
    .locals 0
    .param p0, "a"    # J
    .param p2, "x"    # D
    .param p4, "bigEndian"    # Z

    #@0
    .prologue
    .line 585
    if-eqz p4, :cond_0

    #@2
    .line 586
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putDoubleB(JD)V

    #@5
    .line 584
    :goto_0
    return-void

    #@6
    .line 588
    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putDoubleL(JD)V

    #@9
    goto :goto_0
.end method

.method static putDouble(Ljava/nio/ByteBuffer;IDZ)V
    .locals 0
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # D
    .param p4, "bigEndian"    # Z

    #@0
    .prologue
    .line 578
    if-eqz p4, :cond_0

    #@2
    .line 579
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putDoubleB(Ljava/nio/ByteBuffer;ID)V

    #@5
    .line 577
    :goto_0
    return-void

    #@6
    .line 581
    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putDoubleL(Ljava/nio/ByteBuffer;ID)V

    #@9
    goto :goto_0
.end method

.method static putDoubleB(JD)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "x"    # D

    #@0
    .prologue
    .line 574
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p0, p1, v0, v1}, Ljava/nio/Bits;->putLongB(JJ)V

    #@7
    .line 573
    return-void
.end method

.method static putDoubleB(Ljava/nio/ByteBuffer;ID)V
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # D

    #@0
    .prologue
    .line 570
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p0, p1, v0, v1}, Ljava/nio/Bits;->putLongB(Ljava/nio/ByteBuffer;IJ)V

    #@7
    .line 569
    return-void
.end method

.method static putDoubleL(JD)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "x"    # D

    #@0
    .prologue
    .line 566
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p0, p1, v0, v1}, Ljava/nio/Bits;->putLongL(JJ)V

    #@7
    .line 565
    return-void
.end method

.method static putDoubleL(Ljava/nio/ByteBuffer;ID)V
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # D

    #@0
    .prologue
    .line 562
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {p0, p1, v0, v1}, Ljava/nio/Bits;->putLongL(Ljava/nio/ByteBuffer;IJ)V

    #@7
    .line 561
    return-void
.end method

.method static putFloat(JFZ)V
    .locals 0
    .param p0, "a"    # J
    .param p2, "x"    # F
    .param p3, "bigEndian"    # Z

    #@0
    .prologue
    .line 528
    if-eqz p3, :cond_0

    #@2
    .line 529
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putFloatB(JF)V

    #@5
    .line 527
    :goto_0
    return-void

    #@6
    .line 531
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putFloatL(JF)V

    #@9
    goto :goto_0
.end method

.method static putFloat(Ljava/nio/ByteBuffer;IFZ)V
    .locals 0
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # F
    .param p3, "bigEndian"    # Z

    #@0
    .prologue
    .line 521
    if-eqz p3, :cond_0

    #@2
    .line 522
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putFloatB(Ljava/nio/ByteBuffer;IF)V

    #@5
    .line 520
    :goto_0
    return-void

    #@6
    .line 524
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putFloatL(Ljava/nio/ByteBuffer;IF)V

    #@9
    goto :goto_0
.end method

.method static putFloatB(JF)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "x"    # F

    #@0
    .prologue
    .line 517
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->putIntB(JI)V

    #@7
    .line 516
    return-void
.end method

.method static putFloatB(Ljava/nio/ByteBuffer;IF)V
    .locals 1
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # F

    #@0
    .prologue
    .line 513
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->putIntB(Ljava/nio/ByteBuffer;II)V

    #@7
    .line 512
    return-void
.end method

.method static putFloatL(JF)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "x"    # F

    #@0
    .prologue
    .line 509
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->putIntL(JI)V

    #@7
    .line 508
    return-void
.end method

.method static putFloatL(Ljava/nio/ByteBuffer;IF)V
    .locals 1
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # F

    #@0
    .prologue
    .line 505
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->putIntL(Ljava/nio/ByteBuffer;II)V

    #@7
    .line 504
    return-void
.end method

.method static putInt(JIZ)V
    .locals 0
    .param p0, "a"    # J
    .param p2, "x"    # I
    .param p3, "bigEndian"    # Z

    #@0
    .prologue
    .line 314
    if-eqz p3, :cond_0

    #@2
    .line 315
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putIntB(JI)V

    #@5
    .line 313
    :goto_0
    return-void

    #@6
    .line 317
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putIntL(JI)V

    #@9
    goto :goto_0
.end method

.method static putInt(Ljava/nio/ByteBuffer;IIZ)V
    .locals 0
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # I
    .param p3, "bigEndian"    # Z

    #@0
    .prologue
    .line 307
    if-eqz p3, :cond_0

    #@2
    .line 308
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putIntB(Ljava/nio/ByteBuffer;II)V

    #@5
    .line 306
    :goto_0
    return-void

    #@6
    .line 310
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putIntL(Ljava/nio/ByteBuffer;II)V

    #@9
    goto :goto_0
.end method

.method static putIntB(JI)V
    .locals 4
    .param p0, "a"    # J
    .param p2, "x"    # I

    #@0
    .prologue
    .line 300
    invoke-static {p2}, Ljava/nio/Bits;->int3(I)B

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    #@7
    .line 301
    const-wide/16 v0, 0x1

    #@9
    add-long/2addr v0, p0

    #@a
    invoke-static {p2}, Ljava/nio/Bits;->int2(I)B

    #@d
    move-result v2

    #@e
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@11
    .line 302
    const-wide/16 v0, 0x2

    #@13
    add-long/2addr v0, p0

    #@14
    invoke-static {p2}, Ljava/nio/Bits;->int1(I)B

    #@17
    move-result v2

    #@18
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@1b
    .line 303
    const-wide/16 v0, 0x3

    #@1d
    add-long/2addr v0, p0

    #@1e
    invoke-static {p2}, Ljava/nio/Bits;->int0(I)B

    #@21
    move-result v2

    #@22
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@25
    .line 299
    return-void
.end method

.method static putIntB(Ljava/nio/ByteBuffer;II)V
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # I

    #@0
    .prologue
    .line 293
    invoke-static {p2}, Ljava/nio/Bits;->int3(I)B

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@7
    .line 294
    add-int/lit8 v0, p1, 0x1

    #@9
    invoke-static {p2}, Ljava/nio/Bits;->int2(I)B

    #@c
    move-result v1

    #@d
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@10
    .line 295
    add-int/lit8 v0, p1, 0x2

    #@12
    invoke-static {p2}, Ljava/nio/Bits;->int1(I)B

    #@15
    move-result v1

    #@16
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@19
    .line 296
    add-int/lit8 v0, p1, 0x3

    #@1b
    invoke-static {p2}, Ljava/nio/Bits;->int0(I)B

    #@1e
    move-result v1

    #@1f
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@22
    .line 292
    return-void
.end method

.method static putIntL(JI)V
    .locals 4
    .param p0, "a"    # J
    .param p2, "x"    # I

    #@0
    .prologue
    .line 286
    const-wide/16 v0, 0x3

    #@2
    add-long/2addr v0, p0

    #@3
    invoke-static {p2}, Ljava/nio/Bits;->int3(I)B

    #@6
    move-result v2

    #@7
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@a
    .line 287
    const-wide/16 v0, 0x2

    #@c
    add-long/2addr v0, p0

    #@d
    invoke-static {p2}, Ljava/nio/Bits;->int2(I)B

    #@10
    move-result v2

    #@11
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@14
    .line 288
    const-wide/16 v0, 0x1

    #@16
    add-long/2addr v0, p0

    #@17
    invoke-static {p2}, Ljava/nio/Bits;->int1(I)B

    #@1a
    move-result v2

    #@1b
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@1e
    .line 289
    invoke-static {p2}, Ljava/nio/Bits;->int0(I)B

    #@21
    move-result v0

    #@22
    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    #@25
    .line 285
    return-void
.end method

.method static putIntL(Ljava/nio/ByteBuffer;II)V
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # I

    #@0
    .prologue
    .line 279
    add-int/lit8 v0, p1, 0x3

    #@2
    invoke-static {p2}, Ljava/nio/Bits;->int3(I)B

    #@5
    move-result v1

    #@6
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@9
    .line 280
    add-int/lit8 v0, p1, 0x2

    #@b
    invoke-static {p2}, Ljava/nio/Bits;->int2(I)B

    #@e
    move-result v1

    #@f
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@12
    .line 281
    add-int/lit8 v0, p1, 0x1

    #@14
    invoke-static {p2}, Ljava/nio/Bits;->int1(I)B

    #@17
    move-result v1

    #@18
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@1b
    .line 282
    invoke-static {p2}, Ljava/nio/Bits;->int0(I)B

    #@1e
    move-result v0

    #@1f
    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@22
    .line 278
    return-void
.end method

.method static putLong(JJZ)V
    .locals 0
    .param p0, "a"    # J
    .param p2, "x"    # J
    .param p4, "bigEndian"    # Z

    #@0
    .prologue
    .line 471
    if-eqz p4, :cond_0

    #@2
    .line 472
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putLongB(JJ)V

    #@5
    .line 470
    :goto_0
    return-void

    #@6
    .line 474
    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putLongL(JJ)V

    #@9
    goto :goto_0
.end method

.method static putLong(Ljava/nio/ByteBuffer;IJZ)V
    .locals 0
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # J
    .param p4, "bigEndian"    # Z

    #@0
    .prologue
    .line 464
    if-eqz p4, :cond_0

    #@2
    .line 465
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putLongB(Ljava/nio/ByteBuffer;IJ)V

    #@5
    .line 463
    :goto_0
    return-void

    #@6
    .line 467
    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljava/nio/Bits;->putLongL(Ljava/nio/ByteBuffer;IJ)V

    #@9
    goto :goto_0
.end method

.method static putLongB(JJ)V
    .locals 4
    .param p0, "a"    # J
    .param p2, "x"    # J

    #@0
    .prologue
    .line 453
    invoke-static {p2, p3}, Ljava/nio/Bits;->long7(J)B

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    #@7
    .line 454
    const-wide/16 v0, 0x1

    #@9
    add-long/2addr v0, p0

    #@a
    invoke-static {p2, p3}, Ljava/nio/Bits;->long6(J)B

    #@d
    move-result v2

    #@e
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@11
    .line 455
    const-wide/16 v0, 0x2

    #@13
    add-long/2addr v0, p0

    #@14
    invoke-static {p2, p3}, Ljava/nio/Bits;->long5(J)B

    #@17
    move-result v2

    #@18
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@1b
    .line 456
    const-wide/16 v0, 0x3

    #@1d
    add-long/2addr v0, p0

    #@1e
    invoke-static {p2, p3}, Ljava/nio/Bits;->long4(J)B

    #@21
    move-result v2

    #@22
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@25
    .line 457
    const-wide/16 v0, 0x4

    #@27
    add-long/2addr v0, p0

    #@28
    invoke-static {p2, p3}, Ljava/nio/Bits;->long3(J)B

    #@2b
    move-result v2

    #@2c
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@2f
    .line 458
    const-wide/16 v0, 0x5

    #@31
    add-long/2addr v0, p0

    #@32
    invoke-static {p2, p3}, Ljava/nio/Bits;->long2(J)B

    #@35
    move-result v2

    #@36
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@39
    .line 459
    const-wide/16 v0, 0x6

    #@3b
    add-long/2addr v0, p0

    #@3c
    invoke-static {p2, p3}, Ljava/nio/Bits;->long1(J)B

    #@3f
    move-result v2

    #@40
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@43
    .line 460
    const-wide/16 v0, 0x7

    #@45
    add-long/2addr v0, p0

    #@46
    invoke-static {p2, p3}, Ljava/nio/Bits;->long0(J)B

    #@49
    move-result v2

    #@4a
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@4d
    .line 452
    return-void
.end method

.method static putLongB(Ljava/nio/ByteBuffer;IJ)V
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # J

    #@0
    .prologue
    .line 442
    invoke-static {p2, p3}, Ljava/nio/Bits;->long7(J)B

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@7
    .line 443
    add-int/lit8 v0, p1, 0x1

    #@9
    invoke-static {p2, p3}, Ljava/nio/Bits;->long6(J)B

    #@c
    move-result v1

    #@d
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@10
    .line 444
    add-int/lit8 v0, p1, 0x2

    #@12
    invoke-static {p2, p3}, Ljava/nio/Bits;->long5(J)B

    #@15
    move-result v1

    #@16
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@19
    .line 445
    add-int/lit8 v0, p1, 0x3

    #@1b
    invoke-static {p2, p3}, Ljava/nio/Bits;->long4(J)B

    #@1e
    move-result v1

    #@1f
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@22
    .line 446
    add-int/lit8 v0, p1, 0x4

    #@24
    invoke-static {p2, p3}, Ljava/nio/Bits;->long3(J)B

    #@27
    move-result v1

    #@28
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@2b
    .line 447
    add-int/lit8 v0, p1, 0x5

    #@2d
    invoke-static {p2, p3}, Ljava/nio/Bits;->long2(J)B

    #@30
    move-result v1

    #@31
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@34
    .line 448
    add-int/lit8 v0, p1, 0x6

    #@36
    invoke-static {p2, p3}, Ljava/nio/Bits;->long1(J)B

    #@39
    move-result v1

    #@3a
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@3d
    .line 449
    add-int/lit8 v0, p1, 0x7

    #@3f
    invoke-static {p2, p3}, Ljava/nio/Bits;->long0(J)B

    #@42
    move-result v1

    #@43
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@46
    .line 441
    return-void
.end method

.method static putLongL(JJ)V
    .locals 4
    .param p0, "a"    # J
    .param p2, "x"    # J

    #@0
    .prologue
    .line 431
    const-wide/16 v0, 0x7

    #@2
    add-long/2addr v0, p0

    #@3
    invoke-static {p2, p3}, Ljava/nio/Bits;->long7(J)B

    #@6
    move-result v2

    #@7
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@a
    .line 432
    const-wide/16 v0, 0x6

    #@c
    add-long/2addr v0, p0

    #@d
    invoke-static {p2, p3}, Ljava/nio/Bits;->long6(J)B

    #@10
    move-result v2

    #@11
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@14
    .line 433
    const-wide/16 v0, 0x5

    #@16
    add-long/2addr v0, p0

    #@17
    invoke-static {p2, p3}, Ljava/nio/Bits;->long5(J)B

    #@1a
    move-result v2

    #@1b
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@1e
    .line 434
    const-wide/16 v0, 0x4

    #@20
    add-long/2addr v0, p0

    #@21
    invoke-static {p2, p3}, Ljava/nio/Bits;->long4(J)B

    #@24
    move-result v2

    #@25
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@28
    .line 435
    const-wide/16 v0, 0x3

    #@2a
    add-long/2addr v0, p0

    #@2b
    invoke-static {p2, p3}, Ljava/nio/Bits;->long3(J)B

    #@2e
    move-result v2

    #@2f
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@32
    .line 436
    const-wide/16 v0, 0x2

    #@34
    add-long/2addr v0, p0

    #@35
    invoke-static {p2, p3}, Ljava/nio/Bits;->long2(J)B

    #@38
    move-result v2

    #@39
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@3c
    .line 437
    const-wide/16 v0, 0x1

    #@3e
    add-long/2addr v0, p0

    #@3f
    invoke-static {p2, p3}, Ljava/nio/Bits;->long1(J)B

    #@42
    move-result v2

    #@43
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@46
    .line 438
    invoke-static {p2, p3}, Ljava/nio/Bits;->long0(J)B

    #@49
    move-result v0

    #@4a
    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    #@4d
    .line 430
    return-void
.end method

.method static putLongL(Ljava/nio/ByteBuffer;IJ)V
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # J

    #@0
    .prologue
    .line 420
    add-int/lit8 v0, p1, 0x7

    #@2
    invoke-static {p2, p3}, Ljava/nio/Bits;->long7(J)B

    #@5
    move-result v1

    #@6
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@9
    .line 421
    add-int/lit8 v0, p1, 0x6

    #@b
    invoke-static {p2, p3}, Ljava/nio/Bits;->long6(J)B

    #@e
    move-result v1

    #@f
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@12
    .line 422
    add-int/lit8 v0, p1, 0x5

    #@14
    invoke-static {p2, p3}, Ljava/nio/Bits;->long5(J)B

    #@17
    move-result v1

    #@18
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@1b
    .line 423
    add-int/lit8 v0, p1, 0x4

    #@1d
    invoke-static {p2, p3}, Ljava/nio/Bits;->long4(J)B

    #@20
    move-result v1

    #@21
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@24
    .line 424
    add-int/lit8 v0, p1, 0x3

    #@26
    invoke-static {p2, p3}, Ljava/nio/Bits;->long3(J)B

    #@29
    move-result v1

    #@2a
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@2d
    .line 425
    add-int/lit8 v0, p1, 0x2

    #@2f
    invoke-static {p2, p3}, Ljava/nio/Bits;->long2(J)B

    #@32
    move-result v1

    #@33
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@36
    .line 426
    add-int/lit8 v0, p1, 0x1

    #@38
    invoke-static {p2, p3}, Ljava/nio/Bits;->long1(J)B

    #@3b
    move-result v1

    #@3c
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@3f
    .line 427
    invoke-static {p2, p3}, Ljava/nio/Bits;->long0(J)B

    #@42
    move-result v0

    #@43
    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@46
    .line 419
    return-void
.end method

.method static putShort(JSZ)V
    .locals 0
    .param p0, "a"    # J
    .param p2, "x"    # S
    .param p3, "bigEndian"    # Z

    #@0
    .prologue
    .line 210
    if-eqz p3, :cond_0

    #@2
    .line 211
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putShortB(JS)V

    #@5
    .line 209
    :goto_0
    return-void

    #@6
    .line 213
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putShortL(JS)V

    #@9
    goto :goto_0
.end method

.method static putShort(Ljava/nio/ByteBuffer;ISZ)V
    .locals 0
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # S
    .param p3, "bigEndian"    # Z

    #@0
    .prologue
    .line 203
    if-eqz p3, :cond_0

    #@2
    .line 204
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putShortB(Ljava/nio/ByteBuffer;IS)V

    #@5
    .line 202
    :goto_0
    return-void

    #@6
    .line 206
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/nio/Bits;->putShortL(Ljava/nio/ByteBuffer;IS)V

    #@9
    goto :goto_0
.end method

.method static putShortB(JS)V
    .locals 4
    .param p0, "a"    # J
    .param p2, "x"    # S

    #@0
    .prologue
    .line 198
    invoke-static {p2}, Ljava/nio/Bits;->short1(S)B

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    #@7
    .line 199
    const-wide/16 v0, 0x1

    #@9
    add-long/2addr v0, p0

    #@a
    invoke-static {p2}, Ljava/nio/Bits;->short0(S)B

    #@d
    move-result v2

    #@e
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@11
    .line 197
    return-void
.end method

.method static putShortB(Ljava/nio/ByteBuffer;IS)V
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # S

    #@0
    .prologue
    .line 193
    invoke-static {p2}, Ljava/nio/Bits;->short1(S)B

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@7
    .line 194
    add-int/lit8 v0, p1, 0x1

    #@9
    invoke-static {p2}, Ljava/nio/Bits;->short0(S)B

    #@c
    move-result v1

    #@d
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@10
    .line 192
    return-void
.end method

.method static putShortL(JS)V
    .locals 4
    .param p0, "a"    # J
    .param p2, "x"    # S

    #@0
    .prologue
    .line 188
    invoke-static {p2}, Ljava/nio/Bits;->short0(S)B

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Ljava/nio/Bits;->_put(JB)V

    #@7
    .line 189
    const-wide/16 v0, 0x1

    #@9
    add-long/2addr v0, p0

    #@a
    invoke-static {p2}, Ljava/nio/Bits;->short1(S)B

    #@d
    move-result v2

    #@e
    invoke-static {v0, v1, v2}, Ljava/nio/Bits;->_put(JB)V

    #@11
    .line 187
    return-void
.end method

.method static putShortL(Ljava/nio/ByteBuffer;IS)V
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bi"    # I
    .param p2, "x"    # S

    #@0
    .prologue
    .line 183
    invoke-static {p2}, Ljava/nio/Bits;->short0(S)B

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@7
    .line 184
    add-int/lit8 v0, p1, 0x1

    #@9
    invoke-static {p2}, Ljava/nio/Bits;->short1(S)B

    #@c
    move-result v1

    #@d
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->_put(IB)V

    #@10
    .line 182
    return-void
.end method

.method static reserveMemory(JI)V
    .locals 12
    .param p0, "size"    # J
    .param p2, "cap"    # I

    #@0
    .prologue
    const-wide/16 v10, 0x1

    #@2
    .line 703
    const-class v2, Ljava/nio/Bits;

    #@4
    monitor-enter v2

    #@5
    .line 704
    :try_start_0
    sget-boolean v1, Ljava/nio/Bits;->memoryLimitSet:Z

    #@7
    if-nez v1, :cond_0

    #@9
    invoke-static {}, Lsun/misc/VM;->isBooted()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 705
    invoke-static {}, Lsun/misc/VM;->maxDirectMemory()J

    #@12
    move-result-wide v4

    #@13
    sput-wide v4, Ljava/nio/Bits;->maxMemory:J

    #@15
    .line 706
    const/4 v1, 0x1

    #@16
    sput-boolean v1, Ljava/nio/Bits;->memoryLimitSet:Z

    #@18
    .line 711
    :cond_0
    int-to-long v4, p2

    #@19
    sget-wide v6, Ljava/nio/Bits;->maxMemory:J

    #@1b
    sget-wide v8, Ljava/nio/Bits;->totalCapacity:J

    #@1d
    sub-long/2addr v6, v8

    #@1e
    cmp-long v1, v4, v6

    #@20
    if-gtz v1, :cond_1

    #@22
    .line 712
    sget-wide v4, Ljava/nio/Bits;->reservedMemory:J

    #@24
    add-long/2addr v4, p0

    #@25
    sput-wide v4, Ljava/nio/Bits;->reservedMemory:J

    #@27
    .line 713
    sget-wide v4, Ljava/nio/Bits;->totalCapacity:J

    #@29
    int-to-long v6, p2

    #@2a
    add-long/2addr v4, v6

    #@2b
    sput-wide v4, Ljava/nio/Bits;->totalCapacity:J

    #@2d
    .line 714
    sget-wide v4, Ljava/nio/Bits;->count:J

    #@2f
    add-long/2addr v4, v10

    #@30
    sput-wide v4, Ljava/nio/Bits;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@32
    monitor-exit v2

    #@33
    .line 715
    return-void

    #@34
    :cond_1
    monitor-exit v2

    #@35
    .line 719
    invoke-static {}, Ljava/lang/System;->gc()V

    #@38
    .line 721
    const-wide/16 v2, 0x64

    #@3a
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    #@3d
    .line 726
    :goto_0
    const-class v2, Ljava/nio/Bits;

    #@3f
    monitor-enter v2

    #@40
    .line 727
    :try_start_2
    sget-wide v4, Ljava/nio/Bits;->totalCapacity:J

    #@42
    int-to-long v6, p2

    #@43
    add-long/2addr v4, v6

    #@44
    sget-wide v6, Ljava/nio/Bits;->maxMemory:J

    #@46
    cmp-long v1, v4, v6

    #@48
    if-lez v1, :cond_2

    #@4a
    .line 728
    new-instance v1, Ljava/lang/OutOfMemoryError;

    #@4c
    const-string/jumbo v3, "Direct buffer memory"

    #@4f
    invoke-direct {v1, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    #@52
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    .line 726
    :catchall_0
    move-exception v1

    #@54
    monitor-exit v2

    #@55
    throw v1

    #@56
    .line 703
    :catchall_1
    move-exception v1

    #@57
    monitor-exit v2

    #@58
    throw v1

    #@59
    .line 722
    :catch_0
    move-exception v0

    #@5a
    .line 724
    .local v0, "x":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    #@61
    goto :goto_0

    #@62
    .line 729
    .end local v0    # "x":Ljava/lang/InterruptedException;
    :cond_2
    :try_start_3
    sget-wide v4, Ljava/nio/Bits;->reservedMemory:J

    #@64
    add-long/2addr v4, p0

    #@65
    sput-wide v4, Ljava/nio/Bits;->reservedMemory:J

    #@67
    .line 730
    sget-wide v4, Ljava/nio/Bits;->totalCapacity:J

    #@69
    int-to-long v6, p2

    #@6a
    add-long/2addr v4, v6

    #@6b
    sput-wide v4, Ljava/nio/Bits;->totalCapacity:J

    #@6d
    .line 731
    sget-wide v4, Ljava/nio/Bits;->count:J

    #@6f
    add-long/2addr v4, v10

    #@70
    sput-wide v4, Ljava/nio/Bits;->count:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@72
    monitor-exit v2

    #@73
    .line 702
    return-void
.end method

.method private static short0(S)B
    .locals 1
    .param p0, "x"    # S

    #@0
    .prologue
    .line 179
    int-to-byte v0, p0

    #@1
    return v0
.end method

.method private static short1(S)B
    .locals 1
    .param p0, "x"    # S

    #@0
    .prologue
    .line 175
    shr-int/lit8 v0, p0, 0x8

    #@2
    int-to-byte v0, v0

    #@3
    return v0
.end method

.method static swap(C)C
    .locals 1
    .param p0, "x"    # C

    #@0
    .prologue
    .line 51
    invoke-static {p0}, Ljava/lang/Character;->reverseBytes(C)C

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static swap(I)I
    .locals 1
    .param p0, "x"    # I

    #@0
    .prologue
    .line 55
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static swap(J)J
    .locals 2
    .param p0, "x"    # J

    #@0
    .prologue
    .line 59
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static swap(S)S
    .locals 1
    .param p0, "x"    # S

    #@0
    .prologue
    .line 47
    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static unaligned()Z
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 677
    sget-boolean v1, Ljava/nio/Bits;->unalignedKnown:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 678
    sget-boolean v1, Ljava/nio/Bits;->unaligned:Z

    #@7
    return v1

    #@8
    .line 680
    :cond_0
    new-instance v1, Lsun/security/action/GetPropertyAction;

    #@a
    const-string/jumbo v3, "os.arch"

    #@d
    invoke-direct {v1, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@10
    .line 679
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    .line 681
    .local v0, "arch":Ljava/lang/String;
    const-string/jumbo v1, "i386"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_1

    #@1f
    const-string/jumbo v1, "x86"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_1

    #@28
    .line 682
    const-string/jumbo v1, "amd64"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    .line 681
    if-nez v1, :cond_1

    #@31
    .line 682
    const-string/jumbo v1, "x86_64"

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    .line 681
    :goto_0
    sput-boolean v1, Ljava/nio/Bits;->unaligned:Z

    #@3a
    .line 683
    sput-boolean v2, Ljava/nio/Bits;->unalignedKnown:Z

    #@3c
    .line 684
    sget-boolean v1, Ljava/nio/Bits;->unaligned:Z

    #@3e
    return v1

    #@3f
    :cond_1
    move v1, v2

    #@40
    .line 681
    goto :goto_0
.end method

.method static declared-synchronized unreserveMemory(JI)V
    .locals 6
    .param p0, "size"    # J
    .param p2, "cap"    # I

    #@0
    .prologue
    const-class v1, Ljava/nio/Bits;

    #@2
    monitor-enter v1

    #@3
    .line 737
    :try_start_0
    sget-wide v2, Ljava/nio/Bits;->reservedMemory:J

    #@5
    const-wide/16 v4, 0x0

    #@7
    cmp-long v0, v2, v4

    #@9
    if-lez v0, :cond_1

    #@b
    .line 738
    sget-wide v2, Ljava/nio/Bits;->reservedMemory:J

    #@d
    sub-long/2addr v2, p0

    #@e
    sput-wide v2, Ljava/nio/Bits;->reservedMemory:J

    #@10
    .line 739
    sget-wide v2, Ljava/nio/Bits;->totalCapacity:J

    #@12
    int-to-long v4, p2

    #@13
    sub-long/2addr v2, v4

    #@14
    sput-wide v2, Ljava/nio/Bits;->totalCapacity:J

    #@16
    .line 740
    sget-wide v2, Ljava/nio/Bits;->count:J

    #@18
    const-wide/16 v4, 0x1

    #@1a
    sub-long/2addr v2, v4

    #@1b
    sput-wide v2, Ljava/nio/Bits;->count:J

    #@1d
    .line 741
    sget-boolean v0, Ljava/nio/Bits;->-assertionsDisabled:Z

    #@1f
    if-nez v0, :cond_1

    #@21
    sget-wide v2, Ljava/nio/Bits;->reservedMemory:J

    #@23
    const-wide/16 v4, -0x1

    #@25
    cmp-long v0, v2, v4

    #@27
    if-lez v0, :cond_0

    #@29
    const/4 v0, 0x1

    #@2a
    :goto_0
    if-nez v0, :cond_1

    #@2c
    new-instance v0, Ljava/lang/AssertionError;

    #@2e
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@31
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    :catchall_0
    move-exception v0

    #@33
    monitor-exit v1

    #@34
    throw v0

    #@35
    :cond_0
    const/4 v0, 0x0

    #@36
    goto :goto_0

    #@37
    :cond_1
    monitor-exit v1

    #@38
    .line 736
    return-void
.end method

.method static unsafe()Lsun/misc/Unsafe;
    .locals 1

    #@0
    .prologue
    .line 605
    sget-object v0, Ljava/nio/Bits;->unsafe:Lsun/misc/Unsafe;

    #@2
    return-object v0
.end method
