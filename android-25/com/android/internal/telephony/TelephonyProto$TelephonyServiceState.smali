.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyServiceState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$RoamingType;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;


# instance fields
.field private bitField0_:I

.field public dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

.field private dataRat_:I

.field private dataRoamingType_:I

.field public voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

.field private voiceRat_:I

.field private voiceRoamingType_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1731
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 1732
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@6
    .line 1731
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 2

    #@0
    .prologue
    .line 1634
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1635
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 1637
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1638
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 1642
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@13
    return-object v0

    #@14
    .line 1635
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1945
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 1939
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 1736
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@4
    .line 1737
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@6
    .line 1738
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@8
    .line 1739
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRoamingType_:I

    #@a
    .line 1740
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRoamingType_:I

    #@c
    .line 1741
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRat_:I

    #@e
    .line 1742
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRat_:I

    #@10
    .line 1743
    iput-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@12
    .line 1744
    const/4 v0, -0x1

    #@13
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->cachedSize:I

    #@15
    .line 1745
    return-object p0
.end method

.method public clearDataRat()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1

    #@0
    .prologue
    .line 1724
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRat_:I

    #@3
    .line 1725
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x9

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@9
    .line 1726
    return-object p0
.end method

.method public clearDataRoamingType()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1

    #@0
    .prologue
    .line 1686
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRoamingType_:I

    #@3
    .line 1687
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x3

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@9
    .line 1688
    return-object p0
.end method

.method public clearVoiceRat()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1

    #@0
    .prologue
    .line 1705
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRat_:I

    #@3
    .line 1706
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x5

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@9
    .line 1707
    return-object p0
.end method

.method public clearVoiceRoamingType()Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1

    #@0
    .prologue
    .line 1667
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRoamingType_:I

    #@3
    .line 1668
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x2

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@9
    .line 1669
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 1774
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 1775
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1777
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@a
    const/4 v2, 0x1

    #@b
    .line 1776
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@e
    move-result v1

    #@f
    add-int/2addr v0, v1

    #@10
    .line 1779
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1781
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@16
    const/4 v2, 0x2

    #@17
    .line 1780
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@1a
    move-result v1

    #@1b
    add-int/2addr v0, v1

    #@1c
    .line 1783
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@1e
    and-int/lit8 v1, v1, 0x1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 1785
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRoamingType_:I

    #@24
    const/4 v2, 0x3

    #@25
    .line 1784
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@28
    move-result v1

    #@29
    add-int/2addr v0, v1

    #@2a
    .line 1787
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@2c
    and-int/lit8 v1, v1, 0x2

    #@2e
    if-eqz v1, :cond_3

    #@30
    .line 1789
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRoamingType_:I

    #@32
    const/4 v2, 0x4

    #@33
    .line 1788
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@36
    move-result v1

    #@37
    add-int/2addr v0, v1

    #@38
    .line 1791
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@3a
    and-int/lit8 v1, v1, 0x4

    #@3c
    if-eqz v1, :cond_4

    #@3e
    .line 1793
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRat_:I

    #@40
    const/4 v2, 0x5

    #@41
    .line 1792
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@44
    move-result v1

    #@45
    add-int/2addr v0, v1

    #@46
    .line 1795
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@48
    and-int/lit8 v1, v1, 0x8

    #@4a
    if-eqz v1, :cond_5

    #@4c
    .line 1797
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRat_:I

    #@4e
    const/4 v2, 0x6

    #@4f
    .line 1796
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@52
    move-result v1

    #@53
    add-int/2addr v0, v1

    #@54
    .line 1799
    :cond_5
    return v0
.end method

.method public getDataRat()I
    .locals 1

    #@0
    .prologue
    .line 1713
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRat_:I

    #@2
    return v0
.end method

.method public getDataRoamingType()I
    .locals 1

    #@0
    .prologue
    .line 1675
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRoamingType_:I

    #@2
    return v0
.end method

.method public getVoiceRat()I
    .locals 1

    #@0
    .prologue
    .line 1694
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRat_:I

    #@2
    return v0
.end method

.method public getVoiceRoamingType()I
    .locals 1

    #@0
    .prologue
    .line 1656
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRoamingType_:I

    #@2
    return v0
.end method

.method public hasDataRat()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1721
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x8

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasDataRoamingType()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1683
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

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

.method public hasVoiceRat()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1702
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

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

