.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings$RilNetworkMode;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings$WiFiCallingMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;


# instance fields
.field public blacklist isAirplaneMode:Z

.field public blacklist isCellularDataEnabled:Z

.field public blacklist isDataRoamingEnabled:Z

.field public blacklist isEnhanced4GLteModeEnabled:Z

.field public blacklist isVtOverLteEnabled:Z

.field public blacklist isVtOverWifiEnabled:Z

.field public blacklist isWifiCallingEnabled:Z

.field public blacklist isWifiEnabled:Z

.field public blacklist preferredNetworkMode:I

.field public blacklist wifiCallingMode:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1012
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1013
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    .registers 2

    .line 971
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-nez v0, :cond_17

    .line 972
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 974
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 975
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_15

    .line 977
    :cond_13
    :goto_13
    monitor-exit v0

    goto :goto_17

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_11

    throw v1

    .line 979
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1217
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1211
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    .registers 2

    const/4 v0, 0x0

    .line 1017
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isAirplaneMode:Z

    .line 1018
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isCellularDataEnabled:Z

    .line 1019
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isDataRoamingEnabled:Z

    .line 1020
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    .line 1021
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    .line 1022
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiEnabled:Z

    .line 1023
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    .line 1024
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->wifiCallingMode:I

    .line 1025
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    .line 1026
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    const/4 v0, 0x0

    .line 1027
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 1028
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 1070
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1071
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isAirplaneMode:Z

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 1073
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1075
    :cond_e
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isCellularDataEnabled:Z

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 1077
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1079
    :cond_18
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isDataRoamingEnabled:Z

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 1081
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1083
    :cond_22
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 1085
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1087
    :cond_2c
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 1089
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1091
    :cond_36
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiEnabled:Z

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 1093
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1095
    :cond_40
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    if-eqz v1, :cond_4a

    const/4 v2, 0x7

    .line 1097
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1099
    :cond_4a
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->wifiCallingMode:I

    if-eqz v1, :cond_55

    const/16 v2, 0x8

    .line 1101
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1103
    :cond_55
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    if-eqz v1, :cond_60

    const/16 v2, 0x9

    .line 1105
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1107
    :cond_60
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    if-eqz p0, :cond_6b

    const/16 v1, 0xa

    .line 1109
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_6b
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1119
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_66

    .line 1124
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_64

    .line 1202
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    goto :goto_0

    .line 1198
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    goto :goto_0

    .line 1186
    :sswitch_1c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2c

    goto :goto_0

    .line 1192
    :cond_2c
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->wifiCallingMode:I

    goto :goto_0

    .line 1182
    :sswitch_2f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    goto :goto_0

    .line 1178
    :sswitch_36
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiEnabled:Z

    goto :goto_0

    .line 1174
    :sswitch_3d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    goto :goto_0

    .line 1142
    :sswitch_44
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_94

    goto :goto_0

    .line 1168
    :pswitch_4c
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    goto :goto_0

    .line 1138
    :sswitch_4f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isDataRoamingEnabled:Z

    goto :goto_0

    .line 1134
    :sswitch_56
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isCellularDataEnabled:Z

    goto :goto_0

    .line 1130
    :sswitch_5d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isAirplaneMode:Z

    goto :goto_0

    :goto_64
    :sswitch_64
    return-object p0

    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_64
        0x8 -> :sswitch_5d
        0x10 -> :sswitch_56
        0x18 -> :sswitch_4f
        0x20 -> :sswitch_44
        0x28 -> :sswitch_3d
        0x30 -> :sswitch_36
        0x38 -> :sswitch_2f
        0x40 -> :sswitch_1c
        0x48 -> :sswitch_15
        0x50 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
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

    .line 929
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

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

    .line 1035
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isAirplaneMode:Z

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 1036
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1038
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isCellularDataEnabled:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 1039
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1041
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isDataRoamingEnabled:Z

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 1042
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1044
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 1045
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1047
    :cond_20
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 1048
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1050
    :cond_28
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiEnabled:Z

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 1051
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1053
    :cond_30
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    if-eqz v0, :cond_38

    const/4 v1, 0x7

    .line 1054
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1056
    :cond_38
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->wifiCallingMode:I

    if-eqz v0, :cond_41

    const/16 v1, 0x8

    .line 1057
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1059
    :cond_41
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    if-eqz v0, :cond_4a

    const/16 v1, 0x9

    .line 1060
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1062
    :cond_4a
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    if-eqz v0, :cond_53

    const/16 v1, 0xa

    .line 1063
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1065
    :cond_53
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
