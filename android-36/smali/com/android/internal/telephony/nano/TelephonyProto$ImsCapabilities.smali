.class public final Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;


# instance fields
.field public blacklist utOverLte:Z

.field public blacklist utOverWifi:Z

.field public blacklist videoOverLte:Z

.field public blacklist videoOverWifi:Z

.field public blacklist voiceOverLte:Z

.field public blacklist voiceOverWifi:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2143
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2144
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    .registers 2

    .line 2114
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-nez v0, :cond_17

    .line 2115
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2117
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 2118
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 2120
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 2122
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2264
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2258
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    .registers 2

    const/4 v0, 0x0

    .line 2148
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverLte:Z

    .line 2149
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverWifi:Z

    .line 2150
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverLte:Z

    .line 2151
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverWifi:Z

    .line 2152
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverLte:Z

    .line 2153
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverWifi:Z

    const/4 v0, 0x0

    .line 2154
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 2155
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 2185
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2186
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverLte:Z

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 2188
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2190
    :cond_e
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverWifi:Z

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 2192
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2194
    :cond_18
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverLte:Z

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 2196
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2198
    :cond_22
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverWifi:Z

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 2200
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2202
    :cond_2c
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverLte:Z

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 2204
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2206
    :cond_36
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverWifi:Z

    if-eqz p0, :cond_40

    const/4 v1, 0x6

    .line 2208
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_40
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2218
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_4f

    const/16 v1, 0x8

    if-eq v0, v1, :cond_48

    const/16 v1, 0x10

    if-eq v0, v1, :cond_41

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x20

    if-eq v0, v1, :cond_33

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x30

    if-eq v0, v1, :cond_25

    .line 2223
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4f

    .line 2249
    :cond_25
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverWifi:Z

    goto :goto_0

    .line 2245
    :cond_2c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverLte:Z

    goto :goto_0

    .line 2241
    :cond_33
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverWifi:Z

    goto :goto_0

    .line 2237
    :cond_3a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverLte:Z

    goto :goto_0

    .line 2233
    :cond_41
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverWifi:Z

    goto :goto_0

    .line 2229
    :cond_48
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverLte:Z

    goto :goto_0

    :cond_4f
    :goto_4f
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2108
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2162
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverLte:Z

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 2163
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2165
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverWifi:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 2166
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2168
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverLte:Z

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 2169
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2171
    :cond_18
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverWifi:Z

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 2172
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2174
    :cond_20
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverLte:Z

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 2175
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2177
    :cond_28
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverWifi:Z

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 2178
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2180
    :cond_30
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
