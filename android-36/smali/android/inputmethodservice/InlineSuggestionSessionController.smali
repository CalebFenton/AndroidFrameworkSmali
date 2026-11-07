.class Landroid/inputmethodservice/InlineSuggestionSessionController;
.super Ljava/lang/Object;
.source "InlineSuggestionSessionController.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InlineSuggestionSessionController"


# instance fields
.field private final blacklist mHostInputTokenSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImeClientFieldId:Landroid/view/autofill/AutofillId;

.field private blacklist mImeClientPackageName:Ljava/lang/String;

.field private blacklist mImeInputStarted:Z

.field private blacklist mImeInputViewStarted:Z

.field private final blacklist mMainThreadHandler:Landroid/os/Handler;

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

.field private final blacklist mResponseConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSession:Landroid/inputmethodservice/InlineSuggestionSession;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "requestSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/Bundle;Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    .local p2, "hostInputTokenSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/os/IBinder;>;"
    .local p3, "responseConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsResponse;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mMainThreadHandler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mRequestSupplier:Ljava/util/function/Function;

    .line 87
    iput-object p2, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mHostInputTokenSupplier:Ljava/util/function/Supplier;

    .line 88
    iput-object p3, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mResponseConsumer:Ljava/util/function/Consumer;

    .line 89
    return-void
.end method

.method private static blacklist match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z
    .registers 4
    .param p0, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p1, "imeClientFieldId"    # Landroid/view/autofill/AutofillId;

    .line 259
    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    .line 260
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 259
    :goto_11
    return v0
.end method

.method private static blacklist match(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Ljava/lang/String;Landroid/view/autofill/AutofillId;)Z
    .registers 5
    .param p0, "inlineSuggestionsRequestInfo"    # Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
    .param p1, "imeClientPackageName"    # Ljava/lang/String;
    .param p2, "imeClientFieldId"    # Landroid/view/autofill/AutofillId;

    .line 244
    const/4 v0, 0x0

    if-eqz p0, :cond_24

    if-eqz p1, :cond_24

    if-nez p2, :cond_8

    goto :goto_24

    .line 248
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    nop

    .line 248
    :goto_23
    return v0

    .line 246
    :cond_24
    :goto_24
    return v0
.end method


# virtual methods
.method blacklist match(Landroid/view/autofill/AutofillId;)Z
    .registers 3
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 238
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    invoke-static {p1, v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    return v0
.end method

.method blacklist match(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;)Z
    .registers 4
    .param p1, "requestInfo"    # Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    .line 230
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    invoke-static {p1, v0, v1}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Ljava/lang/String;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    return v0
.end method

.method blacklist notifyOnFinishInput()V
    .registers 4

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientPackageName:Ljava/lang/String;

    .line 213
    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    .line 215
    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputStarted:Z

    .line 216
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 218
    :try_start_16
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInputMethodFinishInput()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_20

    .line 221
    goto :goto_39

    .line 219
    :catch_20
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputMethodFinishInput() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestionSessionController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    return-void
.end method

.method blacklist notifyOnFinishInputView()V
    .registers 4

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    .line 196
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 198
    :try_start_f
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInputMethodFinishInputView()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_19

    .line 201
    goto :goto_32

    .line 199
    :catch_19
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputMethodFinishInputView() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestionSessionController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_32
    :goto_32
    return-void
.end method

.method blacklist notifyOnShowInputRequested(Z)V
    .registers 5
    .param p1, "requestResult"    # Z

    .line 160
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 162
    :try_start_c
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInputMethodShowInputRequested(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16

    .line 165
    goto :goto_2f

    .line 163
    :catch_16
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputMethodShowInputRequested() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestionSessionController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2f
    :goto_2f
    return-void
.end method

.method blacklist notifyOnStartInput(Ljava/lang/String;Landroid/view/autofill/AutofillId;)V
    .registers 6
    .param p1, "imeClientPackageName"    # Ljava/lang/String;
    .param p2, "imeFieldId"    # Landroid/view/autofill/AutofillId;

    .line 129
    if-eqz p1, :cond_5f

    if-nez p2, :cond_5

    goto :goto_5f

    .line 132
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputStarted:Z

    .line 133
    iput-object p1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientPackageName:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    .line 136
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_5e

    .line 137
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    sget-object v1, Landroid/inputmethodservice/InlineSuggestionSession;->EMPTY_RESPONSE:Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InlineSuggestionSession;->consumeInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)V

    .line 140
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->isCallbackInvoked()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestInfo()Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 141
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->makeInlineSuggestionRequestUncheck()V

    goto :goto_5e

    .line 142
    :cond_31
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 144
    :try_start_39
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_44} :catch_45

    .line 147
    goto :goto_5e

    .line 145
    :catch_45
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputMethodStartInput() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestionSessionController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5e
    :goto_5e
    return-void

    .line 130
    :cond_5f
    :goto_5f
    return-void
.end method

.method blacklist notifyOnStartInputView()V
    .registers 4

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    .line 178
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 180
    :try_start_f
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInputMethodStartInputView()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_19

    .line 183
    goto :goto_32

    .line 181
    :catch_19
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputMethodStartInputView() remote exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestionSessionController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_32
    :goto_32
    return-void
.end method

.method blacklist onMakeInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V
    .registers 12
    .param p1, "requestInfo"    # Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
    .param p2, "callback"    # Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    .line 100
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_9

    .line 101
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->invalidate()V

    .line 103
    :cond_9
    new-instance v1, Landroid/inputmethodservice/InlineSuggestionSession;

    iget-object v4, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mRequestSupplier:Ljava/util/function/Function;

    iget-object v5, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mHostInputTokenSupplier:Ljava/util/function/Supplier;

    iget-object v6, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mResponseConsumer:Ljava/util/function/Consumer;

    iget-object v8, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mMainThreadHandler:Landroid/os/Handler;

    move-object v7, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "requestInfo":Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
    .end local p2    # "callback":Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;
    .local v2, "requestInfo":Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
    .local v3, "callback":Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;
    invoke-direct/range {v1 .. v8}, Landroid/inputmethodservice/InlineSuggestionSession;-><init>(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Landroid/inputmethodservice/InlineSuggestionSessionController;Landroid/os/Handler;)V

    iput-object v1, v7, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    .line 108
    iget-boolean p1, v7, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputStarted:Z

    if-eqz p1, :cond_58

    iget-object p1, v7, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {p1}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestInfo()Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 109
    iget-object p1, v7, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {p1}, Landroid/inputmethodservice/InlineSuggestionSession;->makeInlineSuggestionRequestUncheck()V

    .line 111
    iget-boolean p1, v7, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    if-eqz p1, :cond_58

    .line 113
    :try_start_34
    iget-object p1, v7, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {p1}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInputMethodStartInputView()V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3d} :catch_3e

    .line 116
    goto :goto_58

    .line 114
    :catch_3e
    move-exception v0

    move-object p1, v0

    .line 115
    .local p1, "e":Landroid/os/RemoteException;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInputMethodStartInputView() remote exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "InlineSuggestionSessionController"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local p1    # "e":Landroid/os/RemoteException;
    :cond_58
    :goto_58
    return-void
.end method
