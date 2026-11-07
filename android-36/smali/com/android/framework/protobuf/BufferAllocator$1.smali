.class Lcom/android/framework/protobuf/BufferAllocator$1;
.super Lcom/android/framework/protobuf/BufferAllocator;
.source "BufferAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/BufferAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/android/framework/protobuf/BufferAllocator;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist allocateDirectBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 3
    .param p1, "capacity"    # I

    .line 51
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist allocateHeapBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 3
    .param p1, "capacity"    # I

    .line 46
    new-array v0, p1, [B

    invoke-static {v0}, Lcom/android/framework/protobuf/AllocatedBuffer;->wrap([B)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method
