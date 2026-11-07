.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierKeyChange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange$KeyType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;


# instance fields
.field public blacklist isDownloadSuccessful:Z

.field public blacklist keyType:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3951
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3952
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;
    .registers 2

    .line 3934
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    if-nez v0, :cond_17

    .line 3935
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3937
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 3938
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 3940
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 3942
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4031
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4025
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;
    .registers 2

    const/4 v0, 0x0

    .line 3956
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->keyType:I

    .line 3957
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->isDownloadSuccessful:Z

    const/4 v0, 0x0

    .line 3958
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 3959
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 3977
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3978
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->keyType:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 3980
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3982
    :cond_e
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->isDownloadSuccessful:Z

    if-eqz p0, :cond_18

    const/4 v1, 0x2

    .line 3984
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_18
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3994
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x10

    if-eq v0, v1, :cond_15

    .line 3999
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2c

    .line 4016
    :cond_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->isDownloadSuccessful:Z

    goto :goto_0

    .line 4005
    :cond_1c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_29

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    goto :goto_0

    .line 4010
    :cond_29
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->keyType:I

    goto :goto_0

    :cond_2c
    :goto_2c
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

    .line 3921
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

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

    .line 3966
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->keyType:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 3967
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3969
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->isDownloadSuccessful:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 3970
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3972
    :cond_10
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
