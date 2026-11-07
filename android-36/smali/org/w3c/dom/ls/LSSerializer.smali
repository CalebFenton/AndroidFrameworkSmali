.class public interface abstract Lorg/w3c/dom/ls/LSSerializer;
.super Ljava/lang/Object;
.source "LSSerializer.java"


# virtual methods
.method public abstract whitelist test-api getDomConfig()Lorg/w3c/dom/DOMConfiguration;
.end method

.method public abstract greylist-max-o getFilter()Lorg/w3c/dom/ls/LSSerializerFilter;
.end method

.method public abstract whitelist test-api getNewLine()Ljava/lang/String;
.end method

.method public abstract greylist-max-o setFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V
.end method

.method public abstract whitelist test-api setNewLine(Ljava/lang/String;)V
.end method

.method public abstract whitelist test-api write(Lorg/w3c/dom/Node;Lorg/w3c/dom/ls/LSOutput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api writeToString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api writeToURI(Lorg/w3c/dom/Node;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation
.end method
