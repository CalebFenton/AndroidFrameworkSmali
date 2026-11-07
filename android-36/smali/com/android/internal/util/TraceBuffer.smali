.class public Lcom/android/internal/util/TraceBuffer;
.super Ljava/lang/Object;
.source "TraceBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;,
        Lcom/android/internal/util/TraceBuffer$ProtoProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "S:TP;T:TP;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field

.field private blacklist mBufferCapacity:I

.field private blacklist mBufferUsedSize:I

.field private final blacklist mProtoDequeuedCallback:Ljava/util/function/Consumer;

.field private final blacklist mProtoProvider:Lcom/android/internal/util/TraceBuffer$ProtoProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/TraceBuffer$ProtoProvider<",
            "TP;TS;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$ttmwZcF_e5Ivr22sB5KWUXhSNG8(Lcom/android/internal/util/TraceBuffer;[BLjava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/TraceBuffer;->lambda$contains$0([BLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "bufferCapacity"    # I

    .line 105
    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    new-instance v0, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;-><init>(Lcom/android/internal/util/TraceBuffer-IA;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/TraceBuffer;-><init>(ILcom/android/internal/util/TraceBuffer$ProtoProvider;Ljava/util/function/Consumer;)V

    .line 106
    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/util/TraceBuffer$ProtoProvider;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "bufferCapacity"    # I
    .param p2, "protoProvider"    # Lcom/android/internal/util/TraceBuffer$ProtoProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/util/TraceBuffer$ProtoProvider;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    .local p3, "protoDequeuedCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/TraceBuffer;->mBuffer:Ljava/util/Queue;

    .line 114
    iput p1, p0, Lcom/android/internal/util/TraceBuffer;->mBufferCapacity:I

    .line 115
    iput-object p2, p0, Lcom/android/internal/util/TraceBuffer;->mProtoProvider:Lcom/android/internal/util/TraceBuffer$ProtoProvider;

    .line 116
    iput-object p3, p0, Lcom/android/internal/util/TraceBuffer;->mProtoDequeuedCallback:Ljava/util/function/Consumer;

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 118
    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/function/Consumer;)V
    .registers 5
    .param p1, "bufferCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 109
    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    .local p2, "protoDequeuedCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    new-instance v0, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;-><init>(Lcom/android/internal/util/TraceBuffer-IA;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/util/TraceBuffer;-><init>(ILcom/android/internal/util/TraceBuffer$ProtoProvider;Ljava/util/function/Consumer;)V

    .line 110
    return-void
.end method

