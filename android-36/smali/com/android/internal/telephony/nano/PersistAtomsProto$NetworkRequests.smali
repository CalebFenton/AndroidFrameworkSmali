.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;


# instance fields
.field public blacklist carrierId:I

.field public blacklist enterpriseReleaseCount:I

.field public blacklist enterpriseRequestCount:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5772
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5773
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;
    .registers 2

    .line 5752
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    if-nez v0, :cond_17

    .line 5753
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 5755
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 5756
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 5758
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 5760
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5857
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 5851
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;
    .registers 2

    const/4 v0, 0x0

    .line 5777
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->carrierId:I

    .line 5778
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->enterpriseRequestCount:I

    .line 5779
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->enterpriseReleaseCount:I

    const/4 v0, 0x0

    .line 5780
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 5781
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 5802
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5803
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 5805
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5807
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->enterpriseRequestCount:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 5809
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5811
    :cond_18
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->enterpriseReleaseCount:I

    if-eqz p0, :cond_22

    const/4 v1, 0x3

    .line 5813
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_22
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5823
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v1, 0x8

    if-eq v0, v1, :cond_27

    const/16 v1, 0x10

    if-eq v0, v1, :cond_20

    const/16 v1, 0x18

    if-eq v0, v1, :cond_19

    .line 5828
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2e

    .line 5842
    :cond_19
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->enterpriseReleaseCount:I

    goto :goto_0

    .line 5838
    :cond_20
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->enterpriseRequestCount:I

    goto :goto_0

    .line 5834
    :cond_27
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->carrierId:I

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

    .line 5746
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

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

    .line 5788
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 5789
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5791
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->enterpriseRequestCount:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 5792
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5794
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->enterpriseReleaseCount:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 5795
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5797
    :cond_18
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
