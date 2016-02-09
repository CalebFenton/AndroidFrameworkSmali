.class public Lorg/apache/xalan/templates/DecimalFormatProperties;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "DecimalFormatProperties.java"


# static fields
.field static final serialVersionUID:J = -0x5b07b40a72bfea86L


# instance fields
.field m_dfs:Ljava/text/DecimalFormatSymbols;

.field private m_qname:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "docOrderNumber"    # I

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    .line 101
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_qname:Lorg/apache/xml/utils/QName;

    #@6
    .line 63
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    #@8
    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    #@b
    iput-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@d
    .line 66
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@f
    const-string/jumbo v1, "Infinity"

    #@12
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    #@15
    .line 67
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@17
    const-string/jumbo v1, "NaN"

    #@1a
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    #@1d
    .line 69
    iput p1, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_docOrderNumber:I

    #@1f
    .line 60
    return-void
.end method


# virtual methods
.method public getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    return-object v0
.end method

.method public getDecimalSeparator()C
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDigit()C
    .locals 1

    #@0
    .prologue
    .line 365
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getGroupingSeparator()C
    .locals 1

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getInfinity()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMinusSign()C
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNaN()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .locals 2

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_qname:Lorg/apache/xml/utils/QName;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 126
    new-instance v0, Lorg/apache/xml/utils/QName;

    #@6
    const-string/jumbo v1, ""

    #@9
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    #@c
    return-object v0

    #@d
    .line 128
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_qname:Lorg/apache/xml/utils/QName;

    #@f
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 258
    const-string/jumbo v0, "decimal-format"

    #@3
    return-object v0
.end method

.method public getPatternSeparator()C
    .locals 1

    #@0
    .prologue
    .line 391
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPerMille()C
    .locals 1

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPercent()C
    .locals 1

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getPercent()C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 317
    const/16 v0, 0x53

    #@2
    return v0
.end method

.method public getZeroDigit()C
    .locals 1

    #@0
    .prologue
    .line 341
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "root"    # Lorg/apache/xalan/templates/StylesheetRoot;

    #@0
    .prologue
    .line 401
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeDecimalFormats(Lorg/apache/xalan/templates/DecimalFormatProperties;)V

    #@3
    .line 399
    return-void
.end method

.method public setDecimalSeparator(C)V
    .locals 1
    .param p1, "ds"    # C

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    #@5
    .line 138
    return-void
.end method

.method public setDigit(C)V
    .locals 1
    .param p1, "v"    # C

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    #@5
    .line 351
    return-void
.end method

.method public setGroupingSeparator(C)V
    .locals 1
    .param p1, "gs"    # C

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    #@5
    .line 162
    return-void
.end method

.method public setInfinity(Ljava/lang/String;)V
    .locals 1
    .param p1, "inf"    # Ljava/lang/String;

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    #@5
    .line 186
    return-void
.end method

.method public setMinusSign(C)V
    .locals 1
    .param p1, "v"    # C

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    #@5
    .line 210
    return-void
.end method

.method public setNaN(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    #@0
    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    #@5
    .line 234
    return-void
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .locals 0
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 112
    iput-object p1, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_qname:Lorg/apache/xml/utils/QName;

    #@2
    .line 110
    return-void
.end method

.method public setPatternSeparator(C)V
    .locals 1
    .param p1, "v"    # C

    #@0
    .prologue
    .line 378
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    #@5
    .line 376
    return-void
.end method

.method public setPerMille(C)V
    .locals 1
    .param p1, "v"    # C

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    #@5
    .line 292
    return-void
.end method

.method public setPercent(C)V
    .locals 1
    .param p1, "v"    # C

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    #@5
    .line 268
    return-void
.end method

.method public setZeroDigit(C)V
    .locals 1
    .param p1, "v"    # C

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Lorg/apache/xalan/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    #@2
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    #@5
    .line 327
    return-void
.end method
