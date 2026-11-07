.class public Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;
.super Ljava/lang/Object;
.source "ParsedPermissionUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateFootprint(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I
    .registers 4
    .param p0, "permission"    # Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 284
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 285
    .local v0, "size":I
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 286
    .local v1, "nonLocalizedLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_13

    .line 287
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 289
    :cond_13
    return v0
.end method

.method public static blacklist declareDuplicatePermission(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Z
    .registers 10
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 317
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 318
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedPermission;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 319
    .local v1, "size":I
    if-lez v1, :cond_38

    .line 320
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 321
    .local v2, "checkDuplicatePerm":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedPermission;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v1, :cond_38

    .line 322
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 323
    .local v4, "parsedPermission":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    .line 324
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 325
    .local v6, "perm":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    invoke-static {v4, v6}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->isMalformedDuplicate(Lcom/android/internal/pm/pkg/component/ParsedPermission;Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 327
    const v7, 0x534e4554

    const-string v8, "213323615"

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 328
    const/4 v7, 0x1

    return v7

    .line 330
    :cond_32
    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .end local v4    # "parsedPermission":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "perm":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 333
    .end local v2    # "checkDuplicatePerm":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedPermission;>;"
    .end local v3    # "i":I
    :cond_38
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist getProtection(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I
    .registers 2
    .param p0, "permission"    # Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 276
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static blacklist getProtectionFlags(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I
    .registers 2
    .param p0, "permission"    # Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 280
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v0

    and-int/lit8 v0, v0, -0x10

    return v0
.end method

.method public static blacklist isAppOp(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z
    .registers 2
    .param p0, "permission"    # Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 271
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static blacklist isMalformedDuplicate(Lcom/android/internal/pm/pkg/component/ParsedPermission;Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z
    .registers 6
    .param p0, "p1"    # Lcom/android/internal/pm/pkg/component/ParsedPermission;
    .param p1, "p2"    # Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 299
    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    if-eqz p1, :cond_2e

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_2e

    .line 303
    :cond_12
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v1

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1e

    .line 304
    return v3

    .line 306
    :cond_1e
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 307
    return v3

    .line 310
    :cond_2d
    return v0

    .line 300
    :cond_2e
    :goto_2e
    return v0
.end method

.method public static blacklist isRuntime(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z
    .registers 3
    .param p0, "permission"    # Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 267
    invoke-static {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static blacklist parsePermission(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "useRoundIcon"    # Z
    .param p4, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 56
    move-object/from16 v2, p1

    invoke-interface/range {p0 .. p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "packageName":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    invoke-direct {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;-><init>()V

    .line 58
    .local v3, "permission":Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "tag":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v5, p2

    invoke-virtual {v2, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 62
    .local v6, "sa":Landroid/content/res/TypedArray;
    const/4 v14, 0x2

    const/16 v15, 0xa

    const/16 v9, 0x9

    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x7

    move-object/from16 v5, p0

    move/from16 v7, p3

    move-object/from16 v8, p4

    :try_start_3f
    invoke-static/range {v3 .. v15}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_20e

    move-object v5, v6

    move-object v6, v8

    .line 71
    .end local v6    # "sa":Landroid/content/res/TypedArray;
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;>;"
    .local v5, "sa":Landroid/content/res/TypedArray;
    :try_start_45
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_208

    if-eqz v7, :cond_5c

    .line 72
    :try_start_4b
    invoke-interface {v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_55

    .line 153
    if-eqz v5, :cond_54

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->close()V

    .line 72
    :cond_54
    return-object v7

    .line 61
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;>;"
    :catchall_55
    move-exception v0

    move/from16 v9, p5

    :goto_58
    move-object v8, v1

    move-object v1, v0

    goto/16 :goto_215

    .line 75
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;>;"
    :cond_5c
    const/4 v7, 0x6

    const/4 v8, -0x1

    :try_start_5e
    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_208

    .line 76
    .local v7, "maxSdkVersion":I
    if-eq v7, v8, :cond_73

    :try_start_64
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v8, :cond_73

    .line 77
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_55

    .line 153
    if-eqz v5, :cond_72

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->close()V

    .line 77
    :cond_72
    return-object v8

    .line 80
    :cond_73
    const/16 v8, 0xc

    :try_start_75
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_208

    const-string v10, "PackageParsing"

    const-string v11, "android"

    if-eqz v9, :cond_e8

    .line 82
    move/from16 v9, p5

    and-int/lit16 v13, v9, 0x200

    const/4 v14, 0x1

    if-eqz v13, :cond_88

    move v13, v14

    goto :goto_89

    :cond_88
    const/4 v13, 0x0

    .line 83
    .local v13, "isApkInApex":Z
    :goto_89
    nop

    .line 84
    :try_start_8a
    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9b

    .line 85
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->replaceBodySensorPermissionEnabled()Z

    move-result v15

    if-eqz v15, :cond_99

    if-eqz v13, :cond_99

    goto :goto_9b

    :cond_99
    const/4 v14, 0x0

    goto :goto_9c

    :cond_9b
    :goto_9b
    nop

    .line 86
    .local v14, "canUseBackgroundPermissionAttr":Z
    :goto_9c
    if-eqz v14, :cond_a6

    .line 87
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setBackgroundPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    goto :goto_ea

    .line 90
    :cond_a6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\'android\'"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 91
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->replaceBodySensorPermissionEnabled()Z

    move-result v15

    if-eqz v15, :cond_ba

    const-string v15, " and APK_IN_APEX"

    goto :goto_bc

    :cond_ba
    const-string v15, ""

    :goto_bc
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 92
    .local v8, "allowedPackages":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v12, " defines a background permission. Only the "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " packages can do that."

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catchall {:try_start_8a .. :try_end_e4} :catchall_e5

    goto :goto_ea

    .line 61
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;>;"
    .end local v7    # "maxSdkVersion":I
    .end local v8    # "allowedPackages":Ljava/lang/String;
    .end local v13    # "isApkInApex":Z
    .end local v14    # "canUseBackgroundPermissionAttr":Z
    :catchall_e5
    move-exception v0

    goto/16 :goto_58

    .line 80
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;>;"
    .restart local v7    # "maxSdkVersion":I
    :cond_e8
    move/from16 v9, p5

    .line 99
    :goto_ea
    const/4 v8, 0x4

    :try_start_eb
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setGroup(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v12

    .line 101
    const/16 v13, 0xd

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setRequestRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v12

    .line 103
    const/4 v13, 0x3

    invoke-virtual {v5, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v12

    .line 106
    const/16 v13, 0x8

    invoke-virtual {v5, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v12, v15}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 109
    const/16 v12, 0xb

    invoke-virtual {v5, v12, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14
    :try_end_116
    .catchall {:try_start_eb .. :try_end_116} :catchall_206

    .line 111
    .local v14, "knownCertsResource":I
    if-eqz v14, :cond_15d

    .line 115
    :try_start_118
    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v12

    .line 116
    .local v12, "resourceType":Ljava/lang/String;
    const-string v15, "array"

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12e

    .line 117
    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 118
    .local v15, "knownCerts":[Ljava/lang/String;
    if-eqz v15, :cond_12d

    .line 119
    invoke-virtual {v3, v15}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setKnownCerts([Ljava/lang/String;)V

    .line 121
    .end local v15    # "knownCerts":[Ljava/lang/String;
    :cond_12d
    goto :goto_137

    .line 122
    :cond_12e
    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 123
    .local v15, "knownCert":Ljava/lang/String;
    if-eqz v15, :cond_137

    .line 124
    invoke-virtual {v3, v15}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setKnownCert(Ljava/lang/String;)V

    .line 127
    .end local v15    # "knownCert":Ljava/lang/String;
    :cond_137
    :goto_137
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getKnownCerts()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_15a

    .line 128
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v13

    const-string v13, " defines a knownSigner permission but the provided knownCerts resource is null"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_159
    .catchall {:try_start_118 .. :try_end_159} :catchall_e5

    goto :goto_15c

    .line 127
    :cond_15a
    move/from16 v16, v13

    .line 131
    .end local v12    # "resourceType":Ljava/lang/String;
    :goto_15c
    goto :goto_168

    .line 134
    :cond_15d
    move/from16 v16, v13

    :try_start_15f
    invoke-virtual {v5, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_163
    .catchall {:try_start_15f .. :try_end_163} :catchall_206

    .line 136
    .local v10, "knownCert":Ljava/lang/String;
    if-eqz v10, :cond_168

    .line 137
    :try_start_165
    invoke-virtual {v3, v10}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setKnownCert(Ljava/lang/String;)V
    :try_end_168
    .catchall {:try_start_165 .. :try_end_168} :catchall_e5

    .line 142
    .end local v10    # "knownCert":Ljava/lang/String;
    :cond_168
    :goto_168
    :try_start_168
    invoke-static {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->isRuntime(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z

    move-result v10
    :try_end_16c
    .catchall {:try_start_168 .. :try_end_16c} :catchall_206

    if-eqz v10, :cond_1a6

    :try_start_16e
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_179

    goto :goto_1a6

    .line 147
    :cond_179
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getFlags()I

    move-result v10

    and-int/2addr v10, v8

    if-eqz v10, :cond_1b8

    .line 148
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x8

    if-nez v10, :cond_189

    goto :goto_1b8

    .line 149
    :cond_189
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission cannot be both soft and hard restricted: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 150
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "permission":Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .end local p0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p1    # "res":Landroid/content/res/Resources;
    .end local p2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p3    # "useRoundIcon":Z
    .end local p4    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p5    # "flags":I
    throw v8
    :try_end_1a6
    .catchall {:try_start_16e .. :try_end_1a6} :catchall_e5

    .line 143
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v3    # "permission":Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "sa":Landroid/content/res/TypedArray;
    .restart local p0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p1    # "res":Landroid/content/res/Resources;
    .restart local p2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p3    # "useRoundIcon":Z
    .restart local p4    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p5    # "flags":I
    :cond_1a6
    :goto_1a6
    :try_start_1a6
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getFlags()I

    move-result v10

    and-int/lit8 v10, v10, -0x5

    invoke-virtual {v3, v10}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 144
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getFlags()I

    move-result v10

    and-int/lit8 v10, v10, -0x9

    invoke-virtual {v3, v10}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    :try_end_1b8
    .catchall {:try_start_1a6 .. :try_end_1b8} :catchall_206

    .line 153
    .end local v7    # "maxSdkVersion":I
    .end local v14    # "knownCertsResource":I
    :cond_1b8
    :goto_1b8
    if-eqz v5, :cond_1bd

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->close()V

    .line 155
    .end local v5    # "sa":Landroid/content/res/TypedArray;
    :cond_1bd
    nop

    .line 156
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getProtectionLevel()I

    move-result v5

    invoke-static {v5}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v5

    .line 155
    invoke-virtual {v3, v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    .line 158
    invoke-static {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->getProtectionFlags(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I

    move-result v5

    and-int/lit16 v7, v5, -0x3041

    .line 161
    .local v7, "otherProtectionFlags":I
    if-eqz v7, :cond_1e5

    .line 162
    invoke-static {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I

    move-result v5

    const/4 v10, 0x2

    if-eq v5, v10, :cond_1e5

    .line 163
    invoke-static {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I

    move-result v5

    if-eq v5, v8, :cond_1e5

    .line 164
    const-string v5, "<permission> protectionLevel specifies a non-instant, non-appop, non-runtimeOnly flag but is not based on signature or internal type"

    invoke-interface {v6, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    .line 168
    :cond_1e5
    move-object v8, v1

    move-object v5, v3

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "permission":Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .local v5, "permission":Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .local v8, "packageName":Ljava/lang/String;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 169
    move-object v3, v5

    .end local v5    # "permission":Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .restart local v3    # "permission":Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1fb

    .line 170
    invoke-interface {v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 173
    :cond_1fb
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v6, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 61
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;>;"
    .end local v7    # "otherProtectionFlags":I
    .end local v8    # "packageName":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    .local v5, "sa":Landroid/content/res/TypedArray;
    :catchall_206
    move-exception v0

    goto :goto_20b

    :catchall_208
    move-exception v0

    move/from16 v9, p5

    :goto_20b
    move-object v8, v1

    move-object v1, v0

    .end local v1    # "packageName":Ljava/lang/String;
    .restart local v8    # "packageName":Ljava/lang/String;
    goto :goto_215

    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .end local v8    # "packageName":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v6    # "sa":Landroid/content/res/TypedArray;
    :catchall_20e
    move-exception v0

    move/from16 v9, p5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v1

    move-object v1, v0

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v6    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "sa":Landroid/content/res/TypedArray;
    .restart local v8    # "packageName":Ljava/lang/String;
    :goto_215
    if-eqz v5, :cond_21f

    :try_start_217
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->close()V
    :try_end_21a
    .catchall {:try_start_217 .. :try_end_21a} :catchall_21b

    goto :goto_21f

    :catchall_21b
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_21f
    :goto_21f
    throw v1
.end method

.method public static blacklist parsePermissionGroup(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 21
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "useRoundIcon"    # Z
    .param p4, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 227
    new-instance v1, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-direct {v1}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;-><init>()V

    .line 228
    .local v1, "permissionGroup":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "tag":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-virtual {v14, v15, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 232
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v12, 0x2

    const/16 v13, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x5

    move-object/from16 v3, p0

    move/from16 v5, p3

    move-object/from16 v6, p4

    :try_start_3a
    invoke-static/range {v1 .. v13}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_b0

    move-object v7, v4

    .line 241
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;>;"
    .local v7, "sa":Landroid/content/res/TypedArray;
    :try_start_3f
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 242
    invoke-interface {v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_ae

    .line 254
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    return-object v3

    .line 246
    :cond_4d
    const/16 v3, 0xc

    const/4 v4, 0x0

    :try_start_50
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setRequestDetailRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v3

    .line 247
    const/16 v5, 0x9

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setBackgroundRequestRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v3

    .line 248
    const/16 v5, 0xa

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setBackgroundRequestDetailRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v3

    .line 249
    const/16 v5, 0xb

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setRequestRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v3

    .line 250
    const/4 v5, 0x3

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setPriority(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v3

    .line 251
    const/4 v5, 0x6

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    :try_end_87
    .catchall {:try_start_50 .. :try_end_87} :catchall_ae

    .line 254
    nop

    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;>;"
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 255
    nop

    .line 257
    move-object v5, v1

    move-object v4, v2

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v1, p0

    .end local v1    # "permissionGroup":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;
    .end local v2    # "tag":Ljava/lang/String;
    .local v4, "tag":Ljava/lang/String;
    .local v5, "permissionGroup":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 259
    move-object v2, v4

    move-object v1, v5

    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "permissionGroup":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;>;"
    .restart local v1    # "permissionGroup":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;
    .restart local v2    # "tag":Ljava/lang/String;
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 260
    invoke-interface {v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 263
    :cond_a3
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    invoke-interface {v6, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 254
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;>;"
    :catchall_ae
    move-exception v0

    goto :goto_b2

    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .local v4, "sa":Landroid/content/res/TypedArray;
    :catchall_b0
    move-exception v0

    move-object v7, v4

    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .restart local v7    # "sa":Landroid/content/res/TypedArray;
    :goto_b2
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 255
    throw v0
.end method

.method public static blacklist parsePermissionTree(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 21
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "useRoundIcon"    # Z
    .param p4, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 180
    new-instance v1, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    invoke-direct {v1}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;-><init>()V

    .line 181
    .local v1, "permission":Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "tag":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-virtual {v14, v15, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 186
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v12, 0x2

    const/4 v13, 0x5

    const/4 v7, 0x4

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x3

    move-object/from16 v3, p0

    move/from16 v5, p3

    move-object/from16 v6, p4

    :try_start_39
    invoke-static/range {v1 .. v13}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_b4

    move-object v7, v4

    .line 195
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;>;"
    .local v7, "sa":Landroid/content/res/TypedArray;
    :try_start_3e
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 196
    invoke-interface {v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_b2

    .line 199
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    return-object v3

    .line 199
    :cond_4c
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    nop

    .line 202
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 203
    .local v3, "index":I
    if-lez v3, :cond_68

    .line 204
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v5, v4, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    move v8, v3

    goto :goto_69

    .line 203
    :cond_68
    move v8, v3

    .line 206
    .end local v3    # "index":I
    .local v8, "index":I
    :goto_69
    if-gez v8, :cond_87

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<permission-tree> name has less than three segments: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 208
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-interface {v6, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 211
    :cond_87
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v3

    .line 212
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setTree(Z)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    .line 214
    move-object v5, v1

    move-object v4, v2

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v1, p0

    .end local v1    # "permission":Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .end local v2    # "tag":Ljava/lang/String;
    .local v4, "tag":Ljava/lang/String;
    .local v5, "permission":Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 215
    move-object v2, v4

    move-object v1, v5

    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "permission":Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .restart local v1    # "permission":Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .restart local v2    # "tag":Ljava/lang/String;
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 216
    invoke-interface {v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 219
    :cond_a7
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v6, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 199
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;>;"
    .end local v8    # "index":I
    :catchall_b2
    move-exception v0

    goto :goto_b6

    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .local v4, "sa":Landroid/content/res/TypedArray;
    :catchall_b4
    move-exception v0

    move-object v7, v4

    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .restart local v7    # "sa":Landroid/content/res/TypedArray;
    :goto_b6
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    throw v0
.end method
