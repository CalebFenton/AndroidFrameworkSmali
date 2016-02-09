.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;
.super Lorg/apache/xml/dtm/DTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParentTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    .line 1127
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    #@3
    return-void
.end method


# virtual methods
.method public first(I)I
    .locals 1
    .param p1, "context"    # I

    #@0
    .prologue
    .line 1143
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getParent(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public first(II)I
    .locals 2
    .param p1, "current"    # I
    .param p2, "expandedTypeID"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 1163
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@3
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeIdentity(I)I

    #@6
    move-result p1

    #@7
    .line 1165
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@9
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@b
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@e
    move-result p1

    #@f
    if-eq v1, p1, :cond_1

    #@11
    .line 1167
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@13
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@15
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@18
    move-result v0

    #@19
    if-ne v0, p2, :cond_0

    #@1b
    .line 1168
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@1d
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->makeNodeHandle(I)I

    #@20
    move-result v0

    #@21
    return v0

    #@22
    .line 1171
    :cond_1
    return v1
.end method

.method public next(II)I
    .locals 1
    .param p1, "context"    # I
    .param p2, "current"    # I

    #@0
    .prologue
    .line 1186
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public next(III)I
    .locals 1
    .param p1, "context"    # I
    .param p2, "current"    # I
    .param p3, "expandedTypeID"    # I

    #@0
    .prologue
    .line 1204
    const/4 v0, -0x1

    #@1
    return v0
.end method
