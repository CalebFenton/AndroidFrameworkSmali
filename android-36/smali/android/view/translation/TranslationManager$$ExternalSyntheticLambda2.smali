.class public final synthetic Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Ljava/util/function/Consumer;

.field public final synthetic blacklist f$2:Landroid/view/translation/Translator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Consumer;

    iput-object p3, p0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda2;->f$2:Landroid/view/translation/Translator;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Consumer;

    iget-object v2, p0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda2;->f$2:Landroid/view/translation/Translator;

    invoke-static {v0, v1, v2}, Landroid/view/translation/TranslationManager;->lambda$createOnDeviceTranslator$3(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V

    return-void
.end method
