.class public Lorg/apache/xalan/templates/FuncKey;
.super Lorg/apache/xpath/functions/Function2Args;
.source "FuncKey.java"


# static fields
.field private static greylist ISTRUE:Ljava/lang/Boolean; = null

.field static final whitelist serialVersionUID:J = 0x7e23a7eadbc8c78cL


# direct methods
.method static constructor greylist <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lorg/apache/xalan/templates/FuncKey;->ISTRUE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/transformer/TransformerImpl;

    .line 62
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    .line 63
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    .line 64
    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getDocumentRoot(I)I

    move-result v5

    .line 72
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FunctionOneArg;->getArg0()Lorg/apache/xpath/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v1

    .line 73
    new-instance v6, Lorg/apache/xml/utils/QName;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v2

    invoke-direct {v6, v1, v2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    .line 74
    invoke-virtual {p0}, Lorg/apache/xpath/functions/Function2Args;->getArg1()Lorg/apache/xpath/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x4

    if-ne v7, v2, :cond_3a

    move v2, v4

    goto :goto_3b

    :cond_3a
    move v2, v3

    .line 76
    :goto_3b
    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getKeyManager()Lorg/apache/xalan/transformer/KeyManager;

    move-result-object v0

    if-eqz v2, :cond_4e

    .line 81
    move-object v7, v1

    check-cast v7, Lorg/apache/xpath/objects/XNodeSet;

    .line 82
    invoke-virtual {v7, v4}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    .line 83
    invoke-virtual {v7}, Lorg/apache/xpath/axes/NodeSequence;->getLength()I

    move-result v7

    if-gt v7, v4, :cond_4e

    goto :goto_4f

    :cond_4e
    move v3, v2

    :goto_4f
    if-eqz v3, :cond_aa

    .line 91
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    .line 93
    new-instance v2, Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-direct {v2}, Lorg/apache/xpath/axes/UnionPathIterator;-><init>()V

    .line 94
    invoke-virtual {v2, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    const/4 p0, 0x0

    .line 96
    :goto_5e
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v3

    const/4 v4, -0x1

    if-eq v4, v3, :cond_9c

    .line 98
    invoke-virtual {p1, v3}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v4

    .line 99
    invoke-interface {v4, v3}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v7

    if-nez v7, :cond_70

    goto :goto_5e

    :cond_70
    if-nez p0, :cond_77

    .line 105
    new-instance p0, Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 107
    :cond_77
    invoke-virtual {p0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_80

    move-object v4, p1

    move-object v3, v0

    goto :goto_99

    .line 115
    :cond_80
    sget-object v3, Lorg/apache/xalan/templates/FuncKey;->ISTRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v7, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v8

    move-object v4, p1

    move-object v3, v0

    .line 119
    invoke-virtual/range {v3 .. v8}, Lorg/apache/xalan/transformer/KeyManager;->getNodeSetDTMByKey(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object p1

    .line 122
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p1, v0, v4}, Lorg/apache/xpath/axes/NodeSequence;->setRoot(ILjava/lang/Object;)V

    .line 126
    invoke-virtual {v2, p1}, Lorg/apache/xpath/axes/UnionPathIterator;->addIterator(Lorg/apache/xml/dtm/DTMIterator;)V

    :goto_99
    move-object v0, v3

    move-object p1, v4

    goto :goto_5e

    :cond_9c
    move-object v4, p1

    .line 135
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result p0

    .line 136
    invoke-virtual {v2, p0, v4}, Lorg/apache/xpath/axes/UnionPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 138
    new-instance p0, Lorg/apache/xpath/objects/XNodeSet;

    invoke-direct {p0, v2}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    return-object p0

    :cond_aa
    move-object v4, p1

    move-object v3, v0

    .line 142
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v7

    .line 145
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v8

    .line 143
    invoke-virtual/range {v3 .. v8}, Lorg/apache/xalan/transformer/KeyManager;->getNodeSetDTMByKey(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object p0

    .line 146
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result p1

    invoke-virtual {p0, p1, v4}, Lorg/apache/xpath/axes/NodeSequence;->setRoot(ILjava/lang/Object;)V

    return-object p0
.end method
