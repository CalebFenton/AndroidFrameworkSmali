.class public Lorg/apache/xalan/templates/ElemUse;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemUse.java"


# static fields
.field static final serialVersionUID:J = 0x50e886227b73bd18L


# instance fields
.field private m_attributeSetsNames:[Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    .line 48
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    #@6
    .line 40
    return-void
.end method

.method private applyAttrSets(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/StylesheetRoot;[Lorg/apache/xml/utils/QName;)V
    .locals 11
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "stylesheet"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .param p3, "attributeSetsNames"    # [Lorg/apache/xml/utils/QName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 145
    if-eqz p3, :cond_2

    #@3
    .line 147
    array-length v4, p3

    #@4
    .line 149
    .local v4, "nNames":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    #@7
    .line 151
    aget-object v6, p3, v2

    #@9
    .line 152
    .local v6, "qname":Lorg/apache/xml/utils/QName;
    invoke-virtual {p2, v6}, Lorg/apache/xalan/templates/StylesheetRoot;->getAttributeSetComposed(Lorg/apache/xml/utils/QName;)Ljava/util/ArrayList;

    #@c
    move-result-object v1

    #@d
    .line 154
    .local v1, "attrSets":Ljava/util/List;
    if-eqz v1, :cond_0

    #@f
    .line 156
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@12
    move-result v5

    #@13
    .line 160
    .local v5, "nSets":I
    add-int/lit8 v3, v5, -0x1

    #@15
    .local v3, "k":I
    :goto_1
    if-ltz v3, :cond_1

    #@17
    .line 163
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lorg/apache/xalan/templates/ElemAttributeSet;

    #@1d
    .line 165
    .local v0, "attrSet":Lorg/apache/xalan/templates/ElemAttributeSet;
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemAttributeSet;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    #@20
    .line 160
    add-int/lit8 v3, v3, -0x1

    #@22
    goto :goto_1

    #@23
    .line 170
    .end local v0    # "attrSet":Lorg/apache/xalan/templates/ElemAttributeSet;
    .end local v3    # "k":I
    .end local v5    # "nSets":I
    :cond_0
    new-instance v7, Ljavax/xml/transform/TransformerException;

    #@25
    .line 171
    const-string/jumbo v8, "ER_NO_ATTRIB_SET"

    #@28
    .line 172
    const/4 v9, 0x1

    #@29
    new-array v9, v9, [Ljava/lang/Object;

    #@2b
    aput-object v6, v9, v10

    #@2d
    .line 171
    invoke-static {v8, v9}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@30
    move-result-object v8

    #@31
    .line 170
    invoke-direct {v7, v8, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@34
    throw v7

    #@35
    .line 149
    .restart local v3    # "k":I
    .restart local v5    # "nSets":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 142
    .end local v1    # "attrSets":Ljava/util/List;
    .end local v2    # "i":I
    .end local v3    # "k":I
    .end local v4    # "nNames":I
    .end local v5    # "nSets":I
    .end local v6    # "qname":Lorg/apache/xml/utils/QName;
    :cond_2
    return-void
.end method


# virtual methods
.method public applyAttrSets(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 1
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .param p2, "stylesheet"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    #@2
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xalan/templates/ElemUse;->applyAttrSets(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/StylesheetRoot;[Lorg/apache/xml/utils/QName;)V

    #@5
    .line 122
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 2
    .param p1, "transformer"    # Lorg/apache/xalan/transformer/TransformerImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 200
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemUse;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@7
    move-result-object v0

    #@8
    .line 201
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    #@a
    .line 200
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xalan/templates/ElemUse;->applyAttrSets(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/StylesheetRoot;[Lorg/apache/xml/utils/QName;)V

    #@d
    .line 195
    :cond_0
    return-void
.end method

.method public getUseAttributeSets()[Lorg/apache/xml/utils/QName;
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    #@2
    return-object v0
.end method

.method public setUseAttributeSets(Ljava/util/Vector;)V
    .locals 4
    .param p1, "v"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 64
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    #@3
    move-result v1

    #@4
    .line 66
    .local v1, "n":I
    new-array v2, v1, [Lorg/apache/xml/utils/QName;

    #@6
    iput-object v2, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    #@8
    .line 68
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@b
    .line 70
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    #@d
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lorg/apache/xml/utils/QName;

    #@13
    aput-object v2, v3, v0

    #@15
    .line 68
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 61
    :cond_0
    return-void
.end method

.method public setUseAttributeSets([Lorg/apache/xml/utils/QName;)V
    .locals 0
    .param p1, "v"    # [Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 87
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    #@2
    .line 85
    return-void
.end method
