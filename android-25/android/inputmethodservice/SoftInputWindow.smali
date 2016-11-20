.class public Landroid/inputmethodservice/SoftInputWindow;
.super Landroid/app/Dialog;
.source "SoftInputWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/SoftInputWindow$Callback;
    }
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field final mCallback:Landroid/inputmethodservice/SoftInputWindow$Callback;

.field final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final mGravity:I

.field final mKeyEventCallback:Landroid/view/KeyEvent$Callback;

.field final mName:Ljava/lang/String;

.field final mTakesFocus:Z

.field final mWindowType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "callback"    # Landroid/inputmethodservice/SoftInputWindow$Callback;
    .param p5, "keyEventCallback"    # Landroid/view/KeyEvent$Callback;
    .param p6, "dispatcherState"    # Landroid/view/KeyEvent$DispatcherState;
    .param p7, "windowType"    # I
    .param p8, "gravity"    # I
    .param p9, "takesFocus"    # Z

    #@0
    .prologue
    .line 70
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #@3
    .line 43
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    #@a
    .line 71
    iput-object p2, p0, Landroid/inputmethodservice/SoftInputWindow;->mName:Ljava/lang/String;

    #@c
    .line 72
    iput-object p4, p0, Landroid/inputmethodservice/SoftInputWindow;->mCallback:Landroid/inputmethodservice/SoftInputWindow$Callback;

    #@e
    .line 73
    iput-object p5, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    #@10
    .line 74
    iput-object p6, p0, Landroid/inputmethodservice/SoftInputWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    #@12
    .line 75
    iput p7, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowType:I

    #@14
    .line 76
    iput p8, p0, Landroid/inputmethodservice/SoftInputWindow;->mGravity:I

    #@16
    .line 77
    iput-boolean p9, p0, Landroid/inputmethodservice/SoftInputWindow;->mTakesFocus:Z

    #@18
    .line 78
    invoke-direct {p0}, Landroid/inputmethodservice/SoftInputWindow;->initDockWindow()V

    #@1b
    .line 69
    return-void
.end method

.method private initDockWindow()V
    .locals 4

    #@0
    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@7
    move-result-object v0

    #@8
    .line 171
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowType:I

    #@a
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@c
    .line 172
    iget-object v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mName:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@11
    .line 174
    iget v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mGravity:I

    #@13
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@15
    .line 175
    invoke-direct {p0, v0}, Landroid/inputmethodservice/SoftInputWindow;->updateWidthHeight(Landroid/view/WindowManager$LayoutParams;)V

    #@18
    .line 177
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@1f
    .line 180
    const/16 v1, 0x10a

    #@21
    .line 184
    .local v1, "windowModFlags":I
    iget-boolean v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mTakesFocus:Z

    #@23
    if-nez v3, :cond_0

    #@25
    .line 185
    const/16 v2, 0x108

    #@27
    .line 191
    .local v2, "windowSetFlags":I
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setFlags(II)V

    #@2e
    .line 168
    return-void

    #@2f
    .line 187
    .end local v2    # "windowSetFlags":I
    :cond_0
    const/16 v2, 0x120

    #@31
    .line 188
    .restart local v2    # "windowSetFlags":I
    const/16 v1, 0x12a

    #@33
    goto :goto_0
.end method

.method private updateWidthHeight(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, -0x2

    #@2
    .line 123
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@4
    const/16 v1, 0x30

    #@6
    if-eq v0, v1, :cond_0

    #@8
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@a
    const/16 v1, 0x50

    #@c
    if-ne v0, v1, :cond_1

    #@e
    .line 124
    :cond_0
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@10
    .line 125
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@12
    .line 122
    :goto_0
    return-void

    #@13
    .line 127
    :cond_1
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@15
    .line 128
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@17
    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@7
    move-result-object v2

    #@8
    iget-object v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    #@a
    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@d
    .line 91
    iget-object v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    #@f
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@11
    int-to-float v2, v2

    #@12
    iget-object v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    #@14
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@16
    int-to-float v3, v3

    #@17
    .line 92
    iget-object v4, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    #@19
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@1b
    add-int/lit8 v4, v4, -0x1

    #@1d
    int-to-float v4, v4

    #@1e
    iget-object v5, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    #@20
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@22
    add-int/lit8 v5, v5, -0x1

    #@24
    int-to-float v5, v5

    #@25
    .line 91
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/MotionEvent;->isWithinBoundsNoHistory(FFFF)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_0

    #@2b
    .line 93
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@2e
    move-result v2

    #@2f
    return v2

    #@30
    .line 95
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    #@32
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@34
    int-to-float v2, v2

    #@35
    iget-object v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    #@37
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@39
    int-to-float v3, v3

    #@3a
    .line 96
    iget-object v4, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    #@3c
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@3e
    add-int/lit8 v4, v4, -0x1

    #@40
    int-to-float v4, v4

    #@41
    iget-object v5, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    #@43
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@45
    add-int/lit8 v5, v5, -0x1

    #@47
    int-to-float v5, v5

    #@48
    .line 95
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/MotionEvent;->clampNoHistory(FFFF)Landroid/view/MotionEvent;

    #@4b
    move-result-object v1

    #@4c
    .line 97
    .local v1, "temp":Landroid/view/MotionEvent;
    invoke-super {p0, v1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@4f
    move-result v0

    #@50
    .line 98
    .local v0, "handled":Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    #@53
    .line 99
    return v0
.end method

.method public getGravity()I
    .locals 1

    #@0
    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@a
    return v0
.end method

.method public onBackPressed()V
    .locals 1

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mCallback:Landroid/inputmethodservice/SoftInputWindow$Callback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 162
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mCallback:Landroid/inputmethodservice/SoftInputWindow$Callback;

    #@6
    invoke-interface {v0}, Landroid/inputmethodservice/SoftInputWindow$Callback;->onBackPressed()V

    #@9
    .line 160
    :goto_0
    return-void

    #@a
    .line 164
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    #@d
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    #@6
    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 134
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 136
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    #@6
    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 141
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 143
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    #@6
    invoke-interface {v0, p1, p2, p3}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 155
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 157
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Dialog;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    #@6
    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 148
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 150
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    #@0
    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    #@3
    .line 84
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    #@5
    invoke-virtual {v0}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    #@8
    .line 82
    return-void
.end method

.method public setGravity(I)V
    .locals 2
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@7
    move-result-object v0

    #@8
    .line 113
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@a
    .line 114
    invoke-direct {p0, v0}, Landroid/inputmethodservice/SoftInputWindow;->updateWidthHeight(Landroid/view/WindowManager$LayoutParams;)V

    #@d
    .line 115
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@14
    .line 111
    return-void
.end method

.method public setToken(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@7
    move-result-object v0

    #@8
    .line 51
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@a
    .line 52
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@11
    .line 49
    return-void
.end method
