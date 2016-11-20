.class public Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Capabilities"
.end annotation


# static fields
.field private static final CAP_ESS_BIT_OFFSET:I = 0x0

.field private static final CAP_PRIVACY_BIT_OFFSET:I = 0x4

.field private static final RSNE_VERSION:S = 0x1s

.field private static final WPA2_AKM_EAP:I = 0x1ac0f00

.field private static final WPA2_AKM_EAP_SHA256:I = 0x5ac0f00

.field private static final WPA2_AKM_FT_EAP:I = 0x3ac0f00

.field private static final WPA2_AKM_FT_PSK:I = 0x4ac0f00

.field private static final WPA2_AKM_PSK:I = 0x2ac0f00

.field private static final WPA2_AKM_PSK_SHA256:I = 0x6ac0f00

.field private static final WPA_AKM_EAP:I = 0x1f25000

.field private static final WPA_AKM_PSK:I = 0x2f25000

.field private static final WPA_VENDOR_OUI_TYPE_ONE:I = 0x1f25000

.field private static final WPA_VENDOR_OUI_VERSION:S = 0x1s


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static buildCapabilities([Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 10
    .param p0, "ies"    # [Landroid/net/wifi/ScanResult$InformationElement;
    .param p1, "beaconCap"    # Ljava/util/BitSet;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 522
    const-string/jumbo v0, ""

    #@4
    .line 523
    .local v0, "capabilities":Ljava/lang/String;
    const/4 v4, 0x0

    #@5
    .line 524
    .local v4, "rsneFound":Z
    const/4 v5, 0x0

    #@6
    .line 526
    .local v5, "wpaFound":Z
    if-eqz p0, :cond_0

    #@8
    if-nez p1, :cond_1

    #@a
    .line 527
    :cond_0
    return-object v0

    #@b
    .line 530
    :cond_1
    invoke-virtual {p1, v6}, Ljava/util/BitSet;->get(I)Z

    #@e
    move-result v1

    #@f
    .line 531
    .local v1, "ess":Z
    const/4 v7, 0x4

    #@10
    invoke-virtual {p1, v7}, Ljava/util/BitSet;->get(I)Z

    #@13
    move-result v3

    #@14
    .line 533
    .local v3, "privacy":Z
    array-length v7, p0

    #@15
    :goto_0
    if-ge v6, v7, :cond_4

    #@17
    aget-object v2, p0, v6

    #@19
    .line 534
    .local v2, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    iget v8, v2, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@1b
    const/16 v9, 0x30

    #@1d
    if-ne v8, v9, :cond_2

    #@1f
    .line 535
    const/4 v4, 0x1

    #@20
    .line 536
    new-instance v8, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v8

    #@29
    invoke-static {v2}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseRsnElement(Landroid/net/wifi/ScanResult$InformationElement;)Ljava/lang/String;

    #@2c
    move-result-object v9

    #@2d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    .line 539
    :cond_2
    iget v8, v2, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@37
    const/16 v9, 0xdd

    #@39
    if-ne v8, v9, :cond_3

    #@3b
    .line 540
    invoke-static {v2}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;)Z

    #@3e
    move-result v8

    #@3f
    if-eqz v8, :cond_3

    #@41
    .line 541
    const/4 v5, 0x1

    #@42
    .line 542
    new-instance v8, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v8

    #@4b
    invoke-static {v2}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;)Ljava/lang/String;

    #@4e
    move-result-object v9

    #@4f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v8

    #@53
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    .line 533
    :cond_3
    add-int/lit8 v6, v6, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 547
    .end local v2    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    :cond_4
    if-nez v4, :cond_5

    #@5c
    if-eqz v5, :cond_7

    #@5e
    .line 552
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    #@60
    .line 553
    new-instance v6, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    const-string/jumbo v7, "[ESS]"

    #@6c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v6

    #@70
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v0

    #@74
    .line 556
    :cond_6
    return-object v0

    #@75
    .line 547
    :cond_7
    if-eqz v3, :cond_5

    #@77
    .line 549
    new-instance v6, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v6

    #@80
    const-string/jumbo v7, "[WEP]"

    #@83
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v6

    #@87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v0

    #@8b
    goto :goto_1
.end method

.method private static isWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;)Z
    .locals 5
    .param p0, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 425
    iget-object v3, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@3
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@6
    move-result-object v3

    #@7
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@9
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@c
    move-result-object v0

    #@d
    .line 429
    .local v0, "buf":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result v3

    #@11
    const v4, 0x1f25000

    #@14
    if-ne v3, v4, :cond_0

    #@16
    const/4 v2, 0x1

    #@17
    :cond_0
    return v2

    #@18
    .line 430
    :catch_0
    move-exception v1

    #@19
    .line 431
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string/jumbo v3, "IE_Capabilities"

    #@1c
    const-string/jumbo v4, "Couldn\'t parse VSA IE, buffer underflow"

    #@1f
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 432
    return v2
.end method

