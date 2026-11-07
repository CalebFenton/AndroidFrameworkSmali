.class Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer$1;
.super Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;
.source "AllocatedBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 158
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist array()[B
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist arrayOffset()I
    .registers 2

    .line 182
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public blacklist hasArray()Z
    .registers 2

    .line 172
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public blacklist hasNioBuffer()Z
    .registers 2

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist limit()I
    .registers 2

    .line 198
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public blacklist nioBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public blacklist position()I
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public blacklist position(I)Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer;
    .registers 3
    .param p1, "position"    # I

    .line 192
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 193
    return-object p0
.end method

.method public blacklist remaining()I
    .registers 2

    .line 203
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/AllocatedBuffer$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method
