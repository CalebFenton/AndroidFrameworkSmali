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
.field _pos:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 1988
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 1990
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->_pos:I

    #@7
    .line 1988
    return-void
.end method


# virtual methods
.method public next()I
    .locals 7

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 2004
    :cond_0
    invoke-super {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->next()I

    #@4
    move-result v1

    #@5
    .local v1, "node":I
    if-eq v1, v6, :cond_4

    #@7
    .line 2006
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@9
    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeIdentity(I)I

    #@c
    move-result v1

    #@d
    .line 2008
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@f
    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_parent(I)I

    #@12
    move-result v2

    #@13
    .line 2009
    .local v2, "parent":I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@15
    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_firstch(I)I

    #@18
    move-result v0

    #@19
    .line 2010
    .local v0, "child":I
    const/4 v3, 0x0

    #@1a
    .line 2014
    .local v3, "pos":I
    :cond_1
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@1c
    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_type(I)S

    #@1f
    move-result v4

    #@20
    .line 2016
    .local v4, "type":I
    const/4 v5, 0x1

    #@21
    if-ne v5, v4, :cond_2

    #@23
    .line 2017
    add-int/lit8 v3, v3, 0x1

    #@25
    .line 2019
    :cond_2
    iget v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->_pos:I

    #@27
    if-ge v3, v5, :cond_3

    #@29
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2b
    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_nextsib(I)I

    #@2e
    move-result v0

    #@2f
    if-ne v0, v6, :cond_1

    #@31
    .line 2021
    :cond_3
    if-ne v1, v0, :cond_0

    #@33
    .line 2022
    return v1

    #@34
    .line 2025
    .end local v0    # "child":I
    .end local v2    # "parent":I
    .end local v3    # "pos":I
    .end local v4    # "type":I
    :cond_4
    return v6
.end method
