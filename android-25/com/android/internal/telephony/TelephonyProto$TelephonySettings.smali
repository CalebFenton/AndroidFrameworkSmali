.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonySettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonySettings$RilNetworkMode;,
        Lcom/android/internal/telephony/TelephonyProto$TelephonySettings$WiFiCallingMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;


# instance fields
.field private bitField0_:I

.field private isAirplaneMode_:Z

.field private isCellularDataEnabled_:Z

.field private isDataRoamingEnabled_:Z

.field private isEnhanced4GLteModeEnabled_:Z

.field private isVtOverLteEnabled_:Z

.field private isVtOverWifiEnabled_:Z

.field private isWifiCallingEnabled_:Z

.field private isWifiEnabled_:Z

.field private preferredNetworkMode_:I

.field private wifiCallingMode_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1210
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    .line 1211
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@6
    .line 1210
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 2

    #@0
    .prologue
    .line 1005
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1006
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 1008
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1009
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@e
    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 1013
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@13
    return-object v0

    #@14
    .line 1006
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1436
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 1430
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1215
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@3
    .line 1216
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    #@5
    .line 1217
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    #@7
    .line 1218
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    #@9
    .line 1219
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    #@b
    .line 1220
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    #@d
    .line 1221
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    #@f
    .line 1222
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    #@11
    .line 1223
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    #@13
    .line 1224
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    #@15
    .line 1225
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    #@17
    .line 1226
    const/4 v0, 0x0

    #@18
    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@1a
    .line 1227
    const/4 v0, -0x1

    #@1b
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->cachedSize:I

    #@1d
    .line 1228
    return-object p0
.end method

.method public clearIsAirplaneMode()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    #@0
    .prologue
    .line 1032
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    #@3
    .line 1033
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x2

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@9
    .line 1034
    return-object p0
.end method

.method public clearIsCellularDataEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    #@0
    .prologue
    .line 1051
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    #@3
    .line 1052
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x3

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@9
    .line 1053
    return-object p0
.end method

.method public clearIsDataRoamingEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    #@0
    .prologue
    .line 1070
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    #@3
    .line 1071
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x5

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@9
    .line 1072
    return-object p0
.end method

.method public clearIsEnhanced4GLteModeEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    #@0
    .prologue
    .line 1108
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    #@3
    .line 1109
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x11

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@9
    .line 1110
    return-object p0
.end method

.method public clearIsVtOverLteEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    #@0
    .prologue
    .line 1184
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    #@3
    .line 1185
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@5
    and-int/lit16 v0, v0, -0x101

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@9
    .line 1186
    return-object p0
.end method

.method public clearIsVtOverWifiEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    #@0
    .prologue
    .line 1203
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    #@3
    .line 1204
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@5
    and-int/lit16 v0, v0, -0x201

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@9
    .line 1205
    return-object p0
.end method

.method public clearIsWifiCallingEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    #@0
    .prologue
    .line 1146
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    #@3
    .line 1147
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x41

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@9
    .line 1148
    return-object p0
.end method

.method public clearIsWifiEnabled()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    #@0
    .prologue
    .line 1127
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    #@3
    .line 1128
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x21

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@9
    .line 1129
    return-object p0
.end method

.method public clearPreferredNetworkMode()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    #@0
    .prologue
    .line 1089
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    #@3
    .line 1090
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@5
    and-int/lit8 v0, v0, -0x9

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@9
    .line 1091
    return-object p0
.end method

.method public clearWifiCallingMode()Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1

    #@0
    .prologue
    .line 1165
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    #@3
    .line 1166
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@5
    and-int/lit16 v0, v0, -0x81

    #@7
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@9
    .line 1167
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    #@0
    .prologue
    .line 1269
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 1270
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@6
    and-int/lit8 v1, v1, 0x1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1272
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    #@c
    const/4 v2, 0x1

    #@d
    .line 1271
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    .line 1274
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@14
    and-int/lit8 v1, v1, 0x2

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 1276
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    #@1a
    const/4 v2, 0x2

    #@1b
    .line 1275
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 1278
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@22
    and-int/lit8 v1, v1, 0x4

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 1280
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    #@28
    const/4 v2, 0x3

    #@29
    .line 1279
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@2c
    move-result v1

    #@2d
    add-int/2addr v0, v1

    #@2e
    .line 1282
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@30
    and-int/lit8 v1, v1, 0x8

    #@32
    if-eqz v1, :cond_3

    #@34
    .line 1284
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    #@36
    const/4 v2, 0x4

    #@37
    .line 1283
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@3a
    move-result v1

    #@3b
    add-int/2addr v0, v1

    #@3c
    .line 1286
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@3e
    and-int/lit8 v1, v1, 0x10

    #@40
    if-eqz v1, :cond_4

    #@42
    .line 1288
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    #@44
    const/4 v2, 0x5

    #@45
    .line 1287
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@48
    move-result v1

    #@49
    add-int/2addr v0, v1

    #@4a
    .line 1290
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@4c
    and-int/lit8 v1, v1, 0x20

    #@4e
    if-eqz v1, :cond_5

    #@50
    .line 1292
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    #@52
    const/4 v2, 0x6

    #@53
    .line 1291
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@56
    move-result v1

    #@57
    add-int/2addr v0, v1

    #@58
    .line 1294
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@5a
    and-int/lit8 v1, v1, 0x40

    #@5c
    if-eqz v1, :cond_6

    #@5e
    .line 1296
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    #@60
    const/4 v2, 0x7

    #@61
    .line 1295
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@64
    move-result v1

    #@65
    add-int/2addr v0, v1

    #@66
    .line 1298
    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@68
    and-int/lit16 v1, v1, 0x80

    #@6a
    if-eqz v1, :cond_7

    #@6c
    .line 1300
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    #@6e
    const/16 v2, 0x8

    #@70
    .line 1299
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@73
    move-result v1

    #@74
    add-int/2addr v0, v1

    #@75
    .line 1302
    :cond_7
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@77
    and-int/lit16 v1, v1, 0x100

    #@79
    if-eqz v1, :cond_8

    #@7b
    .line 1304
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    #@7d
    const/16 v2, 0x9

    #@7f
    .line 1303
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@82
    move-result v1

    #@83
    add-int/2addr v0, v1

    #@84
    .line 1306
    :cond_8
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@86
    and-int/lit16 v1, v1, 0x200

    #@88
    if-eqz v1, :cond_9

    #@8a
    .line 1308
    iget-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    #@8c
    const/16 v2, 0xa

    #@8e
    .line 1307
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@91
    move-result v1

    #@92
    add-int/2addr v0, v1

    #@93
    .line 1310
    :cond_9
    return v0
