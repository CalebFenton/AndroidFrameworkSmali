.class Lsun/nio/ch/NativeObject;
.super Ljava/lang/Object;
.source "NativeObject.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static byteOrder:Ljava/nio/ByteOrder;

.field private static pageSize:I

.field protected static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final address:J

.field protected allocationAddress:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/nio/ch/NativeObject;

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
    sput-boolean v0, Lsun/nio/ch/NativeObject;->-assertionsDisabled:Z

    #@b
    .line 43
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@e
    move-result-object v0

    #@f
    sput-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@11
    .line 365
    const/4 v0, 0x0

    #@12
    sput-object v0, Lsun/nio/ch/NativeObject;->byteOrder:Ljava/nio/ByteOrder;

    #@14
    .line 392
    const/4 v0, -0x1

    #@15
    sput v0, Lsun/nio/ch/NativeObject;->pageSize:I

    #@17
    .line 41
    return-void

    #@18
    :cond_0
    const/4 v0, 0x1

    #@19
    goto :goto_0
.end method

.method protected constructor <init>(IZ)V
    .locals 8
    .param p1, "size"    # I
    .param p2, "pageAligned"    # Z

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    if-nez p2, :cond_0

    #@5
    .line 75
    sget-object v3, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@7
    int-to-long v4, p1

    #@8
    invoke-virtual {v3, v4, v5}, Lsun/misc/Unsafe;->allocateMemory(J)J

    #@b
    move-result-wide v4

    #@c
    iput-wide v4, p0, Lsun/nio/ch/NativeObject;->allocationAddress:J

    #@e
    .line 76
    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->allocationAddress:J

    #@10
    iput-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    #@12
    .line 73
    :goto_0
    return-void

    #@13
    .line 78
    :cond_0
    invoke-static {}, Lsun/nio/ch/NativeObject;->pageSize()I

    #@16
    move-result v2

    #@17
    .line 79
    .local v2, "ps":I
    sget-object v3, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@19
    add-int v4, p1, v2

    #@1b
    int-to-long v4, v4

    #@1c
    invoke-virtual {v3, v4, v5}, Lsun/misc/Unsafe;->allocateMemory(J)J

    #@1f
    move-result-wide v0

    #@20
    .line 80
    .local v0, "a":J
    iput-wide v0, p0, Lsun/nio/ch/NativeObject;->allocationAddress:J

    #@22
    .line 81
    int-to-long v4, v2

    #@23
    add-long/2addr v4, v0

    #@24
    add-int/lit8 v3, v2, -0x1

    #@26
    int-to-long v6, v3

    #@27
    and-long/2addr v6, v0

    #@28
    sub-long/2addr v4, v6

    #@29
    iput-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    #@2b
    goto :goto_0
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "address"    # J

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    iput-wide p1, p0, Lsun/nio/ch/NativeObject;->allocationAddress:J

    #@5
    .line 59
    iput-wide p1, p0, Lsun/nio/ch/NativeObject;->address:J

    #@7
    .line 57
    return-void
.end method

.method constructor <init>(JJ)V
    .locals 3
    .param p1, "address"    # J
    .param p3, "offset"    # J

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput-wide p1, p0, Lsun/nio/ch/NativeObject;->allocationAddress:J

    #@5
    .line 68
    add-long v0, p1, p3

    #@7
    iput-wide v0, p0, Lsun/nio/ch/NativeObject;->address:J

    #@9
    .line 66
    return-void
.end method

