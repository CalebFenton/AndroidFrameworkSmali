.class public interface abstract Ljavax/xml/xpath/XPathExpression;
.super Ljava/lang/Object;
.source "XPathExpression.java"


# virtual methods
.method public abstract whitelist test-api evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api evaluate(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api evaluate(Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation
.end method
