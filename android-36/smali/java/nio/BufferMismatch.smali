.class final Ljava/nio/BufferMismatch;
.super Ljava/lang/Object;
.source "BufferMismatch.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist mismatch(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I
    .registers 8
    .param p0, "a"    # Ljava/nio/ByteBuffer;
    .param p1, "aOff"    # I
    .param p2, "b"    # Ljava/nio/ByteBuffer;
    .param p3, "bOff"    # I
    .param p4, "length"    # I

    .line 35
    const/4 v0, 0x0

    .line 50
    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_15

    .line 51
    add-int v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    add-int v2, p3, v0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eq v1, v2, :cond_12

    .line 52
    return v0

    .line 50
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    :cond_15
    const/4 v1, -0x1

    return v1
.end method

.method static blacklist mismatch(Ljava/nio/CharBuffer;ILjava/nio/CharBuffer;II)I
    .registers 8
    .param p0, "a"    # Ljava/nio/CharBuffer;
    .param p1, "aOff"    # I
    .param p2, "b"    # Ljava/nio/CharBuffer;
    .param p3, "bOff"    # I
    .param p4, "length"    # I

    .line 58
    const/4 v0, 0x0

    .line 77
    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_15

    .line 78
    add-int v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v1

    add-int v2, p3, v0

    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->get(I)C

    move-result v2

    if-eq v1, v2, :cond_12

    .line 79
    return v0

    .line 77
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    :cond_15
    const/4 v1, -0x1

    return v1
.end method

.method static blacklist mismatch(Ljava/nio/DoubleBuffer;ILjava/nio/DoubleBuffer;II)I
    .registers 11
    .param p0, "a"    # Ljava/nio/DoubleBuffer;
    .param p1, "aOff"    # I
    .param p2, "b"    # Ljava/nio/DoubleBuffer;
    .param p3, "bOff"    # I
    .param p4, "length"    # I

    .line 194
    const/4 v0, 0x0

    .line 225
    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_23

    .line 226
    add-int v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v1

    .line 227
    .local v1, "av":D
    add-int v3, p3, v0

    invoke-virtual {p2, v3}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v3

    .line 228
    .local v3, "bv":D
    cmpl-double v5, v1, v3

    if-eqz v5, :cond_20

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_20

    .line 229
    :cond_1f
    return v0

    .line 225
    .end local v1    # "av":D
    .end local v3    # "bv":D
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    :cond_23
    const/4 v1, -0x1

    return v1
.end method

.method static blacklist mismatch(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;II)I
    .registers 9
    .param p0, "a"    # Ljava/nio/FloatBuffer;
    .param p1, "aOff"    # I
    .param p2, "b"    # Ljava/nio/FloatBuffer;
    .param p3, "bOff"    # I
    .param p4, "length"    # I

    .line 131
    const/4 v0, 0x0

    .line 162
    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_23

    .line 163
    add-int v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    .line 164
    .local v1, "av":F
    add-int v2, p3, v0

    invoke-virtual {p2, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    .line 165
    .local v2, "bv":F
    cmpl-float v3, v1, v2

    if-eqz v3, :cond_20

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20

    .line 166
    :cond_1f
    return v0

    .line 162
    .end local v1    # "av":F
    .end local v2    # "bv":F
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    :cond_23
    const/4 v1, -0x1

    return v1
.end method

.method static blacklist mismatch(Ljava/nio/IntBuffer;ILjava/nio/IntBuffer;II)I
    .registers 8
    .param p0, "a"    # Ljava/nio/IntBuffer;
    .param p1, "aOff"    # I
    .param p2, "b"    # Ljava/nio/IntBuffer;
    .param p3, "bOff"    # I
    .param p4, "length"    # I

    .line 108
    const/4 v0, 0x0

    .line 123
    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_15

    .line 124
    add-int v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    add-int v2, p3, v0

    invoke-virtual {p2, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_12

    .line 125
    return v0

    .line 123
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_15
    const/4 v1, -0x1

    return v1
.end method

.method static blacklist mismatch(Ljava/nio/LongBuffer;ILjava/nio/LongBuffer;II)I
    .registers 10
    .param p0, "a"    # Ljava/nio/LongBuffer;
    .param p1, "aOff"    # I
    .param p2, "b"    # Ljava/nio/LongBuffer;
    .param p3, "bOff"    # I
    .param p4, "length"    # I

    .line 172
    const/4 v0, 0x0

    .line 186
    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_17

    .line 187
    add-int v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v1

    add-int v3, p3, v0

    invoke-virtual {p2, v3}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_14

    .line 188
    return v0

    .line 186
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    :cond_17
    const/4 v1, -0x1

    return v1
.end method

.method static blacklist mismatch(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;II)I
    .registers 8
    .param p0, "a"    # Ljava/nio/ShortBuffer;
    .param p1, "aOff"    # I
    .param p2, "b"    # Ljava/nio/ShortBuffer;
    .param p3, "bOff"    # I
    .param p4, "length"    # I

    .line 85
    const/4 v0, 0x0

    .line 100
    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_15

    .line 101
    add-int v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v1

    add-int v2, p3, v0

    invoke-virtual {p2, v2}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v2

    if-eq v1, v2, :cond_12

    .line 102
    return v0

    .line 100
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :cond_15
    const/4 v1, -0x1

    return v1
.end method
