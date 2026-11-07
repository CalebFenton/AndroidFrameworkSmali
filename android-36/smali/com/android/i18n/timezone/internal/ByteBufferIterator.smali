.class public Lcom/android/i18n/timezone/internal/ByteBufferIterator;
.super Lcom/android/i18n/timezone/internal/BufferIterator;
.source "ByteBufferIterator.java"


# instance fields
.field private final blacklist buffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 30
    invoke-direct {p0}, Lcom/android/i18n/timezone/internal/BufferIterator;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/i18n/timezone/internal/ByteBufferIterator;->buffer:Ljava/nio/ByteBuffer;

    .line 32
    return-void
.end method


# virtual methods
.method public blacklist pos()I
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/i18n/timezone/internal/ByteBufferIterator;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public blacklist readByte()B
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/i18n/timezone/internal/ByteBufferIterator;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public blacklist readByteArray([BII)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "arrayOffset"    # I
    .param p3, "byteCount"    # I

    .line 51
    iget-object v0, p0, Lcom/android/i18n/timezone/internal/ByteBufferIterator;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 52
    return-void
.end method

.method public blacklist readInt()I
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/android/i18n/timezone/internal/ByteBufferIterator;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    .line 64
    .local v0, "value":I
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/i18n/timezone/internal/ByteBufferIterator;->skip(I)V

    .line 65
    return v0
.end method

.method public blacklist readIntArray([III)V
    .registers 5
    .param p1, "ints"    # [I
    .param p2, "arrayOffset"    # I
    .param p3, "intCount"    # I

    .line 70
    iget-object v0, p0, Lcom/android/i18n/timezone/internal/ByteBufferIterator;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    .line 73
    mul-int/lit8 v0, p3, 0x4

    invoke-virtual {p0, v0}, Lcom/android/i18n/timezone/internal/ByteBufferIterator;->skip(I)V

    .line 74
    return-void
.end method

.method public blacklist readLongArray([JII)V
    .registers 5
    .param p1, "longs"    # [J
    .param p2, "arrayOffset"    # I
    .param p3, "longCount"    # I

    .line 78
    iget-object v0, p0, Lcom/android/i18n/timezone/internal/ByteBufferIterator;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/LongBuffer;->get([JII)Ljava/nio/LongBuffer;

    .line 81
    mul-int/lit8 v0, p3, 0x8

    invoke-virtual {p0, v0}, Lcom/android/i18n/timezone/internal/ByteBufferIterator;->skip(I)V

    .line 82
    return-void
.end method

.method public blacklist readShort()S
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/i18n/timezone/internal/ByteBufferIterator;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->get()S

    move-result v0

    .line 89
    .local v0, "value":S
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/i18n/timezone/internal/ByteBufferIterator;->skip(I)V

    .line 90
    return v0
.end method

.method public blacklist seek(I)V
    .registers 3
    .param p1, "offset"    # I

    .line 36
    iget-object v0, p0, Lcom/android/i18n/timezone/internal/ByteBufferIterator;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 37
    return-void
.end method

.method public blacklist skip(I)V
    .registers 4
    .param p1, "byteCount"    # I

    .line 41
    iget-object v0, p0, Lcom/android/i18n/timezone/internal/ByteBufferIterator;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/i18n/timezone/internal/ByteBufferIterator;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 42
    return-void
.end method
