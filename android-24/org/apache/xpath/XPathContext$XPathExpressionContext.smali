.class public Lorg/apache/xpath/XPathContext$XPathExpressionContext;
.super Ljava/lang/Object;
.source "XPathContext.java"

# interfaces
.implements Lorg/apache/xalan/extensions/ExpressionContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/XPathContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XPathExpressionContext"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xpath/XPathContext;


# direct methods
.method public constructor <init>(Lorg/apache/xpath/XPathContext;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 1069
    iput-object p1, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getContextNode()Lorg/w3c/dom/Node;
    .locals 2

    #@0
    .prologue
    .line 1100
    iget-object v1, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    #@2
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@5
    move-result v0

    #@6
    .line 1102
    .local v0, "context":I
    iget-object v1, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    #@8
    invoke-virtual {v1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public getContextNodes()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 2

    #@0
    .prologue
    .line 1112
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    #@2
    iget-object v1, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    #@4
    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    #@b
    return-object v0
.end method

.method public getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .locals 1

    #@0
    .prologue
    .line 1091
    iget-object v0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    #@2
    iget-object v0, v0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    #@4
    return-object v0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 1

    #@0
    .prologue
    .line 1121
    iget-object v0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    #@2
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getVariableOrParam(Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;
    .locals 2
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1162
    iget-object v0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    #@2
    invoke-static {v0}, Lorg/apache/xpath/XPathContext;->-get0(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/VariableStack;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    #@8
    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/VariableStack;->getVariableOrParam(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getXPathContext()Lorg/apache/xpath/XPathContext;
    .locals 1

    #@0
    .prologue
    .line 1080
    iget-object v0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    #@2
    return-object v0
.end method

.method public toNumber(Lorg/w3c/dom/Node;)D
    .locals 6
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 1132
    iget-object v3, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    #@2
    invoke-virtual {v3, p1}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    #@5
    move-result v1

    #@6
    .line 1133
    .local v1, "nodeHandle":I
    iget-object v3, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    #@8
    invoke-virtual {v3, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@b
    move-result-object v0

    #@c
    .line 1134
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lorg/apache/xpath/objects/XString;

    #@12
    .line 1135
    .local v2, "xobj":Lorg/apache/xpath/objects/XString;
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XString;->num()D

    #@15
    move-result-wide v4

    #@16
    return-wide v4
.end method

.method public toString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 1146
    iget-object v3, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    #@2
    invoke-virtual {v3, p1}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    #@5
    move-result v1

    #@6
    .line 1147
    .local v1, "nodeHandle":I
    iget-object v3, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    #@8
    invoke-virtual {v3, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@b
    move-result-object v0

    #@c
    .line 1148
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@f
    move-result-object v2

    #@10
    .line 1149
    .local v2, "strVal":Lorg/apache/xml/utils/XMLString;
    invoke-interface {v2}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    return-object v3
.end method
