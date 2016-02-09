.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;
.super Lorg/apache/xml/dtm/DTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrecedingTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    .line 1211
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    #@3
    return-void
.end method


# virtual methods
.method protected isAncestor(II)Z
    .locals 1
    .param p1, "contextIdent"    # I
    .param p2, "currentIdent"    # I

    #@0
    .prologue
    .line 1227
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@4
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@7
    move-result p1

    #@8
    :goto_0
    const/4 v0, -0x1

    #@9
    if-eq v0, p1, :cond_1

    #@b
    .line 1230
    if-ne p1, p2, :cond_0

    #@d
    .line 1231
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 1228
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@11
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@13
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@16
    move-result p1

    #@17
    goto :goto_0

    #@18
    .line 1234
    :cond_1
    const/4 v0, 0x0

    #@19
    return v0
.end method

.method public next(II)I
    .locals 3
    .param p1, "context"    # I
    .param p2, "current"    # I

    #@0
    .prologue
    .line 1248
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@5
    move-result v0

    #@6
    .line 1250
    .local v0, "subtreeRootIdent":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@8
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@b
    move-result v2

    #@c
    add-int/lit8 p2, v2, -0x1

    #@e
    :goto_0
    if-ltz p2, :cond_2

    #@10
    .line 1252
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@12
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_type(I)S

    #@15
    move-result v1

    #@16
    .line 1254
    .local v1, "type":S
    const/4 v2, 0x2

    #@17
    if-eq v2, v1, :cond_0

    #@19
    const/16 v2, 0xd

    #@1b
    if-ne v2, v1, :cond_1

    #@1d
    .line 1250
    :cond_0
    add-int/lit8 p2, p2, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 1255
    :cond_1
    invoke-virtual {p0, v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->isAncestor(II)Z

    #@23
    move-result v2

    #@24
    .line 1254
    if-nez v2, :cond_0

    #@26
    .line 1258
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@28
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    #@2b
    move-result v2

    #@2c
    return v2

    #@2d
    .line 1261
    .end local v1    # "type":S
    :cond_2
    const/4 v2, -0x1

    #@2e
    return v2
.end method

.method public next(III)I
    .locals 3
    .param p1, "context"    # I
    .param p2, "current"    # I
    .param p3, "expandedTypeID"    # I

    #@0
    .prologue
    .line 1277
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@5
    move-result v1

    #@6
    .line 1279
    .local v1, "subtreeRootIdent":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@8
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@b
    move-result v2

    #@c
    add-int/lit8 p2, v2, -0x1

    #@e
    :goto_0
    if-ltz p2, :cond_2

    #@10
    .line 1281
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@12
    iget-object v2, v2, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@14
    invoke-virtual {v2, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@17
    move-result v0

    #@18
    .line 1283
    .local v0, "exptype":I
    if-ne v0, p3, :cond_0

    #@1a
    .line 1284
    invoke-virtual {p0, v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->isAncestor(II)Z

    #@1d
    move-result v2

    #@1e
    .line 1283
    if-eqz v2, :cond_1

    #@20
    .line 1279
    :cond_0
    add-int/lit8 p2, p2, -0x1

    #@22
    goto :goto_0

    #@23
    .line 1287
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@25
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    #@28
    move-result v2

    #@29
    return v2

    #@2a
    .line 1290
    .end local v0    # "exptype":I
    :cond_2
    const/4 v2, -0x1

    #@2b
    return v2
.end method
