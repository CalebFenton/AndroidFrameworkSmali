.class final Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformLongPressDelayed"
.end annotation


# instance fields
.field private mEvent:Landroid/view/MotionEvent;

.field private mPolicyFlags:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->isPending()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/TouchExplorer;

    #@0
    .prologue
    .line 1298
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/TouchExplorer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    #@3
    return-void
.end method

.method private clear()V
    .locals 1

    #@0
    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    #@2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@5
    .line 1349
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    #@8
    .line 1350
    const/4 v0, 0x0

    #@9
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    #@b
    .line 1347
    return-void
.end method

.method private isPending()Z
    .locals 1

    #@0
    .prologue
    .line 1316
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

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
.method public cancel()V
    .locals 1

    #@0
    .prologue
    .line 1309
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1310
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@6
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get3(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@d
    .line 1311
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->clear()V

    #@10
    .line 1308
    :cond_0
    return-void
.end method

.method public post(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 1303
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    #@6
    .line 1304
    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    #@8
    .line 1305
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@a
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->-get3(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    #@d
    move-result-object v0

    #@e
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@11
    move-result v1

    #@12
    int-to-long v2, v1

    #@13
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@16
    .line 1302
    return-void
.end method

.method public run()V
    .locals 7

    #@0
    .prologue
    .line 1322
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->-get5(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getPointerCount()I

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_0

    #@10
    .line 1323
    return-void

    #@11
    .line 1326
    :cond_0
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    #@13
    iget-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    #@15
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionIndex()I

    #@18
    move-result v5

    #@19
    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@1c
    move-result v1

    #@1d
    .line 1327
    .local v1, "pointerId":I
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    #@1f
    invoke-virtual {v4, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@22
    move-result v2

    #@23
    .line 1329
    .local v2, "pointerIndex":I
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@25
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->-get11(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Point;

    #@28
    move-result-object v0

    #@29
    .line 1330
    .local v0, "clickLocation":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@2b
    invoke-static {v4, v0}, Lcom/android/server/accessibility/TouchExplorer;->-wrap0(Lcom/android/server/accessibility/TouchExplorer;Landroid/graphics/Point;)I

    #@2e
    move-result v3

    #@2f
    .line 1332
    .local v3, "result":I
    if-nez v3, :cond_1

    #@31
    .line 1333
    return-void

    #@32
    .line 1336
    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@34
    invoke-static {v4, v1}, Lcom/android/server/accessibility/TouchExplorer;->-set3(Lcom/android/server/accessibility/TouchExplorer;I)I

    #@37
    .line 1337
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@39
    iget-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    #@3b
    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->getX(I)F

    #@3e
    move-result v5

    #@3f
    float-to-int v5, v5

    #@40
    iget v6, v0, Landroid/graphics/Point;->x:I

    #@42
    sub-int/2addr v5, v6

    #@43
    invoke-static {v4, v5}, Lcom/android/server/accessibility/TouchExplorer;->-set1(Lcom/android/server/accessibility/TouchExplorer;I)I

    #@46
    .line 1338
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@48
    iget-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    #@4a
    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->getY(I)F

    #@4d
    move-result v5

    #@4e
    float-to-int v5, v5

    #@4f
    iget v6, v0, Landroid/graphics/Point;->y:I

    #@51
    sub-int/2addr v5, v6

    #@52
    invoke-static {v4, v5}, Lcom/android/server/accessibility/TouchExplorer;->-set2(Lcom/android/server/accessibility/TouchExplorer;I)I

    #@55
    .line 1340
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@57
    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    #@59
    invoke-static {v4, v5}, Lcom/android/server/accessibility/TouchExplorer;->-wrap4(Lcom/android/server/accessibility/TouchExplorer;I)V

    #@5c
    .line 1342
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@5e
    const/4 v5, 0x4

    #@5f
    invoke-static {v4, v5}, Lcom/android/server/accessibility/TouchExplorer;->-set0(Lcom/android/server/accessibility/TouchExplorer;I)I

    #@62
    .line 1343
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@64
    iget-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    #@66
    iget v6, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    #@68
    invoke-static {v4, v5, v6}, Lcom/android/server/accessibility/TouchExplorer;->-wrap3(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;I)V

    #@6b
    .line 1344
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->clear()V

    #@6e
    .line 1320
    return-void
.end method
