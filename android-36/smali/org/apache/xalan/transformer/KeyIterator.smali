.class public Lorg/apache/xalan/transformer/KeyIterator;
.super Lorg/apache/xpath/axes/OneStepIteratorForward;
.source "KeyIterator.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x12b90050ba7c0c3dL


# instance fields
.field private greylist m_keyDeclarations:Ljava/util/Vector;

.field private greylist m_name:Lorg/apache/xml/utils/QName;


# direct methods
.method constructor greylist <init>(Lorg/apache/xml/utils/QName;Ljava/util/Vector;)V
    .registers 4

    const/16 v0, 0x10

    .line 83
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/OneStepIteratorForward;-><init>(I)V

    .line 84
    iput-object p2, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_keyDeclarations:Ljava/util/Vector;

    .line 86
    iput-object p1, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_name:Lorg/apache/xml/utils/QName;

    return-void
.end method


# virtual methods
.method public greylist acceptNode(I)S
    .registers 12

    .line 103
    iget-object p0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    check-cast p0, Lorg/apache/xalan/transformer/KeyIterator;

    .line 104
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/KeyIterator;->getKeyDeclarations()Ljava/util/Vector;

    move-result-object v1

    .line 107
    invoke-virtual {p0}, Lorg/apache/xalan/transformer/KeyIterator;->getName()Lorg/apache/xml/utils/QName;

    move-result-object p0

    const/4 v2, 0x0

    .line 111
    :try_start_11
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3
    :try_end_15
    .catch Ljavax/xml/transform/TransformerException; {:try_start_11 .. :try_end_15} :catch_40

    move v4, v2

    :goto_16
    if-ge v2, v3, :cond_41

    .line 116
    :try_start_18
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xalan/templates/KeyDeclaration;

    .line 120
    invoke-virtual {v5}, Lorg/apache/xalan/templates/KeyDeclaration;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v6

    invoke-virtual {v6, p0}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    goto :goto_3b

    :cond_29
    const/4 v4, 0x1

    .line 128
    invoke-virtual {v5}, Lorg/apache/xalan/templates/KeyDeclaration;->getMatch()Lorg/apache/xpath/XPath;

    move-result-object v6

    .line 129
    invoke-virtual {v6, v0, p1}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v6

    .line 131
    invoke-virtual {v5}, Lorg/apache/xalan/templates/KeyDeclaration;->getMatch()Lorg/apache/xpath/XPath;
    :try_end_35
    .catch Ljavax/xml/transform/TransformerException; {:try_start_18 .. :try_end_35} :catch_3f

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v5, v6, v8

    if-nez v5, :cond_3e

    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_3e
    return v4

    :catch_3f
    move v2, v4

    :catch_40
    move v4, v2

    :cond_41
    if-eqz v4, :cond_45

    const/4 p0, 0x2

    return p0

    .line 145
    :cond_45
    new-instance p1, Ljava/lang/RuntimeException;

    .line 148
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 146
    const-string v0, "ER_NO_XSLKEY_DECLARATION"

    invoke-static {v0, p0}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist getKeyDeclarations()Ljava/util/Vector;
    .registers 1

    .line 73
    iget-object p0, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_keyDeclarations:Ljava/util/Vector;

    return-object p0
.end method

.method public greylist getName()Lorg/apache/xml/utils/QName;
    .registers 1

    .line 58
    iget-object p0, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_name:Lorg/apache/xml/utils/QName;

    return-object p0
.end method
