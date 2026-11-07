.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedPrecedingSiblingIterator"
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

    .line 1185
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 1186
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 8

    .line 1196
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1199
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->_nodeType:I

    .line 1200
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_startNodeID:I

    const/4 v3, -0x1

    const/16 v4, 0xe

    if-lt v1, v4, :cond_1e

    :goto_b
    if-eq v0, v3, :cond_3f

    if-eq v0, v2, :cond_3f

    .line 1203
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v4

    if-eq v4, v1, :cond_3f

    .line 1204
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v0

    goto :goto_b

    :cond_1e
    :goto_1e
    if-eq v0, v3, :cond_3f

    if-eq v0, v2, :cond_3f

    .line 1208
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v5

    if-ge v5, v4, :cond_2d

    if-ne v5, v1, :cond_38

    goto :goto_3f

    .line 1214
    :cond_2d
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v6, v6, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v6, v5}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v5

    if-ne v5, v1, :cond_38

    goto :goto_3f

    .line 1218
    :cond_38
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v0

    goto :goto_1e

    :cond_3f
    :goto_3f
    if-eq v0, v3, :cond_59

    .line 1222
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;->_startNodeID:I

    if-ne v0, v1, :cond_46

    goto :goto_59

    .line 1226
    :cond_46
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 1227
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    .line 1223
    :cond_59
    :goto_59
    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return v3
.end method
