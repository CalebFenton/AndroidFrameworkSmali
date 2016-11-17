.class public final Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectionEvent"
.end annotation


# static fields
.field public static final HLF_DHCP:I = 0x2

.field public static final HLF_NONE:I = 0x1

.field public static final HLF_NO_INTERNET:I = 0x3

.field public static final HLF_UNKNOWN:I = 0x0

.field public static final HLF_UNWANTED:I = 0x4

.field public static final ROAM_DBDC:I = 0x2

.field public static final ROAM_ENTERPRISE:I = 0x3

.field public static final ROAM_NONE:I = 0x1

.field public static final ROAM_UNKNOWN:I = 0x0

.field public static final ROAM_UNRELATED:I = 0x5

.field public static final ROAM_USER_SELECTED:I = 0x4

.field private static volatile _emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;


# instance fields
.field public automaticBugReportTaken:Z

.field public connectionResult:I

.field public connectivityLevelFailureCode:I

.field public durationTakenToConnectMillis:I

.field public level2FailureCode:I

.field public roamType:I

.field public routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

.field public signalStrength:I

.field public startTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1253
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    #@3
    .line 1254
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->clear()Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@6
    .line 1253
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .locals 2

    #@0
    .prologue
    .line 1213
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 1214
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 1216
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1217
    const/4 v0, 0x0

    #@c
    new-array v0, v0, [Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@e
    sput-object v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 1221
    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@13
    return-object v0

    #@14
    .line 1214
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1431
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 1425
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@b
    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1258
    const-wide/16 v0, 0x0

    #@3
    iput-wide v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    #@5
    .line 1259
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    #@7
    .line 1260
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@a
    .line 1261
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    #@c
    .line 1262
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    #@e
    .line 1263
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    #@10
    .line 1264
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    #@12
    .line 1265
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    #@14
    .line 1266
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    #@16
    .line 1267
    const/4 v0, -0x1

    #@17
    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->cachedSize:I

    #@19
    .line 1268
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    #@0
    .prologue
    .line 1306
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 1307
    .local v0, "size":I
    iget-wide v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    #@6
    const-wide/16 v4, 0x0

    #@8
    cmp-long v1, v2, v4

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1309
    iget-wide v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    #@e
    const/4 v1, 0x1

    #@f
    .line 1308
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    #@12
    move-result v1

    #@13
    add-int/2addr v0, v1

    #@14
    .line 1311
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 1313
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    #@1a
    const/4 v2, 0x2

    #@1b
    .line 1312
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    .line 1315
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@22
    if-eqz v1, :cond_2

    #@24
    .line 1317
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@26
    const/4 v2, 0x3

    #@27
    .line 1316
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    #@2a
    move-result v1

    #@2b
    add-int/2addr v0, v1

    #@2c
    .line 1319
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    #@2e
    if-eqz v1, :cond_3

    #@30
    .line 1321
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    #@32
    const/4 v2, 0x4

    #@33
    .line 1320
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@36
    move-result v1

    #@37
    add-int/2addr v0, v1

    #@38
    .line 1323
    :cond_3
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    #@3a
    if-eqz v1, :cond_4

    #@3c
    .line 1325
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    #@3e
    const/4 v2, 0x5

    #@3f
    .line 1324
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@42
    move-result v1

    #@43
    add-int/2addr v0, v1

    #@44
    .line 1327
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    #@46
    if-eqz v1, :cond_5

    #@48
    .line 1329
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    #@4a
    const/4 v2, 0x6

    #@4b
    .line 1328
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@4e
    move-result v1

    #@4f
    add-int/2addr v0, v1

    #@50
    .line 1331
    :cond_5
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    #@52
    if-eqz v1, :cond_6

    #@54
    .line 1333
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    #@56
    const/4 v2, 0x7

    #@57
    .line 1332
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@5a
    move-result v1

    #@5b
    add-int/2addr v0, v1

    #@5c
    .line 1335
    :cond_6
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    #@5e
    if-eqz v1, :cond_7

    #@60
    .line 1337
    iget v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    #@62
    const/16 v2, 0x8

    #@64
    .line 1336
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@67
    move-result v1

    #@68
    add-int/2addr v0, v1

    #@69
    .line 1339
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    #@6b
    if-eqz v1, :cond_8

    #@6d
    .line 1341
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    #@6f
    const/16 v2, 0x9

    #@71
    .line 1340
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@74
    move-result v1

    #@75
    add-int/2addr v0, v1

    #@76
    .line 1343
    :cond_8
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1351
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    #@3
    move-result v0

    #@4
    .line 1352
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 1356
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 1357
    return-object p0

    #@e
    .line 1354
    :sswitch_0
    return-object p0

    #@f
    .line 1362
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    #@12
    move-result-wide v2

    #@13
    iput-wide v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    #@15
    goto :goto_0

    #@16
    .line 1366
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@19
    move-result v2

    #@1a
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    #@1c
    goto :goto_0

    #@1d
    .line 1370
    :sswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@1f
    if-nez v2, :cond_1

    #@21
    .line 1371
    new-instance v2, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@23
    invoke-direct {v2}, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;-><init>()V

    #@26
    iput-object v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@28
    .line 1373
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@2a
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    #@2d
    goto :goto_0

    #@2e
    .line 1377
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@31
    move-result v2

    #@32
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    #@34
    goto :goto_0

    #@35
    .line 1381
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@38
    move-result v1

    #@39
    .line 1382
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    #@3c
    goto :goto_0

    #@3d
    .line 1389
    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    #@3f
    goto :goto_0

    #@40
    .line 1395
    .end local v1    # "value":I
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@43
    move-result v2

    #@44
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    #@46
    goto :goto_0

    #@47
    .line 1399
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@4a
    move-result v2

    #@4b
    iput v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    #@4d
    goto :goto_0

    #@4e
    .line 1403
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@51
    move-result v1

    #@52
    .line 1404
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_1

    #@55
    goto :goto_0

    #@56
    .line 1410
    :pswitch_1
    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    #@58
    goto :goto_0

    #@59
    .line 1416
    .end local v1    # "value":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@5c
    move-result v2

    #@5d
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    #@5f
    goto :goto_0

    #@60
    .line 1352
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch

    #@8a
    .line 1382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@9a
    .line 1404
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
    .line 1347
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1274
    iget-wide v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1275
    iget-wide v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    #@a
    const/4 v2, 0x1

    #@b
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    #@e
    .line 1277
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1278
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    #@14
    const/4 v1, 0x2

    #@15
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@18
    .line 1280
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 1281
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    #@1e
    const/4 v1, 0x3

    #@1f
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    #@22
    .line 1283
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    #@24
    if-eqz v0, :cond_3

    #@26
    .line 1284
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    #@28
    const/4 v1, 0x4

    #@29
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@2c
    .line 1286
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    #@2e
    if-eqz v0, :cond_4

    #@30
    .line 1287
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->roamType:I

    #@32
    const/4 v1, 0x5

    #@33
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@36
    .line 1289
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    #@38
    if-eqz v0, :cond_5

    #@3a
    .line 1290
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    #@3c
    const/4 v1, 0x6

    #@3d
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@40
    .line 1292
    :cond_5
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    #@42
    if-eqz v0, :cond_6

    #@44
    .line 1293
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    #@46
    const/4 v1, 0x7

    #@47
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@4a
    .line 1295
    :cond_6
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    #@4c
    if-eqz v0, :cond_7

    #@4e
    .line 1296
    iget v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    #@50
    const/16 v1, 0x8

    #@52
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    #@55
    .line 1298
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    #@57
    if-eqz v0, :cond_8

    #@59
    .line 1299
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    #@5b
    const/16 v1, 0x9

    #@5d
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    #@60
    .line 1301
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@63
    .line 1273
    return-void
.end method
