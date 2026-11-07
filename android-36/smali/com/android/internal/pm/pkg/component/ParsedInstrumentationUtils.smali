.class public Lcom/android/internal/pm/pkg/component/ParsedInstrumentationUtils;
.super Ljava/lang/Object;
.source "ParsedInstrumentationUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseInstrumentation(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
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
            "Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 45
    new-instance v1, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;

    invoke-direct {v1}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;-><init>()V

    .line 46
    .local v1, "instrumentation":Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;
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

    .line 48
    .local v2, "tag":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-virtual {v14, v15, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 50
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v12, 0x2

    const/16 v13, 0x8

    const/4 v7, 0x7

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-object/from16 v3, p0

    move/from16 v5, p3

    move-object/from16 v6, p4

    :try_start_3a
    invoke-static/range {v1 .. v13}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_9c

    move-object v7, v4

    .line 59
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;>;"
    .local v7, "sa":Landroid/content/res/TypedArray;
    :try_start_3f
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 60
    invoke-interface {v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_9a

    .line 72
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-object v3

    .line 66
    :cond_4d
    const/4 v3, 0x3

    :try_start_4e
    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->setTargetPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;

    move-result-object v3

    .line 67
    const/16 v4, 0x9

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->setTargetProcesses(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;

    move-result-object v3

    .line 68
    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->setHandleProfiling(Z)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;

    move-result-object v3

    .line 69
    const/4 v5, 0x5

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->setFunctionalTest(Z)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;
    :try_end_72
    .catchall {:try_start_4e .. :try_end_72} :catchall_9a

    .line 72
    nop

    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;>;"
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    nop

    .line 75
    nop

    .line 76
    move-object v5, v1

    move-object v4, v2

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v1, p0

    .end local v1    # "instrumentation":Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;
    .end local v2    # "tag":Ljava/lang/String;
    .local v4, "tag":Ljava/lang/String;
    .local v5, "instrumentation":Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 78
    move-object v2, v4

    move-object v1, v5

    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "instrumentation":Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;>;"
    .restart local v1    # "instrumentation":Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;
    .restart local v2    # "tag":Ljava/lang/String;
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 79
    invoke-interface {v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 82
    :cond_8f
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {v6, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 72
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;>;"
    :catchall_9a
    move-exception v0

    goto :goto_9e

    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .local v4, "sa":Landroid/content/res/TypedArray;
    :catchall_9c
    move-exception v0

    move-object v7, v4

    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .restart local v7    # "sa":Landroid/content/res/TypedArray;
    :goto_9e
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    throw v0
.end method
