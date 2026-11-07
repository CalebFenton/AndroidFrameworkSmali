.class final Ljava/nio/DirectByteBuffer$MemoryRef;
.super Ljava/lang/Object;
.source "DirectByteBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/DirectByteBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MemoryRef"
.end annotation


# instance fields
.field greylist-max-o allocatedAddress:J

.field greylist-max-o buffer:[B

.field greylist-max-o isAccessible:Z

.field greylist-max-o isFreed:Z

.field final greylist-max-o offset:I

.field final greylist-max-o originalBufferObject:Ljava/lang/Object;


# direct methods
.method constructor greylist-max-o <init>(I)V
    .registers 7
    .param p1, "capacity"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 73
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    add-int/lit8 v2, p1, 0x7

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    .line 74
    iget-object v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v1

    iput-wide v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    .line 76
    iget-wide v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    const-wide/16 v3, 0x7

    add-long/2addr v1, v3

    const-wide/16 v3, -0x8

    and-long/2addr v1, v3

    iget-wide v3, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->originalBufferObject:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method constructor greylist-max-o <init>(JLjava/lang/Object;)V
    .registers 5
    .param p1, "allocatedAddress"    # J
    .param p3, "originalBufferObject"    # Ljava/lang/Object;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    .line 84
    iput-wide p1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    .line 86
    iput-object p3, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->originalBufferObject:Ljava/lang/Object;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    .line 88
    return-void
.end method


# virtual methods
.method greylist-max-o free()V
    .registers 3

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    .line 95
    return-void
.end method
