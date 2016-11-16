.class Ljava/nio/DirectByteBuffer$MemoryRef;
.super Ljava/lang/Object;
.source "DirectByteBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/DirectByteBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemoryRef"
.end annotation


# instance fields
.field allocatedAddress:J

.field buffer:[B

.field isAccessible:Z

.field final offset:I


# direct methods
.method constructor <init>(I)V
    .locals 6
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@6
    move-result-object v0

    #@7
    .line 58
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@9
    add-int/lit8 v2, p1, 0x7

    #@b
    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, [B

    #@11
    iput-object v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    #@13
    .line 59
    iget-object v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    #@15
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    #@18
    move-result-wide v2

    #@19
    iput-wide v2, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    #@1b
    .line 61
    iget-wide v2, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    #@1d
    const-wide/16 v4, 0x7

    #@1f
    add-long/2addr v2, v4

    #@20
    const-wide/16 v4, -0x8

    #@22
    and-long/2addr v2, v4

    #@23
    iget-wide v4, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    #@25
    sub-long/2addr v2, v4

    #@26
    long-to-int v1, v2

    #@27
    iput v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    #@29
    .line 62
    const/4 v1, 0x1

    #@2a
    iput-boolean v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@2c
    .line 56
    return-void
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "allocatedAddress"    # J

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    #@6
    .line 67
    iput-wide p1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    #@8
    .line 68
    const/4 v0, 0x0

    #@9
    iput v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    #@b
    .line 69
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@e
    .line 65
    return-void
.end method


# virtual methods
.method free()V
    .locals 2

    #@0
    .prologue
    .line 73
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    #@3
    .line 74
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    #@7
    .line 75
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    #@a
    .line 72
    return-void
.end method
