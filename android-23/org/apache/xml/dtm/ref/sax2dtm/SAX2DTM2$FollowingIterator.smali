.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FollowingIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@0
    .prologue
    .line 1050
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    return-void
.end method


# virtual methods
.method public next()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 1116
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->_currentNode:I

    #@3
    .line 1119
    .local v1, "node":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@5
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@8
    move-result v0

    #@9
    .line 1123
    .local v0, "current":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@b
    .line 1125
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@d
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@10
    move-result v2

    #@11
    .line 1126
    .local v2, "type":I
    if-ne v4, v2, :cond_1

    #@13
    .line 1127
    iput v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->_currentNode:I

    #@15
    .line 1128
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->returnNode(I)I

    #@18
    move-result v3

    #@19
    return v3

    #@1a
    .line 1131
    :cond_1
    const/4 v3, 0x2

    #@1b
    if-eq v3, v2, :cond_0

    #@1d
    const/16 v3, 0xd

    #@1f
    if-eq v3, v2, :cond_0

    #@21
    .line 1134
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@23
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@26
    move-result v3

    #@27
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->_currentNode:I

    #@29
    .line 1135
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->returnNode(I)I

    #@2c
    move-result v3

    #@2d
    return v3
.end method

.method public setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 4
    .param p1, "node"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1066
    if-nez p1, :cond_0

    #@3
    .line 1067
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@5
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    #@8
    move-result p1

    #@9
    .line 1068
    :cond_0
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->_isRestartable:Z

    #@b
    if-eqz v2, :cond_5

    #@d
    .line 1070
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->_startNode:I

    #@f
    .line 1074
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@11
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@14
    move-result p1

    #@15
    .line 1077
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@17
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@1a
    move-result v1

    #@1b
    .line 1079
    .local v1, "type":I
    const/4 v2, 0x2

    #@1c
    if-eq v2, v1, :cond_1

    #@1e
    const/16 v2, 0xd

    #@20
    if-ne v2, v1, :cond_2

    #@22
    .line 1081
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@24
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    #@27
    move-result p1

    #@28
    .line 1082
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2a
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    #@2d
    move-result v0

    #@2e
    .line 1084
    .local v0, "first":I
    if-eq v3, v0, :cond_2

    #@30
    .line 1085
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@32
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@35
    move-result v2

    #@36
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->_currentNode:I

    #@38
    .line 1086
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@3b
    move-result-object v2

    #@3c
    return-object v2

    #@3d
    .line 1092
    .end local v0    # "first":I
    :cond_2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@3f
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    #@42
    move-result v0

    #@43
    .line 1094
    .restart local v0    # "first":I
    if-ne v3, v0, :cond_3

    #@45
    .line 1095
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@47
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    #@4a
    move-result p1

    #@4b
    .line 1097
    :cond_3
    if-ne v3, v0, :cond_4

    #@4d
    if-ne v3, p1, :cond_2

    #@4f
    .line 1099
    :cond_4
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@51
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@54
    move-result v2

    #@55
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->_currentNode:I

    #@57
    .line 1102
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;->resetPosition()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@5a
    move-result-object v2

    #@5b
    return-object v2

    #@5c
    .line 1105
    .end local v0    # "first":I
    .end local v1    # "type":I
    :cond_5
    return-object p0
.end method
