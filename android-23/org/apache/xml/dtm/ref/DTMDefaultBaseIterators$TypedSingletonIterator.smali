.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedSingletonIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
    .param p2, "nodeType"    # I

    #@0
    .prologue
    .line 2160
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 2162
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;->_nodeType:I

    #@7
    .line 2160
    return-void
.end method


# virtual methods
.method public next()I
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 2174
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;->_currentNode:I

    #@3
    .line 2175
    .local v1, "result":I
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;->_nodeType:I

    #@5
    .line 2177
    .local v0, "nodeType":I
    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;->_currentNode:I

    #@7
    .line 2179
    const/16 v2, 0xe

    #@9
    if-lt v0, v2, :cond_0

    #@b
    .line 2180
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@d
    invoke-virtual {v2, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getExpandedTypeID(I)I

    #@10
    move-result v2

    #@11
    if-ne v2, v0, :cond_1

    #@13
    .line 2181
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;->returnNode(I)I

    #@16
    move-result v2

    #@17
    return v2

    #@18
    .line 2184
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@1a
    invoke-virtual {v2, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getNodeType(I)S

    #@1d
    move-result v2

    #@1e
    if-ne v2, v0, :cond_1

    #@20
    .line 2185
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;->returnNode(I)I

    #@23
    move-result v2

    #@24
    return v2

    #@25
    .line 2189
    :cond_1
    return v3
.end method
