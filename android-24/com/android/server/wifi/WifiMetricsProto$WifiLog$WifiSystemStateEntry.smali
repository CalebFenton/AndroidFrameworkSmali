.class public final Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
.super Lcom/google/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiSystemStateEntry"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;


# instance fields
.field public isScreenOn:Z

.field public wifiState:I

.field public wifiStateCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 164
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    #@3
    .line 165
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->clear()Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@6
    .line 164
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .locals 2

    #@0
    .prologue
    .line 142
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 143
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 145
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 146
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@e
    sput-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 150
    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@13
    return-object v0

    #@14
    .line 143
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 250
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 169
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiState:I

    #@3
    .line 170
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiStateCount:I

    #@5
    .line 171
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->isScreenOn:Z

    #@7
    .line 172
    const/4 v0, -0x1

    #@8
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->cachedSize:I

    #@a
    .line 173
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 193
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 194
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiState:I

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 196
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiState:I

    #@a
    const/4 v2, 0x1

    #@b
    .line 195
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@e
    move-result v1

    #@f
    add-int/2addr v0, v1

    #@10
    .line 198
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiStateCount:I

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 200
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiStateCount:I

    #@16
    const/4 v2, 0x2

    #@17
    .line 199
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1a
    move-result v1

    #@1b
    add-int/2addr v0, v1

    #@1c
    .line 202
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->isScreenOn:Z

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 204
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->isScreenOn:Z

    #@22
    const/4 v2, 0x3

    #@23
    .line 203
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@26
    move-result v1

    #@27
    add-int/2addr v0, v1

    #@28
    .line 206
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v0

    #@4
    .line 215
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 219
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 220
    return-object p0

    #@e
    .line 217
    :sswitch_0
    return-object p0

    #@f
    .line 225
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@12
    move-result v1

    #@13
    .line 226
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    #@16
    goto :goto_0

    #@17
    .line 231
    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiState:I

    #@19
    goto :goto_0

    #@1a
    .line 237
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1d
    move-result v2

    #@1e
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiStateCount:I

    #@20
    goto :goto_0

    #@21
    .line 241
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@24
    move-result v2

    #@25
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->isScreenOn:Z

    #@27
    goto :goto_0

    #@28
    .line 215
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    #@3a
    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiState:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 180
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiState:I

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@a
    .line 182
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiStateCount:I

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 183
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiStateCount:I

    #@10
    const/4 v1, 0x2

    #@11
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@14
    .line 185
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->isScreenOn:Z

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 186
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->isScreenOn:Z

    #@1a
    const/4 v1, 0x3

    #@1b
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@1e
    .line 188
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@21
    .line 178
    return-void
.end method
