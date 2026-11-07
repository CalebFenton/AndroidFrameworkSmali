.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedFollowingSiblingIterator"
.end annotation


# instance fields
.field private final greylist _nodeType:I

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

    .line 921
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 922
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 7

    .line 932
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return v1

    .line 938
    :cond_6
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->_nodeType:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1d

    .line 942
    :cond_c
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v0

    if-eq v0, v1, :cond_3a

    .line 943
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v3

    if-ne v3, v2, :cond_c

    goto :goto_3a

    .line 945
    :cond_1d
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v0

    if-eq v0, v1, :cond_3a

    .line 946
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v4

    if-ge v4, v3, :cond_30

    if-ne v4, v2, :cond_1d

    goto :goto_3a

    .line 951
    :cond_30
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v5, v4}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v4

    if-ne v4, v2, :cond_1d

    .line 957
    :cond_3a
    :goto_3a
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    if-ne v0, v1, :cond_3f

    return v1

    .line 961
    :cond_3f
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method
