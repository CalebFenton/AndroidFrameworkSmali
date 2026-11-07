.class public final Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;


# instance fields
.field public blacklist extraCode:I

.field public blacklist extraMessage:Ljava/lang/String;

.field public blacklist reasonCode:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1896
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1897
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    .registers 2

    .line 1876
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    if-nez v0, :cond_17

    .line 1877
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1879
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 1880
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 1882
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 1884
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1981
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1975
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    .registers 2

    const/4 v0, 0x0

    .line 1901
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->reasonCode:I

    .line 1902
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraCode:I

    .line 1903
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1904
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 1905
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 1926
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1927
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->reasonCode:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 1929
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1931
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraCode:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 1933
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1935
    :cond_18
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const/4 v1, 0x3

    .line 1936
    iget-object p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    .line 1937
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_2a
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1947
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v1, 0x8

    if-eq v0, v1, :cond_27

    const/16 v1, 0x10

    if-eq v0, v1, :cond_20

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_19

    .line 1952
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2e

    .line 1966
    :cond_19
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    goto :goto_0

    .line 1962
    :cond_20
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraCode:I

    goto :goto_0

    .line 1958
    :cond_27
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->reasonCode:I

    goto :goto_0

    :cond_2e
    :goto_2e
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

    .line 1870
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

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

    .line 1912
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->reasonCode:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 1913
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1915
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraCode:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 1916
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1918
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x3

    .line 1919
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1921
    :cond_20
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
