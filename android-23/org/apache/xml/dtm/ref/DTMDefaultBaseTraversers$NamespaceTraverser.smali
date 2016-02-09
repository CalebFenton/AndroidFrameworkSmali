.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;
.super Lorg/apache/xml/dtm/DTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NamespaceTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    .line 1076
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    #@3
    return-void
.end method


# virtual methods
.method public next(II)I
    .locals 2
    .param p1, "context"    # I
    .param p2, "current"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1090
    if-ne p1, p2, :cond_0

    #@3
    .line 1091
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@5
    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getFirstNamespaceNode(IZ)I

    #@8
    move-result v0

    #@9
    .line 1090
    :goto_0
    return v0

    #@a
    .line 1092
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@c
    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getNextNamespaceNode(IIZ)I

    #@f
    move-result v0

    #@10
    goto :goto_0
.end method

.method public next(III)I
    .locals 3
    .param p1, "context"    # I
    .param p2, "current"    # I
    .param p3, "expandedTypeID"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v1, 0x1

    #@2
    .line 1108
    if-ne p1, p2, :cond_1

    #@4
    .line 1109
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@6
    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getFirstNamespaceNode(IZ)I

    #@9
    move-result p2

    #@a
    .line 1114
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@c
    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getExpandedTypeID(I)I

    #@f
    move-result v0

    #@10
    if-ne v0, p3, :cond_2

    #@12
    .line 1115
    return p2

    #@13
    .line 1110
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@15
    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getNextNamespaceNode(IIZ)I

    #@18
    move-result p2

    #@19
    goto :goto_0

    #@1a
    .line 1118
    :cond_2
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@1c
    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getNextNamespaceNode(IIZ)I

    #@1f
    move-result p2

    #@20
    .line 1117
    if-ne v2, p2, :cond_0

    #@22
    .line 1120
    return v2
.end method
