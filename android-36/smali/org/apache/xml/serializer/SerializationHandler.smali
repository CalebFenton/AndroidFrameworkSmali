.class public interface abstract Lorg/apache/xml/serializer/SerializationHandler;
.super Ljava/lang/Object;
.source "SerializationHandler.java"

# interfaces
.implements Lorg/apache/xml/serializer/ExtendedContentHandler;
.implements Lorg/apache/xml/serializer/ExtendedLexicalHandler;
.implements Lorg/apache/xml/serializer/XSLOutputAttributes;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ErrorHandler;
.implements Lorg/apache/xml/serializer/DOMSerializer;
.implements Lorg/apache/xml/serializer/Serializer;


# virtual methods
.method public abstract greylist close()V
.end method

.method public abstract greylist flushPending()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract synthetic greylist getEncoding()Ljava/lang/String;
.end method

.method public abstract greylist getTransformer()Ljavax/xml/transform/Transformer;
.end method

.method public abstract greylist serialize(Lorg/w3c/dom/Node;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist setContentHandler(Lorg/xml/sax/ContentHandler;)V
.end method

.method public abstract greylist setDTDEntityExpansion(Z)V
.end method

.method public abstract synthetic greylist setDoctypePublic(Ljava/lang/String;)V
.end method

.method public abstract synthetic greylist setDoctypeSystem(Ljava/lang/String;)V
.end method

.method public abstract synthetic greylist setEncoding(Ljava/lang/String;)V
.end method

.method public abstract greylist setEscaping(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract synthetic greylist setIndent(Z)V
.end method

.method public abstract greylist setIndentAmount(I)V
.end method

.method public abstract greylist setNamespaceMappings(Lorg/apache/xml/serializer/NamespaceMappings;)V
.end method

.method public abstract synthetic greylist setOmitXMLDeclaration(Z)V
.end method

.method public abstract synthetic greylist setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract greylist setTransformer(Ljavax/xml/transform/Transformer;)V
.end method

.method public abstract synthetic greylist setVersion(Ljava/lang/String;)V
.end method
