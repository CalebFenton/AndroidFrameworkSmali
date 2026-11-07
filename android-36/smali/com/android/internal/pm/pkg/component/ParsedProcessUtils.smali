.class public Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;
.super Ljava/lang/Object;
.source "ParsedProcessUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseAllowPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 67
    .local p0, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestAllowPermission:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "perm":Ljava/lang/String;
    if-eqz v1, :cond_1a

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 72
    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_26

    move-object p0, v2

    .line 75
    .end local v1    # "perm":Ljava/lang/String;
    :cond_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    nop

    .line 77
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 78
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 75
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    throw v1
.end method

.method private static blacklist parseDenyPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 49
    .local p0, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestDenyPermission:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "perm":Ljava/lang/String;
    if-eqz v1, :cond_1a

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 54
    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_26

    move-object p0, v2

    .line 57
    .end local v1    # "perm":Ljava/lang/String;
    :cond_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    nop

    .line 59
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 60
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 57
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    throw v1
.end method

.method private static blacklist parseProcess(Ljava/util/Set;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 24
    .param p1, "separateProcesses"    # [Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .param p6, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 85
    .local p0, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;-><init>()V

    move-object v10, v0

    .line 86
    .local v10, "proc":Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProcess:[I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 88
    .local v11, "sa":Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1c

    .line 89
    :try_start_14
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v10, v0}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setDeniedPermissions(Ljava/util/Set;)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    .line 92
    :cond_1c
    const/4 v0, 0x1

    const/4 v12, 0x0

    invoke-virtual {v11, v0, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "processName":Ljava/lang/String;
    nop

    .line 95
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_134

    .line 94
    move-object/from16 v8, p1

    move/from16 v7, p5

    move-object/from16 v9, p6

    :try_start_31
    invoke-static/range {v4 .. v9}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 97
    .local v4, "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 98
    invoke-interface {v9, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_130

    .line 122
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    return-object v0

    .line 101
    :cond_43
    :try_start_43
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "packageName":Ljava/lang/String;
    nop

    .line 103
    invoke-virtual {v11, v12, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 102
    invoke-static {v5, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "className":Ljava/lang/String;
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    .line 106
    invoke-virtual {v10, v5, v7}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->putAppClassNameForPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v8, -0x1

    const/4 v13, 0x3

    invoke-virtual {v11, v13, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setGwpAsanMode(I)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    .line 108
    const/4 v14, 0x4

    invoke-virtual {v11, v14, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v10, v15}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setMemtagMode(I)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    .line 109
    const/4 v15, 0x5

    invoke-virtual {v11, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    if-eqz v16, :cond_81

    .line 110
    invoke-virtual {v11, v15, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 112
    .local v15, "v":Z
    nop

    .line 113
    if-eqz v15, :cond_7d

    move v8, v0

    goto :goto_7e

    :cond_7d
    move v8, v12

    .line 112
    :goto_7e
    invoke-virtual {v10, v8}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    .line 115
    .end local v15    # "v":Z
    :cond_81
    invoke-static {}, Lcom/android/internal/pm/pkg/component/flags/Flags;->enablePerProcessUseEmbeddedDexAttr()Z

    move-result v8

    if-eqz v8, :cond_91

    .line 116
    nop

    .line 117
    const/4 v8, 0x2

    invoke-virtual {v11, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 116
    invoke-virtual {v10, v8}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setUseEmbeddedDex(Z)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    goto :goto_94

    .line 119
    :cond_91
    invoke-virtual {v10, v12}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setUseEmbeddedDex(Z)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
    :try_end_94
    .catchall {:try_start_43 .. :try_end_94} :catchall_130

    .line 122
    .end local v4    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "processName":Ljava/lang/String;
    .end local v7    # "className":Ljava/lang/String;
    :goto_94
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    nop

    .line 126
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 127
    .local v4, "innerDepth":I
    :goto_9c
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    if-eq v5, v0, :cond_129

    if-ne v6, v13, :cond_b0

    .line 128
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v4, :cond_ac

    goto :goto_b0

    :cond_ac
    move-object/from16 v8, p2

    goto/16 :goto_12b

    .line 129
    :cond_b0
    :goto_b0
    if-eq v6, v13, :cond_125

    if-ne v6, v14, :cond_b5

    .line 130
    goto :goto_9c

    .line 135
    :cond_b5
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "tagName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_13e

    :cond_c0
    goto :goto_d5

    :sswitch_c1
    const-string v7, "deny-permission"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c0

    move v7, v12

    goto :goto_d6

    :sswitch_cb
    const-string v7, "allow-permission"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c0

    move v7, v0

    goto :goto_d6

    :goto_d5
    const/4 v7, -0x1

    :goto_d6
    packed-switch v7, :pswitch_data_148

    .line 154
    const-string v7, "<process>"

    move-object/from16 v8, p2

    invoke-static {v7, v8, v3, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .local v7, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    goto :goto_118

    .line 146
    .end local v7    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :pswitch_e2
    nop

    .line 147
    invoke-virtual {v10}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v7

    .line 146
    invoke-static {v7, v2, v3, v9}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseAllowPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 148
    .local v7, "allowResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    move-object v8, v7

    .line 149
    .local v8, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v15

    if-eqz v15, :cond_115

    .line 150
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    invoke-virtual {v10, v15}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setDeniedPermissions(Ljava/util/Set;)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    goto :goto_115

    .line 138
    .end local v7    # "allowResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v8    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :pswitch_fc
    nop

    .line 139
    invoke-virtual {v10}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v7

    .line 138
    invoke-static {v7, v2, v3, v9}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseDenyPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 140
    .local v7, "denyResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    move-object v8, v7

    .line 141
    .restart local v8    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v15

    if-eqz v15, :cond_115

    .line 142
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    invoke-virtual {v10, v15}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setDeniedPermissions(Ljava/util/Set;)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    .line 158
    .end local v7    # "denyResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_115
    :goto_115
    move-object v7, v8

    move-object/from16 v8, p2

    .end local v8    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .local v7, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :goto_118
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v15

    if-eqz v15, :cond_123

    .line 159
    invoke-interface {v9, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 161
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v7    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_123
    goto/16 :goto_9c

    .line 129
    :cond_125
    move-object/from16 v8, p2

    goto/16 :goto_9c

    .line 127
    :cond_129
    move-object/from16 v8, p2

    .line 163
    :goto_12b
    invoke-interface {v9, v10}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 122
    .end local v4    # "innerDepth":I
    .end local v6    # "type":I
    :catchall_130
    move-exception v0

    move-object/from16 v8, p2

    goto :goto_139

    :catchall_134
    move-exception v0

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    :goto_139
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    throw v0

    nop

    :sswitch_data_13e
    .sparse-switch
        -0x49dc292d -> :sswitch_cb
        0x62d33430 -> :sswitch_c1
    .end sparse-switch

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_fc
        :pswitch_e2
    .end packed-switch
.end method

.method public static blacklist parseProcesses([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 19
    .param p0, "separateProcesses"    # [Ljava/lang/String;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "deniedPerms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v7, v1

    .line 175
    .local v7, "processes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedProcess;>;"
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 176
    .local v8, "innerDepth":I
    :goto_b
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v9, v1

    .local v9, "type":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_f3

    const/4 v1, 0x3

    if-ne v9, v1, :cond_23

    .line 177
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v8, :cond_1d

    goto :goto_23

    :cond_1d
    move-object/from16 v4, p3

    move-object/from16 v6, p5

    goto/16 :goto_f7

    .line 178
    :cond_23
    :goto_23
    if-eq v9, v1, :cond_ed

    const/4 v1, 0x4

    if-ne v9, v1, :cond_2d

    .line 179
    move-object/from16 v4, p3

    move-object/from16 v6, p5

    goto :goto_b

    .line 184
    :cond_2d
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 185
    .local v10, "tagName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_fc

    :cond_38
    goto :goto_57

    :sswitch_39
    const-string v1, "deny-permission"

    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v2, 0x0

    goto :goto_58

    :sswitch_43
    const-string/jumbo v1, "process"

    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v2, 0x2

    goto :goto_58

    :sswitch_4e
    const-string v1, "allow-permission"

    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_58

    :goto_57
    const/4 v2, -0x1

    :goto_58
    packed-switch v2, :pswitch_data_10a

    .line 215
    move-object/from16 v4, p3

    move-object/from16 v6, p5

    const-string v1, "<processes>"

    invoke-static {v1, p1, v4, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    goto/16 :goto_e0

    .line 203
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :pswitch_67
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseProcess(Ljava/util/Set;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v11

    .line 205
    .local v11, "processResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedProcess;>;"
    move-object v1, v11

    .line 206
    .restart local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v11}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 207
    invoke-interface {v11}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    .line 208
    .local v2, "process":Lcom/android/internal/pm/pkg/component/ParsedProcess;
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_ac

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<process> specified existing name \'"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 210
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "\'"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-interface {v6, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 212
    .end local v2    # "process":Lcom/android/internal/pm/pkg/component/ParsedProcess;
    :cond_ac
    goto :goto_e0

    .line 195
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .end local v11    # "processResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedProcess;>;"
    :pswitch_ad
    move-object/from16 v4, p3

    move-object/from16 v6, p5

    invoke-static {v0, p2, v4, v6}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseAllowPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 197
    .local v1, "allowResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    move-object v2, v1

    .line 198
    .local v2, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_c5

    .line 199
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Set;

    move-object v1, v2

    goto :goto_e0

    .line 198
    :cond_c5
    move-object v1, v2

    goto :goto_e0

    .line 187
    .end local v1    # "allowResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :pswitch_c7
    move-object/from16 v4, p3

    move-object/from16 v6, p5

    invoke-static {v0, p2, v4, v6}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseDenyPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 189
    .local v1, "denyResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    move-object v2, v1

    .line 190
    .restart local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_df

    .line 191
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Set;

    move-object v1, v2

    goto :goto_e0

    .line 190
    :cond_df
    move-object v1, v2

    .line 219
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_e0
    :goto_e0
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 220
    invoke-interface {v6, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    .line 223
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_eb
    goto/16 :goto_b

    .line 178
    :cond_ed
    move-object/from16 v4, p3

    move-object/from16 v6, p5

    goto/16 :goto_b

    .line 176
    :cond_f3
    move-object/from16 v4, p3

    move-object/from16 v6, p5

    .line 225
    :goto_f7
    invoke-interface {v6, v7}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    :sswitch_data_fc
    .sparse-switch
        -0x49dc292d -> :sswitch_4e
        -0x1272e191 -> :sswitch_43
        0x62d33430 -> :sswitch_39
    .end sparse-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_ad
        :pswitch_67
    .end packed-switch
.end method