.method static addressSize()I
    .locals 1

    #@0
    .prologue
    .line 361
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@2
    invoke-virtual {v0}, Lsun/misc/Unsafe;->addressSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method static byteOrder()Ljava/nio/ByteOrder;
    .locals 6

    #@0
    .prologue
    .line 373
    sget-object v3, Lsun/nio/ch/NativeObject;->byteOrder:Ljava/nio/ByteOrder;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 374
    sget-object v3, Lsun/nio/ch/NativeObject;->byteOrder:Ljava/nio/ByteOrder;

    #@6
    return-object v3

    #@7
    .line 375
    :cond_0
    sget-object v3, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@9
    const-wide/16 v4, 0x8

    #@b
    invoke-virtual {v3, v4, v5}, Lsun/misc/Unsafe;->allocateMemory(J)J

    #@e
    move-result-wide v0

    #@f
    .line 377
    .local v0, "a":J
    :try_start_0
    sget-object v3, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@11
    const-wide v4, 0x102030405060708L

    #@16
    invoke-virtual {v3, v0, v1, v4, v5}, Lsun/misc/Unsafe;->putLong(JJ)V

    #@19
    .line 378
    sget-object v3, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@1b
    invoke-virtual {v3, v0, v1}, Lsun/misc/Unsafe;->getByte(J)B

    #@1e
    move-result v2

    #@1f
    .line 379
    .local v2, "b":B
    sparse-switch v2, :sswitch_data_0

    #@22
    .line 383
    sget-boolean v3, Lsun/nio/ch/NativeObject;->-assertionsDisabled:Z

    #@24
    if-nez v3, :cond_1

    #@26
    new-instance v3, Ljava/lang/AssertionError;

    #@28
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@2b
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 385
    .end local v2    # "b":B
    :catchall_0
    move-exception v3

    #@2d
    .line 386
    sget-object v4, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@2f
    invoke-virtual {v4, v0, v1}, Lsun/misc/Unsafe;->freeMemory(J)V

    #@32
    .line 385
    throw v3

    #@33
    .line 380
    .restart local v2    # "b":B
    :sswitch_0
    :try_start_1
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@35
    sput-object v3, Lsun/nio/ch/NativeObject;->byteOrder:Ljava/nio/ByteOrder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    .line 386
    :cond_1
    :goto_0
    sget-object v3, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@39
    invoke-virtual {v3, v0, v1}, Lsun/misc/Unsafe;->freeMemory(J)V

    #@3c
    .line 388
    sget-object v3, Lsun/nio/ch/NativeObject;->byteOrder:Ljava/nio/ByteOrder;

    #@3e
    return-object v3

    #@3f
    .line 381
    :sswitch_1
    :try_start_2
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@41
    sput-object v3, Lsun/nio/ch/NativeObject;->byteOrder:Ljava/nio/ByteOrder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    goto :goto_0

    #@44
    .line 379
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method static pageSize()I
    .locals 2

    #@0
    .prologue
    .line 400
    sget v0, Lsun/nio/ch/NativeObject;->pageSize:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 401
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@7
    invoke-virtual {v0}, Lsun/misc/Unsafe;->pageSize()I

    #@a
    move-result v0

    #@b
    sput v0, Lsun/nio/ch/NativeObject;->pageSize:I

    #@d
    .line 402
    :cond_0
    sget v0, Lsun/nio/ch/NativeObject;->pageSize:I

    #@f
    return v0
.end method


# virtual methods
.method address()J
    .locals 2

    #@0
    .prologue
    .line 91
    iget-wide v0, p0, Lsun/nio/ch/NativeObject;->address:J

    #@2
    return-wide v0
.end method

.method allocationAddress()J
    .locals 2

    #@0
    .prologue
    .line 95
    iget-wide v0, p0, Lsun/nio/ch/NativeObject;->allocationAddress:J

    #@2
    return-wide v0
.end method

.method final getByte(I)B
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 176
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@2
    int-to-long v2, p1

    #@3
    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    #@5
    add-long/2addr v2, v4

    #@6
    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getByte(J)B

    #@9
    move-result v0

    #@a
    return v0
.end method

.method final getChar(I)C
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 230
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@2
    int-to-long v2, p1

    #@3
    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    #@5
    add-long/2addr v2, v4

    #@6
    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getChar(J)C

    #@9
    move-result v0

    #@a
    return v0
.end method

.method final getDouble(I)D
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 338
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@2
    int-to-long v2, p1

    #@3
    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    #@5
    add-long/2addr v2, v4

    #@6
    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getDouble(J)D

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method final getFloat(I)F
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 311
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@2
    int-to-long v2, p1

    #@3
    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    #@5
    add-long/2addr v2, v4

    #@6
    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getFloat(J)F

    #@9
    move-result v0

    #@a
    return v0
.end method

.method final getInt(I)I
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 257
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@2
    int-to-long v2, p1

    #@3
    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    #@5
    add-long/2addr v2, v4

    #@6
    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getInt(J)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method final getLong(I)J
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 284
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@2
    int-to-long v2, p1

    #@3
    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    #@5
    add-long/2addr v2, v4

    #@6
    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getLong(J)J

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method getObject(I)Lsun/nio/ch/NativeObject;
    .locals 8
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 124
    const-wide/16 v0, 0x0

    #@2
    .line 125
    .local v0, "newAddress":J
    invoke-static {}, Lsun/nio/ch/NativeObject;->addressSize()I

    #@5
    move-result v2

    #@6
    sparse-switch v2, :sswitch_data_0

    #@9
    .line 133
    new-instance v2, Ljava/lang/InternalError;

    #@b
    const-string/jumbo v3, "Address size not supported"

    #@e
    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 127
    :sswitch_0
    sget-object v2, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@14
    int-to-long v4, p1

    #@15
    iget-wide v6, p0, Lsun/nio/ch/NativeObject;->address:J

    #@17
    add-long/2addr v4, v6

    #@18
    invoke-virtual {v2, v4, v5}, Lsun/misc/Unsafe;->getLong(J)J

    #@1b
    move-result-wide v0

    #@1c
    .line 136
    :goto_0
    new-instance v2, Lsun/nio/ch/NativeObject;

    #@1e
    invoke-direct {v2, v0, v1}, Lsun/nio/ch/NativeObject;-><init>(J)V

    #@21
    return-object v2

    #@22
    .line 130
    :sswitch_1
    sget-object v2, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@24
    int-to-long v4, p1

    #@25
    iget-wide v6, p0, Lsun/nio/ch/NativeObject;->address:J

    #@27
    add-long/2addr v4, v6

    #@28
    invoke-virtual {v2, v4, v5}, Lsun/misc/Unsafe;->getInt(J)I

    #@2b
    move-result v2

    #@2c
    and-int/lit8 v2, v2, -0x1

    #@2e
    int-to-long v0, v2

    #@2f
    .line 131
    goto :goto_0

    #@30
    .line 125
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method final getShort(I)S
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 203
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@2
    int-to-long v2, p1

    #@3
    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    #@5
    add-long/2addr v2, v4

    #@6
    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getShort(J)S

    #@9
    move-result v0

    #@a
    return v0
