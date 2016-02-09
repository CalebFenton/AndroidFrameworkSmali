.class public Lorg/apache/xpath/objects/XObjectFactory;
.super Ljava/lang/Object;
.source "XObjectFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static create(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;
    .locals 2
    .param p0, "val"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 48
    instance-of v1, p0, Lorg/apache/xpath/objects/XObject;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p0

    #@5
    .line 50
    check-cast v0, Lorg/apache/xpath/objects/XObject;

    #@7
    .line 69
    .end local p0    # "val":Ljava/lang/Object;
    .local v0, "result":Lorg/apache/xpath/objects/XObject;
    :goto_0
    return-object v0

    #@8
    .line 52
    .end local v0    # "result":Lorg/apache/xpath/objects/XObject;
    .restart local p0    # "val":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 54
    new-instance v0, Lorg/apache/xpath/objects/XString;

    #@e
    check-cast p0, Ljava/lang/String;

    #@10
    .end local p0    # "val":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@13
    .restart local v0    # "result":Lorg/apache/xpath/objects/XObject;
    goto :goto_0

    #@14
    .line 56
    .end local v0    # "result":Lorg/apache/xpath/objects/XObject;
    .restart local p0    # "val":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Ljava/lang/Boolean;

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 58
    new-instance v0, Lorg/apache/xpath/objects/XBoolean;

    #@1a
    check-cast p0, Ljava/lang/Boolean;

    #@1c
    .end local p0    # "val":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XBoolean;-><init>(Ljava/lang/Boolean;)V

    #@1f
    .restart local v0    # "result":Lorg/apache/xpath/objects/XObject;
    goto :goto_0

    #@20
    .line 60
    .end local v0    # "result":Lorg/apache/xpath/objects/XObject;
    .restart local p0    # "val":Ljava/lang/Object;
    :cond_2
    instance-of v1, p0, Ljava/lang/Double;

    #@22
    if-eqz v1, :cond_3

    #@24
    .line 62
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    #@26
    check-cast p0, Ljava/lang/Double;

    #@28
    .end local p0    # "val":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XNumber;-><init>(Ljava/lang/Number;)V

    #@2b
    .restart local v0    # "result":Lorg/apache/xpath/objects/XObject;
    goto :goto_0

    #@2c
    .line 66
    .end local v0    # "result":Lorg/apache/xpath/objects/XObject;
    .restart local p0    # "val":Ljava/lang/Object;
    :cond_3
    new-instance v0, Lorg/apache/xpath/objects/XObject;

    #@2e
    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    #@31
    .restart local v0    # "result":Lorg/apache/xpath/objects/XObject;
    goto :goto_0
.end method

