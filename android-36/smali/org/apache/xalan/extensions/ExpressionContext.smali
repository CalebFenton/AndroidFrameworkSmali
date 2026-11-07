.class public interface abstract Lorg/apache/xalan/extensions/ExpressionContext;
.super Ljava/lang/Object;
.source "ExpressionContext.java"


# virtual methods
.method public abstract greylist getContextNode()Lorg/w3c/dom/Node;
.end method

.method public abstract greylist getContextNodes()Lorg/w3c/dom/traversal/NodeIterator;
.end method

.method public abstract greylist getErrorListener()Ljavax/xml/transform/ErrorListener;
.end method

.method public abstract greylist getVariableOrParam(Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract greylist getXPathContext()Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract greylist toNumber(Lorg/w3c/dom/Node;)D
.end method

.method public abstract greylist toString(Lorg/w3c/dom/Node;)Ljava/lang/String;
.end method
