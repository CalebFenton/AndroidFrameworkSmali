.class public final Landroid/aconfig/nano/Aconfig$parsed_flag;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "Aconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfig/nano/Aconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "parsed_flag"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flag;


# instance fields
.field public blacklist bug:[Ljava/lang/String;

.field public blacklist container:Ljava/lang/String;

.field public blacklist description:Ljava/lang/String;

.field public blacklist isExported:Z

.field public blacklist isFixedReadOnly:Z

.field public blacklist metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

.field public blacklist name:Ljava/lang/String;

.field public blacklist namespace:Ljava/lang/String;

.field public blacklist package_:Ljava/lang/String;

.field public blacklist permission:I

.field public blacklist state:I

.field public blacklist trace:[Landroid/aconfig/nano/Aconfig$tracepoint;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 887
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

    .line 888
    invoke-virtual {p0}, Landroid/aconfig/nano/Aconfig$parsed_flag;->clear()Landroid/aconfig/nano/Aconfig$parsed_flag;

    .line 889
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/aconfig/nano/Aconfig$parsed_flag;
    .registers 2

    .line 840
    sget-object v0, Landroid/aconfig/nano/Aconfig$parsed_flag;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    if-nez v0, :cond_15

    .line 841
    sget-object v0, Landroid/internal/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_7
    sget-object v1, Landroid/aconfig/nano/Aconfig$parsed_flag;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    if-nez v1, :cond_10

    .line 844
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/aconfig/nano/Aconfig$parsed_flag;

    sput-object v1, Landroid/aconfig/nano/Aconfig$parsed_flag;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    .line 846
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 848
    :cond_15
    :goto_15
    sget-object v0, Landroid/aconfig/nano/Aconfig$parsed_flag;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flag;
    .registers 2
    .param p0, "input"    # Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    new-instance v0, Landroid/aconfig/nano/Aconfig$parsed_flag;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$parsed_flag;-><init>()V

    invoke-virtual {v0, p0}, Landroid/aconfig/nano/Aconfig$parsed_flag;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flag;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/aconfig/nano/Aconfig$parsed_flag;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1142
    new-instance v0, Landroid/aconfig/nano/Aconfig$parsed_flag;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$parsed_flag;-><init>()V

    invoke-static {v0, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/MessageNano;[B)Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/aconfig/nano/Aconfig$parsed_flag;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Landroid/aconfig/nano/Aconfig$parsed_flag;
    .registers 3

    .line 892
    const-string v0, ""

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    .line 893
    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    .line 894
    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->namespace:Ljava/lang/String;

    .line 895
    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->description:Ljava/lang/String;

    .line 896
    sget-object v1, Landroid/internal/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    .line 897
    const/4 v1, 0x1

    iput v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    .line 898
    iput v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->permission:I

    .line 899
    invoke-static {}, Landroid/aconfig/nano/Aconfig$tracepoint;->emptyArray()[Landroid/aconfig/nano/Aconfig$tracepoint;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    .line 900
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isFixedReadOnly:Z

    .line 901
    iput-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isExported:Z

    .line 902
    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->container:Ljava/lang/String;

    .line 903
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    .line 904
    const/4 v0, -0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->cachedSize:I

    .line 905
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 9

    .line 962
    invoke-super {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 963
    .local v0, "size":I
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_16

    .line 964
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    .line 965
    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 967
    :cond_16
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 968
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    .line 969
    const/4 v4, 0x2

    invoke-static {v4, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 971
    :cond_26
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->namespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 972
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->namespace:Ljava/lang/String;

    .line 973
    const/4 v4, 0x3

    invoke-static {v4, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 975
    :cond_36
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 976
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->description:Ljava/lang/String;

    .line 977
    const/4 v4, 0x4

    invoke-static {v4, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 979
    :cond_46
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    if-eqz v1, :cond_6c

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_6c

    .line 980
    const/4 v1, 0x0

    .line 981
    .local v1, "dataCount":I
    const/4 v4, 0x0

    .line 982
    .local v4, "dataSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_52
    iget-object v6, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_68

    .line 983
    iget-object v6, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    aget-object v6, v6, v5

    .line 984
    .local v6, "element":Ljava/lang/String;
    if-eqz v6, :cond_65

    .line 985
    add-int/lit8 v1, v1, 0x1

    .line 986
    nop

    .line 987
    invoke-static {v6}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    .line 982
    .end local v6    # "element":Ljava/lang/String;
    :cond_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    .line 990
    .end local v5    # "i":I
    :cond_68
    add-int/2addr v0, v4

    .line 991
    mul-int/lit8 v5, v1, 0x1

    add-int/2addr v0, v5

    .line 993
    .end local v1    # "dataCount":I
    .end local v4    # "dataSize":I
    :cond_6c
    iget v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    if-eq v1, v3, :cond_78

    .line 994
    iget v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    .line 995
    const/4 v4, 0x6

    invoke-static {v4, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 997
    :cond_78
    iget v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->permission:I

    if-eq v1, v3, :cond_84

    .line 998
    iget v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->permission:I

    .line 999
    const/4 v3, 0x7

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1001
    :cond_84
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    if-eqz v1, :cond_a4

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    array-length v1, v1

    if-lez v1, :cond_a4

    .line 1002
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8e
    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    array-length v3, v3

    if-ge v1, v3, :cond_a4

    .line 1003
    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    aget-object v3, v3, v1

    .line 1004
    .local v3, "element":Landroid/aconfig/nano/Aconfig$tracepoint;
    if-eqz v3, :cond_a1

    .line 1005
    nop

    .line 1006
    const/16 v4, 0x8

    invoke-static {v4, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILandroid/internal/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1002
    .end local v3    # "element":Landroid/aconfig/nano/Aconfig$tracepoint;
    :cond_a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    .line 1010
    .end local v1    # "i":I
    :cond_a4
    iget-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isFixedReadOnly:Z

    if-eqz v1, :cond_b1

    .line 1011
    iget-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isFixedReadOnly:Z

    .line 1012
    const/16 v3, 0x9

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1014
    :cond_b1
    iget-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isExported:Z

    if-eqz v1, :cond_be

    .line 1015
    iget-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isExported:Z

    .line 1016
    const/16 v3, 0xa

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1018
    :cond_be
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->container:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cf

    .line 1019
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->container:Ljava/lang/String;

    .line 1020
    const/16 v2, 0xb

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1022
    :cond_cf
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    if-eqz v1, :cond_dc

    .line 1023
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    .line 1024
    const/16 v2, 0xc

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILandroid/internal/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1026
    :cond_dc
    return v0
.end method

.method public blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flag;
    .registers 8
    .param p1, "input"    # Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1034
    nop

    :goto_1
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1035
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_e6

    .line 1039
    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_e4

    .line 1040
    return-object p0

    .line 1130
    :sswitch_10
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    if-nez v1, :cond_1b

    .line 1131
    new-instance v1, Landroid/aconfig/nano/Aconfig$flag_metadata;

    invoke-direct {v1}, Landroid/aconfig/nano/Aconfig$flag_metadata;-><init>()V

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    .line 1133
    :cond_1b
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    invoke-virtual {p1, v1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_e4

    .line 1126
    :sswitch_22
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->container:Ljava/lang/String;

    .line 1127
    goto/16 :goto_e4

    .line 1122
    :sswitch_2a
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isExported:Z

    .line 1123
    goto/16 :goto_e4

    .line 1118
    :sswitch_32
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isFixedReadOnly:Z

    .line 1119
    goto/16 :goto_e4

    .line 1098
    :sswitch_3a
    nop

    .line 1099
    const/16 v2, 0x42

    invoke-static {p1, v2}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1100
    .local v2, "arrayLength":I
    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    if-nez v3, :cond_47

    move v3, v1

    goto :goto_4a

    :cond_47
    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    array-length v3, v3

    .line 1101
    .local v3, "i":I
    :goto_4a
    add-int v4, v3, v2

    new-array v4, v4, [Landroid/aconfig/nano/Aconfig$tracepoint;

    .line 1103
    .local v4, "newArray":[Landroid/aconfig/nano/Aconfig$tracepoint;
    if-eqz v3, :cond_55

    .line 1104
    iget-object v5, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1106
    :cond_55
    :goto_55
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_6c

    .line 1107
    new-instance v1, Landroid/aconfig/nano/Aconfig$tracepoint;

    invoke-direct {v1}, Landroid/aconfig/nano/Aconfig$tracepoint;-><init>()V

    aput-object v1, v4, v3

    .line 1108
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 1109
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1106
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 1112
    :cond_6c
    new-instance v1, Landroid/aconfig/nano/Aconfig$tracepoint;

    invoke-direct {v1}, Landroid/aconfig/nano/Aconfig$tracepoint;-><init>()V

    aput-object v1, v4, v3

    .line 1113
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 1114
    iput-object v4, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    .line 1115
    goto/16 :goto_e4

    .line 1088
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Landroid/aconfig/nano/Aconfig$tracepoint;
    :sswitch_7c
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1089
    .local v1, "value":I
    packed-switch v1, :pswitch_data_11c

    goto :goto_86

    .line 1092
    :pswitch_84
    iput v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->permission:I

    .line 1095
    :goto_86
    goto :goto_e4

    .line 1078
    .end local v1    # "value":I
    :sswitch_87
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1079
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_124

    goto :goto_91

    .line 1082
    :pswitch_8f
    iput v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    .line 1085
    :goto_91
    goto :goto_e4

    .line 1061
    .end local v1    # "value":I
    :sswitch_92
    nop

    .line 1062
    const/16 v2, 0x2a

    invoke-static {p1, v2}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1063
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    if-nez v3, :cond_9f

    move v3, v1

    goto :goto_a2

    :cond_9f
    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    array-length v3, v3

    .line 1064
    .restart local v3    # "i":I
    :goto_a2
    add-int v4, v3, v2

    new-array v4, v4, [Ljava/lang/String;

    .line 1065
    .local v4, "newArray":[Ljava/lang/String;
    if-eqz v3, :cond_ad

    .line 1066
    iget-object v5, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1068
    :cond_ad
    :goto_ad
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_be

    .line 1069
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 1070
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1068
    add-int/lit8 v3, v3, 0x1

    goto :goto_ad

    .line 1073
    :cond_be
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 1074
    iput-object v4, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    .line 1075
    goto :goto_e4

    .line 1057
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :sswitch_c7
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->description:Ljava/lang/String;

    .line 1058
    goto :goto_e4

    .line 1053
    :sswitch_ce
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->namespace:Ljava/lang/String;

    .line 1054
    goto :goto_e4

    .line 1049
    :sswitch_d5
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    .line 1050
    goto :goto_e4

    .line 1045
    :sswitch_dc
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    .line 1046
    goto :goto_e4

    .line 1037
    :sswitch_e3
    return-object p0

    .line 1137
    .end local v0    # "tag":I
    :cond_e4
    :goto_e4
    goto/16 :goto_1

    :sswitch_data_e6
    .sparse-switch
        0x0 -> :sswitch_e3
        0xa -> :sswitch_dc
        0x12 -> :sswitch_d5
        0x1a -> :sswitch_ce
        0x22 -> :sswitch_c7
        0x2a -> :sswitch_92
        0x30 -> :sswitch_87
        0x38 -> :sswitch_7c
        0x42 -> :sswitch_3a
        0x48 -> :sswitch_32
        0x50 -> :sswitch_2a
        0x5a -> :sswitch_22
        0x62 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_84
        :pswitch_84
    .end packed-switch

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_8f
    .end packed-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/internal/framework/protobuf/nano/MessageNano;
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

    .line 834
    invoke-virtual {p0, p1}, Landroid/aconfig/nano/Aconfig$parsed_flag;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flag;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 7
    .param p1, "output"    # Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 911
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 912
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 914
    :cond_10
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 915
    const/4 v0, 0x2

    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 917
    :cond_1e
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 918
    const/4 v0, 0x3

    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->namespace:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 920
    :cond_2c
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 921
    const/4 v0, 0x4

    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 923
    :cond_3a
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    if-eqz v0, :cond_56

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_56

    .line 924
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_44
    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_56

    .line 925
    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 926
    .local v3, "element":Ljava/lang/String;
    if-eqz v3, :cond_53

    .line 927
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 924
    .end local v3    # "element":Ljava/lang/String;
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 931
    .end local v0    # "i":I
    :cond_56
    iget v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    if-eq v0, v2, :cond_60

    .line 932
    const/4 v0, 0x6

    iget v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    invoke-virtual {p1, v0, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 934
    :cond_60
    iget v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->permission:I

    if-eq v0, v2, :cond_6a

    .line 935
    const/4 v0, 0x7

    iget v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->permission:I

    invoke-virtual {p1, v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 937
    :cond_6a
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    if-eqz v0, :cond_87

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    array-length v0, v0

    if-lez v0, :cond_87

    .line 938
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_74
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    array-length v2, v2

    if-ge v0, v2, :cond_87

    .line 939
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    aget-object v2, v2, v0

    .line 940
    .local v2, "element":Landroid/aconfig/nano/Aconfig$tracepoint;
    if-eqz v2, :cond_84

    .line 941
    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILandroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 938
    .end local v2    # "element":Landroid/aconfig/nano/Aconfig$tracepoint;
    :cond_84
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    .line 945
    .end local v0    # "i":I
    :cond_87
    iget-boolean v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isFixedReadOnly:Z

    if-eqz v0, :cond_92

    .line 946
    const/16 v0, 0x9

    iget-boolean v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isFixedReadOnly:Z

    invoke-virtual {p1, v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 948
    :cond_92
    iget-boolean v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isExported:Z

    if-eqz v0, :cond_9d

    .line 949
    const/16 v0, 0xa

    iget-boolean v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isExported:Z

    invoke-virtual {p1, v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 951
    :cond_9d
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->container:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ac

    .line 952
    const/16 v0, 0xb

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->container:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 954
    :cond_ac
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    if-eqz v0, :cond_b7

    .line 955
    const/16 v0, 0xc

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILandroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 957
    :cond_b7
    invoke-super {p0, p1}, Landroid/internal/framework/protobuf/nano/MessageNano;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 958
    return-void
.end method
