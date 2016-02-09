.class public Landroid/view/KeyEvent$DispatcherState;
.super Ljava/lang/Object;
.source "KeyEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DispatcherState"
.end annotation


# instance fields
.field mActiveLongPresses:Landroid/util/SparseIntArray;

.field mDownKeyCode:I

.field mDownTarget:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 2692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2695
    new-instance v0, Landroid/util/SparseIntArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    #@a
    .line 2692
    return-void
.end method


# virtual methods
.method public handleUpEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2763
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@4
    move-result v1

    #@5
    .line 2765
    .local v1, "keyCode":I
    iget-object v2, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    #@7
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@a
    move-result v0

    #@b
    .line 2766
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@d
    .line 2768
    invoke-static {p1}, Landroid/view/KeyEvent;->-get0(Landroid/view/KeyEvent;)I

    #@10
    move-result v2

    #@11
    or-int/lit16 v2, v2, 0x120

    #@13
    invoke-static {p1, v2}, Landroid/view/KeyEvent;->-set0(Landroid/view/KeyEvent;I)I

    #@16
    .line 2769
    iget-object v2, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    #@18
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    #@1b
    .line 2771
    :cond_0
    iget v2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    #@1d
    if-ne v2, v1, :cond_1

    #@1f
    .line 2773
    invoke-static {p1}, Landroid/view/KeyEvent;->-get0(Landroid/view/KeyEvent;)I

    #@22
    move-result v2

    #@23
    or-int/lit16 v2, v2, 0x200

    #@25
    invoke-static {p1, v2}, Landroid/view/KeyEvent;->-set0(Landroid/view/KeyEvent;I)I

    #@28
    .line 2774
    iput v3, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    #@2a
    .line 2775
    const/4 v2, 0x0

    #@2b
    iput-object v2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    #@2d
    .line 2762
    :cond_1
    return-void
.end method

.method public isTracking(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2743
    iget v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    #@2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@5
    move-result v1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public performedLongPress(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2753
    iget-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x1

    #@7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@a
    .line 2752
    return-void
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 2702
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    #@3
    .line 2703
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    #@6
    .line 2704
    iget-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    #@8
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@b
    .line 2700
    return-void
.end method

.method public reset(Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2711
    iget-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 2713
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    #@7
    .line 2714
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    #@a
    .line 2710
    :cond_0
    return-void
.end method

.method public startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2729
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2730
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 2731
    const-string/jumbo v1, "Can only start tracking on a down event"

    #@b
    .line 2730
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 2734
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    #@15
    .line 2735
    iput-object p2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    #@17
    .line 2728
    return-void
.end method
