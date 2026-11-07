.class public abstract Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.super Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "InternalAxisIteratorBase"
.end annotation


# instance fields
.field protected greylist _currentNode:I


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 244
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist gotoMark()V
    .registers 2

    .line 279
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_markedNode:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return-void
.end method

.method public greylist setMark()V
    .registers 2

    .line 269
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_markedNode:I

    return-void
.end method