.method private static parseRsnElement(Landroid/net/wifi/ScanResult$InformationElement;)Ljava/lang/String;
    .locals 11
    .param p0, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 348
    iget-object v8, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@3
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@6
    move-result-object v8

    #@7
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@9
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@c
    move-result-object v2

    #@d
    .line 352
    .local v2, "buf":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    #@10
    move-result v8

    #@11
    const/4 v9, 0x1

    #@12
    if-eq v8, v9, :cond_0

    #@14
    .line 354
    return-object v10

    #@15
    .line 359
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    #@18
    .line 362
    const-string/jumbo v7, "[WPA2"

    #@1b
    .line 365
    .local v7, "security":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    #@1e
    move-result v3

    #@1f
    .line 368
    .local v3, "cipherCount":S
    const/4 v6, 0x0

    #@20
    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_1

    #@22
    .line 370
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    #@25
    .line 368
    add-int/lit8 v6, v6, 0x1

    #@27
    goto :goto_0

    #@28
    .line 375
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    #@2b
    move-result v1

    #@2c
    .line 378
    .local v1, "akmCount":S
    if-nez v1, :cond_2

    #@2e
    .line 379
    new-instance v8, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v8

    #@37
    const-string/jumbo v9, "-EAP"

    #@3a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v7

    #@42
    .line 381
    :cond_2
    const/4 v5, 0x0

    #@43
    .line 382
    .local v5, "found":Z
    const/4 v6, 0x0

    #@44
    :goto_1
    if-ge v6, v1, :cond_9

    #@46
    .line 383
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    #@49
    move-result v0

    #@4a
    .line 384
    .local v0, "akm":I
    sparse-switch v0, :sswitch_data_0

    #@4d
    .line 382
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@4f
    goto :goto_1

    #@50
    .line 386
    :sswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v9

    #@59
    if-eqz v5, :cond_3

    #@5b
    const-string/jumbo v8, "+"

    #@5e
    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v8

    #@62
    const-string/jumbo v9, "EAP"

    #@65
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v8

    #@69
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v7

    #@6d
    .line 387
    const/4 v5, 0x1

    #@6e
    .line 388
    goto :goto_2

    #@6f
    .line 386
    :cond_3
    const-string/jumbo v8, "-"

    #@72
    goto :goto_3

    #@73
    .line 390
    :sswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v9

    #@7c
    if-eqz v5, :cond_4

    #@7e
    const-string/jumbo v8, "+"

    #@81
    :goto_4
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v8

    #@85
    const-string/jumbo v9, "PSK"

    #@88
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v8

    #@8c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v7

    #@90
    .line 391
    const/4 v5, 0x1

    #@91
    .line 392
    goto :goto_2

    #@92
    .line 390
    :cond_4
    const-string/jumbo v8, "-"

    #@95
    goto :goto_4

    #@96
    .line 394
    :sswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v9

    #@9f
    if-eqz v5, :cond_5

    #@a1
    const-string/jumbo v8, "+"

    #@a4
    :goto_5
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v8

    #@a8
    const-string/jumbo v9, "FT/EAP"

    #@ab
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v8

    #@af
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v7

    #@b3
    .line 395
    const/4 v5, 0x1

    #@b4
    .line 396
    goto :goto_2

    #@b5
    .line 394
    :cond_5
    const-string/jumbo v8, "-"

    #@b8
    goto :goto_5

    #@b9
    .line 398
    :sswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v9

    #@c2
    if-eqz v5, :cond_6

    #@c4
    const-string/jumbo v8, "+"

    #@c7
    :goto_6
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v8

    #@cb
    const-string/jumbo v9, "FT/PSK"

    #@ce
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v8

    #@d2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v7

    #@d6
    .line 399
    const/4 v5, 0x1

    #@d7
    .line 400
    goto/16 :goto_2

    #@d9
    .line 398
    :cond_6
    const-string/jumbo v8, "-"

    #@dc
    goto :goto_6

    #@dd
    .line 402
    :sswitch_4
    new-instance v8, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v9

    #@e6
    if-eqz v5, :cond_7

    #@e8
    const-string/jumbo v8, "+"

    #@eb
    :goto_7
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v8

    #@ef
    const-string/jumbo v9, "EAP-SHA256"

    #@f2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v8

    #@f6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v7

    #@fa
    .line 403
    const/4 v5, 0x1

    #@fb
    .line 404
    goto/16 :goto_2

    #@fd
    .line 402
    :cond_7
    const-string/jumbo v8, "-"

    #@100
    goto :goto_7

    #@101
    .line 406
    :sswitch_5
    new-instance v8, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v9

    #@10a
    if-eqz v5, :cond_8

    #@10c
    const-string/jumbo v8, "+"

    #@10f
    :goto_8
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v8

    #@113
    const-string/jumbo v9, "PSK-SHA256"

    #@116
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v8

    #@11a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v7

    #@11e
    .line 407
    const/4 v5, 0x1

    #@11f
    .line 408
    goto/16 :goto_2

    #@121
    .line 406
    :cond_8
    const-string/jumbo v8, "-"

    #@124
    goto :goto_8

    #@125
    .line 416
    .end local v0    # "akm":I
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    #@127
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v8

    #@12e
    const-string/jumbo v9, "]"

    #@131
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v8

    #@135
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@138
    move-result-object v7

    #@139
    .line 417
    return-object v7

    #@13a
    .line 418
    .end local v1    # "akmCount":S
    .end local v3    # "cipherCount":S
    .end local v5    # "found":Z
    .end local v6    # "i":I
    .end local v7    # "security":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@13b
    .line 419
    .local v4, "e":Ljava/nio/BufferUnderflowException;
    const-string/jumbo v8, "IE_Capabilities"

    #@13e
    const-string/jumbo v9, "Couldn\'t parse RSNE, buffer underflow"

    #@141
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@144
    .line 420
    return-object v10

    #@145
    .line 384
    nop

    #@146
    :sswitch_data_0
    .sparse-switch
        0x1ac0f00 -> :sswitch_0
        0x2ac0f00 -> :sswitch_1
        0x3ac0f00 -> :sswitch_2
        0x4ac0f00 -> :sswitch_3
        0x5ac0f00 -> :sswitch_4
        0x6ac0f00 -> :sswitch_5
    .end sparse-switch
