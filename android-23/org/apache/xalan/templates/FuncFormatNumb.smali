.class public Lorg/apache/xalan/templates/FuncFormatNumb;
.super Lorg/apache/xpath/functions/Function3Args;
.source "FuncFormatNumb.java"


# static fields
.field static final serialVersionUID:J = -0x7b185720e3567f8cL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function3Args;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public checkNumberArgs(I)V
    .locals 1
    .param p1, "argNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    const/4 v0, 0x3

    #@1
    if-gt p1, v0, :cond_0

    #@3
    const/4 v0, 0x2

    #@4
    if-ge p1, v0, :cond_1

    #@6
    .line 176
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/FuncFormatNumb;->reportWrongNumberArgs()V

    #@9
    .line 173
    :cond_1
    return-void
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 20
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    #@3
    move-result-object v16

    #@4
    check-cast v16, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@6
    .line 59
    .local v16, "templElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@9
    move-result-object v15

    #@a
    .line 60
    .local v15, "ss":Lorg/apache/xalan/templates/StylesheetRoot;
    const/4 v8, 0x0

    #@b
    .line 61
    .local v8, "formatter":Ljava/text/DecimalFormat;
    const/4 v6, 0x0

    #@c
    .line 62
    .local v6, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncFormatNumb;->getArg0()Lorg/apache/xpath/Expression;

    #@f
    move-result-object v17

    #@10
    move-object/from16 v0, v17

    #@12
    move-object/from16 v1, p1

    #@14
    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@17
    move-result-object v17

    #@18
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->num()D

    #@1b
    move-result-wide v12

    #@1c
    .line 63
    .local v12, "num":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncFormatNumb;->getArg1()Lorg/apache/xpath/Expression;

    #@1f
    move-result-object v17

    #@20
    move-object/from16 v0, v17

    #@22
    move-object/from16 v1, p1

    #@24
    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@27
    move-result-object v17

    #@28
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@2b
    move-result-object v11

    #@2c
    .line 66
    .local v11, "patternStr":Ljava/lang/String;
    const/16 v17, 0xa4

    #@2e
    move/from16 v0, v17

    #@30
    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    #@33
    move-result v17

    #@34
    if-lez v17, :cond_0

    #@36
    .line 67
    const-string/jumbo v17, "ER_CURRENCY_SIGN_ILLEGAL"

    #@39
    move-object/from16 v0, v17

    #@3b
    invoke-virtual {v15, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->error(Ljava/lang/String;)V

    #@3e
    .line 73
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncFormatNumb;->getArg2()Lorg/apache/xpath/Expression;

    #@41
    move-result-object v4

    #@42
    .line 75
    .local v4, "arg2Expr":Lorg/apache/xpath/Expression;
    if-eqz v4, :cond_5

    #@44
    .line 77
    move-object/from16 v0, p1

    #@46
    invoke-virtual {v4, v0}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@49
    move-result-object v17

    #@4a
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    .line 78
    .local v5, "dfName":Ljava/lang/String;
    new-instance v14, Lorg/apache/xml/utils/QName;

    #@50
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    #@53
    move-result-object v17

    #@54
    move-object/from16 v0, v17

    #@56
    invoke-direct {v14, v5, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    #@59
    .line 80
    .local v14, "qname":Lorg/apache/xml/utils/QName;
    invoke-virtual {v15, v14}, Lorg/apache/xalan/templates/StylesheetRoot;->getDecimalFormatComposed(Lorg/apache/xml/utils/QName;)Ljava/text/DecimalFormatSymbols;

    #@5c
    move-result-object v6

    #@5d
    .line 82
    .local v6, "dfs":Ljava/text/DecimalFormatSymbols;
    if-nez v6, :cond_1

    #@5f
    .line 84
    const-string/jumbo v17, "WG_NO_DECIMALFORMAT_DECLARATION"

    #@62
    .line 85
    const/16 v18, 0x1

    #@64
    move/from16 v0, v18

    #@66
    new-array v0, v0, [Ljava/lang/Object;

    #@68
    move-object/from16 v18, v0

    #@6a
    const/16 v19, 0x0

    #@6c
    aput-object v5, v18, v19

    #@6e
    .line 84
    move-object/from16 v0, p0

    #@70
    move-object/from16 v1, p1

    #@72
    move-object/from16 v2, v17

    #@74
    move-object/from16 v3, v18

    #@76
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncFormatNumb;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@79
    move-object v9, v8

    #@7a
    .line 101
    .end local v5    # "dfName":Ljava/lang/String;
    .end local v6    # "dfs":Ljava/text/DecimalFormatSymbols;
    .end local v8    # "formatter":Ljava/text/DecimalFormat;
    .end local v14    # "qname":Lorg/apache/xml/utils/QName;
    .local v9, "formatter":Ljava/text/DecimalFormat;
    :goto_0
    if-nez v9, :cond_4

    #@7c
    .line 105
    :try_start_1
    new-instance v17, Lorg/apache/xml/utils/QName;

    #@7e
    const-string/jumbo v18, ""

    #@81
    invoke-direct/range {v17 .. v18}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    #@84
    move-object/from16 v0, v17

    #@86
    invoke-virtual {v15, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getDecimalFormatComposed(Lorg/apache/xml/utils/QName;)Ljava/text/DecimalFormatSymbols;

    #@89
    move-result-object v6

    #@8a
    .line 107
    .restart local v6    # "dfs":Ljava/text/DecimalFormatSymbols;
    if-eqz v6, :cond_2

    #@8c
    .line 109
    new-instance v8, Ljava/text/DecimalFormat;

    #@8e
    invoke-direct {v8}, Ljava/text/DecimalFormat;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@91
    .line 111
    .end local v9    # "formatter":Ljava/text/DecimalFormat;
    .local v8, "formatter":Ljava/text/DecimalFormat;
    :try_start_2
    invoke-virtual {v8, v6}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    #@94
    .line 112
    invoke-virtual {v8, v11}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    #@97
    .line 130
    .end local v6    # "dfs":Ljava/text/DecimalFormatSymbols;
    :goto_1
    new-instance v17, Lorg/apache/xpath/objects/XString;

    #@99
    invoke-virtual {v8, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    #@9c
    move-result-object v18

    #@9d
    invoke-direct/range {v17 .. v18}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@a0
    return-object v17

    #@a1
    .line 93
    .restart local v5    # "dfName":Ljava/lang/String;
    .restart local v6    # "dfs":Ljava/text/DecimalFormatSymbols;
    .local v8, "formatter":Ljava/text/DecimalFormat;
    .restart local v14    # "qname":Lorg/apache/xml/utils/QName;
    :cond_1
    new-instance v9, Ljava/text/DecimalFormat;

    #@a3
    invoke-direct {v9}, Ljava/text/DecimalFormat;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@a6
    .line 95
    .restart local v9    # "formatter":Ljava/text/DecimalFormat;
    :try_start_3
    invoke-virtual {v9, v6}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    #@a9
    .line 96
    .end local v8    # "formatter":Ljava/text/DecimalFormat;
    invoke-virtual {v9, v11}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@ac
    goto :goto_0

    #@ad
    .line 133
    .end local v5    # "dfName":Ljava/lang/String;
    .end local v6    # "dfs":Ljava/text/DecimalFormatSymbols;
    .end local v14    # "qname":Lorg/apache/xml/utils/QName;
    :catch_0
    move-exception v10

    #@ae
    .local v10, "iae":Ljava/lang/Exception;
    move-object v8, v9

    #@af
    .line 134
    .end local v4    # "arg2Expr":Lorg/apache/xpath/Expression;
    .end local v9    # "formatter":Ljava/text/DecimalFormat;
    :goto_2
    const-string/jumbo v17, "ER_MALFORMED_FORMAT_STRING"

    #@b2
    .line 135
    const/16 v18, 0x1

    #@b4
    move/from16 v0, v18

    #@b6
    new-array v0, v0, [Ljava/lang/Object;

    #@b8
    move-object/from16 v18, v0

    #@ba
    const/16 v19, 0x0

    #@bc
    aput-object v11, v18, v19

    #@be
    .line 134
    invoke-virtual/range {v16 .. v18}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@c1
    .line 137
    sget-object v17, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@c3
    return-object v17

    #@c4
    .line 116
    .end local v10    # "iae":Ljava/lang/Exception;
    .restart local v4    # "arg2Expr":Lorg/apache/xpath/Expression;
    .restart local v6    # "dfs":Ljava/text/DecimalFormatSymbols;
    .restart local v9    # "formatter":Ljava/text/DecimalFormat;
    :cond_2
    :try_start_4
    new-instance v7, Ljava/text/DecimalFormatSymbols;

    #@c6
    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@c8
    move-object/from16 v0, v17

    #@ca
    invoke-direct {v7, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@cd
    .line 118
    .end local v6    # "dfs":Ljava/text/DecimalFormatSymbols;
    .local v7, "dfs":Ljava/text/DecimalFormatSymbols;
    :try_start_5
    const-string/jumbo v17, "Infinity"

    #@d0
    move-object/from16 v0, v17

    #@d2
    invoke-virtual {v7, v0}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    #@d5
    .line 119
    const-string/jumbo v17, "NaN"

    #@d8
    move-object/from16 v0, v17

    #@da
    invoke-virtual {v7, v0}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    #@dd
    .line 121
    new-instance v8, Ljava/text/DecimalFormat;

    #@df
    invoke-direct {v8}, Ljava/text/DecimalFormat;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    #@e2
    .line 123
    .end local v9    # "formatter":Ljava/text/DecimalFormat;
    .local v8, "formatter":Ljava/text/DecimalFormat;
    :try_start_6
    invoke-virtual {v8, v7}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    #@e5
    .line 125
    if-eqz v11, :cond_3

    #@e7
    .line 126
    invoke-virtual {v8, v11}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    #@ea
    move-object v6, v7

    #@eb
    .end local v7    # "dfs":Ljava/text/DecimalFormatSymbols;
    .restart local v6    # "dfs":Ljava/text/DecimalFormatSymbols;
    goto :goto_1

    #@ec
    .line 133
    .end local v4    # "arg2Expr":Lorg/apache/xpath/Expression;
    .end local v6    # "dfs":Ljava/text/DecimalFormatSymbols;
    .end local v8    # "formatter":Ljava/text/DecimalFormat;
    :catch_1
    move-exception v10

    #@ed
    .restart local v10    # "iae":Ljava/lang/Exception;
    goto :goto_2

    #@ee
    .end local v10    # "iae":Ljava/lang/Exception;
    .restart local v4    # "arg2Expr":Lorg/apache/xpath/Expression;
    .restart local v7    # "dfs":Ljava/text/DecimalFormatSymbols;
    .restart local v9    # "formatter":Ljava/text/DecimalFormat;
    :catch_2
    move-exception v10

    #@ef
    .restart local v10    # "iae":Ljava/lang/Exception;
    move-object v6, v7

    #@f0
    .end local v7    # "dfs":Ljava/text/DecimalFormatSymbols;
    .restart local v6    # "dfs":Ljava/text/DecimalFormatSymbols;
    move-object v8, v9

    #@f1
    .end local v9    # "formatter":Ljava/text/DecimalFormat;
    .restart local v8    # "formatter":Ljava/text/DecimalFormat;
    goto :goto_2

    #@f2
    .end local v6    # "dfs":Ljava/text/DecimalFormatSymbols;
    .end local v10    # "iae":Ljava/lang/Exception;
    .restart local v7    # "dfs":Ljava/text/DecimalFormatSymbols;
    :catch_3
    move-exception v10

    #@f3
    .restart local v10    # "iae":Ljava/lang/Exception;
    move-object v6, v7

    #@f4
    .end local v7    # "dfs":Ljava/text/DecimalFormatSymbols;
    .restart local v6    # "dfs":Ljava/text/DecimalFormatSymbols;
    goto :goto_2

    #@f5
    .end local v6    # "dfs":Ljava/text/DecimalFormatSymbols;
    .end local v10    # "iae":Ljava/lang/Exception;
    .restart local v7    # "dfs":Ljava/text/DecimalFormatSymbols;
    :cond_3
    move-object v6, v7

    #@f6
    .end local v7    # "dfs":Ljava/text/DecimalFormatSymbols;
    .restart local v6    # "dfs":Ljava/text/DecimalFormatSymbols;
    goto :goto_1

    #@f7
    .end local v6    # "dfs":Ljava/text/DecimalFormatSymbols;
    .end local v8    # "formatter":Ljava/text/DecimalFormat;
    .restart local v9    # "formatter":Ljava/text/DecimalFormat;
    :cond_4
    move-object v8, v9

    #@f8
    .end local v9    # "formatter":Ljava/text/DecimalFormat;
    .restart local v8    # "formatter":Ljava/text/DecimalFormat;
    goto :goto_1

    #@f9
    .local v6, "dfs":Ljava/text/DecimalFormatSymbols;
    .local v8, "formatter":Ljava/text/DecimalFormat;
    :cond_5
    move-object v9, v8

    #@fa
    .restart local v9    # "formatter":Ljava/text/DecimalFormat;
    goto :goto_0
.end method

.method protected reportWrongNumberArgs()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    #@2
    const-string/jumbo v1, "ER_TWO_OR_THREE"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
.end method

.method public warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 158
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 159
    .local v1, "formattedMsg":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@7
    move-result-object v0

    #@8
    .line 161
    .local v0, "errHandler":Ljavax/xml/transform/ErrorListener;
    new-instance v3, Ljavax/xml/transform/TransformerException;

    #@a
    .line 162
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Lorg/apache/xml/utils/SAXSourceLocator;

    #@10
    .line 161
    invoke-direct {v3, v1, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@13
    invoke-interface {v0, v3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    #@16
    .line 155
    return-void
.end method
