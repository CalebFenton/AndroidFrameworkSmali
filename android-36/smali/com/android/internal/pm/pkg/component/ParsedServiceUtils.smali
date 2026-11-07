.class public Lcom/android/internal/pm/pkg/component/ParsedServiceUtils;
.super Ljava/lang/Object;
.source "ParsedServiceUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseService([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 32
    .param p0, "separateProcesses"    # [Ljava/lang/String;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "useRoundIcon"    # Z
    .param p6, "defaultSplitName"    # Ljava/lang/String;
    .param p7, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "packageName":Ljava/lang/String;
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;-><init>()V

    move-object v4, v0

    .line 59
    .local v4, "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    move-object v5, v3

    .end local v3    # "packageName":Ljava/lang/String;
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "tag":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 63
    .local v6, "sa":Landroid/content/res/TypedArray;
    const/16 v22, 0x14

    const/16 v23, 0x17

    const/16 v11, 0xc

    const/4 v12, 0x7

    const/16 v13, 0xd

    const/4 v14, 0x4

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x2

    const/16 v19, 0x6

    const/16 v20, 0xf

    const/16 v21, 0x11

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object v2, v4

    move-object v1, v5

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .end local v4    # "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    .end local v5    # "packageName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    :try_start_3e
    invoke-static/range {v2 .. v23}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_241

    move-object v11, v3

    move-object v12, v6

    move-object v3, v2

    move-object v2, v5

    .line 81
    .end local v2    # "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    .end local v6    # "sa":Landroid/content/res/TypedArray;
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;>;"
    .local v3, "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    .local v11, "tag":Ljava/lang/String;
    .local v12, "sa":Landroid/content/res/TypedArray;
    :try_start_46
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_23a

    if-eqz v4, :cond_5c

    .line 82
    :try_start_4c
    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_54

    .line 123
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    return-object v4

    .line 123
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;>;"
    :catchall_54
    move-exception v0

    move-object/from16 v9, p3

    move-object/from16 v16, v1

    move-object v1, v3

    goto/16 :goto_24a

    .line 85
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;>;"
    :cond_5c
    const/4 v4, 0x5

    :try_start_5d
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_23a

    move v13, v5

    .line 86
    .local v13, "setExported":Z
    const/4 v14, 0x0

    if-eqz v13, :cond_6c

    .line 87
    :try_start_65
    invoke-virtual {v12, v4, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_54

    .line 91
    :cond_6c
    const/4 v15, 0x3

    :try_start_6d
    invoke-virtual {v12, v15, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "permission":Ljava/lang/String;
    if-eqz v4, :cond_75

    move-object v5, v4

    goto :goto_79

    :cond_75
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v5

    :goto_79
    invoke-virtual {v3, v5}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 95
    const/16 v5, 0x13

    invoke-virtual {v12, v5, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setForegroundServiceType(I)Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;

    move-result-object v5

    .line 98
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getFlags()I

    move-result v6

    const/16 v7, 0x9

    const/4 v8, 0x1

    invoke-static {v8, v7, v12}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    .line 100
    const/4 v9, 0x2

    const/16 v15, 0xa

    invoke-static {v9, v15, v12}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v15

    or-int/2addr v7, v15

    .line 102
    const/4 v15, 0x4

    const/16 v9, 0xe

    invoke-static {v15, v9, v12}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v9

    or-int/2addr v7, v9

    .line 104
    const/16 v9, 0x8

    const/16 v15, 0x12

    invoke-static {v9, v15, v12}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v9

    or-int/2addr v7, v9

    .line 106
    const/16 v9, 0x10

    const/16 v15, 0x15

    invoke-static {v9, v15, v12}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v15

    or-int/2addr v7, v15

    .line 108
    const/high16 v15, 0x40000000    # 2.0f

    const/16 v8, 0xb

    invoke-static {v15, v8, v12}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v8

    or-int/2addr v7, v8

    or-int/2addr v6, v7

    .line 98
    invoke-virtual {v5, v6}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 111
    invoke-static {}, Landroid/multiuser/Flags;->enableSystemUserOnlyForServicesAndProviders()Z

    move-result v5
    :try_end_c4
    .catchall {:try_start_6d .. :try_end_c4} :catchall_23a

    if-eqz v5, :cond_d6

    .line 112
    :try_start_c6
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getFlags()I

    move-result v5

    const/high16 v6, 0x20000000

    const/16 v7, 0x16

    invoke-static {v6, v7, v12}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    :try_end_d6
    .catchall {:try_start_c6 .. :try_end_d6} :catchall_54

    .line 116
    :cond_d6
    :try_start_d6
    invoke-virtual {v12, v9, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5
    :try_end_da
    .catchall {:try_start_d6 .. :try_end_da} :catchall_23a

    .line 118
    .local v5, "visibleToEphemeral":Z
    if-eqz v5, :cond_ea

    .line 119
    :try_start_dc
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getFlags()I

    move-result v6

    const/high16 v7, 0x100000

    or-int/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 120
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_ea
    .catchall {:try_start_dc .. :try_end_ea} :catchall_54

    .line 123
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;>;"
    .end local v4    # "permission":Ljava/lang/String;
    :cond_ea
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    nop

    .line 126
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isSaveStateDisallowed()Z

    move-result v0

    if-eqz v0, :cond_105

    .line 129
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 130
    const-string v0, "Heavy-weight applications can not have services in main process"

    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 134
    :cond_105
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 136
    .local v0, "depth":I
    :goto_109
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v15, v4

    const/4 v6, 0x1

    .local v15, "type":I
    if-eq v4, v6, :cond_1e4

    const/4 v4, 0x3

    if-ne v15, v4, :cond_124

    .line 138
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v0, :cond_11b

    goto :goto_124

    :cond_11b
    move-object/from16 v9, p3

    move-object/from16 v16, v1

    move-object v1, v3

    move/from16 v19, v6

    goto/16 :goto_1eb

    .line 139
    :cond_124
    :goto_124
    const/4 v7, 0x2

    if-eq v15, v7, :cond_128

    .line 140
    goto :goto_109

    .line 142
    :cond_128
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v8

    move-object/from16 v9, p3

    invoke-virtual {v8, v2, v9}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v8

    if-eqz v8, :cond_135

    .line 143
    goto :goto_109

    .line 147
    :cond_135
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_24e

    :cond_140
    goto :goto_160

    :sswitch_141
    const-string/jumbo v4, "property"

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_140

    move v4, v7

    goto :goto_161

    :sswitch_14c
    const-string v4, "intent-filter"

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_140

    move v4, v14

    goto :goto_161

    :sswitch_156
    const-string v4, "meta-data"

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_140

    move v4, v6

    goto :goto_161

    :goto_160
    const/4 v4, -0x1

    :goto_161
    packed-switch v4, :pswitch_data_25c

    .line 170
    move-object/from16 v16, v1

    move-object v1, v3

    move/from16 v19, v6

    move/from16 v18, v7

    const/16 v17, 0x3

    .end local v3    # "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    .local v1, "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    .local v16, "packageName":Ljava/lang/String;
    invoke-static {v11, v2, v9, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    .local v8, "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    goto/16 :goto_1d3

    .line 166
    .end local v8    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    .end local v16    # "packageName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    .restart local v3    # "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    :pswitch_173
    nop

    .line 167
    move-object/from16 v4, p2

    invoke-static {v3, v2, v4, v9, v10}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addProperty(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    .line 168
    .restart local v8    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    move-object/from16 v16, v1

    move-object v1, v3

    move/from16 v19, v6

    move/from16 v18, v7

    const/16 v17, 0x3

    goto :goto_1d3

    .line 163
    .end local v8    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_184
    move-object/from16 v4, p2

    invoke-static {v3, v2, v4, v9, v10}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addMetaData(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    .line 164
    .restart local v8    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    move-object/from16 v16, v1

    move-object v1, v3

    move/from16 v19, v6

    move/from16 v18, v7

    const/16 v17, 0x3

    goto :goto_1d3

    .line 149
    .end local v8    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_194
    move-object/from16 v4, p2

    .line 150
    move/from16 v18, v6

    const/4 v6, 0x1

    move/from16 v17, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v16, v1

    move-object v1, v3

    move-object v3, v4

    move/from16 v19, v18

    move-object/from16 v4, p3

    move/from16 v18, v17

    const/16 v17, 0x3

    .end local v3    # "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    .local v1, "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    .restart local v16    # "packageName":Ljava/lang/String;
    invoke-static/range {v1 .. v10}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseIntentFilter(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 154
    move-object v9, v4

    .local v6, "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    move-object v8, v6

    .line 155
    .restart local v8    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1d3

    .line 156
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 157
    .local v3, "intent":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    .line 158
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v4}, Landroid/content/IntentFilter;->getOrder()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getOrder()I

    move-result v14

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setOrder(I)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 159
    invoke-virtual {v1, v3}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->addIntent(Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;)V

    .line 160
    .end local v3    # "intent":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    nop

    .line 174
    .end local v6    # "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    :cond_1d3
    :goto_1d3
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_1de

    .line 175
    invoke-interface {v10, v8}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 177
    .end local v8    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    :cond_1de
    move-object v3, v1

    move-object/from16 v1, v16

    const/4 v14, 0x0

    goto/16 :goto_109

    .line 136
    .end local v16    # "packageName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    .local v3, "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    :cond_1e4
    move-object/from16 v9, p3

    move-object/from16 v16, v1

    move-object v1, v3

    move/from16 v19, v6

    .line 179
    .end local v3    # "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    .local v1, "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    .restart local v16    # "packageName":Ljava/lang/String;
    :goto_1eb
    if-nez v13, :cond_235

    .line 180
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getIntents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1fa

    move/from16 v14, v19

    goto :goto_1fb

    :cond_1fa
    const/4 v14, 0x0

    .line 181
    .local v14, "hasIntentFilters":Z
    :goto_1fb
    if-eqz v14, :cond_232

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Targeting S+ (version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x1f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and above) requires that an explicit value for android:exported be defined when intent filters are present"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    const-wide/32 v6, 0x8f45e27

    invoke-interface {v10, v3, v6, v7}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 187
    .local v3, "exportedCheckResult":Landroid/content/pm/parsing/result/ParseResult;
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_232

    .line 188
    invoke-interface {v10, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 191
    .end local v3    # "exportedCheckResult":Landroid/content/pm/parsing/result/ParseResult;
    :cond_232
    invoke-virtual {v1, v14}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 194
    .end local v14    # "hasIntentFilters":Z
    :cond_235
    invoke-interface {v10, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 123
    .end local v0    # "depth":I
    .end local v5    # "visibleToEphemeral":Z
    .end local v13    # "setExported":Z
    .end local v15    # "type":I
    .end local v16    # "packageName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    .local v3, "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    :catchall_23a
    move-exception v0

    move-object/from16 v9, p3

    move-object/from16 v16, v1

    move-object v1, v3

    .end local v3    # "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    .local v1, "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    .restart local v16    # "packageName":Ljava/lang/String;
    goto :goto_24a

    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "sa":Landroid/content/res/TypedArray;
    .end local v16    # "packageName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    .restart local v2    # "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    .local v3, "tag":Ljava/lang/String;
    .local v6, "sa":Landroid/content/res/TypedArray;
    :catchall_241
    move-exception v0

    move-object/from16 v9, p3

    move-object/from16 v16, v1

    move-object v1, v2

    move-object v11, v3

    move-object v2, v5

    move-object v12, v6

    .end local v2    # "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v6    # "sa":Landroid/content/res/TypedArray;
    .local v1, "service":Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "sa":Landroid/content/res/TypedArray;
    .restart local v16    # "packageName":Ljava/lang/String;
    :goto_24a
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    throw v0

    :sswitch_data_24e
    .sparse-switch
        -0x4284098e -> :sswitch_156
        -0x3d616837 -> :sswitch_14c
        -0x3b32222b -> :sswitch_141
    .end sparse-switch

    :pswitch_data_25c
    .packed-switch 0x0
        :pswitch_194
        :pswitch_184
        :pswitch_173
    .end packed-switch
.end method
