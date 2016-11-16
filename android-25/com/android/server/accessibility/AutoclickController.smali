.class public Lcom/android/server/accessibility/AutoclickController;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;,
        Lcom/android/server/accessibility/AutoclickController$ClickScheduler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

.field private mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

.field private final mContext:Landroid/content/Context;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/AutoclickController;)Lcom/android/server/accessibility/EventStreamTransformation;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 60
    const-class v0, Lcom/android/server/accessibility/AutoclickController;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/accessibility/AutoclickController;->LOG_TAG:Ljava/lang/String;

    #@8
    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController;->mContext:Landroid/content/Context;

    #@5
    .line 72
    iput p2, p0, Lcom/android/server/accessibility/AutoclickController;->mUserId:I

    #@7
    .line 70
    return-void
.end method

.method private handleMouseMotion(Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@9
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    #@c
    .line 146
    :goto_0
    :pswitch_1
    return-void

    #@d
    .line 149
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@10
    move-result v0

    #@11
    const/4 v1, 0x1

    #@12
    if-ne v0, v1, :cond_0

    #@14
    .line 150
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@16
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->update(Landroid/view/MotionEvent;I)V

    #@19
    goto :goto_0

    #@1a
    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@1c
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    #@1f
    goto :goto_0

    #@20
    .line 147
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 1
    .param p1, "inputSource"    # I

    #@0
    .prologue
    .line 125
    const/16 v0, 0x2002

    #@2
    if-ne p1, v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 126
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@a
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    #@d
    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 130
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@13
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    #@16
    .line 124
    :cond_1
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 114
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@6
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@9
    .line 112
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 136
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 137
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    #@7
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->stop()V

    #@a
    .line 138
    iput-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    #@c
    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 141
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@12
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    #@15
    .line 142
    iput-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@17
    .line 135
    :cond_1
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 99
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@7
    move-result v0

    #@8
    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 100
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    #@13
    move-result v1

    #@14
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->updateMetaState(I)V

    #@17
    .line 106
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 107
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@1d
    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    #@20
    .line 97
    :cond_1
    return-void

    #@21
    .line 102
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@23
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    #@26
    goto :goto_0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 77
    const/16 v1, 0x2002

    #@2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_3

    #@8
    .line 78
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@a
    if-nez v1, :cond_0

    #@c
    .line 79
    new-instance v0, Landroid/os/Handler;

    #@e
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@13
    move-result-object v1

    #@14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@17
    .line 81
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@19
    const/16 v2, 0x258

    #@1b
    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;-><init>(Lcom/android/server/accessibility/AutoclickController;Landroid/os/Handler;I)V

    #@1e
    .line 80
    iput-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@20
    .line 82
    new-instance v1, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    #@22
    iget v2, p0, Lcom/android/server/accessibility/AutoclickController;->mUserId:I

    #@24
    invoke-direct {v1, v2, v0}, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;-><init>(ILandroid/os/Handler;)V

    #@27
    iput-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    #@29
    .line 83
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    #@2b
    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController;->mContext:Landroid/content/Context;

    #@2d
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@30
    move-result-object v2

    #@31
    iget-object v3, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@33
    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->start(Landroid/content/ContentResolver;Lcom/android/server/accessibility/AutoclickController$ClickScheduler;)V

    #@36
    .line 86
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/AutoclickController;->handleMouseMotion(Landroid/view/MotionEvent;I)V

    #@39
    .line 91
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@3b
    if-eqz v1, :cond_2

    #@3d
    .line 92
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@3f
    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@42
    .line 76
    :cond_2
    return-void

    #@43
    .line 87
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@45
    if-eqz v1, :cond_1

    #@47
    .line 88
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@49
    invoke-virtual {v1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    #@4c
    goto :goto_0
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    #@0
    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    .line 119
    return-void
.end method
