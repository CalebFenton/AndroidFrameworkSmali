.class public Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;
.super Ljava/lang/Object;
.source "ParsedActivityUtils.java"


# static fields
.field public static final blacklist LOG_UNSAFE_BROADCASTS:Z = false

.field private static final blacklist RECREATE_ON_CONFIG_CHANGES_MASK:I = 0x3

.field public static final blacklist SAFE_BROADCASTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 74
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->SAFE_BROADCASTS:Ljava/util/Set;

    .line 76
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->SAFE_BROADCASTS:Ljava/util/Set;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getActivityConfigChanges(II)I
    .registers 3
    .param p0, "configChanges"    # I
    .param p1, "recreateOnConfigChanges"    # I

    .line 655
    not-int v0, p1

    and-int/lit8 v0, v0, 0x3

    or-int/2addr v0, p0

    return v0
.end method

.method private static blacklist getActivityResizeMode(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;I)I
    .registers 8
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p1, "sa"    # Landroid/content/res/TypedArray;
    .param p2, "screenOrientation"    # I

    .line 543
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getResizeableActivity()Ljava/lang/Boolean;

    move-result-object v0

    .line 545
    .local v0, "resizeableActivity":Ljava/lang/Boolean;
    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2f

    if-eqz v0, :cond_10

    goto :goto_2f

    .line 556
    :cond_10
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isResizeableActivityViaSdkVersion()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 559
    return v3

    .line 564
    :cond_17
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 565
    const/4 v1, 0x6

    return v1

    .line 566
    :cond_1f
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 567
    const/4 v1, 0x5

    return v1

    .line 568
    :cond_27
    const/16 v1, 0xe

    if-ne p2, v1, :cond_2d

    .line 569
    const/4 v1, 0x7

    return v1

    .line 571
    :cond_2d
    const/4 v1, 0x4

    return v1

    .line 548
    :cond_2f
    :goto_2f
    const/4 v2, 0x0

    if-eqz v0, :cond_39

    .line 549
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_3a

    :cond_39
    move v3, v2

    .line 548
    :goto_3a
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 550
    const/4 v1, 0x2

    return v1

    .line 552
    :cond_42
    return v2
.end method

