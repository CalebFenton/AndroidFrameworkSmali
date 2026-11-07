.class public Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;
.super Ljava/lang/Object;
.source "ParsedMainComponentUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist parseIntentFilter(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 17
    .param p0, "mainComponent"    # Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "visibleToEphemeral"    # Z
    .param p5, "allowGlobs"    # Z
    .param p6, "allowAutoVerify"    # Z
    .param p7, "allowImplicitEphemeralVisibility"    # Z
    .param p8, "failOnNoActions"    # Z
    .param p9, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedMainComponent;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "ZZZZZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 128
    nop

    .line 129
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getName()Ljava/lang/String;

    move-result-object v0

    .line 128
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    move-object/from16 v6, p9

    invoke-static/range {v0 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseIntentInfo(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 131
    .local v0, "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 132
    invoke-interface {v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 135
    :cond_1b
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 136
    .local v1, "intent":Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 137
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v2}, Landroid/content/IntentFilter;->countActions()I

    move-result v3

    .line 138
    .local v3, "actionCount":I
    if-nez v3, :cond_6b

    if-eqz p8, :cond_6b

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No actions in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 140
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    const-string v5, "PackageParsing"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 146
    :cond_6b
    if-eqz p4, :cond_6f

    .line 147
    const/4 v4, 0x1

    .local v4, "intentVisibility":I
    goto :goto_7a

    .line 148
    .end local v4    # "intentVisibility":I
    :cond_6f
    if-eqz p7, :cond_79

    .line 149
    invoke-static {v1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->isImplicitlyExposedIntent(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 150
    const/4 v4, 0x2

    .restart local v4    # "intentVisibility":I
    goto :goto_7a

    .line 152
    .end local v4    # "intentVisibility":I
    :cond_79
    const/4 v4, 0x0

    .line 154
    .restart local v4    # "intentVisibility":I
    :goto_7a
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->setVisibilityToInstantApp(I)V

    .line 156
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-interface {v6, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5
.end method

.method static blacklist parseMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;
    .registers 39
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "separateProcesses"    # [Ljava/lang/String;
    .param p3, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p4, "array"    # Landroid/content/res/TypedArray;
    .param p5, "flags"    # I
    .param p6, "useRoundIcon"    # Z
    .param p7, "defaultSplitName"    # Ljava/lang/String;
    .param p8, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p9, "bannerAttr"    # I
    .param p10, "descriptionAttr"    # I
    .param p11, "directBootAwareAttr"    # I
    .param p12, "enabledAttr"    # I
    .param p13, "iconAttr"    # I
    .param p14, "labelAttr"    # I
    .param p15, "logoAttr"    # I
    .param p16, "nameAttr"    # I
    .param p17, "processAttr"    # I
    .param p18, "roundIconAttr"    # I
    .param p19, "splitNameAttr"    # I
    .param p20, "attributionTagsAttr"    # I
    .param p21, "intentMatchingFlagsAttr"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;",
            ">(TComponent;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            "IZ",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "IIIIIIIIIIIII)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TComponent;>;"
        }
    .end annotation

    .line 57
    .local p0, "component":Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;, "TComponent;"
    move/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p13

    move/from16 v9, p14

    move/from16 v10, p15

    move/from16 v11, p16

    move/from16 v13, p17

    move/from16 v12, p18

    invoke-static/range {v0 .. v12}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v16

    .line 60
    move-object v6, v0

    move-object v7, v3

    .local v16, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<TComponent;>;"
    invoke-interface/range {v16 .. v16}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 61
    return-object v16

    .line 64
    :cond_2d
    const/4 v0, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eq v14, v9, :cond_48

    .line 65
    invoke-virtual {v7, v14, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v6, v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setDirectBootAware(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 66
    invoke-virtual {v6}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->isDirectBootAware()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 67
    move-object/from16 v10, p3

    invoke-interface {v10, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPartiallyDirectBootAware(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_4a

    .line 66
    :cond_45
    move-object/from16 v10, p3

    goto :goto_4a

    .line 64
    :cond_48
    move-object/from16 v10, p3

    .line 71
    :goto_4a
    if-eq v15, v9, :cond_53

    .line 72
    invoke-virtual {v7, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setEnabled(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 75
    :cond_53
    if-eq v13, v9, :cond_92

    .line 77
    invoke-interface {v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_65

    .line 78
    const/16 v0, 0x400

    invoke-virtual {v7, v13, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .local v0, "processName":Ljava/lang/CharSequence;
    goto :goto_6a

    .line 84
    .end local v0    # "processName":Ljava/lang/CharSequence;
    :cond_65
    invoke-virtual {v7, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 88
    .local v2, "processName":Ljava/lang/CharSequence;
    :goto_6a
    nop

    .line 89
    invoke-interface {v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 88
    move-object/from16 v4, p2

    move/from16 v3, p5

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 91
    .local v0, "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 92
    invoke-interface {v5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 95
    :cond_88
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    goto :goto_94

    .line 75
    .end local v0    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .end local v2    # "processName":Ljava/lang/CharSequence;
    :cond_92
    move-object/from16 v5, p8

    .line 98
    :goto_94
    move/from16 v0, p19

    if-eq v0, v9, :cond_9f

    .line 99
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setSplitName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 102
    :cond_9f
    if-eqz p7, :cond_ad

    invoke-virtual {v6}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->getSplitName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_ad

    .line 103
    move-object/from16 v1, p7

    invoke-virtual {v6, v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setSplitName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    goto :goto_af

    .line 102
    :cond_ad
    move-object/from16 v1, p7

    .line 106
    :goto_af
    move/from16 v2, p20

    if-eq v2, v9, :cond_c2

    .line 107
    invoke-virtual {v7, v2, v8}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "attributionTags":Ljava/lang/String;
    if-eqz v3, :cond_c2

    .line 109
    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setAttributionTags([Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 113
    .end local v3    # "attributionTags":Ljava/lang/String;
    :cond_c2
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->enableIntentMatchingFlags()Z

    move-result v3

    if-eqz v3, :cond_db

    .line 114
    nop

    .line 115
    invoke-interface {v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getIntentMatchingFlags()I

    move-result v3

    move/from16 v4, p21

    invoke-virtual {v7, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 114
    invoke-static {v3, v8}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->resolveIntentMatchingFlags(II)I

    move-result v3

    .line 116
    .local v3, "resolvedFlags":I
    invoke-virtual {v6, v3}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setIntentMatchingFlags(I)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    goto :goto_dd

    .line 113
    .end local v3    # "resolvedFlags":I
    :cond_db
    move/from16 v4, p21

    .line 119
    :goto_dd
    invoke-interface {v5, v6}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist resolveIntentMatchingFlags(II)I
    .registers 2
    .param p0, "applicationFlags"    # I
    .param p1, "componentFlags"    # I

    .line 170
    if-nez p1, :cond_3

    .line 171
    return p0

    .line 173
    :cond_3
    return p1
.end method
