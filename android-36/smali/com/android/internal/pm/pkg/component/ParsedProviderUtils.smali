.class public Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;
.super Ljava/lang/Object;
.source "ParsedProviderUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseGrantUriPermission(Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 15
    .param p0, "provider"    # Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    .local v0, "sa":Landroid/content/res/TypedArray;
    :try_start_6
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 235
    .local v2, "pa":Landroid/os/PatternMatcher;
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "str":Ljava/lang/String;
    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v5, :cond_1c

    .line 238
    new-instance v3, Landroid/os/PatternMatcher;

    invoke-direct {v3, v5, v6}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    goto :goto_54

    .line 240
    :cond_1c
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 242
    if-eqz v5, :cond_2b

    .line 243
    new-instance v3, Landroid/os/PatternMatcher;

    invoke-direct {v3, v5, v8}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    goto :goto_54

    .line 245
    :cond_2b
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 247
    if-eqz v5, :cond_39

    .line 248
    new-instance v3, Landroid/os/PatternMatcher;

    invoke-direct {v3, v5, v7}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    goto :goto_54

    .line 250
    :cond_39
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 252
    if-eqz v5, :cond_47

    .line 253
    new-instance v4, Landroid/os/PatternMatcher;

    invoke-direct {v4, v5, v3}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v2, v4

    goto :goto_54

    .line 255
    :cond_47
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 257
    if-eqz v5, :cond_54

    .line 258
    new-instance v3, Landroid/os/PatternMatcher;

    invoke-direct {v3, v5, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    .line 265
    :cond_54
    :goto_54
    if-eqz v2, :cond_5d

    .line 266
    invoke-virtual {p0, v2}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->addUriPermissionPattern(Landroid/os/PatternMatcher;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    .line 267
    invoke-virtual {p0, v7}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setGrantUriPermissions(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    goto :goto_91

    .line 273
    :cond_5d
    const-string v3, "PackageParsing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <path-permission>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " at "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 274
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 273
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_91
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_95
    .catchall {:try_start_6 .. :try_end_95} :catchall_99

    .line 279
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    return-object v3

    .line 279
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "pa":Landroid/os/PatternMatcher;
    .end local v5    # "str":Ljava/lang/String;
    :catchall_99
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    throw v1
.end method

.method private static blacklist parsePathPermission(Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
    .param p0, "provider"    # Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .line 286
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 289
    .local v5, "sa":Landroid/content/res/TypedArray;
    :try_start_e
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "name":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, "permission":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 295
    .local v9, "readPermission":Ljava/lang/String;
    if-nez v9, :cond_1f

    .line 296
    move-object v9, v7

    .line 298
    :cond_1f
    const/4 v10, 0x2

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 300
    .local v11, "writePermission":Ljava/lang/String;
    if-nez v11, :cond_27

    .line 301
    move-object v11, v7

    .line 304
    :cond_27
    const/4 v12, 0x0

    .line 305
    .local v12, "havePerm":Z
    if-eqz v9, :cond_30

    .line 306
    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 307
    const/4 v12, 0x1

    .line 309
    :cond_30
    if-eqz v11, :cond_38

    .line 310
    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_10c

    move-object v11, v13

    .line 311
    const/4 v12, 0x1

    .line 314
    :cond_38
    const-string v13, " "

    const-string v14, " at "

    const-string v15, "PackageParsing"

    if-nez v12, :cond_76

    .line 319
    :try_start_40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No readPermission or writePermission for <path-permission>: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 320
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 321
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 319
    invoke-static {v15, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-interface {v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_72
    .catchall {:try_start_40 .. :try_end_72} :catchall_10c

    .line 376
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 322
    return-object v6

    .line 326
    :cond_76
    const/16 v16, 0x0

    .line 327
    .local v16, "pa":Landroid/content/pm/PathPermission;
    const/4 v8, 0x7

    :try_start_79
    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    .line 328
    .local v8, "path":Ljava/lang/String;
    const/4 v10, 0x3

    if-eqz v8, :cond_88

    .line 329
    new-instance v6, Landroid/content/pm/PathPermission;

    invoke-direct {v6, v8, v10, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    goto :goto_d0

    .line 332
    :cond_88
    const/4 v10, 0x5

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 333
    if-eqz v8, :cond_99

    .line 334
    new-instance v6, Landroid/content/pm/PathPermission;

    const/4 v10, 0x2

    invoke-direct {v6, v8, v10, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    goto :goto_d0

    .line 337
    :cond_99
    const/4 v10, 0x4

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v8, v17

    .line 339
    if-eqz v8, :cond_ab

    .line 340
    new-instance v6, Landroid/content/pm/PathPermission;

    const/4 v10, 0x1

    invoke-direct {v6, v8, v10, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    goto :goto_d0

    .line 343
    :cond_ab
    const/4 v10, 0x6

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 345
    if-eqz v8, :cond_bc

    .line 346
    new-instance v6, Landroid/content/pm/PathPermission;

    const/4 v10, 0x4

    invoke-direct {v6, v8, v10, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    goto :goto_d0

    .line 349
    :cond_bc
    const/4 v10, 0x3

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 351
    if-eqz v8, :cond_ce

    .line 352
    new-instance v10, Landroid/content/pm/PathPermission;

    invoke-direct {v10, v8, v6, v9, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v10

    move-object/from16 v6, v16

    goto :goto_d0

    .line 351
    :cond_ce
    move-object/from16 v6, v16

    .line 360
    .end local v16    # "pa":Landroid/content/pm/PathPermission;
    .local v6, "pa":Landroid/content/pm/PathPermission;
    :goto_d0
    if-eqz v6, :cond_d6

    .line 361
    invoke-virtual {v1, v6}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->addPathPermission(Landroid/content/pm/PathPermission;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    goto :goto_104

    .line 368
    :cond_d6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 369
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 371
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_104
    invoke-interface {v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_108
    .catchall {:try_start_79 .. :try_end_108} :catchall_10c

    .line 376
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 374
    return-object v3

    .line 376
    .end local v0    # "name":Ljava/lang/String;
    .end local v6    # "pa":Landroid/content/pm/PathPermission;
    .end local v7    # "permission":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "readPermission":Ljava/lang/String;
    .end local v11    # "writePermission":Ljava/lang/String;
    .end local v12    # "havePerm":Z
    :catchall_10c
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 377
    throw v0
.end method

.method public static blacklist parseProvider([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 33
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
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 61
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v1

    .line 62
    .local v1, "targetSdkVersion":I
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "packageName":Ljava/lang/String;
    new-instance v6, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    invoke-direct {v6}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;-><init>()V

    .line 64
    .local v6, "provider":Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "tag":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 68
    .local v7, "sa":Landroid/content/res/TypedArray;
    nop

    .line 69
    const/16 v11, 0x11

    const/16 v12, 0xe

    const/16 v13, 0x12

    const/4 v14, 0x6

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0xf

    const/16 v18, 0x2

    const/16 v19, 0x8

    const/16 v20, 0x13

    const/16 v21, 0x15

    const/16 v22, 0x17

    const/16 v23, 0x19

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v24, v2

    move-object v2, v6

    move-object v6, v7

    move/from16 v7, p4

    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .local v2, "provider":Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .local v6, "sa":Landroid/content/res/TypedArray;
    .local v24, "packageName":Ljava/lang/String;
    :try_start_44
    invoke-static/range {v2 .. v23}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_169

    move-object v8, v6

    .line 84
    .end local v6    # "sa":Landroid/content/res/TypedArray;
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;>;"
    .local v8, "sa":Landroid/content/res/TypedArray;
    :try_start_49
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_164

    if-eqz v4, :cond_5d

    .line 85
    :try_start_4f
    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_57

    .line 143
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    return-object v4

    .line 143
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;>;"
    :catchall_57
    move-exception v0

    :goto_58
    move v10, v1

    move-object/from16 v11, v24

    goto/16 :goto_16e

    .line 88
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;>;"
    :cond_5d
    const/16 v4, 0xa

    const/4 v5, 0x0

    :try_start_60
    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    .line 93
    .local v9, "authority":Ljava/lang/String;
    const/16 v4, 0xb

    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setSyncable(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    move-result-object v4

    const/16 v6, 0x11

    const/4 v7, 0x1

    if-ge v1, v6, :cond_76

    move v6, v7

    goto :goto_77

    :cond_76
    move v6, v5

    .line 95
    :goto_77
    const/4 v11, 0x7

    invoke-virtual {v8, v11, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 98
    const/4 v4, 0x3

    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "permission":Ljava/lang/String;
    const/4 v6, 0x4

    invoke-virtual {v8, v6, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6
    :try_end_89
    .catchall {:try_start_60 .. :try_end_89} :catchall_164

    .line 102
    .local v6, "readPermission":Ljava/lang/String;
    if-nez v6, :cond_8c

    .line 103
    move-object v6, v4

    .line 105
    :cond_8c
    if-nez v6, :cond_96

    .line 106
    :try_start_8e
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setReadPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    :try_end_95
    .catchall {:try_start_8e .. :try_end_95} :catchall_57

    goto :goto_99

    .line 108
    :cond_96
    :try_start_96
    invoke-virtual {v2, v6}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setReadPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    .line 110
    :goto_99
    const/4 v11, 0x5

    invoke-virtual {v8, v11, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11
    :try_end_9e
    .catchall {:try_start_96 .. :try_end_9e} :catchall_164

    .line 112
    .local v11, "writePermission":Ljava/lang/String;
    if-nez v11, :cond_a1

    .line 113
    move-object v11, v4

    .line 115
    :cond_a1
    if-nez v11, :cond_ab

    .line 116
    :try_start_a3
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setWritePermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_57

    goto :goto_ae

    .line 118
    :cond_ab
    :try_start_ab
    invoke-virtual {v2, v11}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setWritePermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    .line 121
    :goto_ae
    nop

    .line 122
    const/16 v12, 0xd

    invoke-virtual {v8, v12, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 121
    invoke-virtual {v2, v12}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setGrantUriPermissions(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    move-result-object v12

    .line 124
    const/16 v13, 0x16

    invoke-virtual {v8, v13, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 123
    invoke-virtual {v12, v13}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setForceUriPermissions(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    move-result-object v12

    .line 127
    const/16 v13, 0x9

    invoke-virtual {v8, v13, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 126
    invoke-virtual {v12, v13}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setMultiProcess(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    move-result-object v12

    .line 128
    const/16 v13, 0xc

    invoke-virtual {v8, v13, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setInitOrder(I)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    move-result-object v12

    .line 129
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getFlags()I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    const/16 v15, 0x10

    invoke-static {v14, v15, v8}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v14

    or-int/2addr v13, v14

    invoke-virtual {v12, v13}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 132
    invoke-static {}, Landroid/multiuser/Flags;->enableSystemUserOnlyForServicesAndProviders()Z

    move-result v12
    :try_end_eb
    .catchall {:try_start_ab .. :try_end_eb} :catchall_164

    if-eqz v12, :cond_fd

    .line 133
    :try_start_ed
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getFlags()I

    move-result v12

    const/high16 v13, 0x20000000

    const/16 v14, 0x18

    invoke-static {v13, v14, v8}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v13

    or-int/2addr v12, v13

    invoke-virtual {v2, v12}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    :try_end_fd
    .catchall {:try_start_ed .. :try_end_fd} :catchall_57

    .line 136
    :cond_fd
    const/16 v12, 0x14

    :try_start_ff
    invoke-virtual {v8, v12, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5
    :try_end_103
    .catchall {:try_start_ff .. :try_end_103} :catchall_164

    .line 138
    .local v5, "visibleToEphemeral":Z
    if-eqz v5, :cond_11a

    .line 139
    :try_start_105
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getFlags()I

    move-result v12

    const/high16 v13, 0x100000

    or-int/2addr v12, v13

    invoke-virtual {v2, v12}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    :try_end_10f
    .catchall {:try_start_105 .. :try_end_10f} :catchall_115

    .line 140
    move-object/from16 v12, p1

    :try_start_111
    invoke-interface {v12, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_114
    .catchall {:try_start_111 .. :try_end_114} :catchall_57

    goto :goto_11c

    .line 143
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;>;"
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "visibleToEphemeral":Z
    .end local v6    # "readPermission":Ljava/lang/String;
    .end local v9    # "authority":Ljava/lang/String;
    .end local v11    # "writePermission":Ljava/lang/String;
    :catchall_115
    move-exception v0

    move-object/from16 v12, p1

    goto/16 :goto_58

    .line 138
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;>;"
    .restart local v4    # "permission":Ljava/lang/String;
    .restart local v5    # "visibleToEphemeral":Z
    .restart local v6    # "readPermission":Ljava/lang/String;
    .restart local v9    # "authority":Ljava/lang/String;
    .restart local v11    # "writePermission":Ljava/lang/String;
    :cond_11a
    move-object/from16 v12, p1

    .line 143
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;>;"
    .end local v4    # "permission":Ljava/lang/String;
    .end local v6    # "readPermission":Ljava/lang/String;
    .end local v11    # "writePermission":Ljava/lang/String;
    :goto_11c
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    nop

    .line 146
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isSaveStateDisallowed()Z

    move-result v0

    if-eqz v0, :cond_139

    .line 148
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getProcessName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, v24

    .end local v24    # "packageName":Ljava/lang/String;
    .local v11, "packageName":Ljava/lang/String;
    invoke-static {v0, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 149
    const-string v0, "Heavy-weight applications can not have providers in main process"

    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 146
    .end local v11    # "packageName":Ljava/lang/String;
    .restart local v24    # "packageName":Ljava/lang/String;
    :cond_139
    move-object/from16 v11, v24

    .line 154
    .end local v24    # "packageName":Ljava/lang/String;
    .restart local v11    # "packageName":Ljava/lang/String;
    :cond_13b
    if-nez v9, :cond_144

    .line 155
    const-string v0, "<provider> does not include authorities attribute"

    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 157
    :cond_144
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_151

    .line 158
    const-string v0, "<provider> has empty authorities attribute"

    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 160
    :cond_151
    invoke-virtual {v2, v9}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setAuthority(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    .line 162
    move-object/from16 v4, p3

    move-object v6, v2

    move-object v2, v3

    move-object v7, v10

    move-object/from16 v3, p2

    move v10, v1

    move-object v1, v12

    .end local v1    # "targetSdkVersion":I
    .end local v3    # "tag":Ljava/lang/String;
    .local v2, "tag":Ljava/lang/String;
    .local v6, "provider":Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .local v10, "targetSdkVersion":I
    invoke-static/range {v1 .. v7}, Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;->parseProviderTags(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLcom/android/internal/pm/pkg/component/ParsedProviderImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v3, v2

    move-object v2, v6

    .end local v6    # "provider":Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .local v2, "provider":Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .restart local v3    # "tag":Ljava/lang/String;
    return-object v0

    .line 143
    .end local v5    # "visibleToEphemeral":Z
    .end local v9    # "authority":Ljava/lang/String;
    .end local v10    # "targetSdkVersion":I
    .end local v11    # "packageName":Ljava/lang/String;
    .restart local v1    # "targetSdkVersion":I
    .restart local v24    # "packageName":Ljava/lang/String;
    :catchall_164
    move-exception v0

    move v10, v1

    move-object/from16 v11, v24

    .end local v1    # "targetSdkVersion":I
    .end local v24    # "packageName":Ljava/lang/String;
    .restart local v10    # "targetSdkVersion":I
    .restart local v11    # "packageName":Ljava/lang/String;
    goto :goto_16e

    .end local v8    # "sa":Landroid/content/res/TypedArray;
    .end local v10    # "targetSdkVersion":I
    .end local v11    # "packageName":Ljava/lang/String;
    .restart local v1    # "targetSdkVersion":I
    .local v6, "sa":Landroid/content/res/TypedArray;
    .restart local v24    # "packageName":Ljava/lang/String;
    :catchall_169
    move-exception v0

    move v10, v1

    move-object v8, v6

    move-object/from16 v11, v24

    .end local v1    # "targetSdkVersion":I
    .end local v6    # "sa":Landroid/content/res/TypedArray;
    .end local v24    # "packageName":Ljava/lang/String;
    .restart local v8    # "sa":Landroid/content/res/TypedArray;
    .restart local v10    # "targetSdkVersion":I
    .restart local v11    # "packageName":Ljava/lang/String;
    :goto_16e
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    throw v0
.end method

.method private static blacklist parseProviderTags(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLcom/android/internal/pm/pkg/component/ParsedProviderImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 20
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "visibleToEphemeral"    # Z
    .param p5, "provider"    # Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .param p6, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    move-object/from16 v3, p3

    move-object/from16 v0, p5

    move-object/from16 v9, p6

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 172
    .local v10, "depth":I
    :goto_a
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v11, v1

    .local v11, "type":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_c8

    const/4 v1, 0x3

    if-ne v11, v1, :cond_1b

    .line 174
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v10, :cond_c8

    .line 175
    :cond_1b
    const/4 v4, 0x2

    if-eq v11, v4, :cond_1f

    .line 176
    goto :goto_a

    .line 178
    :cond_1f
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v5

    invoke-virtual {v5, p0, v3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 179
    goto :goto_a

    .line 182
    :cond_2a
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 184
    .local v12, "name":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_ce

    :cond_35
    goto :goto_69

    :sswitch_36
    const-string/jumbo v1, "path-permission"

    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v2, 0x4

    goto :goto_6a

    :sswitch_41
    const-string/jumbo v1, "property"

    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v2, v4

    goto :goto_6a

    :sswitch_4c
    const-string v1, "intent-filter"

    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v2, 0x0

    goto :goto_6a

    :sswitch_56
    const-string v1, "meta-data"

    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_6a

    :sswitch_5f
    const-string v2, "grant-uri-permission"

    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    move v2, v1

    goto :goto_6a

    :goto_69
    const/4 v2, -0x1

    :goto_6a
    packed-switch v2, :pswitch_data_e4

    .line 214
    invoke-static {p1, p0, v3, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .local v2, "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_bb

    .line 210
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_72
    invoke-static {v0, p0, p2, v3, v9}, Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;->parsePathPermission(Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 211
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object v2, v1

    goto :goto_bb

    .line 206
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_78
    invoke-static {v0, p0, p2, v3, v9}, Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;->parseGrantUriPermission(Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 207
    .restart local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object v2, v1

    goto :goto_bb

    .line 203
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_7e
    invoke-static {v0, p0, p2, v3, v9}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addProperty(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 204
    .restart local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object v2, v1

    goto :goto_bb

    .line 200
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_84
    invoke-static {v0, p0, p2, v3, v9}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addMetaData(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 201
    .restart local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object v2, v1

    goto :goto_bb

    .line 186
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_8a
    nop

    .line 187
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p2

    move/from16 v4, p4

    invoke-static/range {v0 .. v9}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseIntentFilter(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 191
    .local v5, "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    move-object v2, v5

    .line 192
    .restart local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 193
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 194
    .local v4, "intent":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    invoke-virtual {v4}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    .line 195
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v6}, Landroid/content/IntentFilter;->getOrder()I

    move-result v7

    invoke-virtual {v0}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getOrder()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setOrder(I)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 196
    invoke-virtual {v0, v4}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->addIntent(Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;)V

    .line 197
    .end local v4    # "intent":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .end local v6    # "intentFilter":Landroid/content/IntentFilter;
    nop

    .line 218
    .end local v5    # "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    :cond_bb
    :goto_bb
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 219
    invoke-interface {v9, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 221
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v12    # "name":Ljava/lang/String;
    :cond_c6
    goto/16 :goto_a

    .line 223
    :cond_c8
    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_ce
    .sparse-switch
        -0x6c28de5f -> :sswitch_5f
        -0x4284098e -> :sswitch_56
        -0x3d616837 -> :sswitch_4c
        -0x3b32222b -> :sswitch_41
        0x25eb3477 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_84
        :pswitch_7e
        :pswitch_78
        :pswitch_72
    .end packed-switch
.end method
