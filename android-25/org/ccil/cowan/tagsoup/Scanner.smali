.class public interface abstract Lorg/ccil/cowan/tagsoup/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"


# virtual methods
.method public abstract resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract startCDATA()V
.end method
