.class public interface abstract Lorg/apache/xalan/transformer/TransformState;
.super Ljava/lang/Object;
.source "TransformState.java"

# interfaces
.implements Lorg/apache/xml/serializer/TransformStateSetter;


# virtual methods
.method public abstract greylist getContextNodeList()Lorg/w3c/dom/traversal/NodeIterator;
.end method

.method public abstract greylist getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;
.end method

.method public abstract greylist getCurrentNode()Lorg/w3c/dom/Node;
.end method

.method public abstract greylist getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;
.end method

.method public abstract greylist getMatchedNode()Lorg/w3c/dom/Node;
.end method

.method public abstract greylist getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;
.end method

.method public abstract greylist getTransformer()Ljavax/xml/transform/Transformer;
.end method
