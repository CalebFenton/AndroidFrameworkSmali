.class public final Landroid/ota/nano/OtaPackageMetadata$PartitionState;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "OtaPackageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ota/nano/OtaPackageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PartitionState"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;


# instance fields
.field public blacklist build:[Ljava/lang/String;

.field public blacklist device:[Ljava/lang/String;

.field public blacklist partitionName:Ljava/lang/String;

.field public blacklist version:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 38
    invoke-virtual {p0}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->clear()Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    .line 39
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .registers 2

    .line 14
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-nez v0, :cond_15

    .line 15
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_7
    sget-object v1, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-nez v1, :cond_10

    .line 18
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    sput-object v1, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    .line 20
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 22
    :cond_15
    :goto_15
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;-><init>()V

    invoke-virtual {v0, p0}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 183
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .registers 3

    .line 42
    const-string v0, ""

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    .line 43
    sget-object v1, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    .line 44
    sget-object v1, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    .line 45
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->cachedSize:I

    .line 47
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 8

    .line 80
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 81
    .local v0, "size":I
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 82
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    .line 83
    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_16
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_3c

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, "dataCount":I
    const/4 v3, 0x0

    .line 88
    .local v3, "dataSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_22
    iget-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_38

    .line 89
    iget-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    aget-object v5, v5, v4

    .line 90
    .local v5, "element":Ljava/lang/String;
    if-eqz v5, :cond_35

    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    nop

    .line 93
    invoke-static {v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    .line 88
    .end local v5    # "element":Ljava/lang/String;
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 96
    .end local v4    # "i":I
    :cond_38
    add-int/2addr v0, v3

    .line 97
    mul-int/lit8 v4, v1, 0x1

    add-int/2addr v0, v4

    .line 99
    .end local v1    # "dataCount":I
    .end local v3    # "dataSize":I
    :cond_3c
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    if-eqz v1, :cond_62

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_62

    .line 100
    const/4 v1, 0x0

    .line 101
    .restart local v1    # "dataCount":I
    const/4 v3, 0x0

    .line 102
    .restart local v3    # "dataSize":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_48
    iget-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_5e

    .line 103
    iget-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    aget-object v5, v5, v4

    .line 104
    .restart local v5    # "element":Ljava/lang/String;
    if-eqz v5, :cond_5b

    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 106
    nop

    .line 107
    invoke-static {v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    .line 102
    .end local v5    # "element":Ljava/lang/String;
    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 110
    .end local v4    # "i":I
    :cond_5e
    add-int/2addr v0, v3

    .line 111
    mul-int/lit8 v4, v1, 0x1

    add-int/2addr v0, v4

    .line 113
    .end local v1    # "dataCount":I
    .end local v3    # "dataSize":I
    :cond_62
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    .line 114
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    .line 115
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_72
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .registers 8
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 126
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_8c

    .line 130
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 131
    return-object p0

    .line 174
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    goto/16 :goto_8a

    .line 157
    :sswitch_18
    nop

    .line 158
    const/16 v2, 0x1a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 159
    .local v2, "arrayLength":I
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    if-nez v3, :cond_25

    move v3, v1

    goto :goto_28

    :cond_25
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    array-length v3, v3

    .line 160
    .local v3, "i":I
    :goto_28
    add-int v4, v3, v2

    new-array v4, v4, [Ljava/lang/String;

    .line 161
    .local v4, "newArray":[Ljava/lang/String;
    if-eqz v3, :cond_33

    .line 162
    iget-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    :cond_33
    :goto_33
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_44

    .line 165
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 166
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 169
    :cond_44
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 170
    iput-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    .line 171
    goto :goto_8a

    .line 140
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :sswitch_4d
    nop

    .line 141
    const/16 v2, 0x12

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 142
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    if-nez v3, :cond_5a

    move v3, v1

    goto :goto_5d

    :cond_5a
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    array-length v3, v3

    .line 143
    .restart local v3    # "i":I
    :goto_5d
    add-int v4, v3, v2

    new-array v4, v4, [Ljava/lang/String;

    .line 144
    .restart local v4    # "newArray":[Ljava/lang/String;
    if-eqz v3, :cond_68

    .line 145
    iget-object v5, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    :cond_68
    :goto_68
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_79

    .line 148
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 149
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 152
    :cond_79
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 153
    iput-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    .line 154
    goto :goto_8a

    .line 136
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :sswitch_82
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    .line 137
    goto :goto_8a

    .line 128
    :sswitch_89
    return-object p0

    .line 178
    .end local v0    # "tag":I
    :cond_8a
    :goto_8a
    goto/16 :goto_1

    :sswitch_data_8c
    .sparse-switch
        0x0 -> :sswitch_89
        0xa -> :sswitch_82
        0x12 -> :sswitch_4d
        0x1a -> :sswitch_18
        0x22 -> :sswitch_10
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
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

    .line 8
    invoke-virtual {p0, p1}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 54
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 56
    :cond_10
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2c

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2c

    .line 58
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 59
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_29

    .line 60
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 57
    .end local v2    # "element":Ljava/lang/String;
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 64
    .end local v0    # "i":I
    :cond_2c
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_48

    .line 65
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_36
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_48

    .line 66
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 67
    .restart local v2    # "element":Ljava/lang/String;
    if-eqz v2, :cond_45

    .line 68
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 65
    .end local v2    # "element":Ljava/lang/String;
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 72
    .end local v0    # "i":I
    :cond_48
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 73
    const/4 v0, 0x4

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 75
    :cond_56
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 76
    return-void
.end method
