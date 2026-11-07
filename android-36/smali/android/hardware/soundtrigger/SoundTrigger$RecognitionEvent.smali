.class public Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
.super Ljava/lang/Object;
.source "SoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognitionEvent"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist captureAvailable:Z

.field public final greylist-max-o captureDelayMs:I

.field public final greylist-max-o captureFormat:Landroid/media/AudioFormat;

.field public final greylist-max-o capturePreambleMs:I

.field public final greylist captureSession:I

.field public final greylist data:[B

.field public final blacklist halEventReceivedMillis:J

.field public final blacklist recognitionStillActive:Z

.field public final greylist soundModelHandle:I

.field public final greylist status:I

.field public final blacklist token:Landroid/os/IBinder;

.field public final greylist-max-o triggerInData:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1353
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>(IIZIIIZLandroid/media/AudioFormat;[BJ)V
    .registers 27
    .param p1, "status"    # I
    .param p2, "soundModelHandle"    # I
    .param p3, "captureAvailable"    # Z
    .param p4, "captureSession"    # I
    .param p5, "captureDelayMs"    # I
    .param p6, "capturePreambleMs"    # I
    .param p7, "triggerInData"    # Z
    .param p8, "captureFormat"    # Landroid/media/AudioFormat;
    .param p9, "data"    # [B
    .param p10, "halEventReceivedMillis"    # J

    .line 1261
    const/4 v0, 0x3

    move/from16 v2, p1

    if-ne v2, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    move v11, v0

    const/4 v14, 0x0

    move-object v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v12, p10

    invoke-direct/range {v1 .. v14}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[BZJLandroid/os/IBinder;)V

    .line 1265
    return-void
.end method

.method public constructor blacklist <init>(IIZIIIZLandroid/media/AudioFormat;[BZJLandroid/os/IBinder;)V
    .registers 15
    .param p1, "status"    # I
    .param p2, "soundModelHandle"    # I
    .param p3, "captureAvailable"    # Z
    .param p4, "captureSession"    # I
    .param p5, "captureDelayMs"    # I
    .param p6, "capturePreambleMs"    # I
    .param p7, "triggerInData"    # Z
    .param p8, "captureFormat"    # Landroid/media/AudioFormat;
    .param p9, "data"    # [B
    .param p10, "recognitionStillActive"    # Z
    .param p11, "halEventReceivedMillis"    # J
    .param p13, "token"    # Landroid/os/IBinder;

    .line 1272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1273
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    .line 1274
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    .line 1275
    iput-boolean p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    .line 1276
    iput p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    .line 1277
    iput p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    .line 1278
    iput p6, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    .line 1279
    iput-boolean p7, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    .line 1280
    invoke-static {p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFormat;

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    .line 1281
    if-eqz p9, :cond_1d

    move-object v0, p9

    goto :goto_20

    :cond_1d
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_20
    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    .line 1282
    iput-boolean p10, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->recognitionStillActive:Z

    .line 1283
    iput-wide p11, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->halEventReceivedMillis:J

    .line 1284
    iput-object p13, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->token:Landroid/os/IBinder;

    .line 1285
    return-void
.end method

.method protected static greylist-max-o fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    .registers 15
    .param p0, "in"    # Landroid/os/Parcel;

    .line 1366
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1367
    .local v1, "status":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1368
    .local v2, "soundModelHandle":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_12

    move v0, v4

    goto :goto_13

    :cond_12
    move v0, v3

    .line 1369
    .local v0, "captureAvailable":Z
    :goto_13
    move v5, v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1370
    .local v4, "captureSession":I
    move v6, v5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1371
    .local v5, "captureDelayMs":I
    move v7, v6

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1372
    .local v6, "capturePreambleMs":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v8

    if-ne v8, v7, :cond_29

    move v3, v7

    .line 1373
    .local v3, "triggerInData":Z
    :cond_29
    const/4 v8, 0x0

    .line 1374
    .local v8, "captureFormat":Landroid/media/AudioFormat;
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    if-ne v9, v7, :cond_51

    .line 1375
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1376
    .local v7, "sampleRate":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1377
    .local v9, "encoding":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1378
    .local v10, "channelMask":I
    new-instance v11, Landroid/media/AudioFormat$Builder;

    invoke-direct {v11}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 1379
    invoke-virtual {v11, v10}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v11

    .line 1380
    invoke-virtual {v11, v9}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v11

    .line 1381
    invoke-virtual {v11, v7}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v11

    .line 1382
    invoke-virtual {v11}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v8

    .line 1384
    .end local v7    # "sampleRate":I
    .end local v9    # "encoding":I
    .end local v10    # "channelMask":I
    :cond_51
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v9

    .line 1385
    .local v9, "data":[B
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 1386
    .local v10, "recognitionStillActive":Z
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 1387
    .local v11, "halEventReceivedMillis":J
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 1388
    .local v13, "token":Landroid/os/IBinder;
    move v7, v3

    move v3, v0

    .end local v0    # "captureAvailable":Z
    .local v3, "captureAvailable":Z
    .local v7, "triggerInData":Z
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    invoke-direct/range {v0 .. v13}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[BZJLandroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1395
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1445
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1446
    return v0

    .line 1447
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1448
    return v1

    .line 1449
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 1450
    return v1

    .line 1451
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .line 1452
    .local v2, "other":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    iget-boolean v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    if-eq v3, v4, :cond_1d

    .line 1453
    return v1

    .line 1454
    :cond_1d
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    if-eq v3, v4, :cond_24

    .line 1455
    return v1

    .line 1456
    :cond_24
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    if-eq v3, v4, :cond_2b

    .line 1457
    return v1

    .line 1458
    :cond_2b
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    if-eq v3, v4, :cond_32

    .line 1459
    return v1

    .line 1460
    :cond_32
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 1461
    return v1

    .line 1462
    :cond_3d
    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->recognitionStillActive:Z

    iget-boolean v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->recognitionStillActive:Z

    if-eq v3, v4, :cond_44

    .line 1463
    return v1

    .line 1464
    :cond_44
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    if-eq v3, v4, :cond_4b

    .line 1465
    return v1

    .line 1466
    :cond_4b
    iget-wide v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->halEventReceivedMillis:J

    iget-wide v5, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->halEventReceivedMillis:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_54

    .line 1467
    return v1

    .line 1469
    :cond_54
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->token:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->token:Landroid/os/IBinder;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 1470
    return v1

    .line 1472
    :cond_5f
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    if-eq v3, v4, :cond_66

    .line 1473
    return v1

    .line 1474
    :cond_66
    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    iget-boolean v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    if-eq v3, v4, :cond_6d

    .line 1475
    return v1

    .line 1476
    :cond_6d
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v3, :cond_76

    .line 1477
    iget-object v3, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-eqz v3, :cond_a8

    .line 1478
    return v1

    .line 1480
    :cond_76
    iget-object v3, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v3, :cond_7b

    .line 1481
    return v1

    .line 1482
    :cond_7b
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v4}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v4

    if-eq v3, v4, :cond_8a

    .line 1483
    return v1

    .line 1484
    :cond_8a
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v4}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v4

    if-eq v3, v4, :cond_99

    .line 1485
    return v1

    .line 1486
    :cond_99
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v3

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v4}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v4

    if-eq v3, v4, :cond_a8

    .line 1487
    return v1

    .line 1489
    :cond_a8
    return v0
.end method

.method public whitelist getCaptureFormat()Landroid/media/AudioFormat;
    .registers 2

    .line 1303
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public whitelist getCaptureSession()I
    .registers 2

    .line 1313
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    return v0
.end method

.method public whitelist getData()[B
    .registers 2

    .line 1324
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    return-object v0
.end method

.method public whitelist getHalEventReceivedMillis()J
    .registers 3

    .line 1339
    iget-wide v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->halEventReceivedMillis:J

    return-wide v0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .registers 2

    .line 1349
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 1422
    const/16 v0, 0x1f

    .line 1423
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1424
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    const/16 v4, 0x4cf

    const/16 v5, 0x4d5

    if-eqz v3, :cond_f

    move v3, v4

    goto :goto_10

    :cond_f
    move v3, v5

    :goto_10
    add-int/2addr v2, v3

    .line 1425
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    add-int/2addr v1, v3

    .line 1426
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    add-int/2addr v2, v3

    .line 1427
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    add-int/2addr v1, v3

    .line 1428
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    if-eqz v3, :cond_27

    goto :goto_28

    :cond_27
    move v4, v5

    :goto_28
    add-int/2addr v2, v4

    .line 1429
    .end local v1    # "result":I
    .restart local v2    # "result":I
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-eqz v1, :cond_49

    .line 1430
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    add-int/2addr v1, v3

    .line 1431
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    add-int/2addr v2, v3

    .line 1432
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v3

    add-int v2, v1, v3

    .line 1434
    :cond_49
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v1, v3

    .line 1435
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    add-int/2addr v2, v3

    .line 1436
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    add-int/2addr v1, v3

    .line 1437
    .end local v2    # "result":I
    .restart local v1    # "result":I
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->recognitionStillActive:Z

    if-eqz v2, :cond_63

    const/16 v2, 0x509

    goto :goto_65

    :cond_63
    const/16 v2, 0x50b

    :goto_65
    add-int/2addr v1, v2

    .line 1438
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->halEventReceivedMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 1439
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->token:Landroid/os/IBinder;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1440
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist isCaptureAvailable()Z
    .registers 2

    .line 1293
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognitionEvent [status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", soundModelHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", captureAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", captureSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", captureDelayMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capturePreambleMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerInData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1500
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    const-string v2, ""

    if-nez v1, :cond_61

    move-object v1, v2

    goto :goto_7a

    .line 1501
    :cond_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", sampleRate="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1502
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v1, :cond_84

    move-object v1, v2

    goto :goto_9d

    .line 1503
    :cond_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", encoding="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_9d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1504
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v1, :cond_a6

    goto :goto_bf

    .line 1505
    :cond_a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", channelMask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_bf
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1506
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    if-nez v1, :cond_cf

    const/4 v1, 0x0

    goto :goto_d2

    :cond_cf
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    array-length v1, v1

    :goto_d2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recognitionStillActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->recognitionStillActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", halEventReceivedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->halEventReceivedMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1495
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1400
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1402
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1403
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1406
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1407
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-eqz v0, :cond_49

    .line 1408
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1409
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1410
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1411
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4d

    .line 1413
    :cond_49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1415
    :goto_4d
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 1416
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->recognitionStillActive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1417
    iget-wide v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->halEventReceivedMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1418
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1419
    return-void
.end method
