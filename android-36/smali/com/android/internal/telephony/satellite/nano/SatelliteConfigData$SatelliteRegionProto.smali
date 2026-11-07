.class public final Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "SatelliteConfigData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;


# instance fields
.field public blacklist countryCodes:[Ljava/lang/String;

.field public blacklist isAllowed:Z

.field public blacklist s2CellFile:[B

.field public blacklist satelliteAccessConfigFile:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 539
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 540
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->clear()Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;
    .registers 2

    .line 516
    sget-object v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    if-nez v0, :cond_17

    .line 517
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 519
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 520
    new-array v1, v1, [Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    sput-object v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 522
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 524
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 664
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 658
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;
    .registers 3

    .line 544
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->s2CellFile:[B

    .line 545
    sget-object v1, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->countryCodes:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 546
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->isAllowed:Z

    .line 547
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->satelliteAccessConfigFile:[B

    const/4 v0, 0x0

    .line 548
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 549
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 578
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 579
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->s2CellFile:[B

    sget-object v2, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_16

    .line 580
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->s2CellFile:[B

    const/4 v2, 0x1

    .line 581
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 583
    :cond_16
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->countryCodes:[Ljava/lang/String;

    if-eqz v1, :cond_35

    array-length v1, v1

    if-lez v1, :cond_35

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 586
    :goto_20
    iget-object v4, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->countryCodes:[Ljava/lang/String;

    array-length v5, v4

    if-ge v1, v5, :cond_33

    .line 587
    aget-object v4, v4, v1

    if-eqz v4, :cond_30

    add-int/lit8 v3, v3, 0x1

    .line 591
    invoke-static {v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_33
    add-int/2addr v0, v2

    add-int/2addr v0, v3

    .line 597
    :cond_35
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->isAllowed:Z

    if-eqz v1, :cond_3f

    const/4 v2, 0x3

    .line 599
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 601
    :cond_3f
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->satelliteAccessConfigFile:[B

    sget-object v2, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_51

    const/4 v1, 0x4

    .line 602
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->satelliteAccessConfigFile:[B

    .line 603
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result p0

    add-int/2addr v0, p0

    :cond_51
    return v0
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

    .line 510
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    move-result-object p0

    return-object p0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5f

    const/16 v1, 0xa

    if-eq v0, v1, :cond_58

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x18

    if-eq v0, v1, :cond_24

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1d

    .line 618
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_5f

    .line 649
    :cond_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->satelliteAccessConfigFile:[B

    goto :goto_0

    .line 645
    :cond_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->isAllowed:Z

    goto :goto_0

    .line 629
    :cond_2b
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 630
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->countryCodes:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_36

    move v3, v2

    goto :goto_37

    :cond_36
    array-length v3, v1

    :goto_37
    add-int/2addr v0, v3

    .line 631
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_3f

    .line 633
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3f
    :goto_3f
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4f

    .line 636
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 637
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 640
    :cond_4f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 641
    iput-object v4, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->countryCodes:[Ljava/lang/String;

    goto :goto_0

    .line 624
    :cond_58
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->s2CellFile:[B

    goto :goto_0

    :cond_5f
    :goto_5f
    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->s2CellFile:[B

    sget-object v1, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_10

    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->s2CellFile:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 559
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->countryCodes:[Ljava/lang/String;

    if-eqz v0, :cond_28

    array-length v0, v0

    if-lez v0, :cond_28

    const/4 v0, 0x0

    .line 560
    :goto_18
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->countryCodes:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_28

    .line 561
    aget-object v1, v1, v0

    if-eqz v1, :cond_25

    const/4 v2, 0x2

    .line 563
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 567
    :cond_28
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->isAllowed:Z

    if-eqz v0, :cond_30

    const/4 v1, 0x3

    .line 568
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 570
    :cond_30
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->satelliteAccessConfigFile:[B

    sget-object v1, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_40

    const/4 v0, 0x4

    .line 571
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;->satelliteAccessConfigFile:[B

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 573
    :cond_40
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
