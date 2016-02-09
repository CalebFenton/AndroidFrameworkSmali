.class Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendHoverEnterAndMoveDelayed"
.end annotation


# instance fields
.field private final LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

.field private final mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerIdBits:I

.field private mPolicyFlags:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/accessibility/TouchExplorer;

    #@0
    .prologue
    .line 1357
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1358
    const-string/jumbo v0, "SendHoverEnterAndMoveDelayed"

    #@8
    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

    #@a
    .line 1360
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    #@11
    .line 1357
    return-void
.end method

.method private clear()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1390
    const/4 v2, -0x1

    #@2
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    #@4
    .line 1391
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    #@6
    .line 1392
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    #@8
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@b
    move-result v0

    #@c
    .line 1393
    .local v0, "eventCount":I
    add-int/lit8 v1, v0, -0x1

    #@e
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@10
    .line 1394
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    #@12
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroid/view/MotionEvent;

    #@18
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    #@1b
    .line 1393
    add-int/lit8 v1, v1, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1389
    :cond_0
    return-void
.end method

.method private isPending()Z
    .locals 1

    #@0
    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get3(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method


# virtual methods
.method public addEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1375
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    #@2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9
    .line 1374
    return-void
.end method

.method public cancel()V
    .locals 1

    #@0
    .prologue
    .line 1379
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1380
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@8
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get3(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@f
    .line 1381
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->clear()V

    #@12
    .line 1378
    :cond_0
    return-void
.end method

.method public forceSendAndRemove()V
    .locals 1

    #@0
    .prologue
    .line 1399
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1400
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->run()V

    #@9
    .line 1401
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    #@c
    .line 1398
    :cond_0
    return-void
.end method

.method public post(Landroid/view/MotionEvent;ZII)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "touchExplorationInProgress"    # Z
    .param p3, "pointerIdBits"    # I
    .param p4, "policyFlags"    # I

    #@0
    .prologue
    .line 1367
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    #@3
    .line 1368
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    #@6
    .line 1369
    iput p3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    #@8
    .line 1370
    iput p4, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    #@a
    .line 1371
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@c
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get3(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@12
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer;->-get0(Lcom/android/server/accessibility/TouchExplorer;)I

    #@15
    move-result v1

    #@16
    int-to-long v2, v1

    #@17
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@1a
    .line 1366
    return-void
.end method

.method public run()V
    .locals 7

    #@0
    .prologue
    .line 1407
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    const/16 v3, 0x200

    #@4
    invoke-static {v2, v3}, Lcom/android/server/accessibility/TouchExplorer;->-wrap1(Lcom/android/server/accessibility/TouchExplorer;I)V

    #@7
    .line 1409
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    #@9
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    .line 1411
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@11
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    #@13
    const/4 v4, 0x0

    #@14
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroid/view/MotionEvent;

    #@1a
    .line 1412
    iget v4, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    #@1c
    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    #@1e
    .line 1411
    const/16 v6, 0x9

    #@20
    invoke-static {v3, v2, v6, v4, v5}, Lcom/android/server/accessibility/TouchExplorer;->-wrap5(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V

    #@23
    .line 1419
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    #@25
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@28
    move-result v0

    #@29
    .line 1420
    .local v0, "eventCount":I
    const/4 v1, 0x1

    #@2a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@2c
    .line 1421
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2e
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    #@30
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Landroid/view/MotionEvent;

    #@36
    .line 1422
    iget v4, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    #@38
    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    #@3a
    .line 1421
    const/4 v6, 0x7

    #@3b
    invoke-static {v3, v2, v6, v4, v5}, Lcom/android/server/accessibility/TouchExplorer;->-wrap5(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V

    #@3e
    .line 1420
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_0

    #@41
    .line 1429
    .end local v0    # "eventCount":I
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->clear()V

    #@44
    .line 1405
    return-void
.end method
