.class public final Landroid/net/connectivity/com/google/protobuf/ByteString$Output;
.super Ljava/io/OutputStream;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Output"
.end annotation


# static fields
.field private static final blacklist EMPTY_BYTE_ARRAY:[B


# instance fields
.field private blacklist buffer:[B

.field private blacklist bufferPos:I

.field private final blacklist flushedBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist flushedBuffersTotalBytes:I

.field private final blacklist initialCapacity:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1066
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .line 1083
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 1084
    if-ltz p1, :cond_13

    .line 1087
    iput p1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->initialCapacity:I

    .line 1088
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    .line 1089
    new-array v0, p1, [B

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->buffer:[B

    .line 1090
    return-void

    .line 1085
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist copyArray([BI)[B
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "length"    # I

    .line 1135
    new-array v0, p2, [B

    .line 1136
    .local v0, "result":[B
    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1137
    return-object v0
.end method

.method private blacklist flushFullBuffer(I)V
    .registers 5
    .param p1, "minSize"    # I

    .line 1196
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v1, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v1, v2}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 1201
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->initialCapacity:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1202
    .local v0, "newSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->buffer:[B

    .line 1203
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I

    .line 1204
    return-void
.end method

.method private blacklist flushLastBuffer()V
    .registers 4

    .line 1211
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    .line 1212
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I

    if-lez v0, :cond_2e

    .line 1213
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I

    invoke-direct {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->copyArray([BI)[B

    move-result-object v0

    .line 1214
    .local v0, "bufferCopy":[B
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v2, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;

    invoke-direct {v2, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    .end local v0    # "bufferCopy":[B
    goto :goto_2e

    .line 1219
    :cond_1e
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v1, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v1, v2}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->buffer:[B

    .line 1227
    :cond_2e
    :goto_2e
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 1228
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I

    .line 1229
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist reset()V
    .registers 2

    monitor-enter p0

    .line 1179
    :try_start_1
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1180
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 1181
    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 1182
    monitor-exit p0

    return-void

    .line 1178
    .end local p0    # "this":Landroid/net/connectivity/com/google/protobuf/ByteString$Output;
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public declared-synchronized blacklist size()I
    .registers 3

    monitor-enter p0

    .line 1171
    :try_start_1
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 1171
    .end local p0    # "this":Landroid/net/connectivity/com/google/protobuf/ByteString$Output;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized blacklist toByteString()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2

    monitor-enter p0

    .line 1129
    :try_start_1
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->flushLastBuffer()V

    .line 1130
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 1128
    .end local p0    # "this":Landroid/net/connectivity/com/google/protobuf/ByteString$Output;
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1186
    nop

    .line 1188
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1186
    const-string v1, "<ByteString.Output@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api write(I)V
    .registers 5
    .param p1, "b"    # I

    monitor-enter p0

    .line 1094
    :try_start_1
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_c

    .line 1095
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->flushFullBuffer(I)V

    .line 1097
    .end local p0    # "this":Landroid/net/connectivity/com/google/protobuf/ByteString$Output;
    :cond_c
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 1098
    monitor-exit p0

    return-void

    .line 1093
    .end local p1    # "b":I
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public declared-synchronized whitelist test-api write([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    monitor-enter p0

    .line 1102
    :try_start_1
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->buffer:[B

    array-length v0, v0

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p3, v0, :cond_16

    .line 1104
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1105
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I

    goto :goto_30

    .line 1108
    .end local p0    # "this":Landroid/net/connectivity/com/google/protobuf/ByteString$Output;
    :cond_16
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->buffer:[B

    array-length v0, v0

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I

    sub-int/2addr v0, v1

    .line 1109
    .local v0, "copySize":I
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->buffer:[B

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1110
    add-int/2addr p2, v0

    .line 1111
    sub-int/2addr p3, v0

    .line 1114
    invoke-direct {p0, p3}, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->flushFullBuffer(I)V

    .line 1115
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1116
    iput p3, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 1118
    .end local v0    # "copySize":I
    :goto_30
    monitor-exit p0

    return-void

    .line 1101
    .end local p1    # "b":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public blacklist writeTo(Ljava/io/OutputStream;)V
    .registers 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1151
    monitor-enter p0

    .line 1154
    :try_start_1
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 1155
    .local v0, "cachedFlushBuffers":[Landroid/net/connectivity/com/google/protobuf/ByteString;
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->buffer:[B

    .line 1156
    .local v1, "cachedBuffer":[B
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->bufferPos:I

    .line 1157
    .local v2, "cachedBufferPos":I
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_2a

    .line 1158
    array-length v3, v0

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v3, :cond_22

    aget-object v5, v0, v4

    .line 1159
    .local v5, "byteString":Landroid/net/connectivity/com/google/protobuf/ByteString;
    invoke-virtual {v5, p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 1158
    .end local v5    # "byteString":Landroid/net/connectivity/com/google/protobuf/ByteString;
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 1162
    :cond_22
    invoke-direct {p0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/ByteString$Output;->copyArray([BI)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1163
    return-void

    .line 1157
    .end local v0    # "cachedFlushBuffers":[Landroid/net/connectivity/com/google/protobuf/ByteString;
    .end local v1    # "cachedBuffer":[B
    .end local v2    # "cachedBufferPos":I
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method
