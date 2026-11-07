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
.field private static final greylist m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

.field static final whitelist serialVersionUID:J = 0x70aa9b8ab17ec4baL


# instance fields
.field private greylist m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

.field private greylist m_countMatchPattern:Lorg/apache/xpath/XPath;

.field private greylist m_format_avt:Lorg/apache/xalan/templates/AVT;

.field private greylist m_fromMatchPattern:Lorg/apache/xpath/XPath;

.field private greylist m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

.field private greylist m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

.field private greylist m_lang_avt:Lorg/apache/xalan/templates/AVT;

.field private greylist m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

.field private greylist m_level:I

.field private greylist m_valueExpr:Lorg/apache/xpath/XPath;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 13

    .line 487
    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v4, 0x384

    const-string v6, "CM"

    const-wide/16 v1, 0x3e8

    const-string v3, "M"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    new-instance v1, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v5, 0x190

    const-string v7, "CD"

    const-wide/16 v2, 0x1f4

    const-string v4, "D"

    invoke-direct/range {v1 .. v7}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    new-instance v2, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v6, 0x5a

    const-string v8, "XC"

    const-wide/16 v3, 0x64

    const-string v5, "C"

    invoke-direct/range {v2 .. v8}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    new-instance v3, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v7, 0x28

    const-string v9, "XL"

    const-wide/16 v4, 0x32

    const-string v6, "L"

    invoke-direct/range {v3 .. v9}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    new-instance v4, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v8, 0x9

    const-string v10, "IX"

    const-wide/16 v5, 0xa

    const-string v7, "X"

    invoke-direct/range {v4 .. v10}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    new-instance v5, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v9, 0x4

    const-string v11, "IV"

    const-wide/16 v6, 0x5

    const-string v8, "V"

    invoke-direct/range {v5 .. v11}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    new-instance v6, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v10, 0x1

    const-string v12, "I"

    const-wide/16 v7, 0x1

    const-string v9, "I"

    invoke-direct/range {v6 .. v12}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    filled-new-array/range {v0 .. v6}, [Lorg/apache/xalan/transformer/DecimalToRoman;

    move-result-object v0

    sput-object v0, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 3

    .line 75
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 136
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    .line 181
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    const/4 v1, 0x1

    .line 243
    iput v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    .line 277
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    .line 311
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    .line 344
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    .line 383
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    .line 417
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    .line 451
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method private greylist findPrecedingOrAncestorOrSelf(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 665
    invoke-virtual {p1, p4}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    :cond_4
    :goto_4
    const/4 p5, -0x1

    if-eq p5, p4, :cond_32

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-eqz p2, :cond_14

    .line 670
    invoke-virtual {p2, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v2

    cmpl-double v2, v2, v0

    if-eqz v2, :cond_14

    return p5

    :cond_14
    if-eqz p3, :cond_1f

    .line 681
    invoke-virtual {p3, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v2

    cmpl-double v0, v2, v0

    if-eqz v0, :cond_1f

    goto :goto_32

    .line 688
    :cond_1f
    invoke-interface {p0, p4}, Lorg/apache/xml/dtm/DTM;->getPreviousSibling(I)I

    move-result v0

    if-ne p5, v0, :cond_2a

    .line 692
    invoke-interface {p0, p4}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p4

    goto :goto_4

    .line 698
    :cond_2a
    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    move-result p4

    if-ne p4, p5, :cond_4

    move p4, v0

    goto :goto_4

    :cond_32
    :goto_32
    return p4
.end method

.method private greylist getFormattedNumber(Lorg/apache/xalan/transformer/TransformerImpl;ICIJLorg/apache/xml/utils/FastStringBuffer;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-wide/from16 v0, p5

    move-object/from16 v2, p7

    .line 1323
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v3, :cond_11

    .line 1325
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v4

    .line 1324
    invoke-virtual {v3, v4, p2, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    :cond_11
    const/4 v3, 0x0

    .line 1334
    :goto_12
    const-string v4, "zh"

    const/4 v6, 0x1

    const-string v7, "JP"

    const-string v8, "ja"

    const-string v9, ""

    const-string v10, "traditional"

    const-string v11, "alphabet"

    const-string v12, "org.apache.xml.utils.res.XResources"

    sparse-switch p3, :sswitch_data_262

    .line 1557
    invoke-direct/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getNumberFormatter(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/text/DecimalFormat;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_30

    .line 1558
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_36

    :cond_30
    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    :goto_36
    if-nez p0, :cond_3d

    .line 1559
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_41

    :cond_3d
    invoke-virtual {p0, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    .line 1560
    :goto_41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p4, v0

    :goto_47
    if-ge p1, v0, :cond_4f

    .line 1564
    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_47

    .line 1567
    :cond_4f
    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1463
    :sswitch_53
    new-instance p1, Ljava/util/Locale;

    const-string v5, "TW"

    invoke-direct {p1, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, p1}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object p1

    if-eqz v3, :cond_6e

    .line 1467
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1468
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1471
    :cond_6e
    invoke-virtual {p1, v11}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1470
    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    return-void

    .line 1445
    :sswitch_78
    new-instance p1, Ljava/util/Locale;

    const-string v5, "CN"

    invoke-direct {p1, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, p1}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object p1

    if-eqz v3, :cond_93

    .line 1449
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 1451
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1455
    :cond_93
    invoke-virtual {p1, v11}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1454
    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    return-void

    .line 1428
    :sswitch_9d
    new-instance p1, Ljava/util/Locale;

    const-string v4, "I"

    invoke-direct {p1, v8, v7, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, p1}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object p1

    if-eqz v3, :cond_b8

    .line 1432
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 1433
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1438
    :cond_b8
    invoke-virtual {p1, v11}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1436
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object p0

    .line 1435
    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1411
    :sswitch_c6
    new-instance p1, Ljava/util/Locale;

    const-string v4, "A"

    invoke-direct {p1, v8, v7, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, p1}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object p1

    if-eqz v3, :cond_e1

    .line 1415
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 1416
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1421
    :cond_e1
    invoke-virtual {p1, v11}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1419
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object p0

    .line 1418
    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1394
    :sswitch_ef
    new-instance p1, Ljava/util/Locale;

    const-string v4, "HI"

    invoke-direct {p1, v8, v7, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, p1}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object p1

    if-eqz v3, :cond_10a

    .line 1398
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 1399
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1404
    :cond_10a
    invoke-virtual {p1, v11}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1402
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object p0

    .line 1401
    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1377
    :sswitch_118
    new-instance p1, Ljava/util/Locale;

    const-string v4, "HA"

    invoke-direct {p1, v8, v7, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, p1}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object p1

    if-eqz v3, :cond_133

    .line 1381
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_133

    .line 1382
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1387
    :cond_133
    invoke-virtual {p1, v11}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1385
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object p0

    .line 1384
    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1511
    :sswitch_141
    new-instance p1, Ljava/util/Locale;

    const-string v4, "ka"

    invoke-direct {p1, v4, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, p1}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object p1

    if-eqz v3, :cond_15c

    .line 1515
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15c

    .line 1516
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1519
    :cond_15c
    invoke-virtual {p1, v11}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1518
    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    return-void

    .line 1479
    :sswitch_166
    new-instance p1, Ljava/util/Locale;

    const-string v4, "th"

    invoke-direct {p1, v4, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, p1}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object p1

    if-eqz v3, :cond_181

    .line 1483
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_181

    .line 1484
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1487
    :cond_181
    invoke-virtual {p1, v11}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1486
    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    return-void

    .line 1495
    :sswitch_18b
    new-instance p1, Ljava/util/Locale;

    const-string v4, "he"

    invoke-direct {p1, v4, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, p1}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object p1

    if-eqz v3, :cond_1a6

    .line 1499
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a6

    .line 1500
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1503
    :cond_1a6
    invoke-virtual {p1, v11}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1502
    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    return-void

    .line 1543
    :sswitch_1b0
    new-instance p1, Ljava/util/Locale;

    const-string v4, "cy"

    invoke-direct {p1, v4, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, p1}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object p1

    if-eqz v3, :cond_1cb

    .line 1547
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1cb

    .line 1548
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1551
    :cond_1cb
    invoke-virtual {p1, v11}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1550
    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    return-void

    .line 1527
    :sswitch_1d5
    new-instance p1, Ljava/util/Locale;

    const-string v4, "el"

    invoke-direct {p1, v4, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, p1}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object p1

    if-eqz v3, :cond_1f0

    .line 1531
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f0

    .line 1532
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1535
    :cond_1f0
    invoke-virtual {p1, v11}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1534
    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    return-void

    .line 1371
    :sswitch_1fa
    invoke-virtual {p0, v0, v1, v6}, Lorg/apache/xalan/templates/ElemNumber;->long2roman(JZ)Ljava/lang/String;

    move-result-object v0

    .line 1372
    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object p0

    .line 1371
    invoke-virtual {v0, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1370
    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1346
    :sswitch_20a
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    if-nez v3, :cond_21e

    .line 1349
    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v3

    .line 1348
    invoke-static {v12, v3}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v3

    .line 1350
    invoke-virtual {v3, v11}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    iput-object v3, p0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1352
    :cond_21e
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v3

    .line 1356
    :try_start_222
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    invoke-virtual {p0, v0, v1, v4, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 1358
    invoke-virtual {v3}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1359
    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object p0

    .line 1358
    invoke-virtual {v0, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1357
    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_236
    .catchall {:try_start_222 .. :try_end_236} :catchall_23a

    .line 1363
    invoke-static {v3}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    return-void

    :catchall_23a
    move-exception v0

    move-object p0, v0

    invoke-static {v3}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 1364
    throw p0

    .line 1367
    :sswitch_240
    invoke-virtual {p0, v0, v1, v6}, Lorg/apache/xalan/templates/ElemNumber;->long2roman(JZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1337
    :sswitch_248
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    if-nez v3, :cond_25c

    .line 1340
    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object p1

    .line 1339
    invoke-static {v12, p1}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object p1

    .line 1341
    invoke-virtual {p1, v11}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/utils/res/CharArrayWrapper;

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1343
    :cond_25c
    iget-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    return-void

    :sswitch_data_262
    .sparse-switch
        0x41 -> :sswitch_248
        0x49 -> :sswitch_240
        0x61 -> :sswitch_20a
        0x69 -> :sswitch_1fa
        0x3b1 -> :sswitch_1d5
        0x430 -> :sswitch_1b0
        0x5d0 -> :sswitch_18b
        0xe51 -> :sswitch_166
        0x10d0 -> :sswitch_141
        0x3042 -> :sswitch_118
        0x3044 -> :sswitch_ef
        0x30a2 -> :sswitch_c6
        0x30a4 -> :sswitch_9d
        0x4e00 -> :sswitch_78
        0x58f9 -> :sswitch_53
    .end sparse-switch
.end method

.method private greylist getNumberFormatter(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/text/DecimalFormat;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1087
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 1098
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 1100
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    .line 1099
    invoke-virtual {v1, v3, p2, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_18
    move-object v1, v2

    :goto_19
    const/4 v3, 0x1

    if-eqz v1, :cond_3f

    .line 1105
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v4}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 1106
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v3, :cond_3f

    .line 1108
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    .line 1110
    invoke-virtual {v5}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    filled-new-array {v6, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 1108
    const-string v6, "WG_ILLEGAL_ATTRIBUTE_VALUE"

    invoke-virtual {v4, p0, v6, v5}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1115
    :cond_3f
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v4, :cond_4c

    .line 1117
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object p1

    .line 1116
    invoke-virtual {v4, p1, p2, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4d

    :cond_4c
    move-object p0, v2

    :goto_4d
    if-eqz v1, :cond_7f

    if-eqz p0, :cond_7f

    .line 1122
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7f

    const/4 p1, 0x0

    .line 1126
    :try_start_58
    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    check-cast p2, Ljava/text/DecimalFormat;
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_5e} :catch_7c

    .line 1128
    :try_start_5e
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 1127
    invoke-virtual {p2, p0}, Ljava/text/DecimalFormat;->setGroupingSize(I)V

    .line 1130
    invoke-virtual {p2}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object p0

    .line 1131
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 1132
    invoke-virtual {p2, p0}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 1133
    invoke-virtual {p2, v3}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V
    :try_end_7a
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_7a} :catch_7b

    return-object p2

    :catch_7b
    move-object v2, p2

    .line 1137
    :catch_7c
    invoke-virtual {v2, p1}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    :cond_7f
    return-object v2
.end method


# virtual methods
.method public greylist appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 3

    .line 587
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object p1

    .line 588
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemNumber;->getNodeName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 586
    const-string v0, "ER_CANNOT_ADD"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 5

    if-eqz p2, :cond_4c

    .line 1980
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_f

    .line 1981
    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    invoke-interface {v0, v1, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 1982
    :cond_f
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_1c

    .line 1983
    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    invoke-interface {v0, v1, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 1984
    :cond_1c
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_29

    .line 1985
    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    invoke-interface {v0, v1, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 1987
    :cond_29
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_30

    .line 1988
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1989
    :cond_30
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_37

    .line 1990
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1991
    :cond_37
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_3e

    .line 1992
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1993
    :cond_3e
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_45

    .line 1994
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1995
    :cond_45
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_4c

    .line 1996
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1999
    :cond_4c
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 504
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 505
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    .line 506
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v1, :cond_16

    .line 508
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 509
    :cond_16
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v1, :cond_21

    .line 510
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 511
    :cond_21
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v1, :cond_2c

    .line 512
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 513
    :cond_2c
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v1, :cond_37

    .line 514
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 515
    :cond_37
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v1, :cond_42

    .line 516
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 517
    :cond_42
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v1, :cond_4d

    .line 518
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 519
    :cond_4d
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v1, :cond_58

    .line 520
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 521
    :cond_58
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    if-eqz p0, :cond_63

    .line 522
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_63
    return-void
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 560
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 561
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemNumber;->getCountString(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/lang/String;

    move-result-object p0

    .line 565
    :try_start_c
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 566
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x0

    .line 565
    invoke-interface {p1, v0, v1, p0}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_1c
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p0

    .line 570
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method greylist findAncestor(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 615
    invoke-virtual {p1, p4}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    :goto_4
    const/4 p5, -0x1

    if-eq p5, p4, :cond_24

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-eqz p2, :cond_14

    .line 620
    invoke-virtual {p2, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v2

    cmpl-double p5, v2, v0

    if-eqz p5, :cond_14

    goto :goto_24

    :cond_14
    if-eqz p3, :cond_1f

    .line 631
    invoke-virtual {p3, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v2

    cmpl-double p5, v2, v0

    if-eqz p5, :cond_1f

    goto :goto_24

    .line 638
    :cond_1f
    invoke-interface {p0, p4}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p4

    goto :goto_4

    :cond_24
    :goto_24
    return p4
.end method

.method greylist formatNumberList(Lorg/apache/xalan/transformer/TransformerImpl;[JI)Ljava/lang/String;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    .line 1163
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v7

    .line 1167
    :try_start_8
    array-length v9, v8

    .line 1178
    const-string v1, "."

    .line 1181
    iget-object v2, v0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    const/4 v3, 0x0

    if-eqz v2, :cond_1e

    .line 1183
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v4

    move/from16 v5, p3

    .line 1182
    invoke-virtual {v2, v4, v5, v0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :catchall_1b
    move-exception v0

    goto/16 :goto_fd

    :cond_1e
    move/from16 v5, p3

    move-object v2, v3

    :goto_21
    if-nez v2, :cond_25

    .line 1186
    const-string v2, "1"

    .line 1188
    :cond_25
    new-instance v10, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;

    invoke-direct {v10, v0, v2}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;-><init>(Lorg/apache/xalan/templates/ElemNumber;Ljava/lang/String;)V

    const/4 v12, 0x1

    const/16 v2, 0x31

    move-object v4, v3

    move v6, v12

    move v14, v6

    const/4 v13, 0x0

    :goto_31
    if-ge v13, v9, :cond_d8

    .line 1197
    invoke-virtual {v10}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_57

    .line 1199
    invoke-virtual {v10}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 1204
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v11, v16, -0x1

    invoke-virtual {v15, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 1203
    invoke-static {v11}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v11

    if-eqz v11, :cond_5d

    .line 1206
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 1207
    invoke-virtual {v15, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :cond_57
    move-object v11, v1

    move-object v15, v3

    move-object v1, v4

    move v4, v6

    :goto_5b
    move v3, v2

    goto :goto_b1

    .line 1212
    :cond_5d
    invoke-virtual {v10}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->isLetterOrDigitAhead()Z

    move-result v11

    if-eqz v11, :cond_93

    .line 1219
    :goto_63
    invoke-virtual {v10}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextIsSep()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1221
    invoke-virtual {v10}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_63

    :cond_7d
    if-nez v14, :cond_80

    move-object v1, v15

    .line 1233
    :cond_80
    invoke-virtual {v10}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1234
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 1235
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object v11, v1

    move v4, v6

    move-object v1, v15

    move-object v15, v3

    goto :goto_5b

    .line 1245
    :cond_93
    :goto_93
    invoke-virtual {v10}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 1247
    invoke-virtual {v10}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1248
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_93

    :cond_ad
    move-object v11, v1

    move v3, v2

    move-object v1, v4

    move v4, v6

    :goto_b1
    if-eqz v1, :cond_b9

    if-eqz v14, :cond_b9

    .line 1259
    invoke-virtual {v7, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_c0

    :cond_b9
    if-eqz v11, :cond_c0

    if-nez v14, :cond_c0

    .line 1262
    invoke-virtual {v7, v11}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 1264
    :cond_c0
    :goto_c0
    aget-wide v5, v8, v13

    move/from16 v2, p3

    move-object v14, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/xalan/templates/ElemNumber;->getFormattedNumber(Lorg/apache/xalan/transformer/TransformerImpl;ICIJLorg/apache/xml/utils/FastStringBuffer;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v5, p3

    move v2, v3

    move v6, v4

    move-object v1, v11

    move-object v4, v14

    move-object v3, v15

    const/4 v14, 0x0

    goto/16 :goto_31

    .line 1272
    :cond_d8
    :goto_d8
    invoke-virtual {v10}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->isLetterOrDigitAhead()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 1274
    invoke-virtual {v10}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    goto :goto_d8

    :cond_e2
    if-eqz v3, :cond_e7

    .line 1278
    invoke-virtual {v7, v3}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 1280
    :cond_e7
    :goto_e7
    invoke-virtual {v10}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 1282
    invoke-virtual {v10}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1284
    invoke-virtual {v7, v0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_e7

    .line 1287
    :cond_f5
    invoke-virtual {v7}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_f9
    .catchall {:try_start_8 .. :try_end_f9} :catchall_1b

    .line 1291
    invoke-static {v7}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    return-object v0

    :goto_fd
    invoke-static {v7}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 1292
    throw v0
.end method

.method public greylist getCount()Lorg/apache/xpath/XPath;
    .registers 1

    .line 167
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    return-object p0
.end method

.method greylist getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    .line 723
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v4

    if-nez v0, :cond_ce

    .line 726
    invoke-interface {v4, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_79

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6a

    const/4 v1, 0x7

    if-eq v0, v1, :cond_43

    const/16 p2, 0x8

    if-eq v0, p2, :cond_34

    const/16 p2, 0x9

    if-eq v0, p2, :cond_25

    const/4 p0, 0x0

    return-object p0

    .line 761
    :cond_25
    new-instance v0, Lorg/apache/xpath/XPath;

    const/4 v4, 0x1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v5

    const-string v1, "/"

    move-object v3, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    return-object v0

    :cond_34
    move-object v3, p0

    .line 756
    new-instance v1, Lorg/apache/xpath/XPath;

    const/4 v5, 0x1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v6

    const-string v2, "comment()"

    move-object v4, v3

    invoke-direct/range {v1 .. v6}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    return-object v1

    :cond_43
    move-object v3, p0

    .line 766
    new-instance v1, Lorg/apache/xpath/XPath;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pi("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    .line 767
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v6

    move-object v4, v3

    invoke-direct/range {v1 .. v6}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    return-object v1

    :cond_6a
    move-object v3, p0

    .line 751
    new-instance v1, Lorg/apache/xpath/XPath;

    const/4 v5, 0x1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v6

    const-string v2, "text()"

    move-object v4, v3

    invoke-direct/range {v1 .. v6}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    return-object v1

    :cond_79
    move-object v3, p0

    .line 744
    new-instance v1, Lorg/apache/xpath/XPath;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    .line 745
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v6

    move-object v4, v3

    invoke-direct/range {v1 .. v6}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    return-object v1

    :cond_9b
    move-object v3, p0

    .line 731
    invoke-interface {v4, p2}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_b0

    .line 732
    new-instance v1, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;

    move-object v2, v3

    invoke-interface {v4, p2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v3

    const/4 v6, 0x0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;-><init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTM;IZ)V

    :goto_ae
    move-object v3, v2

    goto :goto_bd

    :cond_b0
    move v5, p2

    .line 734
    new-instance v1, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;

    move-object v2, v3

    invoke-interface {v4, v5}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v3

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;-><init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTM;IZ)V

    goto :goto_ae

    .line 737
    :goto_bd
    new-instance p0, Lorg/apache/xpath/XPath;

    invoke-interface {v4, v5}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    .line 738
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v6

    move-object v4, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    return-object v1

    :cond_ce
    return-object v0
.end method

.method greylist getCountString(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 792
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 793
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getCountersTable()Lorg/apache/xalan/transformer/CountersTable;

    move-result-object v1

    .line 795
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4b

    .line 797
    invoke-virtual {v2, v0, p2, p0}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 800
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string p0, "NaN"

    return-object p0

    :cond_26
    const-wide/16 v5, 0x0

    cmpg-double v2, v0, v5

    if-gez v2, :cond_35

    .line 801
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string p0, "-Infinity"

    return-object p0

    .line 802
    :cond_35
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string p0, "Infinity"

    return-object p0

    :cond_3e
    cmpl-double v2, v0, v5

    if-nez v2, :cond_45

    .line 803
    const-string p0, "0"

    return-object p0

    :cond_45
    double-to-long v0, v0

    .line 806
    new-array v2, v4, [J

    .line 807
    aput-wide v0, v2, v3

    goto :goto_81

    .line 812
    :cond_4b
    iget v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    const/4 v5, 0x3

    if-ne v5, v2, :cond_5a

    .line 814
    new-array v2, v4, [J

    .line 815
    invoke-virtual {v1, v0, p0, p2}, Lorg/apache/xalan/transformer/CountersTable;->countNode(Lorg/apache/xpath/XPathContext;Lorg/apache/xalan/templates/ElemNumber;I)I

    move-result v0

    int-to-long v0, v0

    aput-wide v0, v2, v3

    goto :goto_81

    :cond_5a
    if-ne v4, v2, :cond_5d

    move v3, v4

    .line 820
    :cond_5d
    invoke-virtual {p0, v0, p2, v3}, Lorg/apache/xalan/templates/ElemNumber;->getMatchingAncestors(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xml/utils/NodeVector;

    move-result-object v2

    .line 822
    invoke-virtual {v2}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    if-ltz v4, :cond_80

    .line 826
    new-array v3, v3, [J

    move v5, v4

    :goto_6c
    if-ltz v5, :cond_7e

    .line 830
    invoke-virtual {v2, v5}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v6

    sub-int v7, v4, v5

    .line 832
    invoke-virtual {v1, v0, p0, v6}, Lorg/apache/xalan/transformer/CountersTable;->countNode(Lorg/apache/xpath/XPathContext;Lorg/apache/xalan/templates/ElemNumber;I)I

    move-result v6

    int-to-long v8, v6

    aput-wide v8, v3, v7

    add-int/lit8 v5, v5, -0x1

    goto :goto_6c

    :cond_7e
    move-object v2, v3

    goto :goto_81

    :cond_80
    const/4 v2, 0x0

    :goto_81
    if-eqz v2, :cond_88

    .line 839
    invoke-virtual {p0, p1, v2, p2}, Lorg/apache/xalan/templates/ElemNumber;->formatNumberList(Lorg/apache/xalan/transformer/TransformerImpl;[JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_88
    const-string p0, ""

    return-object p0
.end method

.method public greylist getFormat()Lorg/apache/xalan/templates/AVT;
    .registers 1

    .line 336
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    return-object p0
.end method

.method public greylist getFrom()Lorg/apache/xpath/XPath;
    .registers 1

    .line 214
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    return-object p0
.end method

.method public greylist getGroupingSeparator()Lorg/apache/xalan/templates/AVT;
    .registers 1

    .line 444
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    return-object p0
.end method

.method public greylist getGroupingSize()Lorg/apache/xalan/templates/AVT;
    .registers 1

    .line 474
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    return-object p0
.end method

.method public greylist getLang()Lorg/apache/xalan/templates/AVT;
    .registers 1

    .line 375
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    return-object p0
.end method

.method public greylist getLetterValue()Lorg/apache/xalan/templates/AVT;
    .registers 1

    .line 408
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    return-object p0
.end method

.method public greylist getLevel()I
    .registers 1

    .line 268
    iget p0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    return p0
.end method

.method greylist getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_1e

    .line 1041
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object p1

    .line 1042
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 1050
    new-instance p1, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string p2, ""

    invoke-direct {p1, p0, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1c
    const/4 p0, 0x0

    return-object p0

    .line 1065
    :cond_1e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method greylist getMatchingAncestors(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xml/utils/NodeVector;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 982
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    .line 983
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;

    move-result-object v1

    .line 984
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    :goto_11
    const/4 v3, -0x1

    if-eq v3, p2, :cond_41

    .line 988
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-eqz v3, :cond_25

    .line 989
    invoke-virtual {v3, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v6

    cmpl-double v3, v6, v4

    if-eqz v3, :cond_25

    if-nez p3, :cond_25

    goto :goto_41

    :cond_25
    if-nez v1, :cond_2e

    .line 1004
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Programmers error! countMatchPattern should never be null!"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1007
    :cond_2e
    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v6

    cmpl-double v3, v6, v4

    if-eqz v3, :cond_3c

    .line 1010
    invoke-virtual {v0, p2}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    if-eqz p3, :cond_3c

    goto :goto_41

    .line 1016
    :cond_3c
    invoke-interface {v2, p2}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p2

    goto :goto_11

    :cond_41
    :goto_41
    return-object v0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 544
    const-string p0, "number"

    return-object p0
.end method

.method public greylist getPreviousNode(Lorg/apache/xpath/XPathContext;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 856
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;

    move-result-object v0

    .line 857
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    const/4 v2, 0x3

    .line 859
    iget v3, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v6, -0x1

    if-ne v2, v3, :cond_4a

    .line 861
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    :cond_12
    if-eq v6, p2, :cond_49

    .line 872
    invoke-interface {v1, p2}, Lorg/apache/xml/dtm/DTM;->getPreviousSibling(I)I

    move-result v2

    if-ne v6, v2, :cond_33

    .line 876
    invoke-interface {v1, p2}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p2

    if-eq v6, p2, :cond_3d

    if-eqz p0, :cond_2a

    .line 878
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_32

    .line 880
    :cond_2a
    invoke-interface {v1, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3d

    :cond_32
    return v6

    :cond_33
    :goto_33
    move p2, v2

    :cond_34
    if-eq v6, v2, :cond_3d

    .line 895
    invoke-interface {v1, p2}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    move-result v2

    if-eq v6, v2, :cond_34

    goto :goto_33

    :cond_3d
    if-eq v6, p2, :cond_12

    if-eqz v0, :cond_49

    .line 906
    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_12

    :cond_49
    return p2

    :cond_4a
    if-eq v6, p2, :cond_5c

    .line 917
    invoke-interface {v1, p2}, Lorg/apache/xml/dtm/DTM;->getPreviousSibling(I)I

    move-result p2

    if-eq v6, p2, :cond_4a

    if-eqz v0, :cond_5c

    .line 921
    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v2

    cmpl-double p0, v2, v4

    if-eqz p0, :cond_4a

    :cond_5c
    return p2
.end method

.method public greylist getTargetNode(Lorg/apache/xpath/XPathContext;I)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 947
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;

    move-result-object v3

    const/4 v0, 0x3

    .line 949
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    if-ne v0, v1, :cond_14

    .line 951
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    move-object v5, p0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xalan/templates/ElemNumber;->findPrecedingOrAncestorOrSelf(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I

    move-result p0

    return p0

    :cond_14
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    .line 957
    iget-object v2, v0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    move-object v5, v0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/ElemNumber;->findAncestor(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I

    move-result p0

    return p0
.end method

.method public greylist getValue()Lorg/apache/xpath/XPath;
    .registers 1

    .line 302
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x23

    return p0
.end method

.method greylist getZeroString()Ljava/lang/String;
    .registers 1

    .line 1577
    const-string p0, "0"

    return-object p0
.end method

.method protected greylist int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 16

    .line 1624
    invoke-virtual {p3}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result p0

    .line 1625
    new-array v0, p0, [C

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    add-int/lit8 v3, p0, -0x1

    if-ge v2, v3, :cond_16

    add-int/lit8 v3, v2, 0x1

    .line 1632
    invoke-virtual {p3, v2}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v2

    aput-char v2, v0, v3

    move v2, v3

    goto :goto_8

    .line 1635
    :cond_16
    invoke-virtual {p3, v2}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result p3

    aput-char p3, v0, v1

    const/16 p3, 0x64

    .line 1640
    new-array p3, p3, [C

    const/16 v1, 0x63

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    move v8, v1

    move-wide v6, v4

    :goto_27
    if-eqz v2, :cond_32

    cmp-long v6, v6, v4

    if-eqz v6, :cond_30

    if-ne v2, v3, :cond_30

    goto :goto_32

    :cond_30
    move-wide v6, v4

    goto :goto_33

    :cond_32
    :goto_32
    int-to-long v6, v3

    :goto_33
    add-long v9, p1, v6

    long-to-int v2, v9

    .line 1691
    rem-int/2addr v2, p0

    int-to-long v9, p0

    .line 1694
    div-long/2addr p1, v9

    if-nez v2, :cond_40

    cmp-long v9, p1, v4

    if-nez v9, :cond_40

    goto :goto_4b

    :cond_40
    add-int/lit8 v9, v8, -0x1

    .line 1701
    aget-char v10, v0, v2

    aput-char v10, p3, v8

    cmp-long v8, p1, v4

    if-gtz v8, :cond_52

    move v8, v9

    :goto_4b
    add-int/lit8 p0, v8, 0x1

    sub-int/2addr v1, v8

    .line 1705
    invoke-virtual {p4, p3, p0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    return-void

    :cond_52
    move v8, v9

    goto :goto_27
.end method

.method protected greylist int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;
    .registers 6

    .line 1595
    invoke-virtual {p3}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    .line 1600
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemNumber;->getZeroString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1603
    :cond_e
    new-instance p0, Ljava/lang/Character;

    long-to-int p1, p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p3, p1}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {p0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected greylist long2roman(JZ)Ljava/lang/String;
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_b

    .line 1935
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemNumber;->getZeroString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-wide/16 v2, 0xf9f

    cmp-long p0, p1, v2

    if-gtz p0, :cond_5e

    .line 1941
    const-string p0, ""

    const/4 v2, 0x0

    .line 1945
    :cond_14
    :goto_14
    sget-object v3, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v4, v3, v2

    iget-wide v5, v4, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postValue:J

    cmp-long v5, p1, v5

    if-ltz v5, :cond_37

    .line 1947
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v3, v2

    iget-object p0, p0, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postLetter:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1948
    aget-object v3, v3, v2

    iget-wide v3, v3, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postValue:J

    sub-long/2addr p1, v3

    goto :goto_14

    :cond_37
    if-eqz p3, :cond_57

    .line 1953
    iget-wide v4, v4, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preValue:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_57

    .line 1955
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v3, v2

    iget-object p0, p0, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preLetter:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1956
    aget-object v3, v3, v2

    iget-wide v3, v3, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preValue:J

    sub-long/2addr p1, v3

    :cond_57
    add-int/lit8 v2, v2, 0x1

    cmp-long v3, p1, v0

    if-gtz v3, :cond_14

    return-object p0

    .line 1966
    :cond_5e
    const-string p0, "#error"

    return-object p0
.end method

.method public greylist setCount(Lorg/apache/xpath/XPath;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    return-void
.end method

.method public greylist setFormat(Lorg/apache/xalan/templates/AVT;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public greylist setFrom(Lorg/apache/xpath/XPath;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    return-void
.end method

.method public greylist setGroupingSeparator(Lorg/apache/xalan/templates/AVT;)V
    .registers 2

    .line 430
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public greylist setGroupingSize(Lorg/apache/xalan/templates/AVT;)V
    .registers 2

    .line 462
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public greylist setLang(Lorg/apache/xalan/templates/AVT;)V
    .registers 2

    .line 359
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public greylist setLetterValue(Lorg/apache/xalan/templates/AVT;)V
    .registers 2

    .line 395
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public greylist setLevel(I)V
    .registers 2

    .line 255
    iput p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    return-void
.end method

.method public greylist setValue(Lorg/apache/xpath/XPath;)V
    .registers 2

    .line 289
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    return-void
.end method

.method protected greylist tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;
    .registers 26

    move-object/from16 v0, p3

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p1, v1

    .line 1725
    const-string v2, "#error"

    if-lez v1, :cond_15

    .line 1727
    const-string v0, "ER_NUMBER_TOO_BIG"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;)V

    return-object v2

    :cond_15
    const/16 v1, 0x64

    .line 1738
    new-array v1, v1, [C

    .line 1749
    const-string v3, "numberGroups"

    invoke-virtual {v0, v3}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xml/utils/res/IntArrayWrapper;

    .line 1752
    const-string v4, "tables"

    .line 1753
    invoke-virtual {v0, v4}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xml/utils/res/StringArrayWrapper;

    .line 1757
    const-string v5, "numbering"

    invoke-virtual {v0, v5}, Ljava/util/ListResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1760
    const-string v6, "multiplicative-additive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v8, 0x0

    if-eqz v5, :cond_163

    .line 1762
    const-string v5, "multiplierOrder"

    invoke-virtual {v0, v5}, Ljava/util/ListResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1763
    const-string v10, "multiplier"

    .line 1764
    invoke-virtual {v0, v10}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/xml/utils/res/LongArrayWrapper;

    .line 1765
    const-string v11, "zero"

    invoke-virtual {v0, v11}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move v12, v8

    .line 1769
    :goto_4f
    invoke-virtual {v10}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    move-result v13

    if-ge v12, v13, :cond_60

    invoke-virtual {v10, v12}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v13

    cmp-long v13, p1, v13

    if-gez v13, :cond_60

    add-int/lit8 v12, v12, 0x1

    goto :goto_4f

    :cond_60
    move v15, v8

    move v14, v12

    const-wide/16 v16, 0x0

    move-wide/from16 v12, p1

    .line 1776
    :goto_66
    invoke-virtual {v10}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    move-result v6

    if-lt v14, v6, :cond_72

    move-object/from16 v20, v2

    move/from16 p0, v8

    goto/16 :goto_16d

    .line 1782
    :cond_72
    invoke-virtual {v10, v14}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v6

    cmp-long v6, v12, v6

    if-gez v6, :cond_a0

    .line 1784
    invoke-virtual {v11}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v6

    if-nez v6, :cond_8c

    :cond_80
    :goto_80
    add-int/lit8 v14, v14, 0x1

    :cond_82
    move-object/from16 v20, v2

    move/from16 p0, v8

    move-object/from16 v19, v10

    move-object/from16 v21, v11

    goto/16 :goto_152

    :cond_8c
    add-int/lit8 v6, v15, -0x1

    .line 1790
    aget-char v6, v1, v6

    invoke-virtual {v11, v8}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v7

    if-eq v6, v7, :cond_80

    add-int/lit8 v6, v15, 0x1

    .line 1791
    invoke-virtual {v11, v8}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v7

    aput-char v7, v1, v15

    move v15, v6

    goto :goto_80

    .line 1796
    :cond_a0
    invoke-virtual {v10, v14}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v6

    cmp-long v6, v12, v6

    if-ltz v6, :cond_82

    .line 1798
    invoke-virtual {v10, v14}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v6

    div-long v6, v12, v6

    .line 1800
    invoke-virtual {v10, v14}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v18

    rem-long v12, v12, v18

    move/from16 p0, v8

    const/16 v18, 0x1

    .line 1804
    :goto_b8
    invoke-virtual {v3}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_14a

    .line 1808
    invoke-virtual {v3, v8}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v9

    move-object/from16 v19, v10

    int-to-long v9, v9

    div-long v9, v6, v9

    cmp-long v9, v9, v16

    if-gtz v9, :cond_d0

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v10, v19

    goto :goto_b8

    .line 1814
    :cond_d0
    invoke-virtual {v4, v8}, Lorg/apache/xml/utils/res/StringArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1816
    invoke-virtual {v9}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v20, v2

    new-array v2, v10, [C

    move-object/from16 p1, v2

    move-object/from16 v21, v11

    move/from16 v2, p0

    .line 1820
    :goto_ea
    invoke-virtual {v9}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v11

    if-ge v2, v11, :cond_fa

    add-int/lit8 v11, v2, 0x1

    .line 1822
    invoke-virtual {v9, v2}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v2

    aput-char v2, p1, v11

    move v2, v11

    goto :goto_ea

    :cond_fa
    add-int/lit8 v2, v2, -0x1

    .line 1825
    invoke-virtual {v9, v2}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v2

    aput-char v2, p1, p0

    long-to-int v2, v6

    .line 1828
    invoke-virtual {v3, v8}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v8

    div-int/2addr v2, v8

    if-nez v2, :cond_10f

    cmp-long v6, v6, v16

    if-nez v6, :cond_10f

    goto :goto_150

    .line 1834
    :cond_10f
    const-string v6, "multiplierChar"

    invoke-virtual {v0, v6}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1835
    invoke-virtual {v6, v14}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v6

    if-ge v2, v10, :cond_149

    .line 1840
    const-string v7, "precedes"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_130

    add-int/lit8 v7, v15, 0x1

    .line 1842
    aput-char v6, v1, v15

    add-int/lit8 v15, v15, 0x2

    .line 1843
    aget-char v2, p1, v2

    aput-char v2, v1, v7

    goto :goto_150

    :cond_130
    move/from16 v7, v18

    if-ne v2, v7, :cond_13c

    .line 1849
    invoke-virtual/range {v19 .. v19}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    move-result v8

    sub-int/2addr v8, v7

    if-ne v14, v8, :cond_13c

    goto :goto_143

    :cond_13c
    add-int/lit8 v7, v15, 0x1

    .line 1851
    aget-char v2, p1, v2

    aput-char v2, v1, v15

    move v15, v7

    :goto_143
    add-int/lit8 v2, v15, 0x1

    .line 1853
    aput-char v6, v1, v15

    move v15, v2

    goto :goto_150

    :cond_149
    return-object v20

    :cond_14a
    move-object/from16 v20, v2

    move-object/from16 v19, v10

    move-object/from16 v21, v11

    :goto_150
    add-int/lit8 v14, v14, 0x1

    .line 1866
    :goto_152
    invoke-virtual/range {v19 .. v19}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    move-result v2

    if-lt v14, v2, :cond_159

    goto :goto_16d

    :cond_159
    move/from16 v8, p0

    move-object/from16 v10, v19

    move-object/from16 v2, v20

    move-object/from16 v11, v21

    goto/16 :goto_66

    :cond_163
    move-object/from16 v20, v2

    move/from16 p0, v8

    const-wide/16 v16, 0x0

    move/from16 v15, p0

    move-wide/from16 v12, p1

    :goto_16d
    move/from16 v2, p0

    .line 1874
    :goto_16f
    invoke-virtual {v3}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_1d1

    .line 1876
    invoke-virtual {v3, v2}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    div-long v5, v12, v5

    cmp-long v5, v5, v16

    if-gtz v5, :cond_183

    add-int/lit8 v2, v2, 0x1

    goto :goto_16f

    .line 1880
    :cond_183
    invoke-virtual {v4, v2}, Lorg/apache/xml/utils/res/StringArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ListResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xml/utils/res/CharArrayWrapper;

    .line 1882
    invoke-virtual {v5}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v6

    const/16 v18, 0x1

    add-int/lit8 v6, v6, 0x1

    new-array v7, v6, [C

    move/from16 v8, p0

    .line 1887
    :goto_199
    invoke-virtual {v5}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_1a9

    add-int/lit8 v9, v8, 0x1

    .line 1889
    invoke-virtual {v5, v8}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v8

    aput-char v8, v7, v9

    move v8, v9

    goto :goto_199

    :cond_1a9
    add-int/lit8 v8, v8, -0x1

    .line 1892
    invoke-virtual {v5, v8}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v5

    aput-char v5, v7, p0

    long-to-int v5, v12

    .line 1895
    invoke-virtual {v3, v2}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v8

    div-int/2addr v5, v8

    .line 1898
    invoke-virtual {v3, v2}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    rem-long/2addr v12, v8

    if-nez v5, :cond_1c4

    cmp-long v8, v12, v16

    if-nez v8, :cond_1c4

    goto :goto_1d1

    :cond_1c4
    if-ge v5, v6, :cond_1d0

    add-int/lit8 v6, v15, 0x1

    .line 1908
    aget-char v5, v7, v5

    aput-char v5, v1, v15

    add-int/lit8 v2, v2, 0x1

    move v15, v6

    goto :goto_16f

    :cond_1d0
    return-object v20

    .line 1918
    :cond_1d1
    :goto_1d1
    new-instance v0, Ljava/lang/String;

    move/from16 v2, p0

    invoke-direct {v0, v1, v2, v15}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
