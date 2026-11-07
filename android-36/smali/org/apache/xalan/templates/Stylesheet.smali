.class public Lorg/apache/xalan/templates/Stylesheet;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "Stylesheet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final greylist STYLESHEET_EXT:Ljava/lang/String; = ".lxc"

.field static final whitelist serialVersionUID:J = 0x1cf09b35c6c706c0L


# instance fields
.field greylist m_DecimalFormatDeclarations:Ljava/util/Stack;

.field private greylist m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

.field private greylist m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

.field private greylist m_Id:Ljava/lang/String;

.field private greylist m_NonXslTopLevel:Ljava/util/Hashtable;

.field private greylist m_Version:Ljava/lang/String;

.field private greylist m_XmlnsXsl:Ljava/lang/String;

.field private greylist m_attributeSets:Ljava/util/Vector;

.field private greylist m_href:Ljava/lang/String;

.field private greylist m_imports:Ljava/util/Vector;

.field private greylist m_includes:Ljava/util/Vector;

.field private greylist m_isCompatibleMode:Z

.field private greylist m_keyDeclarations:Ljava/util/Vector;

.field private greylist m_output:Ljava/util/Vector;

.field private greylist m_prefix_aliases:Ljava/util/Vector;

.field private greylist m_publicId:Ljava/lang/String;

.field private greylist m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

.field private greylist m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

.field private greylist m_systemId:Ljava/lang/String;

.field private greylist m_templates:Ljava/util/Vector;

.field private greylist m_topLevelVariables:Ljava/util/Vector;

.field private greylist m_whitespacePreservingElements:Ljava/util/Vector;