.end method

.method final putByte(IB)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "value"    # B

    #@0
    .prologue
    .line 190
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@2
    int-to-long v2, p1

    #@3
    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    #@5
    add-long/2addr v2, v4

    #@6
    invoke-virtual {v0, v2, v3, p2}, Lsun/misc/Unsafe;->putByte(JB)V

    #@9
    .line 189
    return-void
.end method

.method final putChar(IC)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "value"    # C

    #@0
    .prologue
    .line 244
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@2
    int-to-long v2, p1

    #@3
    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    #@5
    add-long/2addr v2, v4

    #@6
    invoke-virtual {v0, v2, v3, p2}, Lsun/misc/Unsafe;->putChar(JC)V

    #@9
    .line 243
    return-void
.end method

.method final putDouble(ID)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "value"    # D

    #@0
    .prologue
    .line 352
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@2
    int-to-long v2, p1

    #@3
    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    #@5
    add-long/2addr v2, v4

    #@6
    invoke-virtual {v0, v2, v3, p2, p3}, Lsun/misc/Unsafe;->putDouble(JD)V

    #@9
    .line 351
    return-void
.end method

.method final putFloat(IF)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 325
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@2
    int-to-long v2, p1

    #@3
    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    #@5
    add-long/2addr v2, v4

    #@6
    invoke-virtual {v0, v2, v3, p2}, Lsun/misc/Unsafe;->putFloat(JF)V

    #@9
    .line 324
    return-void
.end method

.method final putInt(II)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 271
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@2
    int-to-long v2, p1

    #@3
    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    #@5
    add-long/2addr v2, v4

    #@6
    invoke-virtual {v0, v2, v3, p2}, Lsun/misc/Unsafe;->putInt(JI)V

    #@9
    .line 270
    return-void
.end method

.method final putLong(IJ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 298
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@2
    int-to-long v2, p1

    #@3
    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    #@5
    add-long/2addr v2, v4

    #@6
    invoke-virtual {v0, v2, v3, p2, p3}, Lsun/misc/Unsafe;->putLong(JJ)V

    #@9
    .line 297
    return-void
.end method

.method putObject(ILsun/nio/ch/NativeObject;)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "ob"    # Lsun/nio/ch/NativeObject;

    #@0
    .prologue
    .line 151
    invoke-static {}, Lsun/nio/ch/NativeObject;->addressSize()I

    #@3
    move-result v0

    #@4
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 159
    new-instance v0, Ljava/lang/InternalError;

    #@9
    const-string/jumbo v1, "Address size not supported"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 153
    :sswitch_0
    iget-wide v0, p2, Lsun/nio/ch/NativeObject;->address:J

    #@12
    invoke-virtual {p0, p1, v0, v1}, Lsun/nio/ch/NativeObject;->putLong(IJ)V

    #@15
    .line 150
    :goto_0
    return-void

    #@16
    .line 156
    :sswitch_1
    iget-wide v0, p2, Lsun/nio/ch/NativeObject;->address:J

    #@18
    const-wide/16 v2, -0x1

    #@1a
    and-long/2addr v0, v2

    #@1b
    long-to-int v0, v0

    #@1c
    invoke-virtual {p0, p1, v0}, Lsun/nio/ch/NativeObject;->putInt(II)V

    #@1f
    goto :goto_0

    #@20
    .line 151
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method final putShort(IS)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "value"    # S

    #@0
    .prologue
    .line 217
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    #@2
    int-to-long v2, p1

    #@3
    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    #@5
    add-long/2addr v2, v4

    #@6
    invoke-virtual {v0, v2, v3, p2}, Lsun/misc/Unsafe;->putShort(JS)V

    #@9
    .line 216
    return-void
.end method

.method subObject(I)Lsun/nio/ch/NativeObject;
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 109
    new-instance v0, Lsun/nio/ch/NativeObject;

    #@2
    int-to-long v2, p1

    #@3
    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    #@5
    add-long/2addr v2, v4

    #@6
    invoke-direct {v0, v2, v3}, Lsun/nio/ch/NativeObject;-><init>(J)V

    #@9
    return-object v0
.end method
