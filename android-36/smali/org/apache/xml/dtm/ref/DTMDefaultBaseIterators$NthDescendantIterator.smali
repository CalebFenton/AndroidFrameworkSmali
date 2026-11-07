.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NthDescendantIterator"
.end annotation


# instance fields
.field greylist _pos:I

.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1989
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 1990
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->_pos:I

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 7

    .line 2004
    :cond_0
    invoke-super {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->next()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    .line 2006
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    .line 2008
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v2

    .line 2009
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v3, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v2

    const/4 v3, 0x0

    .line 2014
    :cond_1a
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v4

    const/4 v5, 0x1

    if-ne v5, v4, :cond_25

    add-int/lit8 v3, v3, 0x1

    .line 2019
    :cond_25
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->_pos:I

    if-ge v3, v4, :cond_31

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v2

    if-ne v2, v1, :cond_1a

    :cond_31
    if-ne v0, v2, :cond_0

    return v0

    :cond_34
    return v1
.end method
