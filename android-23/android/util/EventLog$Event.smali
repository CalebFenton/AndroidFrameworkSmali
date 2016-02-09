.class public final Landroid/util/EventLog$Event;
.super Ljava/lang/Object;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/EventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field private static final DATA_OFFSET:I = 0x4

.field private static final FLOAT_TYPE:B = 0x4t

.field private static final HEADER_SIZE_OFFSET:I = 0x2

.field private static final INT_TYPE:B = 0x0t

.field private static final LENGTH_OFFSET:I = 0x0

.field private static final LIST_TYPE:B = 0x3t

.field private static final LONG_TYPE:B = 0x1t

.field private static final NANOSECONDS_OFFSET:I = 0x10

.field private static final PROCESS_OFFSET:I = 0x4

.field private static final SECONDS_OFFSET:I = 0xc

.field private static final STRING_TYPE:B = 0x2t

.field private static final THREAD_OFFSET:I = 0x8

.field private static final V1_PAYLOAD_START:I = 0x14


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@9
    .line 82
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@b
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@12
    .line 80
    return-void
.end method

.method private decodeObject()Ljava/lang/Object;
    .locals 9

    #@0
    .prologue
    .line 131
    iget-object v6, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    #@5
    move-result v5

    #@6
    .line 132
    .local v5, "type":B
    packed-switch v5, :pswitch_data_0

    #@9
    .line 161
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v7, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v8, "Unknown entry type: "

    #@13
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v7

    #@17
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v7

    #@1b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v6

    #@23
    .line 134
    :pswitch_0
    iget-object v6, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@25
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    #@28
    move-result v6

    #@29
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v6

    #@2d
    return-object v6

    #@2e
    .line 137
    :pswitch_1
    iget-object v6, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@30
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    #@33
    move-result-wide v6

    #@34
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@37
    move-result-object v6

    #@38
    return-object v6

    #@39
    .line 140
    :pswitch_2
    iget-object v6, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@3b
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getFloat()F

    #@3e
    move-result v6

    #@3f
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@42
    move-result-object v6

    #@43
    return-object v6

    #@44
    .line 144
    :pswitch_3
    :try_start_0
    iget-object v6, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@46
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    #@49
    move-result v3

    #@4a
    .line 145
    .local v3, "length":I
    iget-object v6, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@4c
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    #@4f
    move-result v4

    #@50
    .line 146
    .local v4, "start":I
    iget-object v6, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@52
    add-int v7, v4, v3

    #@54
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@57
    .line 147
    new-instance v6, Ljava/lang/String;

    #@59
    iget-object v7, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@5b
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    #@5e
    move-result-object v7

    #@5f
    const-string/jumbo v8, "UTF-8"

    #@62
    invoke-direct {v6, v7, v4, v3, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@65
    return-object v6

    #@66
    .line 148
    .end local v3    # "length":I
    .end local v4    # "start":I
    :catch_0
    move-exception v1

    #@67
    .line 149
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v6, "EventLog"

    #@6a
    const-string/jumbo v7, "UTF-8 is not supported"

    #@6d
    invoke-static {v6, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@70
    .line 150
    const/4 v6, 0x0

    #@71
    return-object v6

    #@72
    .line 154
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_4
    iget-object v6, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@74
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    #@77
    move-result v3

    #@78
    .line 155
    .restart local v3    # "length":I
    if-gez v3, :cond_0

    #@7a
    add-int/lit16 v3, v3, 0x100

    #@7c
    .line 156
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    #@7e
    .line 157
    .local v0, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    #@7f
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@81
    invoke-direct {p0}, Landroid/util/EventLog$Event;->decodeObject()Ljava/lang/Object;

    #@84
    move-result-object v6

    #@85
    aput-object v6, v0, v2

    #@87
    add-int/lit8 v2, v2, 0x1

    #@89
    goto :goto_0

    #@8a
    .line 158
    :cond_1
    return-object v0

    #@8b
    .line 132
    nop

    #@8c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized getData()Ljava/lang/Object;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 113
    :try_start_0
    iget-object v3, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@4
    const/4 v4, 0x2

    #@5
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@8
    move-result v2

    #@9
    .line 114
    .local v2, "offset":I
    if-nez v2, :cond_0

    #@b
    .line 115
    const/16 v2, 0x14

    #@d
    .line 117
    :cond_0
    iget-object v3, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@f
    iget-object v4, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@11
    const/4 v5, 0x0

    #@12
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@15
    move-result v4

    #@16
    add-int/2addr v4, v2

    #@17
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@1a
    .line 118
    iget-object v3, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@1c
    add-int/lit8 v4, v2, 0x4

    #@1e
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@21
    .line 119
    invoke-direct {p0}, Landroid/util/EventLog$Event;->decodeObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result-object v3

    #@25
    monitor-exit p0

    #@26
    return-object v3

    #@27
    .line 123
    .end local v2    # "offset":I
    :catch_0
    move-exception v1

    #@28
    .line 124
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    :try_start_1
    const-string/jumbo v3, "EventLog"

    #@2b
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v5, "Truncated entry payload: tag="

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {p0}, Landroid/util/EventLog$Event;->getTag()I

    #@3a
    move-result v5

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    monitor-exit p0

    #@47
    .line 125
    return-object v6

    #@48
    .line 120
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :catch_1
    move-exception v0

    #@49
    .line 121
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string/jumbo v3, "EventLog"

    #@4c
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v5, "Illegal entry payload: tag="

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {p0}, Landroid/util/EventLog$Event;->getTag()I

    #@5b
    move-result v5

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@67
    monitor-exit p0

    #@68
    .line 122
    return-object v6

    #@69
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v3

    #@6a
    monitor-exit p0

    #@6b
    throw v3
.end method

.method public getProcessId()I
    .locals 2

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getTag()I
    .locals 3

    #@0
    .prologue
    .line 103
    iget-object v1, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@2
    const/4 v2, 0x2

    #@3
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@6
    move-result v0

    #@7
    .line 104
    .local v0, "offset":I
    if-nez v0, :cond_0

    #@9
    .line 105
    const/16 v0, 0x14

    #@b
    .line 107
    :cond_0
    iget-object v1, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@d
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@10
    move-result v1

    #@11
    return v1
.end method

.method public getThreadId()I
    .locals 2

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@2
    const/16 v1, 0x8

    #@4
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getTimeNanos()J
    .locals 4

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@2
    const/16 v1, 0xc

    #@4
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@7
    move-result v0

    #@8
    int-to-long v0, v0

    #@9
    const-wide/32 v2, 0x3b9aca00

    #@c
    mul-long/2addr v0, v2

    #@d
    .line 98
    iget-object v2, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    #@f
    const/16 v3, 0x10

    #@11
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@14
    move-result v2

    #@15
    int-to-long v2, v2

    #@16
    .line 97
    add-long/2addr v0, v2

    #@17
    return-wide v0
.end method