.field private greylist m_whitespaceStrippingElements:Ljava/util/Vector;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xalan/templates/Stylesheet;)V
    .registers 3

    .line 91
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 408
    iput-boolean v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_isCompatibleMode:Z

    const/4 v0, 0x0

    .line 1191
    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;

    if-eqz p1, :cond_13

    .line 95
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

    .line 96
    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    :cond_13
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 153
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 157
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method protected greylist accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .registers 2

    .line 1512
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitStylesheet(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result p0

    return p0
.end method

.method protected greylist callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 7

    .line 1389
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getImportCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, p2, :cond_12

    .line 1392
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1395
    :cond_12
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getIncludeCount()I

    move-result p2

    move v1, v0

    :goto_17
    if-ge v1, p2, :cond_23

    .line 1398
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getInclude(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1401
    :cond_23
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getOutputCount()I

    move-result p2

    move v1, v0

    :goto_28
    if-ge v1, p2, :cond_34

    .line 1404
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getOutput(I)Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 1409
    :cond_34
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getAttributeSetCount()I

    move-result p2

    move v1, v0

    :goto_39
    if-ge v1, p2, :cond_4b

    .line 1412
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getAttributeSet(I)Lorg/apache/xalan/templates/ElemAttributeSet;

    move-result-object v2

    .line 1413
    invoke-virtual {p1, v2}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1415
    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 1420
    :cond_4b
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormatCount()I

    move-result p2

    move v1, v0

    :goto_50
    if-ge v1, p2, :cond_5c

    .line 1423
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 1428
    :cond_5c
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getKeyCount()I

    move-result p2

    move v1, v0

    :goto_61
    if-ge v1, p2, :cond_6d

    .line 1431
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getKey(I)Lorg/apache/xalan/templates/KeyDeclaration;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 1436
    :cond_6d
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceAliasCount()I

    move-result p2

    move v1, v0

    :goto_72
    if-ge v1, p2, :cond_7e

    .line 1439
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceAlias(I)Lorg/apache/xalan/templates/NamespaceAlias;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 1444
    :cond_7e
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getTemplateCount()I

    move-result p2

    move v1, v0

    :goto_83
    if-ge v1, p2, :cond_9c

    .line 1449
    :try_start_85
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getTemplate(I)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v2

    .line 1450
    invoke-virtual {p1, v2}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 1452
    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    :try_end_92
    .catch Ljavax/xml/transform/TransformerException; {:try_start_85 .. :try_end_92} :catch_95

    :cond_92
    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    :catch_95
    move-exception p0

    .line 1457
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 1463
    :cond_9c
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result p2

    move v1, v0

    :goto_a1
    if-ge v1, p2, :cond_b3

    .line 1466
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    .line 1467
    invoke-virtual {p1, v2}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelVariableOrParamDecl(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 1469
    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    :cond_b0
    add-int/lit8 v1, v1, 0x1

    goto :goto_a1

    .line 1475
    :cond_b3
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getStripSpaceCount()I

    move-result p2

    move v1, v0

    :goto_b8
    if-ge v1, p2, :cond_c4

    .line 1478
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getStripSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b8

    .line 1481
    :cond_c4
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getPreserveSpaceCount()I

    move-result p2

    :goto_c8
    if-ge v0, p2, :cond_d4

    .line 1484
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/Stylesheet;->getPreserveSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c8

    .line 1487
    :cond_d4
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    if-eqz p0, :cond_f2

    .line 1489
    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object p0

    .line 1490
    :cond_dc
    :goto_dc
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_f2

    .line 1492
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1493
    invoke-virtual {p1, p2}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 1495
    invoke-virtual {p2, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    goto :goto_dc

    :cond_f2
    return-void
.end method

.method public greylist containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 351
    iget-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    if-nez p2, :cond_8

    goto :goto_26

    :cond_8
    move p1, v0

    .line 356
    :goto_9
    iget-object v1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v1

    if-ge p1, v1, :cond_26

    .line 358
    iget-object v1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_26
    :goto_26
    return v0
.end method

.method public greylist containsExtensionElementURI(Ljava/lang/String;)Z
    .registers 2

    .line 271
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 274
    :cond_6
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/StringVector;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public greylist getAttributeSet(I)Lorg/apache/xalan/templates/ElemAttributeSet;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 885
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    if-eqz p0, :cond_b

    .line 888
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/ElemAttributeSet;

    return-object p0

    .line 886
    :cond_b
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist getAttributeSetCount()I
    .registers 1

    .line 899
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getCompatibleMode()Z
    .registers 1

    .line 429
    iget-boolean p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_isCompatibleMode:Z

    return p0
.end method

.method public greylist getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 615
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    if-eqz p0, :cond_b

    .line 618
    invoke-virtual {p0, p1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/DecimalFormatProperties;

    return-object p0

    .line 616
    :cond_b
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist getDecimalFormat(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/DecimalFormatProperties;
    .registers 6

    .line 584
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 587
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormatCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_20

    .line 591
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;

    move-result-object v2

    .line 593
    invoke-virtual {v2}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    return-object v2

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_20
    return-object v1
.end method

.method public greylist getDecimalFormatCount()I
    .registers 1

    .line 629
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    if-eqz p0, :cond_9

    .line 630
    invoke-virtual {p0}, Ljava/util/Stack;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getExcludeResultPrefix(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 320
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    if-eqz p0, :cond_9

    .line 323
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 321
    :cond_9
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist getExcludeResultPrefixCount()I
    .registers 1

    .line 334
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    if-eqz p0, :cond_9

    .line 335
    invoke-virtual {p0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getExtensionElementPrefix(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 242
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-eqz p0, :cond_9

    .line 245
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 243
    :cond_9
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist getExtensionElementPrefixCount()I
    .registers 1

    .line 256
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-eqz p0, :cond_9

    .line 257
    invoke-virtual {p0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getHref()Ljava/lang/String;
    .registers 1

    .line 1208
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getId()Ljava/lang/String;
    .registers 1

    .line 395
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Id:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 480
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    if-eqz p0, :cond_b

    .line 483
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/StylesheetComposed;

    return-object p0

    .line 481
    :cond_b
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist getImportCount()I
    .registers 1

    .line 494
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getInclude(I)Lorg/apache/xalan/templates/Stylesheet;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 531
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    if-eqz p0, :cond_b

    .line 534
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/Stylesheet;

    return-object p0

    .line 532
    :cond_b
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist getIncludeCount()I
    .registers 1

    .line 545
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getKey(I)Lorg/apache/xalan/templates/KeyDeclaration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 831
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    if-eqz p0, :cond_b

    .line 834
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/KeyDeclaration;

    return-object p0

    .line 832
    :cond_b
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist getKeyCount()I
    .registers 1

    .line 845
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getNamespaceAlias(I)Lorg/apache/xalan/templates/NamespaceAlias;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 1133
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    if-eqz p0, :cond_b

    .line 1136
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/NamespaceAlias;

    return-object p0

    .line 1134
    :cond_b
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist getNamespaceAliasCount()I
    .registers 1

    .line 1147
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 1357
    const-string p0, "stylesheet"

    return-object p0
.end method

.method public whitelist test-api getNodeType()S
    .registers 1

    .line 0
    const/16 p0, 0x9

    return p0
.end method

.method public greylist getNonXslTopLevel(Lorg/apache/xml/utils/QName;)Ljava/lang/Object;
    .registers 2

    .line 1182
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getOutput(I)Lorg/apache/xalan/templates/OutputProperties;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 779
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    if-eqz p0, :cond_b

    .line 782
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/OutputProperties;

    return-object p0

    .line 780
    :cond_b
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist getOutputCount()I
    .registers 1

    .line 793
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    if-eqz p0, :cond_9

    .line 794
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getParam(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemParam;
    .registers 7

    .line 1030
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz v0, :cond_27

    .line 1032
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_27

    .line 1036
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    .line 1037
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getXSLToken()I

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_24

    .line 1038
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1039
    check-cast v2, Lorg/apache/xalan/templates/ElemParam;

    return-object v2

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getPreserveSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 725
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    if-eqz p0, :cond_b

    .line 728
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    return-object p0

    .line 726
    :cond_b
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist getPreserveSpaceCount()I
    .registers 1

    .line 739
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    if-eqz p0, :cond_9

    .line 740
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getStripSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 670
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    if-eqz p0, :cond_b

    .line 673
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    return-object p0

    .line 671
    :cond_b
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist getStripSpaceCount()I
    .registers 1

    .line 684
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    if-eqz p0, :cond_9

    .line 685
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .registers 1

    .line 0
    return-object p0
.end method

.method public greylist getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;
    .registers 2

    .line 1320
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->isAggregatedType()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1322
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetParent()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object p0

    goto :goto_0

    .line 1325
    :cond_b
    check-cast p0, Lorg/apache/xalan/templates/StylesheetComposed;

    return-object p0
.end method

.method public greylist getStylesheetParent()Lorg/apache/xalan/templates/Stylesheet;
    .registers 1

    .line 1295
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

    return-object p0
.end method

.method public greylist getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;
    .registers 1

    .line 1266
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    return-object p0
.end method

.method public greylist getTemplate(I)Lorg/apache/xalan/templates/ElemTemplate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1081
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-eqz p0, :cond_b

    .line 1084
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/ElemTemplate;

    return-object p0

    .line 1082
    :cond_b
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist getTemplateCount()I
    .registers 1

    .line 1095
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getVariable(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;
    .registers 7

    .line 962
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz v0, :cond_25

    .line 964
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_25

    .line 968
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    .line 969
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getXSLToken()I

    move-result v3

    const/16 v4, 0x49

    if-ne v3, v4, :cond_22

    .line 970
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    return-object v2

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 991
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz p0, :cond_b

    .line 994
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/ElemVariable;

    return-object p0

    .line 992
    :cond_b
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist getVariableOrParam(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;
    .registers 6

    .line 934
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz v0, :cond_1d

    .line 936
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1d

    .line 940
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    .line 942
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getVariableOrParamCount()I
    .registers 1

    .line 1005
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getVersion()Ljava/lang/String;
    .registers 1

    .line 440
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Version:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getXSLToken()I
    .registers 1

    .line 0
    const/16 p0, 0x19

    return p0
.end method

.method public greylist getXmlnsXsl()Ljava/lang/String;
    .registers 1

    .line 207
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_XmlnsXsl:Ljava/lang/String;

    return-object p0
.end method

.method public greylist isAggregatedType()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isRoot()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist replaceTemplate(Lorg/apache/xalan/templates/ElemTemplate;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1375
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-eqz v0, :cond_16

    .line 1378
    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->replaceChild(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1379
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1380
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    return-void

    .line 1376
    :cond_16
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist setAttributeSet(Lorg/apache/xalan/templates/ElemAttributeSet;)V
    .registers 3

    .line 863
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 865
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    .line 868
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public greylist setDecimalFormat(Lorg/apache/xalan/templates/DecimalFormatProperties;)V
    .registers 3

    .line 563
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    if-nez v0, :cond_b

    .line 564
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    .line 568
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public greylist setExcludeResultPrefixes(Lorg/apache/xml/utils/StringVector;)V
    .registers 2

    .line 297
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    return-void
.end method

.method public greylist setExtensionElementPrefixes(Lorg/apache/xml/utils/StringVector;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    return-void
.end method

.method public greylist setHref(Ljava/lang/String;)V
    .registers 2

    .line 1218
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;

    return-void
.end method

.method public greylist setId(Ljava/lang/String;)V
    .registers 2

    .line 384
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Id:Ljava/lang/String;

    return-void
.end method

.method public greylist setImport(Lorg/apache/xalan/templates/StylesheetComposed;)V
    .registers 3

    .line 458
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 459
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    .line 463
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public greylist setInclude(Lorg/apache/xalan/templates/Stylesheet;)V
    .registers 3

    .line 512
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 513
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    .line 515
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public greylist setKey(Lorg/apache/xalan/templates/KeyDeclaration;)V
    .registers 3

    .line 812
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 813
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    .line 815
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public greylist setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .registers 4

    if-eqz p1, :cond_1a

    .line 1231
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_publicId:Ljava/lang/String;

    .line 1232
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_systemId:Ljava/lang/String;

    if-eqz v0, :cond_17

    const/4 v1, 0x0

    .line 1238
    :try_start_11
    invoke-static {v0, v1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;
    :try_end_17
    .catch Ljavax/xml/transform/TransformerException; {:try_start_11 .. :try_end_17} :catch_17

    .line 1247
    :catch_17
    :cond_17
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    :cond_1a
    return-void
.end method

.method public greylist setNamespaceAlias(Lorg/apache/xalan/templates/NamespaceAlias;)V
    .registers 3

    .line 1113
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 1114
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    .line 1116
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public greylist setNonXslTopLevel(Lorg/apache/xml/utils/QName;Ljava/lang/Object;)V
    .registers 4

    .line 1166
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    .line 1167
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    .line 1169
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public greylist setOutput(Lorg/apache/xalan/templates/OutputProperties;)V
    .registers 3

    .line 758
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 760
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    .line 763
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public greylist setParam(Lorg/apache/xalan/templates/ElemParam;)V
    .registers 2

    .line 1016
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/Stylesheet;->setVariable(Lorg/apache/xalan/templates/ElemVariable;)V

    return-void
.end method

.method public greylist setPreserveSpaces(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V
    .registers 3

    .line 704
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 706
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    .line 709
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public greylist setStripSpaces(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V
    .registers 3

    .line 649
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 651
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    .line 654
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public greylist setStylesheetParent(Lorg/apache/xalan/templates/Stylesheet;)V
    .registers 2

    .line 1306
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

    return-void
.end method

.method public greylist setStylesheetRoot(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2

    .line 1277
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    return-void
.end method

.method public greylist setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V
    .registers 3

    .line 1061
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 1062
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    .line 1064
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1065
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    return-void
.end method

.method public greylist setVariable(Lorg/apache/xalan/templates/ElemVariable;)V
    .registers 3

    .line 917
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 918
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    .line 920
    :cond_b
    iget-object p0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public greylist setVersion(Ljava/lang/String;)V
    .registers 6

    .line 418
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Version:Ljava/lang/String;

    .line 419
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    iput-boolean p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_isCompatibleMode:Z

    return-void
.end method

.method public greylist setXmlnsXsl(Ljava/lang/String;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_XmlnsXsl:Ljava/lang/String;

    return-void
.end method