.end method

.method public getIsAirplaneMode()Z
    .locals 1

    #@0
    .prologue
    .line 1021
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    #@2
    return v0
.end method

.method public getIsCellularDataEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1040
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    #@2
    return v0
.end method

.method public getIsDataRoamingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1059
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    #@2
    return v0
.end method

.method public getIsEnhanced4GLteModeEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1097
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    #@2
    return v0
.end method

.method public getIsVtOverLteEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1173
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    #@2
    return v0
.end method

.method public getIsVtOverWifiEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1192
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    #@2
    return v0
.end method

.method public getIsWifiCallingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1135
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    #@2
    return v0
.end method

.method public getIsWifiEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1116
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    #@2
    return v0
.end method

.method public getPreferredNetworkMode()I
    .locals 1

    #@0
    .prologue
    .line 1078
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    #@2
    return v0
.end method

.method public getWifiCallingMode()I
    .locals 1

    #@0
    .prologue
    .line 1154
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    #@2
    return v0
.end method

.method public hasIsAirplaneMode()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1029
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

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

.method public hasIsCellularDataEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1048
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

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

.method public hasIsDataRoamingEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1067
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

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

.method public hasIsEnhanced4GLteModeEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1105
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x10

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasIsVtOverLteEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1181
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@3
    and-int/lit16 v1, v1, 0x100

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasIsVtOverWifiEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1200
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@3
    and-int/lit16 v1, v1, 0x200

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasIsWifiCallingEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1143
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x40

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasIsWifiEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1124
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@3
    and-int/lit8 v1, v1, 0x20

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasPreferredNetworkMode()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1086
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

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

