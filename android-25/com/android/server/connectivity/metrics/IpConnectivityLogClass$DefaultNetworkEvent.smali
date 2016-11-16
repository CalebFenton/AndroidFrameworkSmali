.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultNetworkEvent"
.end annotation


# static fields
.field public static final DUAL:I = 0x3

.field public static final IPV4:I = 0x1

.field public static final IPV6:I = 0x2

.field public static final NONE:I

.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;


# instance fields
.field public networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

.field public previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

.field public previousNetworkIpSupport:I

.field public transportTypes:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    #@3
    .line 134
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@6
    .line 133
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;
    .locals 2

    #@0
    .prologue
    .line 108
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 109
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 111
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 112
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@e
    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 116
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@13
    return-object v0

    #@14
    .line 109
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 287
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 281
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 138
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@3
    .line 139
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@5
    .line 140
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    #@8
    .line 141
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    #@a
    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@c
    .line 142
    const/4 v0, -0x1

    #@d
    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->cachedSize:I

    #@f
    .line 143
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 168
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    #@4
    move-result v3

    #@5
    .line 169
    .local v3, "size":I
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 171
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@b
    .line 170
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@e
    move-result v4

    #@f
    add-int/2addr v3, v4

    #@10
    .line 173
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@12
    if-eqz v4, :cond_1

    #@14
    .line 175
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@16
    const/4 v5, 0x2

    #@17
    .line 174
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@1a
    move-result v4

    #@1b
    add-int/2addr v3, v4

    #@1c
    .line 177
    :cond_1
    iget v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    #@1e
    if-eqz v4, :cond_2

    #@20
    .line 179
    iget v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    #@22
    const/4 v5, 0x3

    #@23
    .line 178
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@26
    move-result v4

    #@27
    add-int/2addr v3, v4

    #@28
    .line 181
    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@2a
    if-eqz v4, :cond_4

    #@2c
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@2e
    array-length v4, v4

    #@2f
    if-lez v4, :cond_4

    #@31
    .line 182
    const/4 v0, 0x0

    #@32
    .line 183
    .local v0, "dataSize":I
    const/4 v2, 0x0

    #@33
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@35
    array-length v4, v4

    #@36
    if-ge v2, v4, :cond_3

    #@38
    .line 184
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@3a
    aget v1, v4, v2

    #@3c
    .line 185
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    #@3f
    move-result v4

    #@40
    add-int/2addr v0, v4

    #@41
    .line 183
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_0

    #@44
    .line 188
    .end local v1    # "element":I
    :cond_3
    add-int/2addr v3, v0

    #@45
    .line 189
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@47
    array-length v4, v4

    #@48
    mul-int/lit8 v4, v4, 0x1

    #@4a
    add-int/2addr v3, v4

    #@4b
    .line 191
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_4
    return v3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;
    .locals 10
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 199
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@4
    move-result v6

    #@5
    .line 200
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    #@8
    .line 204
    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@b
    move-result v9

    #@c
    if-nez v9, :cond_0

    #@e
    .line 205
    return-object p0

    #@f
    .line 202
    :sswitch_0
    return-object p0

    #@10
    .line 210
    :sswitch_1
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@12
    if-nez v9, :cond_1

    #@14
    .line 211
    new-instance v9, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@16
    invoke-direct {v9}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;-><init>()V

    #@19
    iput-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@1b
    .line 213
    :cond_1
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@1d
    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@20
    goto :goto_0

    #@21
    .line 217
    :sswitch_2
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@23
    if-nez v9, :cond_2

    #@25
    .line 218
    new-instance v9, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@27
    invoke-direct {v9}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;-><init>()V

    #@2a
    iput-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@2c
    .line 220
    :cond_2
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@2e
    invoke-virtual {p1, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@31
    goto :goto_0

    #@32
    .line 224
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@35
    move-result v7

    #@36
    .line 225
    .local v7, "value":I
    packed-switch v7, :pswitch_data_0

    #@39
    goto :goto_0

    #@3a
    .line 230
    :pswitch_0
    iput v7, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    #@3c
    goto :goto_0

    #@3d
    .line 237
    .end local v7    # "value":I
    :sswitch_4
    const/16 v9, 0x20

    #@3f
    .line 236
    invoke-static {p1, v9}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    #@42
    move-result v0

    #@43
    .line 238
    .local v0, "arrayLength":I
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@45
    if-nez v9, :cond_4

    #@47
    move v1, v8

    #@48
    .line 239
    .local v1, "i":I
    :goto_1
    add-int v9, v1, v0

    #@4a
    new-array v4, v9, [I

    #@4c
    .line 240
    .local v4, "newArray":[I
    if-eqz v1, :cond_3

    #@4e
    .line 241
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@50
    invoke-static {v9, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@53
    .line 243
    :cond_3
    :goto_2
    array-length v9, v4

    #@54
    add-int/lit8 v9, v9, -0x1

    #@56
    if-ge v1, v9, :cond_5

    #@58
    .line 244
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@5b
    move-result v9

    #@5c
    aput v9, v4, v1

    #@5e
    .line 245
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@61
    .line 243
    add-int/lit8 v1, v1, 0x1

    #@63
    goto :goto_2

    #@64
    .line 238
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_4
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@66
    array-length v1, v9

    #@67
    goto :goto_1

    #@68
    .line 248
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@6b
    move-result v9

    #@6c
    aput v9, v4, v1

    #@6e
    .line 249
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@70
    goto :goto_0

    #@71
    .line 253
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    #@74
    move-result v2

    #@75
    .line 254
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    #@78
    move-result v3

    #@79
    .line 256
    .local v3, "limit":I
    const/4 v0, 0x0

    #@7a
    .line 257
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@7d
    move-result v5

    #@7e
    .line 258
    .local v5, "startPos":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    #@81
    move-result v9

    #@82
    if-lez v9, :cond_6

    #@84
    .line 259
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@87
    .line 260
    add-int/lit8 v0, v0, 0x1

    #@89
    goto :goto_3

    #@8a
    .line 262
    :cond_6
    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@8d
    .line 263
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@8f
    if-nez v9, :cond_8

    #@91
    move v1, v8

    #@92
    .line 264
    .restart local v1    # "i":I
    :goto_4
    add-int v9, v1, v0

    #@94
    new-array v4, v9, [I

    #@96
    .line 265
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_7

    #@98
    .line 266
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@9a
    invoke-static {v9, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@9d
    .line 268
    :cond_7
    :goto_5
    array-length v9, v4

    #@9e
    if-ge v1, v9, :cond_9

    #@a0
    .line 269
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@a3
    move-result v9

    #@a4
    aput v9, v4, v1

    #@a6
    .line 268
    add-int/lit8 v1, v1, 0x1

    #@a8
    goto :goto_5

    #@a9
    .line 263
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_8
    iget-object v9, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@ab
    array-length v1, v9

    #@ac
    goto :goto_4

    #@ad
    .line 271
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_9
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@af
    .line 272
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    #@b2
    goto/16 :goto_0

    #@b4
    .line 200
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
    .end sparse-switch

    #@ce
    .line 225
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
    .line 195
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 150
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@6
    const/4 v2, 0x1

    #@7
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@a
    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 153
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    #@10
    const/4 v2, 0x2

    #@11
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@14
    .line 155
    :cond_1
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 156
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    #@1a
    const/4 v2, 0x3

    #@1b
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@1e
    .line 158
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@20
    if-eqz v1, :cond_3

    #@22
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@24
    array-length v1, v1

    #@25
    if-lez v1, :cond_3

    #@27
    .line 159
    const/4 v0, 0x0

    #@28
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@2a
    array-length v1, v1

    #@2b
    if-ge v0, v1, :cond_3

    #@2d
    .line 160
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    #@2f
    aget v1, v1, v0

    #@31
    const/4 v2, 0x4

    #@32
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@35
    .line 159
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_0

    #@38
    .line 163
    .end local v0    # "i":I
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@3b
    .line 148
    return-void
.end method
