.class final Landroid/view/autofill/AutofillManager$AutofillManagerClient;
.super Landroid/view/autofill/IAutoFillManagerClient$Stub;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AutofillManagerClient"
.end annotation


# instance fields
.field private final greylist-max-o mAfm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/autofill/AutofillManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>(Landroid/view/autofill/AutofillManager;)V
    .registers 3
    .param p1, "autofillManager"    # Landroid/view/autofill/AutofillManager;

    .line 4773
    invoke-direct {p0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;-><init>()V

    .line 4774
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    .line 4775
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;-><init>(Landroid/view/autofill/AutofillManager;)V

    return-void
.end method

.method static synthetic blacklist lambda$authenticate$5(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .registers 6
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "authenticationId"    # I
    .param p3, "intent"    # Landroid/content/IntentSender;
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "authenticateInline"    # Z

    .line 4825
    invoke-static/range {p0 .. p5}, Landroid/view/autofill/AutofillManager;->-$$Nest$mauthenticate(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$autofill$1(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V
    .registers 5
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "ids"    # Ljava/util/List;
    .param p3, "values"    # Ljava/util/List;
    .param p4, "hideHighlight"    # Z

    .line 4790
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->-$$Nest$mautofill(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$autofillContent$4(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V
    .registers 4
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "content"    # Landroid/content/ClipData;

    .line 4816
    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-$$Nest$mautofillContent(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchUnhandledKey$13(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .registers 4
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "fullScreen"    # Landroid/view/KeyEvent;

    .line 4897
    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-$$Nest$mdispatchUnhandledKey(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic blacklist lambda$getAugmentedAutofillClient$18(Landroid/view/autofill/AutofillManager;Lcom/android/internal/os/IResultReceiver;)V
    .registers 2
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;

    .line 4950
    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mgetAugmentedAutofillClient(Landroid/view/autofill/AutofillManager;Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyDisableAutofill$12(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V
    .registers 4
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "disableDuration"    # J
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 4889
    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-$$Nest$mnotifyDisableAutofill(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyFillDialogTriggerIds$20(Landroid/view/autofill/AutofillManager;Ljava/util/List;)V
    .registers 2
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "ids"    # Ljava/util/List;

    .line 4966
    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->-$$Nest$msetFillDialogTriggerIds(Landroid/view/autofill/AutofillManager;Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyFillUiHidden$11(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V
    .registers 4
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 4879
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mnotifyCallback(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyFillUiShown$10(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V
    .registers 4
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 4869
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mnotifyCallback(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyNoFillUi$9(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V
    .registers 4
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "sessionFinishedState"    # I

    .line 4860
    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-$$Nest$mnotifyNoFillUi(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onGetCredentialException$3(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "errorType"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .line 4808
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->-$$Nest$monGetCredentialException(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onGetCredentialResponse$2(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V
    .registers 4
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "response"    # Landroid/credentials/GetCredentialResponse;

    .line 4799
    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->-$$Nest$monGetCredentialResponse(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestHideFillUi$7(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .registers 3
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 4844
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mrequestHideFillUi(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$requestHideFillUiWhenDestroyed$8(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .registers 3
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 4852
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mrequestHideFillUi(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$requestShowFillUi$6(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 7
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "anchorBounds"    # Landroid/graphics/Rect;
    .param p6, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .line 4835
    invoke-static/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->-$$Nest$mrequestShowFillUi(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestShowSoftInput$19(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .registers 2
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 4958
    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mrequestShowSoftInput(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic blacklist lambda$setSaveUiState$16(Landroid/view/autofill/AutofillManager;IZ)V
    .registers 3
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "shown"    # Z

    .line 4934
    invoke-static {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->-$$Nest$msetSaveUiState(Landroid/view/autofill/AutofillManager;IZ)V

    return-void
.end method

.method static synthetic blacklist lambda$setSessionFinished$17(Landroid/view/autofill/AutofillManager;ILjava/util/List;)V
    .registers 3
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "newState"    # I
    .param p2, "autofillableIds"    # Ljava/util/List;

    .line 4942
    invoke-static {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->-$$Nest$msetSessionFinished(Landroid/view/autofill/AutofillManager;ILjava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$setState$0(Landroid/view/autofill/AutofillManager;I)V
    .registers 2
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "flags"    # I

    .line 4781
    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->-$$Nest$msetState(Landroid/view/autofill/AutofillManager;I)V

    return-void
.end method

.method static synthetic blacklist lambda$setTrackedViews$15(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;Z)V
    .registers 8
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "sessionId"    # I
    .param p2, "ids"    # [Landroid/view/autofill/AutofillId;
    .param p3, "saveOnAllViewsInvisible"    # Z
    .param p4, "saveOnFinish"    # Z
    .param p5, "fillableIds"    # [Landroid/view/autofill/AutofillId;
    .param p6, "saveTriggerId"    # Landroid/view/autofill/AutofillId;
    .param p7, "shouldGrabViewFingerprints"    # Z

    .line 4925
    invoke-static/range {p0 .. p7}, Landroid/view/autofill/AutofillManager;->-$$Nest$msetTrackedViews(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$startIntentSender$14(Landroid/view/autofill/AutofillManager;Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 11
    .param p0, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p1, "intentSender"    # Landroid/content/IntentSender;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 4907
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 4908
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 4910
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object v7, v0

    .line 4911
    .local v7, "options":Landroid/os/Bundle;
    invoke-static {p0}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmContext(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;

    move-result-object v1
    :try_end_12
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_12} :catch_1e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "intentSender":Landroid/content/IntentSender;
    .end local p2    # "intent":Landroid/content/Intent;
    .local v2, "intentSender":Landroid/content/IntentSender;
    .local v3, "intent":Landroid/content/Intent;
    :try_start_17
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1a
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 4914
    .end local v7    # "options":Landroid/os/Bundle;
    goto :goto_3b

    .line 4912
    :catch_1b
    move-exception v0

    move-object p1, v0

    goto :goto_22

    .end local v2    # "intentSender":Landroid/content/IntentSender;
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p1    # "intentSender":Landroid/content/IntentSender;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catch_1e
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move-object p1, v0

    .line 4913
    .end local p2    # "intent":Landroid/content/Intent;
    .restart local v2    # "intentSender":Landroid/content/IntentSender;
    .restart local v3    # "intent":Landroid/content/Intent;
    .local p1, "e":Landroid/content/IntentSender$SendIntentException;
    :goto_22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "startIntentSender() failed for intent:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AutofillManager"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4915
    .end local p1    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_3b
    return-void
.end method


# virtual methods
.method public blacklist authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .registers 14
    .param p1, "sessionId"    # I
    .param p2, "authenticationId"    # I
    .param p3, "intent"    # Landroid/content/IntentSender;
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "authenticateInline"    # Z

    .line 4823
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/autofill/AutofillManager;

    .line 4824
    .local v2, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v2, :cond_19

    .line 4825
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda1;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .end local p1    # "sessionId":I
    .end local p2    # "authenticationId":I
    .end local p3    # "intent":Landroid/content/IntentSender;
    .end local p4    # "fillInIntent":Landroid/content/Intent;
    .end local p5    # "authenticateInline":Z
    .local v3, "sessionId":I
    .local v4, "authenticationId":I
    .local v5, "intent":Landroid/content/IntentSender;
    .local v6, "fillInIntent":Landroid/content/Intent;
    .local v7, "authenticateInline":Z
    invoke-direct/range {v1 .. v7}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda1;-><init>(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    invoke-virtual {v2, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    goto :goto_1e

    .line 4824
    .end local v3    # "sessionId":I
    .end local v4    # "authenticationId":I
    .end local v5    # "intent":Landroid/content/IntentSender;
    .end local v6    # "fillInIntent":Landroid/content/Intent;
    .end local v7    # "authenticateInline":Z
    .restart local p1    # "sessionId":I
    .restart local p2    # "authenticationId":I
    .restart local p3    # "intent":Landroid/content/IntentSender;
    .restart local p4    # "fillInIntent":Landroid/content/Intent;
    .restart local p5    # "authenticateInline":Z
    :cond_19
    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 4828
    .end local p1    # "sessionId":I
    .end local p2    # "authenticationId":I
    .end local p3    # "intent":Landroid/content/IntentSender;
    .end local p4    # "fillInIntent":Landroid/content/Intent;
    .end local p5    # "authenticateInline":Z
    .restart local v3    # "sessionId":I
    .restart local v4    # "authenticationId":I
    .restart local v5    # "intent":Landroid/content/IntentSender;
    .restart local v6    # "fillInIntent":Landroid/content/Intent;
    .restart local v7    # "authenticateInline":Z
    :goto_1e
    return-void
.end method

.method public blacklist autofill(ILjava/util/List;Ljava/util/List;Z)V
    .registers 12
    .param p1, "sessionId"    # I
    .param p4, "hideHighlight"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;Z)V"
        }
    .end annotation

    .line 4788
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/autofill/AutofillManager;

    .line 4789
    .local v2, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v2, :cond_18

    .line 4790
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda10;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "sessionId":I
    .end local p2    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local p3    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local p4    # "hideHighlight":Z
    .local v3, "sessionId":I
    .local v4, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .local v6, "hideHighlight":Z
    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda10;-><init>(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V

    invoke-virtual {v2, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    goto :goto_1c

    .line 4789
    .end local v3    # "sessionId":I
    .end local v4    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local v6    # "hideHighlight":Z
    .restart local p1    # "sessionId":I
    .restart local p2    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .restart local p3    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .restart local p4    # "hideHighlight":Z
    :cond_18
    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 4792
    .end local p1    # "sessionId":I
    .end local p2    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local p3    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local p4    # "hideHighlight":Z
    .restart local v3    # "sessionId":I
    .restart local v4    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .restart local v5    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .restart local v6    # "hideHighlight":Z
    :goto_1c
    return-void
.end method

.method public blacklist autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "content"    # Landroid/content/ClipData;

    .line 4814
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 4815
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_12

    .line 4816
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda16;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4818
    :cond_12
    return-void
.end method

.method public greylist-max-o dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "fullScreen"    # Landroid/view/KeyEvent;

    .line 4895
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 4896
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_12

    .line 4897
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda4;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4899
    :cond_12
    return-void
.end method

.method public blacklist getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V
    .registers 4
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;

    .line 4948
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 4949
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_12

    .line 4950
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0, p1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda9;-><init>(Landroid/view/autofill/AutofillManager;Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4952
    :cond_12
    return-void
.end method

.method public blacklist notifyDisableAutofill(JLandroid/content/ComponentName;)V
    .registers 6
    .param p1, "disableDuration"    # J
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4887
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 4888
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_12

    .line 4889
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda8;-><init>(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4891
    :cond_12
    return-void
.end method

.method public blacklist notifyFillDialogTriggerIds(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 4964
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 4965
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_12

    .line 4966
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0, p1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda12;-><init>(Landroid/view/autofill/AutofillManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4968
    :cond_12
    return-void
.end method

.method public blacklist notifyFillUiHidden(ILandroid/view/autofill/AutofillId;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 4876
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 4877
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_12

    .line 4878
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda19;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda19;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4882
    :cond_12
    return-void
.end method

.method public blacklist notifyFillUiShown(ILandroid/view/autofill/AutofillId;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 4866
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 4867
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_12

    .line 4868
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda3;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4872
    :cond_12
    return-void
.end method

.method public greylist-max-o notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "sessionFinishedState"    # I

    .line 4858
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 4859
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_12

    .line 4860
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda2;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4862
    :cond_12
    return-void
.end method

.method public blacklist onGetCredentialException(ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "errorType"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .line 4806
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/autofill/AutofillManager;

    .line 4807
    .local v2, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v2, :cond_18

    .line 4808
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda0;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "sessionId":I
    .end local p2    # "id":Landroid/view/autofill/AutofillId;
    .end local p3    # "errorType":Ljava/lang/String;
    .end local p4    # "errorMsg":Ljava/lang/String;
    .local v3, "sessionId":I
    .local v4, "id":Landroid/view/autofill/AutofillId;
    .local v5, "errorType":Ljava/lang/String;
    .local v6, "errorMsg":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda0;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    goto :goto_1c

    .line 4807
    .end local v3    # "sessionId":I
    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    .end local v5    # "errorType":Ljava/lang/String;
    .end local v6    # "errorMsg":Ljava/lang/String;
    .restart local p1    # "sessionId":I
    .restart local p2    # "id":Landroid/view/autofill/AutofillId;
    .restart local p3    # "errorType":Ljava/lang/String;
    .restart local p4    # "errorMsg":Ljava/lang/String;
    :cond_18
    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 4810
    .end local p1    # "sessionId":I
    .end local p2    # "id":Landroid/view/autofill/AutofillId;
    .end local p3    # "errorType":Ljava/lang/String;
    .end local p4    # "errorMsg":Ljava/lang/String;
    .restart local v3    # "sessionId":I
    .restart local v4    # "id":Landroid/view/autofill/AutofillId;
    .restart local v5    # "errorType":Ljava/lang/String;
    .restart local v6    # "errorMsg":Ljava/lang/String;
    :goto_1c
    return-void
.end method

.method public blacklist onGetCredentialResponse(ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "response"    # Landroid/credentials/GetCredentialResponse;

    .line 4797
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 4798
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_12

    .line 4799
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda6;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4801
    :cond_12
    return-void
.end method

.method public greylist-max-o requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 4842
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 4843
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_12

    .line 4844
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda5;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4846
    :cond_12
    return-void
.end method

.method public blacklist requestHideFillUiWhenDestroyed(ILandroid/view/autofill/AutofillId;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 4850
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 4851
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_12

    .line 4852
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda11;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4854
    :cond_12
    return-void
.end method

.method public greylist-max-o requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 16
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "anchorBounds"    # Landroid/graphics/Rect;
    .param p6, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .line 4833
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/autofill/AutofillManager;

    .line 4834
    .local v2, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v2, :cond_1a

    .line 4835
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda13;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    .end local p1    # "sessionId":I
    .end local p2    # "id":Landroid/view/autofill/AutofillId;
    .end local p3    # "width":I
    .end local p4    # "height":I
    .end local p5    # "anchorBounds":Landroid/graphics/Rect;
    .end local p6    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    .local v3, "sessionId":I
    .local v4, "id":Landroid/view/autofill/AutofillId;
    .local v5, "width":I
    .local v6, "height":I
    .local v7, "anchorBounds":Landroid/graphics/Rect;
    .local v8, "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    invoke-direct/range {v1 .. v8}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda13;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    invoke-virtual {v2, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    goto :goto_20

    .line 4834
    .end local v3    # "sessionId":I
    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "anchorBounds":Landroid/graphics/Rect;
    .end local v8    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    .restart local p1    # "sessionId":I
    .restart local p2    # "id":Landroid/view/autofill/AutofillId;
    .restart local p3    # "width":I
    .restart local p4    # "height":I
    .restart local p5    # "anchorBounds":Landroid/graphics/Rect;
    .restart local p6    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    :cond_1a
    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 4838
    .end local p1    # "sessionId":I
    .end local p2    # "id":Landroid/view/autofill/AutofillId;
    .end local p3    # "width":I
    .end local p4    # "height":I
    .end local p5    # "anchorBounds":Landroid/graphics/Rect;
    .end local p6    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    .restart local v3    # "sessionId":I
    .restart local v4    # "id":Landroid/view/autofill/AutofillId;
    .restart local v5    # "width":I
    .restart local v6    # "height":I
    .restart local v7    # "anchorBounds":Landroid/graphics/Rect;
    .restart local v8    # "presenter":Landroid/view/autofill/IAutofillWindowPresenter;
    :goto_20
    return-void
.end method

.method public blacklist requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    .registers 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 4956
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 4957
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_12

    .line 4958
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0, p1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda15;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4960
    :cond_12
    return-void
.end method

.method public greylist-max-o setSaveUiState(IZ)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "shown"    # Z

    .line 4932
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 4933
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_12

    .line 4934
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda17;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda17;-><init>(Landroid/view/autofill/AutofillManager;IZ)V

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4936
    :cond_12
    return-void
.end method

.method public blacklist setSessionFinished(ILjava/util/List;)V
    .registers 5
    .param p1, "newState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 4940
    .local p2, "autofillableIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 4941
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_12

    .line 4942
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda14;-><init>(Landroid/view/autofill/AutofillManager;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4944
    :cond_12
    return-void
.end method

.method public greylist-max-o setState(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 4779
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 4780
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_12

    .line 4781
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda18;

    invoke-direct {v1, v0, p1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda18;-><init>(Landroid/view/autofill/AutofillManager;I)V

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4783
    :cond_12
    return-void
.end method

.method public blacklist setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;Z)V
    .registers 18
    .param p1, "sessionId"    # I
    .param p2, "ids"    # [Landroid/view/autofill/AutofillId;
    .param p3, "saveOnAllViewsInvisible"    # Z
    .param p4, "saveOnFinish"    # Z
    .param p5, "fillableIds"    # [Landroid/view/autofill/AutofillId;
    .param p6, "saveTriggerId"    # Landroid/view/autofill/AutofillId;
    .param p7, "shouldGrabViewFingerprints"    # Z

    .line 4923
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/autofill/AutofillManager;

    .line 4924
    .local v2, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v2, :cond_1c

    .line 4925
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda7;-><init>(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;Z)V

    invoke-virtual {v2, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4928
    :cond_1c
    return-void
.end method

.method public greylist-max-o startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 5
    .param p1, "intentSender"    # Landroid/content/IntentSender;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 4903
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 4904
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_12

    .line 4905
    new-instance v1, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda20;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient$$ExternalSyntheticLambda20;-><init>(Landroid/view/autofill/AutofillManager;Landroid/content/IntentSender;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 4917
    :cond_12
    return-void
.end method
