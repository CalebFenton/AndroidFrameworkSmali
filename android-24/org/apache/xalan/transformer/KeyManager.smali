.class public Lorg/apache/xalan/transformer/KeyManager;
.super Ljava/lang/Object;
.source "KeyManager.java"


# instance fields
.field private transient m_key_tables:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    #@6
    .line 35
    return-void
.end method


# virtual methods
.method public getNodeSetDTMByKey(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XNodeSet;
    .locals 11
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "doc"    # I
    .param p3, "name"    # Lorg/apache/xml/utils/QName;
    .param p4, "ref"    # Lorg/apache/xml/utils/XMLString;
    .param p5, "nscontext"    # Lorg/apache/xml/utils/PrefixResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    const/4 v9, 0x0

    #@1
    .local v9, "nl":Lorg/apache/xpath/objects/XNodeSet;
    move-object/from16 v10, p5

    #@3
    .line 63
    check-cast v10, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@5
    .line 65
    .local v10, "template":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v10, :cond_1

    #@7
    .line 66
    invoke-virtual {v10}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getKeysComposed()Ljava/util/Vector;

    #@e
    move-result-object v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 68
    const/4 v6, 0x0

    #@12
    .line 70
    .local v6, "foundDoc":Z
    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    #@14
    if-nez v1, :cond_2

    #@16
    .line 72
    new-instance v1, Ljava/util/Vector;

    #@18
    const/4 v2, 0x4

    #@19
    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    #@1c
    iput-object v1, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    #@1e
    .line 96
    .end local v9    # "nl":Lorg/apache/xpath/objects/XNodeSet;
    :cond_0
    :goto_0
    if-nez v9, :cond_1

    #@20
    if-eqz v6, :cond_4

    #@22
    .line 113
    .end local v6    # "foundDoc":Z
    :cond_1
    :goto_1
    return-object v9

    #@23
    .line 76
    .restart local v6    # "foundDoc":Z
    .restart local v9    # "nl":Lorg/apache/xpath/objects/XNodeSet;
    :cond_2
    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    #@25
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@28
    move-result v8

    #@29
    .line 78
    .local v8, "nKeyTables":I
    const/4 v7, 0x0

    #@2a
    .end local v9    # "nl":Lorg/apache/xpath/objects/XNodeSet;
    .local v7, "i":I
    :goto_2
    if-ge v7, v8, :cond_0

    #@2c
    .line 80
    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    #@2e
    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Lorg/apache/xalan/transformer/KeyTable;

    #@34
    .line 82
    .local v0, "kt":Lorg/apache/xalan/transformer/KeyTable;
    invoke-virtual {v0}, Lorg/apache/xalan/transformer/KeyTable;->getKeyTableName()Lorg/apache/xml/utils/QName;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, p3}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_3

    #@3e
    invoke-virtual {v0}, Lorg/apache/xalan/transformer/KeyTable;->getDocKey()I

    #@41
    move-result v1

    #@42
    if-ne p2, v1, :cond_3

    #@44
    .line 84
    invoke-virtual {v0, p3, p4}, Lorg/apache/xalan/transformer/KeyTable;->getNodeSetDTMByKey(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;)Lorg/apache/xpath/objects/XNodeSet;

    #@47
    move-result-object v9

    #@48
    .line 86
    .local v9, "nl":Lorg/apache/xpath/objects/XNodeSet;
    if-eqz v9, :cond_3

    #@4a
    .line 88
    const/4 v6, 0x1

    #@4b
    .line 90
    goto :goto_0

    #@4c
    .line 78
    .end local v9    # "nl":Lorg/apache/xpath/objects/XNodeSet;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@4e
    goto :goto_2

    #@4f
    .line 99
    .end local v0    # "kt":Lorg/apache/xalan/transformer/KeyTable;
    .end local v7    # "i":I
    .end local v8    # "nKeyTables":I
    :cond_4
    new-instance v0, Lorg/apache/xalan/transformer/KeyTable;

    #@51
    .line 100
    invoke-virtual {v10}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getKeysComposed()Ljava/util/Vector;

    #@58
    move-result-object v4

    #@59
    move v1, p2

    #@5a
    move-object/from16 v2, p5

    #@5c
    move-object v3, p3

    #@5d
    move-object v5, p1

    #@5e
    .line 99
    invoke-direct/range {v0 .. v5}, Lorg/apache/xalan/transformer/KeyTable;-><init>(ILorg/apache/xml/utils/PrefixResolver;Lorg/apache/xml/utils/QName;Ljava/util/Vector;Lorg/apache/xpath/XPathContext;)V

    #@61
    .line 103
    .restart local v0    # "kt":Lorg/apache/xalan/transformer/KeyTable;
    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    #@63
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@66
    .line 105
    invoke-virtual {v0}, Lorg/apache/xalan/transformer/KeyTable;->getDocKey()I

    #@69
    move-result v1

    #@6a
    if-ne p2, v1, :cond_1

    #@6c
    .line 107
    const/4 v6, 0x1

    #@6d
    .line 108
    invoke-virtual {v0, p3, p4}, Lorg/apache/xalan/transformer/KeyTable;->getNodeSetDTMByKey(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;)Lorg/apache/xpath/objects/XNodeSet;

    #@70
    move-result-object v9

    #@71
    .restart local v9    # "nl":Lorg/apache/xpath/objects/XNodeSet;
    goto :goto_1
.end method
