.class public Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;
.super Ljava/lang/Object;
.source "ParsedIntentInfoUtils.java"


# static fields
.field public static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseData(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .param p0, "intentInfo"    # Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "allowGlobs"    # Z
    .param p4, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .line 374
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 375
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 377
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_ee

    .line 379
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_22

    .line 381
    :try_start_11
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_ee

    .line 384
    goto :goto_22

    .line 382
    :catch_15
    move-exception v2

    .line 383
    .local v2, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :try_start_16
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_ee

    .line 492
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 383
    return-object v4

    .line 387
    .end local v2    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_22
    :goto_22
    const/16 v4, 0xb

    :try_start_24
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 389
    .end local v3    # "str":Ljava/lang/String;
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_2d

    .line 390
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addMimeGroup(Ljava/lang/String;)V

    .line 393
    :cond_2d
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 395
    .end local v4    # "str":Ljava/lang/String;
    .local v5, "str":Ljava/lang/String;
    if-eqz v5, :cond_37

    .line 396
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 399
    :cond_37
    const/16 v4, 0x8

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 401
    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    if-eqz v4, :cond_42

    .line 402
    invoke-virtual {v0, v4, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 406
    :cond_42
    const/16 v5, 0x9

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 408
    .end local v4    # "str":Ljava/lang/String;
    .restart local v5    # "str":Ljava/lang/String;
    if-eqz v5, :cond_4d

    .line 409
    invoke-virtual {v0, v5, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 413
    :cond_4d
    const/16 v4, 0xa

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 415
    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    const/4 v5, 0x2

    if-eqz v4, :cond_66

    .line 416
    if-nez p3, :cond_63

    .line 417
    const-string/jumbo v2, "sspPattern not allowed here; ssp must be literal"

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_5f
    .catchall {:try_start_24 .. :try_end_5f} :catchall_ee

    .line 492
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 417
    return-object v2

    .line 420
    :cond_63
    :try_start_63
    invoke-virtual {v0, v4, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 424
    :cond_66
    const/16 v6, 0xf

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 426
    .end local v4    # "str":Ljava/lang/String;
    .local v6, "str":Ljava/lang/String;
    const/4 v4, 0x3

    if-eqz v6, :cond_7f

    .line 427
    if-nez p3, :cond_7c

    .line 428
    const-string/jumbo v2, "sspAdvancedPattern not allowed here; ssp must be literal"

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_78
    .catchall {:try_start_63 .. :try_end_78} :catchall_ee

    .line 492
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 428
    return-object v2

    .line 431
    :cond_7c
    :try_start_7c
    invoke-virtual {v0, v6, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 435
    :cond_7f
    const/16 v7, 0xd

    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 437
    .end local v6    # "str":Ljava/lang/String;
    .local v7, "str":Ljava/lang/String;
    const/4 v6, 0x4

    if-eqz v7, :cond_8b

    .line 438
    invoke-virtual {v0, v7, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 443
    :cond_8b
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    .line 445
    .local v8, "host":Ljava/lang/String;
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 447
    .local v9, "port":Ljava/lang/String;
    if-eqz v8, :cond_98

    .line 448
    invoke-virtual {v0, v8, v9}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_98
    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 453
    .end local v7    # "str":Ljava/lang/String;
    .local v10, "str":Ljava/lang/String;
    if-eqz v10, :cond_a1

    .line 454
    invoke-virtual {v0, v10, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 457
    :cond_a1
    const/4 v7, 0x5

    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 459
    .end local v10    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    if-eqz v7, :cond_ab

    .line 460
    invoke-virtual {v0, v7, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 463
    :cond_ab
    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 465
    .end local v7    # "str":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    if-eqz v3, :cond_c2

    .line 466
    if-nez p3, :cond_bf

    .line 467
    const-string/jumbo v2, "pathPattern not allowed here; path must be literal"

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_bb
    .catchall {:try_start_7c .. :try_end_bb} :catchall_ee

    .line 492
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 467
    return-object v2

    .line 470
    :cond_bf
    :try_start_bf
    invoke-virtual {v0, v3, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 473
    :cond_c2
    const/16 v5, 0xe

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 475
    .end local v3    # "str":Ljava/lang/String;
    .restart local v5    # "str":Ljava/lang/String;
    if-eqz v5, :cond_da

    .line 476
    if-nez p3, :cond_d7

    .line 477
    const-string/jumbo v2, "pathAdvancedPattern not allowed here; path must be literal"

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_d3
    .catchall {:try_start_bf .. :try_end_d3} :catchall_ee

    .line 492
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 477
    return-object v2

    .line 480
    :cond_d7
    :try_start_d7
    invoke-virtual {v0, v5, v4}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 483
    :cond_da
    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 485
    .end local v5    # "str":Ljava/lang/String;
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_e5

    .line 486
    invoke-virtual {v0, v2, v6}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 490
    :cond_e5
    const/4 v3, 0x0

    invoke-interface {p4, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_ea
    .catchall {:try_start_d7 .. :try_end_ea} :catchall_ee

    .line 492
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 490
    return-object v3

    .line 492
    .end local v2    # "str":Ljava/lang/String;
    .end local v8    # "host":Ljava/lang/String;
    .end local v9    # "port":Ljava/lang/String;
    :catchall_ee
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 493
    throw v2
.end method

.method public static blacklist parseIntentInfo(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "allowGlobs"    # Z
    .param p5, "allowAutoVerify"    # Z
    .param p6, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "ZZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    new-instance v1, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-direct {v1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;-><init>()V

    .line 61
    .local v1, "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v7

    .line 62
    .local v7, "intentFilter":Landroid/content/IntentFilter;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 64
    .local v8, "sa":Landroid/content/res/TypedArray;
    nop

    .line 65
    const/4 v0, 0x2

    const/4 v9, 0x0

    :try_start_18
    invoke-virtual {v8, v0, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 64
    invoke-virtual {v7, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 66
    const/4 v10, 0x3

    invoke-virtual {v8, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/content/IntentFilter;->setOrder(I)V

    .line 68
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_16e

    .line 69
    .local v5, "v":Landroid/util/TypedValue;
    if-eqz v5, :cond_44

    .line 70
    :try_start_2d
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setLabelRes(I)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 71
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    if-nez v6, :cond_44

    .line 72
    invoke-virtual {v5}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_3e

    goto :goto_44

    .line 92
    .end local v5    # "v":Landroid/util/TypedValue;
    :catchall_3e
    move-exception v0

    move-object/from16 v6, p6

    move-object v5, v1

    goto/16 :goto_172

    .line 76
    .restart local v5    # "v":Landroid/util/TypedValue;
    :cond_44
    :goto_44
    :try_start_44
    sget-boolean v6, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_16e

    if-eqz v6, :cond_50

    .line 77
    const/4 v6, 0x7

    :try_start_49
    invoke-virtual {v8, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_3e

    .line 81
    :cond_50
    :try_start_50
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIcon()I

    move-result v6
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_16e

    const/4 v11, 0x1

    if-nez v6, :cond_5f

    .line 82
    nop

    .line 83
    :try_start_58
    invoke-virtual {v8, v11, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 82
    invoke-virtual {v1, v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 86
    :cond_5f
    if-eqz p5, :cond_69

    .line 87
    const/4 v6, 0x6

    invoke-virtual {v8, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v7, v6}, Landroid/content/IntentFilter;->setAutoVerify(Z)V
    :try_end_69
    .catchall {:try_start_58 .. :try_end_69} :catchall_3e

    .line 92
    .end local v5    # "v":Landroid/util/TypedValue;
    :cond_69
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    nop

    .line 94
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    .line 96
    .local v12, "depth":I
    :goto_71
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v13, v5

    .local v13, "type":I
    if-eq v5, v11, :cond_15d

    if-ne v13, v10, :cond_86

    .line 98
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v12, :cond_81

    goto :goto_86

    :cond_81
    move-object/from16 v6, p6

    move-object v5, v1

    goto/16 :goto_160

    .line 99
    :cond_86
    :goto_86
    if-eq v13, v0, :cond_89

    .line 100
    goto :goto_71

    .line 102
    :cond_89
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 103
    goto :goto_71

    .line 107
    :cond_94
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 108
    .local v14, "nodeName":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_176

    :cond_9f
    goto :goto_c9

    :sswitch_a0
    const-string v5, "category"

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9f

    move v5, v11

    goto :goto_ca

    :sswitch_aa
    const-string v5, "data"

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9f

    move v5, v0

    goto :goto_ca

    :sswitch_b4
    const-string/jumbo v5, "uri-relative-filter-group"

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9f

    move v5, v10

    goto :goto_ca

    :sswitch_bf
    const-string v5, "action"

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9f

    move v5, v9

    goto :goto_ca

    :goto_c9
    const/4 v5, -0x1

    :goto_ca
    move-object v6, v1

    .end local v1    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .local v6, "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    const-wide/32 v0, 0x9029125

    const/4 v9, 0x0

    const-string v10, "name"

    const-string v11, "http://schemas.android.com/apk/res/android"

    const-string v15, "No value supplied for <android:name>"

    packed-switch v5, :pswitch_data_188

    move-object v5, v6

    move-object/from16 v6, p6

    .end local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .local v5, "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    goto/16 :goto_145

    .line 143
    .end local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :pswitch_dd
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->relativeReferenceIntentFilters()Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 144
    move/from16 v5, p4

    move-object v1, v6

    move-object/from16 v6, p6

    .end local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v1    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseRelRefGroup(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 145
    move-object v5, v1

    .end local v1    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;
    .restart local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    goto/16 :goto_14b

    .line 143
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :cond_ef
    move-object v5, v6

    move-object/from16 v6, p6

    .end local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    goto :goto_145

    .line 140
    .end local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :pswitch_f3
    move-object v5, v6

    move-object/from16 v6, p6

    .end local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    move/from16 v1, p4

    invoke-static {v5, v3, v4, v1, v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseData(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 141
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_14b

    .line 125
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :pswitch_fd
    move-object v5, v6

    move-object/from16 v6, p6

    .end local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    invoke-interface {v4, v11, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, "value":Ljava/lang/String;
    if-nez v10, :cond_10b

    .line 127
    invoke-interface {v6, v15}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_14b

    .line 128
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_10b
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_119

    .line 129
    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 131
    invoke-interface {v6, v15, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_14b

    .line 134
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_119
    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 135
    invoke-interface {v6, v9}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 137
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_14b

    .line 110
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .end local v10    # "value":Ljava/lang/String;
    .restart local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :pswitch_121
    move-object v5, v6

    move-object/from16 v6, p6

    .end local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    invoke-interface {v4, v11, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 111
    .restart local v10    # "value":Ljava/lang/String;
    if-nez v10, :cond_12f

    .line 112
    invoke-interface {v6, v15}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_14b

    .line 113
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_12f
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_13d

    .line 114
    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    invoke-interface {v6, v15, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_14b

    .line 119
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_13d
    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    invoke-interface {v6, v9}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 122
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_14b

    .line 148
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v10    # "value":Ljava/lang/String;
    :goto_145
    const-string v0, "<intent-filter>"

    invoke-static {v0, v2, v4, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 152
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :goto_14b
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_156

    .line 153
    invoke-interface {v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 155
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v14    # "nodeName":Ljava/lang/String;
    :cond_156
    move-object v1, v5

    const/4 v0, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x1

    goto/16 :goto_71

    .line 96
    .end local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v1    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :cond_15d
    move-object/from16 v6, p6

    move-object v5, v1

    .line 157
    .end local v1    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :goto_160
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setHasDefault(Z)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 174
    invoke-interface {v6, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 92
    .end local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .end local v12    # "depth":I
    .end local v13    # "type":I
    .restart local v1    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :catchall_16e
    move-exception v0

    move-object/from16 v6, p6

    move-object v5, v1

    .end local v1    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :goto_172
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    throw v0

    :sswitch_data_176
    .sparse-switch
        -0x54d081ca -> :sswitch_bf
        -0x472f1456 -> :sswitch_b4
        0x2eefaa -> :sswitch_aa
        0x302bcfe -> :sswitch_a0
    .end sparse-switch

    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_121
        :pswitch_fd
        :pswitch_f3
        :pswitch_dd
    .end packed-switch
.end method

.method private static blacklist parseRelRefGroup(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .param p0, "intentInfo"    # Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "allowGlobs"    # Z
    .param p5, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 183
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUriRelativeFilterGroup:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 187
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 188
    .local v2, "action":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_d
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-nez v5, :cond_14

    .line 189
    const/4 v2, 0x1

    .line 191
    :cond_14
    new-instance v5, Landroid/content/UriRelativeFilterGroup;

    invoke-direct {v5, v2}, Landroid/content/UriRelativeFilterGroup;-><init>(I)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_85

    .line 193
    .end local v2    # "action":I
    .local v5, "group":Landroid/content/UriRelativeFilterGroup;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    nop

    .line 195
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 197
    .local v2, "depth":I
    :goto_21
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    if-eq v6, v3, :cond_72

    const/4 v6, 0x3

    if-ne v7, v6, :cond_31

    .line 199
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_72

    .line 200
    :cond_31
    const/4 v6, 0x2

    if-eq v7, v6, :cond_35

    .line 201
    goto :goto_21

    .line 203
    :cond_35
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v6

    invoke-virtual {v6, p1, p3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 204
    goto :goto_21

    .line 208
    :cond_40
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "nodeName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    packed-switch v8, :pswitch_data_8a

    :cond_4b
    goto :goto_56

    :pswitch_4c
    const-string v8, "data"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    move v8, v4

    goto :goto_57

    :goto_56
    const/4 v8, -0x1

    :goto_57
    packed-switch v8, :pswitch_data_90

    .line 214
    const-string v8, "<uri-relative-filter-group>"

    invoke-static {v8, p1, p3, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    .local v8, "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_66

    .line 211
    .end local v8    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_61
    invoke-static {v5, p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseRelRefGroupData(Landroid/content/UriRelativeFilterGroup;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    .line 212
    .restart local v8    # "result":Landroid/content/pm/parsing/result/ParseResult;
    nop

    .line 219
    :goto_66
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_71

    .line 220
    invoke-interface {p5, v8}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 222
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v8    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_71
    goto :goto_21

    .line 224
    :cond_72
    invoke-virtual {v5}, Landroid/content/UriRelativeFilterGroup;->getUriRelativeFilters()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_7f

    .line 225
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addUriRelativeFilterGroup(Landroid/content/UriRelativeFilterGroup;)V

    .line 227
    :cond_7f
    const/4 v3, 0x0

    invoke-interface {p5, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 193
    .end local v2    # "depth":I
    .end local v5    # "group":Landroid/content/UriRelativeFilterGroup;
    .end local v7    # "type":I
    :catchall_85
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    throw v2

    :pswitch_data_8a
    .packed-switch 0x2eefaa
        :pswitch_4c
    .end packed-switch

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_61
    .end packed-switch
.end method

.method private static blacklist parseRelRefGroupData(Landroid/content/UriRelativeFilterGroup;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .param p0, "group"    # Landroid/content/UriRelativeFilterGroup;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "allowGlobs"    # Z
    .param p4, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UriRelativeFilterGroup;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .line 234
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 236
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_16

    .line 239
    new-instance v4, Landroid/content/UriRelativeFilter;

    invoke-direct {v4, v2, v2, v3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 243
    :cond_16
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 245
    .end local v3    # "str":Ljava/lang/String;
    .local v4, "str":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v4, :cond_26

    .line 246
    new-instance v5, Landroid/content/UriRelativeFilter;

    invoke-direct {v5, v2, v3, v4}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 250
    :cond_26
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 252
    .end local v4    # "str":Ljava/lang/String;
    .local v5, "str":Ljava/lang/String;
    const/4 v4, 0x2

    if-eqz v5, :cond_43

    .line 253
    if-nez p3, :cond_3b

    .line 254
    const-string/jumbo v1, "pathPattern not allowed here; path must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_14b

    .line 367
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    return-object v1

    .line 257
    :cond_3b
    :try_start_3b
    new-instance v6, Landroid/content/UriRelativeFilter;

    invoke-direct {v6, v2, v4, v5}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 261
    :cond_43
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 263
    .end local v5    # "str":Ljava/lang/String;
    .local v6, "str":Ljava/lang/String;
    const/4 v5, 0x3

    if-eqz v6, :cond_61

    .line 264
    if-nez p3, :cond_59

    .line 265
    const-string/jumbo v1, "pathAdvancedPattern not allowed here; path must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_55
    .catchall {:try_start_3b .. :try_end_55} :catchall_14b

    .line 367
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 265
    return-object v1

    .line 268
    :cond_59
    :try_start_59
    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v2, v5, v6}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 272
    :cond_61
    const/16 v7, 0xc

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 274
    .end local v6    # "str":Ljava/lang/String;
    .local v7, "str":Ljava/lang/String;
    if-eqz v7, :cond_71

    .line 275
    new-instance v6, Landroid/content/UriRelativeFilter;

    invoke-direct {v6, v2, v1, v7}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 279
    :cond_71
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 281
    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    if-eqz v6, :cond_80

    .line 282
    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v4, v2, v6}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 286
    :cond_80
    const/16 v7, 0x15

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 288
    .end local v6    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    if-eqz v7, :cond_90

    .line 289
    new-instance v6, Landroid/content/UriRelativeFilter;

    invoke-direct {v6, v4, v3, v7}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 293
    :cond_90
    const/16 v6, 0x16

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 295
    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    if-eqz v6, :cond_ac

    .line 296
    if-nez p3, :cond_a4

    .line 297
    const-string v1, "fragmentPattern not allowed here; fragment must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_a0
    .catchall {:try_start_59 .. :try_end_a0} :catchall_14b

    .line 367
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    return-object v1

    .line 300
    :cond_a4
    :try_start_a4
    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v4, v4, v6}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 304
    :cond_ac
    const/16 v7, 0x17

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 306
    .end local v6    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    if-eqz v7, :cond_c8

    .line 307
    if-nez p3, :cond_c0

    .line 308
    const-string v1, "fragmentAdvancedPattern not allowed here; fragment must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_bc
    .catchall {:try_start_a4 .. :try_end_bc} :catchall_14b

    .line 367
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 308
    return-object v1

    .line 311
    :cond_c0
    :try_start_c0
    new-instance v6, Landroid/content/UriRelativeFilter;

    invoke-direct {v6, v4, v5, v7}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 315
    :cond_c8
    const/16 v6, 0x18

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 317
    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    if-eqz v6, :cond_d8

    .line 318
    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v4, v1, v6}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 322
    :cond_d8
    const/16 v7, 0x10

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 324
    .end local v6    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    if-eqz v7, :cond_e8

    .line 325
    new-instance v6, Landroid/content/UriRelativeFilter;

    invoke-direct {v6, v3, v2, v7}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 329
    :cond_e8
    const/16 v6, 0x11

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 331
    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    if-eqz v6, :cond_f8

    .line 332
    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v3, v3, v6}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 336
    :cond_f8
    const/16 v7, 0x12

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 338
    .end local v6    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    if-eqz v7, :cond_115

    .line 339
    if-nez p3, :cond_10d

    .line 340
    const-string/jumbo v1, "queryPattern not allowed here; query must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_109
    .catchall {:try_start_c0 .. :try_end_109} :catchall_14b

    .line 367
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 340
    return-object v1

    .line 343
    :cond_10d
    :try_start_10d
    new-instance v6, Landroid/content/UriRelativeFilter;

    invoke-direct {v6, v3, v4, v7}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 347
    :cond_115
    const/16 v4, 0x13

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 349
    .end local v7    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    if-eqz v4, :cond_132

    .line 350
    if-nez p3, :cond_12a

    .line 351
    const-string/jumbo v1, "queryAdvancedPattern not allowed here; query must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_126
    .catchall {:try_start_10d .. :try_end_126} :catchall_14b

    .line 367
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 351
    return-object v1

    .line 354
    :cond_12a
    :try_start_12a
    new-instance v6, Landroid/content/UriRelativeFilter;

    invoke-direct {v6, v3, v5, v4}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 358
    :cond_132
    const/16 v5, 0x14

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 360
    .end local v4    # "str":Ljava/lang/String;
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_142

    .line 361
    new-instance v4, Landroid/content/UriRelativeFilter;

    invoke-direct {v4, v3, v1, v2}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 365
    :cond_142
    const/4 v1, 0x0

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_147
    .catchall {:try_start_12a .. :try_end_147} :catchall_14b

    .line 367
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 365
    return-object v1

    .line 367
    .end local v2    # "str":Ljava/lang/String;
    :catchall_14b
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 368
    throw v1
.end method