.method private blacklist discardOldest(I)V
    .registers 7
    .param p1, "protoLength"    # I

    .line 179
    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->getAvailableSpace()I

    move-result v0

    int-to-long v0, v0

    .line 181
    .local v0, "availableSpace":J
    :goto_5
    int-to-long v2, p1

    cmp-long v2, v0, v2

    if-gez v2, :cond_34

    .line 183
    iget-object v2, p0, Lcom/android/internal/util/TraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 184
    .local v2, "item":Ljava/lang/Object;, "TP;"
    if-eqz v2, :cond_2c

    .line 187
    iget v3, p0, Lcom/android/internal/util/TraceBuffer;->mBufferUsedSize:I

    iget-object v4, p0, Lcom/android/internal/util/TraceBuffer;->mProtoProvider:Lcom/android/internal/util/TraceBuffer$ProtoProvider;

    invoke-interface {v4, v2}, Lcom/android/internal/util/TraceBuffer$ProtoProvider;->getItemSize(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/util/TraceBuffer;->mBufferUsedSize:I

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->getAvailableSpace()I

    move-result v3

    int-to-long v0, v3

    .line 190
    iget-object v3, p0, Lcom/android/internal/util/TraceBuffer;->mProtoDequeuedCallback:Ljava/util/function/Consumer;

    if-eqz v3, :cond_2b

    .line 191
    iget-object v3, p0, Lcom/android/internal/util/TraceBuffer;->mProtoDequeuedCallback:Ljava/util/function/Consumer;

    invoke-interface {v3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 193
    .end local v2    # "item":Ljava/lang/Object;, "TP;"
    :cond_2b
    goto :goto_5

    .line 185
    .restart local v2    # "item":Ljava/lang/Object;, "TP;"
    :cond_2c
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "No element to discard from buffer"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 194
    .end local v2    # "item":Ljava/lang/Object;, "TP;"
    :cond_34
    return-void
.end method

.method private synthetic blacklist lambda$contains$0([BLjava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # [B
    .param p2, "p"    # Ljava/lang/Object;

    .line 156
    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/TraceBuffer;->mProtoProvider:Lcom/android/internal/util/TraceBuffer$ProtoProvider;

    invoke-interface {v0, p2}, Lcom/android/internal/util/TraceBuffer$ProtoProvider;->getBytes(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized blacklist add(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    .local p1, "proto":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 143
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/TraceBuffer;->mProtoProvider:Lcom/android/internal/util/TraceBuffer$ProtoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/util/TraceBuffer$ProtoProvider;->getItemSize(Ljava/lang/Object;)I

    move-result v0

    .line 144
    .local v0, "protoLength":I
    iget v1, p0, Lcom/android/internal/util/TraceBuffer;->mBufferCapacity:I

    if-gt v0, v1, :cond_1a

    .line 148
    invoke-direct {p0, v0}, Lcom/android/internal/util/TraceBuffer;->discardOldest(I)V

    .line 149
    iget-object v1, p0, Lcom/android/internal/util/TraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 150
    iget v1, p0, Lcom/android/internal/util/TraceBuffer;->mBufferUsedSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/util/TraceBuffer;->mBufferUsedSize:I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_3f

    .line 151
    monitor-exit p0

    return-void

    .line 145
    .end local p0    # "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    :cond_1a
    :try_start_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trace object too large for the buffer. Buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/util/TraceBuffer;->mBufferCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Object size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    .end local v0    # "protoLength":I
    .end local p1    # "proto":Ljava/lang/Object;, "TT;"
    :catchall_3f
    move-exception p1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_1a .. :try_end_41} :catchall_3f

    throw p1
.end method

.method public declared-synchronized blacklist contains([B)Z
    .registers 4
    .param p1, "other"    # [B

    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    monitor-enter p0

    .line 155
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/TraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/TraceBuffer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/util/TraceBuffer$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/TraceBuffer;[B)V

    .line 156
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 155
    monitor-exit p0

    return v0

    .line 154
    .end local p0    # "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    .end local p1    # "other":[B
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public declared-synchronized blacklist getAvailableSpace()I
    .registers 3

    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    monitor-enter p0

    .line 121
    :try_start_1
    iget v0, p0, Lcom/android/internal/util/TraceBuffer;->mBufferCapacity:I

    iget v1, p0, Lcom/android/internal/util/TraceBuffer;->mBufferUsedSize:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 121
    .end local p0    # "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized blacklist getBufferSize()I
    .registers 2

    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    monitor-enter p0

    .line 211
    :try_start_1
    iget v0, p0, Lcom/android/internal/util/TraceBuffer;->mBufferUsedSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 211
    .end local p0    # "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized blacklist getStatus()Ljava/lang/String;
    .registers 3

    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    monitor-enter p0

    .line 218
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/util/TraceBuffer;->mBufferCapacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes\nBuffer usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/util/TraceBuffer;->mBufferUsedSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes\nElements in the buffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/TraceBuffer;->mBuffer:Ljava/util/Queue;

    .line 220
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 218
    monitor-exit p0

    return-object v0

    .line 217
    .end local p0    # "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public declared-synchronized blacklist resetBuffer()V
    .registers 4

    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    monitor-enter p0

    .line 200
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/TraceBuffer;->mProtoDequeuedCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_1b

    .line 201
    iget-object v0, p0, Lcom/android/internal/util/TraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 202
    .local v1, "item":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/android/internal/util/TraceBuffer;->mProtoDequeuedCallback:Ljava/util/function/Consumer;

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 203
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_b

    .line 205
    .end local p0    # "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/util/TraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/TraceBuffer;->mBufferUsedSize:I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 207
    monitor-exit p0

    return-void

    .line 199
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public declared-synchronized blacklist setCapacity(I)V
    .registers 2
    .param p1, "capacity"    # I

    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    monitor-enter p0

    .line 132
    :try_start_1
    iput p1, p0, Lcom/android/internal/util/TraceBuffer;->mBufferCapacity:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 133
    monitor-exit p0

    return-void

    .line 131
    .end local p0    # "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    .end local p1    # "capacity":I
    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public declared-synchronized blacklist size()I
    .registers 2

    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    monitor-enter p0

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/TraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 128
    .end local p0    # "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized blacklist writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    .registers 6
    .param p1, "traceFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    .local p2, "encapsulatingProto":Ljava/lang/Object;, "TS;"
    monitor-enter p0

    .line 164
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 165
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_27

    .line 166
    .local v0, "os":Ljava/io/OutputStream;
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 167
    iget-object v1, p0, Lcom/android/internal/util/TraceBuffer;->mProtoProvider:Lcom/android/internal/util/TraceBuffer$ProtoProvider;

    iget-object v2, p0, Lcom/android/internal/util/TraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v1, p2, v2, v0}, Lcom/android/internal/util/TraceBuffer$ProtoProvider;->write(Ljava/lang/Object;Ljava/util/Queue;Ljava/io/OutputStream;)V

    .line 168
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1d

    .line 169
    :try_start_18
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_27

    .line 170
    .end local v0    # "os":Ljava/io/OutputStream;
    monitor-exit p0

    return-void

    .line 165
    .end local p0    # "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    .restart local v0    # "os":Ljava/io/OutputStream;
    :catchall_1d
    move-exception v1

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v2

    :try_start_23
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_26
    throw v1

    .line 163
    .end local v0    # "os":Ljava/io/OutputStream;
    .end local p1    # "traceFile":Ljava/io/File;
    .end local p2    # "encapsulatingProto":Ljava/lang/Object;, "TS;"
    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    throw p1
.end method
