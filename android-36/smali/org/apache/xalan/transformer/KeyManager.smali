.class public Lorg/apache/xalan/transformer/KeyManager;
.super Ljava/lang/Object;
.source "KeyManager.java"


# instance fields
.field private transient greylist m_key_tables:Ljava/util/Vector;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public greylist getNodeSetDTMByKey(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XNodeSet;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 63
    move-object v0, p5

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_6d

    .line 66
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot;->getKeysComposed()Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 70
    iget-object v2, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    const/4 v3, 0x0

    if-nez v2, :cond_1e

    .line 72
    new-instance v2, Ljava/util/Vector;

    const/4 v4, 0x4

    invoke-direct {v2, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    goto :goto_48

    .line 76
    :cond_1e
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    move v4, v3

    :goto_23
    if-ge v4, v2, :cond_48

    .line 80
    iget-object v5, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xalan/transformer/KeyTable;

    .line 82
    invoke-virtual {v5}, Lorg/apache/xalan/transformer/KeyTable;->getKeyTableName()Lorg/apache/xml/utils/QName;

    move-result-object v6

    invoke-virtual {v6, p3}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-virtual {v5}, Lorg/apache/xalan/transformer/KeyTable;->getDocKey()I

    move-result v6

    if-ne p2, v6, :cond_45

    .line 84
    invoke-virtual {v5, p3, p4}, Lorg/apache/xalan/transformer/KeyTable;->getNodeSetDTMByKey(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object v1

    if-eqz v1, :cond_45

    const/4 v3, 0x1

    goto :goto_48

    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_48
    :goto_48
    if-nez v1, :cond_6d

    if-nez v3, :cond_6d

    .line 98
    new-instance v4, Lorg/apache/xalan/transformer/KeyTable;

    .line 100
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getKeysComposed()Ljava/util/Vector;

    move-result-object v8

    move-object v9, p1

    move v5, p2

    move-object v7, p3

    move-object v6, p5

    invoke-direct/range {v4 .. v9}, Lorg/apache/xalan/transformer/KeyTable;-><init>(ILorg/apache/xml/utils/PrefixResolver;Lorg/apache/xml/utils/QName;Ljava/util/Vector;Lorg/apache/xpath/XPathContext;)V

    .line 103
    iget-object p0, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    invoke-virtual {p0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v4}, Lorg/apache/xalan/transformer/KeyTable;->getDocKey()I

    move-result p0

    if-ne v5, p0, :cond_6d

    .line 108
    invoke-virtual {v4, v7, p4}, Lorg/apache/xalan/transformer/KeyTable;->getNodeSetDTMByKey(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object p0

    return-object p0

    :cond_6d
    return-object v1
.end method
