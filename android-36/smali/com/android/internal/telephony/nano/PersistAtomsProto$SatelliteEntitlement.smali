.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;


# instance fields
.field public blacklist carrierId:I

.field public blacklist count:I

.field public blacklist entitlementDataPolicy:I

.field public blacklist entitlementServiceType:[I

.field public blacklist entitlementStatus:I

.field public blacklist isAllowedServiceEntitlement:Z

.field public blacklist isRetry:Z

.field public blacklist result:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11555
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11556
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;
    .registers 2

    .line 11520
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    if-nez v0, :cond_17

    .line 11521
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 11523
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 11524
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 11526
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 11528
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11744
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 11738
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;
    .registers 3

    const/4 v0, 0x0

    .line 11560
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->carrierId:I

    .line 11561
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->result:I

    .line 11562
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementStatus:I

    .line 11563
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isRetry:Z

    .line 11564
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->count:I

    .line 11565
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isAllowedServiceEntitlement:Z

    .line 11566
    sget-object v1, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    .line 11567
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementDataPolicy:I

    const/4 v0, 0x0

    .line 11568
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 11569
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 11607
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 11608
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->carrierId:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 11610
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11612
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->result:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 11614
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11616
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementStatus:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 11618
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11620
    :cond_22
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isRetry:Z

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 11622
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11624
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->count:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 11626
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11628
    :cond_36
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isAllowedServiceEntitlement:Z

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 11630
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11632
    :cond_40
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    if-eqz v1, :cond_5b

    array-length v1, v1

    if-lez v1, :cond_5b

    const/4 v1, 0x0

    move v2, v1

    .line 11634
    :goto_49
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    array-length v4, v3

    if-ge v1, v4, :cond_58

    .line 11635
    aget v3, v3, v1

    .line 11637
    invoke-static {v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_58
    add-int/2addr v0, v2

    .line 11640
    array-length v1, v3

    add-int/2addr v0, v1

    .line 11642
    :cond_5b
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementDataPolicy:I

    if-eqz p0, :cond_66

    const/16 v1, 0x8

    .line 11644
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_66
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11654
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_d3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_cb

    const/16 v1, 0x10

    if-eq v0, v1, :cond_c3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_bb

    const/16 v1, 0x20

    if-eq v0, v1, :cond_b3

    const/16 v1, 0x28

    if-eq v0, v1, :cond_ab

    const/16 v1, 0x30

    if-eq v0, v1, :cond_a3

    const/16 v1, 0x38

    const/4 v2, 0x0

    if-eq v0, v1, :cond_76

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x40

    if-eq v0, v1, :cond_33

    .line 11659
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_d3

    .line 11729
    :cond_33
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementDataPolicy:I

    goto :goto_0

    .line 11706
    :cond_3a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 11707
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 11710
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    move v3, v2

    .line 11711
    :goto_47
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_53

    .line 11712
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 11715
    :cond_53
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 11716
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    if-nez v1, :cond_5c

    move v4, v2

    goto :goto_5d

    :cond_5c
    array-length v4, v1

    :goto_5d
    add-int/2addr v3, v4

    .line 11717
    new-array v5, v3, [I

    if-eqz v4, :cond_65

    .line 11719
    invoke-static {v1, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_65
    :goto_65
    if-ge v4, v3, :cond_70

    .line 11722
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 11724
    :cond_70
    iput-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    .line 11725
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    .line 11690
    :cond_76
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 11691
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    if-nez v1, :cond_80

    move v3, v2

    goto :goto_81

    :cond_80
    array-length v3, v1

    :goto_81
    add-int/2addr v0, v3

    .line 11692
    new-array v4, v0, [I

    if-eqz v3, :cond_89

    .line 11694
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_89
    :goto_89
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_99

    .line 11697
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 11698
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 11701
    :cond_99
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    aput v0, v4, v3

    .line 11702
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    goto/16 :goto_0

    .line 11685
    :cond_a3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isAllowedServiceEntitlement:Z

    goto/16 :goto_0

    .line 11681
    :cond_ab
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->count:I

    goto/16 :goto_0

    .line 11677
    :cond_b3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isRetry:Z

    goto/16 :goto_0

    .line 11673
    :cond_bb
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementStatus:I

    goto/16 :goto_0

    .line 11669
    :cond_c3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->result:I

    goto/16 :goto_0

    .line 11665
    :cond_cb
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->carrierId:I

    goto/16 :goto_0

    :cond_d3
    :goto_d3
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

    .line 11514
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

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

    .line 11576
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->carrierId:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 11577
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11579
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->result:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 11580
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11582
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementStatus:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 11583
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11585
    :cond_18
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isRetry:Z

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 11586
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11588
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->count:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 11589
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11591
    :cond_28
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isAllowedServiceEntitlement:Z

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 11592
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11594
    :cond_30
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    if-eqz v0, :cond_46

    array-length v0, v0

    if-lez v0, :cond_46

    const/4 v0, 0x0

    .line 11595
    :goto_38
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    array-length v2, v1

    if-ge v0, v2, :cond_46

    const/4 v2, 0x7

    .line 11596
    aget v1, v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 11599
    :cond_46
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementDataPolicy:I

    if-eqz v0, :cond_4f

    const/16 v1, 0x8

    .line 11600
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11602
    :cond_4f
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
