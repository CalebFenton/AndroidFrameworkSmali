.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimMipUppLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    #@0
    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    #@3
    return-void
.end method


# virtual methods
.method checkLengthLegal(II)Z
    .locals 3
    .param p1, "length"    # I
    .param p2, "expectLength"    # I

    #@0
    .prologue
    .line 469
    if-ge p1, p2, :cond_0

    #@2
    .line 470
    const-string/jumbo v0, "RuimRecords"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "CSIM MIPUPP format error, length = "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 471
    const-string/jumbo v2, "expected length at least ="

    #@18
    .line 470
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 472
    const/4 v0, 0x0

    #@28
    return v0

    #@29
    .line 474
    :cond_0
    const/4 v0, 0x1

    #@2a
    return v0
.end method

.method public getEfName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 465
    const-string/jumbo v0, "EF_CSIM_MIPUPP"

    #@3
    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 17
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 481
    move-object/from16 v0, p1

    #@2
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4
    check-cast v2, [B

    #@6
    .line 483
    .local v2, "data":[B
    array-length v14, v2

    #@7
    const/4 v15, 0x1

    #@8
    if-ge v14, v15, :cond_0

    #@a
    .line 484
    const-string/jumbo v14, "RuimRecords"

    #@d
    const-string/jumbo v15, "MIPUPP read error"

    #@10
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 485
    return-void

    #@14
    .line 488
    :cond_0
    new-instance v1, Lcom/android/internal/util/BitwiseInputStream;

    #@16
    invoke-direct {v1, v2}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    #@19
    .line 490
    .local v1, "bitStream":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v14, 0x8

    #@1b
    :try_start_0
    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@1e
    move-result v6

    #@1f
    .line 492
    .local v6, "mipUppLength":I
    shl-int/lit8 v6, v6, 0x3

    #@21
    .line 494
    const/4 v14, 0x1

    #@22
    move-object/from16 v0, p0

    #@24
    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    #@27
    move-result v14

    #@28
    if-nez v14, :cond_1

    #@2a
    .line 495
    return-void

    #@2b
    .line 498
    :cond_1
    const/4 v14, 0x1

    #@2c
    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@2f
    move-result v13

    #@30
    .line 499
    .local v13, "retryInfoInclude":I
    add-int/lit8 v6, v6, -0x1

    #@32
    .line 501
    const/4 v14, 0x1

    #@33
    if-ne v13, v14, :cond_3

    #@35
    .line 502
    const/16 v14, 0xb

    #@37
    move-object/from16 v0, p0

    #@39
    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    #@3c
    move-result v14

    #@3d
    if-nez v14, :cond_2

    #@3f
    .line 503
    return-void

    #@40
    .line 505
    :cond_2
    const/16 v14, 0xb

    #@42
    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@45
    .line 507
    add-int/lit8 v6, v6, -0xb

    #@47
    .line 510
    :cond_3
    const/4 v14, 0x4

    #@48
    move-object/from16 v0, p0

    #@4a
    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    #@4d
    move-result v14

    #@4e
    if-nez v14, :cond_4

    #@50
    .line 511
    return-void

    #@51
    .line 513
    :cond_4
    const/4 v14, 0x4

    #@52
    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@55
    move-result v12

    #@56
    .line 514
    .local v12, "numNai":I
    add-int/lit8 v6, v6, -0x4

    #@58
    .line 517
    const/4 v4, 0x0

    #@59
    .local v4, "index":I
    :goto_0
    if-ge v4, v12, :cond_11

    #@5b
    .line 518
    const/4 v14, 0x4

    #@5c
    move-object/from16 v0, p0

    #@5e
    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    #@61
    move-result v14

    #@62
    if-nez v14, :cond_5

    #@64
    .line 519
    return-void

    #@65
    .line 521
    :cond_5
    const/4 v14, 0x4

    #@66
    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@69
    move-result v10

    #@6a
    .line 522
    .local v10, "naiEntryIndex":I
    add-int/lit8 v6, v6, -0x4

    #@6c
    .line 524
    const/16 v14, 0x8

    #@6e
    move-object/from16 v0, p0

    #@70
    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    #@73
    move-result v14

    #@74
    if-nez v14, :cond_6

    #@76
    .line 525
    return-void

    #@77
    .line 527
    :cond_6
    const/16 v14, 0x8

    #@79
    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@7c
    move-result v11

    #@7d
    .line 528
    .local v11, "naiLength":I
    add-int/lit8 v6, v6, -0x8

    #@7f
    .line 530
    if-nez v10, :cond_a

    #@81
    .line 532
    shl-int/lit8 v14, v11, 0x3

    #@83
    move-object/from16 v0, p0

    #@85
    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    #@88
    move-result v14

    #@89
    if-nez v14, :cond_7

    #@8b
    .line 533
    return-void

    #@8c
    .line 535
    :cond_7
    new-array v9, v11, [C

    #@8e
    .line 536
    .local v9, "naiCharArray":[C
    const/4 v5, 0x0

    #@8f
    .local v5, "index1":I
    :goto_1
    if-ge v5, v11, :cond_8

    #@91
    .line 537
    const/16 v14, 0x8

    #@93
    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@96
    move-result v14

    #@97
    and-int/lit16 v14, v14, 0xff

    #@99
    int-to-char v14, v14

    #@9a
    aput-char v14, v9, v5

    #@9c
    .line 536
    add-int/lit8 v5, v5, 0x1

    #@9e
    goto :goto_1

    #@9f
    .line 539
    :cond_8
    move-object/from16 v0, p0

    #@a1
    iget-object v14, v0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@a3
    new-instance v15, Ljava/lang/String;

    #@a5
    invoke-direct {v15, v9}, Ljava/lang/String;-><init>([C)V

    #@a8
    invoke-static {v14, v15}, Lcom/android/internal/telephony/uicc/RuimRecords;->-set6(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    #@ab
    .line 540
    const-string/jumbo v14, "RuimRecords"

    #@ae
    const/4 v15, 0x2

    #@af
    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b2
    move-result v14

    #@b3
    if-eqz v14, :cond_9

    #@b5
    .line 541
    const-string/jumbo v14, "RuimRecords"

    #@b8
    new-instance v15, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v16, "MIPUPP Nai = "

    #@c0
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v15

    #@c4
    move-object/from16 v0, p0

    #@c6
    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #@c8
    move-object/from16 v16, v0

    #@ca
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get4(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    #@cd
    move-result-object v16

    #@ce
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v15

    #@d2
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v15

    #@d6
    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d9
    .line 543
    :cond_9
    return-void

    #@da
    .line 546
    .end local v5    # "index1":I
    .end local v9    # "naiCharArray":[C
    :cond_a
    shl-int/lit8 v14, v11, 0x3

    #@dc
    add-int/lit8 v14, v14, 0x66

    #@de
    move-object/from16 v0, p0

    #@e0
    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    #@e3
    move-result v14

    #@e4
    if-nez v14, :cond_b

    #@e6
    .line 547
    return-void

    #@e7
    .line 549
    :cond_b
    shl-int/lit8 v14, v11, 0x3

    #@e9
    add-int/lit8 v14, v14, 0x65

    #@eb
    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@ee
    .line 550
    const/4 v14, 0x1

    #@ef
    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@f2
    move-result v7

    #@f3
    .line 551
    .local v7, "mnAaaSpiIndicator":I
    shl-int/lit8 v14, v11, 0x3

    #@f5
    add-int/lit8 v14, v14, 0x66

    #@f7
    sub-int/2addr v6, v14

    #@f8
    .line 553
    const/4 v14, 0x1

    #@f9
    if-ne v7, v14, :cond_d

    #@fb
    .line 554
    const/16 v14, 0x20

    #@fd
    move-object/from16 v0, p0

    #@ff
    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    #@102
    move-result v14

    #@103
    if-nez v14, :cond_c

    #@105
    .line 555
    return-void

    #@106
    .line 557
    :cond_c
    const/16 v14, 0x20

    #@108
    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@10b
    .line 558
    add-int/lit8 v6, v6, -0x20

    #@10d
    .line 562
    :cond_d
    const/4 v14, 0x5

    #@10e
    move-object/from16 v0, p0

    #@110
    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    #@113
    move-result v14

    #@114
    if-nez v14, :cond_e

    #@116
    .line 563
    return-void

    #@117
    .line 565
    :cond_e
    const/4 v14, 0x4

    #@118
    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    #@11b
    .line 566
    add-int/lit8 v6, v6, -0x4

    #@11d
    .line 567
    const/4 v14, 0x1

    #@11e
    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@121
    move-result v8

    #@122
    .line 568
    .local v8, "mnHaSpiIndicator":I
    add-int/lit8 v6, v6, -0x1

    #@124
    .line 570
    const/4 v14, 0x1

    #@125
    if-ne v8, v14, :cond_10

    #@127
    .line 571
    const/16 v14, 0x20

    #@129
    move-object/from16 v0, p0

    #@12b
    invoke-virtual {v0, v6, v14}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    #@12e
    move-result v14

    #@12f
    if-nez v14, :cond_f

    #@131
    .line 572
    return-void

    #@132
    .line 574
    :cond_f
    const/16 v14, 0x20

    #@134
    invoke-virtual {v1, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@137
    .line 575
    add-int/lit8 v6, v6, -0x20

    #@139
    .line 517
    :cond_10
    add-int/lit8 v4, v4, 0x1

    #@13b
    goto/16 :goto_0

    #@13d
    .line 579
    .end local v4    # "index":I
    .end local v6    # "mipUppLength":I
    .end local v7    # "mnAaaSpiIndicator":I
    .end local v8    # "mnHaSpiIndicator":I
    .end local v10    # "naiEntryIndex":I
    .end local v11    # "naiLength":I
    .end local v12    # "numNai":I
    .end local v13    # "retryInfoInclude":I
    :catch_0
    move-exception v3

    #@13e
    .line 580
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "RuimRecords"

    #@141
    const-string/jumbo v15, "MIPUPP read Exception error!"

    #@144
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@147
    .line 581
    return-void

    #@148
    .line 479
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "index":I
    .restart local v6    # "mipUppLength":I
    .restart local v12    # "numNai":I
    .restart local v13    # "retryInfoInclude":I
    :cond_11
    return-void
.end method
