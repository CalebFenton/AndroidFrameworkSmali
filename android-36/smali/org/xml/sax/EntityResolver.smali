.class public interface abstract Lorg/xml/sax/EntityResolver;
.super Ljava/lang/Object;
.source "EntityResolver.java"


# virtual methods
.method public abstract whitelist test-api resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
