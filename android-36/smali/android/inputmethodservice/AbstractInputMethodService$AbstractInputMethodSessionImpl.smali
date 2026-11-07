.class public abstract Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
.super Ljava/lang/Object;
.source "AbstractInputMethodService.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/AbstractInputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractInputMethodSessionImpl"
.end annotation


# instance fields
.field greylist-max-o mEnabled:Z

.field greylist-max-o mRevoked:Z

.field final synthetic blacklist this$0:Landroid/inputmethodservice/AbstractInputMethodService;


# direct methods
.method public constructor whitelist <init>(Landroid/inputmethodservice/AbstractInputMethodService;)V
    .registers 3
    .param p1, "this$0"    # Landroid/inputmethodservice/AbstractInputMethodService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 142
    iput-object p1, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public whitelist dispatchGenericMotionEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V
    .registers 5
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "callback"    # Landroid/view/inputmethod/InputMethodSession$EventCallback;

    .line 223
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/AbstractInputMethodService;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 224
    .local v0, "handled":Z
    if-eqz p3, :cond_b

    .line 225
    invoke-interface {p3, p1, v0}, Landroid/view/inputmethod/InputMethodSession$EventCallback;->finishedEvent(IZ)V

    .line 227
    :cond_b
    return-void
.end method

.method public whitelist dispatchKeyEvent(ILandroid/view/KeyEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V
    .registers 6
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "callback"    # Landroid/view/inputmethod/InputMethodSession$EventCallback;

    .line 188
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    iget-object v1, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/AbstractInputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {p2, v0, v1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    .line 190
    .local v0, "handled":Z
    if-eqz p3, :cond_f

    .line 191
    invoke-interface {p3, p1, v0}, Landroid/view/inputmethod/InputMethodSession$EventCallback;->finishedEvent(IZ)V

    .line 193
    :cond_f
    invoke-static {}, Landroid/view/inputmethod/Flags;->imeSwitcherRevamp()Z

    move-result v1

    if-eqz v1, :cond_34

    if-nez v0, :cond_34

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_34

    .line 194
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    if-lez v1, :cond_34

    iget-object v1, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-static {v1}, Landroid/inputmethodservice/AbstractInputMethodService;->-$$Nest$fgetmInputMethodServiceInternal(Landroid/inputmethodservice/AbstractInputMethodService;)Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 195
    iget-object v1, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-static {v1}, Landroid/inputmethodservice/AbstractInputMethodService;->-$$Nest$fgetmInputMethodServiceInternal(Landroid/inputmethodservice/AbstractInputMethodService;)Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v1

    invoke-interface {v1}, Landroid/inputmethodservice/InputMethodServiceInternal;->notifyUserActionIfNecessary()V

    .line 197
    :cond_34
    return-void
.end method

.method public whitelist dispatchTrackballEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V
    .registers 5
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "callback"    # Landroid/view/inputmethod/InputMethodSession$EventCallback;

    .line 211
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/AbstractInputMethodService;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 212
    .local v0, "handled":Z
    if-eqz p3, :cond_b

    .line 213
    invoke-interface {p3, p1, v0}, Landroid/view/inputmethod/InputMethodSession$EventCallback;->finishedEvent(IZ)V

    .line 215
    :cond_b
    return-void
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 151
    iget-boolean v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mEnabled:Z

    return v0
.end method

.method public whitelist isRevoked()Z
    .registers 2

    .line 160
    iget-boolean v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mRevoked:Z

    return v0
.end method

.method public whitelist onShouldVerifyKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 202
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/AbstractInputMethodService;->onShouldVerifyKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist revokeSelf()V
    .registers 2

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mRevoked:Z

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mEnabled:Z

    .line 180
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 168
    iget-boolean v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mRevoked:Z

    if-nez v0, :cond_6

    .line 169
    iput-boolean p1, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mEnabled:Z

    .line 171
    :cond_6
    return-void
.end method
