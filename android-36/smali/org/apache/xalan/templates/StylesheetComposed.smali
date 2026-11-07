.class public Lorg/apache/xalan/templates/StylesheetComposed;
.super Lorg/apache/xalan/templates/Stylesheet;
.source "StylesheetComposed.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x2fcbcd7627ab1243L


# instance fields
.field private greylist m_endImportCountComposed:I

.field private greylist m_importCountComposed:I

.field private greylist m_importNumber:I

.field private transient greylist m_includesComposed:Ljava/util/Vector;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xalan/templates/Stylesheet;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/Stylesheet;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    const/4 p1, -0x1

    .line 165
    iput p1, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importNumber:I

    return-void
.end method


# virtual methods
.method public greylist getEndImportCountComposed()I
    .registers 1

    .line 256
    iget p0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    return p0
.end method

.method public greylist getImportComposed(I)Lorg/apache/xalan/templates/StylesheetComposed;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    .line 234
    iget p0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importNumber:I

    add-int/lit8 p0, p0, 0x1

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object p0

    return-object p0
.end method

.method public greylist getImportCountComposed()I
    .registers 1

    .line 246
    iget p0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importCountComposed:I

    return p0
.end method

.method public greylist getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne v0, p1, :cond_4

    return-object p0

    .line 308
    :cond_4
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    if-eqz p0, :cond_f

    .line 311
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/Stylesheet;

    return-object p0

    .line 309
    :cond_f
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist getIncludeCountComposed()I
    .registers 1

    .line 322
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isAggregatedType()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist recompose(Ljava/util/Vector;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeCountComposed()I

    move-result v0

    const/4 v1, -0x1

    :goto_5
    if-ge v1, v0, :cond_a8

    .line 89
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lorg/apache/xalan/templates/Stylesheet;->getOutputCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_11
    if-ge v5, v3, :cond_1d

    .line 96
    invoke-virtual {v2, v5}, Lorg/apache/xalan/templates/Stylesheet;->getOutput(I)Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 101
    :cond_1d
    invoke-virtual {v2}, Lorg/apache/xalan/templates/Stylesheet;->getAttributeSetCount()I

    move-result v3

    move v5, v4

    :goto_22
    if-ge v5, v3, :cond_2e

    .line 104
    invoke-virtual {v2, v5}, Lorg/apache/xalan/templates/Stylesheet;->getAttributeSet(I)Lorg/apache/xalan/templates/ElemAttributeSet;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 109
    :cond_2e
    invoke-virtual {v2}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormatCount()I

    move-result v3

    move v5, v4

    :goto_33
    if-ge v5, v3, :cond_3f

    .line 112
    invoke-virtual {v2, v5}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 117
    :cond_3f
    invoke-virtual {v2}, Lorg/apache/xalan/templates/Stylesheet;->getKeyCount()I

    move-result v3

    move v5, v4

    :goto_44
    if-ge v5, v3, :cond_50

    .line 120
    invoke-virtual {v2, v5}, Lorg/apache/xalan/templates/Stylesheet;->getKey(I)Lorg/apache/xalan/templates/KeyDeclaration;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 125
    :cond_50
    invoke-virtual {v2}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceAliasCount()I

    move-result v3

    move v5, v4

    :goto_55
    if-ge v5, v3, :cond_61

    .line 128
    invoke-virtual {v2, v5}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceAlias(I)Lorg/apache/xalan/templates/NamespaceAlias;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    .line 133
    :cond_61
    invoke-virtual {v2}, Lorg/apache/xalan/templates/Stylesheet;->getTemplateCount()I

    move-result v3

    move v5, v4

    :goto_66
    if-ge v5, v3, :cond_72

    .line 136
    invoke-virtual {v2, v5}, Lorg/apache/xalan/templates/Stylesheet;->getTemplate(I)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    .line 141
    :cond_72
    invoke-virtual {v2}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v3

    move v5, v4

    :goto_77
    if-ge v5, v3, :cond_83

    .line 144
    invoke-virtual {v2, v5}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_77

    .line 149
    :cond_83
    invoke-virtual {v2}, Lorg/apache/xalan/templates/Stylesheet;->getStripSpaceCount()I

    move-result v3

    move v5, v4

    :goto_88
    if-ge v5, v3, :cond_94

    .line 152
    invoke-virtual {v2, v5}, Lorg/apache/xalan/templates/Stylesheet;->getStripSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_88

    .line 155
    :cond_94
    invoke-virtual {v2}, Lorg/apache/xalan/templates/Stylesheet;->getPreserveSpaceCount()I

    move-result v3

    :goto_98
    if-ge v4, v3, :cond_a4

    .line 158
    invoke-virtual {v2, v4}, Lorg/apache/xalan/templates/Stylesheet;->getPreserveSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_98

    :cond_a4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_a8
    return-void
.end method

.method greylist recomposeImports()V
    .registers 5

    .line 185
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getImportNumber(Lorg/apache/xalan/templates/StylesheetComposed;)I

    move-result v0

    iput v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importNumber:I

    .line 187
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v0

    .line 190
    iget v1, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importNumber:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importCountComposed:I

    .line 193
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getImportCount()I

    move-result v0

    if-lez v0, :cond_36

    .line 196
    iget v1, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    :goto_24
    if-lez v0, :cond_36

    .line 198
    iget v1, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/Stylesheet;->getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetComposed;->getEndImportCountComposed()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    goto :goto_24

    .line 203
    :cond_36
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeCountComposed()I

    move-result v0

    :cond_3a
    if-lez v0, :cond_61

    add-int/lit8 v0, v0, -0x1

    .line 206
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getImportCount()I

    move-result v1

    .line 207
    iget v2, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    :goto_4b
    if-lez v1, :cond_3a

    .line 209
    iget v2, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Lorg/apache/xalan/templates/Stylesheet;->getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetComposed;->getEndImportCountComposed()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    goto :goto_4b

    :cond_61
    return-void
.end method

.method greylist recomposeIncludes(Lorg/apache/xalan/templates/Stylesheet;)V
    .registers 6

    .line 275
    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getIncludeCount()I

    move-result v0

    if-lez v0, :cond_23

    .line 279
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    if-nez v1, :cond_11

    .line 280
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_23

    .line 284
    invoke-virtual {p1, v1}, Lorg/apache/xalan/templates/Stylesheet;->getInclude(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v2

    .line 285
    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 286
    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/StylesheetComposed;->recomposeIncludes(Lorg/apache/xalan/templates/Stylesheet;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_23
    return-void
.end method

.method public greylist recomposeTemplates(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 0
    return-void
.end method
