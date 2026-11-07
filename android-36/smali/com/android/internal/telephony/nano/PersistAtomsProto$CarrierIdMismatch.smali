.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;


# instance fields
.field public blacklist gid1:Ljava/lang/String;

.field public blacklist mccMnc:Ljava/lang/String;

.field public blacklist pnn:Ljava/lang/String;

.field public blacklist spn:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4007
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4008
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;
    .registers 2

    .line 3984
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    if-nez v0, :cond_17

    .line 3985
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3987
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 3988
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 3990
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 3992
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4104
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4098
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;
    .registers 2

    .line 4012
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->mccMnc:Ljava/lang/String;

    .line 4013
    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->gid1:Ljava/lang/String;

    .line 4014
    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->spn:Ljava/lang/String;

    .line 4015
    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->pnn:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4016
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4017
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 4041
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4042
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->mccMnc:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    .line 4043
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->mccMnc:Ljava/lang/String;

    .line 4044
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4046
    :cond_16
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->gid1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, 0x2

    .line 4047
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->gid1:Ljava/lang/String;

    .line 4048
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4050
    :cond_26
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const/4 v1, 0x3

    .line 4051
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->spn:Ljava/lang/String;

    .line 4052
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4054
    :cond_36
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->pnn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    const/4 v1, 0x4

    .line 4055
    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->pnn:Ljava/lang/String;

    .line 4056
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_46
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4066
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_39

    const/16 v1, 0xa

    if-eq v0, v1, :cond_32

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_24

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1d

    .line 4071
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_39

    .line 4089
    :cond_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->pnn:Ljava/lang/String;

    goto :goto_0

    .line 4085
    :cond_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->spn:Ljava/lang/String;

    goto :goto_0

    .line 4081
    :cond_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->gid1:Ljava/lang/String;

    goto :goto_0

    .line 4077
    :cond_32
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->mccMnc:Ljava/lang/String;

    goto :goto_0

    :cond_39
    :goto_39
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

    .line 3978
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4024
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->mccMnc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 4025
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->mccMnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4027
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->gid1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x2

    .line 4028
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->gid1:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4030
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->spn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x3

    .line 4031
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->spn:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4033
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->pnn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, 0x4

    .line 4034
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->pnn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4036
    :cond_3a
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
