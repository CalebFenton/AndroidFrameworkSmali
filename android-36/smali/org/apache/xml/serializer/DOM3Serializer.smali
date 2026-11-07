.class public interface abstract Lorg/apache/xml/serializer/DOM3Serializer;
.super Ljava/lang/Object;
.source "DOM3Serializer.java"


# virtual methods
.method public abstract greylist getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;
.end method

.method public abstract greylist getNodeFilter()Lorg/w3c/dom/ls/LSSerializerFilter;
.end method

.method public abstract greylist serializeDOM3(Lorg/w3c/dom/Node;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V
.end method

.method public abstract greylist setNewLine([C)V
.end method

.method public abstract greylist setNodeFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V
.end method
