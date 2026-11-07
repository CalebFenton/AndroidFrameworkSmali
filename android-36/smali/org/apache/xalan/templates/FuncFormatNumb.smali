.class public Lorg/apache/xalan/templates/FuncFormatNumb;
.super Lorg/apache/xpath/functions/Function3Args;
.source "FuncFormatNumb.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x7b185720e3567f8cL


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function3Args;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist checkNumberArgs(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    const/4 v0, 0x2

    if-ge p1, v0, :cond_7

    goto :goto_8

    :cond_7
    return-void

    .line 176
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lorg/apache/xalan/templates/FuncFormatNumb;->reportWrongNumberArgs()V

    return-void
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 59
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v1

    .line 62
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FunctionOneArg;->getArg0()Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v2

    .line 63
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function2Args;->getArg1()Lorg/apache/xpath/Expression;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa4

    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_2f

    .line 67
    const-string v5, "ER_CURRENCY_SIGN_ILLEGAL"

    invoke-virtual {v1, v5}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;)V

    .line 73
    :cond_2f
    :try_start_2f
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function3Args;->getArg2()Lorg/apache/xpath/Expression;

    move-result-object v5

    if-eqz v5, :cond_62

    .line 77
    invoke-virtual {v5, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v5

    .line 78
    new-instance v6, Lorg/apache/xml/utils/QName;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    .line 80
    invoke-virtual {v1, v6}, Lorg/apache/xalan/templates/StylesheetRoot;->getDecimalFormatComposed(Lorg/apache/xml/utils/QName;)Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    if-nez v6, :cond_56

    .line 84
    const-string v6, "WG_NO_DECIMALFORMAT_DECLARATION"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p1, v6, v5}, Lorg/apache/xalan/templates/FuncFormatNumb;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_62

    .line 93
    :cond_56
    new-instance p0, Ljava/text/DecimalFormat;

    invoke-direct {p0}, Ljava/text/DecimalFormat;-><init>()V

    .line 95
    invoke-virtual {p0, v6}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 96
    invoke-virtual {p0, v4}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    goto :goto_63

    :cond_62
    :goto_62
    const/4 p0, 0x0

    :goto_63
    if-nez p0, :cond_9c

    .line 105
    new-instance p0, Lorg/apache/xml/utils/QName;

    const-string p1, ""

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getDecimalFormatComposed(Lorg/apache/xml/utils/QName;)Ljava/text/DecimalFormatSymbols;

    move-result-object p0

    if-eqz p0, :cond_7f

    .line 109
    new-instance p1, Ljava/text/DecimalFormat;

    invoke-direct {p1}, Ljava/text/DecimalFormat;-><init>()V

    .line 111
    invoke-virtual {p1, p0}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 112
    invoke-virtual {p1, v4}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    :goto_7d
    move-object p0, p1

    goto :goto_9c

    .line 116
    :cond_7f
    new-instance p0, Ljava/text/DecimalFormatSymbols;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, p1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 118
    const-string p1, "Infinity"

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    .line 119
    const-string p1, "NaN"

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    .line 121
    new-instance p1, Ljava/text/DecimalFormat;

    invoke-direct {p1}, Ljava/text/DecimalFormat;-><init>()V

    .line 123
    invoke-virtual {p1, p0}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 126
    invoke-virtual {p1, v4}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    goto :goto_7d

    .line 130
    :cond_9c
    :goto_9c
    new-instance p1, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_a5} :catch_a6

    return-object p1

    .line 134
    :catch_a6
    const-string p0, "ER_MALFORMED_FORMAT_STRING"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0
.end method

.method protected greylist reportWrongNumberArgs()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .line 186
    new-instance p0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v0, "ER_TWO_OR_THREE"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 158
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 159
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    .line 161
    new-instance p3, Ljavax/xml/transform/TransformerException;

    .line 162
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {p3, p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 161
    invoke-interface {p2, p3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    return-void
.end method
