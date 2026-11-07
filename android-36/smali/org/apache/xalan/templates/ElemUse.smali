.class public Lorg/apache/xalan/templates/ElemUse;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemUse.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x50e886227b73bd18L


# instance fields
.field private greylist m_attributeSetsNames:[Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    return-void
.end method

.method private greylist applyAttrSets(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/StylesheetRoot;[Lorg/apache/xml/utils/QName;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p3, :cond_35

    .line 147
    array-length v0, p3

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_35

    .line 151
    aget-object v2, p3, v1

    .line 152
    invoke-virtual {p2, v2}, Lorg/apache/xalan/templates/StylesheetRoot;->getAttributeSetComposed(Lorg/apache/xml/utils/QName;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 156
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_14
    if-ltz v2, :cond_22

    .line 163
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/ElemAttributeSet;

    .line 165
    invoke-virtual {v4, p1}, Lorg/apache/xalan/templates/ElemAttributeSet;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 170
    :cond_25
    new-instance p1, Ljavax/xml/transform/TransformerException;

    const-string p2, "ER_NO_ATTRIB_SET"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p3

    .line 171
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw p1

    :cond_35
    return-void
.end method


# virtual methods
.method public greylist applyAttrSets(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xalan/templates/ElemUse;->applyAttrSets(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/StylesheetRoot;[Lorg/apache/xml/utils/QName;)V

    return-void
.end method

.method public greylist execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    if-eqz v0, :cond_d

    .line 200
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xalan/templates/ElemUse;->applyAttrSets(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/StylesheetRoot;[Lorg/apache/xml/utils/QName;)V

    :cond_d
    return-void
.end method

.method public greylist getUseAttributeSets()[Lorg/apache/xml/utils/QName;
    .registers 1

    .line 105
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    return-object p0
.end method

.method public greylist setUseAttributeSets(Ljava/util/Vector;)V
    .registers 6

    .line 64
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 66
    new-array v1, v0, [Lorg/apache/xml/utils/QName;

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_18

    .line 70
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xml/utils/QName;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_18
    return-void
.end method

.method public greylist setUseAttributeSets([Lorg/apache/xml/utils/QName;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemUse;->m_attributeSetsNames:[Lorg/apache/xml/utils/QName;

    return-void
.end method
