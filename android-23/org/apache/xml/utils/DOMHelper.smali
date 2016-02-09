.class public Lorg/apache/xml/utils/DOMHelper;
.super Ljava/lang/Object;
.source "DOMHelper.java"


# static fields
.field protected static final m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoNullWithXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoUnProcNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoUnProcWithXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;


# instance fields
.field protected m_DOMFactory:Lorg/w3c/dom/Document;

.field m_NSInfos:Ljava/util/Hashtable;

.field protected m_candidateNoAncestorXMLNS:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 577
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    #@5
    invoke-direct {v0, v1, v2}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    #@8
    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    #@a
    .line 582
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    #@c
    invoke-direct {v0, v1, v1}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    #@f
    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    #@11
    .line 588
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    #@13
    invoke-direct {v0, v1, v1, v3}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZI)V

    #@16
    .line 587
    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    #@18
    .line 592
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    #@1a
    invoke-direct {v0, v2, v2}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    #@1d
    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    #@1f
    .line 597
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    #@21
    invoke-direct {v0, v2, v1}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    #@24
    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    #@26
    .line 603
    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    #@28
    invoke-direct {v0, v2, v1, v3}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZI)V

    #@2b
    .line 602
    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    #@2d
    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 573
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    #@a
    .line 607
    new-instance v0, Ljava/util/Vector;

    #@c
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@f
    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    #@11
    .line 1230
    const/4 v0, 0x0

    #@12
    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    #@14
    .line 52
    return-void
.end method

.method public static createDocument()Lorg/w3c/dom/Document;
    .locals 1

    #@0
    .prologue
    .line 133
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Lorg/apache/xml/utils/DOMHelper;->createDocument(Z)Lorg/w3c/dom/Document;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createDocument(Z)Lorg/w3c/dom/Document;
    .locals 7
    .param p0, "isSecureProcessing"    # Z

    #@0
    .prologue
    .line 85
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    #@3
    move-result-object v0

    #@4
    .line 87
    .local v0, "dfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x1

    #@5
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    #@8
    .line 106
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    #@b
    move-result-object v1

    #@c
    .line 107
    .local v1, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v2

    #@10
    .line 109
    .local v2, "outNode":Lorg/w3c/dom/Document;
    return-object v2

    #@11
    .line 112
    .end local v0    # "dfactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v1    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "outNode":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v3

    #@12
    .line 113
    .local v3, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@14
    .line 115
    const-string/jumbo v5, "ER_CREATEDOCUMENT_NOT_SUPPORTED"

    #@17
    const/4 v6, 0x0

    #@18
    .line 114
    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    .line 113
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4
.end method

