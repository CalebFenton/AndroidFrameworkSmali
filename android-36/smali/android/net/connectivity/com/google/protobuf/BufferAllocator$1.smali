.class Landroid/net/connectivity/com/google/protobuf/BufferAllocator$1;
.super Landroid/net/connectivity/com/google/protobuf/BufferAllocator;
.source "BufferAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/BufferAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/BufferAllocator;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist allocateDirectBuffer(I)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;
    .registers 3
    .param p1, "capacity"    # I

    .line 51
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist allocateHeapBuffer(I)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;
    .registers 3
    .param p1, "capacity"    # I

    .line 46
    new-array v0, p1, [B

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;->wrap([B)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method
