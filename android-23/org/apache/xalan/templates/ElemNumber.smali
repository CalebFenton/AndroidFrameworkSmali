.class public Lorg/apache/xalan/templates/ElemNumber;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemNumber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;,
        Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;
    }
.end annotation


# static fields
.field private static final m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

.field static final serialVersionUID:J = 0x70aa9b8ab17ec4baL


# instance fields
.field private m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

.field private m_countMatchPattern:Lorg/apache/xpath/XPath;

.field private m_format_avt:Lorg/apache/xalan/templates/AVT;

.field private m_fromMatchPattern:Lorg/apache/xpath/XPath;

.field private m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

.field private m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

.field private m_lang_avt:Lorg/apache/xalan/templates/AVT;

.field private m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

.field private m_level:I

.field private m_valueExpr:Lorg/apache/xpath/XPath;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x1

    #@2
    .line 487
    const/4 v0, 0x7

    #@3
    new-array v7, v0, [Lorg/apache/xalan/transformer/DecimalToRoman;

    #@5
    .line 488
    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    #@7
    const-wide/16 v1, 0x3e8

    #@9
    const-string/jumbo v3, "M"

    #@c
    const-wide/16 v4, 0x384

    #@e
    const-string/jumbo v6, "CM"

    #@11
    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    #@14
    const/4 v1, 0x0

    #@15
    aput-object v0, v7, v1

    #@17
    .line 489
    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    #@19
    const-wide/16 v1, 0x1f4

    #@1b
    const-string/jumbo v3, "D"

    #@1e
    const-wide/16 v4, 0x190

    #@20
    const-string/jumbo v6, "CD"

    #@23
    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    #@26
    const/4 v1, 0x1

    #@27
    aput-object v0, v7, v1

    #@29
    .line 490
    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    #@2b
    const-string/jumbo v3, "C"

    #@2e
    const-string/jumbo v6, "XC"

    #@31
    const-wide/16 v1, 0x64

    #@33
    const-wide/16 v4, 0x5a

    #@35
    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    #@38
    const/4 v1, 0x2

    #@39
    aput-object v0, v7, v1

    #@3b
    .line 491
    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    #@3d
    const-string/jumbo v3, "L"

    #@40
    const-string/jumbo v6, "XL"

    #@43
    const-wide/16 v1, 0x32

    #@45
    const-wide/16 v4, 0x28

    #@47
    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    #@4a
    const/4 v1, 0x3

    #@4b
    aput-object v0, v7, v1

    #@4d
    .line 492
    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    #@4f
    const-string/jumbo v3, "X"

    #@52
    const-string/jumbo v6, "IX"

    #@55
    const-wide/16 v1, 0xa

    #@57
    const-wide/16 v4, 0x9

    #@59
    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    #@5c
    const/4 v1, 0x4

    #@5d
    aput-object v0, v7, v1

    #@5f
    .line 493
    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    #@61
    const-string/jumbo v3, "V"

    #@64
    const-string/jumbo v6, "IV"

    #@67
    const-wide/16 v1, 0x5

    #@69
    const-wide/16 v4, 0x4

    #@6b
    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    #@6e
    const/4 v1, 0x5

    #@6f
    aput-object v0, v7, v1

    #@71
    .line 494
    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    #@73
    const-string/jumbo v3, "I"

    #@76
    const-string/jumbo v6, "I"

    #@79
    move-wide v1, v8

    #@7a
    move-wide v4, v8

    #@7b
    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    #@7e
    const/4 v1, 0x6

    #@7f
    aput-object v0, v7, v1

    #@81
    .line 487
    sput-object v7, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    #@83
    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 75
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@4
    .line 83
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@6
    .line 136
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    #@8
    .line 181
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    #@a
    .line 243
    const/4 v0, 0x1

    #@b
    iput v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    #@d
    .line 277
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    #@f
    .line 311
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    #@11
    .line 344
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    #@13
    .line 383
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    #@15
    .line 417
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    #@17
    .line 451
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    #@19
    .line 75
    return-void
.end method

.method private findPrecedingOrAncestorOrSelf(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I
    .locals 8
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "fromMatchPattern"    # Lorg/apache/xpath/XPath;
    .param p3, "countMatchPattern"    # Lorg/apache/xpath/XPath;
    .param p4, "context"    # I
    .param p5, "namespaceContext"    # Lorg/apache/xalan/templates/ElemNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@2
    const/4 v4, -0x1

    #@3
    .line 665
    invoke-virtual {p1, p4}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@6
    move-result-object v0

    #@7
    .line 666
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    :cond_0
    :goto_0
    if-eq v4, p4, :cond_1

    #@9
    .line 668
    if-eqz p2, :cond_2

    #@b
    .line 670
    invoke-virtual {p2, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    #@e
    move-result-wide v2

    #@f
    cmpl-double v2, v2, v6

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 673
    const/4 p4, -0x1

    #@14
    .line 705
    :cond_1
    return p4

    #@15
    .line 679
    :cond_2
    if-eqz p3, :cond_3

    #@17
    .line 681
    invoke-virtual {p3, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    #@1a
    move-result-wide v2

    #@1b
    cmpl-double v2, v2, v6

    #@1d
    if-nez v2, :cond_1

    #@1f
    .line 688
    :cond_3
    invoke-interface {v0, p4}, Lorg/apache/xml/dtm/DTM;->getPreviousSibling(I)I

    #@22
    move-result v1

    #@23
    .line 690
    .local v1, "prevSibling":I
    if-ne v4, v1, :cond_4

    #@25
    .line 692
    invoke-interface {v0, p4}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    #@28
    move-result p4

    #@29
    goto :goto_0

    #@2a
    .line 698
    :cond_4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    #@2d
    move-result p4

    #@2e
    .line 700
    if-ne p4, v4, :cond_0

    #@30
    .line 701
    move p4, v1

    #@31
    goto :goto_0
.end method

.method private getFormattedNumber(Lorg/apache/xalan/transformer/TransformerImpl;ICIJLorg/apache/xml/utils/FastStringBuffer;)V
    .locals 19
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "contextNode"    # I
    .param p3, "numberType"    # C
    .param p4, "numberWidth"    # I
    .param p5, "listElement"    # J
    .param p7, "formattedNumber"    # Lorg/apache/xml/utils/FastStringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1323
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    #@4
    if-eqz v13, :cond_0

    #@6
    .line 1324
    move-object/from16 v0, p0

    #@8
    iget-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    #@a
    .line 1325
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@d
    move-result-object v14

    #@e
    .line 1324
    move/from16 v0, p2

    #@10
    move-object/from16 v1, p0

    #@12
    invoke-virtual {v13, v14, v0, v1}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    #@15
    move-result-object v7

    #@16
    .line 1330
    :goto_0
    const/4 v4, 0x0

    #@17
    .line 1332
    .local v4, "alphaCountTable":Lorg/apache/xml/utils/res/CharArrayWrapper;
    const/4 v12, 0x0

    #@18
    .line 1334
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    sparse-switch p3, :sswitch_data_0

    #@1b
    .line 1557
    invoke-direct/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getNumberFormatter(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/text/DecimalFormat;

    #@1e
    move-result-object v5

    #@1f
    .line 1558
    .local v5, "formatter":Ljava/text/DecimalFormat;
    if-nez v5, :cond_e

    #@21
    const/4 v13, 0x0

    #@22
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@25
    move-result-object v10

    #@26
    .line 1559
    .local v10, "padString":Ljava/lang/String;
    :goto_1
    if-nez v5, :cond_f

    #@28
    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@2b
    move-result-object v9

    #@2c
    .line 1560
    .local v9, "numString":Ljava/lang/String;
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@2f
    move-result v13

    #@30
    sub-int v8, p4, v13

    #@32
    .line 1562
    .local v8, "nPadding":I
    const/4 v6, 0x0

    #@33
    .local v6, "k":I
    :goto_3
    if-ge v6, v8, :cond_10

    #@35
    .line 1564
    move-object/from16 v0, p7

    #@37
    invoke-virtual {v0, v10}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@3a
    .line 1562
    add-int/lit8 v6, v6, 0x1

    #@3c
    goto :goto_3

    #@3d
    .line 1325
    .end local v4    # "alphaCountTable":Lorg/apache/xml/utils/res/CharArrayWrapper;
    .end local v5    # "formatter":Ljava/text/DecimalFormat;
    .end local v6    # "k":I
    .end local v8    # "nPadding":I
    .end local v9    # "numString":Ljava/lang/String;
    .end local v10    # "padString":Ljava/lang/String;
    .end local v12    # "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :cond_0
    const/4 v7, 0x0

    #@3e
    .local v7, "letterVal":Ljava/lang/String;
    goto :goto_0

    #@3f
    .line 1337
    .end local v7    # "letterVal":Ljava/lang/String;
    .restart local v4    # "alphaCountTable":Lorg/apache/xml/utils/res/CharArrayWrapper;
    .restart local v12    # "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :sswitch_0
    move-object/from16 v0, p0

    #@41
    iget-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@43
    if-nez v13, :cond_1

    #@45
    .line 1340
    const-string/jumbo v13, "org.apache.xml.utils.res.XResources"

    #@48
    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    #@4b
    move-result-object v14

    #@4c
    .line 1339
    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    #@4f
    move-result-object v12

    #@50
    .line 1341
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    const-string/jumbo v13, "alphabet"

    #@53
    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@56
    move-result-object v13

    #@57
    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@59
    move-object/from16 v0, p0

    #@5b
    iput-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@5d
    .line 1343
    .end local v12    # "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :cond_1
    move-object/from16 v0, p0

    #@5f
    iget-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@61
    move-object/from16 v0, p0

    #@63
    move-wide/from16 v1, p5

    #@65
    move-object/from16 v3, p7

    #@67
    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    #@6a
    .line 1318
    :goto_4
    return-void

    #@6b
    .line 1346
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :sswitch_1
    move-object/from16 v0, p0

    #@6d
    iget-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@6f
    if-nez v13, :cond_2

    #@71
    .line 1349
    const-string/jumbo v13, "org.apache.xml.utils.res.XResources"

    #@74
    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    #@77
    move-result-object v14

    #@78
    .line 1348
    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    #@7b
    move-result-object v12

    #@7c
    .line 1350
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    const-string/jumbo v13, "alphabet"

    #@7f
    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@82
    move-result-object v13

    #@83
    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@85
    move-object/from16 v0, p0

    #@87
    iput-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@89
    .line 1352
    .end local v12    # "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :cond_2
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    #@8c
    move-result-object v11

    #@8d
    .line 1356
    .local v11, "stringBuf":Lorg/apache/xml/utils/FastStringBuffer;
    :try_start_0
    move-object/from16 v0, p0

    #@8f
    iget-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@91
    move-object/from16 v0, p0

    #@93
    move-wide/from16 v1, p5

    #@95
    invoke-virtual {v0, v1, v2, v13, v11}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    #@98
    .line 1358
    invoke-virtual {v11}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    #@9b
    move-result-object v13

    #@9c
    .line 1359
    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    #@9f
    move-result-object v14

    #@a0
    .line 1358
    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@a3
    move-result-object v13

    #@a4
    .line 1357
    move-object/from16 v0, p7

    #@a6
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a9
    .line 1363
    invoke-static {v11}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@ac
    goto :goto_4

    #@ad
    .line 1362
    :catchall_0
    move-exception v13

    #@ae
    .line 1363
    invoke-static {v11}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@b1
    .line 1362
    throw v13

    #@b2
    .line 1367
    .end local v11    # "stringBuf":Lorg/apache/xml/utils/FastStringBuffer;
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :sswitch_2
    const/4 v13, 0x1

    #@b3
    move-object/from16 v0, p0

    #@b5
    move-wide/from16 v1, p5

    #@b7
    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xalan/templates/ElemNumber;->long2roman(JZ)Ljava/lang/String;

    #@ba
    move-result-object v13

    #@bb
    move-object/from16 v0, p7

    #@bd
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@c0
    goto :goto_4

    #@c1
    .line 1371
    :sswitch_3
    const/4 v13, 0x1

    #@c2
    move-object/from16 v0, p0

    #@c4
    move-wide/from16 v1, p5

    #@c6
    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xalan/templates/ElemNumber;->long2roman(JZ)Ljava/lang/String;

    #@c9
    move-result-object v13

    #@ca
    .line 1372
    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    #@cd
    move-result-object v14

    #@ce
    .line 1371
    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@d1
    move-result-object v13

    #@d2
    .line 1370
    move-object/from16 v0, p7

    #@d4
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@d7
    goto :goto_4

    #@d8
    .line 1378
    :sswitch_4
    const-string/jumbo v13, "org.apache.xml.utils.res.XResources"

    #@db
    new-instance v14, Ljava/util/Locale;

    #@dd
    const-string/jumbo v15, "ja"

    #@e0
    const-string/jumbo v16, "JP"

    #@e3
    const-string/jumbo v17, "HA"

    #@e6
    invoke-direct/range {v14 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@e9
    .line 1377
    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    #@ec
    move-result-object v12

    #@ed
    .line 1380
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    if-eqz v7, :cond_3

    #@ef
    .line 1381
    const-string/jumbo v13, "traditional"

    #@f2
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f5
    move-result v13

    #@f6
    .line 1380
    if-eqz v13, :cond_3

    #@f8
    .line 1382
    move-object/from16 v0, p0

    #@fa
    move-wide/from16 v1, p5

    #@fc
    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    #@ff
    move-result-object v13

    #@100
    move-object/from16 v0, p7

    #@102
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@105
    goto/16 :goto_4

    #@107
    .line 1387
    :cond_3
    const-string/jumbo v13, "alphabet"

    #@10a
    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@10d
    move-result-object v13

    #@10e
    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@110
    .line 1385
    move-object/from16 v0, p0

    #@112
    move-wide/from16 v1, p5

    #@114
    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    #@117
    move-result-object v13

    #@118
    .line 1384
    move-object/from16 v0, p7

    #@11a
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@11d
    goto/16 :goto_4

    #@11f
    .line 1395
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :sswitch_5
    const-string/jumbo v13, "org.apache.xml.utils.res.XResources"

    #@122
    new-instance v14, Ljava/util/Locale;

    #@124
    const-string/jumbo v15, "ja"

    #@127
    const-string/jumbo v16, "JP"

    #@12a
    const-string/jumbo v17, "HI"

    #@12d
    invoke-direct/range {v14 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@130
    .line 1394
    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    #@133
    move-result-object v12

    #@134
    .line 1397
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    if-eqz v7, :cond_4

    #@136
    .line 1398
    const-string/jumbo v13, "traditional"

    #@139
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13c
    move-result v13

    #@13d
    .line 1397
    if-eqz v13, :cond_4

    #@13f
    .line 1399
    move-object/from16 v0, p0

    #@141
    move-wide/from16 v1, p5

    #@143
    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    #@146
    move-result-object v13

    #@147
    move-object/from16 v0, p7

    #@149
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@14c
    goto/16 :goto_4

    #@14e
    .line 1404
    :cond_4
    const-string/jumbo v13, "alphabet"

    #@151
    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@154
    move-result-object v13

    #@155
    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@157
    .line 1402
    move-object/from16 v0, p0

    #@159
    move-wide/from16 v1, p5

    #@15b
    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    #@15e
    move-result-object v13

    #@15f
    .line 1401
    move-object/from16 v0, p7

    #@161
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@164
    goto/16 :goto_4

    #@166
    .line 1412
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :sswitch_6
    const-string/jumbo v13, "org.apache.xml.utils.res.XResources"

    #@169
    new-instance v14, Ljava/util/Locale;

    #@16b
    const-string/jumbo v15, "ja"

    #@16e
    const-string/jumbo v16, "JP"

    #@171
    const-string/jumbo v17, "A"

    #@174
    invoke-direct/range {v14 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@177
    .line 1411
    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    #@17a
    move-result-object v12

    #@17b
    .line 1414
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    if-eqz v7, :cond_5

    #@17d
    .line 1415
    const-string/jumbo v13, "traditional"

    #@180
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@183
    move-result v13

    #@184
    .line 1414
    if-eqz v13, :cond_5

    #@186
    .line 1416
    move-object/from16 v0, p0

    #@188
    move-wide/from16 v1, p5

    #@18a
    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    #@18d
    move-result-object v13

    #@18e
    move-object/from16 v0, p7

    #@190
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@193
    goto/16 :goto_4

    #@195
    .line 1421
    :cond_5
    const-string/jumbo v13, "alphabet"

    #@198
    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@19b
    move-result-object v13

    #@19c
    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@19e
    .line 1419
    move-object/from16 v0, p0

    #@1a0
    move-wide/from16 v1, p5

    #@1a2
    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    #@1a5
    move-result-object v13

    #@1a6
    .line 1418
    move-object/from16 v0, p7

    #@1a8
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@1ab
    goto/16 :goto_4

    #@1ad
    .line 1429
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :sswitch_7
    const-string/jumbo v13, "org.apache.xml.utils.res.XResources"

    #@1b0
    new-instance v14, Ljava/util/Locale;

    #@1b2
    const-string/jumbo v15, "ja"

    #@1b5
    const-string/jumbo v16, "JP"

    #@1b8
    const-string/jumbo v17, "I"

    #@1bb
    invoke-direct/range {v14 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1be
    .line 1428
    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    #@1c1
    move-result-object v12

    #@1c2
    .line 1431
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    if-eqz v7, :cond_6

    #@1c4
    .line 1432
    const-string/jumbo v13, "traditional"

    #@1c7
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ca
    move-result v13

    #@1cb
    .line 1431
    if-eqz v13, :cond_6

    #@1cd
    .line 1433
    move-object/from16 v0, p0

    #@1cf
    move-wide/from16 v1, p5

    #@1d1
    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    #@1d4
    move-result-object v13

    #@1d5
    move-object/from16 v0, p7

    #@1d7
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@1da
    goto/16 :goto_4

    #@1dc
    .line 1438
    :cond_6
    const-string/jumbo v13, "alphabet"

    #@1df
    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@1e2
    move-result-object v13

    #@1e3
    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@1e5
    .line 1436
    move-object/from16 v0, p0

    #@1e7
    move-wide/from16 v1, p5

    #@1e9
    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    #@1ec
    move-result-object v13

    #@1ed
    .line 1435
    move-object/from16 v0, p7

    #@1ef
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@1f2
    goto/16 :goto_4

    #@1f4
    .line 1446
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :sswitch_8
    const-string/jumbo v13, "org.apache.xml.utils.res.XResources"

    #@1f7
    new-instance v14, Ljava/util/Locale;

    #@1f9
    const-string/jumbo v15, "zh"

    #@1fc
    const-string/jumbo v16, "CN"

    #@1ff
    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@202
    .line 1445
    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    #@205
    move-result-object v12

    #@206
    .line 1448
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    if-eqz v7, :cond_7

    #@208
    .line 1449
    const-string/jumbo v13, "traditional"

    #@20b
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20e
    move-result v13

    #@20f
    .line 1448
    if-eqz v13, :cond_7

    #@211
    .line 1451
    move-object/from16 v0, p0

    #@213
    move-wide/from16 v1, p5

    #@215
    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    #@218
    move-result-object v13

    #@219
    move-object/from16 v0, p7

    #@21b
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@21e
    goto/16 :goto_4

    #@220
    .line 1455
    :cond_7
    const-string/jumbo v13, "alphabet"

    #@223
    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@226
    move-result-object v13

    #@227
    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@229
    .line 1454
    move-object/from16 v0, p0

    #@22b
    move-wide/from16 v1, p5

    #@22d
    move-object/from16 v3, p7

    #@22f
    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    #@232
    goto/16 :goto_4

    #@234
    .line 1464
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :sswitch_9
    const-string/jumbo v13, "org.apache.xml.utils.res.XResources"

    #@237
    new-instance v14, Ljava/util/Locale;

    #@239
    const-string/jumbo v15, "zh"

    #@23c
    const-string/jumbo v16, "TW"

    #@23f
    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@242
    .line 1463
    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    #@245
    move-result-object v12

    #@246
    .line 1466
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    if-eqz v7, :cond_8

    #@248
    .line 1467
    const-string/jumbo v13, "traditional"

    #@24b
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24e
    move-result v13

    #@24f
    .line 1466
    if-eqz v13, :cond_8

    #@251
    .line 1468
    move-object/from16 v0, p0

    #@253
    move-wide/from16 v1, p5

    #@255
    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    #@258
    move-result-object v13

    #@259
    move-object/from16 v0, p7

    #@25b
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@25e
    goto/16 :goto_4

    #@260
    .line 1471
    :cond_8
    const-string/jumbo v13, "alphabet"

    #@263
    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@266
    move-result-object v13

    #@267
    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@269
    .line 1470
    move-object/from16 v0, p0

    #@26b
    move-wide/from16 v1, p5

    #@26d
    move-object/from16 v3, p7

    #@26f
    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    #@272
    goto/16 :goto_4

    #@274
    .line 1480
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :sswitch_a
    const-string/jumbo v13, "org.apache.xml.utils.res.XResources"

    #@277
    new-instance v14, Ljava/util/Locale;

    #@279
    const-string/jumbo v15, "th"

    #@27c
    const-string/jumbo v16, ""

    #@27f
    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@282
    .line 1479
    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    #@285
    move-result-object v12

    #@286
    .line 1482
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    if-eqz v7, :cond_9

    #@288
    .line 1483
    const-string/jumbo v13, "traditional"

    #@28b
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28e
    move-result v13

    #@28f
    .line 1482
    if-eqz v13, :cond_9

    #@291
    .line 1484
    move-object/from16 v0, p0

    #@293
    move-wide/from16 v1, p5

    #@295
    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    #@298
    move-result-object v13

    #@299
    move-object/from16 v0, p7

    #@29b
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@29e
    goto/16 :goto_4

    #@2a0
    .line 1487
    :cond_9
    const-string/jumbo v13, "alphabet"

    #@2a3
    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@2a6
    move-result-object v13

    #@2a7
    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@2a9
    .line 1486
    move-object/from16 v0, p0

    #@2ab
    move-wide/from16 v1, p5

    #@2ad
    move-object/from16 v3, p7

    #@2af
    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    #@2b2
    goto/16 :goto_4

    #@2b4
    .line 1496
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :sswitch_b
    const-string/jumbo v13, "org.apache.xml.utils.res.XResources"

    #@2b7
    new-instance v14, Ljava/util/Locale;

    #@2b9
    const-string/jumbo v15, "he"

    #@2bc
    const-string/jumbo v16, ""

    #@2bf
    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2c2
    .line 1495
    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    #@2c5
    move-result-object v12

    #@2c6
    .line 1498
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    if-eqz v7, :cond_a

    #@2c8
    .line 1499
    const-string/jumbo v13, "traditional"

    #@2cb
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2ce
    move-result v13

    #@2cf
    .line 1498
    if-eqz v13, :cond_a

    #@2d1
    .line 1500
    move-object/from16 v0, p0

    #@2d3
    move-wide/from16 v1, p5

    #@2d5
    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    #@2d8
    move-result-object v13

    #@2d9
    move-object/from16 v0, p7

    #@2db
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@2de
    goto/16 :goto_4

    #@2e0
    .line 1503
    :cond_a
    const-string/jumbo v13, "alphabet"

    #@2e3
    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@2e6
    move-result-object v13

    #@2e7
    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@2e9
    .line 1502
    move-object/from16 v0, p0

    #@2eb
    move-wide/from16 v1, p5

    #@2ed
    move-object/from16 v3, p7

    #@2ef
    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    #@2f2
    goto/16 :goto_4

    #@2f4
    .line 1512
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :sswitch_c
    const-string/jumbo v13, "org.apache.xml.utils.res.XResources"

    #@2f7
    new-instance v14, Ljava/util/Locale;

    #@2f9
    const-string/jumbo v15, "ka"

    #@2fc
    const-string/jumbo v16, ""

    #@2ff
    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@302
    .line 1511
    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    #@305
    move-result-object v12

    #@306
    .line 1514
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    if-eqz v7, :cond_b

    #@308
    .line 1515
    const-string/jumbo v13, "traditional"

    #@30b
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30e
    move-result v13

    #@30f
    .line 1514
    if-eqz v13, :cond_b

    #@311
    .line 1516
    move-object/from16 v0, p0

    #@313
    move-wide/from16 v1, p5

    #@315
    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    #@318
    move-result-object v13

    #@319
    move-object/from16 v0, p7

    #@31b
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@31e
    goto/16 :goto_4

    #@320
    .line 1519
    :cond_b
    const-string/jumbo v13, "alphabet"

    #@323
    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@326
    move-result-object v13

    #@327
    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@329
    .line 1518
    move-object/from16 v0, p0

    #@32b
    move-wide/from16 v1, p5

    #@32d
    move-object/from16 v3, p7

    #@32f
    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    #@332
    goto/16 :goto_4

    #@334
    .line 1528
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :sswitch_d
    const-string/jumbo v13, "org.apache.xml.utils.res.XResources"

    #@337
    new-instance v14, Ljava/util/Locale;

    #@339
    const-string/jumbo v15, "el"

    #@33c
    const-string/jumbo v16, ""

    #@33f
    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@342
    .line 1527
    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    #@345
    move-result-object v12

    #@346
    .line 1530
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    if-eqz v7, :cond_c

    #@348
    .line 1531
    const-string/jumbo v13, "traditional"

    #@34b
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34e
    move-result v13

    #@34f
    .line 1530
    if-eqz v13, :cond_c

    #@351
    .line 1532
    move-object/from16 v0, p0

    #@353
    move-wide/from16 v1, p5

    #@355
    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    #@358
    move-result-object v13

    #@359
    move-object/from16 v0, p7

    #@35b
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@35e
    goto/16 :goto_4

    #@360
    .line 1535
    :cond_c
    const-string/jumbo v13, "alphabet"

    #@363
    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@366
    move-result-object v13

    #@367
    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@369
    .line 1534
    move-object/from16 v0, p0

    #@36b
    move-wide/from16 v1, p5

    #@36d
    move-object/from16 v3, p7

    #@36f
    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    #@372
    goto/16 :goto_4

    #@374
    .line 1544
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :sswitch_e
    const-string/jumbo v13, "org.apache.xml.utils.res.XResources"

    #@377
    new-instance v14, Ljava/util/Locale;

    #@379
    const-string/jumbo v15, "cy"

    #@37c
    const-string/jumbo v16, ""

    #@37f
    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@382
    .line 1543
    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    #@385
    move-result-object v12

    #@386
    .line 1546
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    if-eqz v7, :cond_d

    #@388
    .line 1547
    const-string/jumbo v13, "traditional"

    #@38b
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38e
    move-result v13

    #@38f
    .line 1546
    if-eqz v13, :cond_d

    #@391
    .line 1548
    move-object/from16 v0, p0

    #@393
    move-wide/from16 v1, p5

    #@395
    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    #@398
    move-result-object v13

    #@399
    move-object/from16 v0, p7

    #@39b
    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@39e
    goto/16 :goto_4

    #@3a0
    .line 1551
    :cond_d
    const-string/jumbo v13, "alphabet"

    #@3a3
    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@3a6
    move-result-object v13

    #@3a7
    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@3a9
    .line 1550
    move-object/from16 v0, p0

    #@3ab
    move-wide/from16 v1, p5

    #@3ad
    move-object/from16 v3, p7

    #@3af
    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    #@3b2
    goto/16 :goto_4

    #@3b4
    .line 1558
    .restart local v5    # "formatter":Ljava/text/DecimalFormat;
    .local v12, "thisBundle":Lorg/apache/xml/utils/res/XResourceBundle;
    :cond_e
    const-wide/16 v14, 0x0

    #@3b6
    invoke-virtual {v5, v14, v15}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    #@3b9
    move-result-object v10

    #@3ba
    .restart local v10    # "padString":Ljava/lang/String;
    goto/16 :goto_1

    #@3bc
    .line 1559
    :cond_f
    move-wide/from16 v0, p5

    #@3be
    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    #@3c1
    move-result-object v9

    #@3c2
    .restart local v9    # "numString":Ljava/lang/String;
    goto/16 :goto_2

    #@3c4
    .line 1567
    .restart local v6    # "k":I
    .restart local v8    # "nPadding":I
    :cond_10
    move-object/from16 v0, p7

    #@3c6
    invoke-virtual {v0, v9}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@3c9
    goto/16 :goto_4

    #@3cb
    .line 1334
    nop

    #@3cc
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x49 -> :sswitch_2
        0x61 -> :sswitch_1
        0x69 -> :sswitch_3
        0x3b1 -> :sswitch_d
        0x430 -> :sswitch_e
        0x5d0 -> :sswitch_b
        0xe51 -> :sswitch_a
        0x10d0 -> :sswitch_c
        0x3042 -> :sswitch_4
        0x3044 -> :sswitch_5
        0x30a2 -> :sswitch_6
        0x30a4 -> :sswitch_7
        0x4e00 -> :sswitch_8
        0x58f9 -> :sswitch_9
    .end sparse-switch
.end method

.method private getNumberFormatter(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/text/DecimalFormat;
    .locals 13
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "contextNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 1087
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    #@5
    move-result-object v7

    #@6
    invoke-virtual {v7}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    #@9
    move-result-object v4

    #@a
    check-cast v4, Ljava/util/Locale;

    #@c
    .line 1090
    .local v4, "locale":Ljava/util/Locale;
    const/4 v3, 0x0

    #@d
    .line 1098
    .local v3, "formatter":Ljava/text/DecimalFormat;
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    #@f
    if-eqz v7, :cond_2

    #@11
    .line 1099
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    #@13
    .line 1100
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@16
    move-result-object v8

    #@17
    .line 1099
    invoke-virtual {v7, v8, p2, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 1105
    :goto_0
    if-eqz v1, :cond_0

    #@1d
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    #@1f
    invoke-virtual {v7}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    #@22
    move-result v7

    #@23
    if-eqz v7, :cond_3

    #@25
    .line 1115
    :cond_0
    :goto_1
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    #@27
    if-eqz v7, :cond_4

    #@29
    .line 1116
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    #@2b
    .line 1117
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@2e
    move-result-object v8

    #@2f
    .line 1116
    invoke-virtual {v7, v8, p2, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    .line 1120
    :goto_2
    if-eqz v1, :cond_1

    #@35
    if-eqz v5, :cond_1

    #@37
    .line 1122
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@3a
    move-result v7

    #@3b
    if-lez v7, :cond_1

    #@3d
    .line 1126
    :try_start_0
    invoke-static {v4}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@40
    move-result-object v7

    #@41
    move-object v0, v7

    #@42
    check-cast v0, Ljava/text/DecimalFormat;

    #@44
    move-object v3, v0

    #@45
    .line 1128
    .local v3, "formatter":Ljava/text/DecimalFormat;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@4c
    move-result v7

    #@4d
    .line 1127
    invoke-virtual {v3, v7}, Ljava/text/DecimalFormat;->setGroupingSize(I)V

    #@50
    .line 1130
    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    #@53
    move-result-object v6

    #@54
    .line 1131
    .local v6, "symbols":Ljava/text/DecimalFormatSymbols;
    const/4 v7, 0x0

    #@55
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    #@58
    move-result v7

    #@59
    invoke-virtual {v6, v7}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    #@5c
    .line 1132
    invoke-virtual {v3, v6}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    #@5f
    .line 1133
    const/4 v7, 0x1

    #@60
    invoke-virtual {v3, v7}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    .line 1141
    .end local v3    # "formatter":Ljava/text/DecimalFormat;
    .end local v6    # "symbols":Ljava/text/DecimalFormatSymbols;
    :cond_1
    :goto_3
    return-object v3

    #@64
    .line 1100
    .local v3, "formatter":Ljava/text/DecimalFormat;
    :cond_2
    const/4 v1, 0x0

    #@65
    .local v1, "digitGroupSepValue":Ljava/lang/String;
    goto :goto_0

    #@66
    .line 1106
    .end local v1    # "digitGroupSepValue":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@69
    move-result v7

    #@6a
    if-eq v7, v12, :cond_0

    #@6c
    .line 1108
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    #@6f
    move-result-object v7

    #@70
    .line 1109
    const-string/jumbo v8, "WG_ILLEGAL_ATTRIBUTE_VALUE"

    #@73
    .line 1110
    const/4 v9, 0x2

    #@74
    new-array v9, v9, [Ljava/lang/Object;

    #@76
    const-string/jumbo v10, "name"

    #@79
    aput-object v10, v9, v11

    #@7b
    iget-object v10, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    #@7d
    invoke-virtual {v10}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    #@80
    move-result-object v10

    #@81
    aput-object v10, v9, v12

    #@83
    .line 1108
    invoke-virtual {v7, p0, v8, v9}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    #@86
    goto :goto_1

    #@87
    .line 1117
    :cond_4
    const/4 v5, 0x0

    #@88
    .local v5, "nDigitsPerGroupValue":Ljava/lang/String;
    goto :goto_2

    #@89
    .line 1136
    .end local v3    # "formatter":Ljava/text/DecimalFormat;
    .end local v5    # "nDigitsPerGroupValue":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@8a
    .line 1137
    .local v2, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v3, v11}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    #@8d
    goto :goto_3
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 4
    .param p1, "newChild"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 586
    const-string/jumbo v0, "ER_CANNOT_ADD"

    #@3
    .line 587
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    .line 588
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemNumber;->getNodeName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    const/4 v3, 0x1

    #@12
    aput-object v2, v1, v3

    #@14
    .line 586
    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemNumber;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@17
    .line 591
    const/4 v0, 0x0

    #@18
    return-object v0
.end method

.method public callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 2
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;
    .param p2, "callAttrs"    # Z

    #@0
    .prologue
    .line 1978
    if-eqz p2, :cond_7

    #@2
    .line 1980
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1981
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    #@8
    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    #@e
    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@11
    .line 1982
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 1983
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    #@17
    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    #@1a
    move-result-object v0

    #@1b
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    #@1d
    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@20
    .line 1984
    :cond_1
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 1985
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    #@26
    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    #@29
    move-result-object v0

    #@2a
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    #@2c
    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@2f
    .line 1987
    :cond_2
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    #@31
    if-eqz v0, :cond_3

    #@33
    .line 1988
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    #@35
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    #@38
    .line 1989
    :cond_3
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    #@3a
    if-eqz v0, :cond_4

    #@3c
    .line 1990
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    #@3e
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    #@41
    .line 1991
    :cond_4
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    #@43
    if-eqz v0, :cond_5

    #@45
    .line 1992
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    #@47
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    #@4a
    .line 1993
    :cond_5
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    #@4c
    if-eqz v0, :cond_6

    #@4e
    .line 1994
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    #@50
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    #@53
    .line 1995
    :cond_6
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    #@55
    if-eqz v0, :cond_7

    #@57
    .line 1996
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    #@59
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    #@5c
    .line 1999
    :cond_7
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    #@5f
    .line 1976
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 4
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 504
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 505
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    #@6
    move-result-object v0

    #@7
    .line 506
    .local v0, "cstate":Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    #@a
    move-result-object v1

    #@b
    .line 507
    .local v1, "vnames":Ljava/util/Vector;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 508
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    #@11
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@14
    move-result v3

    #@15
    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    #@18
    .line 509
    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 510
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    #@1e
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@21
    move-result v3

    #@22
    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    #@25
    .line 511
    :cond_1
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    #@27
    if-eqz v2, :cond_2

    #@29
    .line 512
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    #@2b
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@2e
    move-result v3

    #@2f
    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    #@32
    .line 513
    :cond_2
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    #@34
    if-eqz v2, :cond_3

    #@36
    .line 514
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    #@38
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@3b
    move-result v3

    #@3c
    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    #@3f
    .line 515
    :cond_3
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    #@41
    if-eqz v2, :cond_4

    #@43
    .line 516
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    #@45
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@48
    move-result v3

    #@49
    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    #@4c
    .line 517
    :cond_4
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    #@4e
    if-eqz v2, :cond_5

    #@50
    .line 518
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    #@52
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@55
    move-result v3

    #@56
    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    #@59
    .line 519
    :cond_5
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    #@5b
    if-eqz v2, :cond_6

    #@5d
    .line 520
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    #@5f
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@62
    move-result v3

    #@63
    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    #@66
    .line 521
    :cond_6
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    #@68
    if-eqz v2, :cond_7

    #@6a
    .line 522
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    #@6c
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@6f
    move-result v3

    #@70
    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    #@73
    .line 502
    :cond_7
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 7
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 560
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@7
    move-result v2

    #@8
    .line 561
    .local v2, "sourceNode":I
    invoke-virtual {p0, p1, v2}, Lorg/apache/xalan/templates/ElemNumber;->getCountString(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 565
    .local v0, "countString":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@13
    move-result-object v4

    #@14
    .line 566
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@17
    move-result v5

    #@18
    const/4 v6, 0x0

    #@19
    .line 565
    invoke-interface {v3, v4, v6, v5}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 557
    return-void

    #@1d
    .line 569
    :catch_0
    move-exception v1

    #@1e
    .line 570
    .local v1, "se":Lorg/xml/sax/SAXException;
    new-instance v3, Ljavax/xml/transform/TransformerException;

    #@20
    invoke-direct {v3, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@23
    throw v3
.end method

.method findAncestor(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I
    .locals 6
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "fromMatchPattern"    # Lorg/apache/xpath/XPath;
    .param p3, "countMatchPattern"    # Lorg/apache/xpath/XPath;
    .param p4, "context"    # I
    .param p5, "namespaceContext"    # Lorg/apache/xalan/templates/ElemNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@2
    .line 615
    invoke-virtual {p1, p4}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@5
    move-result-object v0

    #@6
    .line 616
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    :goto_0
    const/4 v1, -0x1

    #@7
    if-eq v1, p4, :cond_0

    #@9
    .line 618
    if-eqz p2, :cond_1

    #@b
    .line 620
    invoke-virtual {p2, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    #@e
    move-result-wide v2

    #@f
    cmpl-double v1, v2, v4

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 641
    :cond_0
    return p4

    #@14
    .line 629
    :cond_1
    if-eqz p3, :cond_2

    #@16
    .line 631
    invoke-virtual {p3, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    #@19
    move-result-wide v2

    #@1a
    cmpl-double v1, v2, v4

    #@1c
    if-nez v1, :cond_0

    #@1e
    .line 638
    :cond_2
    invoke-interface {v0, p4}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    #@21
    move-result p4

    #@22
    goto :goto_0
.end method

.method formatNumberList(Lorg/apache/xalan/transformer/TransformerImpl;[JI)Ljava/lang/String;
    .locals 20
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "list"    # [J
    .param p3, "contextNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1163
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    #@3
    move-result-object v10

    #@4
    .line 1167
    .local v10, "formattedNumber":Lorg/apache/xml/utils/FastStringBuffer;
    :try_start_0
    move-object/from16 v0, p2

    #@6
    array-length v0, v0

    #@7
    move/from16 v18, v0

    #@9
    .local v18, "nNumbers":I
    const/4 v7, 0x1

    #@a
    .line 1168
    .local v7, "numberWidth":I
    const/16 v6, 0x31

    #@c
    .line 1169
    .local v6, "numberType":C
    const/16 v17, 0x0

    #@e
    .local v17, "lastSepString":Ljava/lang/String;
    const/4 v11, 0x0

    #@f
    .line 1178
    .local v11, "formatTokenString":Ljava/lang/String;
    const-string/jumbo v16, "."

    #@12
    .line 1179
    .local v16, "lastSep":Ljava/lang/String;
    const/4 v15, 0x1

    #@13
    .line 1181
    .local v15, "isFirstToken":Z
    move-object/from16 v0, p0

    #@15
    iget-object v3, v0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    #@17
    if-eqz v3, :cond_3

    #@19
    .line 1182
    move-object/from16 v0, p0

    #@1b
    iget-object v3, v0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    #@1d
    .line 1183
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@20
    move-result-object v4

    #@21
    .line 1182
    move/from16 v0, p3

    #@23
    move-object/from16 v1, p0

    #@25
    invoke-virtual {v3, v4, v0, v1}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    #@28
    move-result-object v13

    #@29
    .line 1185
    :goto_0
    if-nez v13, :cond_0

    #@2b
    .line 1186
    const-string/jumbo v13, "1"

    #@2e
    .line 1189
    :cond_0
    new-instance v12, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;

    #@30
    move-object/from16 v0, p0

    #@32
    invoke-direct {v12, v0, v13}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;-><init>(Lorg/apache/xalan/templates/ElemNumber;Ljava/lang/String;)V

    #@35
    .line 1193
    .local v12, "formatTokenizer":Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;
    const/4 v14, 0x0

    #@36
    .end local v6    # "numberType":C
    .end local v11    # "formatTokenString":Ljava/lang/String;
    .end local v17    # "lastSepString":Ljava/lang/String;
    .local v14, "i":I
    :goto_1
    move/from16 v0, v18

    #@38
    if-ge v14, v0, :cond_9

    #@3a
    .line 1197
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->hasMoreTokens()Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_1

    #@40
    .line 1199
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    .line 1204
    .local v2, "formatToken":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@47
    move-result v3

    #@48
    add-int/lit8 v3, v3, -0x1

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@4d
    move-result v3

    #@4e
    .line 1203
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    #@51
    move-result v3

    #@52
    if-eqz v3, :cond_4

    #@54
    .line 1206
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@57
    move-result v7

    #@58
    .line 1207
    add-int/lit8 v3, v7, -0x1

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@5d
    move-result v6

    #@5e
    .line 1257
    .end local v2    # "formatToken":Ljava/lang/String;
    :cond_1
    :goto_2
    if-eqz v11, :cond_8

    #@60
    if-eqz v15, :cond_8

    #@62
    .line 1259
    invoke-virtual {v10, v11}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@65
    .line 1265
    :cond_2
    :goto_3
    aget-wide v8, p2, v14

    #@67
    move-object/from16 v3, p0

    #@69
    move-object/from16 v4, p1

    #@6b
    move/from16 v5, p3

    #@6d
    .line 1264
    invoke-direct/range {v3 .. v10}, Lorg/apache/xalan/templates/ElemNumber;->getFormattedNumber(Lorg/apache/xalan/transformer/TransformerImpl;ICIJLorg/apache/xml/utils/FastStringBuffer;)V

    #@70
    .line 1267
    const/4 v15, 0x0

    #@71
    .line 1193
    add-int/lit8 v14, v14, 0x1

    #@73
    goto :goto_1

    #@74
    .line 1183
    .end local v12    # "formatTokenizer":Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;
    .end local v14    # "i":I
    .restart local v6    # "numberType":C
    .restart local v11    # "formatTokenString":Ljava/lang/String;
    .restart local v17    # "lastSepString":Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    #@75
    .local v13, "formatValue":Ljava/lang/String;
    goto :goto_0

    #@76
    .line 1212
    .end local v6    # "numberType":C
    .end local v11    # "formatTokenString":Ljava/lang/String;
    .end local v13    # "formatValue":Ljava/lang/String;
    .end local v17    # "lastSepString":Ljava/lang/String;
    .restart local v2    # "formatToken":Ljava/lang/String;
    .restart local v12    # "formatTokenizer":Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;
    .restart local v14    # "i":I
    :cond_4
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->isLetterOrDigitAhead()Z

    #@79
    move-result v3

    #@7a
    if-eqz v3, :cond_7

    #@7c
    .line 1214
    move-object v11, v2

    #@7d
    .line 1219
    .local v11, "formatTokenString":Ljava/lang/String;
    :goto_4
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextIsSep()Z

    #@80
    move-result v3

    #@81
    if-eqz v3, :cond_5

    #@83
    .line 1221
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    #@86
    move-result-object v2

    #@87
    .line 1222
    new-instance v3, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v3

    #@90
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v3

    #@94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v11

    #@98
    goto :goto_4

    #@99
    .line 1229
    :cond_5
    if-nez v15, :cond_6

    #@9b
    .line 1230
    move-object/from16 v16, v11

    #@9d
    .line 1233
    :cond_6
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    #@a0
    move-result-object v2

    #@a1
    .line 1234
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@a4
    move-result v7

    #@a5
    .line 1235
    add-int/lit8 v3, v7, -0x1

    #@a7
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@aa
    move-result v6

    #@ab
    .local v6, "numberType":C
    goto :goto_2

    #@ac
    .line 1242
    .end local v6    # "numberType":C
    .end local v11    # "formatTokenString":Ljava/lang/String;
    :cond_7
    move-object/from16 v17, v2

    #@ae
    .line 1245
    .local v17, "lastSepString":Ljava/lang/String;
    :goto_5
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->hasMoreTokens()Z

    #@b1
    move-result v3

    #@b2
    if-eqz v3, :cond_1

    #@b4
    .line 1247
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    #@b7
    move-result-object v2

    #@b8
    .line 1248
    new-instance v3, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    move-object/from16 v0, v17

    #@bf
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v3

    #@c3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v3

    #@c7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v17

    #@cb
    goto :goto_5

    #@cc
    .line 1261
    .end local v2    # "formatToken":Ljava/lang/String;
    .end local v17    # "lastSepString":Ljava/lang/String;
    :cond_8
    if-eqz v16, :cond_2

    #@ce
    if-nez v15, :cond_2

    #@d0
    .line 1262
    move-object/from16 v0, v16

    #@d2
    invoke-virtual {v10, v0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d5
    goto :goto_3

    #@d6
    .line 1290
    .end local v7    # "numberWidth":I
    .end local v12    # "formatTokenizer":Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;
    .end local v14    # "i":I
    .end local v15    # "isFirstToken":Z
    .end local v16    # "lastSep":Ljava/lang/String;
    .end local v18    # "nNumbers":I
    :catchall_0
    move-exception v3

    #@d7
    .line 1291
    invoke-static {v10}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@da
    .line 1290
    throw v3

    #@db
    .line 1272
    .restart local v7    # "numberWidth":I
    .restart local v12    # "formatTokenizer":Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;
    .restart local v14    # "i":I
    .restart local v15    # "isFirstToken":Z
    .restart local v16    # "lastSep":Ljava/lang/String;
    .restart local v18    # "nNumbers":I
    :cond_9
    :goto_6
    :try_start_1
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->isLetterOrDigitAhead()Z

    #@de
    move-result v3

    #@df
    if-eqz v3, :cond_a

    #@e1
    .line 1274
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    #@e4
    goto :goto_6

    #@e5
    .line 1277
    :cond_a
    if-eqz v17, :cond_b

    #@e7
    .line 1278
    move-object/from16 v0, v17

    #@e9
    invoke-virtual {v10, v0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@ec
    .line 1280
    :cond_b
    :goto_7
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->hasMoreTokens()Z

    #@ef
    move-result v3

    #@f0
    if-eqz v3, :cond_c

    #@f2
    .line 1282
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    #@f5
    move-result-object v2

    #@f6
    .line 1284
    .restart local v2    # "formatToken":Ljava/lang/String;
    invoke-virtual {v10, v2}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@f9
    goto :goto_7

    #@fa
    .line 1287
    .end local v2    # "formatToken":Ljava/lang/String;
    :cond_c
    invoke-virtual {v10}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@fd
    move-result-object v19

    #@fe
    .line 1291
    .local v19, "numStr":Ljava/lang/String;
    invoke-static {v10}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@101
    .line 1294
    return-object v19
.end method

.method public getCount()Lorg/apache/xpath/XPath;
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    #@2
    return-object v0
.end method

.method getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;
    .locals 10
    .param p1, "support"    # Lorg/apache/xpath/XPathContext;
    .param p2, "contextNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 722
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    #@3
    .line 723
    .local v4, "countMatchPattern":Lorg/apache/xpath/XPath;
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@6
    move-result-object v3

    #@7
    .line 724
    .local v3, "dtm":Lorg/apache/xml/dtm/DTM;
    if-nez v4, :cond_0

    #@9
    .line 726
    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@c
    move-result v1

    #@d
    packed-switch v1, :pswitch_data_0

    #@10
    .line 770
    :pswitch_0
    const/4 v4, 0x0

    #@11
    .line 774
    .end local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    :cond_0
    :goto_0
    return-object v4

    #@12
    .line 731
    .restart local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    :pswitch_1
    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    if-nez v1, :cond_1

    #@18
    .line 732
    new-instance v0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;

    #@1a
    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@1d
    move-result-object v2

    #@1e
    const/4 v5, 0x0

    #@1f
    move-object v1, p0

    #@20
    move v4, p2

    #@21
    invoke-direct/range {v0 .. v5}, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;-><init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTM;IZ)V

    #@24
    .line 737
    .end local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    .local v0, "resolver":Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;
    :goto_1
    new-instance v4, Lorg/apache/xpath/XPath;

    #@26
    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    .line 738
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@2d
    move-result-object v9

    #@2e
    move-object v6, p0

    #@2f
    move-object v7, v0

    #@30
    .line 737
    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    #@33
    .line 739
    .restart local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    goto :goto_0

    #@34
    .line 734
    .end local v0    # "resolver":Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;
    :cond_1
    new-instance v0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;

    #@36
    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@39
    move-result-object v2

    #@3a
    move-object v1, p0

    #@3b
    move v4, p2

    #@3c
    move v5, v8

    #@3d
    invoke-direct/range {v0 .. v5}, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;-><init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTM;IZ)V

    #@40
    .end local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    .restart local v0    # "resolver":Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;
    goto :goto_1

    #@41
    .line 744
    .end local v0    # "resolver":Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;
    .restart local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    :pswitch_2
    new-instance v4, Lorg/apache/xpath/XPath;

    #@43
    .end local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    new-instance v1, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v2, "@"

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    .line 745
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@5e
    move-result-object v9

    #@5f
    move-object v6, p0

    #@60
    move-object v7, p0

    #@61
    .line 744
    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    #@64
    .line 746
    .restart local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    goto :goto_0

    #@65
    .line 751
    :pswitch_3
    new-instance v4, Lorg/apache/xpath/XPath;

    #@67
    .end local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    const-string/jumbo v5, "text()"

    #@6a
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@6d
    move-result-object v9

    #@6e
    move-object v6, p0

    #@6f
    move-object v7, p0

    #@70
    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    #@73
    .line 752
    .restart local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    goto :goto_0

    #@74
    .line 756
    :pswitch_4
    new-instance v4, Lorg/apache/xpath/XPath;

    #@76
    .end local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    const-string/jumbo v5, "comment()"

    #@79
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@7c
    move-result-object v9

    #@7d
    move-object v6, p0

    #@7e
    move-object v7, p0

    #@7f
    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    #@82
    .line 757
    .restart local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    goto :goto_0

    #@83
    .line 761
    :pswitch_5
    new-instance v4, Lorg/apache/xpath/XPath;

    #@85
    .end local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    const-string/jumbo v5, "/"

    #@88
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@8b
    move-result-object v9

    #@8c
    move-object v6, p0

    #@8d
    move-object v7, p0

    #@8e
    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    #@91
    .line 762
    .restart local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    goto :goto_0

    #@92
    .line 766
    :pswitch_6
    new-instance v4, Lorg/apache/xpath/XPath;

    #@94
    .end local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    new-instance v1, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v2, "pi("

    #@9c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v1

    #@a0
    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@a3
    move-result-object v2

    #@a4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v1

    #@a8
    .line 767
    const-string/jumbo v2, ")"

    #@ab
    .line 766
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v1

    #@af
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v5

    #@b3
    .line 767
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@b6
    move-result-object v9

    #@b7
    move-object v6, p0

    #@b8
    move-object v7, p0

    #@b9
    .line 766
    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    #@bc
    .line 768
    .restart local v4    # "countMatchPattern":Lorg/apache/xpath/XPath;
    goto/16 :goto_0

    #@be
    .line 726
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method getCountString(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/lang/String;
    .locals 20
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "sourceNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 791
    const/4 v13, 0x0

    #@1
    .line 792
    .local v13, "list":[J
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@4
    move-result-object v15

    #@5
    .line 793
    .local v15, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getCountersTable()Lorg/apache/xalan/transformer/CountersTable;

    #@8
    move-result-object v8

    #@9
    .line 795
    .local v8, "ctable":Lorg/apache/xalan/transformer/CountersTable;
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    #@d
    move-object/from16 v16, v0

    #@f
    if-eqz v16, :cond_5

    #@11
    .line 797
    move-object/from16 v0, p0

    #@13
    iget-object v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    #@15
    move-object/from16 v16, v0

    #@17
    move-object/from16 v0, v16

    #@19
    move/from16 v1, p2

    #@1b
    move-object/from16 v2, p0

    #@1d
    invoke-virtual {v0, v15, v1, v2}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    #@20
    move-result-object v5

    #@21
    .line 799
    .local v5, "countObj":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v5}, Lorg/apache/xpath/objects/XObject;->num()D

    #@24
    move-result-wide v16

    #@25
    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    #@27
    add-double v16, v16, v18

    #@29
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    #@2c
    move-result-wide v10

    #@2d
    .line 800
    .local v10, "d_count":D
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    #@30
    move-result v16

    #@31
    if-eqz v16, :cond_0

    #@33
    const-string/jumbo v16, "NaN"

    #@36
    return-object v16

    #@37
    .line 801
    :cond_0
    const-wide/16 v16, 0x0

    #@39
    cmpg-double v16, v10, v16

    #@3b
    if-gez v16, :cond_1

    #@3d
    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    #@40
    move-result v16

    #@41
    if-eqz v16, :cond_1

    #@43
    const-string/jumbo v16, "-Infinity"

    #@46
    return-object v16

    #@47
    .line 802
    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    #@4a
    move-result v16

    #@4b
    if-eqz v16, :cond_2

    #@4d
    const-string/jumbo v16, "Infinity"

    #@50
    return-object v16

    #@51
    .line 803
    :cond_2
    const-wide/16 v16, 0x0

    #@53
    cmpl-double v16, v10, v16

    #@55
    if-nez v16, :cond_3

    #@57
    const-string/jumbo v16, "0"

    #@5a
    return-object v16

    #@5b
    .line 805
    :cond_3
    double-to-long v6, v10

    #@5c
    .line 806
    .local v6, "count":J
    const/16 v16, 0x1

    #@5e
    move/from16 v0, v16

    #@60
    new-array v13, v0, [J

    #@62
    .line 807
    .local v13, "list":[J
    const/16 v16, 0x0

    #@64
    aput-wide v6, v13, v16

    #@66
    .line 838
    .end local v5    # "countObj":Lorg/apache/xpath/objects/XObject;
    .end local v6    # "count":J
    .end local v10    # "d_count":D
    .end local v13    # "list":[J
    :cond_4
    :goto_0
    if-eqz v13, :cond_8

    #@68
    .line 839
    move-object/from16 v0, p0

    #@6a
    move-object/from16 v1, p1

    #@6c
    move/from16 v2, p2

    #@6e
    invoke-virtual {v0, v1, v13, v2}, Lorg/apache/xalan/templates/ElemNumber;->formatNumberList(Lorg/apache/xalan/transformer/TransformerImpl;[JI)Ljava/lang/String;

    #@71
    move-result-object v16

    #@72
    .line 838
    :goto_1
    return-object v16

    #@73
    .line 812
    .local v13, "list":[J
    :cond_5
    move-object/from16 v0, p0

    #@75
    iget v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    #@77
    move/from16 v16, v0

    #@79
    const/16 v17, 0x3

    #@7b
    move/from16 v0, v17

    #@7d
    move/from16 v1, v16

    #@7f
    if-ne v0, v1, :cond_6

    #@81
    .line 814
    const/16 v16, 0x1

    #@83
    move/from16 v0, v16

    #@85
    new-array v13, v0, [J

    #@87
    .line 815
    .local v13, "list":[J
    move-object/from16 v0, p0

    #@89
    move/from16 v1, p2

    #@8b
    invoke-virtual {v8, v15, v0, v1}, Lorg/apache/xalan/transformer/CountersTable;->countNode(Lorg/apache/xpath/XPathContext;Lorg/apache/xalan/templates/ElemNumber;I)I

    #@8e
    move-result v16

    #@8f
    move/from16 v0, v16

    #@91
    int-to-long v0, v0

    #@92
    move-wide/from16 v16, v0

    #@94
    const/16 v18, 0x0

    #@96
    aput-wide v16, v13, v18

    #@98
    goto :goto_0

    #@99
    .line 821
    .local v13, "list":[J
    :cond_6
    move-object/from16 v0, p0

    #@9b
    iget v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    #@9d
    move/from16 v16, v0

    #@9f
    const/16 v17, 0x1

    #@a1
    move/from16 v0, v17

    #@a3
    move/from16 v1, v16

    #@a5
    if-ne v0, v1, :cond_7

    #@a7
    const/16 v16, 0x1

    #@a9
    .line 820
    :goto_2
    move-object/from16 v0, p0

    #@ab
    move/from16 v1, p2

    #@ad
    move/from16 v2, v16

    #@af
    invoke-virtual {v0, v15, v1, v2}, Lorg/apache/xalan/templates/ElemNumber;->getMatchingAncestors(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xml/utils/NodeVector;

    #@b2
    move-result-object v4

    #@b3
    .line 822
    .local v4, "ancestors":Lorg/apache/xml/utils/NodeVector;
    invoke-virtual {v4}, Lorg/apache/xml/utils/NodeVector;->size()I

    #@b6
    move-result v16

    #@b7
    add-int/lit8 v12, v16, -0x1

    #@b9
    .line 824
    .local v12, "lastIndex":I
    if-ltz v12, :cond_4

    #@bb
    .line 826
    add-int/lit8 v16, v12, 0x1

    #@bd
    move/from16 v0, v16

    #@bf
    new-array v13, v0, [J

    #@c1
    .line 828
    .local v13, "list":[J
    move v9, v12

    #@c2
    .local v9, "i":I
    :goto_3
    if-ltz v9, :cond_4

    #@c4
    .line 830
    invoke-virtual {v4, v9}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    #@c7
    move-result v14

    #@c8
    .line 832
    .local v14, "target":I
    sub-int v16, v12, v9

    #@ca
    move-object/from16 v0, p0

    #@cc
    invoke-virtual {v8, v15, v0, v14}, Lorg/apache/xalan/transformer/CountersTable;->countNode(Lorg/apache/xpath/XPathContext;Lorg/apache/xalan/templates/ElemNumber;I)I

    #@cf
    move-result v17

    #@d0
    move/from16 v0, v17

    #@d2
    int-to-long v0, v0

    #@d3
    move-wide/from16 v18, v0

    #@d5
    aput-wide v18, v13, v16

    #@d7
    .line 828
    add-int/lit8 v9, v9, -0x1

    #@d9
    goto :goto_3

    #@da
    .line 821
    .end local v4    # "ancestors":Lorg/apache/xml/utils/NodeVector;
    .end local v9    # "i":I
    .end local v12    # "lastIndex":I
    .end local v14    # "target":I
    .local v13, "list":[J
    :cond_7
    const/16 v16, 0x0

    #@dc
    goto :goto_2

    #@dd
    .line 839
    .end local v13    # "list":[J
    :cond_8
    const-string/jumbo v16, ""

    #@e0
    goto :goto_1
.end method

.method public getFormat()Lorg/apache/xalan/templates/AVT;
    .locals 1

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    return-object v0
.end method

.method public getFrom()Lorg/apache/xpath/XPath;
    .locals 1

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    #@2
    return-object v0
.end method

.method public getGroupingSeparator()Lorg/apache/xalan/templates/AVT;
    .locals 1

    #@0
    .prologue
    .line 444
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    return-object v0
.end method

.method public getGroupingSize()Lorg/apache/xalan/templates/AVT;
    .locals 1

    #@0
    .prologue
    .line 474
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    return-object v0
.end method

.method public getLang()Lorg/apache/xalan/templates/AVT;
    .locals 1

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    return-object v0
.end method

.method public getLetterValue()Lorg/apache/xalan/templates/AVT;
    .locals 1

    #@0
    .prologue
    .line 408
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    return-object v0
.end method

.method public getLevel()I
    .locals 1

    #@0
    .prologue
    .line 268
    iget v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    #@2
    return v0
.end method

.method getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;
    .locals 9
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "contextNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1037
    const/4 v7, 0x0

    #@2
    .line 1039
    .local v7, "locale":Ljava/util/Locale;
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1041
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@9
    move-result-object v8

    #@a
    .line 1042
    .local v8, "xctxt":Lorg/apache/xpath/XPathContext;
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    #@c
    invoke-virtual {v0, v8, p2, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    #@f
    move-result-object v6

    #@10
    .line 1044
    .local v6, "langValue":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@12
    .line 1050
    new-instance v7, Ljava/util/Locale;

    #@14
    .end local v7    # "locale":Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, ""

    #@1b
    invoke-direct {v7, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 1053
    .local v7, "locale":Ljava/util/Locale;
    if-nez v7, :cond_0

    #@20
    .line 1055
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v8, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@27
    move-result-object v1

    #@28
    invoke-interface {v1, p2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@2b
    move-result-object v3

    #@2c
    .line 1056
    const-string/jumbo v4, "WG_LOCALE_NOT_FOUND"

    #@2f
    .line 1057
    const/4 v1, 0x1

    #@30
    new-array v5, v1, [Ljava/lang/Object;

    #@32
    const/4 v1, 0x0

    #@33
    aput-object v6, v5, v1

    #@35
    move-object v1, p0

    #@36
    .line 1055
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    #@39
    .line 1059
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3c
    move-result-object v7

    #@3d
    .line 1068
    .end local v6    # "langValue":Ljava/lang/String;
    .end local v7    # "locale":Ljava/util/Locale;
    .end local v8    # "xctxt":Lorg/apache/xpath/XPathContext;
    :cond_0
    :goto_0
    return-object v7

    #@3e
    .line 1065
    .local v7, "locale":Ljava/util/Locale;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@41
    move-result-object v7

    #@42
    .local v7, "locale":Ljava/util/Locale;
    goto :goto_0
.end method

.method getMatchingAncestors(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xml/utils/NodeVector;
    .locals 8
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "node"    # I
    .param p3, "stopAtFirstFound"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@2
    .line 982
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    #@4
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@7
    move-result-object v3

    #@8
    invoke-direct {v0, v3}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    #@b
    .line 983
    .local v0, "ancestors":Lorg/apache/xpath/NodeSetDTM;
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;

    #@e
    move-result-object v1

    #@f
    .line 984
    .local v1, "countMatchPattern":Lorg/apache/xpath/XPath;
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@12
    move-result-object v2

    #@13
    .line 986
    .local v2, "dtm":Lorg/apache/xml/dtm/DTM;
    :goto_0
    const/4 v3, -0x1

    #@14
    if-eq v3, p2, :cond_0

    #@16
    .line 988
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 989
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    #@1c
    invoke-virtual {v3, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    #@1f
    move-result-wide v4

    #@20
    cmpl-double v3, v4, v6

    #@22
    if-eqz v3, :cond_1

    #@24
    .line 999
    if-nez p3, :cond_1

    #@26
    .line 1019
    :cond_0
    return-object v0

    #@27
    .line 1003
    :cond_1
    if-nez v1, :cond_2

    #@29
    .line 1004
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2b
    .line 1005
    const-string/jumbo v4, "Programmers error! countMatchPattern should never be null!"

    #@2e
    .line 1004
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@31
    .line 1007
    :cond_2
    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    #@34
    move-result-wide v4

    #@35
    cmpl-double v3, v4, v6

    #@37
    if-eqz v3, :cond_3

    #@39
    .line 1010
    invoke-virtual {v0, p2}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    #@3c
    .line 1012
    if-nez p3, :cond_0

    #@3e
    .line 1016
    :cond_3
    invoke-interface {v2, p2}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    #@41
    move-result p2

    #@42
    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 544
    const-string/jumbo v0, "number"

    #@3
    return-object v0
.end method

.method public getPreviousNode(Lorg/apache/xpath/XPathContext;I)I
    .locals 12
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/high16 v10, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@2
    const/4 v8, -0x1

    #@3
    .line 856
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;

    #@6
    move-result-object v1

    #@7
    .line 857
    .local v1, "countMatchPattern":Lorg/apache/xpath/XPath;
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@a
    move-result-object v2

    #@b
    .line 859
    .local v2, "dtm":Lorg/apache/xml/dtm/DTM;
    iget v5, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    #@d
    const/4 v6, 0x3

    #@e
    if-ne v6, v5, :cond_7

    #@10
    .line 861
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    #@12
    .line 866
    .local v3, "fromMatchPattern":Lorg/apache/xpath/XPath;
    :cond_0
    if-eq v8, p2, :cond_2

    #@14
    .line 872
    invoke-interface {v2, p2}, Lorg/apache/xml/dtm/DTM;->getPreviousSibling(I)I

    #@17
    move-result v4

    #@18
    .line 874
    .local v4, "next":I
    if-ne v8, v4, :cond_5

    #@1a
    .line 876
    invoke-interface {v2, p2}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    #@1d
    move-result v4

    #@1e
    .line 878
    if-eq v8, v4, :cond_4

    #@20
    if-eqz v3, :cond_3

    #@22
    invoke-virtual {v3, p1, v4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    #@25
    move-result-wide v6

    #@26
    cmpl-double v5, v6, v10

    #@28
    if-eqz v5, :cond_3

    #@2a
    .line 882
    :cond_1
    const/4 p2, -0x1

    #@2b
    .line 929
    .end local v3    # "fromMatchPattern":Lorg/apache/xpath/XPath;
    .end local v4    # "next":I
    :cond_2
    :goto_0
    return p2

    #@2c
    .line 880
    .restart local v3    # "fromMatchPattern":Lorg/apache/xpath/XPath;
    .restart local v4    # "next":I
    :cond_3
    invoke-interface {v2, v4}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@2f
    move-result v5

    #@30
    const/16 v6, 0x9

    #@32
    if-eq v5, v6, :cond_1

    #@34
    .line 902
    :cond_4
    move p2, v4

    #@35
    .line 904
    if-eq v8, p2, :cond_0

    #@37
    .line 905
    if-eqz v1, :cond_2

    #@39
    .line 906
    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    #@3c
    move-result-wide v6

    #@3d
    cmpl-double v5, v6, v10

    #@3f
    if-eqz v5, :cond_0

    #@41
    goto :goto_0

    #@42
    .line 891
    :cond_5
    move v0, v4

    #@43
    .line 893
    .local v0, "child":I
    :cond_6
    :goto_1
    if-eq v8, v0, :cond_4

    #@45
    .line 895
    invoke-interface {v2, v4}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    #@48
    move-result v0

    #@49
    .line 897
    if-eq v8, v0, :cond_6

    #@4b
    .line 898
    move v4, v0

    #@4c
    goto :goto_1

    #@4d
    .line 915
    .end local v0    # "child":I
    .end local v3    # "fromMatchPattern":Lorg/apache/xpath/XPath;
    .end local v4    # "next":I
    :cond_7
    if-eq v8, p2, :cond_2

    #@4f
    .line 917
    invoke-interface {v2, p2}, Lorg/apache/xml/dtm/DTM;->getPreviousSibling(I)I

    #@52
    move-result p2

    #@53
    .line 919
    if-eq v8, p2, :cond_7

    #@55
    .line 920
    if-eqz v1, :cond_2

    #@57
    .line 921
    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    #@5a
    move-result-wide v6

    #@5b
    cmpl-double v5, v6, v10

    #@5d
    if-eqz v5, :cond_7

    #@5f
    goto :goto_0
.end method

.method public getTargetNode(Lorg/apache/xpath/XPathContext;I)I
    .locals 7
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "sourceNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 946
    const/4 v6, -0x1

    #@1
    .line 947
    .local v6, "target":I
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;

    #@4
    move-result-object v3

    #@5
    .line 949
    .local v3, "countMatchPattern":Lorg/apache/xpath/XPath;
    iget v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    #@7
    const/4 v1, 0x3

    #@8
    if-ne v1, v0, :cond_0

    #@a
    .line 951
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    #@c
    move-object v0, p0

    #@d
    move-object v1, p1

    #@e
    move v4, p2

    #@f
    move-object v5, p0

    #@10
    invoke-direct/range {v0 .. v5}, Lorg/apache/xalan/templates/ElemNumber;->findPrecedingOrAncestorOrSelf(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I

    #@13
    move-result v6

    #@14
    .line 961
    :goto_0
    return v6

    #@15
    .line 957
    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    #@17
    move-object v0, p0

    #@18
    move-object v1, p1

    #@19
    move v4, p2

    #@1a
    move-object v5, p0

    #@1b
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/ElemNumber;->findAncestor(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I

    #@1e
    move-result v6

    #@1f
    goto :goto_0
.end method

.method public getValue()Lorg/apache/xpath/XPath;
    .locals 1

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    #@2
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 534
    const/16 v0, 0x23

    #@2
    return v0
.end method

.method getZeroString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1577
    const-string/jumbo v0, "0"

    #@3
    return-object v0
.end method

.method protected int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 15
    .param p1, "val"    # J
    .param p3, "aTable"    # Lorg/apache/xml/utils/res/CharArrayWrapper;
    .param p4, "stringBuf"    # Lorg/apache/xml/utils/FastStringBuffer;

    #@0
    .prologue
    .line 1624
    invoke-virtual/range {p3 .. p3}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    #@3
    move-result v9

    #@4
    .line 1625
    .local v9, "radix":I
    new-array v10, v9, [C

    #@6
    .line 1630
    .local v10, "table":[C
    const/4 v5, 0x0

    #@7
    .local v5, "i":I
    :goto_0
    add-int/lit8 v11, v9, -0x1

    #@9
    if-ge v5, v11, :cond_0

    #@b
    .line 1632
    add-int/lit8 v11, v5, 0x1

    #@d
    move-object/from16 v0, p3

    #@f
    invoke-virtual {v0, v5}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    #@12
    move-result v12

    #@13
    aput-char v12, v10, v11

    #@15
    .line 1630
    add-int/lit8 v5, v5, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1635
    :cond_0
    move-object/from16 v0, p3

    #@1a
    invoke-virtual {v0, v5}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    #@1d
    move-result v11

    #@1e
    const/4 v12, 0x0

    #@1f
    aput-char v11, v10, v12

    #@21
    .line 1640
    const/16 v11, 0x64

    #@23
    new-array v2, v11, [C

    #@25
    .line 1648
    .local v2, "buf":[C
    array-length v11, v2

    #@26
    add-int/lit8 v3, v11, -0x1

    #@28
    .line 1651
    .local v3, "charPos":I
    const/4 v8, 0x1

    #@29
    .line 1677
    .local v8, "lookupIndex":I
    const-wide/16 v6, 0x0

    #@2b
    .local v6, "correction":J
    move v4, v3

    #@2c
    .line 1687
    .end local v3    # "charPos":I
    .local v4, "charPos":I
    :goto_1
    if-eqz v8, :cond_1

    #@2e
    const-wide/16 v12, 0x0

    #@30
    cmp-long v11, v6, v12

    #@32
    if-eqz v11, :cond_3

    #@34
    add-int/lit8 v11, v9, -0x1

    #@36
    if-ne v8, v11, :cond_3

    #@38
    .line 1688
    :cond_1
    add-int/lit8 v11, v9, -0x1

    #@3a
    .line 1687
    :goto_2
    int-to-long v6, v11

    #@3b
    .line 1691
    add-long v12, p1, v6

    #@3d
    long-to-int v11, v12

    #@3e
    rem-int v8, v11, v9

    #@40
    .line 1694
    int-to-long v12, v9

    #@41
    div-long p1, p1, v12

    #@43
    .line 1697
    if-nez v8, :cond_4

    #@45
    const-wide/16 v12, 0x0

    #@47
    cmp-long v11, p1, v12

    #@49
    if-nez v11, :cond_4

    #@4b
    move v3, v4

    #@4c
    .line 1705
    .end local v4    # "charPos":I
    .restart local v3    # "charPos":I
    :cond_2
    add-int/lit8 v11, v3, 0x1

    #@4e
    array-length v12, v2

    #@4f
    sub-int/2addr v12, v3

    #@50
    add-int/lit8 v12, v12, -0x1

    #@52
    move-object/from16 v0, p4

    #@54
    invoke-virtual {v0, v2, v11, v12}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    #@57
    .line 1621
    return-void

    #@58
    .line 1688
    .end local v3    # "charPos":I
    .restart local v4    # "charPos":I
    :cond_3
    const/4 v11, 0x0

    #@59
    goto :goto_2

    #@5a
    .line 1701
    :cond_4
    add-int/lit8 v3, v4, -0x1

    #@5c
    .end local v4    # "charPos":I
    .restart local v3    # "charPos":I
    aget-char v11, v10, v8

    #@5e
    aput-char v11, v2, v4

    #@60
    .line 1703
    const-wide/16 v12, 0x0

    #@62
    cmp-long v11, p1, v12

    #@64
    if-lez v11, :cond_2

    #@66
    move v4, v3

    #@67
    .end local v3    # "charPos":I
    .restart local v4    # "charPos":I
    goto :goto_1
.end method

.method protected int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;
    .locals 5
    .param p1, "val"    # J
    .param p3, "table"    # Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@0
    .prologue
    .line 1595
    invoke-virtual {p3}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    #@3
    move-result v0

    #@4
    .line 1598
    .local v0, "radix":I
    int-to-long v2, v0

    #@5
    cmp-long v1, p1, v2

    #@7
    if-lez v1, :cond_0

    #@9
    .line 1600
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemNumber;->getZeroString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 1603
    :cond_0
    new-instance v1, Ljava/lang/Character;

    #@10
    long-to-int v2, p1

    #@11
    add-int/lit8 v2, v2, -0x1

    #@13
    invoke-virtual {p3, v2}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    #@16
    move-result v2

    #@17
    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    #@1a
    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method protected long2roman(JZ)Ljava/lang/String;
    .locals 7
    .param p1, "val"    # J
    .param p3, "prefixesAreOK"    # Z

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 1933
    cmp-long v2, p1, v4

    #@4
    if-gtz v2, :cond_0

    #@6
    .line 1935
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemNumber;->getZeroString()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    return-object v2

    #@b
    .line 1938
    :cond_0
    const-string/jumbo v1, ""

    #@e
    .line 1939
    .local v1, "roman":Ljava/lang/String;
    const/4 v0, 0x0

    #@f
    .line 1941
    .local v0, "place":I
    const-wide/16 v2, 0xf9f

    #@11
    cmp-long v2, p1, v2

    #@13
    if-gtz v2, :cond_4

    #@15
    .line 1945
    :cond_1
    :goto_0
    sget-object v2, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    #@17
    aget-object v2, v2, v0

    #@19
    iget-wide v2, v2, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postValue:J

    #@1b
    cmp-long v2, p1, v2

    #@1d
    if-ltz v2, :cond_2

    #@1f
    .line 1947
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    sget-object v3, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    #@2a
    aget-object v3, v3, v0

    #@2c
    iget-object v3, v3, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postLetter:Ljava/lang/String;

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 1948
    sget-object v2, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    #@38
    aget-object v2, v2, v0

    #@3a
    iget-wide v2, v2, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postValue:J

    #@3c
    sub-long/2addr p1, v2

    #@3d
    goto :goto_0

    #@3e
    .line 1951
    :cond_2
    if-eqz p3, :cond_3

    #@40
    .line 1953
    sget-object v2, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    #@42
    aget-object v2, v2, v0

    #@44
    iget-wide v2, v2, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preValue:J

    #@46
    cmp-long v2, p1, v2

    #@48
    if-ltz v2, :cond_3

    #@4a
    .line 1955
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    sget-object v3, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    #@55
    aget-object v3, v3, v0

    #@57
    iget-object v3, v3, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preLetter:Ljava/lang/String;

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    .line 1956
    sget-object v2, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    #@63
    aget-object v2, v2, v0

    #@65
    iget-wide v2, v2, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preValue:J

    #@67
    sub-long/2addr p1, v2

    #@68
    .line 1960
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@6a
    .line 1962
    cmp-long v2, p1, v4

    #@6c
    if-gtz v2, :cond_1

    #@6e
    .line 1969
    :goto_1
    return-object v1

    #@6f
    .line 1966
    :cond_4
    const-string/jumbo v1, "#error"

    #@72
    goto :goto_1
.end method

.method public setCount(Lorg/apache/xpath/XPath;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xpath/XPath;

    #@0
    .prologue
    .line 151
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    #@2
    .line 149
    return-void
.end method

.method public setFormat(Lorg/apache/xalan/templates/AVT;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/AVT;

    #@0
    .prologue
    .line 323
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    .line 321
    return-void
.end method

.method public setFrom(Lorg/apache/xpath/XPath;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xpath/XPath;

    #@0
    .prologue
    .line 197
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    #@2
    .line 195
    return-void
.end method

.method public setGroupingSeparator(Lorg/apache/xalan/templates/AVT;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/AVT;

    #@0
    .prologue
    .line 430
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    .line 428
    return-void
.end method

.method public setGroupingSize(Lorg/apache/xalan/templates/AVT;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/AVT;

    #@0
    .prologue
    .line 462
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    .line 460
    return-void
.end method

.method public setLang(Lorg/apache/xalan/templates/AVT;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/AVT;

    #@0
    .prologue
    .line 359
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    .line 357
    return-void
.end method

.method public setLetterValue(Lorg/apache/xalan/templates/AVT;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/AVT;

    #@0
    .prologue
    .line 395
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    #@2
    .line 393
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "v"    # I

    #@0
    .prologue
    .line 255
    iput p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    #@2
    .line 253
    return-void
.end method

.method public setValue(Lorg/apache/xpath/XPath;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xpath/XPath;

    #@0
    .prologue
    .line 289
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    #@2
    .line 287
    return-void
.end method

.method protected tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;
    .locals 27
    .param p1, "val"    # J
    .param p3, "thisBundle"    # Lorg/apache/xml/utils/res/XResourceBundle;

    #@0
    .prologue
    .line 1725
    const-wide v22, 0x7fffffffffffffffL

    #@5
    cmp-long v22, p1, v22

    #@7
    if-lez v22, :cond_0

    #@9
    .line 1727
    const-string/jumbo v22, "ER_NUMBER_TOO_BIG"

    #@c
    move-object/from16 v0, p0

    #@e
    move-object/from16 v1, v22

    #@10
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemNumber;->error(Ljava/lang/String;)V

    #@13
    .line 1728
    const-string/jumbo v22, "#error"

    #@16
    return-object v22

    #@17
    .line 1730
    :cond_0
    const/16 v18, 0x0

    #@19
    .line 1733
    .local v18, "table":[C
    const/4 v11, 0x1

    #@1a
    .line 1738
    .local v11, "lookupIndex":I
    const/16 v22, 0x64

    #@1c
    move/from16 v0, v22

    #@1e
    new-array v3, v0, [C

    #@20
    .line 1746
    .local v3, "buf":[C
    const/4 v4, 0x0

    #@21
    .line 1749
    .local v4, "charPos":I
    const-string/jumbo v22, "numberGroups"

    #@24
    move-object/from16 v0, p3

    #@26
    move-object/from16 v1, v22

    #@28
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@2b
    move-result-object v7

    #@2c
    check-cast v7, Lorg/apache/xml/utils/res/IntArrayWrapper;

    #@2e
    .line 1753
    .local v7, "groups":Lorg/apache/xml/utils/res/IntArrayWrapper;
    const-string/jumbo v22, "tables"

    #@31
    move-object/from16 v0, p3

    #@33
    move-object/from16 v1, v22

    #@35
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@38
    move-result-object v19

    #@39
    check-cast v19, Lorg/apache/xml/utils/res/StringArrayWrapper;

    #@3b
    .line 1757
    .local v19, "tables":Lorg/apache/xml/utils/res/StringArrayWrapper;
    const-string/jumbo v22, "numbering"

    #@3e
    move-object/from16 v0, p3

    #@40
    move-object/from16 v1, v22

    #@42
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v17

    #@46
    .line 1760
    .local v17, "numbering":Ljava/lang/String;
    const-string/jumbo v22, "multiplicative-additive"

    #@49
    move-object/from16 v0, v17

    #@4b
    move-object/from16 v1, v22

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v22

    #@51
    if-eqz v22, :cond_4

    #@53
    .line 1762
    const-string/jumbo v22, "multiplierOrder"

    #@56
    move-object/from16 v0, p3

    #@58
    move-object/from16 v1, v22

    #@5a
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5d
    move-result-object v14

    #@5e
    .line 1764
    .local v14, "mult_order":Ljava/lang/String;
    const-string/jumbo v22, "multiplier"

    #@61
    move-object/from16 v0, p3

    #@63
    move-object/from16 v1, v22

    #@65
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@68
    move-result-object v15

    #@69
    check-cast v15, Lorg/apache/xml/utils/res/LongArrayWrapper;

    #@6b
    .line 1765
    .local v15, "multiplier":Lorg/apache/xml/utils/res/LongArrayWrapper;
    const-string/jumbo v22, "zero"

    #@6e
    move-object/from16 v0, p3

    #@70
    move-object/from16 v1, v22

    #@72
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@75
    move-result-object v21

    #@76
    check-cast v21, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@78
    .line 1766
    .local v21, "zeroChar":Lorg/apache/xml/utils/res/CharArrayWrapper;
    const/4 v8, 0x0

    #@79
    .line 1769
    .local v8, "i":I
    :goto_0
    invoke-virtual {v15}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    #@7c
    move-result v22

    #@7d
    move/from16 v0, v22

    #@7f
    if-ge v8, v0, :cond_3

    #@81
    invoke-virtual {v15, v8}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    #@84
    move-result-wide v22

    #@85
    cmp-long v22, p1, v22

    #@87
    if-gez v22, :cond_3

    #@89
    .line 1771
    add-int/lit8 v8, v8, 0x1

    #@8b
    goto :goto_0

    #@8c
    .line 1782
    .end local v18    # "table":[C
    :cond_1
    invoke-virtual {v15, v8}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    #@8f
    move-result-wide v22

    #@90
    cmp-long v22, p1, v22

    #@92
    if-gez v22, :cond_7

    #@94
    .line 1784
    invoke-virtual/range {v21 .. v21}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    #@97
    move-result v22

    #@98
    if-nez v22, :cond_5

    #@9a
    .line 1786
    add-int/lit8 v8, v8, 0x1

    #@9c
    .line 1866
    :cond_2
    :goto_1
    invoke-virtual {v15}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    #@9f
    move-result v22

    #@a0
    move/from16 v0, v22

    #@a2
    if-ge v8, v0, :cond_4

    #@a4
    .line 1776
    :cond_3
    invoke-virtual {v15}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    #@a7
    move-result v22

    #@a8
    move/from16 v0, v22

    #@aa
    if-lt v8, v0, :cond_1

    #@ac
    .line 1870
    .end local v8    # "i":I
    .end local v14    # "mult_order":Ljava/lang/String;
    .end local v15    # "multiplier":Lorg/apache/xml/utils/res/LongArrayWrapper;
    .end local v21    # "zeroChar":Lorg/apache/xml/utils/res/CharArrayWrapper;
    :cond_4
    const/4 v6, 0x0

    #@ad
    .line 1874
    .local v6, "count":I
    :goto_2
    invoke-virtual {v7}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getLength()I

    #@b0
    move-result v22

    #@b1
    move/from16 v0, v22

    #@b3
    if-ge v6, v0, :cond_11

    #@b5
    .line 1876
    invoke-virtual {v7, v6}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    #@b8
    move-result v22

    #@b9
    move/from16 v0, v22

    #@bb
    int-to-long v0, v0

    #@bc
    move-wide/from16 v22, v0

    #@be
    div-long v22, p1, v22

    #@c0
    const-wide/16 v24, 0x0

    #@c2
    cmp-long v22, v22, v24

    #@c4
    if-gtz v22, :cond_f

    #@c6
    .line 1877
    add-int/lit8 v6, v6, 0x1

    #@c8
    goto :goto_2

    #@c9
    .line 1790
    .end local v6    # "count":I
    .restart local v8    # "i":I
    .restart local v14    # "mult_order":Ljava/lang/String;
    .restart local v15    # "multiplier":Lorg/apache/xml/utils/res/LongArrayWrapper;
    .restart local v21    # "zeroChar":Lorg/apache/xml/utils/res/CharArrayWrapper;
    :cond_5
    add-int/lit8 v22, v4, -0x1

    #@cb
    aget-char v22, v3, v22

    #@cd
    const/16 v23, 0x0

    #@cf
    move-object/from16 v0, v21

    #@d1
    move/from16 v1, v23

    #@d3
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    #@d6
    move-result v23

    #@d7
    move/from16 v0, v22

    #@d9
    move/from16 v1, v23

    #@db
    if-eq v0, v1, :cond_6

    #@dd
    .line 1791
    add-int/lit8 v5, v4, 0x1

    #@df
    .end local v4    # "charPos":I
    .local v5, "charPos":I
    const/16 v22, 0x0

    #@e1
    invoke-virtual/range {v21 .. v22}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    #@e4
    move-result v22

    #@e5
    aput-char v22, v3, v4

    #@e7
    move v4, v5

    #@e8
    .line 1793
    .end local v5    # "charPos":I
    .restart local v4    # "charPos":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    #@ea
    goto :goto_1

    #@eb
    .line 1796
    :cond_7
    invoke-virtual {v15, v8}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    #@ee
    move-result-wide v22

    #@ef
    cmp-long v22, p1, v22

    #@f1
    if-ltz v22, :cond_2

    #@f3
    .line 1798
    invoke-virtual {v15, v8}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    #@f6
    move-result-wide v22

    #@f7
    div-long v12, p1, v22

    #@f9
    .line 1800
    .local v12, "mult":J
    invoke-virtual {v15, v8}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    #@fc
    move-result-wide v22

    #@fd
    rem-long p1, p1, v22

    #@ff
    .line 1802
    const/4 v10, 0x0

    #@100
    .line 1804
    .local v10, "k":I
    :goto_3
    invoke-virtual {v7}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getLength()I

    #@103
    move-result v22

    #@104
    move/from16 v0, v22

    #@106
    if-ge v10, v0, :cond_a

    #@108
    .line 1806
    const/4 v11, 0x1

    #@109
    .line 1808
    invoke-virtual {v7, v10}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    #@10c
    move-result v22

    #@10d
    move/from16 v0, v22

    #@10f
    int-to-long v0, v0

    #@110
    move-wide/from16 v22, v0

    #@112
    div-long v22, v12, v22

    #@114
    const-wide/16 v24, 0x0

    #@116
    cmp-long v22, v22, v24

    #@118
    if-gtz v22, :cond_8

    #@11a
    .line 1809
    add-int/lit8 v10, v10, 0x1

    #@11c
    goto :goto_3

    #@11d
    .line 1814
    :cond_8
    move-object/from16 v0, v19

    #@11f
    invoke-virtual {v0, v10}, Lorg/apache/xml/utils/res/StringArrayWrapper;->getString(I)Ljava/lang/String;

    #@122
    move-result-object v22

    #@123
    move-object/from16 v0, p3

    #@125
    move-object/from16 v1, v22

    #@127
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@12a
    move-result-object v2

    #@12b
    check-cast v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@12d
    .line 1816
    .local v2, "THEletters":Lorg/apache/xml/utils/res/CharArrayWrapper;
    invoke-virtual {v2}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    #@130
    move-result v22

    #@131
    add-int/lit8 v22, v22, 0x1

    #@133
    move/from16 v0, v22

    #@135
    new-array v0, v0, [C

    #@137
    move-object/from16 v18, v0

    #@139
    .line 1820
    .local v18, "table":[C
    const/4 v9, 0x0

    #@13a
    .local v9, "j":I
    :goto_4
    invoke-virtual {v2}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    #@13d
    move-result v22

    #@13e
    move/from16 v0, v22

    #@140
    if-ge v9, v0, :cond_9

    #@142
    .line 1822
    add-int/lit8 v22, v9, 0x1

    #@144
    invoke-virtual {v2, v9}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    #@147
    move-result v23

    #@148
    aput-char v23, v18, v22

    #@14a
    .line 1820
    add-int/lit8 v9, v9, 0x1

    #@14c
    goto :goto_4

    #@14d
    .line 1825
    :cond_9
    add-int/lit8 v22, v9, -0x1

    #@14f
    move/from16 v0, v22

    #@151
    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    #@154
    move-result v22

    #@155
    const/16 v23, 0x0

    #@157
    aput-char v22, v18, v23

    #@159
    .line 1828
    long-to-int v0, v12

    #@15a
    move/from16 v22, v0

    #@15c
    invoke-virtual {v7, v10}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    #@15f
    move-result v23

    #@160
    div-int v11, v22, v23

    #@162
    .line 1831
    if-nez v11, :cond_b

    #@164
    const-wide/16 v22, 0x0

    #@166
    cmp-long v22, v12, v22

    #@168
    if-nez v22, :cond_b

    #@16a
    .line 1863
    .end local v2    # "THEletters":Lorg/apache/xml/utils/res/CharArrayWrapper;
    .end local v9    # "j":I
    .end local v18    # "table":[C
    :cond_a
    :goto_5
    add-int/lit8 v8, v8, 0x1

    #@16c
    goto/16 :goto_1

    #@16e
    .line 1835
    .restart local v2    # "THEletters":Lorg/apache/xml/utils/res/CharArrayWrapper;
    .restart local v9    # "j":I
    .restart local v18    # "table":[C
    :cond_b
    const-string/jumbo v22, "multiplierChar"

    #@171
    .line 1834
    move-object/from16 v0, p3

    #@173
    move-object/from16 v1, v22

    #@175
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@178
    move-result-object v22

    #@179
    check-cast v22, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@17b
    move-object/from16 v0, v22

    #@17d
    invoke-virtual {v0, v8}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    #@180
    move-result v16

    #@181
    .line 1838
    .local v16, "multiplierChar":C
    move-object/from16 v0, v18

    #@183
    array-length v0, v0

    #@184
    move/from16 v22, v0

    #@186
    move/from16 v0, v22

    #@188
    if-ge v11, v0, :cond_e

    #@18a
    .line 1840
    const-string/jumbo v22, "precedes"

    #@18d
    move-object/from16 v0, v22

    #@18f
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@192
    move-result v22

    #@193
    if-eqz v22, :cond_c

    #@195
    .line 1842
    add-int/lit8 v5, v4, 0x1

    #@197
    .end local v4    # "charPos":I
    .restart local v5    # "charPos":I
    aput-char v16, v3, v4

    #@199
    .line 1843
    add-int/lit8 v4, v5, 0x1

    #@19b
    .end local v5    # "charPos":I
    .restart local v4    # "charPos":I
    aget-char v22, v18, v11

    #@19d
    aput-char v22, v3, v5

    #@19f
    goto :goto_5

    #@1a0
    .line 1849
    :cond_c
    const/16 v22, 0x1

    #@1a2
    move/from16 v0, v22

    #@1a4
    if-ne v11, v0, :cond_d

    #@1a6
    invoke-virtual {v15}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    #@1a9
    move-result v22

    #@1aa
    add-int/lit8 v22, v22, -0x1

    #@1ac
    move/from16 v0, v22

    #@1ae
    if-ne v8, v0, :cond_d

    #@1b0
    .line 1853
    :goto_6
    add-int/lit8 v5, v4, 0x1

    #@1b2
    .end local v4    # "charPos":I
    .restart local v5    # "charPos":I
    aput-char v16, v3, v4

    #@1b4
    move v4, v5

    #@1b5
    .end local v5    # "charPos":I
    .restart local v4    # "charPos":I
    goto :goto_5

    #@1b6
    .line 1851
    :cond_d
    add-int/lit8 v5, v4, 0x1

    #@1b8
    .end local v4    # "charPos":I
    .restart local v5    # "charPos":I
    aget-char v22, v18, v11

    #@1ba
    aput-char v22, v3, v4

    #@1bc
    move v4, v5

    #@1bd
    .end local v5    # "charPos":I
    .restart local v4    # "charPos":I
    goto :goto_6

    #@1be
    .line 1859
    :cond_e
    const-string/jumbo v22, "#error"

    #@1c1
    return-object v22

    #@1c2
    .line 1880
    .end local v2    # "THEletters":Lorg/apache/xml/utils/res/CharArrayWrapper;
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v10    # "k":I
    .end local v12    # "mult":J
    .end local v14    # "mult_order":Ljava/lang/String;
    .end local v15    # "multiplier":Lorg/apache/xml/utils/res/LongArrayWrapper;
    .end local v16    # "multiplierChar":C
    .end local v18    # "table":[C
    .end local v21    # "zeroChar":Lorg/apache/xml/utils/res/CharArrayWrapper;
    .restart local v6    # "count":I
    :cond_f
    move-object/from16 v0, v19

    #@1c4
    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/res/StringArrayWrapper;->getString(I)Ljava/lang/String;

    #@1c7
    move-result-object v22

    #@1c8
    move-object/from16 v0, p3

    #@1ca
    move-object/from16 v1, v22

    #@1cc
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@1cf
    move-result-object v20

    #@1d0
    check-cast v20, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@1d2
    .line 1882
    .local v20, "theletters":Lorg/apache/xml/utils/res/CharArrayWrapper;
    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    #@1d5
    move-result v22

    #@1d6
    add-int/lit8 v22, v22, 0x1

    #@1d8
    move/from16 v0, v22

    #@1da
    new-array v0, v0, [C

    #@1dc
    move-object/from16 v18, v0

    #@1de
    .line 1887
    .restart local v18    # "table":[C
    const/4 v9, 0x0

    #@1df
    .restart local v9    # "j":I
    :goto_7
    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    #@1e2
    move-result v22

    #@1e3
    move/from16 v0, v22

    #@1e5
    if-ge v9, v0, :cond_10

    #@1e7
    .line 1889
    add-int/lit8 v22, v9, 0x1

    #@1e9
    move-object/from16 v0, v20

    #@1eb
    invoke-virtual {v0, v9}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    #@1ee
    move-result v23

    #@1ef
    aput-char v23, v18, v22

    #@1f1
    .line 1887
    add-int/lit8 v9, v9, 0x1

    #@1f3
    goto :goto_7

    #@1f4
    .line 1892
    :cond_10
    add-int/lit8 v22, v9, -0x1

    #@1f6
    move-object/from16 v0, v20

    #@1f8
    move/from16 v1, v22

    #@1fa
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    #@1fd
    move-result v22

    #@1fe
    const/16 v23, 0x0

    #@200
    aput-char v22, v18, v23

    #@202
    .line 1895
    move-wide/from16 v0, p1

    #@204
    long-to-int v0, v0

    #@205
    move/from16 v22, v0

    #@207
    invoke-virtual {v7, v6}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    #@20a
    move-result v23

    #@20b
    div-int v11, v22, v23

    #@20d
    .line 1898
    invoke-virtual {v7, v6}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    #@210
    move-result v22

    #@211
    move/from16 v0, v22

    #@213
    int-to-long v0, v0

    #@214
    move-wide/from16 v22, v0

    #@216
    rem-long p1, p1, v22

    #@218
    .line 1901
    if-nez v11, :cond_12

    #@21a
    const-wide/16 v22, 0x0

    #@21c
    cmp-long v22, p1, v22

    #@21e
    if-nez v22, :cond_12

    #@220
    .line 1918
    .end local v9    # "j":I
    .end local v18    # "table":[C
    .end local v20    # "theletters":Lorg/apache/xml/utils/res/CharArrayWrapper;
    :cond_11
    new-instance v22, Ljava/lang/String;

    #@222
    const/16 v23, 0x0

    #@224
    move-object/from16 v0, v22

    #@226
    move/from16 v1, v23

    #@228
    invoke-direct {v0, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    #@22b
    return-object v22

    #@22c
    .line 1904
    .restart local v9    # "j":I
    .restart local v18    # "table":[C
    .restart local v20    # "theletters":Lorg/apache/xml/utils/res/CharArrayWrapper;
    :cond_12
    move-object/from16 v0, v18

    #@22e
    array-length v0, v0

    #@22f
    move/from16 v22, v0

    #@231
    move/from16 v0, v22

    #@233
    if-ge v11, v0, :cond_13

    #@235
    .line 1908
    add-int/lit8 v5, v4, 0x1

    #@237
    .end local v4    # "charPos":I
    .restart local v5    # "charPos":I
    aget-char v22, v18, v11

    #@239
    aput-char v22, v3, v4

    #@23b
    .line 1913
    add-int/lit8 v6, v6, 0x1

    #@23d
    move v4, v5

    #@23e
    .end local v5    # "charPos":I
    .restart local v4    # "charPos":I
    goto/16 :goto_2

    #@240
    .line 1911
    :cond_13
    const-string/jumbo v22, "#error"

    #@243
    return-object v22
.end method
