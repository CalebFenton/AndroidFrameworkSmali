.class public final Landroid/service/autofill/augmented/FillRequest;
.super Ljava/lang/Object;
.source "FillRequest.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

.field private final blacklist mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;


# direct methods
.method public constructor blacklist <init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;Landroid/view/inputmethod/InlineSuggestionsRequest;)V
    .registers 6
    .param p1, "proxy"    # Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;
    .param p2, "inlineSuggestionsRequest"    # Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Landroid/service/autofill/augmented/FillRequest;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    .line 135
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/service/autofill/augmented/FillRequest;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 137
    iput-object p2, p0, Landroid/service/autofill/augmented/FillRequest;->mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 140
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    return-void
.end method


# virtual methods
.method public whitelist getActivityComponent()Landroid/content/ComponentName;
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/service/autofill/augmented/FillRequest;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    iget-object v0, v0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getFocusedId()Landroid/view/autofill/AutofillId;
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/service/autofill/augmented/FillRequest;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->getFocusedId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFocusedValue()Landroid/view/autofill/AutofillValue;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/service/autofill/augmented/FillRequest;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->getFocusedValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFocusedViewNode()Landroid/app/assist/AssistStructure$ViewNode;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/service/autofill/augmented/FillRequest;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->getFocusedViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInlineSuggestionsRequest()Landroid/view/inputmethod/InlineSuggestionsRequest;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/service/autofill/augmented/FillRequest;->mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    return-object v0
.end method

.method public whitelist getPresentationParams()Landroid/service/autofill/augmented/PresentationParams;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/service/autofill/augmented/FillRequest;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->getSmartSuggestionParams()Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTaskId()I
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/service/autofill/augmented/FillRequest;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    iget v0, v0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mTaskId:I

    return v0
.end method

.method blacklist proxyToString()Ljava/lang/String;
    .registers 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FillRequest[act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/autofill/augmented/FillRequest;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/augmented/FillRequest;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    .line 104
    invoke-virtual {v1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->getFocusedId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FillRequest { proxy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Landroid/service/autofill/augmented/FillRequest;->proxyToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inlineSuggestionsRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/augmented/FillRequest;->mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    return-object v0
.end method