.method public static getNodeData(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3
    .param p0, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 1276
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    #@3
    move-result-object v0

    #@4
    .line 1281
    .local v0, "buf":Lorg/apache/xml/utils/FastStringBuffer;
    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/xml/utils/DOMHelper;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    #@7
    .line 1283
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    #@a
    move-result v2

    #@b
    if-lez v2, :cond_0

    #@d
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v1

    #@11
    .line 1287
    .local v1, "s":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@14
    .line 1290
    return-object v1

    #@15
    .line 1283
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    .restart local v1    # "s":Ljava/lang/String;
    goto :goto_0

    #@19
    .line 1286
    .end local v1    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@1a
    .line 1287
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@1d
    .line 1286
    throw v2
.end method

.method public static getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 2
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "buf"    # Lorg/apache/xml/utils/FastStringBuffer;

    #@0
    .prologue
    .line 1313
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    #@3
    move-result v1

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 1310
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 1319
    :pswitch_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    #@b
    move-result-object v0

    #@c
    .local v0, "child":Lorg/w3c/dom/Node;
    :goto_1
    if-eqz v0, :cond_0

    #@e
    .line 1322
    invoke-static {v0, p1}, Lorg/apache/xml/utils/DOMHelper;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    #@11
    .line 1320
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@14
    move-result-object v0

    #@15
    goto :goto_1

    #@16
    .line 1328
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :pswitch_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@1d
    goto :goto_0

    #@1e
    .line 1331
    :pswitch_3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@25
    goto :goto_0

    #@26
    .line 1313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 8
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1013
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    #@4
    move-result v2

    #@5
    .line 1015
    .local v2, "nodeType":S
    const/4 v5, 0x2

    #@6
    if-ne v5, v2, :cond_2

    #@8
    .line 1017
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@b
    move-result-object v0

    #@c
    .line 1035
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    #@f
    move-result-object v1

    #@10
    .line 1036
    .local v1, "impl":Lorg/w3c/dom/DOMImplementation;
    if-eqz v1, :cond_0

    #@12
    const-string/jumbo v5, "Core"

    #@15
    const-string/jumbo v6, "2.0"

    #@18
    invoke-interface {v1, v5, v6}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 1038
    check-cast p0, Lorg/w3c/dom/Attr;

    #@20
    .end local p0    # "node":Lorg/w3c/dom/Node;
    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    #@23
    move-result-object v3

    #@24
    .line 1039
    .local v3, "parent":Lorg/w3c/dom/Node;
    return-object v3

    #@25
    .line 1044
    .end local v3    # "parent":Lorg/w3c/dom/Node;
    .restart local p0    # "node":Lorg/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    #@28
    move-result-object v4

    #@29
    .line 1046
    .local v4, "rootElem":Lorg/w3c/dom/Element;
    if-nez v4, :cond_1

    #@2b
    .line 1048
    new-instance v5, Ljava/lang/RuntimeException;

    #@2d
    .line 1050
    const-string/jumbo v6, "ER_CHILD_HAS_NO_OWNER_DOCUMENT_ELEMENT"

    #@30
    .line 1049
    invoke-static {v6, v7}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    .line 1048
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@37
    throw v5

    #@38
    .line 1054
    :cond_1
    invoke-static {v4, p0}, Lorg/apache/xml/utils/DOMHelper;->locateAttrParent(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@3b
    move-result-object v3

    #@3c
    .line 1067
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v1    # "impl":Lorg/w3c/dom/DOMImplementation;
    .end local v4    # "rootElem":Lorg/w3c/dom/Element;
    .restart local v3    # "parent":Lorg/w3c/dom/Node;
    :goto_0
    return-object v3

    #@3d
    .line 1059
    .end local v3    # "parent":Lorg/w3c/dom/Node;
    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@40
    move-result-object v3

    #@41
    .restart local v3    # "parent":Lorg/w3c/dom/Node;
    goto :goto_0
.end method

.method public static isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 12
    .param p0, "node1"    # Lorg/w3c/dom/Node;
    .param p1, "node2"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 206
    if-eq p0, p1, :cond_0

    #@2
    invoke-static {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    #@5
    move-result v11

    #@6
    if-eqz v11, :cond_1

    #@8
    .line 207
    :cond_0
    const/4 v11, 0x1

    #@9
    return v11

    #@a
    .line 210
    :cond_1
    const/4 v2, 0x1

    #@b
    .line 212
    .local v2, "isNodeAfter":Z
    invoke-static {p0}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@e
    move-result-object v5

    #@f
    .line 213
    .local v5, "parent1":Lorg/w3c/dom/Node;
    invoke-static {p1}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@12
    move-result-object v6

    #@13
    .line 216
    .local v6, "parent2":Lorg/w3c/dom/Node;
    if-eq v5, v6, :cond_2

    #@15
    invoke-static {v5, v6}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    #@18
    move-result v11

    #@19
    if-eqz v11, :cond_4

    #@1b
    .line 218
    :cond_2
    if-eqz v5, :cond_3

    #@1d
    .line 219
    invoke-static {v5, p0, p1}, Lorg/apache/xml/utils/DOMHelper;->isNodeAfterSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    #@20
    move-result v2

    #@21
    .line 329
    .end local v2    # "isNodeAfter":Z
    :cond_3
    :goto_0
    return v2

    #@22
    .line 245
    .restart local v2    # "isNodeAfter":Z
    :cond_4
    const/4 v3, 0x2

    #@23
    .local v3, "nParents1":I
    const/4 v4, 0x2

    #@24
    .line 247
    .local v4, "nParents2":I
    :goto_1
    if-eqz v5, :cond_5

    #@26
    .line 249
    add-int/lit8 v3, v3, 0x1

    #@28
    .line 251
    invoke-static {v5}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@2b
    move-result-object v5

    #@2c
    goto :goto_1

    #@2d
    .line 254
    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    #@2f
    .line 256
    add-int/lit8 v4, v4, 0x1

    #@31
    .line 258
    invoke-static {v6}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@34
    move-result-object v6

    #@35
    goto :goto_2

    #@36
    .line 263
    :cond_6
    move-object v9, p0

    #@37
    .local v9, "startNode1":Lorg/w3c/dom/Node;
    move-object v10, p1

    #@38
    .line 267
    .local v10, "startNode2":Lorg/w3c/dom/Node;
    if-ge v3, v4, :cond_7

    #@3a
    .line 270
    sub-int v0, v4, v3

    #@3c
    .line 272
    .local v0, "adjust":I
    const/4 v1, 0x0

    #@3d
    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_8

    #@3f
    .line 274
    invoke-static {v10}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@42
    move-result-object v10

    #@43
    .line 272
    add-int/lit8 v1, v1, 0x1

    #@45
    goto :goto_3

    #@46
    .line 277
    .end local v0    # "adjust":I
    .end local v1    # "i":I
    :cond_7
    if-le v3, v4, :cond_8

    #@48
    .line 280
    sub-int v0, v3, v4

    #@4a
    .line 282
    .restart local v0    # "adjust":I
    const/4 v1, 0x0

    #@4b
    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_8

    #@4d
    .line 284
    invoke-static {v9}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@50
    move-result-object v9

    #@51
    .line 282
    add-int/lit8 v1, v1, 0x1

    #@53
    goto :goto_4

    #@54
    .line 288
    .end local v0    # "adjust":I
    .end local v1    # "i":I
    :cond_8
    const/4 v7, 0x0

    #@55
    .local v7, "prevChild1":Lorg/w3c/dom/Node;
    const/4 v8, 0x0

    #@56
    .line 291
    .end local v7    # "prevChild1":Lorg/w3c/dom/Node;
    :goto_5
    if-eqz v9, :cond_3

    #@58
    .line 293
    if-eq v9, v10, :cond_9

    #@5a
    invoke-static {v9, v10}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    #@5d
    move-result v11

    #@5e
    if-eqz v11, :cond_c

    #@60
    .line 295
    :cond_9
    if-nez v7, :cond_b

    #@62
    .line 299
    if-ge v3, v4, :cond_a

    #@64
    const/4 v2, 0x1

    #@65
    goto :goto_0

    #@66
    :cond_a
    const/4 v2, 0x0

    #@67
    goto :goto_0

    #@68
    .line 306
    :cond_b
    invoke-static {v9, v7, v8}, Lorg/apache/xml/utils/DOMHelper;->isNodeAfterSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    #@6b
    move-result v2

    #@6c
    .local v2, "isNodeAfter":Z
    goto :goto_0

    #@6d
    .line 314
    .local v2, "isNodeAfter":Z
    :cond_c
    move-object v7, v9

    #@6e
    .line 315
    .local v7, "prevChild1":Lorg/w3c/dom/Node;
    invoke-static {v9}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@71
    move-result-object v9

    #@72
    .line 316
    move-object v8, v10

    #@73
    .line 317
    .local v8, "prevChild2":Lorg/w3c/dom/Node;
    invoke-static {v10}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@76
    move-result-object v10

    #@77
    goto :goto_5
.end method

.method private static isNodeAfterSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 10
    .param p0, "parent"    # Lorg/w3c/dom/Node;
    .param p1, "child1"    # Lorg/w3c/dom/Node;
    .param p2, "child2"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    .line 365
    const/4 v7, 0x0

    #@2
    .line 366
    .local v7, "isNodeAfterSibling":Z
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@5
    move-result v1

    #@6
    .line 367
    .local v1, "child1type":S
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    #@9
    move-result v2

    #@a
    .line 369
    .local v2, "child2type":S
    if-eq v9, v1, :cond_1

    #@c
    .line 370
    if-ne v9, v2, :cond_1

    #@e
    .line 374
    const/4 v7, 0x0

    #@f
    .line 465
    :cond_0
    :goto_0
    return v7

    #@10
    .line 376
    :cond_1
    if-ne v9, v1, :cond_2

    #@12
    .line 377
    if-eq v9, v2, :cond_2

    #@14
    .line 381
    const/4 v7, 0x1

    #@15
    .line 378
    goto :goto_0

    #@16
    .line 383
    :cond_2
    if-ne v9, v1, :cond_9

    #@18
    .line 385
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@1b
    move-result-object v3

    #@1c
    .line 386
    .local v3, "children":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@1f
    move-result v8

    #@20
    .line 387
    .local v8, "nNodes":I
    const/4 v4, 0x0

    #@21
    .local v4, "found1":Z
    const/4 v5, 0x0

    #@22
    .line 390
    .local v5, "found2":Z
    const/4 v6, 0x0

    #@23
    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_0

    #@25
    .line 392
    invoke-interface {v3, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@28
    move-result-object v0

    #@29
    .line 394
    .local v0, "child":Lorg/w3c/dom/Node;
    if-eq p1, v0, :cond_3

    #@2b
    invoke-static {p1, v0}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    #@2e
    move-result v9

    #@2f
    if-eqz v9, :cond_6

    #@31
    .line 396
    :cond_3
    if-eqz v5, :cond_4

    #@33
    .line 398
    const/4 v7, 0x0

    #@34
    .line 400
    goto :goto_0

    #@35
    .line 403
    :cond_4
    const/4 v4, 0x1

    #@36
    .line 390
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@38
    goto :goto_1

    #@39
    .line 405
    :cond_6
    if-eq p2, v0, :cond_7

    #@3b
    invoke-static {p2, v0}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    #@3e
    move-result v9

    #@3f
    if-eqz v9, :cond_5

    #@41
    .line 407
    :cond_7
    if-eqz v4, :cond_8

    #@43
    .line 409
    const/4 v7, 0x1

    #@44
    .line 411
    goto :goto_0

    #@45
    .line 414
    :cond_8
    const/4 v5, 0x1

    #@46
    goto :goto_2

    #@47
    .line 431
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v3    # "children":Lorg/w3c/dom/NamedNodeMap;
    .end local v4    # "found1":Z
    .end local v5    # "found2":Z
    .end local v6    # "i":I
    .end local v8    # "nNodes":I
    :cond_9
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    #@4a
    move-result-object v0

    #@4b
    .line 432
    .restart local v0    # "child":Lorg/w3c/dom/Node;
    const/4 v4, 0x0

    #@4c
    .restart local v4    # "found1":Z
    const/4 v5, 0x0

    #@4d
    .line 434
    .restart local v5    # "found2":Z
    :goto_3
    if-eqz v0, :cond_0

    #@4f
    .line 438
    if-eq p1, v0, :cond_a

    #@51
    invoke-static {p1, v0}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    #@54
    move-result v9

    #@55
    if-eqz v9, :cond_d

    #@57
    .line 440
    :cond_a
    if-eqz v5, :cond_b

    #@59
    .line 442
    const/4 v7, 0x0

    #@5a
    .line 444
    goto :goto_0

    #@5b
    .line 447
    :cond_b
    const/4 v4, 0x1

    #@5c
    .line 461
    :cond_c
    :goto_4
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@5f
    move-result-object v0

    #@60
    goto :goto_3

    #@61
    .line 449
    :cond_d
    if-eq p2, v0, :cond_e

    #@63
    invoke-static {p2, v0}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    #@66
    move-result v9

    #@67
    if-eqz v9, :cond_c

    #@69
    .line 451
    :cond_e
    if-eqz v4, :cond_f

    #@6b
    .line 453
    const/4 v7, 0x1

    #@6c
    .line 455
    goto :goto_0

    #@6d
    .line 458
    :cond_f
    const/4 v5, 0x1

    #@6e
    goto :goto_4
.end method

.method public static isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 1
    .param p0, "node1"    # Lorg/w3c/dom/Node;
    .param p1, "node2"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 341
    instance-of v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    #@2
    if-eqz v0, :cond_0

    #@4
    instance-of v0, p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 342
    check-cast p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    #@a
    .end local p0    # "node1":Lorg/w3c/dom/Node;
    check-cast p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    #@c
    .end local p1    # "node2":Lorg/w3c/dom/Node;
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->equals(Lorg/w3c/dom/Node;)Z

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 344
    .restart local p0    # "node1":Lorg/w3c/dom/Node;
    .restart local p1    # "node2":Lorg/w3c/dom/Node;
    :cond_0
    if-ne p0, p1, :cond_1

    #@13
    const/4 v0, 0x1

    #@14
    :goto_0
    return v0

    #@15
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method private static locateAttrParent(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5
    .param p0, "elem"    # Lorg/w3c/dom/Element;
    .param p1, "attr"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 1197
    const/4 v2, 0x0

    #@1
    .line 1204
    .local v2, "parent":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    invoke-interface {p0, v3}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    #@8
    move-result-object v0

    #@9
    .line 1205
    .local v0, "check":Lorg/w3c/dom/Attr;
    if-ne v0, p1, :cond_0

    #@b
    .line 1206
    move-object v2, p0

    #@c
    .line 1208
    .end local v2    # "parent":Lorg/w3c/dom/Node;
    :cond_0
    if-nez v2, :cond_1

    #@e
    .line 1210
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    #@11
    move-result-object v1

    #@12
    .local v1, "node":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v1, :cond_1

    #@14
    .line 1213
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@17
    move-result v3

    #@18
    const/4 v4, 0x1

    #@19
    if-ne v4, v3, :cond_2

    #@1b
    move-object v3, v1

    #@1c
    .line 1215
    check-cast v3, Lorg/w3c/dom/Element;

    #@1e
    invoke-static {v3, p1}, Lorg/apache/xml/utils/DOMHelper;->locateAttrParent(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@21
    move-result-object v2

    #@22
    .line 1217
    .local v2, "parent":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_2

    #@24
    .line 1223
    .end local v1    # "node":Lorg/w3c/dom/Node;
    .end local v2    # "parent":Lorg/w3c/dom/Node;
    :cond_1
    return-object v2

    #@25
    .line 1211
    .restart local v1    # "node":Lorg/w3c/dom/Node;
    :cond_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@28
    move-result-object v1

    #@29
    goto :goto_0
.end method


# virtual methods
.method public getDOMFactory()Lorg/w3c/dom/Document;
    .locals 1

    #@0
    .prologue
    .line 1254
    iget-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1256
    invoke-static {}, Lorg/apache/xml/utils/DOMHelper;->createDocument()Lorg/w3c/dom/Document;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    #@a
    .line 1259
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    #@c
    return-object v0
.end method

.method public getElementByID(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "doc"    # Lorg/w3c/dom/Document;

    #@0
    .prologue
    .line 1090
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getExpandedAttributeName(Lorg/w3c/dom/Attr;)Ljava/lang/String;
    .locals 3
    .param p1, "attr"    # Lorg/w3c/dom/Attr;

    #@0
    .prologue
    .line 874
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 876
    .local v0, "namespace":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, ":"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 876
    :goto_0
    return-object v1

    #@23
    .line 878
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    goto :goto_0
.end method

.method public getExpandedElementName(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 3
    .param p1, "elem"    # Lorg/w3c/dom/Element;

    #@0
    .prologue
    .line 852
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 854
    .local v0, "namespace":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, ":"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 854
    :goto_0
    return-object v1

    #@23
    .line 856
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    goto :goto_0
.end method

.method public getLevel(Lorg/w3c/dom/Node;)S
    .locals 2
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 483
    const/4 v0, 0x1

    #@1
    .line 485
    :goto_0
    invoke-static {p1}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@4
    move-result-object p1

    #@5
    if-eqz p1, :cond_0

    #@7
    .line 487
    add-int/lit8 v1, v0, 0x1

    #@9
    int-to-short v0, v1

    #@a
    .local v0, "level":S
    goto :goto_0

    #@b
    .line 490
    .end local v0    # "level":S
    :cond_0
    return v0
.end method

.method public getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 831
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 832
    .local v1, "qname":Ljava/lang/String;
    const/16 v2, 0x3a

    #@6
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    #@9
    move-result v0

    #@a
    .line 834
    .local v0, "index":I
    if-gez v0, :cond_0

    #@c
    .end local v1    # "qname":Ljava/lang/String;
    :goto_0
    return-object v1

    #@d
    .restart local v1    # "qname":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v0, 0x1

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    goto :goto_0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceContext"    # Lorg/w3c/dom/Element;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 516
    move-object v3, p2

    #@2
    .line 517
    .local v3, "parent":Lorg/w3c/dom/Node;
    const/4 v2, 0x0

    #@3
    .line 519
    .local v2, "namespace":Ljava/lang/String;
    const-string/jumbo v5, "xml"

    #@6
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_1

    #@c
    .line 521
    const-string/jumbo v2, "http://www.w3.org/XML/1998/namespace"

    #@f
    .line 567
    .end local v2    # "namespace":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    #@10
    .line 523
    .restart local v2    # "namespace":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "xmlns"

    #@13
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_2

    #@19
    .line 530
    const-string/jumbo v2, "http://www.w3.org/2000/xmlns/"

    #@1c
    .local v2, "namespace":Ljava/lang/String;
    goto :goto_0

    #@1d
    .line 535
    .local v2, "namespace":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, ""

    #@20
    if-ne p1, v5, :cond_4

    #@22
    .line 536
    const-string/jumbo v1, "xmlns"

    #@25
    .line 540
    .local v1, "declname":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_0

    #@27
    .line 541
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    #@2a
    move-result v4

    #@2b
    .local v4, "type":I
    if-eq v4, v7, :cond_3

    #@2d
    .line 542
    const/4 v5, 0x5

    #@2e
    if-ne v4, v5, :cond_0

    #@30
    .line 544
    :cond_3
    if-ne v4, v7, :cond_5

    #@32
    move-object v5, v3

    #@33
    .line 555
    check-cast v5, Lorg/w3c/dom/Element;

    #@35
    invoke-interface {v5, v1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    #@38
    move-result-object v0

    #@39
    .line 556
    .local v0, "attr":Lorg/w3c/dom/Attr;
    if-eqz v0, :cond_5

    #@3b
    .line 558
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    .local v2, "namespace":Ljava/lang/String;
    goto :goto_0

    #@40
    .line 537
    .end local v0    # "attr":Lorg/w3c/dom/Attr;
    .end local v1    # "declname":Ljava/lang/String;
    .end local v4    # "type":I
    .local v2, "namespace":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v6, "xmlns:"

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    .restart local v1    # "declname":Ljava/lang/String;
    goto :goto_1

    #@55
    .line 563
    .restart local v4    # "type":I
    :cond_5
    invoke-static {v3}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@58
    move-result-object v3

    #@59
    goto :goto_1
.end method

.method public getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 27
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 627
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@3
    move-result v19

    #@4
    .line 629
    .local v19, "ntype":S
    const/16 v24, 0x2

    #@6
    move/from16 v0, v24

    #@8
    move/from16 v1, v19

    #@a
    if-eq v0, v1, :cond_3

    #@c
    .line 631
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    #@10
    move-object/from16 v24, v0

    #@12
    move-object/from16 v0, v24

    #@14
    move-object/from16 v1, p1

    #@16
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v18

    #@1a
    .line 633
    .local v18, "nsObj":Ljava/lang/Object;
    if-nez v18, :cond_1

    #@1c
    const/16 v17, 0x0

    #@1e
    .line 634
    :goto_0
    if-nez v17, :cond_2

    #@20
    const/4 v8, 0x0

    #@21
    .line 642
    .end local v18    # "nsObj":Ljava/lang/Object;
    :goto_1
    if-eqz v8, :cond_4

    #@23
    .line 644
    move-object/from16 v0, v17

    #@25
    iget-object v14, v0, Lorg/apache/xml/utils/NSInfo;->m_namespace:Ljava/lang/String;

    #@27
    .line 816
    :cond_0
    :goto_2
    return-object v14

    #@28
    .restart local v18    # "nsObj":Ljava/lang/Object;
    :cond_1
    move-object/from16 v17, v18

    #@2a
    .line 633
    check-cast v17, Lorg/apache/xml/utils/NSInfo;

    #@2c
    .local v17, "nsInfo":Lorg/apache/xml/utils/NSInfo;
    goto :goto_0

    #@2d
    .line 634
    .end local v17    # "nsInfo":Lorg/apache/xml/utils/NSInfo;
    :cond_2
    move-object/from16 v0, v17

    #@2f
    iget-boolean v8, v0, Lorg/apache/xml/utils/NSInfo;->m_hasProcessedNS:Z

    #@31
    .local v8, "hasProcessedNS":Z
    goto :goto_1

    #@32
    .line 638
    .end local v8    # "hasProcessedNS":Z
    .end local v18    # "nsObj":Ljava/lang/Object;
    :cond_3
    const/4 v8, 0x0

    #@33
    .line 639
    .local v8, "hasProcessedNS":Z
    const/16 v17, 0x0

    #@35
    .local v17, "nsInfo":Lorg/apache/xml/utils/NSInfo;
    goto :goto_1

    #@36
    .line 648
    .end local v8    # "hasProcessedNS":Z
    .end local v17    # "nsInfo":Lorg/apache/xml/utils/NSInfo;
    :cond_4
    const/4 v14, 0x0

    #@37
    .line 650
    .local v14, "namespaceOfPrefix":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@3a
    move-result-object v16

    #@3b
    .line 651
    .local v16, "nodeName":Ljava/lang/String;
    const/16 v24, 0x3a

    #@3d
    move-object/from16 v0, v16

    #@3f
    move/from16 v1, v24

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@44
    move-result v10

    #@45
    .line 654
    .local v10, "indexOfNSSep":I
    const/16 v24, 0x2

    #@47
    move/from16 v0, v24

    #@49
    move/from16 v1, v19

    #@4b
    if-ne v0, v1, :cond_7

    #@4d
    .line 656
    if-lez v10, :cond_6

    #@4f
    .line 658
    const/16 v24, 0x0

    #@51
    move-object/from16 v0, v16

    #@53
    move/from16 v1, v24

    #@55
    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@58
    move-result-object v23

    #@59
    .line 674
    .local v23, "prefix":Ljava/lang/String;
    :goto_3
    const/4 v4, 0x0

    #@5a
    .line 675
    .local v4, "ancestorsHaveXMLNS":Z
    const/4 v13, 0x0

    #@5b
    .line 677
    .local v13, "nHasXMLNS":Z
    const-string/jumbo v24, "xml"

    #@5e
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v24

    #@62
    if-eqz v24, :cond_9

    #@64
    .line 679
    const-string/jumbo v14, "http://www.w3.org/XML/1998/namespace"

    #@67
    .line 793
    .end local v14    # "namespaceOfPrefix":Ljava/lang/String;
    :cond_5
    :goto_4
    const/16 v24, 0x2

    #@69
    move/from16 v0, v24

    #@6b
    move/from16 v1, v19

    #@6d
    if-eq v0, v1, :cond_0

    #@6f
    .line 795
    if-nez v14, :cond_1c

    #@71
    .line 797
    if-eqz v4, :cond_1b

    #@73
    .line 799
    if-eqz v13, :cond_1a

    #@75
    .line 800
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    #@79
    move-object/from16 v24, v0

    #@7b
    sget-object v25, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    #@7d
    move-object/from16 v0, v24

    #@7f
    move-object/from16 v1, p1

    #@81
    move-object/from16 v2, v25

    #@83
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@86
    goto :goto_2

    #@87
    .line 665
    .end local v4    # "ancestorsHaveXMLNS":Z
    .end local v13    # "nHasXMLNS":Z
    .end local v23    # "prefix":Ljava/lang/String;
    .restart local v14    # "namespaceOfPrefix":Ljava/lang/String;
    :cond_6
    return-object v14

    #@88
    .line 670
    :cond_7
    if-ltz v10, :cond_8

    #@8a
    .line 671
    const/16 v24, 0x0

    #@8c
    move-object/from16 v0, v16

    #@8e
    move/from16 v1, v24

    #@90
    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@93
    move-result-object v23

    #@94
    .restart local v23    # "prefix":Ljava/lang/String;
    goto :goto_3

    #@95
    .end local v23    # "prefix":Ljava/lang/String;
    :cond_8
    const-string/jumbo v23, ""

    #@98
    .restart local v23    # "prefix":Ljava/lang/String;
    goto :goto_3

    #@99
    .line 684
    .restart local v4    # "ancestorsHaveXMLNS":Z
    .restart local v13    # "nHasXMLNS":Z
    :cond_9
    move-object/from16 v21, p1

    #@9b
    .line 686
    .end local v14    # "namespaceOfPrefix":Ljava/lang/String;
    .local v21, "parent":Lorg/w3c/dom/Node;
    :cond_a
    :goto_5
    if-eqz v21, :cond_b

    #@9d
    if-nez v14, :cond_b

    #@9f
    .line 688
    if-eqz v17, :cond_d

    #@a1
    .line 689
    move-object/from16 v0, v17

    #@a3
    iget v0, v0, Lorg/apache/xml/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    #@a5
    move/from16 v24, v0

    #@a7
    .line 690
    const/16 v25, 0x2

    #@a9
    .line 689
    move/from16 v0, v24

    #@ab
    move/from16 v1, v25

    #@ad
    if-ne v0, v1, :cond_d

    #@af
    .line 765
    :cond_b
    move-object/from16 v0, p0

    #@b1
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    #@b3
    move-object/from16 v24, v0

    #@b5
    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    #@b8
    move-result v12

    #@b9
    .line 767
    .local v12, "nCandidates":I
    if-lez v12, :cond_5

    #@bb
    .line 769
    if-nez v4, :cond_19

    #@bd
    if-nez v21, :cond_19

    #@bf
    .line 771
    const/4 v9, 0x0

    #@c0
    .local v9, "i":I
    :goto_6
    if-ge v9, v12, :cond_19

    #@c2
    .line 773
    move-object/from16 v0, p0

    #@c4
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    #@c6
    move-object/from16 v24, v0

    #@c8
    add-int/lit8 v25, v9, 0x1

    #@ca
    invoke-virtual/range {v24 .. v25}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@cd
    move-result-object v6

    #@ce
    .line 776
    .local v6, "candidateInfo":Ljava/lang/Object;
    sget-object v24, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    #@d0
    move-object/from16 v0, v24

    #@d2
    if-ne v6, v0, :cond_18

    #@d4
    .line 778
    move-object/from16 v0, p0

    #@d6
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    #@d8
    move-object/from16 v24, v0

    #@da
    move-object/from16 v0, p0

    #@dc
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    #@de
    move-object/from16 v25, v0

    #@e0
    move-object/from16 v0, v25

    #@e2
    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@e5
    move-result-object v25

    #@e6
    .line 779
    sget-object v26, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    #@e8
    .line 778
    invoke-virtual/range {v24 .. v26}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@eb
    .line 771
    :cond_c
    :goto_7
    add-int/lit8 v9, v9, 0x2

    #@ed
    goto :goto_6

    #@ee
    .line 695
    .end local v6    # "candidateInfo":Ljava/lang/Object;
    .end local v9    # "i":I
    .end local v12    # "nCandidates":I
    :cond_d
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeType()S

    #@f1
    move-result v22

    #@f2
    .line 697
    .local v22, "parentType":I
    if-eqz v17, :cond_e

    #@f4
    move-object/from16 v0, v17

    #@f6
    iget-boolean v0, v0, Lorg/apache/xml/utils/NSInfo;->m_hasXMLNSAttrs:Z

    #@f8
    move/from16 v24, v0

    #@fa
    if-eqz v24, :cond_12

    #@fc
    .line 699
    :cond_e
    const/4 v7, 0x0

    #@fd
    .line 701
    .local v7, "elementHasXMLNS":Z
    const/16 v24, 0x1

    #@ff
    move/from16 v0, v22

    #@101
    move/from16 v1, v24

    #@103
    if-ne v0, v1, :cond_11

    #@105
    .line 703
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@108
    move-result-object v15

    #@109
    .line 705
    .local v15, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const/4 v9, 0x0

    #@10a
    .restart local v9    # "i":I
    :goto_8
    invoke-interface {v15}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@10d
    move-result v24

    #@10e
    move/from16 v0, v24

    #@110
    if-ge v9, v0, :cond_11

    #@112
    .line 707
    invoke-interface {v15, v9}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@115
    move-result-object v5

    #@116
    .line 708
    .local v5, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@119
    move-result-object v3

    #@11a
    .line 710
    .local v3, "aname":Ljava/lang/String;
    const/16 v24, 0x0

    #@11c
    move/from16 v0, v24

    #@11e
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    #@121
    move-result v24

    #@122
    const/16 v25, 0x78

    #@124
    move/from16 v0, v24

    #@126
    move/from16 v1, v25

    #@128
    if-ne v0, v1, :cond_14

    #@12a
    .line 712
    const-string/jumbo v24, "xmlns:"

    #@12d
    move-object/from16 v0, v24

    #@12f
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@132
    move-result v11

    #@133
    .line 714
    .local v11, "isPrefix":Z
    const-string/jumbo v24, "xmlns"

    #@136
    move-object/from16 v0, v24

    #@138
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13b
    move-result v24

    #@13c
    if-nez v24, :cond_f

    #@13e
    if-eqz v11, :cond_14

    #@140
    .line 716
    :cond_f
    move-object/from16 v0, p1

    #@142
    move-object/from16 v1, v21

    #@144
    if-ne v0, v1, :cond_10

    #@146
    .line 717
    const/4 v13, 0x1

    #@147
    .line 719
    :cond_10
    const/4 v7, 0x1

    #@148
    .line 720
    const/4 v4, 0x1

    #@149
    .line 722
    if-eqz v11, :cond_13

    #@14b
    const/16 v24, 0x6

    #@14d
    move/from16 v0, v24

    #@14f
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@152
    move-result-object v20

    #@153
    .line 724
    .local v20, "p":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, v20

    #@155
    move-object/from16 v1, v23

    #@157
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15a
    move-result v24

    #@15b
    if-eqz v24, :cond_14

    #@15d
    .line 726
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@160
    move-result-object v14

    #@161
    .line 735
    .end local v3    # "aname":Ljava/lang/String;
    .end local v5    # "attr":Lorg/w3c/dom/Node;
    .end local v9    # "i":I
    .end local v11    # "isPrefix":Z
    .end local v15    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v20    # "p":Ljava/lang/String;
    :cond_11
    const/16 v24, 0x2

    #@163
    move/from16 v0, v24

    #@165
    move/from16 v1, v22

    #@167
    if-eq v0, v1, :cond_12

    #@169
    if-nez v17, :cond_12

    #@16b
    .line 736
    move-object/from16 v0, p1

    #@16d
    move-object/from16 v1, v21

    #@16f
    if-eq v0, v1, :cond_12

    #@171
    .line 738
    if-eqz v7, :cond_15

    #@173
    .line 739
    sget-object v17, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    #@175
    .line 741
    .local v17, "nsInfo":Lorg/apache/xml/utils/NSInfo;
    :goto_a
    move-object/from16 v0, p0

    #@177
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    #@179
    move-object/from16 v24, v0

    #@17b
    move-object/from16 v0, v24

    #@17d
    move-object/from16 v1, v21

    #@17f
    move-object/from16 v2, v17

    #@181
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@184
    .line 745
    .end local v7    # "elementHasXMLNS":Z
    .end local v17    # "nsInfo":Lorg/apache/xml/utils/NSInfo;
    :cond_12
    const/16 v24, 0x2

    #@186
    move/from16 v0, v24

    #@188
    move/from16 v1, v22

    #@18a
    if-ne v0, v1, :cond_16

    #@18c
    .line 747
    invoke-static/range {v21 .. v21}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@18f
    move-result-object v21

    #@190
    .line 757
    :goto_b
    if-eqz v21, :cond_a

    #@192
    .line 759
    move-object/from16 v0, p0

    #@194
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    #@196
    move-object/from16 v24, v0

    #@198
    move-object/from16 v0, v24

    #@19a
    move-object/from16 v1, v21

    #@19c
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19f
    move-result-object v18

    #@1a0
    .line 761
    .restart local v18    # "nsObj":Ljava/lang/Object;
    if-nez v18, :cond_17

    #@1a2
    const/16 v17, 0x0

    #@1a4
    .local v17, "nsInfo":Lorg/apache/xml/utils/NSInfo;
    goto/16 :goto_5

    #@1a6
    .line 722
    .end local v17    # "nsInfo":Lorg/apache/xml/utils/NSInfo;
    .end local v18    # "nsObj":Ljava/lang/Object;
    .restart local v3    # "aname":Ljava/lang/String;
    .restart local v5    # "attr":Lorg/w3c/dom/Node;
    .restart local v7    # "elementHasXMLNS":Z
    .restart local v9    # "i":I
    .restart local v11    # "isPrefix":Z
    .restart local v15    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    :cond_13
    const-string/jumbo v20, ""

    #@1a9
    .restart local v20    # "p":Ljava/lang/String;
    goto :goto_9

    #@1aa
    .line 705
    .end local v11    # "isPrefix":Z
    .end local v20    # "p":Ljava/lang/String;
    :cond_14
    add-int/lit8 v9, v9, 0x1

    #@1ac
    goto/16 :goto_8

    #@1ae
    .line 739
    .end local v3    # "aname":Ljava/lang/String;
    .end local v5    # "attr":Lorg/w3c/dom/Node;
    .end local v9    # "i":I
    .end local v15    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    :cond_15
    sget-object v17, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    #@1b0
    .local v17, "nsInfo":Lorg/apache/xml/utils/NSInfo;
    goto :goto_a

    #@1b1
    .line 751
    .end local v7    # "elementHasXMLNS":Z
    .end local v17    # "nsInfo":Lorg/apache/xml/utils/NSInfo;
    :cond_16
    move-object/from16 v0, p0

    #@1b3
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    #@1b5
    move-object/from16 v24, v0

    #@1b7
    move-object/from16 v0, v24

    #@1b9
    move-object/from16 v1, v21

    #@1bb
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@1be
    .line 752
    move-object/from16 v0, p0

    #@1c0
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    #@1c2
    move-object/from16 v24, v0

    #@1c4
    move-object/from16 v0, v24

    #@1c6
    move-object/from16 v1, v17

    #@1c8
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@1cb
    .line 754
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@1ce
    move-result-object v21

    #@1cf
    goto :goto_b

    #@1d0
    .restart local v18    # "nsObj":Ljava/lang/Object;
    :cond_17
    move-object/from16 v17, v18

    #@1d2
    .line 761
    check-cast v17, Lorg/apache/xml/utils/NSInfo;

    #@1d4
    .restart local v17    # "nsInfo":Lorg/apache/xml/utils/NSInfo;
    goto/16 :goto_5

    #@1d6
    .line 781
    .end local v17    # "nsInfo":Lorg/apache/xml/utils/NSInfo;
    .end local v18    # "nsObj":Ljava/lang/Object;
    .end local v22    # "parentType":I
    .restart local v6    # "candidateInfo":Ljava/lang/Object;
    .restart local v9    # "i":I
    .restart local v12    # "nCandidates":I
    :cond_18
    sget-object v24, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    #@1d8
    move-object/from16 v0, v24

    #@1da
    if-ne v6, v0, :cond_c

    #@1dc
    .line 783
    move-object/from16 v0, p0

    #@1de
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    #@1e0
    move-object/from16 v24, v0

    #@1e2
    move-object/from16 v0, p0

    #@1e4
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    #@1e6
    move-object/from16 v25, v0

    #@1e8
    move-object/from16 v0, v25

    #@1ea
    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@1ed
    move-result-object v25

    #@1ee
    .line 784
    sget-object v26, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    #@1f0
    .line 783
    invoke-virtual/range {v24 .. v26}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f3
    goto/16 :goto_7

    #@1f5
    .line 789
    .end local v6    # "candidateInfo":Ljava/lang/Object;
    .end local v9    # "i":I
    :cond_19
    move-object/from16 v0, p0

    #@1f7
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    #@1f9
    move-object/from16 v24, v0

    #@1fb
    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->removeAllElements()V

    #@1fe
    goto/16 :goto_4

    #@200
    .line 802
    .end local v12    # "nCandidates":I
    .end local v21    # "parent":Lorg/w3c/dom/Node;
    :cond_1a
    move-object/from16 v0, p0

    #@202
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    #@204
    move-object/from16 v24, v0

    #@206
    sget-object v25, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    #@208
    move-object/from16 v0, v24

    #@20a
    move-object/from16 v1, p1

    #@20c
    move-object/from16 v2, v25

    #@20e
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@211
    goto/16 :goto_2

    #@213
    .line 806
    :cond_1b
    move-object/from16 v0, p0

    #@215
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    #@217
    move-object/from16 v24, v0

    #@219
    sget-object v25, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    #@21b
    move-object/from16 v0, v24

    #@21d
    move-object/from16 v1, p1

    #@21f
    move-object/from16 v2, v25

    #@221
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@224
    goto/16 :goto_2

    #@226
    .line 811
    :cond_1c
    move-object/from16 v0, p0

    #@228
    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    #@22a
    move-object/from16 v24, v0

    #@22c
    new-instance v25, Lorg/apache/xml/utils/NSInfo;

    #@22e
    move-object/from16 v0, v25

    #@230
    invoke-direct {v0, v14, v13}, Lorg/apache/xml/utils/NSInfo;-><init>(Ljava/lang/String;Z)V

    #@233
    move-object/from16 v0, v24

    #@235
    move-object/from16 v1, p1

    #@237
    move-object/from16 v2, v25

    #@239
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23c
    goto/16 :goto_2
.end method

.method public getRoot(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 925
    const/4 v0, 0x0

    #@1
    .line 927
    :goto_0
    if-eqz p1, :cond_0

    #@3
    .line 929
    move-object v0, p1

    #@4
    .line 930
    .local v0, "root":Lorg/w3c/dom/Node;
    invoke-static {p1}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@7
    move-result-object p1

    #@8
    goto :goto_0

    #@9
    .line 933
    .end local v0    # "root":Lorg/w3c/dom/Node;
    :cond_0
    return-object v0
.end method

.method public getRootNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 956
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@3
    move-result v0

    #@4
    .line 957
    .local v0, "nt":I
    const/16 v1, 0x9

    #@6
    if-eq v1, v0, :cond_0

    #@8
    const/16 v1, 0xb

    #@a
    if-ne v1, v0, :cond_1

    #@c
    .end local p1    # "n":Lorg/w3c/dom/Node;
    :cond_0
    :goto_0
    return-object p1

    #@d
    .line 958
    .restart local p1    # "n":Lorg/w3c/dom/Node;
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@10
    move-result-object p1

    #@11
    goto :goto_0
.end method

.method public getUniqueID(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "N"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "doc"    # Lorg/w3c/dom/Document;

    #@0
    .prologue
    .line 1131
    const-string/jumbo v4, ""

    #@3
    .line 1132
    .local v4, "url":Ljava/lang/String;
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    #@6
    move-result-object v0

    #@7
    .line 1134
    .local v0, "doctype":Lorg/w3c/dom/DocumentType;
    if-eqz v0, :cond_2

    #@9
    .line 1136
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    #@c
    move-result-object v1

    #@d
    .line 1137
    .local v1, "entities":Lorg/w3c/dom/NamedNodeMap;
    if-nez v1, :cond_0

    #@f
    .line 1138
    return-object v4

    #@10
    .line 1139
    :cond_0
    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lorg/w3c/dom/Entity;

    #@16
    .line 1140
    .local v2, "entity":Lorg/w3c/dom/Entity;
    if-nez v2, :cond_1

    #@18
    .line 1141
    return-object v4

    #@19
    .line 1143
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 1145
    .local v3, "notationName":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@1f
    .line 1156
    invoke-interface {v2}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    .line 1158
    if-nez v4, :cond_2

    #@25
    .line 1160
    invoke-interface {v2}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 1170
    .end local v1    # "entities":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "entity":Lorg/w3c/dom/Entity;
    .end local v3    # "notationName":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public isIgnorableWhitespace(Lorg/w3c/dom/Text;)Z
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Text;

    #@0
    .prologue
    .line 903
    const/4 v0, 0x0

    #@1
    .line 911
    .local v0, "isIgnorable":Z
    return v0
.end method

.method public isNamespaceNode(Lorg/w3c/dom/Node;)Z
    .locals 3
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 974
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@3
    move-result v1

    #@4
    const/4 v2, 0x2

    #@5
    if-ne v2, v1, :cond_1

    #@7
    .line 976
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 978
    .local v0, "attrName":Ljava/lang/String;
    const-string/jumbo v1, "xmlns:"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    const-string/jumbo v1, "xmlns"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    :goto_0
    return v1

    #@1c
    :cond_0
    const/4 v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 981
    .end local v0    # "attrName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    #@1f
    return v1
.end method

.method public setDOMFactory(Lorg/w3c/dom/Document;)V
    .locals 0
    .param p1, "domFactory"    # Lorg/w3c/dom/Document;

    #@0
    .prologue
    .line 1242
    iput-object p1, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    #@2
    .line 1240
    return-void
.end method

.method public shouldStripSourceNode(Lorg/w3c/dom/Node;)Z
    .locals 1
    .param p1, "textNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    const/4 v0, 0x0

    #@1
    return v0
.end method
