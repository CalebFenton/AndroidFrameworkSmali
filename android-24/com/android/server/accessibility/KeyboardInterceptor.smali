.class public Lcom/android/server/accessibility/KeyboardInterceptor;
.super Ljava/lang/Object;
.source "KeyboardInterceptor.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# instance fields
.field private mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@5
    .line 30
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 1
    .param p1, "inputSource"    # I

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 61
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@6
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    #@9
    .line 59
    :cond_0
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 49
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@6
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@9
    .line 47
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    #@0
    .prologue
    .line 66
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    #@5
    .line 42
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 37
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@6
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    #@9
    .line 35
    :cond_0
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    #@0
    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    #@2
    .line 54
    return-void
.end method
