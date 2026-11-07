.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedFollowingIterator"
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

    .line 1157
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;-><init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V

    .line 1158
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 8

    .line 1172
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->_nodeType:I

    .line 1173
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    const/16 v2, 0xe

    const/16 v3, 0xd

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-lt v0, v2, :cond_32

    :goto_12
    move v2, v1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    .line 1182
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v6

    if-eq v6, v5, :cond_21

    if-eq v4, v6, :cond_13

    if-eq v3, v6, :cond_13

    :cond_21
    if-eq v6, v5, :cond_24

    goto :goto_25

    :cond_24
    move v2, v5

    :goto_25
    if-eq v1, v5, :cond_5a

    .line 1188
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v6

    if-ne v6, v0, :cond_30

    goto :goto_5a

    :cond_30
    move v1, v2

    goto :goto_12

    :cond_32
    :goto_32
    move v2, v1

    :cond_33
    add-int/lit8 v2, v2, 0x1

    .line 1197
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v6

    if-eq v6, v5, :cond_41

    if-eq v4, v6, :cond_33

    if-eq v3, v6, :cond_33

    :cond_41
    if-eq v6, v5, :cond_44

    goto :goto_45

    :cond_44
    move v2, v5

    :goto_45
    if-eq v1, v5, :cond_5a

    .line 1203
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    .line 1204
    invoke-virtual {v6, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v6

    if-eq v6, v0, :cond_5a

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v6, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v6

    if-ne v6, v0, :cond_58

    goto :goto_5a

    :cond_58
    move v1, v2

    goto :goto_32

    .line 1207
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    if-ne v1, v5, :cond_65

    return v5

    .line 1208
    :cond_65
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method
