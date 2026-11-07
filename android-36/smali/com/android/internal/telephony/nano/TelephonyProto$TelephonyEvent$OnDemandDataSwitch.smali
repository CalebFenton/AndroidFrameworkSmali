.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnDemandDataSwitch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;


# instance fields
.field public blacklist apn:I

.field public blacklist state:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2859
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2860
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;
    .registers 2

    .line 2842
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    if-nez v0, :cond_17

    .line 2843
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2845
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 2846
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 2848
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 2850
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2954
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2948
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;
    .registers 2

    const/4 v0, 0x0

    .line 2864
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->apn:I

    .line 2865
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->state:I

    const/4 v0, 0x0

    .line 2866
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 2867
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 2885
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2886
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->apn:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 2888
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2890
    :cond_e
    iget p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->state:I

    if-eqz p0, :cond_18

    const/4 v1, 0x2

    .line 2892
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_18
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2902
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_30

    const/16 v1, 0x8

    if-eq v0, v1, :cond_25

    const/16 v1, 0x10

    if-eq v0, v1, :cond_15

    .line 2907
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_30

    .line 2932
    :cond_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    goto :goto_0

    .line 2937
    :cond_22
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->state:I

    goto :goto_0

    .line 2913
    :cond_25
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    goto :goto_0

    .line 2926
    :pswitch_2d
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->apn:I

    goto :goto_0

    :cond_30
    :goto_30
    return-object p0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
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

    .line 2836
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

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

    .line 2874
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->apn:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 2875
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2877
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->state:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 2878
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2880
    :cond_10
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
