.class public Lorg/apache/xpath/functions/FuncId;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncId.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x7befc5b4bc56b5ceL


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method

.method private greylist getNodesByID(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Lorg/apache/xml/utils/StringVector;Lorg/apache/xpath/NodeSetDTM;Z)Lorg/apache/xml/utils/StringVector;
    .registers 10

    if-eqz p3, :cond_3e

    .line 64
    new-instance p0, Ljava/util/StringTokenizer;

    invoke-direct {p0, p3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p3

    .line 66
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p2

    :goto_f
    if-eqz p3, :cond_3e

    .line 70
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p3

    .line 71
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz p4, :cond_23

    .line 73
    invoke-virtual {p4, p3}, Lorg/apache/xml/utils/StringVector;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_21
    :goto_21
    move p3, v0

    goto :goto_f

    .line 80
    :cond_23
    invoke-interface {p2, p3}, Lorg/apache/xml/dtm/DTM;->getElementById(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_2d

    .line 83
    invoke-virtual {p5, v1, p1}, Lorg/apache/xpath/NodeSetDTM;->addNodeInDocOrder(ILorg/apache/xpath/XPathContext;)I

    :cond_2d
    if-eqz p3, :cond_21

    if-nez v0, :cond_33

    if-eqz p6, :cond_21

    :cond_33
    if-nez p4, :cond_3a

    .line 88
    new-instance p4, Lorg/apache/xml/utils/StringVector;

    invoke-direct {p4}, Lorg/apache/xml/utils/StringVector;-><init>()V

    .line 90
    :cond_3a
    invoke-virtual {p4, p3}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    goto :goto_21

    :cond_3e
    return-object p4
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 110
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v3

    const/4 v0, 0x0

    const/4 v8, -0x1

    if-ne v8, v3, :cond_15

    .line 114
    const-string v1, "ER_CONTEXT_HAS_NO_OWNERDOC"

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/xpath/Expression;->error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_15
    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v1, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v2

    .line 118
    new-instance v9, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v4

    invoke-direct {v9, v4}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    .line 119
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XNodeSet;->mutableNodeset()Lorg/apache/xpath/NodeSetDTM;

    move-result-object v6

    const/4 v4, 0x4

    if-ne v4, v2, :cond_5b

    .line 123
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v10

    .line 125
    invoke-interface {v10}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v1

    move-object v5, v0

    :goto_38
    if-eq v8, v1, :cond_5d

    .line 129
    invoke-interface {v10, v1}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 130
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-interface {v10}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v0

    if-eq v8, v0, :cond_51

    const/4 v1, 0x1

    :goto_4d
    move-object v2, p1

    move v7, v1

    move-object v1, p0

    goto :goto_53

    :cond_51
    const/4 v1, 0x0

    goto :goto_4d

    .line 133
    :goto_53
    invoke-direct/range {v1 .. v7}, Lorg/apache/xpath/functions/FuncId;->getNodesByID(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Lorg/apache/xml/utils/StringVector;Lorg/apache/xpath/NodeSetDTM;Z)Lorg/apache/xml/utils/StringVector;

    move-result-object v5

    move-object p0, v1

    move-object p1, v2

    move v1, v0

    goto :goto_38

    :cond_5b
    if-ne v8, v2, :cond_5e

    :cond_5d
    return-object v9

    .line 144
    :cond_5e
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 146
    invoke-direct/range {v1 .. v7}, Lorg/apache/xpath/functions/FuncId;->getNodesByID(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Lorg/apache/xml/utils/StringVector;Lorg/apache/xpath/NodeSetDTM;Z)Lorg/apache/xml/utils/StringVector;

    return-object v9
.end method
