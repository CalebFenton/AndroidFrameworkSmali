.class public interface abstract Lorg/apache/xml/serializer/ExtendedContentHandler;
.super Ljava/lang/Object;
.source "ExtendedContentHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# static fields
.field public static final greylist HTML_ATTREMPTY:I = 0x2

.field public static final greylist HTML_ATTRURL:I = 0x4

.field public static final greylist NO_BAD_CHARS:I = 0x1


# virtual methods
.method public abstract greylist addAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract greylist addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract greylist addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract greylist addAttributes(Lorg/xml/sax/Attributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract greylist addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract greylist addXSLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract greylist characters(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract greylist characters(Lorg/w3c/dom/Node;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract greylist endElement(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract greylist entityReference(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract greylist getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;
.end method

.method public abstract greylist getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract greylist getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract greylist getPrefix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract greylist namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract greylist setSourceLocator(Ljavax/xml/transform/SourceLocator;)V
.end method

.method public abstract greylist startElement(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract greylist startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract greylist startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method
