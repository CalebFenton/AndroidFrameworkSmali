.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkCapabilitiesInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;


# instance fields
.field public blacklist isNetworkUnmetered:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4654
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4655
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;
    .registers 2

    .line 4640
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    if-nez v0, :cond_17

    .line 4641
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4643
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 4644
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 4646
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 4648
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4715
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4709
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;
    .registers 2

    const/4 v0, 0x0

    .line 4659
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->isNetworkUnmetered:Z

    const/4 v0, 0x0

    .line 4660
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4661
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 3

    .line 4676
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4677
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->isNetworkUnmetered:Z

    if-eqz p0, :cond_e

    const/4 v1, 0x1

    .line 4679
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_e
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4689
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_18

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    .line 4694
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_18

    .line 4700
    :cond_11
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->isNetworkUnmetered:Z

    goto :goto_0

    :cond_18
    :goto_18
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

    .line 4634
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

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

    .line 4668
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->isNetworkUnmetered:Z

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 4669
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4671
    :cond_8
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
