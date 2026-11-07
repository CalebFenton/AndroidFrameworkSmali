.class Landroid/view/ViewRootImpl$4;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2438
    iput-object p1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist toViewScreenState(I)I
    .registers 3
    .param p1, "displayState"    # I

    .line 2483
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 2484
    const/4 v0, 0x0

    goto :goto_6

    :cond_5
    nop

    .line 2483
    :goto_6
    return v0
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 2480
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .registers 8
    .param p1, "displayId"    # I

    .line 2441
    iget-object v0, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mExtraDisplayListenerLogging:Z

    if-eqz v0, :cond_26

    .line 2442
    iget-object v0, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received onDisplayChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    :cond_26
    iget-object v0, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_c7

    iget-object v0, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_c7

    .line 2445
    iget-object v0, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 2446
    .local v0, "oldDisplayState":I
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    .line 2447
    .local v1, "newDisplayState":I
    iget-object v2, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mExtraDisplayListenerLogging:Z

    if-eqz v2, :cond_70

    .line 2448
    iget-object v2, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DisplayState - old: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    :cond_70
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 2452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vri#screenState["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2455
    :cond_9b
    if-eq v0, v1, :cond_c7

    .line 2456
    iget-object v2, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 2457
    iget-object v2, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    .line 2458
    if-eqz v0, :cond_c7

    .line 2459
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$4;->toViewScreenState(I)I

    move-result v2

    .line 2460
    .local v2, "oldScreenState":I
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl$4;->toViewScreenState(I)I

    move-result v3

    .line 2461
    .local v3, "newScreenState":I
    if-eq v2, v3, :cond_bb

    .line 2462
    iget-object v4, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 2464
    :cond_bb
    const/4 v4, 0x1

    if-ne v0, v4, :cond_c7

    .line 2466
    iget-object v5, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v4, v5, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2467
    iget-object v4, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2472
    .end local v0    # "oldDisplayState":I
    .end local v1    # "newDisplayState":I
    .end local v2    # "oldScreenState":I
    .end local v3    # "newScreenState":I
    :cond_c7
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 2476
    return-void
.end method
