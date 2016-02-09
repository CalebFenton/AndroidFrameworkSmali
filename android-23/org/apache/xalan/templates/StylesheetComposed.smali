.class public Lorg/apache/xalan/templates/StylesheetComposed;
.super Lorg/apache/xalan/templates/Stylesheet;
.source "StylesheetComposed.java"


# static fields
.field static final serialVersionUID:J = -0x2fcbcd7627ab1243L


# instance fields
.field private m_endImportCountComposed:I

.field private m_importCountComposed:I

.field private m_importNumber:I

.field private transient m_includesComposed:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/xalan/templates/Stylesheet;

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/Stylesheet;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    #@3
    .line 165
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importNumber:I

    #@6
    .line 54
    return-void
.end method


# virtual methods
.method public getEndImportCountComposed()I
    .locals 1

    #@0
    .prologue
    .line 256
    iget v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    #@2
    return v0
.end method

.method public getImportComposed(I)Lorg/apache/xalan/templates/StylesheetComposed;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 228
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@3
    move-result-object v0

    #@4
    .line 234
    .local v0, "root":Lorg/apache/xalan/templates/StylesheetRoot;
    iget v1, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importNumber:I

    #@6
    add-int/lit8 v1, v1, 0x1

    #@8
    add-int/2addr v1, p1

    #@9
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method public getImportCountComposed()I
    .locals 1

    #@0
    .prologue
    .line 246
    iget v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importCountComposed:I

    #@2
    return v0
.end method

.method public getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 305
    const/4 v0, -0x1

    #@1
    if-ne v0, p1, :cond_0

    #@3
    .line 306
    return-object p0

    #@4
    .line 308
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 309
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@a
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@d
    throw v0

    #@e
    .line 311
    :cond_1
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lorg/apache/xalan/templates/Stylesheet;

    #@16
    return-object v0
.end method

.method public getIncludeCountComposed()I
    .locals 1

    #@0
    .prologue
    .line 322
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    #@6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isAggregatedType()Z
    .locals 1

    #@0
    .prologue
    .line 67
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public recompose(Ljava/util/Vector;)V
    .locals 6
    .param p1, "recomposableElements"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeCountComposed()I

    #@3
    move-result v3

    #@4
    .line 87
    .local v3, "n":I
    const/4 v0, -0x1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_9

    #@7
    .line 89
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    #@a
    move-result-object v1

    #@b
    .line 93
    .local v1, "included":Lorg/apache/xalan/templates/Stylesheet;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getOutputCount()I

    #@e
    move-result v4

    #@f
    .line 94
    .local v4, "s":I
    const/4 v2, 0x0

    #@10
    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_0

    #@12
    .line 96
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getOutput(I)Lorg/apache/xalan/templates/OutputProperties;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@19
    .line 94
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_1

    #@1c
    .line 101
    :cond_0
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getAttributeSetCount()I

    #@1f
    move-result v4

    #@20
    .line 102
    const/4 v2, 0x0

    #@21
    :goto_2
    if-ge v2, v4, :cond_1

    #@23
    .line 104
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getAttributeSet(I)Lorg/apache/xalan/templates/ElemAttributeSet;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@2a
    .line 102
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_2

    #@2d
    .line 109
    :cond_1
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormatCount()I

    #@30
    move-result v4

    #@31
    .line 110
    const/4 v2, 0x0

    #@32
    :goto_3
    if-ge v2, v4, :cond_2

    #@34
    .line 112
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@3b
    .line 110
    add-int/lit8 v2, v2, 0x1

    #@3d
    goto :goto_3

    #@3e
    .line 117
    :cond_2
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getKeyCount()I

    #@41
    move-result v4

    #@42
    .line 118
    const/4 v2, 0x0

    #@43
    :goto_4
    if-ge v2, v4, :cond_3

    #@45
    .line 120
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getKey(I)Lorg/apache/xalan/templates/KeyDeclaration;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@4c
    .line 118
    add-int/lit8 v2, v2, 0x1

    #@4e
    goto :goto_4

    #@4f
    .line 125
    :cond_3
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceAliasCount()I

    #@52
    move-result v4

    #@53
    .line 126
    const/4 v2, 0x0

    #@54
    :goto_5
    if-ge v2, v4, :cond_4

    #@56
    .line 128
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceAlias(I)Lorg/apache/xalan/templates/NamespaceAlias;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@5d
    .line 126
    add-int/lit8 v2, v2, 0x1

    #@5f
    goto :goto_5

    #@60
    .line 133
    :cond_4
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getTemplateCount()I

    #@63
    move-result v4

    #@64
    .line 134
    const/4 v2, 0x0

    #@65
    :goto_6
    if-ge v2, v4, :cond_5

    #@67
    .line 136
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getTemplate(I)Lorg/apache/xalan/templates/ElemTemplate;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@6e
    .line 134
    add-int/lit8 v2, v2, 0x1

    #@70
    goto :goto_6

    #@71
    .line 141
    :cond_5
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    #@74
    move-result v4

    #@75
    .line 142
    const/4 v2, 0x0

    #@76
    :goto_7
    if-ge v2, v4, :cond_6

    #@78
    .line 144
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    #@7b
    move-result-object v5

    #@7c
    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@7f
    .line 142
    add-int/lit8 v2, v2, 0x1

    #@81
    goto :goto_7

    #@82
    .line 149
    :cond_6
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getStripSpaceCount()I

    #@85
    move-result v4

    #@86
    .line 150
    const/4 v2, 0x0

    #@87
    :goto_8
    if-ge v2, v4, :cond_7

    #@89
    .line 152
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getStripSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@90
    .line 150
    add-int/lit8 v2, v2, 0x1

    #@92
    goto :goto_8

    #@93
    .line 155
    :cond_7
    invoke-virtual {v1}, Lorg/apache/xalan/templates/Stylesheet;->getPreserveSpaceCount()I

    #@96
    move-result v4

    #@97
    .line 156
    const/4 v2, 0x0

    #@98
    :goto_9
    if-ge v2, v4, :cond_8

    #@9a
    .line 158
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/Stylesheet;->getPreserveSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    #@9d
    move-result-object v5

    #@9e
    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@a1
    .line 156
    add-int/lit8 v2, v2, 0x1

    #@a3
    goto :goto_9

    #@a4
    .line 87
    :cond_8
    add-int/lit8 v0, v0, 0x1

    #@a6
    goto/16 :goto_0

    #@a8
    .line 77
    .end local v1    # "included":Lorg/apache/xalan/templates/Stylesheet;
    .end local v2    # "j":I
    .end local v4    # "s":I
    :cond_9
    return-void
