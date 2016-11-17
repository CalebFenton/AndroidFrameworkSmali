.class public final Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;
.super Lcom/google/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouterFingerPrint"
.end annotation


# static fields
.field public static final AUTH_ENTERPRISE:I = 0x3

.field public static final AUTH_OPEN:I = 0x1

.field public static final AUTH_PERSONAL:I = 0x2

.field public static final AUTH_UNKNOWN:I = 0x0

.field public static final ROAM_TYPE_DBDC:I = 0x3

.field public static final ROAM_TYPE_ENTERPRISE:I = 0x2

.field public static final ROAM_TYPE_NONE:I = 0x1

.field public static final ROAM_TYPE_UNKNOWN:I = 0x0

.field public static final ROUTER_TECH_A:I = 0x1

.field public static final ROUTER_TECH_AC:I = 0x5

.field public static final ROUTER_TECH_B:I = 0x2

.field public static final ROUTER_TECH_G:I = 0x3

.field public static final ROUTER_TECH_N:I = 0x4

.field public static final ROUTER_TECH_OTHER:I = 0x6

.field public static final ROUTER_TECH_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;


# instance fields
.field public authentication:I

.field public channelInfo:I

.field public dtim:I

.field public hidden:Z

.field public roamType:I

.field public routerTechnology:I

.field public supportsIpv6:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1029
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    #@3
    .line 1030
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->clear()Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@6
    .line 1029
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;
    .locals 2

    #@0
    .prologue
    .line 995
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 996
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 998
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 999
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@e
    sput-object v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 1003
    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@13
    return-object v0

    #@14
    .line 996
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1188
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 1182
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1034
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->roamType:I

    #@3
    .line 1035
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    #@5
    .line 1036
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->dtim:I

    #@7
    .line 1037
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    #@9
    .line 1038
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    #@b
    .line 1039
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    #@d
    .line 1040
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    #@f
    .line 1041
    const/4 v0, -0x1

    #@10
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->cachedSize:I

    #@12
    .line 1042
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 1074
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 1075
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->roamType:I

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1077
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->roamType:I

    #@a
    const/4 v2, 0x1

    #@b
    .line 1076
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@e
    move-result v1

    #@f
    add-int/2addr v0, v1

    #@10
    .line 1079
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 1081
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    #@16
    const/4 v2, 0x2

    #@17
    .line 1080
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1a
    move-result v1

    #@1b
    add-int/2addr v0, v1

    #@1c
    .line 1083
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->dtim:I

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 1085
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->dtim:I

    #@22
    const/4 v2, 0x3

    #@23
    .line 1084
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@26
    move-result v1

    #@27
    add-int/2addr v0, v1

    #@28
    .line 1087
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 1089
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    #@2e
    const/4 v2, 0x4

    #@2f
    .line 1088
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@32
    move-result v1

    #@33
    add-int/2addr v0, v1

    #@34
    .line 1091
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    #@36
    if-eqz v1, :cond_4

    #@38
    .line 1093
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    #@3a
    const/4 v2, 0x5

    #@3b
    .line 1092
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@3e
    move-result v1

    #@3f
    add-int/2addr v0, v1

    #@40
    .line 1095
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    #@42
    if-eqz v1, :cond_5

    #@44
    .line 1097
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    #@46
    const/4 v2, 0x6

    #@47
    .line 1096
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@4a
    move-result v1

    #@4b
    add-int/2addr v0, v1

    #@4c
    .line 1099
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    #@4e
    if-eqz v1, :cond_6

    #@50
    .line 1101
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    #@52
    const/4 v2, 0x7

    #@53
    .line 1100
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@56
    move-result v1

    #@57
    add-int/2addr v0, v1

    #@58
    .line 1103
    :cond_6
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1111
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v0

    #@4
    .line 1112
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 1116
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 1117
    return-object p0

    #@e
    .line 1114
    :sswitch_0
    return-object p0

    #@f
    .line 1122
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@12
    move-result v1

    #@13
    .line 1123
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    #@16
    goto :goto_0

    #@17
    .line 1128
    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->roamType:I

    #@19
    goto :goto_0

    #@1a
    .line 1134
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@1d
    move-result v2

    #@1e
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    #@20
    goto :goto_0

    #@21
    .line 1138
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@24
    move-result v2

    #@25
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->dtim:I

    #@27
    goto :goto_0

    #@28
    .line 1142
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@2b
    move-result v1

    #@2c
    .line 1143
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_1

    #@2f
    goto :goto_0

    #@30
    .line 1148
    :pswitch_1
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    #@32
    goto :goto_0

    #@33
    .line 1154
    .end local v1    # "value":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@36
    move-result v2

    #@37
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    #@39
    goto :goto_0

    #@3a
    .line 1158
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@3d
    move-result v1

    #@3e
    .line 1159
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_2

    #@41
    goto :goto_0

    #@42
    .line 1167
    :pswitch_2
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    #@44
    goto :goto_0

    #@45
    .line 1173
    .end local v1    # "value":I
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@48
    move-result v2

    #@49
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    #@4b
    goto :goto_0

    #@4c
    .line 1112
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch

    #@6e
    .line 1123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@7a
    .line 1143
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    #@86
    .line 1159
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1107
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1048
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->roamType:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1049
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->roamType:I

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@a
    .line 1051
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1052
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    #@10
    const/4 v1, 0x2

    #@11
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@14
    .line 1054
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->dtim:I

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 1055
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->dtim:I

    #@1a
    const/4 v1, 0x3

    #@1b
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@1e
    .line 1057
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    #@20
    if-eqz v0, :cond_3

    #@22
    .line 1058
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    #@24
    const/4 v1, 0x4

    #@25
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@28
    .line 1060
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    #@2a
    if-eqz v0, :cond_4

    #@2c
    .line 1061
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    #@2e
    const/4 v1, 0x5

    #@2f
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@32
    .line 1063
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    #@34
    if-eqz v0, :cond_5

    #@36
    .line 1064
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    #@38
    const/4 v1, 0x6

    #@39
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@3c
    .line 1066
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    #@3e
    if-eqz v0, :cond_6

    #@40
    .line 1067
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    #@42
    const/4 v1, 0x7

    #@43
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@46
    .line 1069
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@49
    .line 1047
    return-void
.end method
