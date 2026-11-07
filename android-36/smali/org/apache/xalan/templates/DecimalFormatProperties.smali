.class public Lorg/apache/xalan/templates/DecimalFormatProperties;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "DecimalFormatProperties.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x5b07b40a72bfea86L


# instance fields
.field greylist m_dfs:Ljava/text/DecimalFormatSymbols;

.field private greylist m_qname:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor greylist <init>(I)V
    .registers 4

    .line 61
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_qname:Lorg/apache/xml/utils/QName;

    .line 63
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    .line 66
    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    .line 69
    iput p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_docOrderNumber:I

    return-void
.end method


# virtual methods
.method public greylist getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;
    .registers 1

    .line 93
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    return-object p0
.end method

.method public greylist getDecimalSeparator()C
    .registers 1

    .line 152
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result p0

    return p0
.end method

.method public greylist getDigit()C
    .registers 1

    .line 365
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result p0

    return p0
.end method

.method public greylist getGroupingSeparator()C
    .registers 1

    .line 176
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result p0

    return p0
.end method

.method public greylist getInfinity()Ljava/lang/String;
    .registers 1

    .line 200
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getMinusSign()C
    .registers 1

    .line 224
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result p0

    return p0
.end method

.method public greylist getNaN()Ljava/lang/String;
    .registers 1

    .line 248
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getName()Lorg/apache/xml/utils/QName;
    .registers 2

    .line 125
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_qname:Lorg/apache/xml/utils/QName;

    if-nez p0, :cond_b

    .line 126
    new-instance p0, Lorg/apache/xml/utils/QName;

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    :cond_b
    return-object p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 258
    const-string p0, "decimal-format"

    return-object p0
.end method

.method public greylist getPatternSeparator()C
    .registers 1

    .line 391
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result p0

    return p0
.end method

.method public greylist getPerMille()C
    .registers 1

    .line 306
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    move-result p0

    return p0
.end method

.method public greylist getPercent()C
    .registers 1

    .line 282
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPercent()C

    move-result p0

    return p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x53

    return p0
.end method

.method public greylist getZeroDigit()C
    .registers 1

    .line 341
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result p0

    return p0
.end method

.method public greylist recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2

    .line 401
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeDecimalFormats(Lorg/apache/xalan/templates/DecimalFormatProperties;)V

    return-void
.end method

.method public greylist setDecimalSeparator(C)V
    .registers 2

    .line 140
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    return-void
.end method

.method public greylist setDigit(C)V
    .registers 2

    .line 353
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    return-void
.end method

.method public greylist setGroupingSeparator(C)V
    .registers 2

    .line 164
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    return-void
.end method

.method public greylist setInfinity(Ljava/lang/String;)V
    .registers 2

    .line 188
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    return-void
.end method

.method public greylist setMinusSign(C)V
    .registers 2

    .line 212
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    return-void
.end method

.method public greylist setNaN(Ljava/lang/String;)V
    .registers 2

    .line 236
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    return-void
.end method

.method public greylist setName(Lorg/apache/xml/utils/QName;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_qname:Lorg/apache/xml/utils/QName;

    return-void
.end method

.method public greylist setPatternSeparator(C)V
    .registers 2

    .line 378
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    return-void
.end method

.method public greylist setPerMille(C)V
    .registers 2

    .line 294
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    return-void
.end method

.method public greylist setPercent(C)V
    .registers 2

    .line 270
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    return-void
.end method

.method public greylist setZeroDigit(C)V
    .registers 2

    .line 329
    iget-object p0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    return-void
.end method