.end method

.method recomposeImports()V
    .locals 6

    #@0
    .prologue
    .line 185
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {v4, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getImportNumber(Lorg/apache/xalan/templates/StylesheetComposed;)I

    #@7
    move-result v4

    #@8
    iput v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importNumber:I

    #@a
    .line 187
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@d
    move-result-object v3

    #@e
    .line 188
    .local v3, "root":Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    #@11
    move-result v1

    #@12
    .line 190
    .local v1, "globalImportCount":I
    iget v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importNumber:I

    #@14
    sub-int v4, v1, v4

    #@16
    add-int/lit8 v4, v4, -0x1

    #@18
    iput v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_importCountComposed:I

    #@1a
    .line 193
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCount()I

    #@1d
    move-result v0

    #@1e
    .line 194
    .local v0, "count":I
    if-lez v0, :cond_0

    #@20
    .line 196
    iget v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    #@22
    add-int/2addr v4, v0

    #@23
    iput v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    #@25
    .line 197
    :goto_0
    if-lez v0, :cond_0

    #@27
    .line 198
    iget v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    #@29
    add-int/lit8 v0, v0, -0x1

    #@2b
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetComposed;->getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5}, Lorg/apache/xalan/templates/StylesheetComposed;->getEndImportCountComposed()I

    #@32
    move-result v5

    #@33
    add-int/2addr v4, v5

    #@34
    iput v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    #@36
    goto :goto_0

    #@37
    .line 203
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeCountComposed()I

    #@3a
    move-result v0

    #@3b
    .line 204
    :cond_1
    if-lez v0, :cond_2

    #@3d
    .line 206
    add-int/lit8 v0, v0, -0x1

    #@3f
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Lorg/apache/xalan/templates/Stylesheet;->getImportCount()I

    #@46
    move-result v2

    #@47
    .line 207
    .local v2, "imports":I
    iget v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    #@49
    add-int/2addr v4, v2

    #@4a
    iput v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    #@4c
    .line 208
    :goto_1
    if-lez v2, :cond_1

    #@4e
    .line 209
    iget v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    #@50
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    #@53
    move-result-object v5

    #@54
    add-int/lit8 v2, v2, -0x1

    #@56
    invoke-virtual {v5, v2}, Lorg/apache/xalan/templates/Stylesheet;->getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v5}, Lorg/apache/xalan/templates/StylesheetComposed;->getEndImportCountComposed()I

    #@5d
    move-result v5

    #@5e
    add-int/2addr v4, v5

    #@5f
    iput v4, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_endImportCountComposed:I

    #@61
    goto :goto_1

    #@62
    .line 182
    .end local v2    # "imports":I
    :cond_2
    return-void
.end method

.method recomposeIncludes(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 4
    .param p1, "including"    # Lorg/apache/xalan/templates/Stylesheet;

    #@0
    .prologue
    .line 275
    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getIncludeCount()I

    #@3
    move-result v2

    #@4
    .line 277
    .local v2, "n":I
    if-lez v2, :cond_1

    #@6
    .line 279
    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    #@8
    if-nez v3, :cond_0

    #@a
    .line 280
    new-instance v3, Ljava/util/Vector;

    #@c
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #@f
    iput-object v3, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    #@11
    .line 282
    :cond_0
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@14
    .line 284
    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/Stylesheet;->getInclude(I)Lorg/apache/xalan/templates/Stylesheet;

    #@17
    move-result-object v1

    #@18
    .line 285
    .local v1, "included":Lorg/apache/xalan/templates/Stylesheet;
    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetComposed;->m_includesComposed:Ljava/util/Vector;

    #@1a
    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@1d
    .line 286
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/StylesheetComposed;->recomposeIncludes(Lorg/apache/xalan/templates/Stylesheet;)V

    #@20
    .line 282
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 272
    .end local v0    # "i":I
    .end local v1    # "included":Lorg/apache/xalan/templates/Stylesheet;
    :cond_1
    return-void
.end method

.method public recomposeTemplates(Z)V
    .locals 0
    .param p1, "flushFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 340
    return-void
.end method
