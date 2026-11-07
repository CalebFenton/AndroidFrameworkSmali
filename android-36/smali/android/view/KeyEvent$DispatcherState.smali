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
.field greylist-max-o mActiveLongPresses:Landroid/util/SparseIntArray;

.field greylist-max-o mDownKeyCode:I

.field greylist-max-o mDownTarget:Ljava/lang/Object;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 3515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3518
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public whitelist handleUpEvent(Landroid/view/KeyEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 3586
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 3588
    .local v0, "keyCode":I
    iget-object v1, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 3589
    .local v1, "index":I
    if-ltz v1, :cond_1a

    .line 3591
    invoke-static {p1}, Landroid/view/KeyEvent;->-$$Nest$fgetmFlags(Landroid/view/KeyEvent;)I

    move-result v2

    or-int/lit16 v2, v2, 0x120

    invoke-static {p1, v2}, Landroid/view/KeyEvent;->-$$Nest$fputmFlags(Landroid/view/KeyEvent;I)V

    .line 3592
    iget-object v2, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3594
    :cond_1a
    iget v2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    if-ne v2, v0, :cond_2d

    .line 3596
    invoke-static {p1}, Landroid/view/KeyEvent;->-$$Nest$fgetmFlags(Landroid/view/KeyEvent;)I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    invoke-static {p1, v2}, Landroid/view/KeyEvent;->-$$Nest$fputmFlags(Landroid/view/KeyEvent;I)V

    .line 3597
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 3598
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 3600
    :cond_2d
    return-void
.end method

.method public whitelist isTracking(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 3566
    iget v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist performedLongPress(Landroid/view/KeyEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 3576
    iget-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3577
    return-void
.end method

.method public whitelist reset()V
    .registers 2

    .line 3525
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 3526
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 3527
    iget-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 3528
    return-void
.end method

.method public whitelist reset(Ljava/lang/Object;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/Object;

    .line 3534
    iget-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    if-ne v0, p1, :cond_a

    .line 3536
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 3537
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 3539
    :cond_a
    return-void
.end method

.method public whitelist startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "target"    # Ljava/lang/Object;

    .line 3552
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_f

    .line 3557
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 3558
    iput-object p2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 3559
    return-void

    .line 3553
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only start tracking on a down event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
