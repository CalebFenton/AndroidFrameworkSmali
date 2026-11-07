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
.field final synthetic greylist this$0:Lorg/apache/xpath/XPathContext;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xpath/XPathContext;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1069
    iput-object p1, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist getContextNode()Lorg/w3c/dom/Node;
    .registers 2

    .line 1100
    iget-object v0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 1102
    iget-object p0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public greylist getContextNodes()Lorg/w3c/dom/traversal/NodeIterator;
    .registers 2

    .line 1112
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    iget-object p0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    return-object v0
.end method

.method public greylist getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .registers 1

    .line 1091
    iget-object p0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    return-object p0
.end method

.method public greylist getErrorListener()Ljavax/xml/transform/ErrorListener;
    .registers 1

    .line 1121
    iget-object p0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    return-object p0
.end method

.method public final greylist getVariableOrParam(Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1162
    iget-object v0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-static {v0}, Lorg/apache/xpath/XPathContext;->-$$Nest$fgetm_variableStacks(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/VariableStack;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0, p0, p1}, Lorg/apache/xpath/VariableStack;->getVariableOrParam(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public greylist getXPathContext()Lorg/apache/xpath/XPathContext;
    .registers 1

    .line 1080
    iget-object p0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    return-object p0
.end method

.method public greylist toNumber(Lorg/w3c/dom/Node;)D
    .registers 3

    .line 1132
    iget-object v0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p1

    .line 1133
    iget-object p0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    .line 1134
    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/objects/XString;

    .line 1135
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->num()D

    move-result-wide p0

    return-wide p0
.end method

.method public greylist toString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 3

    .line 1146
    iget-object v0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p1

    .line 1147
    iget-object p0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    .line 1148
    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    .line 1149
    invoke-interface {p0}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
