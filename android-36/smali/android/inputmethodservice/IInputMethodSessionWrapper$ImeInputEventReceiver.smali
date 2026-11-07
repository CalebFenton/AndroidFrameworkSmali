.class final Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "IInputMethodSessionWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodSession$EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/IInputMethodSessionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImeInputEventReceiver"
.end annotation


# static fields
.field private static final blacklist KEY_EVENT_ALLOW_PERIOD_MS:J = 0x64L


# instance fields
.field private final blacklist mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;


# direct methods
.method public constructor blacklist <init>(Landroid/inputmethodservice/IInputMethodSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 248
    iput-object p1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    .line 249
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 246
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    .line 250
    return-void
.end method

.method private blacklist hasKeyModifiers(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 299
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 300
    return v1

    .line 302
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 303
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 304
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isFunctionPressed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 305
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    const/4 v1, 0x1

    .line 302
    :cond_21
    return v1
.end method

.method private blacklist needsVerification(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 310
    invoke-static {}, Landroid/view/inputmethod/Flags;->verifyKeyEvent()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 311
    invoke-direct {p0, p1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->hasKeyModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v0, v0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    .line 312
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethodSession;->onShouldVerifyKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 310
    :goto_19
    return v0
.end method


# virtual methods
.method public whitelist finishedEvent(IZ)V
    .registers 6
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    .line 290
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 291
    .local v0, "index":I
    if-ltz v0, :cond_18

    .line 292
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    .line 293
    .local v1, "event":Landroid/view/InputEvent;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 294
    invoke-virtual {p0, v1, p2}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 296
    .end local v1    # "event":Landroid/view/InputEvent;
    :cond_18
    return-void
.end method

.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 254
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v0, v0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 256
    invoke-virtual {p0, p1, v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 257
    return-void

    .line 260
    :cond_b
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_5a

    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v0}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->needsVerification(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 263
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    invoke-static {v2}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->-$$Nest$fgetmContext(Landroid/inputmethodservice/IInputMethodSessionWrapper;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    .line 264
    .local v2, "im":Landroid/hardware/input/InputManager;
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 266
    .local v3, "age":J
    const-wide/16 v5, 0x64

    cmp-long v5, v3, v5

    if-ltz v5, :cond_5a

    invoke-virtual {v2, v0}, Landroid/hardware/input/InputManager;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object v5

    if-nez v5, :cond_5a

    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unverified or Invalid KeyEvent injected into IME. Dropping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "InputMethodWrapper"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0, p1, v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 270
    return-void

    .line 274
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    .end local v2    # "im":Landroid/hardware/input/InputManager;
    .end local v3    # "age":J
    :cond_5a
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v0

    .line 275
    .local v0, "seq":I
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    instance-of v1, p1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_72

    move-object v1, p1

    check-cast v1, Landroid/view/KeyEvent;

    .line 277
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v2, v2, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v2, v0, v1, p0}, Landroid/view/inputmethod/InputMethodSession;->dispatchKeyEvent(ILandroid/view/KeyEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    goto :goto_8b

    .line 279
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_72
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 280
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 281
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v2, v2, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v2, v0, v1, p0}, Landroid/view/inputmethod/InputMethodSession;->dispatchTrackballEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    goto :goto_8b

    .line 283
    :cond_84
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v2, v2, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v2, v0, v1, p0}, Landroid/view/inputmethod/InputMethodSession;->dispatchGenericMotionEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    .line 286
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    :goto_8b
    return-void
.end method