.method public static create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 7
    .param p0, "val"    # Ljava/lang/Object;
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 87
    instance-of v6, p0, Lorg/apache/xpath/objects/XObject;

    #@2
    if-eqz v6, :cond_0

    #@4
    move-object v5, p0

    #@5
    .line 89
    check-cast v5, Lorg/apache/xpath/objects/XObject;

    #@7
    .line 159
    .end local p0    # "val":Ljava/lang/Object;
    .local v5, "result":Lorg/apache/xpath/objects/XObject;
    :goto_0
    return-object v5

    #@8
    .line 91
    .end local v5    # "result":Lorg/apache/xpath/objects/XObject;
    .restart local p0    # "val":Ljava/lang/Object;
    :cond_0
    instance-of v6, p0, Ljava/lang/String;

    #@a
    if-eqz v6, :cond_1

    #@c
    .line 93
    new-instance v5, Lorg/apache/xpath/objects/XString;

    #@e
    check-cast p0, Ljava/lang/String;

    #@10
    .end local p0    # "val":Ljava/lang/Object;
    invoke-direct {v5, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@13
    .restart local v5    # "result":Lorg/apache/xpath/objects/XObject;
    goto :goto_0

    #@14
    .line 95
    .end local v5    # "result":Lorg/apache/xpath/objects/XObject;
    .restart local p0    # "val":Ljava/lang/Object;
    :cond_1
    instance-of v6, p0, Ljava/lang/Boolean;

    #@16
    if-eqz v6, :cond_2

    #@18
    .line 97
    new-instance v5, Lorg/apache/xpath/objects/XBoolean;

    #@1a
    check-cast p0, Ljava/lang/Boolean;

    #@1c
    .end local p0    # "val":Ljava/lang/Object;
    invoke-direct {v5, p0}, Lorg/apache/xpath/objects/XBoolean;-><init>(Ljava/lang/Boolean;)V

    #@1f
    .restart local v5    # "result":Lorg/apache/xpath/objects/XObject;
    goto :goto_0

    #@20
    .line 99
    .end local v5    # "result":Lorg/apache/xpath/objects/XObject;
    .restart local p0    # "val":Ljava/lang/Object;
    :cond_2
    instance-of v6, p0, Ljava/lang/Number;

    #@22
    if-eqz v6, :cond_3

    #@24
    .line 101
    new-instance v5, Lorg/apache/xpath/objects/XNumber;

    #@26
    check-cast p0, Ljava/lang/Number;

    #@28
    .end local p0    # "val":Ljava/lang/Object;
    invoke-direct {v5, p0}, Lorg/apache/xpath/objects/XNumber;-><init>(Ljava/lang/Number;)V

    #@2b
    .restart local v5    # "result":Lorg/apache/xpath/objects/XObject;
    goto :goto_0

    #@2c
    .line 103
    .end local v5    # "result":Lorg/apache/xpath/objects/XObject;
    .restart local p0    # "val":Ljava/lang/Object;
    :cond_3
    instance-of v6, p0, Lorg/apache/xml/dtm/DTM;

    #@2e
    if-eqz v6, :cond_4

    #@30
    move-object v0, p0

    #@31
    .line 105
    check-cast v0, Lorg/apache/xml/dtm/DTM;

    #@33
    .line 108
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    :try_start_0
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    #@36
    move-result v1

    #@37
    .line 109
    .local v1, "dtmRoot":I
    const/16 v6, 0xd

    #@39
    invoke-interface {v0, v6}, Lorg/apache/xml/dtm/DTM;->getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    #@3c
    move-result-object v3

    #@3d
    .line 110
    .local v3, "iter":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-interface {v3, v1}, Lorg/apache/xml/dtm/DTMAxisIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    #@40
    .line 111
    new-instance v4, Lorg/apache/xpath/axes/OneStepIterator;

    #@42
    const/16 v6, 0xd

    #@44
    invoke-direct {v4, v3, v6}, Lorg/apache/xpath/axes/OneStepIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisIterator;I)V

    #@47
    .line 112
    .local v4, "iterator":Lorg/apache/xml/dtm/DTMIterator;
    invoke-interface {v4, v1, p1}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    #@4a
    .line 113
    new-instance v5, Lorg/apache/xpath/objects/XNodeSet;

    #@4c
    invoke-direct {v5, v4}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    .restart local v5    # "result":Lorg/apache/xpath/objects/XObject;
    goto :goto_0

    #@50
    .line 116
    .end local v1    # "dtmRoot":I
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMAxisIterator;
    .end local v4    # "iterator":Lorg/apache/xml/dtm/DTMIterator;
    .end local v5    # "result":Lorg/apache/xpath/objects/XObject;
    :catch_0
    move-exception v2

    #@51
    .line 117
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@53
    invoke-direct {v6, v2}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@56
    throw v6

    #@57
    .line 120
    .end local v0    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_4
    instance-of v6, p0, Lorg/apache/xml/dtm/DTMAxisIterator;

    #@59
    if-eqz v6, :cond_5

    #@5b
    move-object v3, p0

    #@5c
    .line 122
    check-cast v3, Lorg/apache/xml/dtm/DTMAxisIterator;

    #@5e
    .line 125
    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMAxisIterator;
    :try_start_1
    new-instance v4, Lorg/apache/xpath/axes/OneStepIterator;

    #@60
    const/16 v6, 0xd

    #@62
    invoke-direct {v4, v3, v6}, Lorg/apache/xpath/axes/OneStepIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisIterator;I)V

    #@65
    .line 126
    .restart local v4    # "iterator":Lorg/apache/xml/dtm/DTMIterator;
    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMAxisIterator;->getStartNode()I

    #@68
    move-result v6

    #@69
    invoke-interface {v4, v6, p1}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    #@6c
    .line 127
    new-instance v5, Lorg/apache/xpath/objects/XNodeSet;

    #@6e
    invoke-direct {v5, v4}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@71
    .restart local v5    # "result":Lorg/apache/xpath/objects/XObject;
    goto :goto_0

    #@72
    .line 130
    .end local v4    # "iterator":Lorg/apache/xml/dtm/DTMIterator;
    .end local v5    # "result":Lorg/apache/xpath/objects/XObject;
    :catch_1
    move-exception v2

    #@73
    .line 131
    .restart local v2    # "ex":Ljava/lang/Exception;
    new-instance v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@75
    invoke-direct {v6, v2}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@78
    throw v6

    #@79
    .line 134
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMAxisIterator;
    :cond_5
    instance-of v6, p0, Lorg/apache/xml/dtm/DTMIterator;

    #@7b
    if-eqz v6, :cond_6

    #@7d
    .line 136
    new-instance v5, Lorg/apache/xpath/objects/XNodeSet;

    #@7f
    check-cast p0, Lorg/apache/xml/dtm/DTMIterator;

    #@81
    .end local p0    # "val":Ljava/lang/Object;
    invoke-direct {v5, p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    #@84
    .restart local v5    # "result":Lorg/apache/xpath/objects/XObject;
    goto :goto_0

    #@85
    .line 140
    .end local v5    # "result":Lorg/apache/xpath/objects/XObject;
    .restart local p0    # "val":Ljava/lang/Object;
    :cond_6
    instance-of v6, p0, Lorg/w3c/dom/Node;

    #@87
    if-eqz v6, :cond_7

    #@89
    .line 142
    new-instance v5, Lorg/apache/xpath/objects/XNodeSetForDOM;

    #@8b
    check-cast p0, Lorg/w3c/dom/Node;

    #@8d
    .end local p0    # "val":Ljava/lang/Object;
    invoke-direct {v5, p0, p1}, Lorg/apache/xpath/objects/XNodeSetForDOM;-><init>(Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTMManager;)V

    #@90
    .restart local v5    # "result":Lorg/apache/xpath/objects/XObject;
    goto/16 :goto_0

    #@92
    .line 146
    .end local v5    # "result":Lorg/apache/xpath/objects/XObject;
    .restart local p0    # "val":Ljava/lang/Object;
    :cond_7
    instance-of v6, p0, Lorg/w3c/dom/NodeList;

    #@94
    if-eqz v6, :cond_8

    #@96
    .line 148
    new-instance v5, Lorg/apache/xpath/objects/XNodeSetForDOM;

    #@98
    check-cast p0, Lorg/w3c/dom/NodeList;

    #@9a
    .end local p0    # "val":Ljava/lang/Object;
    invoke-direct {v5, p0, p1}, Lorg/apache/xpath/objects/XNodeSetForDOM;-><init>(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V

    #@9d
    .restart local v5    # "result":Lorg/apache/xpath/objects/XObject;
    goto/16 :goto_0

    #@9f
    .line 150
    .end local v5    # "result":Lorg/apache/xpath/objects/XObject;
    .restart local p0    # "val":Ljava/lang/Object;
    :cond_8
    instance-of v6, p0, Lorg/w3c/dom/traversal/NodeIterator;

    #@a1
    if-eqz v6, :cond_9

    #@a3
    .line 152
    new-instance v5, Lorg/apache/xpath/objects/XNodeSetForDOM;

    #@a5
    check-cast p0, Lorg/w3c/dom/traversal/NodeIterator;

    #@a7
    .end local p0    # "val":Ljava/lang/Object;
    invoke-direct {v5, p0, p1}, Lorg/apache/xpath/objects/XNodeSetForDOM;-><init>(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V

    #@aa
    .restart local v5    # "result":Lorg/apache/xpath/objects/XObject;
    goto/16 :goto_0

    #@ac
    .line 156
    .end local v5    # "result":Lorg/apache/xpath/objects/XObject;
    .restart local p0    # "val":Ljava/lang/Object;
    :cond_9
    new-instance v5, Lorg/apache/xpath/objects/XObject;

    #@ae
    invoke-direct {v5, p0}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    #@b1
    .restart local v5    # "result":Lorg/apache/xpath/objects/XObject;
    goto/16 :goto_0
.end method
