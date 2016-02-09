.class final Ljava/nio/IoVec;
.super Ljava/lang/Object;
.source "IoVec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/IoVec$Direction;
    }
.end annotation


# instance fields
.field private final bufferCount:I

.field private final byteBuffers:[Ljava/nio/ByteBuffer;

.field private final byteCounts:[I

.field private final direction:Ljava/nio/IoVec$Direction;

.field private final ioBuffers:[Ljava/lang/Object;

.field private final offset:I

.field private final offsets:[I


# direct methods
.method constructor <init>([Ljava/nio/ByteBuffer;IILjava/nio/IoVec$Direction;)V
    .locals 1
    .param p1, "byteBuffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "bufferCount"    # I
    .param p4, "direction"    # Ljava/nio/IoVec$Direction;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput-object p1, p0, Ljava/nio/IoVec;->byteBuffers:[Ljava/nio/ByteBuffer;

    #@5
    .line 43
    iput p2, p0, Ljava/nio/IoVec;->offset:I

    #@7
    .line 44
    iput p3, p0, Ljava/nio/IoVec;->bufferCount:I

    #@9
    .line 45
    iput-object p4, p0, Ljava/nio/IoVec;->direction:Ljava/nio/IoVec$Direction;

    #@b
    .line 46
    new-array v0, p3, [Ljava/lang/Object;

    #@d
    iput-object v0, p0, Ljava/nio/IoVec;->ioBuffers:[Ljava/lang/Object;

    #@f
    .line 47
    new-array v0, p3, [I

    #@11
    iput-object v0, p0, Ljava/nio/IoVec;->offsets:[I

    #@13
    .line 48
    new-array v0, p3, [I

    #@15
    iput-object v0, p0, Ljava/nio/IoVec;->byteCounts:[I

    #@17
    .line 41
    return-void
.end method


# virtual methods
.method didTransfer(I)V
    .locals 5
    .param p1, "byteCount"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 89
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    if-lez p1, :cond_2

    #@4
    iget v2, p0, Ljava/nio/IoVec;->bufferCount:I

    #@6
    if-ge v1, v2, :cond_2

    #@8
    .line 90
    iget-object v2, p0, Ljava/nio/IoVec;->byteBuffers:[Ljava/nio/ByteBuffer;

    #@a
    iget v4, p0, Ljava/nio/IoVec;->offset:I

    #@c
    add-int/2addr v4, v1

    #@d
    aget-object v0, v2, v4

    #@f
    .line 91
    .local v0, "b":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Ljava/nio/IoVec;->byteCounts:[I

    #@11
    aget v2, v2, v1

    #@13
    if-ge v2, p1, :cond_0

    #@15
    .line 92
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    #@18
    move-result v2

    #@19
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@1c
    .line 93
    iget-object v2, p0, Ljava/nio/IoVec;->byteCounts:[I

    #@1e
    aget v2, v2, v1

    #@20
    sub-int/2addr p1, v2

    #@21
    .line 89
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 95
    :cond_0
    iget-object v2, p0, Ljava/nio/IoVec;->direction:Ljava/nio/IoVec$Direction;

    #@26
    sget-object v4, Ljava/nio/IoVec$Direction;->WRITEV:Ljava/nio/IoVec$Direction;

    #@28
    if-ne v2, v4, :cond_1

    #@2a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    #@2d
    move-result v2

    #@2e
    :goto_2
    add-int/2addr v2, p1

    #@2f
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@32
    .line 96
    const/4 p1, 0x0

    #@33
    goto :goto_1

    #@34
    :cond_1
    move v2, v3

    #@35
    .line 95
    goto :goto_2

    #@36
    .line 88
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    :cond_2
    return-void
.end method

.method doTransfer(Ljava/io/FileDescriptor;)I
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    :try_start_0
    iget-object v2, p0, Ljava/nio/IoVec;->direction:Ljava/nio/IoVec$Direction;

    #@2
    sget-object v3, Ljava/nio/IoVec$Direction;->READV:Ljava/nio/IoVec$Direction;

    #@4
    if-ne v2, v3, :cond_1

    #@6
    .line 75
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@8
    iget-object v3, p0, Ljava/nio/IoVec;->ioBuffers:[Ljava/lang/Object;

    #@a
    iget-object v4, p0, Ljava/nio/IoVec;->offsets:[I

    #@c
    iget-object v5, p0, Ljava/nio/IoVec;->byteCounts:[I

    #@e
    invoke-interface {v2, p1, v3, v4, v5}, Llibcore/io/Os;->readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    #@11
    move-result v1

    #@12
    .line 76
    .local v1, "result":I
    if-nez v1, :cond_0

    #@14
    .line 77
    const/4 v1, -0x1

    #@15
    .line 79
    :cond_0
    return v1

    #@16
    .line 81
    .end local v1    # "result":I
    :cond_1
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@18
    iget-object v3, p0, Ljava/nio/IoVec;->ioBuffers:[Ljava/lang/Object;

    #@1a
    iget-object v4, p0, Ljava/nio/IoVec;->offsets:[I

    #@1c
    iget-object v5, p0, Ljava/nio/IoVec;->byteCounts:[I

    #@1e
    invoke-interface {v2, p1, v3, v4, v5}, Llibcore/io/Os;->writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result v2

    #@22
    return v2

    #@23
    .line 83
    :catch_0
    move-exception v0

    #@24
    .line 84
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@27
    move-result-object v2

    #@28
    throw v2
.end method

.method init()I
    .locals 7

    #@0
    .prologue
    .line 52
    const/4 v3, 0x0

    #@1
    .line 53
    .local v3, "totalRemaining":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget v4, p0, Ljava/nio/IoVec;->bufferCount:I

    #@4
    if-ge v1, v4, :cond_2

    #@6
    .line 54
    iget-object v4, p0, Ljava/nio/IoVec;->byteBuffers:[Ljava/nio/ByteBuffer;

    #@8
    iget v5, p0, Ljava/nio/IoVec;->offset:I

    #@a
    add-int/2addr v5, v1

    #@b
    aget-object v0, v4, v5

    #@d
    .line 55
    .local v0, "b":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Ljava/nio/IoVec;->direction:Ljava/nio/IoVec$Direction;

    #@f
    sget-object v5, Ljava/nio/IoVec$Direction;->READV:Ljava/nio/IoVec$Direction;

    #@11
    if-ne v4, v5, :cond_0

    #@13
    .line 56
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->checkWritable()V

    #@16
    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    #@19
    move-result v2

    #@1a
    .line 59
    .local v2, "remaining":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_1

    #@20
    .line 60
    iget-object v4, p0, Ljava/nio/IoVec;->ioBuffers:[Ljava/lang/Object;

    #@22
    aput-object v0, v4, v1

    #@24
    .line 61
    iget-object v4, p0, Ljava/nio/IoVec;->offsets:[I

    #@26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    #@29
    move-result v5

    #@2a
    aput v5, v4, v1

    #@2c
    .line 66
    :goto_1
    iget-object v4, p0, Ljava/nio/IoVec;->byteCounts:[I

    #@2e
    aput v2, v4, v1

    #@30
    .line 67
    add-int/2addr v3, v2

    #@31
    .line 53
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_0

    #@34
    .line 63
    :cond_1
    iget-object v4, p0, Ljava/nio/IoVec;->ioBuffers:[Ljava/lang/Object;

    #@36
    invoke-static {v0}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    #@39
    move-result-object v5

    #@3a
    aput-object v5, v4, v1

    #@3c
    .line 64
    iget-object v4, p0, Ljava/nio/IoVec;->offsets:[I

    #@3e
    invoke-static {v0}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    #@41
    move-result v5

    #@42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    #@45
    move-result v6

    #@46
    add-int/2addr v5, v6

    #@47
    aput v5, v4, v1

    #@49
    goto :goto_1

    #@4a
    .line 69
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .end local v2    # "remaining":I
    :cond_2
    return v3
.end method
