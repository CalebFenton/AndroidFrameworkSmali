.class final Landroid/media/internal/exo/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;,
        Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;,
        Landroid/media/internal/exo/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Landroid/media/internal/exo/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Landroid/media/internal/exo/extractor/mp4/AtomParsers$SampleSizeBox;,
        Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# static fields
.field private static final blacklist opusMagic:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    const-string v0, "OpusHead"

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->opusMagic:[B

    return-void
.end method

.method private static blacklist allocateHdrStaticInfo()Ljava/nio/ByteBuffer;
    .registers 2

    const/16 v0, 0x19

    .line 1311
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist canApplyEditWithGaplessInfo([JJJJ)Z
    .registers 14

    .line 1827
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 1828
    invoke-static {v2, v3, v0}, Landroid/media/internal/exo/util/Util;->constrainValue(III)I

    move-result v4

    .line 1829
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 1830
    invoke-static {v5, v3, v0}, Landroid/media/internal/exo/util/Util;->constrainValue(III)I

    move-result v0

    .line 1831
    aget-wide v5, p0, v3

    cmp-long v2, v5, p3

    if-gtz v2, :cond_26

    aget-wide v4, p0, v4

    cmp-long p3, p3, v4

    if-gez p3, :cond_26

    aget-wide p3, p0, v0

    cmp-long p0, p3, p5

    if-gez p0, :cond_26

    cmp-long p0, p5, p1

    if-gtz p0, :cond_26

    return v1

    :cond_26
    return v3
.end method

.method private static blacklist findBoxPosition(Landroid/media/internal/exo/util/ParsableByteArray;III)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 1624
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, p2, :cond_a

    move v3, v2

    goto :goto_b

    :cond_a
    move v3, v1

    :goto_b
    const/4 v4, 0x0

    .line 1625
    invoke-static {v3, v4}, Landroid/media/internal/exo/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    :goto_f
    sub-int v3, v0, p2

    if-ge v3, p3, :cond_2d

    .line 1627
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1628
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v3

    if-lez v3, :cond_1e

    move v4, v2

    goto :goto_1f

    :cond_1e
    move v4, v1

    .line 1629
    :goto_1f
    const-string v5, "childAtomSize must be positive"

    invoke-static {v4, v5}, Landroid/media/internal/exo/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1630
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v4

    if-ne v4, p1, :cond_2b

    return v0

    :cond_2b
    add-int/2addr v0, v3

    goto :goto_f

    :cond_2d
    const/4 p0, -0x1

    return p0
.end method

.method private static blacklist getTrackTypeForHdlr(I)I
    .registers 2

    .line 0
    const v0, 0x736f756e

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const v0, 0x76696465

    if-ne p0, v0, :cond_e

    const/4 p0, 0x2

    return p0

    :cond_e
    const v0, 0x74657874

    if-eq p0, v0, :cond_2c

    const v0, 0x7362746c

    if-eq p0, v0, :cond_2c

    const v0, 0x73756274

    if-eq p0, v0, :cond_2c

    const v0, 0x636c6370

    if-ne p0, v0, :cond_23

    goto :goto_2c

    :cond_23
    const v0, 0x6d657461

    if-ne p0, v0, :cond_2a

    const/4 p0, 0x5

    return p0

    :cond_2a
    const/4 p0, -0x1

    return p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x3

    return p0
.end method

.method public static blacklist maybeSkipRemainingMetaAtomHeaderBytes(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 4

    .line 250
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/4 v1, 0x4

    .line 255
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 256
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_13

    add-int/lit8 v0, v0, 0x4

    .line 259
    :cond_13
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private static blacklist parseAudioSampleEntry(Landroid/media/internal/exo/util/ParsableByteArray;IIIILjava/lang/String;ZLandroid/media/internal/exo/drm/DrmInitData;Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;I)V
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    add-int/lit8 v7, v1, 0x10

    .line 1379
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    const/4 v7, 0x6

    if-eqz p6, :cond_1e

    .line 1383
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 1384
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_24

    :cond_1e
    const/16 v9, 0x8

    .line 1386
    invoke-virtual {v0, v9}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    const/4 v9, 0x0

    :goto_24
    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0x10

    if-eqz v9, :cond_47

    if-ne v9, v12, :cond_2e

    goto :goto_47

    :cond_2e
    if-ne v9, v11, :cond_336

    .line 1408
    invoke-virtual {v0, v13}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1410
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readDouble()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v7, v13

    .line 1411
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    const/16 v13, 0x14

    .line 1415
    invoke-virtual {v0, v13}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    const/4 v15, 0x0

    goto :goto_64

    .line 1396
    :cond_47
    :goto_47
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v14

    .line 1397
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1399
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v7

    .line 1401
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v15

    sub-int/2addr v15, v10

    invoke-virtual {v0, v15}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1402
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v15

    if-ne v9, v12, :cond_63

    .line 1405
    invoke-virtual {v0, v13}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    :cond_63
    move v9, v14

    .line 1421
    :goto_64
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v13

    const v14, 0x656e6361

    move/from16 v16, v11

    move/from16 v17, v12

    move/from16 v12, p1

    if-ne v12, v14, :cond_9a

    .line 1425
    invoke-static {v0, v1, v2}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Landroid/media/internal/exo/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v14

    if-eqz v14, :cond_97

    .line 1427
    iget-object v12, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v5, :cond_85

    const/4 v5, 0x0

    goto :goto_8f

    .line 1431
    :cond_85
    iget-object v10, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    iget-object v10, v10, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/media/internal/exo/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroid/media/internal/exo/drm/DrmInitData;

    move-result-object v5

    .line 1432
    :goto_8f
    iget-object v10, v6, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    aput-object v14, v10, p9

    .line 1434
    :cond_97
    invoke-virtual {v0, v13}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    :cond_9a
    const v10, 0x61632d33

    const v14, 0x616c6163

    if-ne v12, v10, :cond_a9

    .line 1444
    const-string v10, "audio/ac3"

    :goto_a4
    move-object/from16 v18, v10

    const/4 v10, -0x1

    goto/16 :goto_15e

    :cond_a9
    const v10, 0x65632d33

    if-ne v12, v10, :cond_b1

    .line 1446
    const-string v10, "audio/eac3"

    goto :goto_a4

    :cond_b1
    const v10, 0x61632d34

    if-ne v12, v10, :cond_b9

    .line 1448
    const-string v10, "audio/ac4"

    goto :goto_a4

    :cond_b9
    const v10, 0x64747363

    if-ne v12, v10, :cond_c1

    .line 1450
    const-string v10, "audio/vnd.dts"

    goto :goto_a4

    :cond_c1
    const v10, 0x64747368

    if-eq v12, v10, :cond_15a

    const v10, 0x6474736c

    if-ne v12, v10, :cond_cd

    goto/16 :goto_15a

    :cond_cd
    const v10, 0x64747365

    if-ne v12, v10, :cond_d5

    .line 1454
    const-string v10, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_a4

    :cond_d5
    const v10, 0x64747378

    if-ne v12, v10, :cond_dd

    .line 1456
    const-string v10, "audio/vnd.dts.uhd;profile=p2"

    goto :goto_a4

    :cond_dd
    const v10, 0x73616d72

    if-ne v12, v10, :cond_e5

    .line 1458
    const-string v10, "audio/3gpp"

    goto :goto_a4

    :cond_e5
    const v10, 0x73617762

    if-ne v12, v10, :cond_ed

    .line 1460
    const-string v10, "audio/amr-wb"

    goto :goto_a4

    :cond_ed
    const v10, 0x6c70636d

    .line 1461
    const-string v18, "audio/raw"

    if-eq v12, v10, :cond_157

    const v10, 0x736f7774

    if-ne v12, v10, :cond_fa

    goto :goto_157

    :cond_fa
    const v10, 0x74776f73

    if-ne v12, v10, :cond_102

    const/high16 v10, 0x10000000

    goto :goto_15e

    :cond_102
    const v10, 0x2e6d7032

    if-eq v12, v10, :cond_153

    const v10, 0x2e6d7033

    if-ne v12, v10, :cond_10d

    goto :goto_153

    :cond_10d
    const v10, 0x6d686131

    if-ne v12, v10, :cond_115

    .line 1470
    const-string v10, "audio/mha1"

    goto :goto_a4

    :cond_115
    const v10, 0x6d686d31

    if-ne v12, v10, :cond_11d

    .line 1472
    const-string v10, "audio/mhm1"

    goto :goto_a4

    :cond_11d
    if-ne v12, v14, :cond_122

    .line 1474
    const-string v10, "audio/alac"

    goto :goto_a4

    :cond_122
    const v10, 0x616c6177

    if-ne v12, v10, :cond_12b

    .line 1476
    const-string v10, "audio/g711-alaw"

    goto/16 :goto_a4

    :cond_12b
    const v10, 0x756c6177

    if-ne v12, v10, :cond_134

    .line 1478
    const-string v10, "audio/g711-mlaw"

    goto/16 :goto_a4

    :cond_134
    const v10, 0x4f707573

    if-ne v12, v10, :cond_13d

    .line 1480
    const-string v10, "audio/opus"

    goto/16 :goto_a4

    :cond_13d
    const v10, 0x664c6143

    if-ne v12, v10, :cond_146

    .line 1482
    const-string v10, "audio/flac"

    goto/16 :goto_a4

    :cond_146
    const v10, 0x6d6c7061

    if-ne v12, v10, :cond_14f

    .line 1484
    const-string v10, "audio/true-hd"

    goto/16 :goto_a4

    :cond_14f
    const/4 v10, -0x1

    const/16 v18, 0x0

    goto :goto_15e

    .line 1468
    :cond_153
    :goto_153
    const-string v10, "audio/mpeg"

    goto/16 :goto_a4

    :cond_157
    :goto_157
    move/from16 v10, v16

    goto :goto_15e

    .line 1452
    :cond_15a
    :goto_15a
    const-string v10, "audio/vnd.dts.hd"

    goto/16 :goto_a4

    :goto_15e
    move-object/from16 v12, v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_164
    sub-int v11, v13, v1

    if-ge v11, v2, :cond_2fd

    .line 1489
    invoke-virtual {v0, v13}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1490
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v11

    if-lez v11, :cond_174

    move/from16 v14, v17

    goto :goto_175

    :cond_174
    const/4 v14, 0x0

    .line 1491
    :goto_175
    const-string v8, "childAtomSize must be positive"

    invoke-static {v14, v8}, Landroid/media/internal/exo/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1492
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v8

    const v14, 0x6d686143

    if-ne v8, v14, :cond_19a

    add-int/lit8 v8, v11, -0xd

    .line 1499
    new-array v14, v8, [B

    add-int/lit8 v1, v13, 0xd

    .line 1500
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    const/4 v1, 0x0

    .line 1501
    invoke-virtual {v0, v14, v1, v8}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 1502
    invoke-static {v14}, Landroid/media/internal/guava_common/collect/ImmutableList;->of(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v20

    :goto_194
    const/4 v8, -0x1

    const/4 v14, 0x4

    :goto_196
    const/16 v18, 0x0

    goto/16 :goto_2f3

    :cond_19a
    const v1, 0x65736473

    if-eq v8, v1, :cond_1a6

    if-eqz p6, :cond_1ae

    const v14, 0x77617665

    if-ne v8, v14, :cond_1ae

    :cond_1a6
    const v2, 0x616c6163

    const/4 v14, 0x4

    const/16 v18, 0x0

    goto/16 :goto_2c1

    :cond_1ae
    const v1, 0x64616333

    if-ne v8, v1, :cond_1c9

    add-int/lit8 v1, v13, 0x8

    .line 1527
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1529
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Landroid/media/internal/exo/audio/Ac3Util;->parseAc3AnnexFFormat(Landroid/media/internal/exo/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/internal/exo/Format;

    move-result-object v1

    iput-object v1, v6, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->format:Landroid/media/internal/exo/Format;

    :goto_1c2
    const v2, 0x616c6163

    const/4 v8, 0x0

    const/4 v14, 0x4

    goto/16 :goto_2bd

    :cond_1c9
    const v1, 0x64656333

    if-ne v8, v1, :cond_1de

    add-int/lit8 v1, v13, 0x8

    .line 1531
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1533
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Landroid/media/internal/exo/audio/Ac3Util;->parseEAc3AnnexFFormat(Landroid/media/internal/exo/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/internal/exo/Format;

    move-result-object v1

    iput-object v1, v6, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->format:Landroid/media/internal/exo/Format;

    goto :goto_1c2

    :cond_1de
    const v1, 0x64616334

    if-ne v8, v1, :cond_1f3

    add-int/lit8 v1, v13, 0x8

    .line 1535
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1537
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Landroid/media/internal/exo/audio/Ac4Util;->parseAc4AnnexEFormat(Landroid/media/internal/exo/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/internal/exo/Format;

    move-result-object v1

    iput-object v1, v6, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->format:Landroid/media/internal/exo/Format;

    goto :goto_1c2

    :cond_1f3
    const v1, 0x646d6c70

    if-ne v8, v1, :cond_215

    if-lez v15, :cond_1fe

    move v7, v15

    move/from16 v9, v16

    goto :goto_194

    .line 1540
    :cond_1fe
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-static {v0, v14}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object v0

    throw v0

    :cond_215
    const/4 v14, 0x0

    const v1, 0x64647473

    if-ne v8, v1, :cond_23f

    .line 1550
    new-instance v1, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v1}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 1552
    invoke-virtual {v1, v3}, Landroid/media/internal/exo/Format$Builder;->setId(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 1553
    invoke-virtual {v1, v12}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 1554
    invoke-virtual {v1, v9}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 1555
    invoke-virtual {v1, v7}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 1556
    invoke-virtual {v1, v5}, Landroid/media/internal/exo/Format$Builder;->setDrmInitData(Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 1557
    invoke-virtual {v1, v4}, Landroid/media/internal/exo/Format$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 1558
    invoke-virtual {v1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v1

    iput-object v1, v6, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->format:Landroid/media/internal/exo/Format;

    goto :goto_1c2

    :cond_23f
    const v1, 0x644f7073

    if-ne v8, v1, :cond_25d

    add-int/lit8 v1, v11, -0x8

    .line 1563
    sget-object v8, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v14, v8

    add-int/2addr v14, v1

    invoke-static {v8, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    add-int/lit8 v2, v13, 0x8

    .line 1564
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1565
    array-length v2, v8

    invoke-virtual {v0, v14, v2, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 1566
    invoke-static {v14}, Landroid/media/internal/exo/audio/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object v20

    goto/16 :goto_194

    :cond_25d
    const v1, 0x64664c61

    if-ne v8, v1, :cond_28b

    add-int/lit8 v1, v11, -0xc

    add-int/lit8 v2, v11, -0x8

    .line 1569
    new-array v2, v2, [B

    const/16 v8, 0x66

    const/16 v18, 0x0

    .line 1570
    aput-byte v8, v2, v18

    const/16 v8, 0x4c

    .line 1571
    aput-byte v8, v2, v17

    const/16 v8, 0x61

    .line 1572
    aput-byte v8, v2, v16

    const/4 v8, 0x3

    const/16 v14, 0x43

    .line 1573
    aput-byte v14, v2, v8

    add-int/lit8 v8, v13, 0xc

    .line 1574
    invoke-virtual {v0, v8}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    const/4 v14, 0x4

    .line 1575
    invoke-virtual {v0, v2, v14, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 1576
    invoke-static {v2}, Landroid/media/internal/guava_common/collect/ImmutableList;->of(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v20

    const/4 v8, -0x1

    goto/16 :goto_196

    :cond_28b
    const v2, 0x616c6163

    const/4 v14, 0x4

    if-ne v8, v2, :cond_2bc

    add-int/lit8 v1, v11, -0xc

    .line 1579
    new-array v7, v1, [B

    add-int/lit8 v8, v13, 0xc

    .line 1580
    invoke-virtual {v0, v8}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    const/4 v8, 0x0

    .line 1581
    invoke-virtual {v0, v7, v8, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 1585
    invoke-static {v7}, Landroid/media/internal/exo/util/CodecSpecificDataUtil;->parseAlacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v1

    .line 1586
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1587
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1588
    invoke-static {v7}, Landroid/media/internal/guava_common/collect/ImmutableList;->of(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v20

    move/from16 v18, v8

    move v7, v9

    const/4 v8, -0x1

    move v9, v1

    goto :goto_2f3

    :cond_2bc
    const/4 v8, 0x0

    :goto_2bd
    move/from16 v18, v8

    const/4 v8, -0x1

    goto :goto_2f3

    :goto_2c1
    if-ne v8, v1, :cond_2c6

    move v1, v13

    :goto_2c4
    const/4 v8, -0x1

    goto :goto_2cb

    .line 1508
    :cond_2c6
    invoke-static {v0, v1, v13, v11}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->findBoxPosition(Landroid/media/internal/exo/util/ParsableByteArray;III)I

    move-result v1

    goto :goto_2c4

    :goto_2cb
    if-eq v1, v8, :cond_2f3

    .line 1511
    invoke-static {v0, v1}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseEsdsFromParent(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v1

    .line 1512
    iget-object v12, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 1513
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    if-eqz v1, :cond_2f3

    .line 1515
    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ef

    .line 1518
    invoke-static {v1}, Landroid/media/internal/exo/audio/AacUtil;->parseAudioSpecificConfig([B)Landroid/media/internal/exo/audio/AacUtil$Config;

    move-result-object v2

    .line 1519
    iget v7, v2, Landroid/media/internal/exo/audio/AacUtil$Config;->sampleRateHz:I

    .line 1520
    iget v9, v2, Landroid/media/internal/exo/audio/AacUtil$Config;->channelCount:I

    .line 1521
    iget-object v2, v2, Landroid/media/internal/exo/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    move-object/from16 v19, v2

    .line 1523
    :cond_2ef
    invoke-static {v1}, Landroid/media/internal/guava_common/collect/ImmutableList;->of(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v20

    :cond_2f3
    :goto_2f3
    add-int/2addr v13, v11

    move/from16 v1, p2

    move/from16 v2, p3

    const v14, 0x616c6163

    goto/16 :goto_164

    .line 1593
    :cond_2fd
    iget-object v0, v6, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->format:Landroid/media/internal/exo/Format;

    if-nez v0, :cond_336

    if-eqz v12, :cond_336

    .line 1594
    new-instance v0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 1596
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/Format$Builder;->setId(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 1597
    invoke-virtual {v0, v12}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    move-object/from16 v1, v19

    .line 1598
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setCodecs(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 1599
    invoke-virtual {v0, v9}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 1600
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 1601
    invoke-virtual {v0, v10}, Landroid/media/internal/exo/Format$Builder;->setPcmEncoding(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    move-object/from16 v1, v20

    .line 1602
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 1603
    invoke-virtual {v0, v5}, Landroid/media/internal/exo/Format$Builder;->setDrmInitData(Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 1604
    invoke-virtual {v0, v4}, Landroid/media/internal/exo/Format$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 1605
    invoke-virtual {v0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v0

    iput-object v0, v6, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->format:Landroid/media/internal/exo/Format;

    :cond_336
    return-void
.end method

.method static blacklist parseCommonEncryptionSinfFromParent(Landroid/media/internal/exo/util/ParsableByteArray;II)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v1

    move v7, v2

    move-object v4, v3

    move-object v6, v4

    :goto_9
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3d

    .line 1718
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1719
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 1720
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v9

    const v10, 0x66726d61

    if-ne v9, v10, :cond_26

    .line 1722
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3b

    :cond_26
    const v10, 0x7363686d

    if-ne v9, v10, :cond_34

    const/4 v4, 0x4

    .line 1724
    invoke-virtual {p0, v4}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1726
    invoke-virtual {p0, v4}, Landroid/media/internal/exo/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3b

    :cond_34
    const v10, 0x73636869

    if-ne v9, v10, :cond_3b

    move v5, v0

    move v7, v8

    :cond_3b
    :goto_3b
    add-int/2addr v0, v8

    goto :goto_9

    .line 1734
    :cond_3d
    const-string p1, "cenc"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "cbc1"

    .line 1735
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "cens"

    .line 1736
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "cbcs"

    .line 1737
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    goto :goto_5f

    :cond_5e
    return-object v3

    :cond_5f
    :goto_5f
    const/4 p1, 0x1

    if-eqz v6, :cond_64

    move p2, p1

    goto :goto_65

    :cond_64
    move p2, v2

    .line 1738
    :goto_65
    const-string v0, "frma atom is mandatory"

    invoke-static {p2, v0}, Landroid/media/internal/exo/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    if-eq v5, v1, :cond_6e

    move p2, p1

    goto :goto_6f

    :cond_6e
    move p2, v2

    .line 1739
    :goto_6f
    const-string v0, "schi atom is mandatory"

    invoke-static {p2, v0}, Landroid/media/internal/exo/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1743
    invoke-static {p0, v5, v7, v4}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseSchiFromParent(Landroid/media/internal/exo/util/ParsableByteArray;IILjava/lang/String;)Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    move-result-object p0

    if-eqz p0, :cond_7b

    move v2, p1

    .line 1745
    :cond_7b
    const-string p1, "tenc atom is mandatory"

    invoke-static {v2, p1}, Landroid/media/internal/exo/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1746
    invoke-static {p0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseEdts(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    const v0, 0x656c7374

    .line 1335
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 1339
    :cond_b
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v0, 0x8

    .line 1340
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1341
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1342
    invoke-static {v0}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 1343
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 1344
    new-array v2, v1, [J

    .line 1345
    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v1, :cond_56

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2d

    .line 1348
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    goto :goto_31

    :cond_2d
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    :goto_31
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_3a

    .line 1349
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    goto :goto_3f

    :cond_3a
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v6

    int-to-long v6, v6

    :goto_3f
    aput-wide v6, v3, v4

    .line 1350
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readShort()S

    move-result v6

    if-ne v6, v5, :cond_4e

    const/4 v5, 0x2

    .line 1355
    invoke-virtual {p0, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 1353
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1357
    :cond_56
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseEsdsFromParent(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/16 v0, 0xc

    add-int/2addr p1, v0

    .line 1642
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    const/4 p1, 0x1

    .line 1644
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1645
    invoke-static {p0}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseExpandableClassSize(Landroid/media/internal/exo/util/ParsableByteArray;)I

    const/4 v1, 0x2

    .line 1646
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1648
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1c

    .line 1650
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    :cond_1c
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_27

    .line 1653
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    :cond_27
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2e

    .line 1656
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1660
    :cond_2e
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1661
    invoke-static {p0}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseExpandableClassSize(Landroid/media/internal/exo/util/ParsableByteArray;)I

    .line 1664
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 1665
    invoke-static {v1}, Landroid/media/internal/exo/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v1

    .line 1666
    const-string v2, "audio/mpeg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    const-string v2, "audio/vnd.dts"

    .line 1667
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    const-string v2, "audio/vnd.dts.hd"

    .line 1668
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    goto :goto_6a

    .line 1672
    :cond_55
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1675
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1676
    invoke-static {p0}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseExpandableClassSize(Landroid/media/internal/exo/util/ParsableByteArray;)I

    move-result p1

    .line 1677
    new-array v0, p1, [B

    const/4 v2, 0x0

    .line 1678
    invoke-virtual {p0, v0, v2, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 1679
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_6a
    :goto_6a
    const/4 p0, 0x0

    .line 1669
    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseExpandableClassSize(Landroid/media/internal/exo/util/ParsableByteArray;)I
    .registers 4

    .line 1815
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_6
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    .line 1818
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_6

    :cond_15
    return v1
.end method

.method private static blacklist parseHdlr(Landroid/media/internal/exo/util/ParsableByteArray;)I
    .registers 2

    const/16 v0, 0x10

    .line 867
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 868
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result p0

    return p0
.end method

.method private static blacklist parseIlst(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/Metadata;
    .registers 4

    const/16 v0, 0x8

    .line 745
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 747
    :cond_a
    :goto_a
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v1

    if-ge v1, p1, :cond_1a

    .line 748
    invoke-static {p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseIlstElement(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/Metadata$Entry;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 750
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 753
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x0

    return-object p0

    :cond_22
    new-instance p0, Landroid/media/internal/exo/metadata/Metadata;

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static blacklist parseMdhd(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 894
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 895
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 896
    invoke-static {v1}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_11

    move v2, v0

    goto :goto_13

    :cond_11
    const/16 v2, 0x10

    .line 897
    :goto_13
    invoke-virtual {p0, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 898
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    if-nez v1, :cond_1d

    const/4 v0, 0x4

    .line 899
    :cond_1d
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 900
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 906
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseMdtaFromMeta(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;)Landroid/media/internal/exo/metadata/Metadata;
    .registers 11

    const v0, 0x68646c72    # 4.3148E24f

    .line 191
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    const v1, 0x6b657973

    .line 192
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    const v2, 0x696c7374

    .line 193
    invoke-virtual {p0, v2}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_a5

    if-eqz v1, :cond_a5

    if-eqz p0, :cond_a5

    .line 194
    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 197
    invoke-static {v0}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseHdlr(Landroid/media/internal/exo/util/ParsableByteArray;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_29

    goto/16 :goto_a5

    .line 203
    :cond_29
    iget-object v0, v1, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v1, 0xc

    .line 204
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 205
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 206
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_37
    const/16 v5, 0x8

    if-ge v4, v1, :cond_4d

    .line 208
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v6

    const/4 v7, 0x4

    .line 209
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v6, v5

    .line 211
    invoke-virtual {v0, v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 215
    :cond_4d
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 216
    invoke-virtual {p0, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    :goto_57
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-le v4, v5, :cond_98

    .line 219
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 220
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 221
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_7d

    if-ge v7, v1, :cond_7d

    .line 223
    aget-object v7, v3, v7

    add-int v8, v4, v6

    .line 226
    invoke-static {p0, v8, v7}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseMdtaMetadataEntryFromIlst(Landroid/media/internal/exo/util/ParsableByteArray;ILjava/lang/String;)Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;

    move-result-object v7

    if-eqz v7, :cond_93

    .line 228
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 231
    :cond_7d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipped metadata with unknown key index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AtomParsers"

    invoke-static {v8, v7}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_93
    :goto_93
    add-int/2addr v4, v6

    .line 233
    invoke-virtual {p0, v4}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    goto :goto_57

    .line 235
    :cond_98
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9f

    return-object v2

    :cond_9f
    new-instance p0, Landroid/media/internal/exo/metadata/Metadata;

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_a5
    :goto_a5
    return-object v2
.end method

.method private static blacklist parseMetaDataSampleEntry(Landroid/media/internal/exo/util/ParsableByteArray;IIILandroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;)V
    .registers 5

    add-int/lit8 p2, p2, 0x10

    .line 1316
    invoke-virtual {p0, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    const p2, 0x6d657474

    if-ne p1, p2, :cond_26

    .line 1318
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 1319
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 1321
    new-instance p1, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {p1}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    invoke-virtual {p1, p3}, Landroid/media/internal/exo/Format$Builder;->setId(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p0

    iput-object p0, p4, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->format:Landroid/media/internal/exo/Format;

    :cond_26
    return-void
.end method

.method private static blacklist parseMvhd(Landroid/media/internal/exo/util/ParsableByteArray;)J
    .registers 3

    const/16 v0, 0x8

    .line 794
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 795
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 796
    invoke-static {v1}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_12

    :cond_10
    const/16 v0, 0x10

    .line 797
    :goto_12
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 798
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist parsePaspFromParent(Landroid/media/internal/exo/util/ParsableByteArray;I)F
    .registers 2

    add-int/lit8 p1, p1, 0x8

    .line 1361
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1362
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    .line 1363
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static blacklist parseProjFromParent(Landroid/media/internal/exo/util/ParsableByteArray;II)[B
    .registers 7

    add-int/lit8 v0, p1, 0x8

    :goto_2
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_22

    .line 1802
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1803
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1804
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x70726f6a

    if-ne v2, v3, :cond_20

    .line 1806
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p0

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_20
    add-int/2addr v0, v1

    goto :goto_2

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist parseSampleEntryEncryptionData(Landroid/media/internal/exo/util/ParsableByteArray;II)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 1690
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v0

    :goto_4
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2b

    .line 1692
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1693
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    if-lez v1, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    .line 1694
    :goto_14
    const-string v3, "childAtomSize must be positive"

    invoke-static {v2, v3}, Landroid/media/internal/exo/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1695
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x73696e66

    if-ne v2, v3, :cond_29

    .line 1699
    invoke-static {p0, v0, v1}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseCommonEncryptionSinfFromParent(Landroid/media/internal/exo/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_29

    return-object v2

    :cond_29
    add-int/2addr v0, v1

    goto :goto_4

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist parseSchiFromParent(Landroid/media/internal/exo/util/ParsableByteArray;IILjava/lang/String;)Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;
    .registers 15

    add-int/lit8 v0, p1, 0x8

    :goto_2
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_64

    .line 1757
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1758
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1759
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v3

    const v4, 0x74656e63

    if-ne v3, v4, :cond_61

    .line 1761
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 1762
    invoke-static {p1}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result p1

    const/4 p2, 0x1

    .line 1763
    invoke-virtual {p0, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_2c

    .line 1767
    invoke-virtual {p0, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    move v8, v0

    move v9, v8

    goto :goto_38

    .line 1769
    :cond_2c
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    .line 1773
    :goto_38
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-ne p1, p2, :cond_40

    move v4, p2

    goto :goto_41

    :cond_40
    move v4, v0

    .line 1774
    :goto_41
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    const/16 p1, 0x10

    .line 1775
    new-array v7, p1, [B

    .line 1776
    invoke-virtual {p0, v7, v0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    if-eqz v4, :cond_59

    if-nez v6, :cond_59

    .line 1779
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    .line 1780
    new-array v2, p1, [B

    .line 1781
    invoke-virtual {p0, v2, v0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    :cond_59
    move-object v10, v2

    .line 1783
    new-instance v3, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object v3

    :cond_61
    move-object v5, p3

    add-int/2addr v0, v1

    goto :goto_2

    :cond_64
    return-object v2
.end method

.method private static blacklist parseSmta(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/Metadata;
    .registers 9

    const/4 v0, 0x1

    const/16 v1, 0xc

    .line 763
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 764
    :goto_6
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    if-ge v2, p1, :cond_55

    .line 765
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 766
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 767
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v5

    const v6, 0x73617574

    if-ne v5, v6, :cond_50

    const/16 p1, 0xe

    if-ge v4, p1, :cond_23

    return-object v3

    :cond_23
    const/4 p1, 0x5

    .line 772
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 773
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-eq p1, v1, :cond_32

    const/16 v2, 0xd

    if-eq p1, v2, :cond_32

    return-object v3

    :cond_32
    if-ne p1, v1, :cond_37

    const/high16 p1, 0x43700000    # 240.0f

    goto :goto_39

    :cond_37
    const/high16 p1, 0x42f00000    # 120.0f

    .line 778
    :goto_39
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 779
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    .line 780
    new-instance v1, Landroid/media/internal/exo/metadata/Metadata;

    new-instance v2, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;

    invoke-direct {v2, p1, p0}, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    new-array p0, v0, [Landroid/media/internal/exo/metadata/Metadata$Entry;

    const/4 p1, 0x0

    aput-object v2, p0, p1

    invoke-direct {v1, p0}, Landroid/media/internal/exo/metadata/Metadata;-><init>([Landroid/media/internal/exo/metadata/Metadata$Entry;)V

    return-object v1

    :cond_50
    add-int/2addr v2, v4

    .line 782
    invoke-virtual {p0, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    goto :goto_6

    :cond_55
    return-object v3
.end method

.method private static blacklist parseStbl(Landroid/media/internal/exo/extractor/mp4/Track;Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;Landroid/media/internal/exo/extractor/GaplessInfoHolder;)Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;
    .registers 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const v3, 0x7374737a

    .line 359
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 361
    new-instance v5, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StszSampleSizeBox;

    iget-object v6, v1, Landroid/media/internal/exo/extractor/mp4/Track;->format:Landroid/media/internal/exo/Format;

    invoke-direct {v5, v3, v6}, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;Landroid/media/internal/exo/Format;)V

    goto :goto_23

    :cond_15
    const v3, 0x73747a32

    .line 363
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_4d9

    .line 368
    new-instance v5, Landroid/media/internal/exo/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v5, v3}, Landroid/media/internal/exo/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;)V

    .line 371
    :goto_23
    invoke-interface {v5}, Landroid/media/internal/exo/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_3b

    .line 373
    new-instance v0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    new-array v2, v6, [J

    new-array v3, v6, [I

    new-array v5, v6, [J

    new-array v6, v6, [I

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;-><init>(Landroid/media/internal/exo/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v0

    :cond_3b
    const v7, 0x7374636f

    .line 385
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_54

    const v7, 0x636f3634

    .line 388
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object v7

    invoke-static {v7}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move v9, v8

    goto :goto_55

    :cond_54
    move v9, v6

    .line 390
    :goto_55
    iget-object v7, v7, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    const v10, 0x73747363

    .line 392
    invoke-virtual {v0, v10}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    invoke-static {v10}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    iget-object v10, v10, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    const v11, 0x73747473

    .line 394
    invoke-virtual {v0, v11}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    invoke-static {v11}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    iget-object v11, v11, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    const v12, 0x73747373

    .line 396
    invoke-virtual {v0, v12}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object v12

    if-eqz v12, :cond_81

    .line 397
    iget-object v12, v12, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    goto :goto_82

    :cond_81
    const/4 v12, 0x0

    :goto_82
    const v13, 0x63747473

    .line 399
    invoke-virtual {v0, v13}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 400
    iget-object v0, v0, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    goto :goto_8f

    :cond_8e
    const/4 v0, 0x0

    .line 403
    :goto_8f
    new-instance v13, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;

    invoke-direct {v13, v10, v7, v9}, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Landroid/media/internal/exo/util/ParsableByteArray;Landroid/media/internal/exo/util/ParsableByteArray;Z)V

    const/16 v7, 0xc

    .line 406
    invoke-virtual {v11, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 407
    invoke-virtual {v11}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    sub-int/2addr v9, v8

    .line 408
    invoke-virtual {v11}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    .line 409
    invoke-virtual {v11}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    if-eqz v0, :cond_b0

    .line 416
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 417
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    goto :goto_b1

    :cond_b0
    move v15, v6

    :goto_b1
    const/4 v4, -0x1

    if-eqz v12, :cond_cc

    .line 423
    invoke-virtual {v12, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 424
    invoke-virtual {v12}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    if-lez v7, :cond_c6

    .line 426
    invoke-virtual {v12}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v17, v6

    goto :goto_d1

    :cond_c6
    move/from16 v16, v4

    move/from16 v17, v6

    const/4 v12, 0x0

    goto :goto_d1

    :cond_cc
    move/from16 v16, v4

    move v7, v6

    move/from16 v17, v7

    .line 434
    :goto_d1
    invoke-interface {v5}, Landroid/media/internal/exo/extractor/mp4/AtomParsers$SampleSizeBox;->getFixedSampleSize()I

    move-result v6

    move/from16 v18, v8

    .line 435
    iget-object v8, v1, Landroid/media/internal/exo/extractor/mp4/Track;->format:Landroid/media/internal/exo/Format;

    iget-object v8, v8, Landroid/media/internal/exo/Format;->sampleMimeType:Ljava/lang/String;

    if-eq v6, v4, :cond_ff

    .line 436
    const-string v4, "audio/raw"

    .line 438
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f5

    const-string v4, "audio/g711-mlaw"

    .line 439
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f5

    const-string v4, "audio/g711-alaw"

    .line 440
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ff

    :cond_f5
    if-nez v9, :cond_ff

    if-nez v15, :cond_ff

    if-nez v7, :cond_ff

    move/from16 p1, v18

    :goto_fd
    move-object v8, v5

    goto :goto_102

    :cond_ff
    move/from16 p1, v17

    goto :goto_fd

    :goto_102
    if-eqz p1, :cond_135

    .line 454
    iget v0, v13, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v7, v0, [J

    .line 455
    new-array v0, v0, [I

    .line 456
    :goto_10a
    invoke-virtual {v13}, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v8

    if-eqz v8, :cond_11b

    .line 457
    iget v8, v13, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget-wide v9, v13, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v9, v7, v8

    .line 458
    iget v9, v13, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v9, v0, v8

    goto :goto_10a

    :cond_11b
    int-to-long v8, v14

    .line 461
    invoke-static {v6, v7, v0, v8, v9}, Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v0

    .line 463
    iget-object v6, v0, Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 464
    iget-object v7, v0, Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 465
    iget v8, v0, Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 466
    iget-object v9, v0, Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 467
    iget-object v10, v0, Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 468
    iget-wide v11, v0, Landroid/media/internal/exo/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    move-object v2, v6

    move v4, v8

    move-object v5, v9

    move-object v6, v10

    const-wide/16 v19, 0x0

    :goto_132
    move-wide v8, v11

    goto/16 :goto_28f

    .line 470
    :cond_135
    new-array v6, v3, [J

    const-wide/16 v19, 0x0

    .line 471
    new-array v4, v3, [I

    .line 472
    new-array v5, v3, [J

    move-object/from16 p1, v0

    .line 473
    new-array v0, v3, [I

    move-object/from16 v21, v8

    move-object/from16 v22, v11

    move-object/from16 v25, v12

    move/from16 v8, v16

    move/from16 v11, v17

    move v12, v11

    move/from16 v26, v12

    move/from16 v29, v26

    move-wide/from16 v23, v19

    move-wide/from16 v27, v23

    move/from16 v16, v15

    move v15, v14

    move v14, v10

    move v10, v9

    move/from16 v9, v29

    .line 477
    :goto_15b
    const-string v2, "AtomParsers"

    if-ge v11, v3, :cond_213

    move-wide/from16 v30, v27

    move/from16 v27, v26

    move/from16 v26, v18

    :goto_165
    if-nez v27, :cond_182

    .line 480
    invoke-virtual {v13}, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v26

    if-eqz v26, :cond_182

    move/from16 v28, v14

    move/from16 v32, v15

    .line 481
    iget-wide v14, v13, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move/from16 v33, v3

    .line 482
    iget v3, v13, Landroid/media/internal/exo/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v27, v3

    move-wide/from16 v30, v14

    move/from16 v14, v28

    move/from16 v15, v32

    move/from16 v3, v33

    goto :goto_165

    :cond_182
    move/from16 v33, v3

    move/from16 v28, v14

    move/from16 v32, v15

    if-nez v26, :cond_1a5

    .line 485
    const-string v3, "Unexpected end of chunk data"

    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-static {v6, v11}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 488
    invoke-static {v4, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    .line 489
    invoke-static {v5, v11}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 490
    invoke-static {v0, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    move-object v6, v3

    move v3, v11

    move/from16 v8, v27

    goto/16 :goto_219

    :cond_1a5
    if-eqz p1, :cond_1bc

    move/from16 v2, v29

    :goto_1a9
    if-nez v2, :cond_1b8

    if-lez v16, :cond_1b8

    .line 497
    invoke-virtual/range {p1 .. p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 503
    invoke-virtual/range {p1 .. p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v12

    add-int/lit8 v16, v16, -0x1

    goto :goto_1a9

    :cond_1b8
    add-int/lit8 v2, v2, -0x1

    move/from16 v29, v2

    .line 509
    :cond_1bc
    aput-wide v30, v6, v11

    .line 510
    invoke-interface/range {v21 .. v21}, Landroid/media/internal/exo/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v2

    aput v2, v4, v11

    if-le v2, v9, :cond_1c7

    move v9, v2

    :cond_1c7
    int-to-long v2, v12

    add-long v2, v23, v2

    .line 514
    aput-wide v2, v5, v11

    if-nez v25, :cond_1d1

    move/from16 v2, v18

    goto :goto_1d3

    :cond_1d1
    move/from16 v2, v17

    .line 517
    :goto_1d3
    aput v2, v0, v11

    if-ne v11, v8, :cond_1ea

    .line 519
    aput v18, v0, v11

    add-int/lit8 v7, v7, -0x1

    if-lez v7, :cond_1ea

    .line 522
    invoke-static/range {v25 .. v25}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v2}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v8, v2

    :cond_1ea
    move/from16 v14, v32

    int-to-long v2, v14

    add-long v23, v23, v2

    add-int/lit8 v2, v28, -0x1

    if-nez v2, :cond_202

    if-lez v10, :cond_202

    .line 530
    invoke-virtual/range {v22 .. v22}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 537
    invoke-virtual/range {v22 .. v22}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/lit8 v10, v10, -0x1

    move v15, v3

    :goto_200
    move v14, v2

    goto :goto_204

    :cond_202
    move v15, v14

    goto :goto_200

    .line 541
    :goto_204
    aget v2, v4, v11

    int-to-long v2, v2

    add-long v2, v30, v2

    add-int/lit8 v26, v27, -0x1

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v27, v2

    move/from16 v3, v33

    goto/16 :goto_15b

    :cond_213
    move/from16 v33, v3

    move/from16 v28, v14

    move/from16 v8, v26

    :goto_219
    int-to-long v11, v12

    add-long v11, v23, v11

    if-eqz p1, :cond_22f

    :goto_21e
    if-lez v16, :cond_22f

    .line 551
    invoke-virtual/range {p1 .. p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v13

    if-eqz v13, :cond_229

    move/from16 v13, v17

    goto :goto_231

    .line 555
    :cond_229
    invoke-virtual/range {p1 .. p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_21e

    :cond_22f
    move/from16 v13, v18

    :goto_231
    if-nez v7, :cond_23d

    if-nez v28, :cond_23d

    if-nez v8, :cond_23d

    if-nez v10, :cond_23d

    if-nez v29, :cond_23d

    if-nez v13, :cond_289

    .line 565
    :cond_23d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Inconsistent stbl box for track "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Landroid/media/internal/exo/extractor/mp4/Track;->id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": remainingSynchronizationSamples "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v28

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", remainingSamplesInChunk "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", remainingTimestampDeltaChanges "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v29

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v13, :cond_27d

    .line 579
    const-string v7, ", ctts invalid"

    goto :goto_27f

    :cond_27d
    const-string v7, ""

    :goto_27f
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 565
    invoke-static {v2, v7}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_289
    move-object v7, v4

    move-object v2, v6

    move v4, v9

    move-object v6, v0

    goto/16 :goto_132

    :goto_28f
    const-wide/32 v10, 0xf4240

    .line 582
    iget-wide v12, v1, Landroid/media/internal/exo/extractor/mp4/Track;->timescale:J

    invoke-static/range {v8 .. v13}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 584
    iget-object v0, v1, Landroid/media/internal/exo/extractor/mp4/Track;->editListDurations:[J

    const-wide/32 v12, 0xf4240

    if-nez v0, :cond_2ac

    .line 585
    iget-wide v8, v1, Landroid/media/internal/exo/extractor/mp4/Track;->timescale:J

    invoke-static {v5, v12, v13, v8, v9}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 586
    new-instance v0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    move-object v3, v7

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;-><init>(Landroid/media/internal/exo/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v0

    :cond_2ac
    move-object/from16 v34, v7

    move v7, v3

    move-object/from16 v3, v34

    .line 597
    array-length v0, v0

    move/from16 v10, v18

    if-ne v0, v10, :cond_34e

    iget v0, v1, Landroid/media/internal/exo/extractor/mp4/Track;->type:I

    if-ne v0, v10, :cond_34e

    array-length v0, v5

    const/4 v10, 0x2

    if-lt v0, v10, :cond_34e

    .line 600
    iget-object v0, v1, Landroid/media/internal/exo/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v10, v0, v17

    .line 601
    iget-object v0, v1, Landroid/media/internal/exo/extractor/mp4/Track;->editListDurations:[J

    aget-wide v21, v0, v17

    iget-wide v14, v1, Landroid/media/internal/exo/extractor/mp4/Track;->timescale:J

    iget-wide v12, v1, Landroid/media/internal/exo/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v25, v12

    move-wide/from16 v23, v14

    .line 603
    invoke-static/range {v21 .. v26}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    add-long v13, v10, v12

    move-object/from16 p1, v2

    move-object v0, v3

    move-wide v11, v10

    const-wide/32 v2, 0xf4240

    move-wide v9, v8

    move-object v8, v5

    .line 605
    invoke-static/range {v8 .. v14}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v5

    move-wide/from16 v34, v9

    move v10, v5

    move-object v5, v8

    move-wide/from16 v8, v34

    if-eqz v10, :cond_31c

    sub-long v21, v8, v13

    .line 607
    aget-wide v13, v5, v17

    sub-long v23, v11, v13

    iget-object v10, v1, Landroid/media/internal/exo/extractor/mp4/Track;->format:Landroid/media/internal/exo/Format;

    iget v10, v10, Landroid/media/internal/exo/Format;->sampleRate:I

    int-to-long v10, v10

    iget-wide v12, v1, Landroid/media/internal/exo/extractor/mp4/Track;->timescale:J

    move-wide/from16 v25, v10

    move-wide/from16 v27, v12

    .line 608
    invoke-static/range {v23 .. v28}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 610
    iget-object v12, v1, Landroid/media/internal/exo/extractor/mp4/Track;->format:Landroid/media/internal/exo/Format;

    iget v12, v12, Landroid/media/internal/exo/Format;->sampleRate:I

    int-to-long v12, v12

    iget-wide v14, v1, Landroid/media/internal/exo/extractor/mp4/Track;->timescale:J

    move-wide/from16 v23, v12

    move-wide/from16 v25, v14

    .line 611
    invoke-static/range {v21 .. v26}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    cmp-long v14, v10, v19

    if-nez v14, :cond_320

    cmp-long v14, v12, v19

    if-eqz v14, :cond_31c

    goto :goto_320

    :cond_31c
    move-object/from16 v2, p1

    move-object v3, v0

    goto :goto_34e

    :cond_320
    :goto_320
    const-wide/32 v14, 0x7fffffff

    cmp-long v16, v10, v14

    if-gtz v16, :cond_31c

    cmp-long v14, v12, v14

    if-gtz v14, :cond_31c

    long-to-int v7, v10

    move-object/from16 v8, p2

    .line 615
    iput v7, v8, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->encoderDelay:I

    long-to-int v7, v12

    .line 616
    iput v7, v8, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 617
    iget-wide v7, v1, Landroid/media/internal/exo/extractor/mp4/Track;->timescale:J

    invoke-static {v5, v2, v3, v7, v8}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 618
    iget-object v2, v1, Landroid/media/internal/exo/extractor/mp4/Track;->editListDurations:[J

    aget-wide v7, v2, v17

    const-wide/32 v9, 0xf4240

    iget-wide v11, v1, Landroid/media/internal/exo/extractor/mp4/Track;->movieTimescale:J

    .line 619
    invoke-static/range {v7 .. v12}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    move-object v3, v0

    .line 621
    new-instance v0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v8}, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;-><init>(Landroid/media/internal/exo/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v0

    .line 627
    :cond_34e
    :goto_34e
    iget-object v0, v1, Landroid/media/internal/exo/extractor/mp4/Track;->editListDurations:[J

    array-length v10, v0

    const/4 v11, 0x1

    if-ne v10, v11, :cond_390

    aget-wide v10, v0, v17

    cmp-long v10, v10, v19

    if-nez v10, :cond_390

    .line 631
    iget-object v0, v1, Landroid/media/internal/exo/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v10, v0, v17

    move/from16 v0, v17

    .line 632
    :goto_366
    array-length v7, v5

    if-ge v0, v7, :cond_37d

    .line 633
    aget-wide v12, v5, v0

    sub-long v14, v12, v10

    const-wide/32 v16, 0xf4240

    iget-wide v12, v1, Landroid/media/internal/exo/extractor/mp4/Track;->timescale:J

    move-wide/from16 v18, v12

    .line 634
    invoke-static/range {v14 .. v19}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    aput-wide v12, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_366

    :cond_37d
    sub-long v12, v8, v10

    const-wide/32 v14, 0xf4240

    .line 637
    iget-wide v7, v1, Landroid/media/internal/exo/extractor/mp4/Track;->timescale:J

    move-wide/from16 v16, v7

    .line 638
    invoke-static/range {v12 .. v17}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 639
    new-instance v0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v0 .. v8}, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;-><init>(Landroid/media/internal/exo/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v0

    .line 644
    :cond_390
    iget v8, v1, Landroid/media/internal/exo/extractor/mp4/Track;->type:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_397

    const/4 v10, 0x1

    goto :goto_399

    :cond_397
    move/from16 v10, v17

    .line 650
    :goto_399
    array-length v8, v0

    new-array v8, v8, [I

    .line 651
    array-length v0, v0

    new-array v0, v0, [I

    .line 652
    iget-object v9, v1, Landroid/media/internal/exo/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v9}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    move/from16 v11, v17

    move v12, v11

    move v13, v12

    move v14, v13

    .line 653
    :goto_3ac
    iget-object v15, v1, Landroid/media/internal/exo/extractor/mp4/Track;->editListDurations:[J

    move-object/from16 v16, v0

    array-length v0, v15

    if-ge v11, v0, :cond_411

    move-object v0, v8

    move-object/from16 p1, v9

    .line 654
    aget-wide v8, p1, v11

    const-wide/16 v21, -0x1

    cmp-long v21, v8, v21

    if-eqz v21, :cond_3fd

    .line 656
    aget-wide v22, v15, v11

    move v15, v11

    move/from16 p2, v12

    iget-wide v11, v1, Landroid/media/internal/exo/extractor/mp4/Track;->timescale:J

    move-wide/from16 v24, v11

    iget-wide v11, v1, Landroid/media/internal/exo/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v26, v11

    .line 657
    invoke-static/range {v22 .. v27}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    move-object/from16 v21, v0

    const/4 v0, 0x1

    .line 660
    invoke-static {v5, v8, v9, v0, v0}, Landroid/media/internal/exo/util/Util;->binarySearchFloor([JJZZ)I

    move-result v18

    aput v18, v21, v15

    add-long/2addr v8, v11

    move/from16 v11, v17

    .line 663
    invoke-static {v5, v8, v9, v10, v11}, Landroid/media/internal/exo/util/Util;->binarySearchCeil([JJZZ)I

    move-result v8

    aput v8, v16, v15

    .line 668
    :goto_3e1
    aget v8, v21, v15

    aget v9, v16, v15

    if-ge v8, v9, :cond_3f1

    aget v12, v6, v8

    and-int/2addr v12, v0

    if-nez v12, :cond_3f1

    add-int/lit8 v8, v8, 0x1

    .line 674
    aput v8, v21, v15

    goto :goto_3e1

    :cond_3f1
    sub-int v12, v9, v8

    add-int/2addr v13, v12

    if-eq v14, v8, :cond_3f8

    move v8, v0

    goto :goto_3f9

    :cond_3f8
    move v8, v11

    :goto_3f9
    or-int v12, p2, v8

    move v14, v9

    goto :goto_405

    :cond_3fd
    move-object/from16 v21, v0

    move v15, v11

    move/from16 p2, v12

    move/from16 v11, v17

    const/4 v0, 0x1

    :goto_405
    add-int/lit8 v8, v15, 0x1

    move-object/from16 v9, p1

    move/from16 v17, v11

    move-object/from16 v0, v16

    move v11, v8

    move-object/from16 v8, v21

    goto :goto_3ac

    :cond_411
    move-object/from16 v21, v8

    move/from16 p2, v12

    move/from16 v11, v17

    const/4 v0, 0x1

    if-eq v13, v7, :cond_41c

    move v8, v0

    goto :goto_41d

    :cond_41c
    move v8, v11

    :goto_41d
    or-int v0, p2, v8

    if-eqz v0, :cond_424

    .line 684
    new-array v7, v13, [J

    goto :goto_425

    :cond_424
    move-object v7, v2

    :goto_425
    if-eqz v0, :cond_42a

    .line 685
    new-array v8, v13, [I

    goto :goto_42b

    :cond_42a
    move-object v8, v3

    :goto_42b
    if-eqz v0, :cond_42e

    move v4, v11

    :cond_42e
    if-eqz v0, :cond_433

    .line 687
    new-array v9, v13, [I

    goto :goto_434

    :cond_433
    move-object v9, v6

    .line 688
    :goto_434
    new-array v10, v13, [J

    move v12, v11

    move-wide/from16 v22, v19

    .line 691
    :goto_439
    iget-object v13, v1, Landroid/media/internal/exo/extractor/mp4/Track;->editListDurations:[J

    array-length v13, v13

    if-ge v11, v13, :cond_4be

    .line 692
    iget-object v13, v1, Landroid/media/internal/exo/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v13, v13, v11

    .line 693
    aget v15, v21, v11

    move/from16 p1, v0

    .line 694
    aget v0, v16, v11

    move/from16 p2, v4

    if-eqz p1, :cond_457

    sub-int v4, v0, v15

    .line 697
    invoke-static {v2, v15, v7, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 698
    invoke-static {v3, v15, v8, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 699
    invoke-static {v6, v15, v9, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_457
    move/from16 v4, p2

    :goto_459
    if-ge v15, v0, :cond_4a0

    const-wide/32 v24, 0xf4240

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .line 702
    iget-wide v2, v1, Landroid/media/internal/exo/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v26, v2

    invoke-static/range {v22 .. v27}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    .line 703
    aget-wide v24, v5, v15

    move-wide/from16 v26, v2

    sub-long v2, v24, v13

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    move-wide/from16 v5, v19

    .line 705
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v28

    const-wide/32 v30, 0xf4240

    iget-wide v2, v1, Landroid/media/internal/exo/extractor/mp4/Track;->timescale:J

    move-wide/from16 v32, v2

    .line 704
    invoke-static/range {v28 .. v33}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    add-long v2, v26, v2

    .line 706
    aput-wide v2, v10, v12

    if-eqz p1, :cond_491

    .line 707
    aget v2, v8, v12

    if-le v2, v4, :cond_491

    .line 708
    aget v4, v18, v15

    :cond_491
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v19, v5

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v6, v24

    move-object/from16 v5, v25

    goto :goto_459

    :cond_4a0
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    move-wide/from16 v5, v19

    .line 712
    iget-object v0, v1, Landroid/media/internal/exo/extractor/mp4/Track;->editListDurations:[J

    aget-wide v2, v0, v11

    add-long v22, v22, v2

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v6, v24

    move-object/from16 v5, v25

    goto/16 :goto_439

    :cond_4be
    move/from16 p2, v4

    const-wide/32 v24, 0xf4240

    .line 714
    iget-wide v2, v1, Landroid/media/internal/exo/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v26, v2

    .line 715
    invoke-static/range {v22 .. v27}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    .line 716
    new-instance v0, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    move-object v6, v9

    move-object v5, v10

    move-wide/from16 v34, v2

    move-object v2, v7

    move-object v3, v8

    move-wide/from16 v7, v34

    invoke-direct/range {v0 .. v8}, Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;-><init>(Landroid/media/internal/exo/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v0

    .line 365
    :cond_4d9
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object v0

    throw v0
.end method

.method private static blacklist parseStsd(Landroid/media/internal/exo/util/ParsableByteArray;IILjava/lang/String;Landroid/media/internal/exo/drm/DrmInitData;Z)Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/16 v0, 0xc

    .line 928
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 929
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 930
    new-instance v7, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v7, v0}, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    const/4 v11, 0x0

    move v10, v11

    :goto_10
    if-ge v10, v0, :cond_15e

    .line 932
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 933
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v4

    if-lez v4, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    move v1, v11

    .line 934
    :goto_1f
    const-string v2, "childAtomSize must be positive"

    invoke-static {v1, v2}, Landroid/media/internal/exo/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 935
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v2

    const v1, 0x61766331

    if-eq v2, v1, :cond_78

    const v1, 0x61766333

    if-eq v2, v1, :cond_78

    const v1, 0x656e6376

    if-eq v2, v1, :cond_78

    const v1, 0x6d317620

    if-eq v2, v1, :cond_78

    const v1, 0x6d703476

    if-eq v2, v1, :cond_78

    const v1, 0x68766331

    if-eq v2, v1, :cond_78

    const v1, 0x68657631

    if-eq v2, v1, :cond_78

    const v1, 0x73323633

    if-eq v2, v1, :cond_78

    const v1, 0x48323633

    if-eq v2, v1, :cond_78

    const v1, 0x76703038

    if-eq v2, v1, :cond_78

    const v1, 0x76703039

    if-eq v2, v1, :cond_78

    const v1, 0x61763031

    if-eq v2, v1, :cond_78

    const v1, 0x64766176

    if-eq v2, v1, :cond_78

    const v1, 0x64766131

    if-eq v2, v1, :cond_78

    const v1, 0x64766865

    if-eq v2, v1, :cond_78

    const v1, 0x64766831

    if-ne v2, v1, :cond_81

    :cond_78
    move-object v1, p0

    move v5, p1

    move v6, p2

    move-object v8, v7

    move v9, v10

    move-object/from16 v7, p4

    goto/16 :goto_151

    :cond_81
    const v1, 0x6d703461

    if-eq v2, v1, :cond_fe

    const v1, 0x656e6361

    if-eq v2, v1, :cond_fe

    const v1, 0x61632d33

    if-eq v2, v1, :cond_fe

    const v1, 0x65632d33

    if-eq v2, v1, :cond_fe

    const v1, 0x61632d34

    if-eq v2, v1, :cond_fe

    const v1, 0x6d6c7061

    if-eq v2, v1, :cond_fe

    const v1, 0x64747363

    if-eq v2, v1, :cond_fe

    const v1, 0x64747365

    if-eq v2, v1, :cond_fe

    const v1, 0x64747368

    if-eq v2, v1, :cond_fe

    const v1, 0x6474736c

    if-eq v2, v1, :cond_fe

    const v1, 0x64747378

    if-eq v2, v1, :cond_fe

    const v1, 0x73616d72

    if-eq v2, v1, :cond_fe

    const v1, 0x73617762

    if-eq v2, v1, :cond_fe

    const v1, 0x6c70636d

    if-eq v2, v1, :cond_fe

    const v1, 0x736f7774

    if-eq v2, v1, :cond_fe

    const v1, 0x74776f73

    if-eq v2, v1, :cond_fe

    const v1, 0x2e6d7032

    if-eq v2, v1, :cond_fe

    const v1, 0x2e6d7033

    if-eq v2, v1, :cond_fe

    const v1, 0x6d686131

    if-eq v2, v1, :cond_fe

    const v1, 0x6d686d31

    if-eq v2, v1, :cond_fe

    const v1, 0x616c6163

    if-eq v2, v1, :cond_fe

    const v1, 0x616c6177

    if-eq v2, v1, :cond_fe

    const v1, 0x756c6177

    if-eq v2, v1, :cond_fe

    const v1, 0x4f707573

    if-eq v2, v1, :cond_fe

    const v1, 0x664c6143

    if-ne v2, v1, :cond_107

    :cond_fe
    move-object v1, p0

    move v5, p1

    move-object v6, p3

    move-object/from16 v8, p4

    move-object v9, v7

    move/from16 v7, p5

    goto :goto_14c

    :cond_107
    const v1, 0x54544d4c

    if-eq v2, v1, :cond_120

    const v1, 0x74783367

    if-eq v2, v1, :cond_120

    const v1, 0x77767474

    if-eq v2, v1, :cond_120

    const v1, 0x73747070

    if-eq v2, v1, :cond_120

    const v1, 0x63363038

    if-ne v2, v1, :cond_124

    :cond_120
    move-object v1, p0

    move v5, p1

    move-object v6, p3

    goto :goto_148

    :cond_124
    const v1, 0x6d657474

    if-ne v2, v1, :cond_12d

    .line 1006
    invoke-static {p0, v2, v3, p1, v7}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseMetaDataSampleEntry(Landroid/media/internal/exo/util/ParsableByteArray;IIILandroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;)V

    goto :goto_156

    :cond_12d
    const v1, 0x63616d6d

    if-ne v2, v1, :cond_156

    .line 1008
    new-instance v1, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v1}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 1010
    invoke-virtual {v1, p1}, Landroid/media/internal/exo/Format$Builder;->setId(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    const-string v2, "application/x-camera-motion"

    .line 1011
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v1

    .line 1012
    invoke-virtual {v1}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v1

    iput-object v1, v7, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->format:Landroid/media/internal/exo/Format;

    goto :goto_156

    .line 1003
    :goto_148
    invoke-static/range {v1 .. v7}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseTextSampleEntry(Landroid/media/internal/exo/util/ParsableByteArray;IIIILjava/lang/String;Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;)V

    goto :goto_156

    .line 987
    :goto_14c
    invoke-static/range {v1 .. v10}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Landroid/media/internal/exo/util/ParsableByteArray;IIIILjava/lang/String;ZLandroid/media/internal/exo/drm/DrmInitData;Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;I)V

    move-object v7, v9

    goto :goto_156

    .line 952
    :goto_151
    invoke-static/range {v1 .. v9}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Landroid/media/internal/exo/util/ParsableByteArray;IIIIILandroid/media/internal/exo/drm/DrmInitData;Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;I)V

    move-object v7, v8

    move v10, v9

    :cond_156
    :goto_156
    add-int/2addr v3, v4

    .line 1014
    invoke-virtual {p0, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_10

    :cond_15e
    return-object v7
.end method

.method private static blacklist parseTextSampleEntry(Landroid/media/internal/exo/util/ParsableByteArray;IIIILjava/lang/String;Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;)V
    .registers 11

    add-int/lit8 p2, p2, 0x10

    .line 1027
    invoke-virtual {p0, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    const p2, 0x54544d4c

    .line 1034
    const-string v0, "application/ttml+xml"

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    if-ne p1, p2, :cond_13

    goto :goto_41

    :cond_13
    const p2, 0x74783367

    if-ne p1, p2, :cond_27

    add-int/lit8 p3, p3, -0x10

    .line 1039
    new-array p1, p3, [B

    const/4 p2, 0x0

    .line 1040
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 1041
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/ImmutableList;->of(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v1

    .line 1042
    const-string v0, "application/x-quicktime-tx3g"

    goto :goto_41

    :cond_27
    const p0, 0x77767474

    if-ne p1, p0, :cond_2f

    .line 1043
    const-string v0, "application/x-mp4-vtt"

    goto :goto_41

    :cond_2f
    const p0, 0x73747070

    if-ne p1, p0, :cond_37

    const-wide/16 v2, 0x0

    goto :goto_41

    :cond_37
    const p0, 0x63363038

    if-ne p1, p0, :cond_61

    const/4 p0, 0x1

    .line 1050
    iput p0, p6, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    const-string v0, "application/x-mp4-cea-608"

    .line 1056
    :goto_41
    new-instance p0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {p0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 1058
    invoke-virtual {p0, p4}, Landroid/media/internal/exo/Format$Builder;->setId(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 1059
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 1060
    invoke-virtual {p0, p5}, Landroid/media/internal/exo/Format$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 1061
    invoke-virtual {p0, v2, v3}, Landroid/media/internal/exo/Format$Builder;->setSubsampleOffsetUs(J)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 1062
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/Format$Builder;->setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 1063
    invoke-virtual {p0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p0

    iput-object p0, p6, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->format:Landroid/media/internal/exo/Format;

    return-void

    .line 1053
    :cond_61
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static blacklist parseTkhd(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;
    .registers 13

    const/16 v0, 0x8

    .line 807
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 808
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 809
    invoke-static {v1}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_13

    move v3, v0

    goto :goto_14

    :cond_13
    move v3, v2

    .line 811
    :goto_14
    invoke-virtual {p0, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 812
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v3

    const/4 v4, 0x4

    .line 814
    invoke-virtual {p0, v4}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 816
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v5

    if-nez v1, :cond_26

    move v0, v4

    :cond_26
    const/4 v6, 0x0

    move v7, v6

    :goto_28
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v7, v0, :cond_51

    .line 819
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v10

    add-int v11, v5, v7

    aget-byte v10, v10, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4e

    if-nez v1, :cond_41

    .line 829
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_45

    :cond_41
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_45
    const-wide/16 v10, 0x0

    cmp-long v5, v0, v10

    if-nez v5, :cond_4c

    goto :goto_54

    :cond_4c
    move-wide v8, v0

    goto :goto_54

    :cond_4e
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    .line 826
    :cond_51
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 837
    :goto_54
    invoke-virtual {p0, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 838
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 839
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 840
    invoke-virtual {p0, v4}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 841
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 842
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result p0

    const/high16 v4, -0x10000

    const/high16 v5, 0x10000

    if-nez v0, :cond_79

    if-ne v1, v5, :cond_79

    if-ne v2, v4, :cond_79

    if-nez p0, :cond_79

    const/16 v6, 0x5a

    goto :goto_8e

    :cond_79
    if-nez v0, :cond_84

    if-ne v1, v4, :cond_84

    if-ne v2, v5, :cond_84

    if-nez p0, :cond_84

    const/16 v6, 0x10e

    goto :goto_8e

    :cond_84
    if-ne v0, v4, :cond_8e

    if-nez v1, :cond_8e

    if-nez v2, :cond_8e

    if-ne p0, v4, :cond_8e

    const/16 v6, 0xb4

    .line 857
    :cond_8e
    :goto_8e
    new-instance p0, Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {p0, v3, v8, v9, v6}, Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object p0
.end method

.method private static blacklist parseTrak(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;JLandroid/media/internal/exo/drm/DrmInitData;ZZ)Landroid/media/internal/exo/extractor/mp4/Track;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x6d646961

    .line 284
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    move-result-object v1

    invoke-static {v1}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    const v2, 0x68646c72    # 4.3148E24f

    .line 287
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    invoke-static {v2}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    iget-object v2, v2, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-static {v2}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseHdlr(Landroid/media/internal/exo/util/ParsableByteArray;)I

    move-result v2

    invoke-static {v2}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->getTrackTypeForHdlr(I)I

    move-result v5

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v5, v2, :cond_2b

    return-object v3

    :cond_2b
    const v2, 0x746b6864

    .line 292
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    invoke-static {v2}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    iget-object v2, v2, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-static {v2}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseTkhd(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_4f

    .line 294
    # getter for: Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;->duration:J
    invoke-static {v2}, Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;->access$000(Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v8

    move-wide v10, v8

    :goto_4c
    move-object/from16 v4, p1

    goto :goto_52

    :cond_4f
    move-wide/from16 v10, p2

    goto :goto_4c

    .line 296
    :goto_52
    iget-object v4, v4, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-static {v4}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseMvhd(Landroid/media/internal/exo/util/ParsableByteArray;)J

    move-result-wide v14

    cmp-long v4, v10, v6

    if-nez v4, :cond_5e

    :goto_5c
    move-wide v10, v6

    goto :goto_66

    :cond_5e
    const-wide/32 v12, 0xf4240

    .line 301
    invoke-static/range {v10 .. v15}, Landroid/media/internal/exo/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    goto :goto_5c

    :goto_66
    const v4, 0x6d696e66

    .line 305
    invoke-virtual {v1, v4}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    invoke-static {v4}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    const v6, 0x7374626c

    .line 306
    invoke-virtual {v4, v6}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    .line 304
    invoke-static {v4}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    const v6, 0x6d646864

    .line 309
    invoke-virtual {v1, v6}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    invoke-static {v1}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    iget-object v1, v1, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-static {v1}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseMdhd(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v1

    const v6, 0x73747364

    .line 312
    invoke-virtual {v4, v6}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    invoke-static {v4}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    iget-object v4, v4, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    .line 313
    # getter for: Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;->id:I
    invoke-static {v2}, Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;->access$100(Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v17

    .line 314
    # getter for: Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;->rotationDegrees:I
    invoke-static {v2}, Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;->access$200(Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v18

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v6

    check-cast v19, Ljava/lang/String;

    move-object/from16 v20, p4

    move/from16 v21, p6

    move-object/from16 v16, v4

    .line 311
    invoke-static/range {v16 .. v21}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseStsd(Landroid/media/internal/exo/util/ParsableByteArray;IILjava/lang/String;Landroid/media/internal/exo/drm/DrmInitData;Z)Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;

    move-result-object v4

    if-nez p5, :cond_d8

    const v6, 0x65647473

    .line 321
    invoke-virtual {v0, v6}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    if-eqz v0, :cond_d8

    .line 323
    invoke-static {v0}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseEdts(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_d8

    .line 325
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [J

    .line 326
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v17, v0

    move-object/from16 v16, v6

    goto :goto_dc

    :cond_d8
    move-object/from16 v16, v3

    move-object/from16 v17, v16

    .line 330
    :goto_dc
    iget-object v0, v4, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->format:Landroid/media/internal/exo/Format;

    if-nez v0, :cond_e1

    return-object v3

    .line 332
    :cond_e1
    new-instance v3, Landroid/media/internal/exo/extractor/mp4/Track;

    .line 333
    # getter for: Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;->id:I
    invoke-static {v2}, Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;->access$100(Landroid/media/internal/exo/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v0

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 335
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v12, v4, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->format:Landroid/media/internal/exo/Format;

    iget v13, v4, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    move-wide v8, v14

    iget-object v14, v4, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    iget v15, v4, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move v4, v0

    invoke-direct/range {v3 .. v17}, Landroid/media/internal/exo/extractor/mp4/Track;-><init>(IIJJJLandroid/media/internal/exo/Format;I[Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;I[J[J)V

    return-object v3
.end method

.method public static blacklist parseTraks(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;Landroid/media/internal/exo/extractor/GaplessInfoHolder;JLandroid/media/internal/exo/drm/DrmInitData;ZZLandroid/media/internal/guava_common/base/Function;)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/media/internal/exo/extractor/GaplessInfoHolder;",
            "J",
            "Landroid/media/internal/exo/drm/DrmInitData;",
            "ZZ",
            "Landroid/media/internal/guava_common/base/Function<",
            "Landroid/media/internal/exo/extractor/mp4/Track;",
            "Landroid/media/internal/exo/extractor/mp4/Track;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 124
    :goto_6
    iget-object v2, p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_75

    .line 125
    iget-object v2, p0, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    .line 126
    iget v2, v3, Landroid/media/internal/exo/extractor/mp4/Atom;->type:I

    const v4, 0x7472616b

    if-eq v2, v4, :cond_21

    move-object/from16 v3, p7

    goto :goto_72

    :cond_21
    const v2, 0x6d766864

    .line 134
    invoke-virtual {p0, v2}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    invoke-static {v2}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;

    move-wide v5, p2

    move-object v7, p4

    move v8, p5

    move/from16 v9, p6

    .line 132
    invoke-static/range {v3 .. v9}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseTrak(Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;JLandroid/media/internal/exo/drm/DrmInitData;ZZ)Landroid/media/internal/exo/extractor/mp4/Track;

    move-result-object v2

    move-object v4, v3

    move-object/from16 v3, p7

    .line 131
    invoke-interface {v3, v2}, Landroid/media/internal/guava_common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/internal/exo/extractor/mp4/Track;

    if-nez v2, :cond_44

    goto :goto_72

    :cond_44
    const v5, 0x6d646961

    .line 145
    invoke-virtual {v4, v5}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    invoke-static {v4}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    const v5, 0x6d696e66

    .line 146
    invoke-virtual {v4, v5}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    .line 144
    invoke-static {v4}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    const v5, 0x7374626c

    .line 147
    invoke-virtual {v4, v5}, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    .line 143
    invoke-static {v4}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;

    .line 148
    invoke-static {v2, v4, p1}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseStbl(Landroid/media/internal/exo/extractor/mp4/Track;Landroid/media/internal/exo/extractor/mp4/Atom$ContainerAtom;Landroid/media/internal/exo/extractor/GaplessInfoHolder;)Landroid/media/internal/exo/extractor/mp4/TrackSampleTable;

    move-result-object v2

    .line 149
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_75
    return-object v0
.end method

.method public static blacklist parseUdta(Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/media/internal/exo/metadata/Metadata;",
            "Landroid/media/internal/exo/metadata/Metadata;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/Atom$LeafAtom;->data:Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v0, 0x8

    .line 164
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 167
    :goto_9
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lt v3, v0, :cond_3d

    .line 168
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 169
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 170
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v5

    const v6, 0x6d657461

    if-ne v5, v6, :cond_2a

    .line 172
    invoke-virtual {p0, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    add-int v1, v3, v4

    .line 173
    invoke-static {p0, v1}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseUdtaMeta(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/Metadata;

    move-result-object v1

    goto :goto_38

    :cond_2a
    const v6, 0x736d7461

    if-ne v5, v6, :cond_38

    .line 175
    invoke-virtual {p0, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    add-int v2, v3, v4

    .line 176
    invoke-static {p0, v2}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseSmta(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/Metadata;

    move-result-object v2

    :cond_38
    :goto_38
    add-int/2addr v3, v4

    .line 178
    invoke-virtual {p0, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    goto :goto_9

    .line 180
    :cond_3d
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseUdtaMeta(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/Metadata;
    .registers 6

    const/16 v0, 0x8

    .line 728
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 729
    invoke-static {p0}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->maybeSkipRemainingMetaAtomHeaderBytes(Landroid/media/internal/exo/util/ParsableByteArray;)V

    .line 730
    :goto_8
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_2d

    .line 731
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 732
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 733
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x696c7374

    if-ne v2, v3, :cond_28

    .line 735
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v0, v1

    .line 736
    invoke-static {p0, v0}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseIlst(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/Metadata;

    move-result-object p0

    return-object p0

    :cond_28
    add-int/2addr v0, v1

    .line 738
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    goto :goto_8

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist parseVideoSampleEntry(Landroid/media/internal/exo/util/ParsableByteArray;IIIIILandroid/media/internal/exo/drm/DrmInitData;Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;I)V
    .registers 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x10

    .line 1079
    invoke-virtual {v0, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    const/16 v5, 0x10

    .line 1081
    invoke-virtual {v0, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1082
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 1083
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    const/16 v7, 0x32

    .line 1086
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 1088
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v7

    const v8, 0x656e6376

    move/from16 v10, p1

    if-ne v10, v8, :cond_53

    .line 1092
    invoke-static {v0, v1, v2}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Landroid/media/internal/exo/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_50

    .line 1094
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v3, :cond_3e

    const/4 v3, 0x0

    goto :goto_48

    .line 1098
    :cond_3e
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    iget-object v11, v11, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroid/media/internal/exo/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroid/media/internal/exo/drm/DrmInitData;

    move-result-object v3

    .line 1099
    :goto_48
    iget-object v11, v4, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/media/internal/exo/extractor/mp4/TrackEncryptionBox;

    aput-object v8, v11, p8

    .line 1101
    :cond_50
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    :cond_53
    const v8, 0x6d317620

    .line 1109
    const-string v11, "video/3gpp"

    if-ne v10, v8, :cond_5d

    .line 1110
    const-string v8, "video/mpeg"

    goto :goto_65

    :cond_5d
    const v8, 0x48323633

    if-ne v10, v8, :cond_64

    move-object v8, v11

    goto :goto_65

    :cond_64
    const/4 v8, 0x0

    :goto_65
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_76
    sub-int v9, v7, v1

    if-ge v9, v2, :cond_91

    .line 1128
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1129
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v9

    .line 1130
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    if-nez v1, :cond_9c

    .line 1131
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v22

    move/from16 p8, v7

    sub-int v7, v22, p2

    if-ne v7, v2, :cond_9e

    :cond_91
    move-object/from16 v25, v3

    move-object/from16 v27, v12

    move/from16 v32, v14

    move-object/from16 v26, v15

    const/4 v3, 0x0

    goto/16 :goto_2ed

    :cond_9c
    move/from16 p8, v7

    :cond_9e
    if-lez v1, :cond_a2

    const/4 v7, 0x1

    goto :goto_a3

    :cond_a2
    const/4 v7, 0x0

    .line 1135
    :goto_a3
    const-string v2, "childAtomSize must be positive"

    invoke-static {v7, v2}, Landroid/media/internal/exo/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1136
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v2

    const v7, 0x61766343

    if-ne v2, v7, :cond_dc

    if-nez v8, :cond_b6

    const/4 v7, 0x1

    :goto_b4
    const/4 v2, 0x0

    goto :goto_b8

    :cond_b6
    const/4 v7, 0x0

    goto :goto_b4

    .line 1138
    :goto_b8
    invoke-static {v7, v2}, Landroid/media/internal/exo/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v9, v9, 0x8

    .line 1140
    invoke-virtual {v0, v9}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1141
    invoke-static {v0}, Landroid/media/internal/exo/video/AvcConfig;->parse(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/video/AvcConfig;

    move-result-object v2

    .line 1142
    iget-object v15, v2, Landroid/media/internal/exo/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 1143
    iget v7, v2, Landroid/media/internal/exo/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v7, v4, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v21, :cond_ce

    .line 1145
    iget v14, v2, Landroid/media/internal/exo/video/AvcConfig;->pixelWidthHeightRatio:F

    .line 1147
    :cond_ce
    iget-object v13, v2, Landroid/media/internal/exo/video/AvcConfig;->codecs:Ljava/lang/String;

    .line 1148
    const-string v2, "video/avc"

    :goto_d2
    move-object v8, v2

    :goto_d3
    move-object/from16 v25, v3

    move/from16 v23, v10

    move-object/from16 v24, v11

    :goto_d9
    const/4 v3, 0x0

    goto/16 :goto_2dd

    :cond_dc
    const v7, 0x68766343

    if-ne v2, v7, :cond_103

    if-nez v8, :cond_e6

    const/4 v7, 0x1

    :goto_e4
    const/4 v2, 0x0

    goto :goto_e8

    :cond_e6
    const/4 v7, 0x0

    goto :goto_e4

    .line 1149
    :goto_e8
    invoke-static {v7, v2}, Landroid/media/internal/exo/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v9, v9, 0x8

    .line 1151
    invoke-virtual {v0, v9}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 1152
    invoke-static {v0}, Landroid/media/internal/exo/video/HevcConfig;->parse(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/video/HevcConfig;

    move-result-object v2

    .line 1153
    iget-object v15, v2, Landroid/media/internal/exo/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 1154
    iget v7, v2, Landroid/media/internal/exo/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v7, v4, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v21, :cond_fe

    .line 1156
    iget v14, v2, Landroid/media/internal/exo/video/HevcConfig;->pixelWidthHeightRatio:F

    .line 1158
    :cond_fe
    iget-object v13, v2, Landroid/media/internal/exo/video/HevcConfig;->codecs:Ljava/lang/String;

    .line 1159
    const-string v2, "video/hevc"

    goto :goto_d2

    :cond_103
    const v7, 0x64766343

    if-eq v2, v7, :cond_10d

    const v7, 0x64767643

    if-ne v2, v7, :cond_11c

    :cond_10d
    move-object/from16 v25, v3

    move/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v27, v12

    move/from16 v32, v14

    move-object/from16 v26, v15

    const/4 v3, 0x0

    goto/16 :goto_2d1

    :cond_11c
    const v7, 0x76706343

    if-ne v2, v7, :cond_136

    if-nez v8, :cond_126

    const/4 v7, 0x1

    :goto_124
    const/4 v2, 0x0

    goto :goto_128

    :cond_126
    const/4 v7, 0x0

    goto :goto_124

    .line 1166
    :goto_128
    invoke-static {v7, v2}, Landroid/media/internal/exo/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    const v2, 0x76703038

    if-ne v10, v2, :cond_133

    .line 1167
    const-string v2, "video/x-vnd.on2.vp8"

    goto :goto_d2

    :cond_133
    const-string v2, "video/x-vnd.on2.vp9"

    goto :goto_d2

    :cond_136
    const v7, 0x61763143

    if-ne v2, v7, :cond_148

    if-nez v8, :cond_140

    const/4 v7, 0x1

    :goto_13e
    const/4 v2, 0x0

    goto :goto_142

    :cond_140
    const/4 v7, 0x0

    goto :goto_13e

    .line 1169
    :goto_142
    invoke-static {v7, v2}, Landroid/media/internal/exo/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1170
    const-string v2, "video/av01"

    goto :goto_d2

    :cond_148
    const v7, 0x636c6c69

    if-ne v2, v7, :cond_16c

    if-nez v20, :cond_153

    .line 1173
    invoke-static {}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v20

    :cond_153
    move-object/from16 v2, v20

    const/16 v7, 0x15

    .line 1177
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1178
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readShort()S

    move-result v7

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1179
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readShort()S

    move-result v7

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v20, v2

    goto/16 :goto_d3

    :cond_16c
    const v7, 0x6d646376

    if-ne v2, v7, :cond_1e3

    if-nez v20, :cond_177

    .line 1182
    invoke-static {}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v20

    :cond_177
    move-object/from16 v2, v20

    .line 1186
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readShort()S

    move-result v7

    .line 1187
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readShort()S

    move-result v9

    move/from16 v23, v10

    .line 1188
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readShort()S

    move-result v10

    move-object/from16 v24, v11

    .line 1189
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readShort()S

    move-result v11

    .line 1190
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readShort()S

    move-result v4

    move-object/from16 v25, v3

    .line 1191
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readShort()S

    move-result v3

    move-object/from16 v26, v15

    .line 1192
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readShort()S

    move-result v15

    move-object/from16 v27, v12

    .line 1193
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readShort()S

    move-result v12

    .line 1194
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v28

    .line 1195
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v30

    move/from16 v32, v14

    const/4 v14, 0x1

    .line 1197
    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1198
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1199
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1200
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1201
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1202
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1203
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1204
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1205
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x2710

    .line 1206
    div-long v9, v28, v3

    long-to-int v7, v9

    int-to-short v7, v7

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1207
    div-long v3, v30, v3

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v20, v2

    move-object/from16 v15, v26

    move-object/from16 v12, v27

    move/from16 v14, v32

    goto/16 :goto_d9

    :cond_1e3
    move-object/from16 v25, v3

    move/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v27, v12

    move/from16 v32, v14

    move-object/from16 v26, v15

    const v3, 0x64323633

    if-ne v2, v3, :cond_208

    if-nez v8, :cond_1f9

    const/4 v7, 0x1

    :goto_1f7
    const/4 v3, 0x0

    goto :goto_1fb

    :cond_1f9
    const/4 v7, 0x0

    goto :goto_1f7

    .line 1209
    :goto_1fb
    invoke-static {v7, v3}, Landroid/media/internal/exo/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    move-object/from16 v8, v24

    :cond_200
    :goto_200
    move-object/from16 v15, v26

    :goto_202
    move-object/from16 v12, v27

    :goto_204
    move/from16 v14, v32

    goto/16 :goto_2dd

    :cond_208
    const/4 v3, 0x0

    const v4, 0x65736473

    if-ne v2, v4, :cond_22d

    if-nez v8, :cond_212

    const/4 v7, 0x1

    goto :goto_213

    :cond_212
    const/4 v7, 0x0

    .line 1212
    :goto_213
    invoke-static {v7, v3}, Landroid/media/internal/exo/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1214
    invoke-static {v0, v9}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseEsdsFromParent(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v2

    .line 1215
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1216
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B

    if-eqz v2, :cond_229

    .line 1218
    invoke-static {v2}, Landroid/media/internal/guava_common/collect/ImmutableList;->of(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v15

    goto :goto_22b

    :cond_229
    move-object/from16 v15, v26

    :goto_22b
    move-object v8, v4

    goto :goto_202

    :cond_22d
    const v4, 0x70617370

    if-ne v2, v4, :cond_23f

    .line 1221
    invoke-static {v0, v9}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parsePaspFromParent(Landroid/media/internal/exo/util/ParsableByteArray;I)F

    move-result v2

    move v14, v2

    move-object/from16 v15, v26

    move-object/from16 v12, v27

    const/16 v21, 0x1

    goto/16 :goto_2dd

    :cond_23f
    const v4, 0x73763364

    if-ne v2, v4, :cond_24b

    .line 1224
    invoke-static {v0, v9, v1}, Landroid/media/internal/exo/extractor/mp4/AtomParsers;->parseProjFromParent(Landroid/media/internal/exo/util/ParsableByteArray;II)[B

    move-result-object v12

    move-object/from16 v15, v26

    goto :goto_204

    :cond_24b
    const v4, 0x73743364

    const/4 v7, 0x2

    if-ne v2, v4, :cond_275

    .line 1226
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/4 v4, 0x3

    .line 1227
    invoke-virtual {v0, v4}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    if-nez v2, :cond_200

    .line 1229
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-eqz v2, :cond_272

    const/4 v14, 0x1

    if-eq v2, v14, :cond_26f

    if-eq v2, v7, :cond_26c

    if-eq v2, v4, :cond_269

    goto :goto_200

    :cond_269
    move/from16 v16, v4

    goto :goto_200

    :cond_26c
    move/from16 v16, v7

    goto :goto_200

    :cond_26f
    move/from16 v16, v14

    goto :goto_200

    :cond_272
    const/16 v16, 0x0

    goto :goto_200

    :cond_275
    const/4 v14, 0x1

    const v4, 0x636f6c72

    if-ne v2, v4, :cond_200

    .line 1248
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v2

    const v4, 0x6e636c78

    if-eq v2, v4, :cond_2a6

    const v4, 0x6e636c63

    if-ne v2, v4, :cond_28a

    goto :goto_2a6

    .line 1267
    :cond_28a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported color type: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/media/internal/exo/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AtomParsers"

    invoke-static {v4, v2}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_200

    .line 1252
    :cond_2a6
    :goto_2a6
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 1253
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 1254
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    const/16 v9, 0x13

    if-ne v1, v9, :cond_2bf

    .line 1261
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_2bf

    move v9, v14

    goto :goto_2c0

    :cond_2bf
    const/4 v9, 0x0

    .line 1262
    :goto_2c0
    invoke-static {v2}, Landroid/media/internal/exo/video/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v17

    if-eqz v9, :cond_2c9

    move/from16 v18, v14

    goto :goto_2cb

    :cond_2c9
    move/from16 v18, v7

    .line 1265
    :goto_2cb
    invoke-static {v4}, Landroid/media/internal/exo/video/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v19

    goto/16 :goto_200

    .line 1160
    :goto_2d1
    invoke-static {v0}, Landroid/media/internal/exo/video/DolbyVisionConfig;->parse(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/video/DolbyVisionConfig;

    move-result-object v2

    if-eqz v2, :cond_200

    .line 1162
    iget-object v13, v2, Landroid/media/internal/exo/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    .line 1163
    const-string v8, "video/dolby-vision"

    goto/16 :goto_200

    :goto_2dd
    add-int v7, p8, v1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v4, p7

    move/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v3, v25

    goto/16 :goto_76

    :goto_2ed
    if-nez v8, :cond_2f0

    return-void

    .line 1278
    :cond_2f0
    new-instance v0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    move/from16 v1, p4

    .line 1280
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setId(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 1281
    invoke-virtual {v0, v8}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 1282
    invoke-virtual {v0, v13}, Landroid/media/internal/exo/Format$Builder;->setCodecs(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 1283
    invoke-virtual {v0, v5}, Landroid/media/internal/exo/Format$Builder;->setWidth(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    .line 1284
    invoke-virtual {v0, v6}, Landroid/media/internal/exo/Format$Builder;->setHeight(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    move/from16 v14, v32

    .line 1285
    invoke-virtual {v0, v14}, Landroid/media/internal/exo/Format$Builder;->setPixelWidthHeightRatio(F)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    move/from16 v1, p5

    .line 1286
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setRotationDegrees(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    move-object/from16 v9, v27

    .line 1287
    invoke-virtual {v0, v9}, Landroid/media/internal/exo/Format$Builder;->setProjectionData([B)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    move/from16 v12, v16

    .line 1288
    invoke-virtual {v0, v12}, Landroid/media/internal/exo/Format$Builder;->setStereoMode(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    move-object/from16 v9, v26

    .line 1289
    invoke-virtual {v0, v9}, Landroid/media/internal/exo/Format$Builder;->setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    move-object/from16 v1, v25

    .line 1290
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setDrmInitData(Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    move/from16 v12, v17

    const/4 v1, -0x1

    move/from16 v2, v18

    move/from16 v4, v19

    if-ne v12, v1, :cond_33e

    if-ne v2, v1, :cond_33e

    if-ne v4, v1, :cond_33e

    if-eqz v20, :cond_34e

    .line 1297
    :cond_33e
    new-instance v1, Landroid/media/internal/exo/video/ColorInfo;

    if-eqz v20, :cond_347

    .line 1302
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    goto :goto_348

    :cond_347
    move-object v9, v3

    :goto_348
    invoke-direct {v1, v12, v2, v4, v9}, Landroid/media/internal/exo/video/ColorInfo;-><init>(III[B)V

    .line 1297
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setColorInfo(Landroid/media/internal/exo/video/ColorInfo;)Landroid/media/internal/exo/Format$Builder;

    .line 1304
    :cond_34e
    invoke-virtual {v0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v0

    move-object/from16 v4, p7

    iput-object v0, v4, Landroid/media/internal/exo/extractor/mp4/AtomParsers$StsdData;->format:Landroid/media/internal/exo/Format;

    return-void
.end method
