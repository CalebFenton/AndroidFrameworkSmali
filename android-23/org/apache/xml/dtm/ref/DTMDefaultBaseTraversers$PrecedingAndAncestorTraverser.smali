.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;
.super Lorg/apache/xml/dtm/DTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrecedingAndAncestorTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    .line 1298
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    #@3
    return-void
.end method


# virtual methods
.method public next(II)I
    .locals 3
    .param p1, "context"    # I
    .param p2, "current"    # I

    #@0
    .prologue
    .line 1312
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@5
    move-result v0

    #@6
    .line 1314
    .local v0, "subtreeRootIdent":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

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
    .line 1316
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@12
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->_type(I)S

    #@15
    move-result v1

    #@16
    .line 1318
    .local v1, "type":S
    const/4 v2, 0x2

    #@17
    if-eq v2, v1, :cond_0

    #@19
    const/16 v2, 0xd

    #@1b
    if-ne v2, v1, :cond_1

    #@1d
    .line 1314
    :cond_0
    add-int/lit8 p2, p2, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 1321
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@22
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    #@25
    move-result v2

    #@26
    return v2

    #@27
    .line 1324
    .end local v1    # "type":S
    :cond_2
    const/4 v2, -0x1

    #@28
    return v2
.end method

.method public next(III)I
    .locals 3
    .param p1, "context"    # I
    .param p2, "current"    # I
    .param p3, "expandedTypeID"    # I

    #@0
    .prologue
    .line 1340
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-virtual {v2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@5
    move-result v1

    #@6
    .line 1342
    .local v1, "subtreeRootIdent":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@8
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@b
    move-result v2

    #@c
    add-int/lit8 p2, v2, -0x1

    #@e
    :goto_0
    if-ltz p2, :cond_1

    #@10
    .line 1344
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@12
    iget-object v2, v2, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@14
    invoke-virtual {v2, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@17
    move-result v0

    #@18
    .line 1346
    .local v0, "exptype":I
    if-eq v0, p3, :cond_0

    #@1a
    .line 1342
    add-int/lit8 p2, p2, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1349
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@1f
    invoke-virtual {v2, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    #@22
    move-result v2

    #@23
    return v2

    #@24
    .line 1352
    .end local v0    # "exptype":I
    :cond_1
    const/4 v2, -0x1

    #@25
    return v2
.end method