.method public hasWifiCallingMode()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1162
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@3
    and-int/lit16 v1, v1, 0x80

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
    .line 1314
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1318
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v1

    #@4
    .line 1319
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    #@7
    .line 1323
    invoke-super {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 1324
    return-object p0

    #@e
    .line 1321
    :sswitch_0
    return-object p0

    #@f
    .line 1329
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@12
    move-result v3

    #@13
    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    #@15
    .line 1330
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@17
    or-int/lit8 v3, v3, 0x1

    #@19
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@1b
    goto :goto_0

    #@1c
    .line 1334
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@1f
    move-result v3

    #@20
    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    #@22
    .line 1335
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@24
    or-int/lit8 v3, v3, 0x2

    #@26
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@28
    goto :goto_0

    #@29
    .line 1339
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@2c
    move-result v3

    #@2d
    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    #@2f
    .line 1340
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@31
    or-int/lit8 v3, v3, 0x4

    #@33
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@35
    goto :goto_0

    #@36
    .line 1344
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@39
    move-result v0

    #@3a
    .line 1345
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@3d
    move-result v2

    #@3e
    .line 1346
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    #@41
    .line 1375
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@44
    .line 1376
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@47
    goto :goto_0

    #@48
    .line 1371
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    #@4a
    .line 1372
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@4c
    or-int/lit8 v3, v3, 0x8

    #@4e
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@50
    goto :goto_0

    #@51
    .line 1382
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@54
    move-result v3

    #@55
    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    #@57
    .line 1383
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@59
    or-int/lit8 v3, v3, 0x10

    #@5b
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@5d
    goto :goto_0

    #@5e
    .line 1387
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@61
    move-result v3

    #@62
    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    #@64
    .line 1388
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@66
    or-int/lit8 v3, v3, 0x20

    #@68
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@6a
    goto :goto_0

    #@6b
    .line 1392
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@6e
    move-result v3

    #@6f
    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    #@71
    .line 1393
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@73
    or-int/lit8 v3, v3, 0x40

    #@75
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@77
    goto :goto_0

    #@78
    .line 1397
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@7b
    move-result v0

    #@7c
    .line 1398
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@7f
    move-result v2

    #@80
    .line 1399
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_1

    #@83
    .line 1408
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    #@86
    .line 1409
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@89
    goto/16 :goto_0

    #@8b
    .line 1404
    :pswitch_1
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    #@8d
    .line 1405
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@8f
    or-int/lit16 v3, v3, 0x80

    #@91
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@93
    goto/16 :goto_0

    #@95
    .line 1415
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@98
    move-result v3

    #@99
    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    #@9b
    .line 1416
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@9d
    or-int/lit16 v3, v3, 0x100

    #@9f
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@a1
    goto/16 :goto_0

    #@a3
    .line 1420
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@a6
    move-result v3

    #@a7
    iput-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    #@a9
    .line 1421
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@ab
    or-int/lit16 v3, v3, 0x200

    #@ad
    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@af
    goto/16 :goto_0

    #@b1
    .line 1319
    nop

    #@b2
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
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch

    #@e0
    .line 1346
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@114
    .line 1399
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setIsAirplaneMode(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1024
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    #@2
    .line 1025
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@8
    .line 1026
    return-object p0
.end method

.method public setIsCellularDataEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1043
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    #@2
    .line 1044
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@8
    .line 1045
    return-object p0
.end method

.method public setIsDataRoamingEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1062
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    #@2
    .line 1063
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x4

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@8
    .line 1064
    return-object p0
.end method

.method public setIsEnhanced4GLteModeEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1100
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    #@2
    .line 1101
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x10

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@8
    .line 1102
    return-object p0
.end method

.method public setIsVtOverLteEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1176
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    #@2
    .line 1177
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@4
    or-int/lit16 v0, v0, 0x100

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@8
    .line 1178
    return-object p0
.end method

.method public setIsVtOverWifiEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1195
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    #@2
    .line 1196
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@4
    or-int/lit16 v0, v0, 0x200

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@8
    .line 1197
    return-object p0
.end method

.method public setIsWifiCallingEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1138
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    #@2
    .line 1139
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x40

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@8
    .line 1140
    return-object p0
.end method

.method public setIsWifiEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1119
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    #@2
    .line 1120
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x20

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@8
    .line 1121
    return-object p0
.end method

.method public setPreferredNetworkMode(I)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1081
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    #@2
    .line 1082
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@4
    or-int/lit8 v0, v0, 0x8

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@8
    .line 1083
    return-object p0
.end method

.method public setWifiCallingMode(I)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1157
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    #@2
    .line 1158
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@4
    or-int/lit16 v0, v0, 0x80

    #@6
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@8
    .line 1159
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
    .line 1234
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1235
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isAirplaneMode_:Z

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@c
    .line 1237
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@e
    and-int/lit8 v0, v0, 0x2

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1238
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isCellularDataEnabled_:Z

    #@14
    const/4 v1, 0x2

    #@15
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@18
    .line 1240
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@1a
    and-int/lit8 v0, v0, 0x4

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 1241
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isDataRoamingEnabled_:Z

    #@20
    const/4 v1, 0x3

    #@21
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@24
    .line 1243
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@26
    and-int/lit8 v0, v0, 0x8

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 1244
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->preferredNetworkMode_:I

    #@2c
    const/4 v1, 0x4

    #@2d
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@30
    .line 1246
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@32
    and-int/lit8 v0, v0, 0x10

    #@34
    if-eqz v0, :cond_4

    #@36
    .line 1247
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled_:Z

    #@38
    const/4 v1, 0x5

    #@39
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@3c
    .line 1249
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@3e
    and-int/lit8 v0, v0, 0x20

    #@40
    if-eqz v0, :cond_5

    #@42
    .line 1250
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiEnabled_:Z

    #@44
    const/4 v1, 0x6

    #@45
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@48
    .line 1252
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@4a
    and-int/lit8 v0, v0, 0x40

    #@4c
    if-eqz v0, :cond_6

    #@4e
    .line 1253
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isWifiCallingEnabled_:Z

    #@50
    const/4 v1, 0x7

    #@51
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@54
    .line 1255
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@56
    and-int/lit16 v0, v0, 0x80

    #@58
    if-eqz v0, :cond_7

    #@5a
    .line 1256
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->wifiCallingMode_:I

    #@5c
    const/16 v1, 0x8

    #@5e
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@61
    .line 1258
    :cond_7
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@63
    and-int/lit16 v0, v0, 0x100

    #@65
    if-eqz v0, :cond_8

    #@67
    .line 1259
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverLteEnabled_:Z

    #@69
    const/16 v1, 0x9

    #@6b
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@6e
    .line 1261
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->bitField0_:I

    #@70
    and-int/lit16 v0, v0, 0x200

    #@72
    if-eqz v0, :cond_9

    #@74
    .line 1262
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled_:Z

    #@76
    const/16 v1, 0xa

    #@78
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@7b
    .line 1264
    :cond_9
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@7e
    .line 1233
    return-void
.end method
