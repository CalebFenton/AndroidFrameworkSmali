.class public final Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;


# instance fields
.field public blacklist reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

.field public blacklist state:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2018
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2019
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    .registers 2

    .line 2001
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-nez v0, :cond_17

    .line 2002
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2004
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 2005
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 2007
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 2009
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2104
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2098
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    .registers 2

    const/4 v0, 0x0

    .line 2023
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->state:I

    const/4 v0, 0x0

    .line 2024
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    .line 2025
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 2026
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 2044
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2045
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->state:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 2047
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2049
    :cond_e
    iget-object p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    if-eqz p0, :cond_18

    const/4 v1, 0x2

    .line 2051
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_18
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2061
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3f

    const/16 v1, 0x8

    if-eq v0, v1, :cond_26

    const/16 v1, 0x12

    if-eq v0, v1, :cond_15

    .line 2066
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3f

    .line 2086
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    if-nez v0, :cond_20

    .line 2087
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    .line 2089
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2072
    :cond_26
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3c

    goto :goto_0

    .line 2080
    :cond_3c
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->state:I

    goto :goto_0

    :cond_3f
    :goto_3f
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

    .line 1985
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

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

    .line 2033
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->state:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 2034
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2036
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 2037
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 2039
    :cond_10
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
