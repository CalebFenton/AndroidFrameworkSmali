.class final Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InvalidateOnAnimationRunnable"
.end annotation


# instance fields
.field private mPosted:Z

.field private mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

.field private mTempViews:[Landroid/view/View;

.field private final mViewRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View$AttachInfo$InvalidateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 6065
    iput-object p1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 6067
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    #@c
    .line 6069
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 6068
    iput-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    #@13
    .line 6065
    return-void
.end method

.method private postIfNeededLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 6141
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 6142
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    #@7
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@d
    .line 6143
    iput-boolean v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    #@f
    .line 6140
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 6074
    monitor-enter p0

    #@1
    .line 6075
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6
    .line 6076
    invoke-direct {p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->postIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 6073
    return-void

    #@b
    .line 6074
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;

    #@0
    .prologue
    .line 6081
    monitor-enter p0

    #@1
    .line 6082
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6
    .line 6083
    invoke-direct {p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->postIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 6080
    return-void

    #@b
    .line 6081
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 6088
    monitor-enter p0

    #@1
    .line 6089
    :try_start_0
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@6
    .line 6091
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    #@e
    .end local v0    # "i":I
    .local v1, "i":I
    if-lez v0, :cond_1

    #@10
    .line 6092
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroid/view/View$AttachInfo$InvalidateInfo;

    #@18
    .line 6093
    .local v2, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v3, v2, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    #@1a
    if-ne v3, p1, :cond_0

    #@1c
    .line 6094
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@21
    .line 6095
    invoke-virtual {v2}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    #@24
    :cond_0
    move v0, v1

    #@25
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@26
    .line 6099
    .end local v0    # "i":I
    .end local v2    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    .restart local v1    # "i":I
    :cond_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    #@28
    if-eqz v3, :cond_2

    #@2a
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_2

    #@32
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_2

    #@3a
    .line 6100
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    #@3c
    iget-object v3, v3, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    #@3e
    const/4 v4, 0x1

    #@3f
    const/4 v5, 0x0

    #@40
    invoke-virtual {v3, v4, p0, v5}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@43
    .line 6101
    const/4 v3, 0x0

    #@44
    iput-boolean v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    :cond_2
    monitor-exit p0

    #@47
    .line 6087
    return-void

    #@48
    .line 6088
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@49
    monitor-exit p0

    #@4a
    throw v3
.end method

.method public run()V
    .locals 9

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 6110
    monitor-enter p0

    #@2
    .line 6111
    const/4 v4, 0x0

    #@3
    :try_start_0
    iput-boolean v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    #@5
    .line 6113
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    .line 6114
    .local v2, "viewCount":I
    if-eqz v2, :cond_0

    #@d
    .line 6115
    iget-object v5, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    #@f
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    #@11
    if-eqz v4, :cond_2

    #@13
    .line 6116
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    #@15
    .line 6115
    :goto_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, [Landroid/view/View;

    #@1b
    iput-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    #@1d
    .line 6117
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@22
    .line 6120
    :cond_0
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v3

    #@28
    .line 6121
    .local v3, "viewRectCount":I
    if-eqz v3, :cond_1

    #@2a
    .line 6122
    iget-object v5, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    #@2c
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    #@2e
    if-eqz v4, :cond_3

    #@30
    .line 6123
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    #@32
    .line 6122
    :goto_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@35
    move-result-object v4

    #@36
    check-cast v4, [Landroid/view/View$AttachInfo$InvalidateInfo;

    #@38
    iput-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    #@3a
    .line 6124
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    :cond_1
    monitor-exit p0

    #@40
    .line 6128
    const/4 v0, 0x0

    #@41
    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_4

    #@43
    .line 6129
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    #@45
    aget-object v4, v4, v0

    #@47
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    #@4a
    .line 6130
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    #@4c
    aput-object v6, v4, v0

    #@4e
    .line 6128
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_2

    #@51
    .line 6116
    .end local v0    # "i":I
    .end local v3    # "viewRectCount":I
    :cond_2
    :try_start_1
    new-array v4, v2, [Landroid/view/View;

    #@53
    goto :goto_0

    #@54
    .line 6123
    .restart local v3    # "viewRectCount":I
    :cond_3
    new-array v4, v3, [Landroid/view/View$AttachInfo$InvalidateInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    goto :goto_1

    #@57
    .line 6110
    .end local v2    # "viewCount":I
    .end local v3    # "viewRectCount":I
    :catchall_0
    move-exception v4

    #@58
    monitor-exit p0

    #@59
    throw v4

    #@5a
    .line 6133
    .restart local v0    # "i":I
    .restart local v2    # "viewCount":I
    .restart local v3    # "viewRectCount":I
    :cond_4
    const/4 v0, 0x0

    #@5b
    :goto_3
    if-ge v0, v3, :cond_5

    #@5d
    .line 6134
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    #@5f
    aget-object v1, v4, v0

    #@61
    .line 6135
    .local v1, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    #@63
    iget v5, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    #@65
    iget v6, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    #@67
    iget v7, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    #@69
    iget v8, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    #@6b
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    #@6e
    .line 6136
    invoke-virtual {v1}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    #@71
    .line 6133
    add-int/lit8 v0, v0, 0x1

    #@73
    goto :goto_3

    #@74
    .line 6107
    .end local v1    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :cond_5
    return-void
.end method
