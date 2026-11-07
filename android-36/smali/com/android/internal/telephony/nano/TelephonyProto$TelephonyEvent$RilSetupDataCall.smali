.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RilSetupDataCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall$RilDataProfile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;


# instance fields
.field public blacklist apn:Ljava/lang/String;

.field public blacklist dataProfile:I

.field public blacklist rat:I

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2999
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3000
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    .registers 2

    .line 2976
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    if-nez v0, :cond_17

    .line 2977
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2979
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 2980
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 2982
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 2984
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3145
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3139
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    .registers 4

    const/4 v0, -0x1

    .line 3004
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->rat:I

    const/4 v1, 0x0

    .line 3005
    iput v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->dataProfile:I

    .line 3006
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->apn:Ljava/lang/String;

    .line 3007
    iput v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->type:I

    const/4 v1, 0x0

    .line 3008
    iput-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    .line 3009
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 3033
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3034
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->rat:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    const/4 v2, 0x1

    .line 3036
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3038
    :cond_f
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->dataProfile:I

    if-eqz v1, :cond_19

    const/4 v2, 0x2

    .line 3040
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3042
    :cond_19
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->apn:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 v1, 0x3

    .line 3043
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->apn:Ljava/lang/String;

    .line 3044
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3046
    :cond_2b
    iget p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->type:I

    if-eqz p0, :cond_35

    const/4 v1, 0x4

    .line 3048
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_35
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3058
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_45

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_28

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1d

    .line 3063
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_45

    .line 3119
    :cond_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_46

    goto :goto_0

    .line 3128
    :pswitch_25
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->type:I

    goto :goto_0

    .line 3115
    :cond_28
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->apn:Ljava/lang/String;

    goto :goto_0

    .line 3099
    :cond_2f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_58

    goto :goto_0

    .line 3109
    :pswitch_37
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->dataProfile:I

    goto :goto_0

    .line 3069
    :cond_3a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_6c

    goto :goto_0

    .line 3093
    :pswitch_42
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->rat:I

    goto :goto_0

    :cond_45
    :goto_45
    return-object p0

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
    .end packed-switch

    :pswitch_data_6c
    .packed-switch -0x1
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
    .end packed-switch
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

    .line 2958
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

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

    .line 3016
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->rat:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x1

    .line 3017
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3019
    :cond_9
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->dataProfile:I

    if-eqz v0, :cond_11

    const/4 v1, 0x2

    .line 3020
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3022
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->apn:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x3

    .line 3023
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->apn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3025
    :cond_21
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->type:I

    if-eqz v0, :cond_29

    const/4 v1, 0x4

    .line 3026
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3028
    :cond_29
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
