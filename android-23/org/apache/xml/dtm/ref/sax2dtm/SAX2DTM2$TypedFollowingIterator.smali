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
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 1156
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;-><init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V

    #@5
    .line 1158
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->_nodeType:I

    #@7
    .line 1156
    return-void
.end method


# virtual methods
.method public next()I
    .locals 10

    #@0
    .prologue
    const/16 v9, 0xd

    #@2
    const/4 v8, 0x2

    #@3
    const/4 v5, -0x1

    #@4
    .line 1172
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->_nodeType:I

    #@6
    .line 1173
    .local v3, "nodeType":I
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@8
    iget v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->_currentNode:I

    #@a
    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@d
    move-result v1

    #@e
    .line 1175
    .local v1, "currentNodeID":I
    const/16 v6, 0xe

    #@10
    if-lt v3, v6, :cond_6

    #@12
    .line 1177
    :cond_0
    move v2, v1

    #@13
    .line 1178
    .local v2, "node":I
    move v0, v2

    #@14
    .line 1181
    .local v0, "current":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@16
    .line 1182
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@18
    invoke-virtual {v6, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@1b
    move-result v4

    #@1c
    .line 1184
    .local v4, "type":I
    if-eq v4, v5, :cond_2

    #@1e
    if-eq v8, v4, :cond_1

    #@20
    if-eq v9, v4, :cond_1

    #@22
    .line 1186
    :cond_2
    if-eq v4, v5, :cond_4

    #@24
    move v1, v0

    #@25
    .line 1188
    :goto_0
    if-eq v2, v5, :cond_3

    #@27
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@29
    invoke-virtual {v6, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@2c
    move-result v6

    #@2d
    if-ne v6, v3, :cond_0

    #@2f
    .line 1207
    :cond_3
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@31
    invoke-virtual {v6, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@34
    move-result v6

    #@35
    iput v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->_currentNode:I

    #@37
    .line 1208
    if-ne v2, v5, :cond_9

    #@39
    :goto_1
    return v5

    #@3a
    .line 1186
    :cond_4
    const/4 v1, -0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1201
    :cond_5
    if-eq v4, v5, :cond_8

    #@3e
    move v1, v0

    #@3f
    .line 1203
    :goto_2
    if-eq v2, v5, :cond_3

    #@41
    .line 1204
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@43
    invoke-virtual {v6, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@46
    move-result v6

    #@47
    if-eq v6, v3, :cond_3

    #@49
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@4b
    invoke-virtual {v6, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@4e
    move-result v6

    #@4f
    if-eq v6, v3, :cond_3

    #@51
    .line 1192
    .end local v0    # "current":I
    .end local v2    # "node":I
    .end local v4    # "type":I
    :cond_6
    move v2, v1

    #@52
    .line 1193
    .restart local v2    # "node":I
    move v0, v2

    #@53
    .line 1196
    .restart local v0    # "current":I
    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    #@55
    .line 1197
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@57
    invoke-virtual {v6, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@5a
    move-result v4

    #@5b
    .line 1199
    .restart local v4    # "type":I
    if-eq v4, v5, :cond_5

    #@5d
    if-eq v8, v4, :cond_7

    #@5f
    if-ne v9, v4, :cond_5

    #@61
    goto :goto_3

    #@62
    .line 1201
    :cond_8
    const/4 v1, -0x1

    #@63
    goto :goto_2

    #@64
    .line 1208
    :cond_9
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@66
    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@69
    move-result v5

    #@6a
    invoke-virtual {p0, v5}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->returnNode(I)I

    #@6d
    move-result v5

    #@6e
    goto :goto_1
.end method
