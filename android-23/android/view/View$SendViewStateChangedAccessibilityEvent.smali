.class Landroid/view/View$SendViewStateChangedAccessibilityEvent;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendViewStateChangedAccessibilityEvent"
.end annotation


# instance fields
.field private mChangeTypes:I

.field private mLastEventTimeMillis:J

.field private mPosted:Z

.field private mPostedWithDelay:Z

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/View;

    #@0
    .prologue
    .line 22303
    iput-object p1, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->this$0:Landroid/view/View;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 22304
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mChangeTypes:I

    #@8
    .line 22303
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$SendViewStateChangedAccessibilityEvent;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/View;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/View$SendViewStateChangedAccessibilityEvent;-><init>(Landroid/view/View;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 22311
    iput-boolean v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mPosted:Z

    #@3
    .line 22312
    iput-boolean v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mPostedWithDelay:Z

    #@5
    .line 22313
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@8
    move-result-wide v2

    #@9
    iput-wide v2, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mLastEventTimeMillis:J

    #@b
    .line 22314
    iget-object v1, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->this$0:Landroid/view/View;

    #@d
    iget-object v1, v1, Landroid/view/View;->mContext:Landroid/content/Context;

    #@f
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 22315
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    #@1c
    move-result-object v0

    #@1d
    .line 22316
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v1, 0x800

    #@1f
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    #@22
    .line 22317
    iget v1, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mChangeTypes:I

    #@24
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    #@27
    .line 22318
    iget-object v1, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->this$0:Landroid/view/View;

    #@29
    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    #@2c
    .line 22320
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    iput v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mChangeTypes:I

    #@2e
    .line 22310
    return-void
.end method

.method public runOrPost(I)V
    .locals 9
    .param p1, "changeType"    # I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 22324
    iget v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mChangeTypes:I

    #@3
    or-int/2addr v4, p1

    #@4
    iput v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mChangeTypes:I

    #@6
    .line 22328
    iget-object v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->this$0:Landroid/view/View;

    #@8
    invoke-static {v4}, Landroid/view/View;->-wrap0(Landroid/view/View;)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_2

    #@e
    .line 22330
    iget-boolean v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mPostedWithDelay:Z

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 22331
    iget-object v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->this$0:Landroid/view/View;

    #@14
    invoke-virtual {v4, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@17
    .line 22332
    const/4 v4, 0x0

    #@18
    iput-boolean v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mPostedWithDelay:Z

    #@1a
    .line 22335
    :cond_0
    iget-boolean v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mPosted:Z

    #@1c
    if-nez v4, :cond_1

    #@1e
    .line 22336
    iget-object v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->this$0:Landroid/view/View;

    #@20
    invoke-virtual {v4, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@23
    .line 22337
    iput-boolean v8, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mPosted:Z

    #@25
    .line 22339
    :cond_1
    return-void

    #@26
    .line 22342
    :cond_2
    iget-boolean v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mPosted:Z

    #@28
    if-eqz v4, :cond_3

    #@2a
    .line 22343
    return-void

    #@2b
    .line 22346
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2e
    move-result-wide v4

    #@2f
    iget-wide v6, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mLastEventTimeMillis:J

    #@31
    sub-long v2, v4, v6

    #@33
    .line 22348
    .local v2, "timeSinceLastMillis":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    #@36
    move-result-wide v0

    #@37
    .line 22349
    .local v0, "minEventIntevalMillis":J
    cmp-long v4, v2, v0

    #@39
    if-ltz v4, :cond_4

    #@3b
    .line 22350
    iget-object v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->this$0:Landroid/view/View;

    #@3d
    invoke-virtual {v4, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@40
    .line 22351
    invoke-virtual {p0}, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->run()V

    #@43
    .line 22323
    :goto_0
    return-void

    #@44
    .line 22353
    :cond_4
    iget-object v4, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->this$0:Landroid/view/View;

    #@46
    sub-long v6, v0, v2

    #@48
    invoke-virtual {v4, p0, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@4b
    .line 22354
    iput-boolean v8, p0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->mPostedWithDelay:Z

    #@4d
    goto :goto_0
.end method
