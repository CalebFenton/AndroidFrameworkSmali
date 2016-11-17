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
.field mEnabled:Z

.field mRevoked:Z

.field final synthetic this$0:Landroid/inputmethodservice/AbstractInputMethodService;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/AbstractInputMethodService;)V
    .locals 1
    .param p1, "this$0"    # Landroid/inputmethodservice/AbstractInputMethodService;

    #@0
    .prologue
    .line 93
    iput-object p1, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 94
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mEnabled:Z

    #@8
    .line 93
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "callback"    # Landroid/view/inputmethod/InputMethodSession$EventCallback;

    #@0
    .prologue
    .line 164
    iget-object v1, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    #@2
    invoke-virtual {v1, p2}, Landroid/inputmethodservice/AbstractInputMethodService;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    .line 165
    .local v0, "handled":Z
    if-eqz p3, :cond_0

    #@8
    .line 166
    invoke-interface {p3, p1, v0}, Landroid/view/inputmethod/InputMethodSession$EventCallback;->finishedEvent(IZ)V

    #@b
    .line 163
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(ILandroid/view/KeyEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "callback"    # Landroid/view/inputmethod/InputMethodSession$EventCallback;

    #@0
    .prologue
    .line 139
    iget-object v1, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    #@2
    .line 140
    iget-object v2, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    #@4
    iget-object v2, v2, Landroid/inputmethodservice/AbstractInputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    #@6
    .line 139
    invoke-virtual {p2, v1, v2, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    .line 141
    .local v0, "handled":Z
    if-eqz p3, :cond_0

    #@c
    .line 142
    invoke-interface {p3, p1, v0}, Landroid/view/inputmethod/InputMethodSession$EventCallback;->finishedEvent(IZ)V

    #@f
    .line 138
    :cond_0
    return-void
.end method

.method public dispatchTrackballEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "callback"    # Landroid/view/inputmethod/InputMethodSession$EventCallback;

    #@0
    .prologue
    .line 152
    iget-object v1, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    #@2
    invoke-virtual {v1, p2}, Landroid/inputmethodservice/AbstractInputMethodService;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    .line 153
    .local v0, "handled":Z
    if-eqz p3, :cond_0

    #@8
    .line 154
    invoke-interface {p3, p1, v0}, Landroid/view/inputmethod/InputMethodSession$EventCallback;->finishedEvent(IZ)V

    #@b
    .line 151
    :cond_0
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mEnabled:Z

    #@2
    return v0
.end method

.method public isRevoked()Z
    .locals 1

    #@0
    .prologue
    .line 111
    iget-boolean v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mRevoked:Z

    #@2
    return v0
.end method

.method public revokeSelf()V
    .locals 1

    #@0
    .prologue
    .line 129
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mRevoked:Z

    #@3
    .line 130
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mEnabled:Z

    #@6
    .line 128
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mRevoked:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 120
    iput-boolean p1, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mEnabled:Z

    #@6
    .line 118
    :cond_0
    return-void
.end method
