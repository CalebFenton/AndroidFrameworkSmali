.class public Lorg/apache/xml/utils/DOMHelper;
.super Ljava/lang/Object;
.source "DOMHelper.java"


# static fields
.field protected static final greylist m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final greylist m_NSInfoNullWithXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final greylist m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final greylist m_NSInfoUnProcNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final greylist m_NSInfoUnProcWithXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final greylist m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;


# instance fields
.field protected greylist m_DOMFactory:Lorg/w3c/dom/Document;

.field greylist m_NSInfos:Ljava/util/Hashtable;

.field protected greylist m_candidateNoAncestorXMLNS:Ljava/util/Vector;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 4

    .line 577
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    .line 582
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v1, v1}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    .line 587
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v1, v3}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZI)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    .line 592
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v2, v2}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    .line 597
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v2, v1}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    .line 602
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZI)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    .line 607
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 1230
    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    return-void
.end method

.method public static greylist createDocument()Lorg/w3c/dom/Document;
    .registers 1

    const/4 v0, 0x0

    .line 133
    invoke-static {v0}, Lorg/apache/xml/utils/DOMHelper;->createDocument(Z)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static greylist createDocument(Z)Lorg/w3c/dom/Document;
    .registers 3

    .line 85
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 106
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p0
    :try_end_10
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    .line 113
    :catch_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_CREATEDOCUMENT_NOT_SUPPORTED"

    const/4 v1, 0x0

    .line 114
    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist getNodeData(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 2

    .line 1276
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 1281
    :try_start_4
    invoke-static {p0, v0}, Lorg/apache/xml/utils/DOMHelper;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 1283
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_14

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_16

    :catchall_12
    move-exception p0

    goto :goto_1a

    :cond_14
    const-string p0, ""
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_12

    .line 1287
    :goto_16
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    return-object p0

    :goto_1a
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 1288
    throw p0
.end method

.method public static greylist getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 4

    .line 1313
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    const/16 v1, 0x9

    if-eq v0, v1, :cond_29

    const/16 v1, 0xb

    if-eq v0, v1, :cond_29

    goto :goto_37

    .line 1328
    :cond_19
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1331
    :cond_21
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 1319
    :cond_29
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_2d
    if-eqz p0, :cond_37

    .line 1322
    invoke-static {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 1320
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_2d

    :cond_37
    :goto_37
    return-void
.end method

.method public static greylist getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1013
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_3a

    .line 1017
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 1035
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 1036
    const-string v2, "Core"

    const-string v3, "2.0"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1038
    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0

    .line 1044
    :cond_22
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1054
    invoke-static {v0, p0}, Lorg/apache/xml/utils/DOMHelper;->locateAttrParent(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    .line 1048
    :cond_2d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_CHILD_HAS_NO_OWNER_DOCUMENT_ELEMENT"

    const/4 v1, 0x0

    .line 1049
    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1059
    :cond_3a
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static greylist isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .registers 10

    const/4 v0, 0x1

    if-eq p0, p1, :cond_7c

    .line 206
    invoke-static {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_7c

    .line 212
    :cond_b
    invoke-static {p0}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 213
    invoke-static {p1}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eq v1, v2, :cond_75

    .line 216
    invoke-static {v1, v2}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto/16 :goto_75

    :cond_1d
    const/4 v3, 0x2

    move v4, v3

    :goto_1f
    if-eqz v1, :cond_28

    add-int/lit8 v4, v4, 0x1

    .line 251
    invoke-static {v1}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_1f

    :cond_28
    :goto_28
    if-eqz v2, :cond_31

    add-int/lit8 v3, v3, 0x1

    .line 258
    invoke-static {v2}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_28

    :cond_31
    const/4 v1, 0x0

    if-ge v4, v3, :cond_40

    sub-int v2, v3, v4

    move v5, v1

    :goto_37
    if-ge v5, v2, :cond_4e

    .line 274
    invoke-static {p1}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    :cond_40
    if-le v4, v3, :cond_4e

    sub-int v2, v4, v3

    move v5, v1

    :goto_45
    if-ge v5, v2, :cond_4e

    .line 284
    invoke-static {p0}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    :cond_4e
    const/4 v2, 0x0

    move-object v5, v2

    :goto_50
    if-eqz p0, :cond_7c

    if-eq p0, p1, :cond_6a

    .line 293
    invoke-static {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v6

    if-eqz v6, :cond_5b

    goto :goto_6a

    .line 315
    :cond_5b
    invoke-static {p0}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 317
    invoke-static {p1}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v7, v2

    move-object v2, p0

    move-object p0, v7

    move-object v7, v5

    move-object v5, p1

    move-object p1, v7

    goto :goto_50

    :cond_6a
    :goto_6a
    if-nez v2, :cond_70

    if-ge v4, v3, :cond_6f

    return v0

    :cond_6f
    return v1

    .line 306
    :cond_70
    invoke-static {p0, v2, v5}, Lorg/apache/xml/utils/DOMHelper;->isNodeAfterSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result p0

    return p0

    :cond_75
    :goto_75
    if-eqz v1, :cond_7c

    .line 219
    invoke-static {v1, p0, p1}, Lorg/apache/xml/utils/DOMHelper;->isNodeAfterSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result p0

    return p0

    :cond_7c
    :goto_7c
    return v0
.end method

.method private static greylist isNodeAfterSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .registers 11

    .line 366
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 367
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v3, v0, :cond_f

    if-ne v3, v1, :cond_f

    return v2

    :cond_f
    const/4 v4, 0x1

    if-ne v3, v0, :cond_15

    if-eq v3, v1, :cond_15

    return v4

    :cond_15
    if-ne v3, v0, :cond_45

    .line 385
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    .line 386
    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    move v1, v2

    move v3, v1

    move v5, v3

    :goto_22
    if-ge v1, v0, :cond_6c

    .line 392
    invoke-interface {p0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eq p1, v6, :cond_3e

    .line 394
    invoke-static {p1, v6}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_31

    goto :goto_3e

    :cond_31
    if-eq p2, v6, :cond_39

    .line 405
    invoke-static {p2, v6}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v6

    if-eqz v6, :cond_42

    :cond_39
    if-eqz v5, :cond_3c

    return v4

    :cond_3c
    move v3, v4

    goto :goto_42

    :cond_3e
    :goto_3e
    if-eqz v3, :cond_41

    return v2

    :cond_41
    move v5, v4

    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 431
    :cond_45
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    move v0, v2

    move v1, v0

    :goto_4b
    if-eqz p0, :cond_6c

    if-eq p1, p0, :cond_63

    .line 438
    invoke-static {p1, p0}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_56

    goto :goto_63

    :cond_56
    if-eq p2, p0, :cond_5e

    .line 449
    invoke-static {p2, p0}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_67

    :cond_5e
    if-eqz v1, :cond_61

    return v4

    :cond_61
    move v0, v4

    goto :goto_67

    :cond_63
    :goto_63
    if-eqz v0, :cond_66

    return v2

    :cond_66
    move v1, v4

    .line 461
    :cond_67
    :goto_67
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_4b

    :cond_6c
    return v2
.end method

.method public static greylist isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .registers 3

    .line 341
    instance-of v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    if-eqz v0, :cond_11

    instance-of v0, p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    if-eqz v0, :cond_11

    .line 342
    check-cast p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    check-cast p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->equals(Lorg/w3c/dom/Node;)Z

    move-result p0

    return p0

    :cond_11
    if-ne p0, p1, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist locateAttrParent(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5

    .line 1204
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-ne v0, p1, :cond_c

    move-object v0, p0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_2b

    .line 1210
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_13
    if-eqz p0, :cond_2b

    .line 1213
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_26

    .line 1215
    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-static {v0, p1}, Lorg/apache/xml/utils/DOMHelper;->locateAttrParent(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_26

    return-object v0

    .line 1211
    :cond_26
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_13

    :cond_2b
    return-object v0
.end method


# virtual methods
.method public greylist getDOMFactory()Lorg/w3c/dom/Document;
    .registers 2

    .line 1254
    iget-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    if-nez v0, :cond_a

    .line 1256
    invoke-static {}, Lorg/apache/xml/utils/DOMHelper;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    .line 1259
    :cond_a
    iget-object p0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    return-object p0
.end method

.method public greylist getElementByID(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .registers 3

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getExpandedAttributeName(Lorg/w3c/dom/Attr;)Ljava/lang/String;
    .registers 4

    .line 874
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 878
    :cond_1f
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getExpandedElementName(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .registers 4

    .line 852
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 856
    :cond_1f
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getLevel(Lorg/w3c/dom/Node;)S
    .registers 2

    const/4 p0, 0x1

    .line 485
    :goto_1
    invoke-static {p1}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_b

    add-int/lit8 p0, p0, 0x1

    int-to-short p0, p0

    goto :goto_1

    :cond_b
    return p0
.end method

.method public greylist getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 2

    .line 831
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3a

    .line 832
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_d

    return-object p0

    :cond_d
    add-int/lit8 p1, p1, 0x1

    .line 834
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;
    .registers 5

    .line 519
    const-string p0, "xml"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 521
    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    .line 523
    :cond_b
    const-string p0, "xmlns"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 530
    const-string p0, "http://www.w3.org/2000/xmlns/"

    return-object p0

    .line 535
    :cond_16
    const-string v0, ""

    if-ne p1, v0, :cond_1b

    goto :goto_2c

    .line 537
    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "xmlns:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2c
    if-eqz p2, :cond_4d

    .line 541
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_38

    const/4 v1, 0x5

    if-ne p1, v1, :cond_4d

    :cond_38
    if-ne p1, v0, :cond_48

    .line 555
    move-object p1, p2

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1, p0}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    if-eqz p1, :cond_48

    .line 558
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 563
    :cond_48
    invoke-static {p2}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p2

    goto :goto_2c

    :cond_4d
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 627
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v5, v2, :cond_1f

    .line 631
    iget-object v6, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_17

    move-object v6, v3

    goto :goto_19

    .line 633
    :cond_17
    check-cast v6, Lorg/apache/xml/utils/NSInfo;

    :goto_19
    if-nez v6, :cond_1c

    goto :goto_20

    .line 634
    :cond_1c
    iget-boolean v7, v6, Lorg/apache/xml/utils/NSInfo;->m_hasProcessedNS:Z

    goto :goto_21

    :cond_1f
    move-object v6, v3

    :goto_20
    move v7, v4

    :goto_21
    if-eqz v7, :cond_26

    .line 644
    iget-object v0, v6, Lorg/apache/xml/utils/NSInfo;->m_namespace:Ljava/lang/String;

    return-object v0

    .line 650
    :cond_26
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x3a

    .line 651
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 654
    const-string v9, ""

    if-ne v5, v2, :cond_3c

    if-lez v8, :cond_3b

    .line 658
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_44

    :cond_3b
    return-object v3

    :cond_3c
    if-ltz v8, :cond_43

    .line 671
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_44

    :cond_43
    move-object v7, v9

    .line 677
    :goto_44
    const-string v8, "xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 679
    const-string v3, "http://www.w3.org/XML/1998/namespace"

    move v11, v4

    goto/16 :goto_14e

    :cond_51
    move-object v10, v1

    move v11, v4

    move v12, v11

    move-object v8, v6

    move-object v6, v3

    :goto_56
    if-eqz v10, :cond_109

    if-nez v6, :cond_109

    if-eqz v8, :cond_62

    .line 688
    iget v13, v8, Lorg/apache/xml/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    if-ne v13, v5, :cond_62

    goto/16 :goto_109

    .line 695
    :cond_62
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    if-eqz v8, :cond_70

    .line 697
    iget-boolean v14, v8, Lorg/apache/xml/utils/NSInfo;->m_hasXMLNSAttrs:Z

    if-eqz v14, :cond_6d

    goto :goto_70

    :cond_6d
    move v3, v5

    goto/16 :goto_de

    :cond_70
    :goto_70
    const/4 v14, 0x1

    if-ne v13, v14, :cond_c8

    .line 703
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v15

    move v3, v4

    move/from16 v16, v3

    .line 705
    :goto_7a
    invoke-interface {v15}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    if-ge v3, v14, :cond_c4

    .line 707
    invoke-interface {v15, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 708
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    move/from16 v17, v3

    .line 710
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x78

    if-ne v3, v4, :cond_bf

    .line 712
    const-string v3, "xmlns:"

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 714
    const-string v4, "xmlns"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a2

    if-eqz v3, :cond_bf

    :cond_a2
    if-ne v1, v10, :cond_a5

    const/4 v12, 0x1

    :cond_a5
    if-eqz v3, :cond_ad

    const/4 v3, 0x6

    .line 722
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_ae

    :cond_ad
    move-object v3, v9

    .line 724
    :goto_ae
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 726
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x2

    const/4 v11, 0x1

    const/4 v14, 0x1

    goto :goto_ca

    :cond_bc
    const/4 v11, 0x1

    const/16 v16, 0x1

    :cond_bf
    add-int/lit8 v3, v17, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    goto :goto_7a

    :cond_c4
    move v3, v5

    move/from16 v14, v16

    goto :goto_ca

    :cond_c8
    move v3, v5

    const/4 v14, 0x0

    :goto_ca
    if-eq v3, v13, :cond_dd

    if-nez v8, :cond_dd

    if-eq v1, v10, :cond_dd

    if-eqz v14, :cond_d5

    .line 739
    sget-object v3, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    goto :goto_d7

    :cond_d5
    sget-object v3, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    .line 741
    :goto_d7
    iget-object v4, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    invoke-virtual {v4, v10, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v3

    :cond_dd
    const/4 v3, 0x2

    :goto_de
    if-ne v3, v13, :cond_e6

    .line 747
    invoke-static {v10}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    :goto_e4
    move-object v10, v3

    goto :goto_f5

    .line 751
    :cond_e6
    iget-object v3, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    invoke-virtual {v3, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 752
    iget-object v3, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    invoke-virtual {v3, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 754
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_e4

    :goto_f5
    if-eqz v10, :cond_104

    .line 759
    iget-object v3, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    invoke-virtual {v3, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_101

    const/4 v8, 0x0

    goto :goto_104

    .line 761
    :cond_101
    check-cast v3, Lorg/apache/xml/utils/NSInfo;

    move-object v8, v3

    :cond_104
    :goto_104
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    goto/16 :goto_56

    .line 765
    :cond_109
    :goto_109
    iget-object v3, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_14b

    if-nez v11, :cond_146

    if-nez v10, :cond_146

    const/4 v4, 0x0

    :goto_116
    if-ge v4, v3, :cond_146

    .line 773
    iget-object v5, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 776
    sget-object v7, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    if-ne v5, v7, :cond_132

    .line 778
    iget-object v5, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    iget-object v7, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    invoke-virtual {v5, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_143

    .line 781
    :cond_132
    sget-object v7, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    if-ne v5, v7, :cond_143

    .line 783
    iget-object v5, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    iget-object v7, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    invoke-virtual {v5, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_143
    :goto_143
    add-int/lit8 v4, v4, 0x2

    goto :goto_116

    .line 789
    :cond_146
    iget-object v3, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    :cond_14b
    move-object v3, v6

    move v4, v12

    const/4 v5, 0x2

    :goto_14e
    if-eq v5, v2, :cond_178

    if-nez v3, :cond_16e

    if-eqz v11, :cond_166

    if-eqz v4, :cond_15e

    .line 800
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    sget-object v2, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    .line 802
    :cond_15e
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    sget-object v2, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    .line 806
    :cond_166
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    sget-object v2, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    .line 811
    :cond_16e
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    new-instance v2, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v2, v3, v4}, Lorg/apache/xml/utils/NSInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_178
    return-object v3
.end method

.method public greylist getRoot(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3

    const/4 p0, 0x0

    :goto_1
    if-eqz p1, :cond_b

    .line 930
    invoke-static {p1}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    :cond_b
    return-object p0
.end method

.method public greylist getRootNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3

    .line 956
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 v0, 0x9

    if-eq v0, p0, :cond_12

    const/16 v0, 0xb

    if-ne v0, p0, :cond_d

    goto :goto_12

    .line 958
    :cond_d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_12
    return-object p1
.end method

.method public greylist getUniqueID(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 3

    .line 183
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "N"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getUnparsedEntityURI(Ljava/lang/String;Lorg/w3c/dom/Document;)Ljava/lang/String;
    .registers 3

    .line 1132
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 1136
    invoke-interface {p0}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    if-nez p0, :cond_d

    goto :goto_28

    .line 1139
    :cond_d
    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Entity;

    if-nez p0, :cond_16

    goto :goto_28

    .line 1143
    :cond_16
    invoke-interface {p0}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 1156
    invoke-interface {p0}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_27

    .line 1160
    invoke-interface {p0}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    return-object p1

    .line 1138
    :cond_28
    :goto_28
    const-string p0, ""

    return-object p0
.end method

.method public greylist isIgnorableWhitespace(Lorg/w3c/dom/Text;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isNamespaceNode(Lorg/w3c/dom/Node;)Z
    .registers 4

    .line 974
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne v1, p0, :cond_20

    .line 976
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    .line 978
    const-string p1, "xmlns:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, "xmlns"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1e

    :cond_1d
    return v0

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    return p0

    :cond_20
    return v0
.end method

.method public greylist setDOMFactory(Lorg/w3c/dom/Document;)V
    .registers 2

    .line 1242
    iput-object p1, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    return-void
.end method

.method public greylist shouldStripSourceNode(Lorg/w3c/dom/Node;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method
