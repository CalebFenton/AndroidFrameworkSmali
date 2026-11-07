.class public interface abstract Lorg/xml/sax/ext/EntityResolver2;
.super Ljava/lang/Object;
.source "EntityResolver2.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# virtual methods
.method public abstract whitelist test-api getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
