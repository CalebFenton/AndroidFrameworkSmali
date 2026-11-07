.class public final synthetic Landroid/inputmethodservice/InlineSuggestionSession$InlineSuggestionsResponseCallbackImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    check-cast p1, Landroid/inputmethodservice/InlineSuggestionSession;

    check-cast p2, Landroid/view/autofill/AutofillId;

    check-cast p3, Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-virtual {p1, p2, p3}, Landroid/inputmethodservice/InlineSuggestionSession;->handleOnInlineSuggestionsResponse(Landroid/view/autofill/AutofillId;Landroid/view/inputmethod/InlineSuggestionsResponse;)V

    return-void
.end method