.method public hasVoiceRoamingType()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1664
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

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
    .line 1803
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1807
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v1

    #@4
    .line 1808
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    #@7
    .line 1812
    invoke-super {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 1813
    return-object p0

    #@e
    .line 1810
    :sswitch_0
    return-object p0

    #@f
    .line 1818
    :sswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@11
    if-nez v3, :cond_1

    #@13
    .line 1819
    new-instance v3, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@15
    invoke-direct {v3}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    #@18
    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@1a
    .line 1821
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@1c
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@1f
    goto :goto_0

    #@20
    .line 1825
    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@22
    if-nez v3, :cond_2

    #@24
    .line 1826
    new-instance v3, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@26
    invoke-direct {v3}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    #@29
    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@2b
    .line 1828
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@2d
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@30
    goto :goto_0

    #@31
    .line 1832
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@34
    move-result v0

    #@35
    .line 1833
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@38
    move-result v2

    #@39
    .line 1834
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    #@3c
    .line 1843
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@3f
    .line 1844
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@42
    goto :goto_0

    #@43
    .line 1839
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRoamingType_:I

    #@45
    .line 1840
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@47
    or-int/lit8 v3, v3, 0x1

    #@49
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@4b
    goto :goto_0

    #@4c
    .line 1850
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@4f
    move-result v0

    #@50
    .line 1851
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@53
    move-result v2

    #@54
    .line 1852
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_1

    #@57
    .line 1861
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@5a
    .line 1862
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@5d
    goto :goto_0

    #@5e
    .line 1857
    :pswitch_1
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRoamingType_:I

    #@60
    .line 1858
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@62
    or-int/lit8 v3, v3, 0x2

    #@64
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@66
    goto :goto_0

    #@67
    .line 1868
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@6a
    move-result v0

    #@6b
    .line 1869
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@6e
    move-result v2

    #@6f
    .line 1870
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_2

    #@72
    .line 1894
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@75
    .line 1895
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@78
    goto :goto_0

    #@79
    .line 1890
    :pswitch_2
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRat_:I

    #@7b
    .line 1891
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@7d
    or-int/lit8 v3, v3, 0x4

    #@7f
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@81
    goto/16 :goto_0

    #@83
    .line 1901
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@86
    move-result v0

    #@87
    .line 1902
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@8a
    move-result v2

    #@8b
    .line 1903
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_3

    #@8e
    .line 1927
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@91
    .line 1928
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@94
    goto/16 :goto_0

    #@96
    .line 1923
    :pswitch_3
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRat_:I

    #@98
    .line 1924
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@9a
    or-int/lit8 v3, v3, 0x8

    #@9c
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@9e
    goto/16 :goto_0

    #@a0
    .line 1808
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch

    #@be
    .line 1834
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@ca
    .line 1852
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    #@d6
    .line 1870
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    #@100
    .line 1903
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setDataRat(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1716
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRat_:I

    #@2
    .line 1717
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x8

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@8
    .line 1718
    return-object p0
.end method

.method public setDataRoamingType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1678
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRoamingType_:I

    #@2
    .line 1679
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@8
    .line 1680
    return-object p0
.end method

.method public setVoiceRat(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1697
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRat_:I

    #@2
    .line 1698
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x4

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@8
    .line 1699
    return-object p0
.end method

.method public setVoiceRoamingType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1659
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRoamingType_:I

    #@2
    .line 1660
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@8
    .line 1661
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
    .line 1751
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1752
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@a
    .line 1754
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1755
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@10
    const/4 v1, 0x2

    #@11
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    #@14
    .line 1757
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@16
    and-int/lit8 v0, v0, 0x1

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 1758
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRoamingType_:I

    #@1c
    const/4 v1, 0x3

    #@1d
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@20
    .line 1760
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@22
    and-int/lit8 v0, v0, 0x2

    #@24
    if-eqz v0, :cond_3

    #@26
    .line 1761
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRoamingType_:I

    #@28
    const/4 v1, 0x4

    #@29
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@2c
    .line 1763
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@2e
    and-int/lit8 v0, v0, 0x4

    #@30
    if-eqz v0, :cond_4

    #@32
    .line 1764
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceRat_:I

    #@34
    const/4 v1, 0x5

    #@35
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@38
    .line 1766
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->bitField0_:I

    #@3a
    and-int/lit8 v0, v0, 0x8

    #@3c
    if-eqz v0, :cond_5

    #@3e
    .line 1767
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataRat_:I

    #@40
    const/4 v1, 0x6

    #@41
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@44
    .line 1769
    :cond_5
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@47
    .line 1750
    return-void
.end method
