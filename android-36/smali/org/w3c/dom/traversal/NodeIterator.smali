.class public interface abstract Lorg/w3c/dom/traversal/NodeIterator;
.super Ljava/lang/Object;
.source "NodeIterator.java"


# virtual methods
.method public abstract greylist detach()V
.end method

.method public abstract greylist-max-o getExpandEntityReferences()Z
.end method

.method public abstract greylist-max-o getFilter()Lorg/w3c/dom/traversal/NodeFilter;
.end method

.method public abstract greylist-max-o getRoot()Lorg/w3c/dom/Node;
.end method

.method public abstract greylist-max-o getWhatToShow()I
.end method

.method public abstract greylist nextNode()Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o previousNode()Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method
