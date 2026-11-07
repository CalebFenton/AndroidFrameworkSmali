.class public interface abstract Lorg/apache/xpath/axes/ContextNodeList;
.super Ljava/lang/Object;
.source "ContextNodeList.java"


# virtual methods
.method public abstract whitelist test-api clone()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation
.end method

.method public abstract greylist cloneWithReset()Lorg/w3c/dom/traversal/NodeIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation
.end method

.method public abstract greylist getCurrentNode()Lorg/w3c/dom/Node;
.end method

.method public abstract greylist getCurrentPos()I
.end method

.method public abstract greylist getLast()I
.end method

.method public abstract greylist isFresh()Z
.end method

.method public abstract greylist reset()V
.end method

.method public abstract greylist runTo(I)V
.end method

.method public abstract greylist setCurrentPos(I)V
.end method

.method public abstract greylist setLast(I)V
.end method

.method public abstract greylist setShouldCacheNodes(Z)V
.end method

.method public abstract greylist size()I
.end method
