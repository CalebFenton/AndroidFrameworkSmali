.class public interface abstract Lorg/apache/xml/dtm/DTMAxisIterator;
.super Ljava/lang/Object;
.source "DTMAxisIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final greylist END:I = -0x1


# virtual methods
.method public abstract greylist cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
.end method

.method public abstract greylist getLast()I
.end method

.method public abstract greylist getNodeByPosition(I)I
.end method

.method public abstract greylist getPosition()I
.end method

.method public abstract greylist getStartNode()I
.end method

.method public abstract greylist gotoMark()V
.end method

.method public abstract greylist isReverse()Z
.end method

.method public abstract greylist next()I
.end method

.method public abstract greylist reset()Lorg/apache/xml/dtm/DTMAxisIterator;
.end method

.method public abstract greylist setMark()V
.end method

.method public abstract greylist setRestartable(Z)V
.end method

.method public abstract greylist setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
.end method
