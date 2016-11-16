.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RilSetupDataCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall$RilDataProfile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;


# instance fields
.field private apn_:Ljava/lang/String;

.field private bitField0_:I

.field private dataProfile_:I

.field private rat_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2860
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 2861
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@6
    .line 2860
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    .locals 2

    #@0
    .prologue
    .line 2766
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 2767
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 2769
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 2770
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 2774
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@13
    return-object v0

    #@14
    .line 2767
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3021
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 3015
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2865
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@3
    .line 2866
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->rat_:I

    #@5
    .line 2867
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->dataProfile_:I

    #@7
    .line 2868
    const-string/jumbo v0, ""

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->apn_:Ljava/lang/String;

    #@c
    .line 2869
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->type_:I

    #@e
    .line 2870
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@11
    .line 2871
    const/4 v0, -0x1

    #@12
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->cachedSize:I

    #@14
    .line 2872
    return-object p0
.end method

.method public clearApn()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    .locals 1

    #@0
    .prologue
    .line 2834
    const-string/jumbo v0, ""

    #@3
    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->apn_:Ljava/lang/String;

    #@5
    .line 2835
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@7
    and-int/lit8 v0, v0, -0x5

    #@9
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@b
    .line 2836
    return-object p0
.end method

.method public clearDataProfile()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    .locals 1

    #@0
    .prologue
    .line 2812
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->dataProfile_:I

    #@3
    .line 2813
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x3

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@9
    .line 2814
    return-object p0
.end method

.method public clearRat()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    .locals 1

    #@0
    .prologue
    .line 2793
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->rat_:I

    #@3
    .line 2794
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x2

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@9
    .line 2795
    return-object p0
.end method

.method public clearType()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    .locals 1

    #@0
    .prologue
    .line 2853
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->type_:I

    #@3
    .line 2854
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x9

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@9
    .line 2855
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 2895
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 2896
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@6
    and-int/lit8 v1, v1, 0x1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2898
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->rat_:I

    #@c
    const/4 v2, 0x1

    #@d
    .line 2897
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    .line 2900
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@14
    and-int/lit8 v1, v1, 0x2

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 2902
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->dataProfile_:I

    #@1a
    const/4 v2, 0x2

    #@1b
    .line 2901
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 2904
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@22
    and-int/lit8 v1, v1, 0x4

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 2906
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->apn_:Ljava/lang/String;

    #@28
    const/4 v2, 0x3

    #@29
    .line 2905
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    #@2c
    move-result v1

    #@2d
    add-int/2addr v0, v1

    #@2e
    .line 2908
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@30
    and-int/lit8 v1, v1, 0x8

    #@32
    if-eqz v1, :cond_3

    #@34
    .line 2910
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->type_:I

    #@36
    const/4 v2, 0x4

    #@37
    .line 2909
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@3a
    move-result v1

    #@3b
    add-int/2addr v0, v1

    #@3c
    .line 2912
    :cond_3
    return v0
.end method

.method public getApn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2820
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->apn_:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDataProfile()I
    .locals 1

    #@0
    .prologue
    .line 2801
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->dataProfile_:I

    #@2
    return v0
.end method

.method public getRat()I
    .locals 1

    #@0
    .prologue
    .line 2782
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->rat_:I

    #@2
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 2842
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->type_:I

    #@2
    return v0
.end method

.method public hasApn()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2831
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

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

.method public hasDataProfile()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2809
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

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

.method public hasRat()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2790
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2850
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

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
    .line 2916
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2920
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v1

    #@4
    .line 2921
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    #@7
    .line 2925
    invoke-super {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 2926
    return-object p0

    #@e
    .line 2923
    :sswitch_0
    return-object p0

    #@f
    .line 2931
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@12
    move-result v0

    #@13
    .line 2932
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@16
    move-result v2

    #@17
    .line 2933
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    #@1a
    .line 2957
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@1d
    .line 2958
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@20
    goto :goto_0

    #@21
    .line 2953
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->rat_:I

    #@23
    .line 2954
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@25
    or-int/lit8 v3, v3, 0x1

    #@27
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@29
    goto :goto_0

    #@2a
    .line 2964
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@2d
    move-result v0

    #@2e
    .line 2965
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@31
    move-result v2

    #@32
    .line 2966
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_1

    #@35
    .line 2979
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@38
    .line 2980
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@3b
    goto :goto_0

    #@3c
    .line 2975
    :pswitch_1
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->dataProfile_:I

    #@3e
    .line 2976
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@40
    or-int/lit8 v3, v3, 0x2

    #@42
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@44
    goto :goto_0

    #@45
    .line 2986
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->apn_:Ljava/lang/String;

    #@4b
    .line 2987
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@4d
    or-int/lit8 v3, v3, 0x4

    #@4f
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@51
    goto :goto_0

    #@52
    .line 2991
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@55
    move-result v0

    #@56
    .line 2992
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@59
    move-result v2

    #@5a
    .line 2993
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_2

    #@5d
    .line 3003
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@60
    .line 3004
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@63
    goto :goto_0

    #@64
    .line 2999
    :pswitch_2
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->type_:I

    #@66
    .line 3000
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@68
    or-int/lit8 v3, v3, 0x8

    #@6a
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@6c
    goto :goto_0

    #@6d
    .line 2921
    nop

    #@6e
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    #@84
    .line 2933
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@ae
    .line 2966
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    #@c2
    .line 2993
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setApn(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2823
    if-nez p1, :cond_0

    #@2
    .line 2824
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 2826
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->apn_:Ljava/lang/String;

    #@a
    .line 2827
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@c
    or-int/lit8 v0, v0, 0x4

    #@e
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@10
    .line 2828
    return-object p0
.end method

.method public setDataProfile(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 2804
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->dataProfile_:I

    #@2
    .line 2805
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@8
    .line 2806
    return-object p0
.end method

.method public setRat(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 2785
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->rat_:I

    #@2
    .line 2786
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@8
    .line 2787
    return-object p0
.end method

.method public setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 2845
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->type_:I

    #@2
    .line 2846
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x8

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@8
    .line 2847
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
    .line 2878
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2879
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->rat_:I

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@c
    .line 2881
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@e
    and-int/lit8 v0, v0, 0x2

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 2882
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->dataProfile_:I

    #@14
    const/4 v1, 0x2

    #@15
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@18
    .line 2884
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@1a
    and-int/lit8 v0, v0, 0x4

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 2885
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->apn_:Ljava/lang/String;

    #@20
    const/4 v1, 0x3

    #@21
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    #@24
    .line 2887
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->bitField0_:I

    #@26
    and-int/lit8 v0, v0, 0x8

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 2888
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->type_:I

    #@2c
    const/4 v1, 0x4

    #@2d
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@30
    .line 2890
    :cond_3
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@33
    .line 2877
    return-void
.end method
