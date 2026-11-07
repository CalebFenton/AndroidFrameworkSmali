.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2$NetworkCapability;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;


# instance fields
.field public blacklist capability:I

.field public blacklist carrierId:I

.field public blacklist requestCount:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5902
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5903
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;
    .registers 2

    .line 5882
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    if-nez v0, :cond_17

    .line 5883
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 5885
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 5886
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 5888
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 5890
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6002
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 5996
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;
    .registers 2

    const/4 v0, 0x0

    .line 5907
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    .line 5908
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    .line 5909
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    const/4 v0, 0x0

    .line 5910
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 5911
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 5932
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5933
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 5935
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5937
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 5939
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5941
    :cond_18
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    if-eqz p0, :cond_22

    const/4 v1, 0x3

    .line 5943
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_22
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5953
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_32

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x10

    if-eq v0, v1, :cond_20

    const/16 v1, 0x18

    if-eq v0, v1, :cond_19

    .line 5958
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_32

    .line 5987
    :cond_19
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    goto :goto_0

    .line 5968
    :cond_20
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    goto :goto_0

    .line 5981
    :pswitch_28
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    goto :goto_0

    .line 5964
    :cond_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    goto :goto_0

    :cond_32
    :goto_32
    return-object p0

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch
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

    .line 5861
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

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

    .line 5918
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 5919
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5921
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 5922
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5924
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 5925
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5927
    :cond_18
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
