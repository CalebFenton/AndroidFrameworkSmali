.class public final synthetic Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;

.field public final synthetic blacklist f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback$$ExternalSyntheticLambda0;->f$0:Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;

    iput-object p2, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback$$ExternalSyntheticLambda0;->f$0:Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;

    iget-object v1, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->$r8$lambda$uLt4dwnSnD_79JYexCexMjSzKNI(Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method
