.class public Lorg/apache/xml/utils/TreeWalker;
.super Ljava/lang/Object;
.source "TreeWalker.java"


# instance fields
.field private m_contentHandler:Lorg/xml/sax/ContentHandler;

.field protected m_dh:Lorg/apache/xml/utils/DOMHelper;

.field private m_locator:Lorg/xml/sax/helpers/LocatorImpl;

.field nextIsRaw:Z


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 4
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 48
    iput-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    .line 57
    new-instance v1, Lorg/xml/sax/helpers/LocatorImpl;

    #@8
    invoke-direct {v1}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    #@b
    iput-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@d
    .line 262
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    #@10
    .line 127
    iput-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@12
    .line 128
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 129
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@18
    iget-object v2, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@1a
    invoke-interface {v1, v2}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    #@1d
    .line 132
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "user.dir"

    #@27
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    const-string/jumbo v3, "dummy.xsl"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 137
    :goto_0
    new-instance v1, Lorg/apache/xml/utils/DOM2Helper;

    #@45
    invoke-direct {v1}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    #@48
    iput-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    #@4a
    .line 125
    return-void

    #@4b
    .line 134
    :catch_0
    move-exception v0

    #@4c
    .local v0, "se":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;)V
    .locals 4
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "dh"    # Lorg/apache/xml/utils/DOMHelper;

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    const/4 v1, 0x0

    #@4
    iput-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    .line 57
    new-instance v1, Lorg/xml/sax/helpers/LocatorImpl;

    #@8
    invoke-direct {v1}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    #@b
    iput-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@d
    .line 262
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    #@10
    .line 109
    iput-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@12
    .line 110
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@14
    iget-object v2, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@16
    invoke-interface {v1, v2}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    #@19
    .line 113
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "user.dir"

    #@23
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    const-string/jumbo v3, "dummy.xsl"

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 117
    :goto_0
    iput-object p2, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    #@41
    .line 107
    return-void

    #@42
    .line 115
    :catch_0
    move-exception v0

    #@43
    .local v0, "se":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V
    .locals 4
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "dh"    # Lorg/apache/xml/utils/DOMHelper;
    .param p3, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 48
    iput-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@6
    .line 57
    new-instance v1, Lorg/xml/sax/helpers/LocatorImpl;

    #@8
    invoke-direct {v1}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    #@b
    iput-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@d
    .line 262
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    #@10
    .line 87
    iput-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@12
    .line 88
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@14
    iget-object v2, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@16
    invoke-interface {v1, v2}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    #@19
    .line 89
    if-eqz p3, :cond_0

    #@1b
    .line 90
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@1d
    invoke-virtual {v1, p3}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    #@20
    .line 99
    :goto_0
    iput-object p2, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    #@22
    .line 85
    return-void

    #@23
    .line 94
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@25
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v3, "user.dir"

    #@2d
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    const-string/jumbo v3, "dummy.xsl"

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    goto :goto_0

    #@4a
    .line 96
    :catch_0
    move-exception v0

    #@4b
    .local v0, "se":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private final dispatachChars(Lorg/w3c/dom/Node;)V
    .locals 5
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 270
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    instance-of v1, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 272
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@8
    check-cast v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    #@a
    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;->characters(Lorg/w3c/dom/Node;)V

    #@d
    .line 268
    .end local p1    # "node":Lorg/w3c/dom/Node;
    :goto_0
    return-void

    #@e
    .line 276
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_0
    check-cast p1, Lorg/w3c/dom/Text;

    #@10
    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 277
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@16
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1d
    move-result v3

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-interface {v1, v2, v4, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@22
    goto :goto_0
.end method


# virtual methods
.method protected endNode(Lorg/w3c/dom/Node;)V
    .locals 13
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 456
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@3
    move-result v10

    #@4
    packed-switch v10, :pswitch_data_0

    #@7
    .line 453
    .end local p1    # "node":Lorg/w3c/dom/Node;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 462
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_1
    iget-object v10, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    #@a
    invoke-virtual {v10, p1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@d
    move-result-object v8

    #@e
    .line 463
    .local v8, "ns":Ljava/lang/String;
    if-nez v8, :cond_1

    #@10
    .line 464
    const-string/jumbo v8, ""

    #@13
    .line 465
    :cond_1
    iget-object v10, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@15
    .line 466
    iget-object v11, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    #@17
    invoke-virtual {v11, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@1a
    move-result-object v11

    #@1b
    .line 467
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@1e
    move-result-object v12

    #@1f
    .line 465
    invoke-interface {v10, v8, v11, v12}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 469
    check-cast p1, Lorg/w3c/dom/Element;

    #@24
    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@27
    move-result-object v2

    #@28
    .line 470
    .local v2, "atts":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@2b
    move-result v7

    #@2c
    .line 472
    .local v7, "nAttrs":I
    const/4 v4, 0x0

    #@2d
    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_0

    #@2f
    .line 474
    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@32
    move-result-object v0

    #@33
    .line 475
    .local v0, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 477
    .local v1, "attrName":Ljava/lang/String;
    const-string/jumbo v10, "xmlns"

    #@3a
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v10

    #@3e
    if-nez v10, :cond_2

    #@40
    const-string/jumbo v10, "xmlns:"

    #@43
    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@46
    move-result v10

    #@47
    if-eqz v10, :cond_3

    #@49
    .line 483
    :cond_2
    const-string/jumbo v10, ":"

    #@4c
    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@4f
    move-result v5

    #@50
    .local v5, "index":I
    if-gez v5, :cond_4

    #@52
    .line 484
    const-string/jumbo v9, ""

    #@55
    .line 486
    .local v9, "prefix":Ljava/lang/String;
    :goto_2
    iget-object v10, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@57
    invoke-interface {v10, v9}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    #@5a
    .line 472
    .end local v5    # "index":I
    .end local v9    # "prefix":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 484
    .restart local v5    # "index":I
    :cond_4
    add-int/lit8 v10, v5, 0x1

    #@5f
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@62
    move-result-object v9

    #@63
    .restart local v9    # "prefix":Ljava/lang/String;
    goto :goto_2

    #@64
    .end local v0    # "attr":Lorg/w3c/dom/Node;
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v2    # "atts":Lorg/w3c/dom/NamedNodeMap;
    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v7    # "nAttrs":I
    .end local v8    # "ns":Ljava/lang/String;
    .end local v9    # "prefix":Ljava/lang/String;
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_2
    move-object v3, p1

    #@65
    .line 494
    check-cast v3, Lorg/w3c/dom/EntityReference;

    #@67
    .line 496
    .local v3, "eref":Lorg/w3c/dom/EntityReference;
    iget-object v10, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@69
    instance-of v10, v10, Lorg/xml/sax/ext/LexicalHandler;

    #@6b
    if-eqz v10, :cond_0

    #@6d
    .line 498
    iget-object v6, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@6f
    check-cast v6, Lorg/xml/sax/ext/LexicalHandler;

    #@71
    .line 500
    .local v6, "lh":Lorg/xml/sax/ext/LexicalHandler;
    invoke-interface {v3}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    #@74
    move-result-object v10

    #@75
    invoke-interface {v6, v10}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    #@78
    goto :goto_0

    #@79
    .line 456
    nop

    #@7a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    return-object v0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;

    #@0
    .prologue
    .line 76
    iput-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    .line 74
    return-void
.end method

.method protected startNode(Lorg/w3c/dom/Node;)V
    .locals 25
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 292
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@4
    move-object/from16 v20, v0

    #@6
    move-object/from16 v0, v20

    #@8
    instance-of v0, v0, Lorg/apache/xml/utils/NodeConsumer;

    #@a
    move/from16 v20, v0

    #@c
    if-eqz v20, :cond_0

    #@e
    .line 294
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@12
    move-object/from16 v20, v0

    #@14
    check-cast v20, Lorg/apache/xml/utils/NodeConsumer;

    #@16
    move-object/from16 v0, v20

    #@18
    move-object/from16 v1, p1

    #@1a
    invoke-interface {v0, v1}, Lorg/apache/xml/utils/NodeConsumer;->setOriginatingNode(Lorg/w3c/dom/Node;)V

    #@1d
    .line 297
    :cond_0
    move-object/from16 v0, p1

    #@1f
    instance-of v0, v0, Lorg/xml/sax/Locator;

    #@21
    move/from16 v20, v0

    #@23
    if-eqz v20, :cond_2

    #@25
    move-object/from16 v14, p1

    #@27
    .line 299
    check-cast v14, Lorg/xml/sax/Locator;

    #@29
    .line 300
    .local v14, "loc":Lorg/xml/sax/Locator;
    move-object/from16 v0, p0

    #@2b
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@2d
    move-object/from16 v20, v0

    #@2f
    invoke-interface {v14}, Lorg/xml/sax/Locator;->getColumnNumber()I

    #@32
    move-result v21

    #@33
    invoke-virtual/range {v20 .. v21}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    #@36
    .line 301
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@3a
    move-object/from16 v20, v0

    #@3c
    invoke-interface {v14}, Lorg/xml/sax/Locator;->getLineNumber()I

    #@3f
    move-result v21

    #@40
    invoke-virtual/range {v20 .. v21}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    #@43
    .line 302
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@47
    move-object/from16 v20, v0

    #@49
    invoke-interface {v14}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    #@4c
    move-result-object v21

    #@4d
    invoke-virtual/range {v20 .. v21}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    #@50
    .line 303
    move-object/from16 v0, p0

    #@52
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@54
    move-object/from16 v20, v0

    #@56
    invoke-interface {v14}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    #@59
    move-result-object v21

    #@5a
    invoke-virtual/range {v20 .. v21}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    #@5d
    .line 311
    .end local v14    # "loc":Lorg/xml/sax/Locator;
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@60
    move-result v20

    #@61
    packed-switch v20, :pswitch_data_0

    #@64
    .line 289
    .end local p1    # "node":Lorg/w3c/dom/Node;
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    #@65
    .line 307
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_2
    move-object/from16 v0, p0

    #@67
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@69
    move-object/from16 v20, v0

    #@6b
    const/16 v21, 0x0

    #@6d
    invoke-virtual/range {v20 .. v21}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    #@70
    .line 308
    move-object/from16 v0, p0

    #@72
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    #@74
    move-object/from16 v20, v0

    #@76
    const/16 v21, 0x0

    #@78
    invoke-virtual/range {v20 .. v21}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    #@7b
    goto :goto_0

    #@7c
    .line 315
    :pswitch_1
    check-cast p1, Lorg/w3c/dom/Comment;

    #@7e
    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    #@81
    move-result-object v8

    #@82
    .line 317
    .local v8, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@86
    move-object/from16 v20, v0

    #@88
    move-object/from16 v0, v20

    #@8a
    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    #@8c
    move/from16 v20, v0

    #@8e
    if-eqz v20, :cond_1

    #@90
    .line 319
    move-object/from16 v0, p0

    #@92
    iget-object v13, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@94
    check-cast v13, Lorg/xml/sax/ext/LexicalHandler;

    #@96
    .line 321
    .local v13, "lh":Lorg/xml/sax/ext/LexicalHandler;
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    #@99
    move-result-object v20

    #@9a
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@9d
    move-result v21

    #@9e
    const/16 v22, 0x0

    #@a0
    move-object/from16 v0, v20

    #@a2
    move/from16 v1, v22

    #@a4
    move/from16 v2, v21

    #@a6
    invoke-interface {v13, v0, v1, v2}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    #@a9
    goto :goto_1

    #@aa
    .end local v8    # "data":Ljava/lang/String;
    .end local v13    # "lh":Lorg/xml/sax/ext/LexicalHandler;
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_2
    move-object/from16 v20, p1

    #@ac
    .line 333
    check-cast v20, Lorg/w3c/dom/Element;

    #@ae
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@b1
    move-result-object v7

    #@b2
    .line 334
    .local v7, "atts":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@b5
    move-result v15

    #@b6
    .line 337
    .local v15, "nAttrs":I
    const/4 v10, 0x0

    #@b7
    .local v10, "i":I
    :goto_2
    if-ge v10, v15, :cond_6

    #@b9
    .line 339
    invoke-interface {v7, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@bc
    move-result-object v5

    #@bd
    .line 340
    .local v5, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@c0
    move-result-object v6

    #@c1
    .line 343
    .local v6, "attrName":Ljava/lang/String;
    const-string/jumbo v20, "xmlns"

    #@c4
    move-object/from16 v0, v20

    #@c6
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c9
    move-result v20

    #@ca
    if-nez v20, :cond_3

    #@cc
    const-string/jumbo v20, "xmlns:"

    #@cf
    move-object/from16 v0, v20

    #@d1
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d4
    move-result v20

    #@d5
    if-eqz v20, :cond_4

    #@d7
    .line 350
    :cond_3
    const-string/jumbo v20, ":"

    #@da
    move-object/from16 v0, v20

    #@dc
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@df
    move-result v11

    #@e0
    .local v11, "index":I
    if-gez v11, :cond_5

    #@e2
    .line 351
    const-string/jumbo v19, ""

    #@e5
    .line 353
    .local v19, "prefix":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    #@e7
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@e9
    move-object/from16 v20, v0

    #@eb
    .line 354
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@ee
    move-result-object v21

    #@ef
    .line 353
    move-object/from16 v0, v20

    #@f1
    move-object/from16 v1, v19

    #@f3
    move-object/from16 v2, v21

    #@f5
    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@f8
    .line 337
    .end local v11    # "index":I
    .end local v19    # "prefix":Ljava/lang/String;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    #@fa
    goto :goto_2

    #@fb
    .line 351
    .restart local v11    # "index":I
    :cond_5
    add-int/lit8 v20, v11, 0x1

    #@fd
    move/from16 v0, v20

    #@ff
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@102
    move-result-object v19

    #@103
    .restart local v19    # "prefix":Ljava/lang/String;
    goto :goto_3

    #@104
    .line 361
    .end local v5    # "attr":Lorg/w3c/dom/Node;
    .end local v6    # "attrName":Ljava/lang/String;
    .end local v11    # "index":I
    .end local v19    # "prefix":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    #@106
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    #@108
    move-object/from16 v20, v0

    #@10a
    move-object/from16 v0, v20

    #@10c
    move-object/from16 v1, p1

    #@10e
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@111
    move-result-object v17

    #@112
    .line 362
    .local v17, "ns":Ljava/lang/String;
    if-nez v17, :cond_7

    #@114
    .line 363
    const-string/jumbo v17, ""

    #@117
    .line 364
    :cond_7
    move-object/from16 v0, p0

    #@119
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@11b
    move-object/from16 v20, v0

    #@11d
    .line 365
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    #@121
    move-object/from16 v21, v0

    #@123
    move-object/from16 v0, v21

    #@125
    move-object/from16 v1, p1

    #@127
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@12a
    move-result-object v21

    #@12b
    .line 366
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@12e
    move-result-object v22

    #@12f
    .line 367
    new-instance v23, Lorg/apache/xml/utils/AttList;

    #@131
    move-object/from16 v0, p0

    #@133
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    #@135
    move-object/from16 v24, v0

    #@137
    move-object/from16 v0, v23

    #@139
    move-object/from16 v1, v24

    #@13b
    invoke-direct {v0, v7, v1}, Lorg/apache/xml/utils/AttList;-><init>(Lorg/w3c/dom/NamedNodeMap;Lorg/apache/xml/utils/DOMHelper;)V

    #@13e
    .line 364
    move-object/from16 v0, v20

    #@140
    move-object/from16 v1, v17

    #@142
    move-object/from16 v2, v21

    #@144
    move-object/from16 v3, v22

    #@146
    move-object/from16 v4, v23

    #@148
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@14b
    goto/16 :goto_1

    #@14d
    .end local v7    # "atts":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "i":I
    .end local v15    # "nAttrs":I
    .end local v17    # "ns":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v18, p1

    #@14f
    .line 371
    check-cast v18, Lorg/w3c/dom/ProcessingInstruction;

    #@151
    .line 372
    .local v18, "pi":Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    #@154
    move-result-object v16

    #@155
    .line 375
    .local v16, "name":Ljava/lang/String;
    const-string/jumbo v20, "xslt-next-is-raw"

    #@158
    move-object/from16 v0, v16

    #@15a
    move-object/from16 v1, v20

    #@15c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15f
    move-result v20

    #@160
    if-eqz v20, :cond_8

    #@162
    .line 377
    const/16 v20, 0x1

    #@164
    move/from16 v0, v20

    #@166
    move-object/from16 v1, p0

    #@168
    iput-boolean v0, v1, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    #@16a
    goto/16 :goto_1

    #@16c
    .line 381
    :cond_8
    move-object/from16 v0, p0

    #@16e
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@170
    move-object/from16 v20, v0

    #@172
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    #@175
    move-result-object v21

    #@176
    .line 382
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    #@179
    move-result-object v22

    #@17a
    .line 381
    invoke-interface/range {v20 .. v22}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@17d
    goto/16 :goto_1

    #@17f
    .line 388
    .end local v16    # "name":Ljava/lang/String;
    .end local v18    # "pi":Lorg/w3c/dom/ProcessingInstruction;
    :pswitch_4
    move-object/from16 v0, p0

    #@181
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@183
    move-object/from16 v20, v0

    #@185
    move-object/from16 v0, v20

    #@187
    instance-of v12, v0, Lorg/xml/sax/ext/LexicalHandler;

    #@189
    .line 389
    .local v12, "isLexH":Z
    if-eqz v12, :cond_a

    #@18b
    .line 390
    move-object/from16 v0, p0

    #@18d
    iget-object v13, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@18f
    check-cast v13, Lorg/xml/sax/ext/LexicalHandler;

    #@191
    .line 392
    :goto_4
    if-eqz v12, :cond_9

    #@193
    .line 394
    invoke-interface {v13}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    #@196
    .line 397
    :cond_9
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/utils/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    #@199
    .line 400
    if-eqz v12, :cond_1

    #@19b
    .line 402
    invoke-interface {v13}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    #@19e
    goto/16 :goto_1

    #@1a0
    .line 390
    :cond_a
    const/4 v13, 0x0

    #@1a1
    .local v13, "lh":Lorg/xml/sax/ext/LexicalHandler;
    goto :goto_4

    #@1a2
    .line 411
    .end local v12    # "isLexH":Z
    .end local v13    # "lh":Lorg/xml/sax/ext/LexicalHandler;
    :pswitch_5
    move-object/from16 v0, p0

    #@1a4
    iget-boolean v0, v0, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    #@1a6
    move/from16 v20, v0

    #@1a8
    if-eqz v20, :cond_b

    #@1aa
    .line 413
    const/16 v20, 0x0

    #@1ac
    move/from16 v0, v20

    #@1ae
    move-object/from16 v1, p0

    #@1b0
    iput-boolean v0, v1, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    #@1b2
    .line 415
    move-object/from16 v0, p0

    #@1b4
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@1b6
    move-object/from16 v20, v0

    #@1b8
    const-string/jumbo v21, "javax.xml.transform.disable-output-escaping"

    #@1bb
    const-string/jumbo v22, ""

    #@1be
    invoke-interface/range {v20 .. v22}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@1c1
    .line 416
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/utils/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    #@1c4
    .line 417
    move-object/from16 v0, p0

    #@1c6
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@1c8
    move-object/from16 v20, v0

    #@1ca
    const-string/jumbo v21, "javax.xml.transform.enable-output-escaping"

    #@1cd
    const-string/jumbo v22, ""

    #@1d0
    invoke-interface/range {v20 .. v22}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@1d3
    goto/16 :goto_1

    #@1d5
    .line 421
    :cond_b
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/utils/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    #@1d8
    goto/16 :goto_1

    #@1da
    :pswitch_6
    move-object/from16 v9, p1

    #@1dc
    .line 427
    check-cast v9, Lorg/w3c/dom/EntityReference;

    #@1de
    .line 429
    .local v9, "eref":Lorg/w3c/dom/EntityReference;
    move-object/from16 v0, p0

    #@1e0
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@1e2
    move-object/from16 v20, v0

    #@1e4
    move-object/from16 v0, v20

    #@1e6
    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    #@1e8
    move/from16 v20, v0

    #@1ea
    if-eqz v20, :cond_1

    #@1ec
    .line 431
    move-object/from16 v0, p0

    #@1ee
    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@1f0
    move-object/from16 v20, v0

    #@1f2
    check-cast v20, Lorg/xml/sax/ext/LexicalHandler;

    #@1f4
    .line 432
    invoke-interface {v9}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    #@1f7
    move-result-object v21

    #@1f8
    .line 431
    invoke-interface/range {v20 .. v21}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    #@1fb
    goto/16 :goto_1

    #@1fd
    .line 311
    nop

    #@1fe
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public traverse(Lorg/w3c/dom/Node;)V
    .locals 1
    .param p1, "pos"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    #@5
    .line 156
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->traverseFragment(Lorg/w3c/dom/Node;)V

    #@8
    .line 158
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@a
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    #@d
    .line 152
    return-void
.end method

.method public traverse(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "pos"    # Lorg/w3c/dom/Node;
    .param p2, "top"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@2
    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    #@5
    .line 228
    :goto_0
    if-eqz p1, :cond_4

    #@7
    .line 230
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    #@a
    .line 232
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    #@d
    move-result-object v0

    #@e
    .line 234
    .local v0, "nextNode":Lorg/w3c/dom/Node;
    :cond_0
    if-nez v0, :cond_1

    #@10
    .line 236
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    #@13
    .line 238
    if-eqz p2, :cond_2

    #@15
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 256
    .end local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_1
    :goto_1
    move-object p1, v0

    #@1c
    goto :goto_0

    #@1d
    .line 241
    .restart local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@20
    move-result-object v0

    #@21
    .line 243
    if-nez v0, :cond_0

    #@23
    .line 245
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@26
    move-result-object p1

    #@27
    .line 247
    if-eqz p1, :cond_3

    #@29
    if-eqz p2, :cond_0

    #@2b
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_0

    #@31
    .line 249
    :cond_3
    const/4 v0, 0x0

    #@32
    .line 251
    .local v0, "nextNode":Lorg/w3c/dom/Node;
    goto :goto_1

    #@33
    .line 258
    .end local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_4
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    #@35
    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    #@38
    .line 223
    return-void
.end method

.method public traverseFragment(Lorg/w3c/dom/Node;)V
    .locals 3
    .param p1, "pos"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    move-object v1, p1

    #@1
    .line 175
    .local v1, "top":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz p1, :cond_5

    #@3
    .line 177
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    #@6
    .line 179
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    #@9
    move-result-object v0

    #@a
    .line 181
    .local v0, "nextNode":Lorg/w3c/dom/Node;
    :cond_0
    if-nez v0, :cond_1

    #@c
    .line 183
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    #@f
    .line 185
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_2

    #@15
    .line 206
    .end local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_1
    :goto_1
    move-object p1, v0

    #@16
    goto :goto_0

    #@17
    .line 188
    .restart local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@1a
    move-result-object v0

    #@1b
    .line 190
    if-nez v0, :cond_0

    #@1d
    .line 192
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@20
    move-result-object p1

    #@21
    .line 194
    if-eqz p1, :cond_3

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_0

    #@29
    .line 196
    :cond_3
    if-eqz p1, :cond_4

    #@2b
    .line 197
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    #@2e
    .line 199
    :cond_4
    const/4 v0, 0x0

    #@2f
    .line 201
    .local v0, "nextNode":Lorg/w3c/dom/Node;
    goto :goto_1

    #@30
    .line 171
    .end local v0    # "nextNode":Lorg/w3c/dom/Node;
    :cond_5
    return-void
.end method
