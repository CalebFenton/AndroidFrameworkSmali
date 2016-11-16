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


# instance fields
.field private final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/IInputMethodSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Landroid/inputmethodservice/IInputMethodSessionWrapper;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 216
    iput-object p1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    #@2
    .line 217
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@5
    .line 214
    new-instance v0, Landroid/util/SparseArray;

    #@7
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@a
    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    #@c
    .line 216
    return-void
.end method


# virtual methods
.method public finishedEvent(IZ)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    #@0
    .prologue
    .line 245
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@5
    move-result v1

    #@6
    .line 246
    .local v1, "index":I
    if-ltz v1, :cond_0

    #@8
    .line 247
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/view/InputEvent;

    #@10
    .line 248
    .local v0, "event":Landroid/view/InputEvent;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    #@15
    .line 249
    invoke-virtual {p0, v0, p2}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@18
    .line 244
    .end local v0    # "event":Landroid/view/InputEvent;
    :cond_0
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 222
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    #@2
    iget-object v3, v3, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    #@4
    if-nez v3, :cond_0

    #@6
    .line 224
    const/4 v3, 0x0

    #@7
    invoke-virtual {p0, p1, v3}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@a
    .line 225
    return-void

    #@b
    .line 228
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    #@e
    move-result v2

    #@f
    .line 229
    .local v2, "seq":I
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 230
    instance-of v3, p1, Landroid/view/KeyEvent;

    #@16
    if-eqz v3, :cond_1

    #@18
    move-object v0, p1

    #@19
    .line 231
    check-cast v0, Landroid/view/KeyEvent;

    #@1b
    .line 232
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    #@1d
    iget-object v3, v3, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    #@1f
    invoke-interface {v3, v2, v0, p0}, Landroid/view/inputmethod/InputMethodSession;->dispatchKeyEvent(ILandroid/view/KeyEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    #@22
    .line 221
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :goto_0
    return-void

    #@23
    :cond_1
    move-object v1, p1

    #@24
    .line 234
    check-cast v1, Landroid/view/MotionEvent;

    #@26
    .line 235
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    const/4 v3, 0x4

    #@27
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 236
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    #@2f
    iget-object v3, v3, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    #@31
    invoke-interface {v3, v2, v1, p0}, Landroid/view/inputmethod/InputMethodSession;->dispatchTrackballEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    #@34
    goto :goto_0

    #@35
    .line 238
    :cond_2
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    #@37
    iget-object v3, v3, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    #@39
    invoke-interface {v3, v2, v1, p0}, Landroid/view/inputmethod/InputMethodSession;->dispatchGenericMotionEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    #@3c
    goto :goto_0
.end method
