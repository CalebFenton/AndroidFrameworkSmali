.class public final synthetic Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/inputmethod/InlineSuggestion;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/inputmethod/InlineSuggestion;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda2;->f$0:Landroid/view/inputmethod/InlineSuggestion;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda2;->f$0:Landroid/view/inputmethod/InlineSuggestion;

    check-cast p1, Landroid/widget/inline/InlineContentView;

    invoke-static {v0, p1}, Landroid/view/inputmethod/InlineSuggestion;->$r8$lambda$mmGB28AqJBMoLUJaA2S0n1gyx8k(Landroid/view/inputmethod/InlineSuggestion;Landroid/widget/inline/InlineContentView;)V

    return-void
.end method
