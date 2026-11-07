.class Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;
.super Ljava/lang/Object;
.source "ParsedComponentUtils.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist addMetaData(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .param p0, "component"    # Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 101
    const-string v4, "<meta-data>"

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .end local p0    # "component":Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    .end local p1    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p2    # "resources":Landroid/content/res/Resources;
    .end local p3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p4    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .local v0, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v1, "component":Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    .local v2, "resources":Landroid/content/res/Resources;
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 103
    .local p0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageManager$Property;>;"
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 104
    invoke-interface {v5, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 106
    :cond_16
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager$Property;

    .line 107
    .local p1, "property":Landroid/content/pm/PackageManager$Property;
    if-eqz p1, :cond_29

    .line 108
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager$Property;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 110
    :cond_29
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {v5, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    return-object p2
.end method

.method static blacklist addProperty(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .param p0, "component"    # Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 115
    const-string v4, "<property>"

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .end local p0    # "component":Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    .end local p1    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p2    # "resources":Landroid/content/res/Resources;
    .end local p3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p4    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .local v0, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v1, "component":Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    .local v2, "resources":Landroid/content/res/Resources;
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 117
    .local p0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageManager$Property;>;"
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 118
    invoke-interface {v5, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 120
    :cond_16
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager$Property;

    .line 121
    .local p1, "property":Landroid/content/pm/PackageManager$Property;
    if-eqz p1, :cond_21

    .line 122
    invoke-virtual {v1, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->addProperty(Landroid/content/pm/PackageManager$Property;)V

    .line 124
    :cond_21
    invoke-interface {v5, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    return-object p2
.end method

.method static blacklist parseComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;
    .registers 30
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "array"    # Landroid/content/res/TypedArray;
    .param p4, "useRoundIcon"    # Z
    .param p5, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p6, "bannerAttr"    # I
    .param p7, "descriptionAttr"    # I
    .param p8, "iconAttr"    # I
    .param p9, "labelAttr"    # I
    .param p10, "logoAttr"    # I
    .param p11, "nameAttr"    # I
    .param p12, "roundIconAttr"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;",
            ">(TComponent;",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "IIIIIII)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TComponent;>;"
        }
    .end annotation

    .line 47
    .local p0, "component":Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;, "TComponent;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move/from16 v4, p7

    const/4 v5, 0x0

    move/from16 v6, p11

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, "name":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " does not specify android:name"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    .line 52
    :cond_2f
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 53
    .local v8, "packageName":Ljava/lang/String;
    invoke-static {v8, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 54
    .local v9, "className":Ljava/lang/String;
    sget-object v10, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_57

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " invalid android:name"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    .line 59
    :cond_57
    invoke-virtual {v0, v9}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    move-result-object v10

    .line 60
    invoke-virtual {v10, v8}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setPackageName(Ljava/lang/String;)V

    .line 62
    if-eqz p4, :cond_67

    move/from16 v10, p12

    invoke-virtual {v2, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    goto :goto_6a

    :cond_67
    move/from16 v10, p12

    move v11, v5

    .line 63
    .local v11, "roundIconVal":I
    :goto_6a
    const/4 v12, 0x0

    if-eqz v11, :cond_77

    .line 64
    invoke-virtual {v0, v11}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    move-result-object v13

    .line 65
    invoke-virtual {v13, v12}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    move/from16 v13, p8

    goto :goto_85

    .line 67
    :cond_77
    move/from16 v13, p8

    invoke-virtual {v2, v13, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 68
    .local v14, "iconVal":I
    if-eqz v14, :cond_85

    .line 69
    invoke-virtual {v0, v14}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 70
    invoke-virtual {v0, v12}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 74
    .end local v14    # "iconVal":I
    :cond_85
    :goto_85
    move/from16 v12, p10

    invoke-virtual {v2, v12, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 75
    .local v14, "logoVal":I
    if-eqz v14, :cond_90

    .line 76
    invoke-virtual {v0, v14}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setLogo(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 79
    :cond_90
    move/from16 v15, p6

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 80
    .local v1, "bannerVal":I
    if-eqz v1, :cond_9b

    .line 81
    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setBanner(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 84
    :cond_9b
    const/4 v5, -0x1

    if-eq v4, v5, :cond_a6

    .line 85
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setDescriptionRes(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 88
    :cond_a6
    move/from16 v5, p9

    move/from16 v16, v1

    .end local v1    # "bannerVal":I
    .local v16, "bannerVal":I
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 89
    .local v1, "v":Landroid/util/TypedValue;
    if-eqz v1, :cond_c0

    .line 90
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setLabelRes(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 91
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-nez v2, :cond_c0

    .line 92
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 96
    :cond_c0
    invoke-interface {v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method
