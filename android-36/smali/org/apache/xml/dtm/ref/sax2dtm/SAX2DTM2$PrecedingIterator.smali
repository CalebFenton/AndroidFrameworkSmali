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
.field protected greylist _markedDescendant:I

.field protected greylist _markedNode:I

.field protected greylist _markedsp:I

.field private final greylist _maxAncestors:I

.field protected greylist _oldsp:I

.field protected greylist _sp:I

.field protected greylist _stack:[I

.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 796
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    const/16 p1, 0x8

    .line 800
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_maxAncestors:I

    .line 806
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    return-void
.end method


# virtual methods
.method public greylist cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 5

    const/4 v0, 0x0

    .line 832
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    .line 836
    :try_start_3
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;

    .line 837
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    array-length v2, p0

    new-array v2, v2, [I

    .line 838
    array-length v3, p0

    invoke-static {p0, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 840
    iput-object v2, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I
    :try_end_14
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_14} :catch_15

    return-object v1

    .line 847
    :catch_15
    new-instance p0, Lorg/apache/xml/dtm/DTMException;

    const-string v0, "ER_ITERATOR_CLONE_NOT_SUPPORTED"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist gotoMark()V
    .registers 2

    .line 949
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_markedsp:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    .line 950
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_markedNode:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return-void
.end method

.method public greylist isReverse()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist next()I
    .registers 4

    .line 912
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    :goto_2
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    if-ltz v0, :cond_33

    .line 914
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_2c

    .line 916
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_30

    const/16 v1, 0xd

    if-eq v0, v1, :cond_30

    .line 918
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_2c
    add-int/lit8 v0, v0, -0x1

    .line 921
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    .line 912
    :cond_30
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    goto :goto_2

    :cond_33
    const/4 p0, -0x1

    return p0
.end method

.method public greylist reset()Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 2

    .line 937
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_oldsp:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    .line 939
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public greylist setMark()V
    .registers 3

    .line 943
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_markedsp:I

    .line 944
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_markedNode:I

    .line 945
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_markedDescendant:I

    return-void
.end method

.method public greylist setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 6

    if-nez p1, :cond_8

    .line 863
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p1

    .line 864
    :cond_8
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_isRestartable:Z

    if-eqz v0, :cond_59

    .line 866
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 871
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 872
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result p1

    .line 874
    :cond_21
    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    .line 875
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    move v0, v1

    .line 878
    :goto_29
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_47

    add-int/lit8 v0, v0, 0x1

    .line 880
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    array-length v3, v2

    if-ne v0, v3, :cond_42

    mul-int/lit8 v3, v0, 0x2

    .line 882
    new-array v3, v3, [I

    .line 883
    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 884
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    .line 886
    :cond_42
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    aput p1, v2, v0

    goto :goto_29

    :cond_47
    if-lez v0, :cond_4b

    add-int/lit8 v0, v0, -0x1

    .line 892
    :cond_4b
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    aget p1, p1, v0

    iput p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 894
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_oldsp:I

    .line 896
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    :cond_59
    return-object p0
.end method
