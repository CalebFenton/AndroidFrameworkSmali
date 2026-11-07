.class public Lcom/android/internal/view/OneShotPreDrawListener;
.super Ljava/lang/Object;
.source "OneShotPreDrawListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final greylist-max-o mReturnValue:Z

.field private final greylist-max-o mRunnable:Ljava/lang/Runnable;

.field private final greylist-max-o mView:Landroid/view/View;

.field private greylist-max-o mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/view/View;ZLjava/lang/Runnable;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "returnValue"    # Z
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mView:Landroid/view/View;

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 44
    iput-object p3, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mRunnable:Ljava/lang/Runnable;

    .line 45
    iput-boolean p2, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mReturnValue:Z

    .line 46
    return-void
.end method

.method public static greylist-max-o add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 58
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;ZLjava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o add(Landroid/view/View;ZLjava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "returnValue"    # Z
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 72
    new-instance v0, Lcom/android/internal/view/OneShotPreDrawListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/view/OneShotPreDrawListener;-><init>(Landroid/view/View;ZLjava/lang/Runnable;)V

    .line 73
    .local v0, "listener":Lcom/android/internal/view/OneShotPreDrawListener;
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 75
    return-object v0
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .registers 2

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/view/OneShotPreDrawListener;->removeListener()V

    .line 81
    iget-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 82
    iget-boolean v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mReturnValue:Z

    return v0
.end method

.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 101
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/view/OneShotPreDrawListener;->removeListener()V

    .line 106
    return-void
.end method

.method public greylist-max-o removeListener()V
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 91
    iget-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_17

    .line 93
    :cond_e
    iget-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 95
    :goto_17
    iget-object v0, p0, Lcom/android/internal/view/OneShotPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 96
    return-void
.end method
