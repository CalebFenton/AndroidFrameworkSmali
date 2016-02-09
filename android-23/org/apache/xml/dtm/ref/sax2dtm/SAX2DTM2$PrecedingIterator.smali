.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrecedingIterator"
.end annotation


# instance fields
.field protected _markedDescendant:I

.field protected _markedNode:I

.field protected _markedsp:I

.field private final _maxAncestors:I

.field protected _oldsp:I

.field protected _sp:I

.field protected _stack:[I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@0
    .prologue
    const/16 v0, 0x8

    #@2
    .line 796
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@4
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@7
    .line 800
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_maxAncestors:I

    #@9
    .line 806
    new-array v0, v0, [I

    #@b
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    #@d
    .line 796
    return-void
.end method


# virtual methods
.method public cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 832
    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_isRestartable:Z

    #@3
    .line 836
    :try_start_0
    invoke-super {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;

    #@9
    .line 837
    .local v0, "clone":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    #@b
    array-length v3, v3

    #@c
    new-array v2, v3, [I

    #@e
    .line 838
    .local v2, "stackCopy":[I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    #@10
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    #@12
    array-length v4, v4

    #@13
    const/4 v5, 0x0

    #@14
    const/4 v6, 0x0

    #@15
    invoke-static {v3, v5, v2, v6, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@18
    .line 840
    iput-object v2, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 843
    return-object v0

    #@1b
    .line 846
    .end local v0    # "clone":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;
    .end local v2    # "stackCopy":[I
    :catch_0
    move-exception v1

    #@1c
    .line 847
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Lorg/apache/xml/dtm/DTMException;

    #@1e
    const-string/jumbo v4, "ER_ITERATOR_CLONE_NOT_SUPPORTED"

    #@21
    const/4 v5, 0x0

    #@22
    invoke-static {v4, v5}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-direct {v3, v4}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@29
    throw v3
.end method

.method public gotoMark()V
    .locals 1

    #@0
    .prologue
    .line 949
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_markedsp:I

    #@2
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    #@4
    .line 950
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_markedNode:I

    #@6
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_currentNode:I

    #@8
    .line 948
    return-void
.end method

.method public isReverse()Z
    .locals 1

    #@0
    .prologue
    .line 822
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public next()I
    .locals 4

    #@0
    .prologue
    .line 912
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_currentNode:I

    #@2
    :goto_0
    add-int/lit8 v1, v1, 0x1

    #@4
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_currentNode:I

    #@6
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    #@8
    if-ltz v1, :cond_2

    #@a
    .line 914
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_currentNode:I

    #@c
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    #@e
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    #@10
    aget v2, v2, v3

    #@12
    if-ge v1, v2, :cond_0

    #@14
    .line 916
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@16
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_currentNode:I

    #@18
    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@1b
    move-result v0

    #@1c
    .line 917
    .local v0, "type":I
    const/4 v1, 0x2

    #@1d
    if-eq v0, v1, :cond_1

    #@1f
    const/16 v1, 0xd

    #@21
    if-eq v0, v1, :cond_1

    #@23
    .line 918
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@25
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_currentNode:I

    #@27
    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@2a
    move-result v1

    #@2b
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->returnNode(I)I

    #@2e
    move-result v1

    #@2f
    return v1

    #@30
    .line 921
    .end local v0    # "type":I
    :cond_0
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    #@32
    add-int/lit8 v1, v1, -0x1

    #@34
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    #@36
    .line 912
    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_currentNode:I

    #@38
    goto :goto_0

    #@39
    .line 923
    :cond_2
    const/4 v1, -0x1

    #@3a
    return v1
.end method

.method public reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1

    #@0
    .prologue
    .line 937
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_oldsp:I

    #@2
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    #@4
    .line 939
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setMark()V
    .locals 2

    #@0
    .prologue
    .line 943
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    #@2
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_markedsp:I

    #@4
    .line 944
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_currentNode:I

    #@6
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_markedNode:I

    #@8
    .line 945
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    #@a
    const/4 v1, 0x0

    #@b
    aget v0, v0, v1

    #@d
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_markedDescendant:I

    #@f
    .line 942
    return-void
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 6
    .param p1, "node"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 862
    if-nez p1, :cond_0

    #@3
    .line 863
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@5
    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    #@8
    move-result p1

    #@9
    .line 864
    :cond_0
    iget-boolean v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_isRestartable:Z

    #@b
    if-eqz v3, :cond_5

    #@d
    .line 866
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@f
    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@12
    move-result p1

    #@13
    .line 871
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@15
    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@18
    move-result v3

    #@19
    const/4 v4, 0x2

    #@1a
    if-ne v3, v4, :cond_1

    #@1c
    .line 872
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@1e
    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    #@21
    move-result p1

    #@22
    .line 874
    :cond_1
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_startNode:I

    #@24
    .line 875
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    #@26
    const/4 v0, 0x0

    #@27
    .local v0, "index":I
    aput p1, v3, v5

    #@29
    .line 877
    move v1, p1

    #@2a
    .line 878
    .local v1, "parent":I
    :goto_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2c
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    #@2f
    move-result v1

    #@30
    const/4 v3, -0x1

    #@31
    if-eq v1, v3, :cond_3

    #@33
    .line 880
    add-int/lit8 v0, v0, 0x1

    #@35
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    #@37
    array-length v3, v3

    #@38
    if-ne v0, v3, :cond_2

    #@3a
    .line 882
    mul-int/lit8 v3, v0, 0x2

    #@3c
    new-array v2, v3, [I

    #@3e
    .line 883
    .local v2, "stack":[I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    #@40
    invoke-static {v3, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@43
    .line 884
    iput-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    #@45
    .line 886
    .end local v2    # "stack":[I
    :cond_2
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    #@47
    aput v1, v3, v0

    #@49
    goto :goto_0

    #@4a
    .line 889
    :cond_3
    if-lez v0, :cond_4

    #@4c
    .line 890
    add-int/lit8 v0, v0, -0x1

    #@4e
    .line 892
    :cond_4
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    #@50
    aget v3, v3, v0

    #@52
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_currentNode:I

    #@54
    .line 894
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    #@56
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_oldsp:I

    #@58
    .line 896
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@5b
    move-result-object v3

    #@5c
    return-object v3

    #@5d
    .line 899
    .end local v0    # "index":I
    .end local v1    # "parent":I
    :cond_5
    return-object p0
.end method
