.class final Landroid/service/voice/VoiceInteractionWindow;
.super Landroid/app/Dialog;
.source "VoiceInteractionWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VoiceInteractionWindow$WindowState;,
        Landroid/service/voice/VoiceInteractionWindow$Callback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "VoiceInteractionWindow"


# instance fields
.field private final blacklist mBounds:Landroid/graphics/Rect;

.field private final blacklist mCallback:Landroid/service/voice/VoiceInteractionWindow$Callback;

.field private final blacklist mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field private final blacklist mGravity:I

.field private final blacklist mKeyEventCallback:Landroid/view/KeyEvent$Callback;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mTakesFocus:Z

.field private blacklist mWindowState:I

.field private final blacklist mWindowType:I


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/voice/VoiceInteractionWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "callback"    # Landroid/service/voice/VoiceInteractionWindow$Callback;
    .param p5, "keyEventCallback"    # Landroid/view/KeyEvent$Callback;
    .param p6, "dispatcherState"    # Landroid/view/KeyEvent$DispatcherState;
    .param p7, "windowType"    # I
    .param p8, "gravity"    # I
    .param p9, "takesFocus"    # Z

    .line 148
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowState:I

    .line 149
    iput-object p2, p0, Landroid/service/voice/VoiceInteractionWindow;->mName:Ljava/lang/String;

    .line 150
    iput-object p4, p0, Landroid/service/voice/VoiceInteractionWindow;->mCallback:Landroid/service/voice/VoiceInteractionWindow$Callback;

    .line 151
    iput-object p5, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    .line 152
    iput-object p6, p0, Landroid/service/voice/VoiceInteractionWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 153
    iput p7, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowType:I

    .line 154
    iput p8, p0, Landroid/service/voice/VoiceInteractionWindow;->mGravity:I

    .line 155
    iput-boolean p9, p0, Landroid/service/voice/VoiceInteractionWindow;->mTakesFocus:Z

    .line 156
    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionWindow;->initDockWindow()V

    .line 157
    return-void
.end method

.method private blacklist initDockWindow()V
    .registers 5

    .line 233
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 235
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 236
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionWindow;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 238
    iget v1, p0, Landroid/service/voice/VoiceInteractionWindow;->mGravity:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 239
    invoke-direct {p0, v0}, Landroid/service/voice/VoiceInteractionWindow;->updateWidthHeight(Landroid/view/WindowManager$LayoutParams;)V

    .line 241
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 243
    const/16 v1, 0x100

    .line 244
    .local v1, "windowSetFlags":I
    const/16 v2, 0x10a

    .line 248
    .local v2, "windowModFlags":I
    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionWindow;->mTakesFocus:Z

    if-nez v3, :cond_2a

    .line 249
    or-int/lit8 v1, v1, 0x8

    goto :goto_2e

    .line 251
    :cond_2a
    or-int/lit8 v1, v1, 0x20

    .line 252
    or-int/lit8 v2, v2, 0x20

    .line 255
    :goto_2e
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 256
    return-void
.end method

.method private static blacklist stateToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "state"    # I

    .line 305
    packed-switch p0, :pswitch_data_2c

    .line 317
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :pswitch_1c
    const-string v0, "DESTROYED"

    return-object v0

    .line 313
    :pswitch_1f
    const-string v0, "REJECTED_AT_LEAST_ONCE"

    return-object v0

    .line 311
    :pswitch_22
    const-string v0, "SHOWN_AT_LEAST_ONCE"

    return-object v0

    .line 309
    :pswitch_25
    const-string v0, "TOKEN_SET"

    return-object v0

    .line 307
    :pswitch_28
    const-string v0, "TOKEN_PENDING"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist updateWidthHeight(Landroid/view/WindowManager$LayoutParams;)V
    .registers 6
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 182
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x30

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v0, v1, :cond_14

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x50

    if-ne v0, v1, :cond_f

    goto :goto_14

    .line 186
    :cond_f
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 187
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_18

    .line 183
    :cond_14
    :goto_14
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 184
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 189
    :goto_18
    return-void
.end method

.method private blacklist updateWindowState(I)V
    .registers 2
    .param p1, "newState"    # I

    .line 301
    iput p1, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowState:I

    .line 302
    return-void
.end method


# virtual methods
.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 167
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 169
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/MotionEvent;->isWithinBoundsNoHistory(FFFF)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 171
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 173
    :cond_30
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/MotionEvent;->clampNoHistory(FFFF)Landroid/view/MotionEvent;

    move-result-object v0

    .line 175
    .local v0, "temp":Landroid/view/MotionEvent;
    invoke-super {p0, v0}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 176
    .local v1, "handled":Z
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 177
    return v1
.end method

.method public whitelist onBackPressed()V
    .registers 2

    .line 225
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mCallback:Landroid/service/voice/VoiceInteractionWindow$Callback;

    if-eqz v0, :cond_a

    .line 226
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mCallback:Landroid/service/voice/VoiceInteractionWindow$Callback;

    invoke-interface {v0}, Landroid/service/voice/VoiceInteractionWindow$Callback;->onBackPressed()V

    goto :goto_d

    .line 228
    :cond_a
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 230
    :goto_d
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 193
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 194
    const/4 v0, 0x1

    return v0

    .line 196
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 201
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 202
    const/4 v0, 0x1

    return v0

    .line 204
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 217
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 218
    const/4 v0, 0x1

    return v0

    .line 220
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/app/Dialog;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 209
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 210
    const/4 v0, 0x1

    return v0

    .line 212
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasFocus"    # Z

    .line 161
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 162
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v0}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 163
    return-void
.end method

.method blacklist setToken(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 102
    iget v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowState:I

    packed-switch v0, :pswitch_data_56

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :pswitch_20
    const-string v0, "VoiceInteractionWindow"

    const-string v1, "Ignoring setToken() because window is already destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 120
    :pswitch_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setToken can be called only once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :pswitch_31
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 106
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 107
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 108
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/service/voice/VoiceInteractionWindow;->updateWindowState(I)V

    .line 114
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->show()V

    .line 116
    return-void

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_31
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_20
    .end packed-switch
.end method

.method public whitelist show()V
    .registers 4

    .line 260
    iget v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowState:I

    const-string v1, "VoiceInteractionWindow"

    packed-switch v0, :pswitch_data_4a

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :pswitch_22
    const-string v0, "Ignoring show() because the window is already destroyed."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 283
    :pswitch_28
    const-string v0, "Not trying to call show() because it was already rejected once."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    .line 267
    :pswitch_2e
    :try_start_2e
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 268
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/service/voice/VoiceInteractionWindow;->updateWindowState(I)V
    :try_end_35
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2e .. :try_end_35} :catch_36

    .line 279
    goto :goto_40

    .line 269
    :catch_36
    move-exception v0

    .line 276
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v2, "Probably the IME window token is already invalidated. show() does nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/service/voice/VoiceInteractionWindow;->updateWindowState(I)V

    .line 280
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    :goto_40
    return-void

    .line 262
    :pswitch_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Window token is not set yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_41
        :pswitch_2e
        :pswitch_2e
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method
