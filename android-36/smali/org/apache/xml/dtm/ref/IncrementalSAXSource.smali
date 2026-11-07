.class public interface abstract Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
.super Ljava/lang/Object;
.source "IncrementalSAXSource.java"


# virtual methods
.method public abstract greylist deliverMoreNodes(Z)Ljava/lang/Object;
.end method

.method public abstract greylist setContentHandler(Lorg/xml/sax/ContentHandler;)V
.end method

.method public abstract greylist setDTDHandler(Lorg/xml/sax/DTDHandler;)V
.end method

.method public abstract greylist setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
.end method

.method public abstract greylist startParse(Lorg/xml/sax/InputSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method
