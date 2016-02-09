.class public Lorg/apache/xalan/templates/Stylesheet;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "Stylesheet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STYLESHEET_EXT:Ljava/lang/String; = ".lxc"

.field static final serialVersionUID:J = 0x1cf09b35c6c706c0L


# instance fields
.field m_DecimalFormatDeclarations:Ljava/util/Stack;

.field private m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

.field private m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

.field private m_Id:Ljava/lang/String;

.field private m_NonXslTopLevel:Ljava/util/Hashtable;

.field private m_Version:Ljava/lang/String;

.field private m_XmlnsXsl:Ljava/lang/String;

.field private m_attributeSets:Ljava/util/Vector;

.field private m_href:Ljava/lang/String;

.field private m_imports:Ljava/util/Vector;

.field private m_includes:Ljava/util/Vector;

.field private m_isCompatibleMode:Z

.field private m_keyDeclarations:Ljava/util/Vector;

.field private m_output:Ljava/util/Vector;

.field private m_prefix_aliases:Ljava/util/Vector;

.field private m_publicId:Ljava/lang/String;

.field private m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

.field private m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

.field private m_systemId:Ljava/lang/String;

.field private m_templates:Ljava/util/Vector;

.field private m_topLevelVariables:Ljava/util/Vector;

.field private m_whitespacePreservingElements:Ljava/util/Vector;

.field private m_whitespaceStrippingElements:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/xalan/templates/Stylesheet;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 90
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@4
    .line 408
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_isCompatibleMode:Z

    #@7
    .line 1191
    iput-object v1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;

    #@9
    .line 93
    if-eqz p1, :cond_0

    #@b
    .line 95
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

    #@d
    .line 96
    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@13
    .line 90
    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 147
    return-void

    #@4
    .line 156
    :catch_0
    move-exception v0

    #@5
    .line 157
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljavax/xml/transform/TransformerException;

    #@7
    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@a
    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 171
    return-void
.end method


