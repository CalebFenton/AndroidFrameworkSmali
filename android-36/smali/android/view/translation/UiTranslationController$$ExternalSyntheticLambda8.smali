.class public final synthetic Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/translation/UiTranslationController;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/translation/UiTranslationController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda8;->f$0:Landroid/view/translation/UiTranslationController;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda8;->f$0:Landroid/view/translation/UiTranslationController;

    check-cast p1, Landroid/view/translation/TranslationResponse;

    invoke-virtual {v0, p1}, Landroid/view/translation/UiTranslationController;->onTranslationCompleted(Landroid/view/translation/TranslationResponse;)V

    return-void
.end method
