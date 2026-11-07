.class public interface abstract Ljava/util/zip/Checksum;
.super Ljava/lang/Object;
.source "Checksum.java"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    sget-boolean v0, Ljava/util/zip/Checksum$1;->$assertionsDisabled:Z

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api getValue()J
.end method

.method public abstract whitelist test-api reset()V
.end method

.method public abstract whitelist test-api update(I)V
.end method

.method public whitelist test-api update(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 107
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 108
    .local v1, "limit":I
    sget-boolean v2, Ljava/util/zip/Checksum$1;->$assertionsDisabled:Z

    if-nez v2, :cond_15

    if-gt v0, v1, :cond_f

    goto :goto_15

    :cond_f
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 109
    :cond_15
    :goto_15
    sub-int v2, v1, v0

    .line 110
    .local v2, "rem":I
    if-gtz v2, :cond_1a

    .line 111
    return-void

    .line 113
    :cond_1a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 114
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v4, v0

    invoke-interface {p0, v3, v4, v2}, Ljava/util/zip/Checksum;->update([BII)V

    goto :goto_50

    .line 116
    :cond_2d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v4, 0x1000

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v3, v3, [B

    .line 117
    .local v3, "b":[B
    :goto_39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 118
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    array-length v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 119
    .local v4, "length":I
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 120
    invoke-interface {p0, v3, v5, v4}, Ljava/util/zip/Checksum;->update([BII)V

    .line 121
    .end local v4    # "length":I
    goto :goto_39

    .line 123
    .end local v3    # "b":[B
    :cond_50
    :goto_50
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    return-void
.end method

.method public whitelist test-api update([B)V
    .registers 4
    .param p1, "b"    # [B

    .line 58
    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Ljava/util/zip/Checksum;->update([BII)V

    .line 59
    return-void
.end method

.method public abstract whitelist test-api update([BII)V
.end method
