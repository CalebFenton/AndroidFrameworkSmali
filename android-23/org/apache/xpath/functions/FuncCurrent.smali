.class public Lorg/apache/xpath/functions/FuncCurrent;
.super Lorg/apache/xpath/functions/Function;
.source "FuncCurrent.java"


# static fields
.field static final serialVersionUID:J = 0x4f50e25a5d8e8640L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 6
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 55
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNodeList()Lorg/apache/xpath/axes/SubContextList;

    #@4
    move-result-object v2

    #@5
    .line 56
    .local v2, "subContextList":Lorg/apache/xpath/axes/SubContextList;
    const/4 v0, -0x1

    #@6
    .line 58
    .local v0, "currentNode":I
    if-eqz v2, :cond_2

    #@8
    .line 59
    instance-of v3, v2, Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 60
    check-cast v2, Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@e
    .end local v2    # "subContextList":Lorg/apache/xpath/axes/SubContextList;
    invoke-virtual {v2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getLocPathIterator()Lorg/apache/xpath/axes/LocPathIterator;

    #@11
    move-result-object v1

    #@12
    .line 62
    .local v1, "iter":Lorg/apache/xpath/axes/LocPathIterator;
    invoke-virtual {v1}, Lorg/apache/xpath/axes/LocPathIterator;->getCurrentContextNode()I

    #@15
    move-result v0

    #@16
    .line 71
    .end local v1    # "iter":Lorg/apache/xpath/axes/LocPathIterator;
    :cond_0
    :goto_0
    new-instance v3, Lorg/apache/xpath/objects/XNodeSet;

    #@18
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@1b
    move-result-object v4

    #@1c
    invoke-direct {v3, v0, v4}, Lorg/apache/xpath/objects/XNodeSet;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    #@1f
    return-object v3

    #@20
    .line 63
    .restart local v2    # "subContextList":Lorg/apache/xpath/axes/SubContextList;
    :cond_1
    instance-of v3, v2, Lorg/apache/xpath/patterns/StepPattern;

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 64
    new-instance v3, Ljava/lang/RuntimeException;

    #@26
    .line 65
    const-string/jumbo v4, "ER_PROCESSOR_ERROR"

    #@29
    .line 64
    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@30
    throw v3

    #@31
    .line 69
    :cond_2
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNode()I

    #@34
    move-result v0

    #@35
    goto :goto_0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 77
    return-void
.end method
