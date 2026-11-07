.class public final synthetic Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;

.field public final synthetic blacklist f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback$$ExternalSyntheticLambda1;->f$0:Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;

    iput-object p2, p0, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback$$ExternalSyntheticLambda1;->f$0:Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;

    iget-object v1, p0, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;->$r8$lambda$e3V3u9XgyVVby2iL3fAP_Rd2YBM(Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method
