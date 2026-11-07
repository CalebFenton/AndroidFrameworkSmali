.class public interface abstract Lorg/xml/sax/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract whitelist test-api parse(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api parse(Lorg/xml/sax/InputSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setDTDHandler(Lorg/xml/sax/DTDHandler;)V
.end method

.method public abstract whitelist test-api setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V
.end method

.method public abstract whitelist test-api setEntityResolver(Lorg/xml/sax/EntityResolver;)V
.end method

.method public abstract whitelist test-api setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
.end method

.method public abstract whitelist test-api setLocale(Ljava/util/Locale;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method
