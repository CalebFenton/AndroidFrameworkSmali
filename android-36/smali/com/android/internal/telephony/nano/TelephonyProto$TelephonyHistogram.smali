.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;


# instance fields
.field public blacklist avgTimeMillis:I

.field public blacklist bucketCount:I

.field public blacklist bucketCounters:[I

.field public blacklist bucketEndPoints:[I

.field public blacklist category:I

.field public blacklist count:I

.field public blacklist id:I

.field public blacklist maxTimeMillis:I

.field public blacklist minTimeMillis:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 680
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 681
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    .registers 2

    .line 642
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    if-nez v0, :cond_17

    .line 643
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 645
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 646
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 648
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 650
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 925
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 919
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    .registers 2

    const/4 v0, 0x0

    .line 685
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->category:I

    .line 686
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->id:I

    .line 687
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->minTimeMillis:I

    .line 688
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->maxTimeMillis:I

    .line 689
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->avgTimeMillis:I

    .line 690
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->count:I

    .line 691
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCount:I

    .line 692
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    .line 693
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    const/4 v0, 0x0

    .line 694
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 695
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 738
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 739
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->category:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 741
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 743
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->id:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 745
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 747
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->minTimeMillis:I

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 749
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 751
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->maxTimeMillis:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 753
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 755
    :cond_2c
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->avgTimeMillis:I

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 757
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 759
    :cond_36
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->count:I

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 761
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 763
    :cond_40
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCount:I

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 765
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 767
    :cond_4a
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_66

    array-length v1, v1

    if-lez v1, :cond_66

    move v1, v2

    move v3, v1

    .line 769
    :goto_54
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    array-length v5, v4

    if-ge v1, v5, :cond_63

    .line 770
    aget v4, v4, v1

    .line 772
    invoke-static {v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :cond_63
    add-int/2addr v0, v3

    .line 775
    array-length v1, v4

    add-int/2addr v0, v1

    .line 777
    :cond_66
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    if-eqz v1, :cond_80

    array-length v1, v1

    if-lez v1, :cond_80

    move v1, v2

    .line 779
    :goto_6e
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    array-length v4, v3

    if-ge v2, v4, :cond_7d

    .line 780
    aget v3, v3, v2

    .line 782
    invoke-static {v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    :cond_7d
    add-int/2addr v0, v1

    .line 785
    array-length p0, v3

    add-int/2addr v0, p0

    :cond_80
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 795
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_120

    .line 800
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_11e

    .line 891
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 892
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 895
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 896
    :goto_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_29

    .line 897
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 900
    :cond_29
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 901
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    if-nez v2, :cond_32

    move v4, v1

    goto :goto_33

    :cond_32
    array-length v4, v2

    :goto_33
    add-int/2addr v3, v4

    .line 902
    new-array v5, v3, [I

    if-eqz v4, :cond_3b

    .line 904
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3b
    :goto_3b
    if-ge v4, v3, :cond_46

    .line 907
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 909
    :cond_46
    iput-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    .line 910
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    :sswitch_4c
    const/16 v0, 0x48

    .line 875
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 876
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    if-nez v2, :cond_58

    move v3, v1

    goto :goto_59

    :cond_58
    array-length v3, v2

    :goto_59
    add-int/2addr v0, v3

    .line 877
    new-array v4, v0, [I

    if-eqz v3, :cond_61

    .line 879
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_61
    :goto_61
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_71

    .line 882
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 883
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 886
    :cond_71
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    aput v0, v4, v3

    .line 887
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    goto :goto_0

    .line 851
    :sswitch_7a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 852
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 855
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 856
    :goto_87
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_93

    .line 857
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    .line 860
    :cond_93
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 861
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    if-nez v2, :cond_9c

    move v4, v1

    goto :goto_9d

    :cond_9c
    array-length v4, v2

    :goto_9d
    add-int/2addr v3, v4

    .line 862
    new-array v5, v3, [I

    if-eqz v4, :cond_a5

    .line 864
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a5
    :goto_a5
    if-ge v4, v3, :cond_b0

    .line 867
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a5

    .line 869
    :cond_b0
    iput-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    .line 870
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_b7
    const/16 v0, 0x40

    .line 835
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 836
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    if-nez v2, :cond_c3

    move v3, v1

    goto :goto_c4

    :cond_c3
    array-length v3, v2

    :goto_c4
    add-int/2addr v0, v3

    .line 837
    new-array v4, v0, [I

    if-eqz v3, :cond_cc

    .line 839
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_cc
    :goto_cc
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_dc

    .line 842
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 843
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_cc

    .line 846
    :cond_dc
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    aput v0, v4, v3

    .line 847
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    goto/16 :goto_0

    .line 830
    :sswitch_e6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCount:I

    goto/16 :goto_0

    .line 826
    :sswitch_ee
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->count:I

    goto/16 :goto_0

    .line 822
    :sswitch_f6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->avgTimeMillis:I

    goto/16 :goto_0

    .line 818
    :sswitch_fe
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->maxTimeMillis:I

    goto/16 :goto_0

    .line 814
    :sswitch_106
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->minTimeMillis:I

    goto/16 :goto_0

    .line 810
    :sswitch_10e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->id:I

    goto/16 :goto_0

    .line 806
    :sswitch_116
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->category:I

    goto/16 :goto_0

    :goto_11e
    :sswitch_11e
    return-object p0

    nop

    :sswitch_data_120
    .sparse-switch
        0x0 -> :sswitch_11e
        0x8 -> :sswitch_116
        0x10 -> :sswitch_10e
        0x18 -> :sswitch_106
        0x20 -> :sswitch_fe
        0x28 -> :sswitch_f6
        0x30 -> :sswitch_ee
        0x38 -> :sswitch_e6
        0x40 -> :sswitch_b7
        0x42 -> :sswitch_7a
        0x48 -> :sswitch_4c
        0x4a -> :sswitch_10
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

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 702
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->category:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 703
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 705
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->id:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 706
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 708
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->minTimeMillis:I

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 709
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 711
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->maxTimeMillis:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 712
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 714
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->avgTimeMillis:I

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 715
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 717
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->count:I

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 718
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 720
    :cond_30
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCount:I

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 721
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 723
    :cond_38
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    array-length v0, v0

    if-lez v0, :cond_50

    move v0, v1

    .line 724
    :goto_41
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    array-length v3, v2

    if-ge v0, v3, :cond_50

    const/16 v3, 0x8

    .line 725
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 728
    :cond_50
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    if-eqz v0, :cond_66

    array-length v0, v0

    if-lez v0, :cond_66

    .line 729
    :goto_57
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    array-length v2, v0

    if-ge v1, v2, :cond_66

    const/16 v2, 0x9

    .line 730
    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 733
    :cond_66
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
