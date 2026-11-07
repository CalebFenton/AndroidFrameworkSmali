.class Landroid/inputmethodservice/InlineSuggestionSession;
.super Ljava/lang/Object;
.source "InlineSuggestionSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;
    }
.end annotation


# static fields
.field static final blacklist EMPTY_RESPONSE:Landroid/view/inputmethod/InlineSuggestionsResponse;

.field private static final blacklist TAG:Ljava/lang/String; = "ImsInlineSuggestionSession"


# instance fields
.field private blacklist mAlwaysNotifyAutofill:Z

.field private final blacklist mCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

.field private blacklist mCallbackInvoked:Z

.field private final blacklist mHostInputTokenSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

.field private final blacklist mMainThreadHandler:Landroid/os/Handler;

.field private blacklist mPreviousResponseIsEmpty:Ljava/lang/Boolean;

.field private final blacklist mRequestInfo:Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

.field private final blacklist mRequestSupplier:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

.field private final blacklist mResponseConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMainThreadHandler(Landroid/inputmethodservice/InlineSuggestionSession;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 63
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionsResponse;

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    sput-object v0, Landroid/inputmethodservice/InlineSuggestionSession;->EMPTY_RESPONSE:Landroid/view/inputmethod/InlineSuggestionsResponse;

    .line 63
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Landroid/inputmethodservice/InlineSuggestionSessionController;Landroid/os/Handler;)V
    .registers 9
    .param p1, "requestInfo"    # Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
    .param p2, "callback"    # Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;
    .param p6, "inlineSuggestionSessionController"    # Landroid/inputmethodservice/InlineSuggestionSessionController;
    .param p7, "mainThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;",
            "Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;",
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;",
            "Landroid/inputmethodservice/InlineSuggestionSessionController;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 102
    .local p3, "requestSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/Bundle;Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    .local p4, "hostInputTokenSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/os/IBinder;>;"
    .local p5, "responseConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsResponse;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mAlwaysNotifyAutofill:Z

    .line 91
    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallbackInvoked:Z

    .line 103
    iput-object p1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestInfo:Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    .line 104
    iput-object p2, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    .line 105
    iput-object p3, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestSupplier:Ljava/util/function/Function;

    .line 106
    iput-object p4, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mHostInputTokenSupplier:Ljava/util/function/Supplier;

    .line 107
    iput-object p5, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseConsumer:Ljava/util/function/Consumer;

    .line 108
    iput-object p6, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    .line 109
    iput-object p7, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 110
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isImproveFillDialogEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mAlwaysNotifyAutofill:Z

    .line 111
    return-void
.end method


# virtual methods
.method blacklist consumeInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    .registers 5
    .param p1, "response"    # Landroid/view/inputmethod/InlineSuggestionsResponse;

    .line 218
    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 219
    .local v0, "isResponseEmpty":Z
    if-eqz v0, :cond_15

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mPreviousResponseIsEmpty:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 221
    return-void

    .line 223
    :cond_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mPreviousResponseIsEmpty:Ljava/lang/Boolean;

    .line 224
    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseConsumer:Ljava/util/function/Consumer;

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method blacklist getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    return-object v0
.end method

.method blacklist getRequestInfo()Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestInfo:Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    return-object v0
.end method

.method blacklist handleOnInlineSuggestionsResponse(Landroid/view/autofill/AutofillId;Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    .registers 4
    .param p1, "fieldId"    # Landroid/view/autofill/AutofillId;
    .param p2, "response"    # Landroid/view/inputmethod/InlineSuggestionsResponse;

    .line 207
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mInlineSuggestionSessionController:Landroid/inputmethodservice/InlineSuggestionSessionController;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Landroid/view/autofill/AutofillId;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 208
    return-void

    .line 213
    :cond_9
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/InlineSuggestionSession;->consumeInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)V

    .line 214
    return-void
.end method

.method blacklist invalidate()V
    .registers 4

    .line 156
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInlineSuggestionsSessionInvalidated()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 159
    goto :goto_e

    .line 157
    :catch_6
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsInlineSuggestionSession"

    const-string v2, "onInlineSuggestionsSessionInvalidated() remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    if-eqz v0, :cond_1f

    .line 161
    sget-object v0, Landroid/inputmethodservice/InlineSuggestionSession;->EMPTY_RESPONSE:Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InlineSuggestionSession;->consumeInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)V

    .line 162
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;->invalidate()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    .line 165
    :cond_1f
    return-void
.end method

.method blacklist isCallbackInvoked()Z
    .registers 2

    .line 143
    iget-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallbackInvoked:Z

    return v0
.end method

.method blacklist makeInlineSuggestionRequestUncheck()V
    .registers 4

    .line 176
    iget-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallbackInvoked:Z

    if-eqz v0, :cond_5

    .line 177
    return-void

    .line 180
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestSupplier:Ljava/util/function/Function;

    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mRequestInfo:Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    .line 181
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->getUiExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 180
    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 182
    .local v0, "request":Landroid/view/inputmethod/InlineSuggestionsRequest;
    iget-boolean v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mAlwaysNotifyAutofill:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 183
    new-instance v1, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    invoke-direct {v1, p0, v2}, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;-><init>(Landroid/inputmethodservice/InlineSuggestionSession;Landroid/inputmethodservice/InlineSuggestionSession-IA;)V

    iput-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    .line 185
    :cond_1f
    if-nez v0, :cond_27

    .line 189
    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInlineSuggestionsUnsupported()V

    goto :goto_47

    .line 191
    :cond_27
    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mHostInputTokenSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->setHostInputToken(Landroid/os/IBinder;)V

    .line 192
    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->filterContentTypes()V

    .line 193
    iget-boolean v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mAlwaysNotifyAutofill:Z

    if-nez v1, :cond_40

    .line 194
    new-instance v1, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    invoke-direct {v1, p0, v2}, Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;-><init>(Landroid/inputmethodservice/InlineSuggestionSession;Landroid/inputmethodservice/InlineSuggestionSession-IA;)V

    iput-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    .line 196
    :cond_40
    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    iget-object v2, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_47} :catch_48

    .line 200
    .end local v0    # "request":Landroid/view/inputmethod/InlineSuggestionsRequest;
    :goto_47
    goto :goto_61

    .line 198
    :catch_48
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeInlinedSuggestionsRequest() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsInlineSuggestionSession"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_61
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mCallbackInvoked:Z

    .line 202
    return-void
.end method

.method blacklist shouldSendImeStatus()Z
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSession;->mResponseCallback:Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
