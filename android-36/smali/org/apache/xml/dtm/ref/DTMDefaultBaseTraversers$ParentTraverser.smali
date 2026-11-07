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
.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1127
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    return-void
.end method

.method synthetic constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public greylist first(I)I
    .registers 2

    .line 1143
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getParent(I)I

    move-result p0

    return p0
.end method

.method public greylist first(II)I
    .registers 4

    .line 1163
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 1165
    :cond_6
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_22

    .line 1167
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-ne v0, p2, :cond_6

    .line 1168
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_22
    return v0
.end method

.method public greylist next(II)I
    .registers 3

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist next(III)I
    .registers 4

    .line 0
    const/4 p0, -0x1

    return p0
.end method
