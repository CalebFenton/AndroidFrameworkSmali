.class public interface abstract Lorg/w3c/dom/NamedNodeMap;
.super Ljava/lang/Object;
.source "NamedNodeMap.java"


# virtual methods
.method public abstract whitelist test-api getLength()I
.end method

.method public abstract whitelist test-api getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
.end method

.method public abstract whitelist test-api getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api item(I)Lorg/w3c/dom/Node;
.end method

.method public abstract whitelist test-api removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method
