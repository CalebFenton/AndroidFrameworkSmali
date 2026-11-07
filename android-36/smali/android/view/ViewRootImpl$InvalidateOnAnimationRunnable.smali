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
.field private greylist-max-o mPosted:Z

.field private greylist-max-o mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

.field private greylist-max-o mTempViews:[Landroid/view/View;

.field private final greylist-max-o mViewRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$AttachInfo$InvalidateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10774
    iput-object p1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10776
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    .line 10777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    return-void
.end method

.method private greylist-max-o postIfNeededLocked()V
    .registers 4

    .line 10856
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    if-nez v0, :cond_f

    .line 10857
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 10858
    iput-boolean v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    .line 10860
    :cond_f
    return-void
.end method


# virtual methods
.method public greylist-max-o addView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 10783
    monitor-enter p0

    .line 10784
    :try_start_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10785
    invoke-direct {p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->postIfNeededLocked()V

    .line 10786
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1c

    .line 10787
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_1b

    .line 10788
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->notifyCallbackPending()V

    .line 10790
    :cond_1b
    return-void

    .line 10786
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public greylist-max-o addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 10793
    monitor-enter p0

    .line 10794
    :try_start_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10795
    invoke-direct {p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->postIfNeededLocked()V

    .line 10796
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1c

    .line 10797
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_1b

    .line 10798
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->notifyCallbackPending()V

    .line 10800
    :cond_1b
    return-void

    .line 10796
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public greylist-max-o removeView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 10803
    monitor-enter p0

    .line 10804
    :try_start_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10806
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_c
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    if-lez v0, :cond_26

    .line 10807
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 10808
    .local v0, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v2, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    if-ne v2, p1, :cond_24

    .line 10809
    iget-object v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10810
    invoke-virtual {v0}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    .line 10812
    .end local v0    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :cond_24
    move v0, v1

    goto :goto_c

    .line 10814
    .end local v1    # "i":I
    :cond_26
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 10815
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 10816
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    .line 10818
    :cond_46
    monitor-exit p0

    .line 10819
    return-void

    .line 10818
    :catchall_48
    move-exception v0

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public whitelist test-api run()V
    .registers 10

    .line 10825
    monitor-enter p0

    .line 10826
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    .line 10828
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10829
    .local v0, "viewCount":I
    if-eqz v0, :cond_24

    .line 10830
    iget-object v1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    if-eqz v2, :cond_15

    .line 10831
    iget-object v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    goto :goto_17

    :cond_15
    new-array v2, v0, [Landroid/view/View;

    .line 10830
    :goto_17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    iput-object v1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    .line 10832
    iget-object v1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10835
    :cond_24
    iget-object v1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 10836
    .local v1, "viewRectCount":I
    if-eqz v1, :cond_44

    .line 10837
    iget-object v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    if-eqz v3, :cond_35

    .line 10838
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    goto :goto_37

    :cond_35
    new-array v3, v1, [Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 10837
    :goto_37
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/View$AttachInfo$InvalidateInfo;

    iput-object v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 10839
    iget-object v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 10841
    :cond_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_2 .. :try_end_45} :catchall_72

    .line 10843
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_46
    if-ge v2, v0, :cond_57

    .line 10844
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 10845
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 10843
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 10848
    .end local v2    # "i":I
    :cond_57
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_58
    if-ge v2, v1, :cond_71

    .line 10849
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    aget-object v3, v3, v2

    .line 10850
    .local v3, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v4, v3, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v5, v3, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v6, v3, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v7, v3, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v8, v3, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 10851
    invoke-virtual {v3}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    .line 10848
    .end local v3    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 10853
    .end local v2    # "i":I
    :cond_71
    return-void

    .line 10841
    .end local v0    # "viewCount":I
    .end local v1    # "viewRectCount":I
    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v0
.end method
