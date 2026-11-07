.class public final synthetic Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/View$OnLongClickListener;

.field public final synthetic blacklist f$1:Landroid/service/autofill/IInlineSuggestionUiCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/View$OnLongClickListener;Landroid/service/autofill/IInlineSuggestionUiCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda1;->f$0:Landroid/view/View$OnLongClickListener;

    iput-object p2, p0, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda1;->f$1:Landroid/service/autofill/IInlineSuggestionUiCallback;

    return-void
.end method


# virtual methods
.method public final whitelist onLongClick(Landroid/view/View;)Z
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda1;->f$0:Landroid/view/View$OnLongClickListener;

    iget-object v1, p0, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda1;->f$1:Landroid/service/autofill/IInlineSuggestionUiCallback;

    invoke-static {v0, v1, p1}, Landroid/service/autofill/InlineSuggestionRenderService;->lambda$handleRenderSuggestion$1(Landroid/view/View$OnLongClickListener;Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
