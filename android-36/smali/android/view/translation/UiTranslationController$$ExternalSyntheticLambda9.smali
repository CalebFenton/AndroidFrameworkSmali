.class public final synthetic Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/View;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/View;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda9;->f$0:Landroid/view/View;

    iput-boolean p2, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda9;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda9;->f$0:Landroid/view/View;

    iget-boolean v1, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda9;->f$1:Z

    invoke-static {v0, v1}, Landroid/view/translation/UiTranslationController;->lambda$onVirtualViewTranslationCompleted$3(Landroid/view/View;Z)V

    return-void
.end method
