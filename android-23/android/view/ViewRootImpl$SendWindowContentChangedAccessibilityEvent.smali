.class Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendWindowContentChangedAccessibilityEvent"
.end annotation


# instance fields
.field private mChangeTypes:I

.field public mLastEventTimeMillis:J

.field public mSource:Landroid/view/View;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method private constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 7127
    iput-object p1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 7128
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    #@8
    .line 7127
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 7136
    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    #@2
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    #@4
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 7137
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@11
    move-result-wide v2

    #@12
    iput-wide v2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mLastEventTimeMillis:J

    #@14
    .line 7138
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    #@17
    move-result-object v0

    #@18
    .line 7139
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v1, 0x800

    #@1a
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    #@1d
    .line 7140
    iget v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    #@1f
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    #@22
    .line 7141
    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    #@24
    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    #@27
    .line 7146
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    #@29
    invoke-virtual {v1}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    #@2c
    .line 7147
    const/4 v1, 0x0

    #@2d
    iput-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    #@2f
    .line 7148
    const/4 v1, 0x0

    #@30
    iput v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    #@32
    .line 7134
    return-void

    #@33
    .line 7143
    :cond_0
    const-wide/16 v2, 0x0

    #@35
    iput-wide v2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mLastEventTimeMillis:J

    #@37
    goto :goto_0
.end method

.method public runOrPost(Landroid/view/View;I)V
    .locals 10
    .param p1, "source"    # Landroid/view/View;
    .param p2, "changeType"    # I

    #@0
    .prologue
    .line 7152
    iget-object v3, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    #@2
    if-eqz v3, :cond_1

    #@4
    .line 7155
    iget-object v3, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    #@6
    iget-object v6, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    #@8
    invoke-static {v3, v6, p1}, Landroid/view/ViewRootImpl;->-wrap0(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    #@b
    move-result-object v2

    #@c
    .line 7156
    .local v2, "predecessor":Landroid/view/View;
    if-eqz v2, :cond_0

    #@e
    .end local v2    # "predecessor":Landroid/view/View;
    :goto_0
    iput-object v2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    #@10
    .line 7157
    iget v3, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    #@12
    or-int/2addr v3, p2

    #@13
    iput v3, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    #@15
    .line 7158
    return-void

    #@16
    .restart local v2    # "predecessor":Landroid/view/View;
    :cond_0
    move-object v2, p1

    #@17
    .line 7156
    goto :goto_0

    #@18
    .line 7160
    .end local v2    # "predecessor":Landroid/view/View;
    :cond_1
    iput-object p1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    #@1a
    .line 7161
    iput p2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    #@1c
    .line 7162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1f
    move-result-wide v6

    #@20
    iget-wide v8, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mLastEventTimeMillis:J

    #@22
    sub-long v4, v6, v8

    #@24
    .line 7164
    .local v4, "timeSinceLastMillis":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    #@27
    move-result-wide v0

    #@28
    .line 7165
    .local v0, "minEventIntevalMillis":J
    cmp-long v3, v4, v0

    #@2a
    if-ltz v3, :cond_2

    #@2c
    .line 7166
    iget-object v3, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    #@2e
    invoke-virtual {v3, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@31
    .line 7167
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->run()V

    #@34
    .line 7151
    :goto_1
    return-void

    #@35
    .line 7169
    :cond_2
    iget-object v3, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    #@37
    sub-long v6, v0, v4

    #@39
    invoke-virtual {v3, p0, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@3c
    goto :goto_1
.end method
