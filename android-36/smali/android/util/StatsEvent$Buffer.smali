.class final Landroid/util/StatsEvent$Buffer;
.super Ljava/lang/Object;
.source "StatsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/StatsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Buffer"
.end annotation


# static fields
.field private static final blacklist INITIAL_BUFFER_SIZE:I = 0x200

.field private static blacklist sPool:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/util/StatsEvent$Buffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBytes:[B

.field private blacklist mMaxSize:I

.field private blacklist mOverflow:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetBytes(Landroid/util/StatsEvent$Buffer;)[B
    .registers 1

    invoke-direct {p0}, Landroid/util/StatsEvent$Buffer;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasOverflowed(Landroid/util/StatsEvent$Buffer;)Z
    .registers 1

    invoke-direct {p0}, Landroid/util/StatsEvent$Buffer;->hasOverflowed()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mputBoolean(Landroid/util/StatsEvent$Buffer;IZ)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/StatsEvent$Buffer;->putBoolean(IZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mputByte(Landroid/util/StatsEvent$Buffer;IB)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/StatsEvent$Buffer;->putByte(IB)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mputByteArray(Landroid/util/StatsEvent$Buffer;I[B)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/StatsEvent$Buffer;->putByteArray(I[B)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mputFloat(Landroid/util/StatsEvent$Buffer;IF)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/StatsEvent$Buffer;->putFloat(IF)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mputInt(Landroid/util/StatsEvent$Buffer;II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/StatsEvent$Buffer;->putInt(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mputLong(Landroid/util/StatsEvent$Buffer;IJ)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/util/StatsEvent$Buffer;->putLong(IJ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrelease(Landroid/util/StatsEvent$Buffer;)V
    .registers 1

    invoke-direct {p0}, Landroid/util/StatsEvent$Buffer;->release()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetMaxSize(Landroid/util/StatsEvent$Buffer;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/StatsEvent$Buffer;->setMaxSize(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smobtain()Landroid/util/StatsEvent$Buffer;
    .registers 1

    invoke-static {}, Landroid/util/StatsEvent$Buffer;->obtain()Landroid/util/StatsEvent$Buffer;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 853
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/util/StatsEvent$Buffer;->sPool:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 4

    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/StatsEvent$Buffer;->mOverflow:Z

    .line 857
    const v0, 0xc800

    iput v0, p0, Landroid/util/StatsEvent$Buffer;->mMaxSize:I

    .line 881
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 882
    .local v1, "tempBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_1e

    :cond_1c
    new-array v0, v0, [B

    :goto_1e
    iput-object v0, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    .line 883
    return-void
.end method

.method private blacklist getBytes()[B
    .registers 2

    .line 887
    iget-object v0, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    return-object v0
.end method

.method private blacklist hasEnoughSpace(II)Z
    .registers 7
    .param p1, "index"    # I
    .param p2, "numBytes"    # I

    .line 921
    add-int v0, p1, p2

    .line 923
    .local v0, "totalBytesNeeded":I
    iget v1, p0, Landroid/util/StatsEvent$Buffer;->mMaxSize:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_b

    .line 924
    iput-boolean v2, p0, Landroid/util/StatsEvent$Buffer;->mOverflow:Z

    .line 925
    const/4 v1, 0x0

    return v1

    .line 929
    :cond_b
    iget-object v1, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    array-length v1, v1

    iget v3, p0, Landroid/util/StatsEvent$Buffer;->mMaxSize:I

    if-ge v1, v3, :cond_2c

    iget-object v1, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    array-length v1, v1

    if-le v0, v1, :cond_2c

    .line 930
    iget-object v1, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    array-length v1, v1

    .line 932
    .local v1, "newSize":I
    :cond_1a
    mul-int/lit8 v1, v1, 0x2

    .line 933
    if-le v1, v0, :cond_1a

    .line 935
    iget v3, p0, Landroid/util/StatsEvent$Buffer;->mMaxSize:I

    if-le v1, v3, :cond_24

    .line 936
    iget v1, p0, Landroid/util/StatsEvent$Buffer;->mMaxSize:I

    .line 939
    :cond_24
    iget-object v3, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    .line 942
    .end local v1    # "newSize":I
    :cond_2c
    return v2
.end method

.method private blacklist hasOverflowed()Z
    .registers 2

    .line 910
    iget-boolean v0, p0, Landroid/util/StatsEvent$Buffer;->mOverflow:Z

    return v0
.end method

.method private static blacklist obtain()Landroid/util/StatsEvent$Buffer;
    .registers 2

    .line 865
    sget-object v0, Landroid/util/StatsEvent$Buffer;->sPool:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/StatsEvent$Buffer;

    .line 866
    .local v0, "buffer":Landroid/util/StatsEvent$Buffer;
    if-nez v0, :cond_12

    .line 867
    new-instance v1, Landroid/util/StatsEvent$Buffer;

    invoke-direct {v1}, Landroid/util/StatsEvent$Buffer;-><init>()V

    move-object v0, v1

    goto :goto_15

    .line 869
    :cond_12
    invoke-direct {v0}, Landroid/util/StatsEvent$Buffer;->reset()V

    .line 871
    :goto_15
    return-object v0
.end method

.method private blacklist putBoolean(IZ)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 968
    int-to-byte v0, p2

    invoke-direct {p0, p1, v0}, Landroid/util/StatsEvent$Buffer;->putByte(IB)I

    move-result v0

    return v0
.end method

.method private blacklist putByte(IB)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # B

    .line 953
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/util/StatsEvent$Buffer;->hasEnoughSpace(II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 954
    iget-object v1, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    aput-byte p2, v1, p1

    .line 955
    return v0

    .line 957
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist putByteArray(I[B)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # [B

    .line 1032
    array-length v0, p2

    .line 1033
    .local v0, "numBytes":I
    invoke-direct {p0, p1, v0}, Landroid/util/StatsEvent$Buffer;->hasEnoughSpace(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 1034
    iget-object v1, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    invoke-static {p2, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1035
    return v0

    .line 1037
    :cond_e
    return v2
.end method

.method private blacklist putFloat(IF)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 1021
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/util/StatsEvent$Buffer;->putInt(II)I

    move-result v0

    return v0
.end method

.method private blacklist putInt(II)I
    .registers 7
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 979
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/util/StatsEvent$Buffer;->hasEnoughSpace(II)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 981
    iget-object v1, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    int-to-byte v2, p2

    aput-byte v2, v1, p1

    .line 982
    iget-object v1, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 983
    iget-object v1, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    add-int/lit8 v2, p1, 0x2

    shr-int/lit8 v3, p2, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 984
    iget-object v1, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    add-int/lit8 v2, p1, 0x3

    shr-int/lit8 v3, p2, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 985
    return v0

    .line 987
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist putLong(IJ)I
    .registers 9
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 998
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/util/StatsEvent$Buffer;->hasEnoughSpace(II)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1000
    iget-object v1, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    long-to-int v2, p2

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    .line 1001
    iget-object v1, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    add-int/lit8 v2, p1, 0x1

    shr-long v3, p2, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1002
    iget-object v1, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    add-int/lit8 v2, p1, 0x2

    const/16 v3, 0x10

    shr-long v3, p2, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1003
    iget-object v1, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    add-int/lit8 v2, p1, 0x3

    const/16 v3, 0x18

    shr-long v3, p2, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1004
    iget-object v1, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    add-int/lit8 v2, p1, 0x4

    const/16 v3, 0x20

    shr-long v3, p2, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1005
    iget-object v1, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    add-int/lit8 v2, p1, 0x5

    const/16 v3, 0x28

    shr-long v3, p2, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1006
    iget-object v1, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    add-int/lit8 v2, p1, 0x6

    const/16 v3, 0x30

    shr-long v3, p2, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1007
    iget-object v1, p0, Landroid/util/StatsEvent$Buffer;->mBytes:[B

    add-int/lit8 v2, p1, 0x7

    const/16 v3, 0x38

    shr-long v3, p2, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1008
    return v0

    .line 1010
    :cond_61
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist release()V
    .registers 3

    .line 892
    iget v0, p0, Landroid/util/StatsEvent$Buffer;->mMaxSize:I

    const/16 v1, 0xfe0

    if-gt v0, v1, :cond_c

    .line 893
    sget-object v0, Landroid/util/StatsEvent$Buffer;->sPool:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Landroid/util/StatsEvent$Buffer$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 895
    :cond_c
    return-void
.end method

.method private blacklist reset()V
    .registers 2

    .line 898
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/StatsEvent$Buffer;->mOverflow:Z

    .line 899
    const v0, 0xc800

    iput v0, p0, Landroid/util/StatsEvent$Buffer;->mMaxSize:I

    .line 900
    return-void
.end method

.method private blacklist setMaxSize(II)V
    .registers 4
    .param p1, "maxSize"    # I
    .param p2, "numBytesWritten"    # I

    .line 903
    iput p1, p0, Landroid/util/StatsEvent$Buffer;->mMaxSize:I

    .line 904
    if-le p2, p1, :cond_7

    .line 905
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/StatsEvent$Buffer;->mOverflow:Z

    .line 907
    :cond_7
    return-void
.end method
