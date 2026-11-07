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

    .line 1298
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    return-void
.end method

.method synthetic constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public greylist next(II)I
    .registers 4

    .line 1312
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    .line 1314
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_d
    if-ltz p1, :cond_27

    .line 1316
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p2, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result p2

    const/4 v0, 0x2

    if-eq v0, p2, :cond_24

    const/16 v0, 0xd

    if-ne v0, p2, :cond_1d

    goto :goto_24

    .line 1321
    :cond_1d
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_24
    :goto_24
    add-int/lit8 p1, p1, -0x1

    goto :goto_d

    :cond_27
    const/4 p0, -0x1

    return p0
.end method

.method public greylist next(III)I
    .registers 5

    .line 1340
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    .line 1342
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_d
    if-ltz p1, :cond_23

    .line 1344
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    iget-object p2, p2, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p2, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p2

    if-eq p2, p3, :cond_1c

    add-int/lit8 p1, p1, -0x1

    goto :goto_d

    .line 1349
    :cond_1c
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_23
    const/4 p0, -0x1

    return p0
.end method