.method public static blacklist parseActivityAlias(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 34
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "useRoundIcon"    # Z
    .param p4, "defaultSplitName"    # Ljava/lang/String;
    .param p5, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    move-object/from16 v10, p5

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 266
    .local v5, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x7

    const/16 v3, 0x400

    :try_start_f
    invoke-virtual {v5, v0, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "targetActivity":Ljava/lang/String;
    if-nez v0, :cond_1f

    .line 270
    const-string v3, "<activity-alias> does not specify android:targetActivity"

    invoke-interface {v10, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_139

    .line 330
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    return-object v3

    .line 273
    :cond_1f
    :try_start_1f
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 275
    if-nez v0, :cond_45

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Empty class name in package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_41
    .catchall {:try_start_1f .. :try_end_41} :catchall_139

    .line 330
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    return-object v4

    .line 279
    :cond_45
    const/4 v4, 0x0

    .line 281
    .local v4, "target":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :try_start_46
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v6

    .line 282
    .local v6, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v7

    .line 283
    .local v7, "activitiesSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4f
    if-ge v8, v7, :cond_66

    .line 284
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 285
    .local v9, "t":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_63

    .line 286
    move-object v4, v9

    .line 287
    goto :goto_66

    .line 283
    .end local v9    # "t":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_63
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    .line 291
    .end local v8    # "i":I
    :cond_66
    :goto_66
    if-nez v4, :cond_9b

    .line 292
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<activity-alias> target activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found in manifest with activities = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 294
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", parsedActivities = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 292
    invoke-interface {v10, v8}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8
    :try_end_97
    .catchall {:try_start_46 .. :try_end_97} :catchall_139

    .line 330
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 292
    return-object v8

    .line 298
    :cond_9b
    :try_start_9b
    invoke-static {v0, v4}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->makeAlias(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v8

    .line 299
    .local v8, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ">"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_bc
    .catchall {:try_start_9b .. :try_end_bc} :catchall_139

    .line 301
    .local v9, "tag":Ljava/lang/String;
    const/16 v22, 0xc

    const/16 v23, 0xf

    move-object v11, v4

    .end local v4    # "target":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .local v11, "target":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    const/4 v4, 0x0

    move v12, v7

    .end local v7    # "activitiesSize":I
    .local v12, "activitiesSize":I
    const/4 v7, 0x0

    move-object v13, v11

    .end local v11    # "target":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .local v13, "target":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    const/16 v11, 0xa

    move v14, v12

    .end local v12    # "activitiesSize":I
    .local v14, "activitiesSize":I
    const/4 v12, 0x6

    move-object v15, v13

    .end local v13    # "target":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .local v15, "target":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    const/4 v13, -0x1

    move/from16 v16, v14

    .end local v14    # "activitiesSize":I
    .local v16, "activitiesSize":I
    const/4 v14, 0x4

    move-object/from16 v17, v15

    .end local v15    # "target":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .local v17, "target":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    const/4 v15, 0x1

    move/from16 v18, v16

    .end local v16    # "activitiesSize":I
    .local v18, "activitiesSize":I
    const/16 v16, 0x0

    move-object/from16 v19, v17

    .end local v17    # "target":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .local v19, "target":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    const/16 v17, 0x8

    move/from16 v20, v18

    .end local v18    # "activitiesSize":I
    .local v20, "activitiesSize":I
    const/16 v18, 0x2

    move-object/from16 v21, v19

    .end local v19    # "target":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .local v21, "target":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    const/16 v19, -0x1

    move/from16 v24, v20

    .end local v20    # "activitiesSize":I
    .local v24, "activitiesSize":I
    const/16 v20, 0xb

    move-object/from16 v25, v21

    .end local v21    # "target":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .local v25, "target":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    const/16 v21, -0x1

    move-object v2, v8

    move/from16 v26, v24

    move-object/from16 v27, v25

    move/from16 v8, p3

    move-object/from16 v24, v3

    move-object/from16 v25, v6

    move-object v3, v9

    move-object/from16 v9, p4

    move-object v6, v5

    move-object/from16 v5, p0

    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .end local v8    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .end local v9    # "tag":Ljava/lang/String;
    .local v2, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .local v3, "tag":Ljava/lang/String;
    .local v6, "sa":Landroid/content/res/TypedArray;
    .local v24, "packageName":Ljava/lang/String;
    .local v25, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    .local v26, "activitiesSize":I
    .local v27, "target":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :try_start_fa
    invoke-static/range {v2 .. v23}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_fe
    .catchall {:try_start_fa .. :try_end_fe} :catchall_136

    move-object v5, v6

    .end local v6    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "sa":Landroid/content/res/TypedArray;
    move-object v13, v4

    .line 316
    .local v13, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;>;"
    :try_start_100
    invoke-interface {v13}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_10e

    .line 317
    invoke-interface {v10, v13}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_10a
    .catchall {:try_start_100 .. :try_end_10a} :catchall_139

    .line 330
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 317
    return-object v4

    .line 321
    :cond_10e
    nop

    .line 322
    :try_start_10f
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v4

    const/high16 v6, 0x100000

    and-int/2addr v4, v6

    if-eqz v4, :cond_11a

    const/4 v4, 0x1

    goto :goto_11b

    :cond_11a
    const/4 v4, 0x0

    :goto_11b
    move v8, v4

    .line 324
    .local v8, "visibleToEphemeral":Z
    const/4 v11, 0x3

    const/4 v12, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v10, 0x9

    move-object/from16 v9, p5

    move-object v14, v0

    move-object v4, v1

    move-object v0, v2

    move-object v2, v3

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .end local v3    # "tag":Ljava/lang/String;
    .local v0, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .local v2, "tag":Ljava/lang/String;
    .local v14, "targetActivity":Ljava/lang/String;
    invoke-static/range {v0 .. v12}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityOrAlias(Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_130
    .catchall {:try_start_10f .. :try_end_130} :catchall_139

    move-object v3, v2

    move-object v2, v0

    .line 330
    .end local v0    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .local v2, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .restart local v3    # "tag":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 324
    return-object v6

    .line 330
    .end local v2    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .end local v8    # "visibleToEphemeral":Z
    .end local v13    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;>;"
    .end local v14    # "targetActivity":Ljava/lang/String;
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v25    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    .end local v26    # "activitiesSize":I
    .end local v27    # "target":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .restart local v6    # "sa":Landroid/content/res/TypedArray;
    :catchall_136
    move-exception v0

    move-object v5, v6

    .end local v6    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "sa":Landroid/content/res/TypedArray;
    goto :goto_13a

    :catchall_139
    move-exception v0

    :goto_13a
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 331
    throw v0
.end method

.method private static blacklist parseActivityOrAlias(Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;
    .registers 32
    .param p0, "activity"    # Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "resources"    # Landroid/content/res/Resources;
    .param p5, "array"    # Landroid/content/res/TypedArray;
    .param p6, "isReceiver"    # Z
    .param p7, "isAlias"    # Z
    .param p8, "visibleToEphemeral"    # Z
    .param p9, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p10, "parentActivityNameAttr"    # I
    .param p11, "permissionAttr"    # I
    .param p12, "exportedAttr"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Ljava/lang/String;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/TypedArray;",
            "ZZZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "III)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 349
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v6, p9

    move/from16 v8, p12

    const/16 v2, 0x400

    move/from16 v9, p10

    invoke-virtual {v7, v9, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 350
    .local v10, "parentActivityName":Ljava/lang/String;
    if-eqz v10, :cond_4c

    .line 351
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "parentClassName":Ljava/lang/String;
    if-nez v3, :cond_49

    .line 354
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Activity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " specified invalid parentActivityName "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PackageParsing"

    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 357
    :cond_49
    invoke-virtual {v1, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setParentActivityName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 361
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "parentClassName":Ljava/lang/String;
    :cond_4c
    :goto_4c
    const/4 v11, 0x0

    move/from16 v12, p11

    invoke-virtual {v7, v12, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    .line 362
    .local v13, "permission":Ljava/lang/String;
    if-eqz p7, :cond_59

    .line 366
    invoke-virtual {v1, v13}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    goto :goto_64

    .line 368
    :cond_59
    if-eqz v13, :cond_5d

    move-object v2, v13

    goto :goto_61

    :cond_5d
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v2

    :goto_61
    invoke-virtual {v1, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 371
    :goto_64
    nop

    .line 372
    if-eqz p7, :cond_6a

    .line 373
    const/16 v2, 0xe

    goto :goto_6c

    .line 374
    :cond_6a
    const/16 v2, 0x3d

    .line 372
    :goto_6c
    invoke-static {v7, v4, v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->parseKnownActivityEmbeddingCerts(Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14

    .line 375
    .local v14, "knownActivityEmbeddingCertsResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v14}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 376
    invoke-interface {v6, v14}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 378
    :cond_7b
    nop

    .line 379
    invoke-interface {v14}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 380
    .local v2, "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_87

    .line 381
    invoke-virtual {v1, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    .line 385
    .end local v2    # "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_87
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    .line 386
    .local v15, "setExported":Z
    if-eqz v15, :cond_94

    .line 387
    invoke-virtual {v7, v8, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 390
    :cond_94
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 392
    .local v2, "depth":I
    :goto_98
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move/from16 v16, v3

    .local v16, "type":I
    const/4 v11, 0x1

    if-eq v3, v11, :cond_1b9

    const/4 v3, 0x3

    move/from16 v11, v16

    .end local v16    # "type":I
    .local v11, "type":I
    if-ne v11, v3, :cond_b3

    .line 394
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_ad

    goto :goto_b3

    :cond_ad
    move/from16 v16, v2

    move-object/from16 v2, p2

    goto/16 :goto_1bf

    .line 395
    :cond_b3
    :goto_b3
    const/4 v3, 0x2

    if-eq v11, v3, :cond_b8

    .line 396
    const/4 v11, 0x0

    goto :goto_98

    .line 398
    :cond_b8
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 399
    const/4 v11, 0x0

    goto :goto_98

    .line 403
    :cond_c4
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v0, "intent-filter"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 404
    move v0, v2

    .end local v2    # "depth":I
    .local v0, "depth":I
    xor-int/lit8 v2, p6, 0x1

    move/from16 v3, p8

    move/from16 v16, v0

    move-object/from16 v0, p1

    .end local v0    # "depth":I
    .local v16, "depth":I
    invoke-static/range {v0 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseIntentFilter(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 406
    .local v2, "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_107

    .line 407
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 408
    .local v3, "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    if-eqz v3, :cond_104

    .line 409
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v17

    .line 410
    .local v17, "intentFilter":Landroid/content/IntentFilter;
    move-object/from16 v18, v2

    .end local v2    # "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    .local v18, "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter;->getOrder()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getOrder()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setOrder(I)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 411
    invoke-virtual {v1, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->addIntent(Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;)V

    goto :goto_109

    .line 408
    .end local v17    # "intentFilter":Landroid/content/IntentFilter;
    .end local v18    # "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    .restart local v2    # "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    :cond_104
    move-object/from16 v18, v2

    .end local v2    # "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    .restart local v18    # "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    goto :goto_109

    .line 406
    .end local v3    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .end local v18    # "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    .restart local v2    # "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    :cond_107
    move-object/from16 v18, v2

    .line 431
    .end local v2    # "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    .restart local v18    # "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    :goto_109
    nop

    .line 432
    .local v18, "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object/from16 v2, p2

    move-object/from16 v3, v18

    goto/16 :goto_1a7

    .end local v16    # "depth":I
    .end local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .local v2, "depth":I
    :cond_110
    move-object/from16 v0, p1

    move/from16 v16, v2

    .end local v2    # "depth":I
    .restart local v16    # "depth":I
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 433
    invoke-static {v1, v0, v4, v5, v6}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addMetaData(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v18

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    .restart local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto/16 :goto_1a7

    .line 434
    .end local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_12a
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "property"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_140

    .line 435
    invoke-static {v1, v0, v4, v5, v6}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addProperty(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v18

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    .restart local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_1a7

    .line 436
    .end local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_140
    if-nez p6, :cond_174

    if-nez p7, :cond_174

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "preferred"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_174

    .line 437
    const/4 v2, 0x1

    move/from16 v3, p8

    invoke-static/range {v0 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseIntentFilter(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 440
    .local v2, "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_16d

    .line 441
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 442
    .local v3, "intent":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    if-eqz v3, :cond_16d

    .line 443
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addPreferredActivityFilter(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 446
    .end local v3    # "intent":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :cond_16d
    move-object/from16 v18, v2

    .line 447
    .end local v2    # "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    .restart local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object/from16 v2, p2

    move-object/from16 v3, v18

    goto :goto_1a7

    .end local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_174
    if-nez p6, :cond_19f

    if-nez p7, :cond_19f

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "layout"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19f

    .line 448
    nop

    .line 449
    invoke-static {v4, v5, v6}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityWindowLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 450
    .local v2, "layoutResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/ActivityInfo$WindowLayout;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_198

    .line 451
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {v1, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 453
    :cond_198
    move-object/from16 v18, v2

    .line 454
    .end local v2    # "layoutResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/ActivityInfo$WindowLayout;>;"
    .restart local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object/from16 v2, p2

    move-object/from16 v3, v18

    goto :goto_1a7

    .line 455
    .end local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_19f
    move-object/from16 v2, p2

    invoke-static {v2, v0, v5, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v18

    move-object/from16 v3, v18

    .line 458
    .local v3, "result":Landroid/content/pm/parsing/result/ParseResult;
    :goto_1a7
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v8

    if-eqz v8, :cond_1b2

    .line 459
    invoke-interface {v6, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    return-object v8

    .line 461
    .end local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_1b2
    move/from16 v8, p12

    move/from16 v2, v16

    const/4 v11, 0x0

    goto/16 :goto_98

    .line 392
    .end local v11    # "type":I
    .local v2, "depth":I
    .local v16, "type":I
    :cond_1b9
    move/from16 v11, v16

    move/from16 v16, v2

    move-object/from16 v2, p2

    .line 463
    .end local v2    # "depth":I
    .restart local v11    # "type":I
    .local v16, "depth":I
    :goto_1bf
    if-nez p7, :cond_1eb

    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getLaunchMode()I

    move-result v3

    const/4 v8, 0x4

    if-eq v3, v8, :cond_1eb

    .line 464
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v3

    const-string v8, "android.activity.launch_mode"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1eb

    .line 466
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, "launchMode":Ljava/lang/String;
    if-eqz v3, :cond_1eb

    const-string/jumbo v8, "singleInstancePerTask"

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1eb

    .line 469
    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 473
    .end local v3    # "launchMode":Ljava/lang/String;
    :cond_1eb
    if-nez p7, :cond_20e

    .line 476
    const/16 v3, 0x3b

    const/4 v8, 0x1

    invoke-virtual {v7, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 478
    .local v3, "canDisplayOnRemoteDevices":Z
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.can_display_on_remote_devices"

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_201

    .line 480
    const/4 v3, 0x0

    .line 482
    :cond_201
    if-eqz v3, :cond_20f

    .line 483
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v0

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    goto :goto_20f

    .line 473
    .end local v3    # "canDisplayOnRemoteDevices":Z
    :cond_20e
    const/4 v8, 0x1

    .line 488
    :cond_20f
    :goto_20f
    nop

    .line 489
    invoke-static {v1, v6}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->resolveActivityWindowLayout(Lcom/android/internal/pm/pkg/component/ParsedActivity;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 490
    .local v0, "layoutResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/ActivityInfo$WindowLayout;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_21f

    .line 491
    invoke-interface {v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 493
    :cond_21f
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {v1, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 495
    if-nez v15, :cond_270

    .line 496
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_235

    goto :goto_236

    :cond_235
    const/4 v8, 0x0

    .line 497
    .local v8, "hasIntentFilters":Z
    :goto_236
    if-eqz v8, :cond_26d

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Targeting S+ (version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and above) requires that an explicit value for android:exported be defined when intent filters are present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 498
    const-wide/32 v3, 0x8f45e27

    invoke-interface {v6, v2, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 503
    .local v2, "exportedCheckResult":Landroid/content/pm/parsing/result/ParseResult;
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_26d

    .line 504
    invoke-interface {v6, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 507
    .end local v2    # "exportedCheckResult":Landroid/content/pm/parsing/result/ParseResult;
    :cond_26d
    invoke-virtual {v1, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 510
    .end local v8    # "hasIntentFilters":Z
    :cond_270
    invoke-interface {v6, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist parseActivityOrReceiver([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
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
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;-><init>()V

    .line 94
    .local v2, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    const-string/jumbo v0, "receiver"

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 95
    .local v24, "receiver":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "tag":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 98
    .local v6, "sa":Landroid/content/res/TypedArray;
    nop

    .line 99
    const/16 v11, 0x1e

    const/16 v12, 0x11

    const/16 v13, 0x2a

    const/4 v14, 0x5

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x17

    const/16 v18, 0x3

    const/16 v19, 0x7

    const/16 v20, 0x2c

    const/16 v21, 0x30

    const/16 v22, 0x39

    const/16 v23, 0x42

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    :try_start_60
    invoke-static/range {v2 .. v23}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_317

    move-object v4, v3

    move-object v3, v2

    move-object v2, v5

    .line 114
    .end local v2    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;>;"
    .local v3, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .local v4, "tag":Ljava/lang/String;
    :try_start_67
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_30f

    if-eqz v5, :cond_7e

    .line 115
    :try_start_6d
    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_75

    .line 256
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    return-object v5

    .line 256
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;>;"
    :catchall_75
    move-exception v0

    move-object/from16 v16, v1

    move-object v1, v3

    move-object v3, v4

    move/from16 v7, v24

    goto/16 :goto_31d

    .line 118
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;>;"
    :cond_7e
    if-eqz v24, :cond_9a

    :try_start_80
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isSaveStateDisallowed()Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 120
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 121
    const-string v5, "Heavy-weight applications can not have receivers in main process"

    invoke-interface {v10, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_96
    .catchall {:try_start_80 .. :try_end_96} :catchall_75

    .line 256
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    return-object v5

    .line 130
    :cond_9a
    const/4 v5, 0x0

    :try_start_9b
    invoke-virtual {v6, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setTheme(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 131
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUiOptions()I

    move-result v8

    const/16 v9, 0x1a

    invoke-virtual {v6, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setUiOptions(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 133
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v7

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isTaskReparentingAllowed()Z

    move-result v8

    const/16 v9, 0x40

    const/16 v11, 0x13

    invoke-static {v9, v11, v8, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v8

    .line 134
    const/16 v11, 0x8

    const/16 v12, 0x12

    invoke-static {v11, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v12

    or-int/2addr v8, v12

    .line 135
    const/4 v12, 0x4

    const/16 v13, 0xb

    invoke-static {v12, v13, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v13

    or-int/2addr v8, v13

    .line 136
    const/16 v13, 0x20

    const/16 v14, 0xd

    invoke-static {v13, v14, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v14

    or-int/2addr v8, v14

    .line 137
    const/16 v14, 0x100

    const/16 v15, 0x16

    invoke-static {v14, v15, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v14

    or-int/2addr v8, v14

    .line 138
    const/4 v14, 0x2

    const/16 v15, 0xa

    invoke-static {v14, v15, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v15

    or-int/2addr v8, v15

    .line 139
    const/16 v15, 0x800

    const/16 v11, 0x18

    invoke-static {v15, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v11

    or-int/2addr v8, v11

    .line 140
    const/4 v11, 0x1

    const/16 v15, 0x9

    invoke-static {v11, v15, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v15

    or-int/2addr v8, v15

    .line 141
    const/16 v15, 0x80

    const/16 v12, 0x15

    invoke-static {v15, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v12

    or-int/2addr v8, v12

    .line 142
    const/16 v12, 0x400

    const/16 v15, 0x27

    invoke-static {v12, v15, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v15

    or-int/2addr v8, v15

    .line 143
    const/16 v15, 0x1d

    invoke-static {v12, v15, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v15

    or-int/2addr v8, v15

    .line 144
    const/16 v15, 0x10

    const/16 v12, 0xc

    invoke-static {v15, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v12

    or-int/2addr v8, v12

    .line 145
    const/high16 v12, 0x20000000

    invoke-static {v12, v9, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v9

    or-int/2addr v8, v9

    or-int/2addr v7, v8

    .line 133
    invoke-virtual {v3, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    :try_end_129
    .catchall {:try_start_9b .. :try_end_129} :catchall_30f

    .line 147
    if-nez v24, :cond_278

    .line 148
    :try_start_12b
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v7

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isHardwareAccelerated()Z

    move-result v8

    const/16 v9, 0x200

    const/16 v12, 0x19

    invoke-static {v9, v12, v8, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v8

    .line 149
    const/high16 v9, -0x80000000

    const/16 v12, 0x1f

    invoke-static {v9, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v9

    or-int/2addr v8, v9

    .line 150
    const/high16 v9, 0x40000

    const/16 v12, 0x43

    invoke-static {v9, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v9

    or-int/2addr v8, v9

    .line 151
    const/16 v9, 0x2000

    const/16 v12, 0x23

    invoke-static {v9, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v9

    or-int/2addr v8, v9

    .line 152
    const/16 v9, 0x1000

    const/16 v12, 0x24

    invoke-static {v9, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v9

    or-int/2addr v8, v9

    .line 153
    const/16 v9, 0x4000

    const/16 v12, 0x25

    invoke-static {v9, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v9

    or-int/2addr v8, v9

    .line 154
    const/high16 v9, 0x800000

    const/16 v12, 0x33

    invoke-static {v9, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v9

    or-int/2addr v8, v9

    .line 155
    const/high16 v9, 0x400000

    const/16 v12, 0x29

    invoke-static {v9, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v9

    or-int/2addr v8, v9

    .line 156
    const/high16 v9, 0x1000000

    const/16 v12, 0x34

    invoke-static {v9, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v9

    or-int/2addr v8, v9

    .line 157
    const/high16 v9, 0x2000000

    const/16 v12, 0x38

    invoke-static {v9, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v9

    or-int/2addr v8, v9

    or-int/2addr v7, v8

    .line 158
    const/high16 v8, 0x10000000

    const/16 v9, 0x3c

    invoke-static {v8, v9, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v8

    or-int/2addr v7, v8

    .line 148
    invoke-virtual {v3, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 160
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getPrivateFlags()I

    move-result v7

    const/16 v8, 0x36

    invoke-static {v11, v8, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v8

    .line 162
    const/16 v9, 0x3a

    invoke-static {v14, v9, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v9

    or-int/2addr v8, v9

    or-int/2addr v7, v8

    .line 160
    invoke-virtual {v3, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPrivateFlags(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 165
    const/16 v7, 0x31

    invoke-virtual {v6, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setColorMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 166
    const/16 v8, 0x21

    invoke-virtual {v6, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setDocumentLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 167
    const/16 v8, 0xe

    invoke-virtual {v6, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 168
    const/16 v8, 0x26

    invoke-virtual {v6, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setLockTaskLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 169
    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v8

    const/16 v9, 0x22

    invoke-virtual {v6, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setMaxRecents(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 170
    invoke-virtual {v6, v13, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPersistableMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 171
    const/16 v8, 0x2b

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setRequestedVrComponent(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 172
    const/4 v8, -0x1

    const/16 v9, 0x2e

    invoke-virtual {v6, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setRotationAnimation(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 173
    const/16 v9, 0x14

    invoke-virtual {v6, v9, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setSoftInputMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 175
    invoke-virtual {v6, v15, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 176
    const/16 v12, 0x2f

    invoke-virtual {v6, v12, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 174
    invoke-static {v9, v12}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->getActivityConfigChanges(II)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setConfigChanges(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 179
    const/16 v7, 0xf

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 180
    .local v7, "screenOrientation":I
    invoke-static {v2, v6, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->getActivityResizeMode(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;I)I

    move-result v8

    .line 181
    .local v8, "resizeMode":I
    invoke-virtual {v3, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setScreenOrientation(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v9

    .line 182
    invoke-virtual {v9, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setResizeMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 184
    const/16 v9, 0x32

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_245

    .line 185
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v12

    const/4 v14, 0x4

    if-ne v12, v14, :cond_245

    .line 187
    nop

    .line 188
    invoke-virtual {v6, v9, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 187
    invoke-virtual {v3, v8, v9}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setMaxAspectRatio(IF)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 192
    :cond_245
    const/16 v9, 0x35

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_25d

    .line 193
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v12

    const/4 v14, 0x4

    if-ne v12, v14, :cond_25e

    .line 195
    nop

    .line 196
    invoke-virtual {v6, v9, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 195
    invoke-virtual {v3, v8, v9}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setMinAspectRatio(IF)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    goto :goto_25e

    .line 192
    :cond_25d
    const/4 v14, 0x4

    .line 200
    :cond_25e
    :goto_25e
    const/16 v9, 0x3e

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_277

    .line 201
    invoke-virtual {v6, v9, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 204
    .local v9, "enable":Z
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getPrivateFlags()I

    move-result v12

    .line 205
    if-eqz v9, :cond_271

    goto :goto_273

    .line 206
    :cond_271
    const/16 v14, 0x8

    :goto_273
    or-int/2addr v12, v14

    .line 204
    invoke-virtual {v3, v12}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPrivateFlags(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    :try_end_277
    .catchall {:try_start_12b .. :try_end_277} :catchall_75

    .line 208
    .end local v7    # "screenOrientation":I
    .end local v8    # "resizeMode":I
    .end local v9    # "enable":Z
    :cond_277
    goto :goto_290

    .line 209
    :cond_278
    :try_start_278
    invoke-virtual {v3, v5}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 210
    invoke-virtual {v7, v5}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setConfigChanges(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 211
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    const/16 v12, 0x1c

    invoke-static {v9, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v9

    or-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 215
    :goto_290
    const/16 v7, 0x400

    const/16 v8, 0x8

    invoke-virtual {v6, v8, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    move-object v14, v7

    .line 219
    .local v14, "taskAffinity":Ljava/lang/String;
    nop

    .line 220
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTaskAffinity()Ljava/lang/String;

    move-result-object v7

    .line 219
    invoke-static {v1, v7, v14, v10}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    move-object v15, v7

    .line 221
    .local v15, "affinityNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v15}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7
    :try_end_2a7
    .catchall {:try_start_278 .. :try_end_2a7} :catchall_30f

    if-eqz v7, :cond_2b1

    .line 222
    :try_start_2a9
    invoke-interface {v10, v15}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_2ad
    .catchall {:try_start_2a9 .. :try_end_2ad} :catchall_75

    .line 256
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    return-object v5

    .line 225
    :cond_2b1
    :try_start_2b1
    invoke-interface {v15}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 227
    const/16 v7, 0x2d

    invoke-virtual {v6, v7, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9
    :try_end_2c0
    .catchall {:try_start_2b1 .. :try_end_2c0} :catchall_30f

    .line 228
    .local v9, "visibleToEphemeral":Z
    if-eqz v9, :cond_2cf

    .line 229
    :try_start_2c2
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v7

    const/high16 v8, 0x100000

    or-int/2addr v7, v8

    invoke-virtual {v3, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 230
    invoke-interface {v2, v11}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_2cf
    .catchall {:try_start_2c2 .. :try_end_2cf} :catchall_75

    .line 233
    :cond_2cf
    const/16 v7, 0x3f

    :try_start_2d1
    invoke-virtual {v6, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7
    :try_end_2d5
    .catchall {:try_start_2d1 .. :try_end_2d5} :catchall_30f

    .line 236
    .local v7, "requiredDisplayCategory":Ljava/lang/String;
    if-eqz v7, :cond_2e8

    .line 237
    :try_start_2d7
    invoke-static {v7, v5, v5}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2e8

    .line 239
    const-string/jumbo v5, "requiredDisplayCategory attribute can only consist of alphanumeric characters, \'_\', and \'.\'"

    invoke-interface {v10, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_2e4
    .catchall {:try_start_2d7 .. :try_end_2e4} :catchall_75

    .line 256
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    return-object v5

    .line 243
    :cond_2e8
    :try_start_2e8
    invoke-virtual {v3, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setRequiredDisplayCategory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 245
    const/16 v8, 0x41

    invoke-virtual {v6, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setRequireContentUriPermissionFromCaller(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    :try_end_2f4
    .catchall {:try_start_2e8 .. :try_end_2f4} :catchall_30f

    .line 249
    const/4 v12, 0x4

    const/4 v13, 0x6

    const/4 v8, 0x0

    const/16 v11, 0x1b

    move-object/from16 v5, p2

    move-object/from16 v16, v1

    move-object v1, v3

    move-object v3, v4

    move-object/from16 v17, v7

    move/from16 v7, v24

    move-object/from16 v4, p3

    .end local v4    # "tag":Ljava/lang/String;
    .end local v24    # "receiver":Z
    .local v1, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .local v3, "tag":Ljava/lang/String;
    .local v7, "receiver":Z
    .local v16, "packageName":Ljava/lang/String;
    .local v17, "requiredDisplayCategory":Ljava/lang/String;
    :try_start_305
    invoke-static/range {v1 .. v13}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityOrAlias(Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8
    :try_end_309
    .catchall {:try_start_305 .. :try_end_309} :catchall_30d

    .line 256
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 249
    return-object v8

    .line 256
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;>;"
    .end local v9    # "visibleToEphemeral":Z
    .end local v14    # "taskAffinity":Ljava/lang/String;
    .end local v15    # "affinityNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .end local v17    # "requiredDisplayCategory":Ljava/lang/String;
    :catchall_30d
    move-exception v0

    goto :goto_31d

    .end local v7    # "receiver":Z
    .end local v16    # "packageName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    .local v3, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v24    # "receiver":Z
    :catchall_30f
    move-exception v0

    move-object/from16 v16, v1

    move-object v1, v3

    move-object v3, v4

    move/from16 v7, v24

    .end local v4    # "tag":Ljava/lang/String;
    .end local v24    # "receiver":Z
    .local v1, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .local v3, "tag":Ljava/lang/String;
    .restart local v7    # "receiver":Z
    .restart local v16    # "packageName":Ljava/lang/String;
    goto :goto_31d

    .end local v7    # "receiver":Z
    .end local v16    # "packageName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    .restart local v2    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .restart local v24    # "receiver":Z
    :catchall_317
    move-exception v0

    move-object/from16 v16, v1

    move-object v1, v2

    move/from16 v7, v24

    .end local v2    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .end local v24    # "receiver":Z
    .local v1, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .restart local v7    # "receiver":Z
    .restart local v16    # "packageName":Ljava/lang/String;
    :goto_31d
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 257
    throw v0
.end method

.method private static blacklist parseActivityWindowLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 21
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ">;"
        }
    .end annotation

    .line 578
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 580
    .local v3, "sw":Landroid/content/res/TypedArray;
    const/4 v0, -0x1

    .line 581
    .local v0, "width":I
    const/high16 v4, -0x40800000    # -1.0f

    .line 582
    .local v4, "widthFraction":F
    const/4 v5, -0x1

    .line 583
    .local v5, "height":I
    const/high16 v6, -0x40800000    # -1.0f

    .line 584
    .local v6, "heightFraction":F
    const/4 v7, 0x3

    :try_start_11
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v8

    .line 585
    .local v8, "widthType":I
    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ne v8, v10, :cond_23

    .line 586
    invoke-virtual {v3, v7, v13, v13, v9}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v7

    move v4, v7

    goto :goto_2a

    .line 588
    :cond_23
    if-ne v8, v11, :cond_2a

    .line 589
    invoke-virtual {v3, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    move v0, v7

    .line 592
    :cond_2a
    :goto_2a
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v14

    .line 593
    .local v14, "heightType":I
    if-ne v14, v10, :cond_37

    .line 594
    invoke-virtual {v3, v7, v13, v13, v9}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v7

    move v6, v7

    goto :goto_3e

    .line 596
    :cond_37
    if-ne v14, v11, :cond_3e

    .line 597
    invoke-virtual {v3, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    move v5, v7

    .line 600
    :cond_3e
    :goto_3e
    const/16 v7, 0x11

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 601
    .local v7, "gravity":I
    invoke-virtual {v3, v13, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 602
    .local v15, "minWidth":I
    const/4 v10, 0x2

    invoke-virtual {v3, v10, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 604
    .local v16, "minHeight":I
    nop

    .line 605
    invoke-virtual {v3, v11, v9}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    .line 607
    .local v17, "windowLayoutAffinity":Ljava/lang/String;
    new-instance v9, Landroid/content/pm/ActivityInfo$WindowLayout;

    move v10, v0

    move v11, v4

    move v12, v5

    move v13, v6

    move v0, v14

    move v14, v7

    .end local v4    # "widthFraction":F
    .end local v5    # "height":I
    .end local v6    # "heightFraction":F
    .end local v7    # "gravity":I
    .local v0, "heightType":I
    .local v10, "width":I
    .local v11, "widthFraction":F
    .local v12, "height":I
    .local v13, "heightFraction":F
    .local v14, "gravity":I
    invoke-direct/range {v9 .. v17}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIIILjava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_11 .. :try_end_5e} :catchall_6a

    .line 610
    .local v9, "windowLayout":Landroid/content/pm/ActivityInfo$WindowLayout;
    move-object/from16 v4, p2

    :try_start_60
    invoke-interface {v4, v9}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_68

    .line 612
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 610
    return-object v5

    .line 612
    .end local v0    # "heightType":I
    .end local v8    # "widthType":I
    .end local v9    # "windowLayout":Landroid/content/pm/ActivityInfo$WindowLayout;
    .end local v10    # "width":I
    .end local v11    # "widthFraction":F
    .end local v12    # "height":I
    .end local v13    # "heightFraction":F
    .end local v14    # "gravity":I
    .end local v15    # "minWidth":I
    .end local v16    # "minHeight":I
    .end local v17    # "windowLayoutAffinity":Ljava/lang/String;
    :catchall_68
    move-exception v0

    goto :goto_6d

    :catchall_6a
    move-exception v0

    move-object/from16 v4, p2

    :goto_6d
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 613
    throw v0
.end method

.method private static blacklist parseIntentFilter(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 17
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p1, "activity"    # Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .param p2, "allowImplicitEphemeralVisibility"    # Z
    .param p3, "visibleToEphemeral"    # Z
    .param p4, "resources"    # Landroid/content/res/Resources;
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p6, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;",
            "ZZ",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
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

    .line 518
    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    move-object v0, p1

    move v7, p2

    move v4, p3

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseIntentFilter(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 522
    .local v5, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 523
    invoke-interface {v9, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 526
    :cond_1a
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 527
    .local v1, "intent":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    if-eqz v1, :cond_47

    .line 528
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    .line 529
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v2}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 530
    invoke-virtual {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v3

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 532
    :cond_36
    invoke-virtual {v2}, Landroid/content/IntentFilter;->isImplicitlyVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 533
    nop

    .line 534
    invoke-virtual {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v3

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    .line 533
    invoke-virtual {p1, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 538
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_47
    invoke-interface {v9, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist resolveActivityWindowLayout(Lcom/android/internal/pm/pkg/component/ParsedActivity;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .param p0, "activity"    # Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ">;"
        }
    .end annotation

    .line 625
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.activity_window_layout_affinity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 627
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 631
    :cond_15
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 632
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 635
    :cond_2c
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 637
    .local v10, "windowLayoutAffinity":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    .line 638
    .local v0, "layout":Landroid/content/pm/ActivityInfo$WindowLayout;
    if-nez v0, :cond_4a

    .line 639
    new-instance v2, Landroid/content/pm/ActivityInfo$WindowLayout;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIIILjava/lang/String;)V

    move-object v0, v2

    goto :goto_4c

    .line 643
    :cond_4a
    iput-object v10, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    .line 645
    :goto_4c
    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method
