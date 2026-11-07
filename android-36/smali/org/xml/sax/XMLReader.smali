.class public interface abstract Lorg/xml/sax/XMLReader;
.super Ljava/lang/Object;
.source "XMLReader.java"


# virtual methods
.method public abstract whitelist test-api getContentHandler()Lorg/xml/sax/ContentHandler;
.end method

.method public abstract whitelist test-api getDTDHandler()Lorg/xml/sax/DTDHandler;
.end method

.method public abstract whitelist test-api getEntityResolver()Lorg/xml/sax/EntityResolver;
.end method

.method public abstract whitelist test-api getErrorHandler()Lorg/xml/sax/ErrorHandler;
.end method

.method public abstract whitelist test-api getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api parse(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api parse(Lorg/xml/sax/InputSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setContentHandler(Lorg/xml/sax/ContentHandler;)V
.end method

.method public abstract whitelist test-api setDTDHandler(Lorg/xml/sax/DTDHandler;)V
.end method

.method public abstract whitelist test-api setEntityResolver(Lorg/xml/sax/EntityResolver;)V
.end method

.method public abstract whitelist test-api setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
.end method

.method public abstract whitelist test-api setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation
.end method
