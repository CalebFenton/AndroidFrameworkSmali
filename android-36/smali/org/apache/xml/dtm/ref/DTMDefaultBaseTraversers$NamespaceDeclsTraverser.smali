.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;
.super Lorg/apache/xml/dtm/DTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NamespaceDeclsTraverser"
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

    .line 1025
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    return-void
.end method

.method synthetic constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public greylist next(II)I
    .registers 4

    const/4 v0, 0x0

    if-ne p1, p2, :cond_a

    .line 1040
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getFirstNamespaceNode(IZ)I

    move-result p0

    return p0

    .line 1041
    :cond_a
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNamespaceNode(IIZ)I

    move-result p0

    return p0
.end method

.method public greylist next(III)I
    .registers 6

    const/4 v0, 0x0

    if-ne p1, p2, :cond_a

    .line 1058
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p2, p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getFirstNamespaceNode(IZ)I

    move-result p2

    goto :goto_10

    .line 1059
    :cond_a
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNamespaceNode(IIZ)I

    move-result p2

    .line 1063
    :cond_10
    :goto_10
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v1

    if-ne v1, p3, :cond_19

    return p2

    .line 1066
    :cond_19
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    .line 1067
    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNamespaceNode(IIZ)I

    move-result p2

    const/4 v1, -0x1

    if-ne v1, p2, :cond_10

    return v1
.end method
