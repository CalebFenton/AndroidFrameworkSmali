.class public Lorg/apache/xpath/objects/XObjectFactory;
.super Ljava/lang/Object;
.source "XObjectFactory.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist create(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;
    .registers 2

    .line 48
    instance-of v0, p0, Lorg/apache/xpath/objects/XObject;

    if-eqz v0, :cond_7

    .line 50
    check-cast p0, Lorg/apache/xpath/objects/XObject;

    return-object p0

    .line 52
    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 54
    new-instance v0, Lorg/apache/xpath/objects/XString;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 56
    :cond_13
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1f

    .line 58
    new-instance v0, Lorg/apache/xpath/objects/XBoolean;

    check-cast p0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XBoolean;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 60
    :cond_1f
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2b

    .line 62
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    check-cast p0, Ljava/lang/Double;

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XNumber;-><init>(Ljava/lang/Number;)V

    return-object v0

    .line 66
    :cond_2b
    new-instance v0, Lorg/apache/xpath/objects/XObject;

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static greylist create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 5

    .line 87
    instance-of v0, p0, Lorg/apache/xpath/objects/XObject;

    if-eqz v0, :cond_7

    .line 89
    check-cast p0, Lorg/apache/xpath/objects/XObject;

    return-object p0

    .line 91
    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 93
    new-instance p1, Lorg/apache/xpath/objects/XString;

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 95
    :cond_13
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1f

    .line 97
    new-instance p1, Lorg/apache/xpath/objects/XBoolean;

    check-cast p0, Ljava/lang/Boolean;

    invoke-direct {p1, p0}, Lorg/apache/xpath/objects/XBoolean;-><init>(Ljava/lang/Boolean;)V

    return-object p1

    .line 99
    :cond_1f
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2b

    .line 101
    new-instance p1, Lorg/apache/xpath/objects/XNumber;

    check-cast p0, Ljava/lang/Number;

    invoke-direct {p1, p0}, Lorg/apache/xpath/objects/XNumber;-><init>(Ljava/lang/Number;)V

    return-object p1

    .line 103
    :cond_2b
    instance-of v0, p0, Lorg/apache/xml/dtm/DTM;

    const/16 v1, 0xd

    if-eqz v0, :cond_53

    .line 105
    check-cast p0, Lorg/apache/xml/dtm/DTM;

    .line 108
    :try_start_33
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v0

    .line 109
    invoke-interface {p0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    .line 110
    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTMAxisIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 111
    new-instance v2, Lorg/apache/xpath/axes/OneStepIterator;

    invoke-direct {v2, p0, v1}, Lorg/apache/xpath/axes/OneStepIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisIterator;I)V

    .line 112
    invoke-interface {v2, v0, p1}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    .line 113
    new-instance p0, Lorg/apache/xpath/objects/XNodeSet;

    invoke-direct {p0, v2}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4b} :catch_4c

    return-object p0

    :catch_4c
    move-exception p0

    .line 117
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 120
    :cond_53
    instance-of v0, p0, Lorg/apache/xml/dtm/DTMAxisIterator;

    if-eqz v0, :cond_72

    .line 122
    check-cast p0, Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 125
    :try_start_59
    new-instance v0, Lorg/apache/xpath/axes/OneStepIterator;

    invoke-direct {v0, p0, v1}, Lorg/apache/xpath/axes/OneStepIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisIterator;I)V

    .line 126
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMAxisIterator;->getStartNode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    .line 127
    new-instance p0, Lorg/apache/xpath/objects/XNodeSet;

    invoke-direct {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_6a} :catch_6b

    return-object p0

    :catch_6b
    move-exception p0

    .line 131
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 134
    :cond_72
    instance-of v0, p0, Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_7e

    .line 136
    new-instance p1, Lorg/apache/xpath/objects/XNodeSet;

    check-cast p0, Lorg/apache/xml/dtm/DTMIterator;

    invoke-direct {p1, p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    return-object p1

    .line 140
    :cond_7e
    instance-of v0, p0, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_8a

    .line 142
    new-instance v0, Lorg/apache/xpath/objects/XNodeSetForDOM;

    check-cast p0, Lorg/w3c/dom/Node;

    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/objects/XNodeSetForDOM;-><init>(Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTMManager;)V

    return-object v0

    .line 146
    :cond_8a
    instance-of v0, p0, Lorg/w3c/dom/NodeList;

    if-eqz v0, :cond_96

    .line 148
    new-instance v0, Lorg/apache/xpath/objects/XNodeSetForDOM;

    check-cast p0, Lorg/w3c/dom/NodeList;

    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/objects/XNodeSetForDOM;-><init>(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V

    return-object v0

    .line 150
    :cond_96
    instance-of v0, p0, Lorg/w3c/dom/traversal/NodeIterator;

    if-eqz v0, :cond_a2

    .line 152
    new-instance v0, Lorg/apache/xpath/objects/XNodeSetForDOM;

    check-cast p0, Lorg/w3c/dom/traversal/NodeIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/objects/XNodeSetForDOM;-><init>(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V

    return-object v0

    .line 156
    :cond_a2
    new-instance p1, Lorg/apache/xpath/objects/XObject;

    invoke-direct {p1, p0}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
