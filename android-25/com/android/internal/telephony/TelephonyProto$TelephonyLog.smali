.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyLog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;


# instance fields
.field private bitField0_:I

.field public callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

.field public endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

.field public events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

.field private eventsDropped_:Z

.field public histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

.field public smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

.field public startTime:Lcom/android/internal/telephony/TelephonyProto$Time;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 159
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    #@6
    .line 158
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 2

    #@0
    .prologue
    .line 106
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 107
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 109
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 110
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 114
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    #@13
    return-object v0

    #@14
    .line 107
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 403
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 397
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 163
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    #@4
    .line 164
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@a
    .line 165
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@10
    .line 166
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@16
    .line 167
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@1c
    .line 168
    iput-boolean v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    #@1e
    .line 169
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@20
    .line 170
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@22
    .line 171
    iput-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@24
    .line 172
    const/4 v0, -0x1

    #@25
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->cachedSize:I

    #@27
    .line 173
    return-object p0
.end method

.method public clearEventsDropped()Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 1

    #@0
    .prologue
    .line 145
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    #@3
    .line 146
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x2

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    #@9
    .line 147
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 8

    #@0
    .prologue
    .line 225
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@3
    move-result v5

    #@4
    .line 226
    .local v5, "size":I
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@6
    if-eqz v6, :cond_1

    #@8
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@a
    array-length v6, v6

    #@b
    if-lez v6, :cond_1

    #@d
    .line 227
    const/4 v4, 0x0

    #@e
    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@10
    array-length v6, v6

    #@11
    if-ge v4, v6, :cond_1

    #@13
    .line 228
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@15
    aget-object v2, v6, v4

    #@17
    .line 229
    .local v2, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    if-eqz v2, :cond_0

    #@19
    .line 231
    const/4 v6, 0x1

    #@1a
    .line 230
    invoke-static {v6, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@1d
    move-result v6

    #@1e
    add-int/2addr v5, v6

    #@1f
    .line 227
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@21
    goto :goto_0

    #@22
    .line 235
    .end local v2    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v4    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@24
    if-eqz v6, :cond_3

    #@26
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@28
    array-length v6, v6

    #@29
    if-lez v6, :cond_3

    #@2b
    .line 236
    const/4 v4, 0x0

    #@2c
    .restart local v4    # "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@2e
    array-length v6, v6

    #@2f
    if-ge v4, v6, :cond_3

    #@31
    .line 237
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@33
    aget-object v1, v6, v4

    #@35
    .line 238
    .local v1, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    if-eqz v1, :cond_2

    #@37
    .line 240
    const/4 v6, 0x2

    #@38
    .line 239
    invoke-static {v6, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@3b
    move-result v6

    #@3c
    add-int/2addr v5, v6

    #@3d
    .line 236
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 244
    .end local v1    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .end local v4    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@42
    if-eqz v6, :cond_5

    #@44
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@46
    array-length v6, v6

    #@47
    if-lez v6, :cond_5

    #@49
    .line 245
    const/4 v4, 0x0

    #@4a
    .restart local v4    # "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@4c
    array-length v6, v6

    #@4d
    if-ge v4, v6, :cond_5

    #@4f
    .line 246
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@51
    aget-object v0, v6, v4

    #@53
    .line 247
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    if-eqz v0, :cond_4

    #@55
    .line 249
    const/4 v6, 0x3

    #@56
    .line 248
    invoke-static {v6, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@59
    move-result v6

    #@5a
    add-int/2addr v5, v6

    #@5b
    .line 245
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@5d
    goto :goto_2

    #@5e
    .line 253
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    .end local v4    # "i":I
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@60
    if-eqz v6, :cond_7

    #@62
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@64
    array-length v6, v6

    #@65
    if-lez v6, :cond_7

    #@67
    .line 254
    const/4 v4, 0x0

    #@68
    .restart local v4    # "i":I
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@6a
    array-length v6, v6

    #@6b
    if-ge v4, v6, :cond_7

    #@6d
    .line 255
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@6f
    aget-object v3, v6, v4

    #@71
    .line 256
    .local v3, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    if-eqz v3, :cond_6

    #@73
    .line 258
    const/4 v6, 0x4

    #@74
    .line 257
    invoke-static {v6, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@77
    move-result v6

    #@78
    add-int/2addr v5, v6

    #@79
    .line 254
    :cond_6
    add-int/lit8 v4, v4, 0x1

    #@7b
    goto :goto_3

    #@7c
    .line 262
    .end local v3    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .end local v4    # "i":I
    :cond_7
    iget v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    #@7e
    and-int/lit8 v6, v6, 0x1

    #@80
    if-eqz v6, :cond_8

    #@82
    .line 264
    iget-boolean v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    #@84
    const/4 v7, 0x5

    #@85
    .line 263
    invoke-static {v7, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@88
    move-result v6

    #@89
    add-int/2addr v5, v6

    #@8a
    .line 266
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@8c
    if-eqz v6, :cond_9

    #@8e
    .line 268
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@90
    const/4 v7, 0x6

    #@91
    .line 267
    invoke-static {v7, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@94
    move-result v6

    #@95
    add-int/2addr v5, v6

    #@96
    .line 270
    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@98
    if-eqz v6, :cond_a

    #@9a
    .line 272
    iget-object v6, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@9c
    const/4 v7, 0x7

    #@9d
    .line 271
    invoke-static {v7, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@a0
    move-result v6

    #@a1
    add-int/2addr v5, v6

    #@a2
    .line 274
    :cond_a
    return v5
.end method

.method public getEventsDropped()Z
    .locals 1

    #@0
    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    #@2
    return v0
.end method

.method public hasEventsDropped()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 142
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 9
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 282
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@4
    move-result v6

    #@5
    .line 283
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    #@8
    .line 287
    invoke-super {p0, p1, v6}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@b
    move-result v8

    #@c
    if-nez v8, :cond_0

    #@e
    .line 288
    return-object p0

    #@f
    .line 285
    :sswitch_0
    return-object p0

    #@10
    .line 294
    :sswitch_1
    const/16 v8, 0xa

    #@12
    .line 293
    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    #@15
    move-result v0

    #@16
    .line 295
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@18
    if-nez v8, :cond_2

    #@1a
    move v1, v7

    #@1b
    .line 297
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    #@1d
    new-array v4, v8, [Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@1f
    .line 298
    .local v4, "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    if-eqz v1, :cond_1

    #@21
    .line 299
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@23
    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@26
    .line 301
    :cond_1
    :goto_2
    array-length v8, v4

    #@27
    add-int/lit8 v8, v8, -0x1

    #@29
    if-ge v1, v8, :cond_3

    #@2b
    .line 302
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@2d
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;-><init>()V

    #@30
    aput-object v8, v4, v1

    #@32
    .line 303
    aget-object v8, v4, v1

    #@34
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@37
    .line 304
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3a
    .line 301
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_2

    #@3d
    .line 295
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@3f
    array-length v1, v8

    #@40
    goto :goto_1

    #@41
    .line 307
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :cond_3
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@43
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;-><init>()V

    #@46
    aput-object v8, v4, v1

    #@48
    .line 308
    aget-object v8, v4, v1

    #@4a
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@4d
    .line 309
    iput-object v4, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@4f
    goto :goto_0

    #@50
    .line 314
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :sswitch_2
    const/16 v8, 0x12

    #@52
    .line 313
    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    #@55
    move-result v0

    #@56
    .line 315
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@58
    if-nez v8, :cond_5

    #@5a
    move v1, v7

    #@5b
    .line 317
    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    #@5d
    new-array v3, v8, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@5f
    .line 318
    .local v3, "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    if-eqz v1, :cond_4

    #@61
    .line 319
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@63
    invoke-static {v8, v7, v3, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@66
    .line 321
    :cond_4
    :goto_4
    array-length v8, v3

    #@67
    add-int/lit8 v8, v8, -0x1

    #@69
    if-ge v1, v8, :cond_6

    #@6b
    .line 322
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@6d
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;-><init>()V

    #@70
    aput-object v8, v3, v1

    #@72
    .line 323
    aget-object v8, v3, v1

    #@74
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@77
    .line 324
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@7a
    .line 321
    add-int/lit8 v1, v1, 0x1

    #@7c
    goto :goto_4

    #@7d
    .line 315
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@7f
    array-length v1, v8

    #@80
    goto :goto_3

    #@81
    .line 327
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    :cond_6
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@83
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;-><init>()V

    #@86
    aput-object v8, v3, v1

    #@88
    .line 328
    aget-object v8, v3, v1

    #@8a
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@8d
    .line 329
    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@8f
    goto/16 :goto_0

    #@91
    .line 334
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    :sswitch_3
    const/16 v8, 0x1a

    #@93
    .line 333
    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    #@96
    move-result v0

    #@97
    .line 335
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@99
    if-nez v8, :cond_8

    #@9b
    move v1, v7

    #@9c
    .line 337
    .restart local v1    # "i":I
    :goto_5
    add-int v8, v1, v0

    #@9e
    new-array v2, v8, [Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@a0
    .line 338
    .local v2, "newArray":[Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    if-eqz v1, :cond_7

    #@a2
    .line 339
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@a4
    invoke-static {v8, v7, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@a7
    .line 341
    :cond_7
    :goto_6
    array-length v8, v2

    #@a8
    add-int/lit8 v8, v8, -0x1

    #@aa
    if-ge v1, v8, :cond_9

    #@ac
    .line 342
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@ae
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;-><init>()V

    #@b1
    aput-object v8, v2, v1

    #@b3
    .line 343
    aget-object v8, v2, v1

    #@b5
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@b8
    .line 344
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@bb
    .line 341
    add-int/lit8 v1, v1, 0x1

    #@bd
    goto :goto_6

    #@be
    .line 335
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    :cond_8
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@c0
    array-length v1, v8

    #@c1
    goto :goto_5

    #@c2
    .line 347
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    :cond_9
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@c4
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;-><init>()V

    #@c7
    aput-object v8, v2, v1

    #@c9
    .line 348
    aget-object v8, v2, v1

    #@cb
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@ce
    .line 349
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@d0
    goto/16 :goto_0

    #@d2
    .line 354
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    :sswitch_4
    const/16 v8, 0x22

    #@d4
    .line 353
    invoke-static {p1, v8}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    #@d7
    move-result v0

    #@d8
    .line 355
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@da
    if-nez v8, :cond_b

    #@dc
    move v1, v7

    #@dd
    .line 357
    .restart local v1    # "i":I
    :goto_7
    add-int v8, v1, v0

    #@df
    new-array v5, v8, [Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@e1
    .line 358
    .local v5, "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    if-eqz v1, :cond_a

    #@e3
    .line 359
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@e5
    invoke-static {v8, v7, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@e8
    .line 361
    :cond_a
    :goto_8
    array-length v8, v5

    #@e9
    add-int/lit8 v8, v8, -0x1

    #@eb
    if-ge v1, v8, :cond_c

    #@ed
    .line 362
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@ef
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;-><init>()V

    #@f2
    aput-object v8, v5, v1

    #@f4
    .line 363
    aget-object v8, v5, v1

    #@f6
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@f9
    .line 364
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@fc
    .line 361
    add-int/lit8 v1, v1, 0x1

    #@fe
    goto :goto_8

    #@ff
    .line 355
    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@101
    array-length v1, v8

    #@102
    goto :goto_7

    #@103
    .line 367
    .restart local v1    # "i":I
    .restart local v5    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    :cond_c
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@105
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;-><init>()V

    #@108
    aput-object v8, v5, v1

    #@10a
    .line 368
    aget-object v8, v5, v1

    #@10c
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@10f
    .line 369
    iput-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@111
    goto/16 :goto_0

    #@113
    .line 373
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@116
    move-result v8

    #@117
    iput-boolean v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    #@119
    .line 374
    iget v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    #@11b
    or-int/lit8 v8, v8, 0x1

    #@11d
    iput v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    #@11f
    goto/16 :goto_0

    #@121
    .line 378
    :sswitch_6
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@123
    if-nez v8, :cond_d

    #@125
    .line 379
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$Time;

    #@127
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$Time;-><init>()V

    #@12a
    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@12c
    .line 381
    :cond_d
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@12e
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@131
    goto/16 :goto_0

    #@133
    .line 385
    :sswitch_7
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@135
    if-nez v8, :cond_e

    #@137
    .line 386
    new-instance v8, Lcom/android/internal/telephony/TelephonyProto$Time;

    #@139
    invoke-direct {v8}, Lcom/android/internal/telephony/TelephonyProto$Time;-><init>()V

    #@13c
    iput-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@13e
    .line 388
    :cond_e
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@140
    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@143
    goto/16 :goto_0

    #@145
    .line 283
    nop

    #@146
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public setEventsDropped(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    #@2
    .line 138
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    #@8
    .line 139
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@2
    if-eqz v5, :cond_1

    #@4
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@6
    array-length v5, v5

    #@7
    if-lez v5, :cond_1

    #@9
    .line 180
    const/4 v4, 0x0

    #@a
    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@c
    array-length v5, v5

    #@d
    if-ge v4, v5, :cond_1

    #@f
    .line 181
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@11
    aget-object v2, v5, v4

    #@13
    .line 182
    .local v2, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    if-eqz v2, :cond_0

    #@15
    .line 183
    const/4 v5, 0x1

    #@16
    invoke-virtual {p1, v5, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@19
    .line 180
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 187
    .end local v2    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v4    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@1e
    if-eqz v5, :cond_3

    #@20
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@22
    array-length v5, v5

    #@23
    if-lez v5, :cond_3

    #@25
    .line 188
    const/4 v4, 0x0

    #@26
    .restart local v4    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@28
    array-length v5, v5

    #@29
    if-ge v4, v5, :cond_3

    #@2b
    .line 189
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@2d
    aget-object v1, v5, v4

    #@2f
    .line 190
    .local v1, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    if-eqz v1, :cond_2

    #@31
    .line 191
    const/4 v5, 0x2

    #@32
    invoke-virtual {p1, v5, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@35
    .line 188
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@37
    goto :goto_1

    #@38
    .line 195
    .end local v1    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    .end local v4    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@3a
    if-eqz v5, :cond_5

    #@3c
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@3e
    array-length v5, v5

    #@3f
    if-lez v5, :cond_5

    #@41
    .line 196
    const/4 v4, 0x0

    #@42
    .restart local v4    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@44
    array-length v5, v5

    #@45
    if-ge v4, v5, :cond_5

    #@47
    .line 197
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@49
    aget-object v0, v5, v4

    #@4b
    .line 198
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    if-eqz v0, :cond_4

    #@4d
    .line 199
    const/4 v5, 0x3

    #@4e
    invoke-virtual {p1, v5, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@51
    .line 196
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@53
    goto :goto_2

    #@54
    .line 203
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    .end local v4    # "i":I
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@56
    if-eqz v5, :cond_7

    #@58
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@5a
    array-length v5, v5

    #@5b
    if-lez v5, :cond_7

    #@5d
    .line 204
    const/4 v4, 0x0

    #@5e
    .restart local v4    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@60
    array-length v5, v5

    #@61
    if-ge v4, v5, :cond_7

    #@63
    .line 205
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@65
    aget-object v3, v5, v4

    #@67
    .line 206
    .local v3, "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    if-eqz v3, :cond_6

    #@69
    .line 207
    const/4 v5, 0x4

    #@6a
    invoke-virtual {p1, v5, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@6d
    .line 204
    :cond_6
    add-int/lit8 v4, v4, 0x1

    #@6f
    goto :goto_3

    #@70
    .line 211
    .end local v3    # "element":Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .end local v4    # "i":I
    :cond_7
    iget v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->bitField0_:I

    #@72
    and-int/lit8 v5, v5, 0x1

    #@74
    if-eqz v5, :cond_8

    #@76
    .line 212
    iget-boolean v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->eventsDropped_:Z

    #@78
    const/4 v6, 0x5

    #@79
    invoke-virtual {p1, v6, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@7c
    .line 214
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@7e
    if-eqz v5, :cond_9

    #@80
    .line 215
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@82
    const/4 v6, 0x6

    #@83
    invoke-virtual {p1, v6, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@86
    .line 217
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@88
    if-eqz v5, :cond_a

    #@8a
    .line 218
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@8c
    const/4 v6, 0x7

    #@8d
    invoke-virtual {p1, v6, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@90
    .line 220
    :cond_a
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@93
    .line 178
    return-void
.end method