.end method

.method private static parseWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;)Ljava/lang/String;
    .locals 11
    .param p0, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 449
    iget-object v8, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@3
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@6
    move-result-object v8

    #@7
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@9
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@c
    move-result-object v2

    #@d
    .line 454
    .local v2, "buf":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    #@10
    .line 457
    const-string/jumbo v7, "[WPA"

    #@13
    .line 460
    .local v7, "security":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    #@16
    move-result v8

    #@17
    const/4 v9, 0x1

    #@18
    if-eq v8, v9, :cond_0

    #@1a
    .line 462
    return-object v10

    #@1b
    .line 467
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    #@1e
    .line 470
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    #@21
    move-result v3

    #@22
    .line 473
    .local v3, "cipherCount":S
    const/4 v6, 0x0

    #@23
    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_1

    #@25
    .line 475
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    #@28
    .line 473
    add-int/lit8 v6, v6, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 480
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    #@2e
    move-result v1

    #@2f
    .line 483
    .local v1, "akmCount":S
    if-nez v1, :cond_2

    #@31
    .line 484
    new-instance v8, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    const-string/jumbo v9, "-EAP"

    #@3d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v8

    #@41
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v7

    #@45
    .line 486
    :cond_2
    const/4 v5, 0x0

    #@46
    .line 487
    .local v5, "found":Z
    const/4 v6, 0x0

    #@47
    :goto_1
    if-ge v6, v1, :cond_5

    #@49
    .line 488
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    #@4c
    move-result v0

    #@4d
    .line 489
    .local v0, "akm":I
    sparse-switch v0, :sswitch_data_0

    #@50
    .line 487
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@52
    goto :goto_1

    #@53
    .line 491
    :sswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v9

    #@5c
    if-eqz v5, :cond_3

    #@5e
    const-string/jumbo v8, "+"

    #@61
    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v8

    #@65
    const-string/jumbo v9, "EAP"

    #@68
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v8

    #@6c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v7

    #@70
    .line 492
    const/4 v5, 0x1

    #@71
    .line 493
    goto :goto_2

    #@72
    .line 491
    :cond_3
    const-string/jumbo v8, "-"

    #@75
    goto :goto_3

    #@76
    .line 495
    :sswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v9

    #@7f
    if-eqz v5, :cond_4

    #@81
    const-string/jumbo v8, "+"

    #@84
    :goto_4
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v8

    #@88
    const-string/jumbo v9, "PSK"

    #@8b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v8

    #@8f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v7

    #@93
    .line 496
    const/4 v5, 0x1

    #@94
    .line 497
    goto :goto_2

    #@95
    .line 495
    :cond_4
    const-string/jumbo v8, "-"

    #@98
    goto :goto_4

    #@99
    .line 505
    .end local v0    # "akm":I
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v8

    #@a2
    const-string/jumbo v9, "]"

    #@a5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v8

    #@a9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@ac
    move-result-object v7

    #@ad
    .line 506
    return-object v7

    #@ae
    .line 507
    .end local v1    # "akmCount":S
    .end local v3    # "cipherCount":S
    .end local v5    # "found":Z
    .end local v6    # "i":I
    .end local v7    # "security":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@af
    .line 508
    .local v4, "e":Ljava/nio/BufferUnderflowException;
    const-string/jumbo v8, "IE_Capabilities"

    #@b2
    const-string/jumbo v9, "Couldn\'t parse type 1 WPA, buffer underflow"

    #@b5
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    .line 509
    return-object v10

    #@b9
    .line 489
    nop

    #@ba
    :sswitch_data_0
    .sparse-switch
        0x1f25000 -> :sswitch_0
        0x2f25000 -> :sswitch_1
    .end sparse-switch
.end method
