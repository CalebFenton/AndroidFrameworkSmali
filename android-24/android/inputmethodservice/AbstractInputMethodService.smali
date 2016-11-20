.class public abstract Landroid/inputmethodservice/AbstractInputMethodService;
.super Landroid/app/Service;
.source "AbstractInputMethodService.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;,
        Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
    }
.end annotation


# instance fields
.field final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field private mInputMethod:Landroid/view/inputmethod/InputMethod;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 49
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    #@5
    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    #@8
    .line 48
    iput-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    #@a
    .line 44
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 195
    return-void
.end method

.method public getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .locals 1

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    #@2
    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 201
    invoke-virtual {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    #@a
    .line 203
    :cond_0
    new-instance v0, Landroid/inputmethodservice/IInputMethodWrapper;

    #@c
    iget-object v1, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    #@e
    invoke-direct {v0, p0, v1}, Landroid/inputmethodservice/IInputMethodWrapper;-><init>(Landroid/inputmethodservice/AbstractInputMethodService;Landroid/view/inputmethod/InputMethod;)V

    #@11
    return-object v0
.end method

.method public abstract onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
.end method

.method public abstract onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 225
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 214
    const/4 v0, 0x0

    #@1
    return v0
.end method
