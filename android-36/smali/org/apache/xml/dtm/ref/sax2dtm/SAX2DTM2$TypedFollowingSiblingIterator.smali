.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingSiblingIterator;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingSiblingIterator;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedFollowingSiblingIterator"
.end annotation


# instance fields
.field private final greylist _nodeType:I

.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
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

    .line 462
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V

    .line 463
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingSiblingIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 5

    .line 473
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return v1

    .line 478
    :cond_6
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingSiblingIterator;->_nodeType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1c

    .line 481
    :goto_b
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v0

    if-eq v0, v1, :cond_2f

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v3

    if-eq v3, v2, :cond_2f

    goto :goto_b

    .line 484
    :cond_1c
    :goto_1c
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v0

    if-eq v0, v1, :cond_2f

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v2

    const/16 v3, 0xe

    if-ge v2, v3, :cond_2f

    goto :goto_1c

    .line 487
    :cond_2f
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    if-ne v0, v1, :cond_34

    return v1

    .line 491
    :cond_34
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingSiblingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method
