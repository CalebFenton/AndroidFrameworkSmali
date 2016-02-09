.class final Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;
.super Ljava/lang/Object;
.source "IInputMethodWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethod$SessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/IInputMethodWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InputMethodSessionCallbackWrapper"
.end annotation


# instance fields
.field final mCb:Lcom/android/internal/view/IInputSessionCallback;

.field final mChannel:Landroid/view/InputChannel;

.field final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channel"    # Landroid/view/InputChannel;
    .param p3, "cb"    # Lcom/android/internal/view/IInputSessionCallback;

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 89
    iput-object p1, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mContext:Landroid/content/Context;

    #@5
    .line 90
    iput-object p2, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mChannel:Landroid/view/InputChannel;

    #@7
    .line 91
    iput-object p3, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mCb:Lcom/android/internal/view/IInputSessionCallback;

    #@9
    .line 88
    return-void
.end method


# virtual methods
.method public sessionCreated(Landroid/view/inputmethod/InputMethodSession;)V
    .locals 4
    .param p1, "session"    # Landroid/view/inputmethod/InputMethodSession;

    #@0
    .prologue
    .line 97
    if-eqz p1, :cond_0

    #@2
    .line 99
    :try_start_0
    new-instance v1, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    #@4
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mContext:Landroid/content/Context;

    #@6
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mChannel:Landroid/view/InputChannel;

    #@8
    invoke-direct {v1, v2, p1, v3}, Landroid/inputmethodservice/IInputMethodSessionWrapper;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSession;Landroid/view/InputChannel;)V

    #@b
    .line 100
    .local v1, "wrap":Landroid/inputmethodservice/IInputMethodSessionWrapper;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mCb:Lcom/android/internal/view/IInputSessionCallback;

    #@d
    invoke-interface {v2, v1}, Lcom/android/internal/view/IInputSessionCallback;->sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V

    #@10
    .line 95
    .end local v1    # "wrap":Landroid/inputmethodservice/IInputMethodSessionWrapper;
    :goto_0
    return-void

    #@11
    .line 102
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mChannel:Landroid/view/InputChannel;

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 103
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mChannel:Landroid/view/InputChannel;

    #@17
    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    #@1a
    .line 105
    :cond_1
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;->mCb:Lcom/android/internal/view/IInputSessionCallback;

    #@1c
    const/4 v3, 0x0

    #@1d
    invoke-interface {v2, v3}, Lcom/android/internal/view/IInputSessionCallback;->sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    goto :goto_0

    #@21
    .line 107
    :catch_0
    move-exception v0

    #@22
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