# virtual methods
.method protected accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .locals 1
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;

    #@0
    .prologue
    .line 1512
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitStylesheet(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 9
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;
    .param p2, "callAttrs"    # Z

    #@0
    .prologue
    .line 1389
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getImportCount()I

    #@3
    move-result v4

    #@4
    .line 1390
    .local v4, "s":I
    const/4 v3, 0x0

    #@5
    .local v3, "j":I
    :goto_0
    if-ge v3, v4, :cond_0

    #@7
    .line 1392
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    #@a
    move-result-object v8

    #@b
    invoke-virtual {v8, p1}, Lorg/apache/xalan/templates/StylesheetComposed;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    #@e
    .line 1390
    add-int/lit8 v3, v3, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1395
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getIncludeCount()I

    #@14
    move-result v4

    #@15
    .line 1396
    const/4 v3, 0x0

    #@16
    :goto_1
    if-ge v3, v4, :cond_1

    #@18
    .line 1398
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getInclude(I)Lorg/apache/xalan/templates/Stylesheet;

    #@1b
    move-result-object v8

    #@1c
    invoke-virtual {v8, p1}, Lorg/apache/xalan/templates/Stylesheet;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    #@1f
    .line 1396
    add-int/lit8 v3, v3, 0x1

    #@21
    goto :goto_1

    #@22
    .line 1401
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getOutputCount()I

    #@25
    move-result v4

    #@26
    .line 1402
    const/4 v3, 0x0

    #@27
    :goto_2
    if-ge v3, v4, :cond_2

    #@29
    .line 1404
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getOutput(I)Lorg/apache/xalan/templates/OutputProperties;

    #@2c
    move-result-object v8

    #@2d
    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    #@30
    .line 1402
    add-int/lit8 v3, v3, 0x1

    #@32
    goto :goto_2

    #@33
    .line 1409
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getAttributeSetCount()I

    #@36
    move-result v4

    #@37
    .line 1410
    const/4 v3, 0x0

    #@38
    :goto_3
    if-ge v3, v4, :cond_4

    #@3a
    .line 1412
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getAttributeSet(I)Lorg/apache/xalan/templates/ElemAttributeSet;

    #@3d
    move-result-object v0

    #@3e
    .line 1413
    .local v0, "attrSet":Lorg/apache/xalan/templates/ElemAttributeSet;
    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    #@41
    move-result v8

    #@42
    if-eqz v8, :cond_3

    #@44
    .line 1415
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemAttributeSet;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    #@47
    .line 1410
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@49
    goto :goto_3

    #@4a
    .line 1420
    .end local v0    # "attrSet":Lorg/apache/xalan/templates/ElemAttributeSet;
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormatCount()I

    #@4d
    move-result v4

    #@4e
    .line 1421
    const/4 v3, 0x0

    #@4f
    :goto_4
    if-ge v3, v4, :cond_5

    #@51
    .line 1423
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;

    #@54
    move-result-object v8

    #@55
    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    #@58
    .line 1421
    add-int/lit8 v3, v3, 0x1

    #@5a
    goto :goto_4

    #@5b
    .line 1428
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getKeyCount()I

    #@5e
    move-result v4

    #@5f
    .line 1429
    const/4 v3, 0x0

    #@60
    :goto_5
    if-ge v3, v4, :cond_6

    #@62
    .line 1431
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getKey(I)Lorg/apache/xalan/templates/KeyDeclaration;

    #@65
    move-result-object v8

    #@66
    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    #@69
    .line 1429
    add-int/lit8 v3, v3, 0x1

    #@6b
    goto :goto_5

    #@6c
    .line 1436
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceAliasCount()I

    #@6f
    move-result v4

    #@70
    .line 1437
    const/4 v3, 0x0

    #@71
    :goto_6
    if-ge v3, v4, :cond_7

    #@73
    .line 1439
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceAlias(I)Lorg/apache/xalan/templates/NamespaceAlias;

    #@76
    move-result-object v8

    #@77
    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    #@7a
    .line 1437
    add-int/lit8 v3, v3, 0x1

    #@7c
    goto :goto_6

    #@7d
    .line 1444
    :cond_7
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getTemplateCount()I

    #@80
    move-result v4

    #@81
    .line 1445
    const/4 v3, 0x0

    #@82
    :goto_7
    if-ge v3, v4, :cond_9

    #@84
    .line 1449
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getTemplate(I)Lorg/apache/xalan/templates/ElemTemplate;

    #@87
    move-result-object v6

    #@88
    .line 1450
    .local v6, "template":Lorg/apache/xalan/templates/ElemTemplate;
    invoke-virtual {p1, v6}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    #@8b
    move-result v8

    #@8c
    if-eqz v8, :cond_8

    #@8e
    .line 1452
    invoke-virtual {v6, p1}, Lorg/apache/xalan/templates/ElemTemplate;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@91
    .line 1445
    :cond_8
    add-int/lit8 v3, v3, 0x1

    #@93
    goto :goto_7

    #@94
    .line 1456
    .end local v6    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :catch_0
    move-exception v5

    #@95
    .line 1457
    .local v5, "te":Ljavax/xml/transform/TransformerException;
    new-instance v8, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@97
    invoke-direct {v8, v5}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@9a
    throw v8

    #@9b
    .line 1463
    .end local v5    # "te":Ljavax/xml/transform/TransformerException;
    :cond_9
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    #@9e
    move-result v4

    #@9f
    .line 1464
    const/4 v3, 0x0

    #@a0
    :goto_8
    if-ge v3, v4, :cond_b

    #@a2
    .line 1466
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    #@a5
    move-result-object v7

    #@a6
    .line 1467
    .local v7, "var":Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {p1, v7}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelVariableOrParamDecl(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    #@a9
    move-result v8

    #@aa
    if-eqz v8, :cond_a

    #@ac
    .line 1469
    invoke-virtual {v7, p1}, Lorg/apache/xalan/templates/ElemVariable;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    #@af
    .line 1464
    :cond_a
    add-int/lit8 v3, v3, 0x1

    #@b1
    goto :goto_8

    #@b2
    .line 1475
    .end local v7    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_b
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getStripSpaceCount()I

    #@b5
    move-result v4

    #@b6
    .line 1476
    const/4 v3, 0x0

    #@b7
    :goto_9
    if-ge v3, v4, :cond_c

    #@b9
    .line 1478
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getStripSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    #@bc
    move-result-object v8

    #@bd
    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    #@c0
    .line 1476
    add-int/lit8 v3, v3, 0x1

    #@c2
    goto :goto_9

    #@c3
    .line 1481
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getPreserveSpaceCount()I

    #@c6
    move-result v4

    #@c7
    .line 1482
    const/4 v3, 0x0

    #@c8
    :goto_a
    if-ge v3, v4, :cond_d

    #@ca
    .line 1484
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getPreserveSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    #@cd
    move-result-object v8

    #@ce
    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    #@d1
    .line 1482
    add-int/lit8 v3, v3, 0x1

    #@d3
    goto :goto_a

    #@d4
    .line 1487
    :cond_d
    iget-object v8, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    #@d6
    if-eqz v8, :cond_f

    #@d8
    .line 1489
    iget-object v8, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    #@da
    invoke-virtual {v8}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@dd
    move-result-object v2

    #@de
    .line 1490
    .local v2, "elements":Ljava/util/Enumeration;
    :cond_e
    :goto_b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@e1
    move-result v8

    #@e2
    if-eqz v8, :cond_f

    #@e4
    .line 1492
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@e7
    move-result-object v1

    #@e8
    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@ea
    .line 1493
    .local v1, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {p1, v1}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    #@ed
    move-result v8

    #@ee
    if-eqz v8, :cond_e

    #@f0
    .line 1495
    invoke-virtual {v1, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    #@f3
    goto :goto_b

    #@f4
    .line 1387
    .end local v1    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v2    # "elements":Ljava/util/Enumeration;
    :cond_f
    return-void
.end method

.method public containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 351
    iget-object v1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    #@3
    if-eqz v1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 352
    :cond_0
    return v2

    #@8
    .line 356
    :cond_1
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    #@b
    invoke-virtual {v1}, Lorg/apache/xml/utils/StringVector;->size()I

    #@e
    move-result v1

    #@f
    if-ge v0, v1, :cond_3

    #@11
    .line 358
    iget-object v1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    #@13
    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 359
    const/4 v1, 0x1

    #@22
    return v1

    #@23
    .line 356
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 362
    :cond_3
    return v2
.end method

.method public containsExtensionElementURI(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 272
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 274
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    #@8
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->contains(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getAttributeSet(I)Lorg/apache/xalan/templates/ElemAttributeSet;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 885
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 886
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 888
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xalan/templates/ElemAttributeSet;

    #@12
    return-object v0
.end method

.method public getAttributeSetCount()I
    .locals 1

    #@0
    .prologue
    .line 899
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

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

.method public getCompatibleMode()Z
    .locals 1

    #@0
    .prologue
    .line 429
    iget-boolean v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_isCompatibleMode:Z

    #@2
    return v0
.end method

.method public getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 615
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 616
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 618
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xalan/templates/DecimalFormatProperties;

    #@12
    return-object v0
.end method

.method public getDecimalFormat(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/DecimalFormatProperties;
    .locals 5
    .param p1, "name"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 584
    iget-object v3, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 585
    return-object v4

    #@6
    .line 587
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormatCount()I

    #@9
    move-result v2

    #@a
    .line 589
    .local v2, "n":I
    add-int/lit8 v1, v2, -0x1

    #@c
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@e
    .line 591
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;

    #@11
    move-result-object v0

    #@12
    .line 593
    .local v0, "dfp":Lorg/apache/xalan/templates/DecimalFormatProperties;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 594
    return-object v0

    #@1d
    .line 589
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 597
    .end local v0    # "dfp":Lorg/apache/xalan/templates/DecimalFormatProperties;
    :cond_2
    return-object v4
.end method

.method public getDecimalFormatCount()I
    .locals 1

    #@0
    .prologue
    .line 629
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 630
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    #@6
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    #@9
    move-result v0

    #@a
    .line 629
    :goto_0
    return v0

    #@b
    .line 630
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getExcludeResultPrefix(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 321
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 323
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    #@c
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public getExcludeResultPrefixCount()I
    .locals 1

    #@0
    .prologue
    .line 334
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 335
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    #@6
    invoke-virtual {v0}, Lorg/apache/xml/utils/StringVector;->size()I

    #@9
    move-result v0

    #@a
    .line 334
    :goto_0
    return v0

    #@b
    .line 335
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getExtensionElementPrefix(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 243
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 245
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    #@c
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public getExtensionElementPrefixCount()I
    .locals 1

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 257
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    #@6
    invoke-virtual {v0}, Lorg/apache/xml/utils/StringVector;->size()I

    #@9
    move-result v0

    #@a
    .line 256
    :goto_0
    return v0

    #@b
    .line 257
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1208
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 395
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Id:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 480
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 481
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 483
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xalan/templates/StylesheetComposed;

    #@12
    return-object v0
.end method

.method public getImportCount()I
    .locals 1

    #@0
    .prologue
    .line 494
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

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

.method public getInclude(I)Lorg/apache/xalan/templates/Stylesheet;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 531
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 532
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 534
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xalan/templates/Stylesheet;

    #@12
    return-object v0
.end method

.method public getIncludeCount()I
    .locals 1

    #@0
    .prologue
    .line 545
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

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

.method public getKey(I)Lorg/apache/xalan/templates/KeyDeclaration;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 831
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 832
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 834
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xalan/templates/KeyDeclaration;

    #@12
    return-object v0
.end method

.method public getKeyCount()I
    .locals 1

    #@0
    .prologue
    .line 845
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

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

.method public getNamespaceAlias(I)Lorg/apache/xalan/templates/NamespaceAlias;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1133
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1134
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1136
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xalan/templates/NamespaceAlias;

    #@12
    return-object v0
.end method

.method public getNamespaceAliasCount()I
    .locals 1

    #@0
    .prologue
    .line 1147
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

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

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1357
    const-string/jumbo v0, "stylesheet"

    #@3
    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    #@0
    .prologue
    .line 1335
    const/16 v0, 0x9

    #@2
    return v0
.end method

.method public getNonXslTopLevel(Lorg/apache/xml/utils/QName;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1182
    iget-object v1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public getOutput(I)Lorg/apache/xalan/templates/OutputProperties;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 779
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 780
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 782
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xalan/templates/OutputProperties;

    #@12
    return-object v0
.end method

.method public getOutputCount()I
    .locals 1

    #@0
    .prologue
    .line 793
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 794
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    #@6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@9
    move-result v0

    #@a
    .line 793
    :goto_0
    return v0

    #@b
    .line 794
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getParam(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemParam;
    .locals 6
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1030
    iget-object v3, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 1032
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    #@8
    move-result v1

    #@9
    .line 1034
    .local v1, "n":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@c
    .line 1036
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    #@f
    move-result-object v2

    #@10
    .line 1037
    .local v2, "var":Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getXSLToken()I

    #@13
    move-result v3

    #@14
    const/16 v4, 0x29

    #@16
    if-ne v3, v4, :cond_0

    #@18
    .line 1038
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v3

    #@20
    .line 1037
    if-eqz v3, :cond_0

    #@22
    .line 1039
    check-cast v2, Lorg/apache/xalan/templates/ElemParam;

    #@24
    .end local v2    # "var":Lorg/apache/xalan/templates/ElemVariable;
    return-object v2

    #@25
    .line 1034
    .restart local v2    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1043
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_1
    return-object v5
.end method

.method public getPreserveSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 725
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 726
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 728
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    #@12
    return-object v0
.end method

.method public getPreserveSpaceCount()I
    .locals 1

    #@0
    .prologue
    .line 739
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 740
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    #@6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@9
    move-result v0

    #@a
    .line 739
    :goto_0
    return v0

    #@b
    .line 740
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getStripSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 670
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 671
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 673
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    #@12
    return-object v0
.end method

.method public getStripSpaceCount()I
    .locals 1

    #@0
    .prologue
    .line 684
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 685
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    #@6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@9
    move-result v0

    #@a
    .line 684
    :goto_0
    return v0

    #@b
    .line 685
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .locals 0

    #@0
    .prologue
    .line 109
    return-object p0
.end method

.method public getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;
    .locals 2

    #@0
    .prologue
    .line 1318
    move-object v0, p0

    #@1
    .line 1320
    .local v0, "sheet":Lorg/apache/xalan/templates/Stylesheet;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/Stylesheet;->isAggregatedType()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1322
    invoke-virtual {v0}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetParent()Lorg/apache/xalan/templates/Stylesheet;

    #@a
    move-result-object v0

    #@b
    goto :goto_0

    #@c
    .line 1325
    :cond_0
    check-cast v0, Lorg/apache/xalan/templates/StylesheetComposed;

    #@e
    .end local v0    # "sheet":Lorg/apache/xalan/templates/Stylesheet;
    return-object v0
.end method

.method public getStylesheetParent()Lorg/apache/xalan/templates/Stylesheet;
    .locals 1

    #@0
    .prologue
    .line 1295
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

    #@2
    return-object v0
.end method

.method public getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;
    .locals 1

    #@0
    .prologue
    .line 1266
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@2
    return-object v0
.end method

.method public getTemplate(I)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1081
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1082
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1084
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    #@12
    return-object v0
.end method

.method public getTemplateCount()I
    .locals 1

    #@0
    .prologue
    .line 1095
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

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

.method public getVariable(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;
    .locals 6
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 962
    iget-object v3, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 964
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    #@8
    move-result v1

    #@9
    .line 966
    .local v1, "n":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@c
    .line 968
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    #@f
    move-result-object v2

    #@10
    .line 969
    .local v2, "var":Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getXSLToken()I

    #@13
    move-result v3

    #@14
    const/16 v4, 0x49

    #@16
    if-ne v3, v4, :cond_0

    #@18
    .line 970
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v3

    #@20
    .line 969
    if-eqz v3, :cond_0

    #@22
    .line 971
    return-object v2

    #@23
    .line 966
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 975
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_1
    return-object v5
.end method

.method public getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 991
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 992
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 994
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xalan/templates/ElemVariable;

    #@12
    return-object v0
.end method

.method public getVariableOrParam(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;
    .locals 5
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 934
    iget-object v3, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 936
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    #@8
    move-result v1

    #@9
    .line 938
    .local v1, "n":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@c
    .line 940
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    #@f
    move-result-object v2

    #@10
    .line 942
    .local v2, "var":Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 943
    return-object v2

    #@1b
    .line 938
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 947
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_1
    return-object v4
.end method

.method public getVariableOrParamCount()I
    .locals 1

    #@0
    .prologue
    .line 1005
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

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

.method public getVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 440
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Version:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    #@0
    .prologue
    .line 1347
    const/16 v0, 0x19

    #@2
    return v0
.end method

.method public getXmlnsXsl()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_XmlnsXsl:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isAggregatedType()Z
    .locals 1

    #@0
    .prologue
    .line 120
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isRoot()Z
    .locals 1

    #@0
    .prologue
    .line 130
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public replaceTemplate(Lorg/apache/xalan/templates/ElemTemplate;I)V
    .locals 1
    .param p1, "v"    # Lorg/apache/xalan/templates/ElemTemplate;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1375
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1376
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1378
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    #@c
    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@12
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/Stylesheet;->replaceChild(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@15
    .line 1379
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    #@17
    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@1a
    .line 1380
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    #@1d
    .line 1372
    return-void
.end method

.method public setAttributeSet(Lorg/apache/xalan/templates/ElemAttributeSet;)V
    .locals 1
    .param p1, "attrSet"    # Lorg/apache/xalan/templates/ElemAttributeSet;

    #@0
    .prologue
    .line 863
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 865
    new-instance v0, Ljava/util/Vector;

    #@6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    #@b
    .line 868
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@10
    .line 860
    return-void
.end method

.method public setDecimalFormat(Lorg/apache/xalan/templates/DecimalFormatProperties;)V
    .locals 1
    .param p1, "edf"    # Lorg/apache/xalan/templates/DecimalFormatProperties;

    #@0
    .prologue
    .line 563
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 564
    new-instance v0, Ljava/util/Stack;

    #@6
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    #@b
    .line 568
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 560
    return-void
.end method

.method public setExcludeResultPrefixes(Lorg/apache/xml/utils/StringVector;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/StringVector;

    #@0
    .prologue
    .line 297
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    #@2
    .line 295
    return-void
.end method

.method public setExtensionElementPrefixes(Lorg/apache/xml/utils/StringVector;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xml/utils/StringVector;

    #@0
    .prologue
    .line 225
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    #@2
    .line 223
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseIdent"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1218
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;

    #@2
    .line 1216
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    #@0
    .prologue
    .line 384
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Id:Ljava/lang/String;

    #@2
    .line 382
    return-void
.end method

.method public setImport(Lorg/apache/xalan/templates/StylesheetComposed;)V
    .locals 1
    .param p1, "v"    # Lorg/apache/xalan/templates/StylesheetComposed;

    #@0
    .prologue
    .line 458
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 459
    new-instance v0, Ljava/util/Vector;

    #@6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    #@b
    .line 463
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@10
    .line 455
    return-void
.end method

.method public setInclude(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 1
    .param p1, "v"    # Lorg/apache/xalan/templates/Stylesheet;

    #@0
    .prologue
    .line 512
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 513
    new-instance v0, Ljava/util/Vector;

    #@6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    #@b
    .line 515
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@10
    .line 509
    return-void
.end method

.method public setKey(Lorg/apache/xalan/templates/KeyDeclaration;)V
    .locals 1
    .param p1, "v"    # Lorg/apache/xalan/templates/KeyDeclaration;

    #@0
    .prologue
    .line 812
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 813
    new-instance v0, Ljava/util/Vector;

    #@6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    #@b
    .line 815
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@10
    .line 809
    return-void
.end method

.method public setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .locals 3
    .param p1, "locator"    # Ljavax/xml/transform/SourceLocator;

    #@0
    .prologue
    .line 1229
    if-eqz p1, :cond_1

    #@2
    .line 1231
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    iput-object v1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_publicId:Ljava/lang/String;

    #@8
    .line 1232
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_systemId:Ljava/lang/String;

    #@e
    .line 1234
    iget-object v1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_systemId:Ljava/lang/String;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 1238
    :try_start_0
    iget-object v1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_systemId:Ljava/lang/String;

    #@14
    const/4 v2, 0x0

    #@15
    invoke-static {v1, v2}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 1247
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    #@1e
    .line 1226
    :cond_1
    return-void

    #@1f
    .line 1241
    :catch_0
    move-exception v0

    #@20
    .local v0, "se":Ljavax/xml/transform/TransformerException;
    goto :goto_0
.end method

.method public setNamespaceAlias(Lorg/apache/xalan/templates/NamespaceAlias;)V
    .locals 1
    .param p1, "na"    # Lorg/apache/xalan/templates/NamespaceAlias;

    #@0
    .prologue
    .line 1113
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1114
    new-instance v0, Ljava/util/Vector;

    #@6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    #@b
    .line 1116
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@10
    .line 1110
    return-void
.end method

.method public setNonXslTopLevel(Lorg/apache/xml/utils/QName;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Lorg/apache/xml/utils/QName;
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1166
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1167
    new-instance v0, Ljava/util/Hashtable;

    #@6
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    #@b
    .line 1169
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    #@d
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 1163
    return-void
.end method

.method public setOutput(Lorg/apache/xalan/templates/OutputProperties;)V
    .locals 1
    .param p1, "v"    # Lorg/apache/xalan/templates/OutputProperties;

    #@0
    .prologue
    .line 758
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 760
    new-instance v0, Ljava/util/Vector;

    #@6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    #@b
    .line 763
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@10
    .line 756
    return-void
.end method

.method public setParam(Lorg/apache/xalan/templates/ElemParam;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/ElemParam;

    #@0
    .prologue
    .line 1016
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/Stylesheet;->setVariable(Lorg/apache/xalan/templates/ElemVariable;)V

    #@3
    .line 1014
    return-void
.end method

.method public setPreserveSpaces(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V
    .locals 1
    .param p1, "wsi"    # Lorg/apache/xalan/templates/WhiteSpaceInfo;

    #@0
    .prologue
    .line 704
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 706
    new-instance v0, Ljava/util/Vector;

    #@6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    #@b
    .line 709
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@10
    .line 701
    return-void
.end method

.method public setStripSpaces(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V
    .locals 1
    .param p1, "wsi"    # Lorg/apache/xalan/templates/WhiteSpaceInfo;

    #@0
    .prologue
    .line 649
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 651
    new-instance v0, Ljava/util/Vector;

    #@6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    #@b
    .line 654
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@10
    .line 646
    return-void
.end method

.method public setStylesheetParent(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/Stylesheet;

    #@0
    .prologue
    .line 1306
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

    #@2
    .line 1304
    return-void
.end method

.method public setStylesheetRoot(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "v"    # Lorg/apache/xalan/templates/StylesheetRoot;

    #@0
    .prologue
    .line 1277
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    #@2
    .line 1275
    return-void
.end method

.method public setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V
    .locals 1
    .param p1, "v"    # Lorg/apache/xalan/templates/ElemTemplate;

    #@0
    .prologue
    .line 1061
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1062
    new-instance v0, Ljava/util/Vector;

    #@6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    #@b
    .line 1064
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@10
    .line 1065
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    #@13
    .line 1058
    return-void
.end method

.method public setVariable(Lorg/apache/xalan/templates/ElemVariable;)V
    .locals 1
    .param p1, "v"    # Lorg/apache/xalan/templates/ElemVariable;

    #@0
    .prologue
    .line 917
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 918
    new-instance v0, Ljava/util/Vector;

    #@6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    #@b
    .line 920
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@10
    .line 914
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 4
    .param p1, "v"    # Ljava/lang/String;

    #@0
    .prologue
    .line 418
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Version:Ljava/lang/String;

    #@2
    .line 419
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@9
    move-result-wide v0

    #@a
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@c
    cmpl-double v0, v0, v2

    #@e
    if-lez v0, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :goto_0
    iput-boolean v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_isCompatibleMode:Z

    #@13
    .line 416
    return-void

    #@14
    .line 419
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method public setXmlnsXsl(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    #@0
    .prologue
    .line 196
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_XmlnsXsl:Ljava/lang/String;

    #@2
    .line 194
    return-void
.end method
