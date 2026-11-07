.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;


# instance fields
.field public blacklist accessControlType:I

.field public blacklist carrierId:I

.field public blacklist configDataSource:I

.field public blacklist countryCodes:[Ljava/lang/String;

.field public blacklist isAllowed:Z

.field public blacklist isEmergency:Z

.field public blacklist isNtnOnlyCarrier:Z

.field public blacklist locationQueryTimeMillis:J

.field public blacklist onDeviceLookupTimeMillis:J

.field public blacklist resultCode:I

.field public blacklist totalCheckingTimeMillis:J

.field public blacklist triggeringEvent:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11931
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11932
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;
    .registers 2

    .line 11884
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    if-nez v0, :cond_17

    .line 11885
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 11887
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 11888
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 11890
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 11892
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12152
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 12146
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;
    .registers 4

    const/4 v0, 0x0

    .line 11936
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->accessControlType:I

    const-wide/16 v1, 0x0

    .line 11937
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->locationQueryTimeMillis:J

    .line 11938
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->onDeviceLookupTimeMillis:J

    .line 11939
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->totalCheckingTimeMillis:J

    .line 11940
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isAllowed:Z

    .line 11941
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isEmergency:Z

    .line 11942
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->resultCode:I

    .line 11943
    sget-object v1, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->countryCodes:[Ljava/lang/String;

    .line 11944
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->configDataSource:I

    .line 11945
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->carrierId:I

    .line 11946
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->triggeringEvent:I

    .line 11947
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isNtnOnlyCarrier:Z

    const/4 v0, 0x0

    .line 11948
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 11949
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 12002
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 12003
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->accessControlType:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 12005
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12007
    :cond_e
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->locationQueryTimeMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1c

    const/4 v5, 0x2

    .line 12009
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12011
    :cond_1c
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->onDeviceLookupTimeMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_28

    const/4 v5, 0x3

    .line 12013
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12015
    :cond_28
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->totalCheckingTimeMillis:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_34

    const/4 v3, 0x4

    .line 12017
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12019
    :cond_34
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isAllowed:Z

    if-eqz v1, :cond_3e

    const/4 v2, 0x5

    .line 12021
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12023
    :cond_3e
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isEmergency:Z

    if-eqz v1, :cond_48

    const/4 v2, 0x6

    .line 12025
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12027
    :cond_48
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->resultCode:I

    if-eqz v1, :cond_52

    const/4 v2, 0x7

    .line 12029
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12031
    :cond_52
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->countryCodes:[Ljava/lang/String;

    if-eqz v1, :cond_71

    array-length v1, v1

    if-lez v1, :cond_71

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 12034
    :goto_5c
    iget-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->countryCodes:[Ljava/lang/String;

    array-length v5, v4

    if-ge v1, v5, :cond_6f

    .line 12035
    aget-object v4, v4, v1

    if-eqz v4, :cond_6c

    add-int/lit8 v3, v3, 0x1

    .line 12039
    invoke-static {v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    :cond_6f
    add-int/2addr v0, v2

    add-int/2addr v0, v3

    .line 12045
    :cond_71
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->configDataSource:I

    if-eqz v1, :cond_7c

    const/16 v2, 0x9

    .line 12047
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12049
    :cond_7c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->carrierId:I

    if-eqz v1, :cond_87

    const/16 v2, 0xa

    .line 12051
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12053
    :cond_87
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->triggeringEvent:I

    if-eqz v1, :cond_92

    const/16 v2, 0xb

    .line 12055
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12057
    :cond_92
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isNtnOnlyCarrier:Z

    if-eqz p0, :cond_9d

    const/16 v1, 0xc

    .line 12059
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_9d
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12069
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_8e

    .line 12074
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8d

    .line 12137
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isNtnOnlyCarrier:Z

    goto :goto_0

    .line 12133
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->triggeringEvent:I

    goto :goto_0

    .line 12129
    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->carrierId:I

    goto :goto_0

    .line 12125
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->configDataSource:I

    goto :goto_0

    :sswitch_2b
    const/16 v0, 0x42

    .line 12109
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 12110
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->countryCodes:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_38

    move v3, v2

    goto :goto_39

    :cond_38
    array-length v3, v1

    :goto_39
    add-int/2addr v0, v3

    .line 12111
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_41

    .line 12113
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_41
    :goto_41
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_51

    .line 12116
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 12117
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 12120
    :cond_51
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 12121
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->countryCodes:[Ljava/lang/String;

    goto :goto_0

    .line 12104
    :sswitch_5a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->resultCode:I

    goto :goto_0

    .line 12100
    :sswitch_61
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isEmergency:Z

    goto :goto_0

    .line 12096
    :sswitch_68
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isAllowed:Z

    goto :goto_0

    .line 12092
    :sswitch_6f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->totalCheckingTimeMillis:J

    goto :goto_0

    .line 12088
    :sswitch_76
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->onDeviceLookupTimeMillis:J

    goto :goto_0

    .line 12084
    :sswitch_7d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->locationQueryTimeMillis:J

    goto/16 :goto_0

    .line 12080
    :sswitch_85
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->accessControlType:I

    goto/16 :goto_0

    :goto_8d
    :sswitch_8d
    return-object p0

    :sswitch_data_8e
    .sparse-switch
        0x0 -> :sswitch_8d
        0x8 -> :sswitch_85
        0x10 -> :sswitch_7d
        0x18 -> :sswitch_76
        0x20 -> :sswitch_6f
        0x28 -> :sswitch_68
        0x30 -> :sswitch_61
        0x38 -> :sswitch_5a
        0x42 -> :sswitch_2b
        0x48 -> :sswitch_24
        0x50 -> :sswitch_1d
        0x58 -> :sswitch_16
        0x60 -> :sswitch_f
    .end sparse-switch
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

    .line 11878
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11956
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->accessControlType:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 11957
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11959
    :cond_8
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->locationQueryTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_14

    const/4 v4, 0x2

    .line 11960
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 11962
    :cond_14
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->onDeviceLookupTimeMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1e

    const/4 v4, 0x3

    .line 11963
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 11965
    :cond_1e
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->totalCheckingTimeMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_28

    const/4 v2, 0x4

    .line 11966
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 11968
    :cond_28
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isAllowed:Z

    if-eqz v0, :cond_30

    const/4 v1, 0x5

    .line 11969
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11971
    :cond_30
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isEmergency:Z

    if-eqz v0, :cond_38

    const/4 v1, 0x6

    .line 11972
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11974
    :cond_38
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->resultCode:I

    if-eqz v0, :cond_40

    const/4 v1, 0x7

    .line 11975
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11977
    :cond_40
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->countryCodes:[Ljava/lang/String;

    if-eqz v0, :cond_59

    array-length v0, v0

    if-lez v0, :cond_59

    const/4 v0, 0x0

    .line 11978
    :goto_48
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->countryCodes:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_59

    .line 11979
    aget-object v1, v1, v0

    if-eqz v1, :cond_56

    const/16 v2, 0x8

    .line 11981
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 11985
    :cond_59
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->configDataSource:I

    if-eqz v0, :cond_62

    const/16 v1, 0x9

    .line 11986
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11988
    :cond_62
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->carrierId:I

    if-eqz v0, :cond_6b

    const/16 v1, 0xa

    .line 11989
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11991
    :cond_6b
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->triggeringEvent:I

    if-eqz v0, :cond_74

    const/16 v1, 0xb

    .line 11992
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11994
    :cond_74
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isNtnOnlyCarrier:Z

    if-eqz v0, :cond_7d

    const/16 v1, 0xc

    .line 11995
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11997
    :cond_7d
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
