.class public final Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsReasonInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;


# instance fields
.field private bitField0_:I

.field private extraCode_:I

.field private extraMessage_:Ljava/lang/String;

.field private reasonCode_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2030
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 2031
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->clear()Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@6
    .line 2030
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 2

    #@0
    .prologue
    .line 1955
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1956
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 1958
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1959
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 1963
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@13
    return-object v0

    #@14
    .line 1956
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2119
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 2113
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2035
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@3
    .line 2036
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->reasonCode_:I

    #@5
    .line 2037
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraCode_:I

    #@7
    .line 2038
    const-string/jumbo v0, ""

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraMessage_:Ljava/lang/String;

    #@c
    .line 2039
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@f
    .line 2040
    const/4 v0, -0x1

    #@10
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->cachedSize:I

    #@12
    .line 2041
    return-object p0
.end method

.method public clearExtraCode()Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 1

    #@0
    .prologue
    .line 2001
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraCode_:I

    #@3
    .line 2002
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x3

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@9
    .line 2003
    return-object p0
.end method

.method public clearExtraMessage()Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 1

    #@0
    .prologue
    .line 2023
    const-string/jumbo v0, ""

    #@3
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraMessage_:Ljava/lang/String;

    #@5
    .line 2024
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@7
    and-int/lit8 v0, v0, -0x5

    #@9
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@b
    .line 2025
    return-object p0
.end method

.method public clearReasonCode()Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 1

    #@0
    .prologue
    .line 1982
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->reasonCode_:I

    #@3
    .line 1983
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x2

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@9
    .line 1984
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 2061
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 2062
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@6
    and-int/lit8 v1, v1, 0x1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2064
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->reasonCode_:I

    #@c
    const/4 v2, 0x1

    #@d
    .line 2063
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    .line 2066
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@14
    and-int/lit8 v1, v1, 0x2

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 2068
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraCode_:I

    #@1a
    const/4 v2, 0x2

    #@1b
    .line 2067
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 2070
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@22
    and-int/lit8 v1, v1, 0x4

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 2072
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraMessage_:Ljava/lang/String;

    #@28
    const/4 v2, 0x3

    #@29
    .line 2071
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    #@2c
    move-result v1

    #@2d
    add-int/2addr v0, v1

    #@2e
    .line 2074
    :cond_2
    return v0
.end method

.method public getExtraCode()I
    .locals 1

    #@0
    .prologue
    .line 1990
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraCode_:I

    #@2
    return v0
.end method

.method public getExtraMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2009
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraMessage_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getReasonCode()I
    .locals 1

    #@0
    .prologue
    .line 1971
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->reasonCode_:I

    #@2
    return v0
.end method

.method public hasExtraCode()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1998
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasExtraMessage()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2020
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasReasonCode()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1979
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2078
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2082
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v0

    #@4
    .line 2083
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 2087
    invoke-super {p0, p1, v0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 2088
    return-object p0

    #@e
    .line 2085
    :sswitch_0
    return-object p0

    #@f
    .line 2093
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@12
    move-result v1

    #@13
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->reasonCode_:I

    #@15
    .line 2094
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@17
    or-int/lit8 v1, v1, 0x1

    #@19
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@1b
    goto :goto_0

    #@1c
    .line 2098
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1f
    move-result v1

    #@20
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraCode_:I

    #@22
    .line 2099
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@24
    or-int/lit8 v1, v1, 0x2

    #@26
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@28
    goto :goto_0

    #@29
    .line 2103
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraMessage_:Ljava/lang/String;

    #@2f
    .line 2104
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@31
    or-int/lit8 v1, v1, 0x4

    #@33
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@35
    goto :goto_0

    #@36
    .line 2083
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setExtraCode(I)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1993
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraCode_:I

    #@2
    .line 1994
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@8
    .line 1995
    return-object p0
.end method

.method public setExtraMessage(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2012
    if-nez p1, :cond_0

    #@2
    .line 2013
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2015
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraMessage_:Ljava/lang/String;

    #@a
    .line 2016
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@c
    or-int/lit8 v0, v0, 0x4

    #@e
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@10
    .line 2017
    return-object p0
.end method

.method public setReasonCode(I)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1974
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->reasonCode_:I

    #@2
    .line 1975
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@8
    .line 1976
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2047
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2048
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->reasonCode_:I

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@c
    .line 2050
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@e
    and-int/lit8 v0, v0, 0x2

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 2051
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraCode_:I

    #@14
    const/4 v1, 0x2

    #@15
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@18
    .line 2053
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->bitField0_:I

    #@1a
    and-int/lit8 v0, v0, 0x4

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 2054
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->extraMessage_:Ljava/lang/String;

    #@20
    const/4 v1, 0x3

    #@21
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    #@24
    .line 2056
    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@27
    .line 2046
    return-void
.end method
