.class final Landroid/inputmethodservice/InkWindow;
.super Lcom/android/internal/policy/PhoneWindow;
.source "InkWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InkWindow$InkVisibilityListener;
    }
.end annotation


# instance fields
.field private blacklist mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private blacklist mInkView:Landroid/view/View;

.field private blacklist mInkViewVisibilityListener:Landroid/inputmethodservice/InkWindow$InkVisibilityListener;

.field private blacklist mIsViewAdded:Z

.field private final blacklist mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInkView(Landroid/inputmethodservice/InkWindow;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInkViewVisibilityListener(Landroid/inputmethodservice/InkWindow;)Landroid/inputmethodservice/InkWindow$InkVisibilityListener;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InkWindow;->mInkViewVisibilityListener:Landroid/inputmethodservice/InkWindow$InkVisibilityListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmGlobalLayoutListener(Landroid/inputmethodservice/InkWindow;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 56
    const/16 v0, 0x7db

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InkWindow;->setType(I)V

    .line 57
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 58
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 62
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 64
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InkWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 66
    const/16 v2, 0x318

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InkWindow;->addFlags(I)V

    .line 68
    const v2, 0x106000d

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InkWindow;->setBackgroundDrawableResource(I)V

    .line 69
    invoke-virtual {p0, v1, v1}, Landroid/inputmethodservice/InkWindow;->setLayout(II)V

    .line 70
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Landroid/inputmethodservice/InkWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 71
    return-void
.end method

.method private blacklist show(Z)V
    .registers 5
    .param p1, "keepInvisible"    # Z

    .line 89
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e

    .line 90
    const-string v0, "InputMethodService"

    const-string v1, "DecorView is not set for InkWindow. show() failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 93
    :cond_e
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_16

    const/4 v1, 0x4

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-boolean v0, p0, Landroid/inputmethodservice/InkWindow;->mIsViewAdded:Z

    if-nez v0, :cond_2e

    .line 95
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InkWindow;->mIsViewAdded:Z

    .line 98
    :cond_2e
    return-void
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 123
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 124
    iput-object p1, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    goto :goto_b

    .line 125
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    if-ne v0, p1, :cond_12

    .line 128
    :goto_b
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->initInkViewVisibilityListener()V

    .line 130
    return-void

    .line 126
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one Child Inking view is permitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist clearContentView()V
    .registers 3

    .line 148
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 149
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 151
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 152
    iput-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    .line 153
    invoke-super {p0}, Lcom/android/internal/policy/PhoneWindow;->clearContentView()V

    .line 154
    return-void
.end method

.method blacklist dispatchHandwritingEvent(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 198
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, "decor":Landroid/view/View;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 201
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 204
    return-void
.end method

.method blacklist hide(Z)V
    .registers 4
    .param p1, "remove"    # Z

    .line 106
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 107
    if-eqz p1, :cond_12

    .line 108
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_1a

    .line 110
    :cond_12
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :cond_1a
    :goto_1a
    return-void
.end method

.method blacklist initInkViewVisibilityListener()V
    .registers 3

    .line 170
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkViewVisibilityListener:Landroid/inputmethodservice/InkWindow$InkVisibilityListener;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_d

    goto :goto_20

    .line 174
    :cond_d
    new-instance v0, Landroid/inputmethodservice/InkWindow$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InkWindow$1;-><init>(Landroid/inputmethodservice/InkWindow;)V

    iput-object v0, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 189
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 190
    return-void

    .line 172
    :cond_20
    :goto_20
    return-void
.end method

.method blacklist initOnly()V
    .registers 2

    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InkWindow;->show(Z)V

    .line 78
    return-void
.end method

.method blacklist isInkViewVisible()Z
    .registers 2

    .line 193
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    .line 194
    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 193
    :goto_19
    return v0
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 141
    iput-object p1, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    .line 142
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    .line 143
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->initInkViewVisibilityListener()V

    .line 144
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 134
    iput-object p1, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    .line 135
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->initInkViewVisibilityListener()V

    .line 137
    return-void
.end method

.method blacklist setInkViewVisibilityListener(Landroid/inputmethodservice/InkWindow$InkVisibilityListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/inputmethodservice/InkWindow$InkVisibilityListener;

    .line 165
    iput-object p1, p0, Landroid/inputmethodservice/InkWindow;->mInkViewVisibilityListener:Landroid/inputmethodservice/InkWindow$InkVisibilityListener;

    .line 166
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->initInkViewVisibilityListener()V

    .line 167
    return-void
.end method

.method blacklist setToken(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 116
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 117
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 118
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InkWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 119
    return-void
.end method

.method blacklist show()V
    .registers 2

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InkWindow;->show(Z)V

    .line 86
    return-void
.end method
