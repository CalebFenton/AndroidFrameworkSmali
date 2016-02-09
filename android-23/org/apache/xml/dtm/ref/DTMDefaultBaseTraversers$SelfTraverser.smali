.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;
.super Lorg/apache/xml/dtm/DTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelfTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    .line 1401
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    #@3
    return-void
.end method


# virtual methods
.method public first(I)I
    .locals 0
    .param p1, "context"    # I

    #@0
    .prologue
    .line 1415
    return p1
.end method

.method public first(II)I
    .locals 1
    .param p1, "context"    # I
    .param p2, "expandedTypeID"    # I

    #@0
    .prologue
    .line 1432
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getExpandedTypeID(I)I

    #@5
    move-result v0

    #@6
    if-ne v0, p2, :cond_0

    #@8
    .end local p1    # "context":I
    :goto_0
    return p1

    #@9
    .restart local p1    # "context":I
    :cond_0
    const/4 p1, -0x1

    #@a
    goto :goto_0
.end method

.method public next(II)I
    .locals 1
    .param p1, "context"    # I
    .param p2, "current"    # I

    #@0
    .prologue
    .line 1445
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
    .line 1460
    const/4 v0, -0x1

    #@1
    return v0
.end method
