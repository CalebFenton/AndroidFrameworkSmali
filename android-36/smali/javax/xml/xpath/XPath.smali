.class public interface abstract Ljavax/xml/xpath/XPath;
.super Ljava/lang/Object;
.source "XPath.java"


# virtual methods
.method public abstract whitelist test-api compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
.end method

.method public abstract whitelist test-api getXPathFunctionResolver()Ljavax/xml/xpath/XPathFunctionResolver;
.end method

.method public abstract whitelist test-api getXPathVariableResolver()Ljavax/xml/xpath/XPathVariableResolver;
.end method

.method public abstract whitelist test-api reset()V
.end method

.method public abstract whitelist test-api setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
.end method

.method public abstract whitelist test-api setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V
.end method

.method public abstract whitelist test-api setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V
.end method
