.class Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;
.super Landroid/os/IRemoteCallback$Stub;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/TranslationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TranslationCapabilityRemoteCallback"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationCapability;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$e3V3u9XgyVVby2iL3fAP_Rd2YBM(Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;->lambda$sendResult$1(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$unQBBJdMfOg4y3Qs5-PVj5vo4XY(Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;->lambda$sendResult$0(Landroid/os/Bundle;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationCapability;",
            ">;)V"
        }
    .end annotation

    .line 457
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationCapability;>;"
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 458
    iput-object p1, p0, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 459
    iput-object p2, p0, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;->mListener:Ljava/util/function/Consumer;

    .line 460
    return-void
.end method

.method private synthetic blacklist lambda$sendResult$0(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 465
    invoke-direct {p0, p1}, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;->onTranslationCapabilityUpdate(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$sendResult$1(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 465
    iget-object v0, p0, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback$$ExternalSyntheticLambda0;-><init>(Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist onTranslationCapabilityUpdate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 469
    const-class v0, Landroid/view/translation/TranslationCapability;

    .line 470
    const-string/jumbo v1, "translation_capabilities"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/translation/TranslationCapability;

    .line 471
    .local v0, "capability":Landroid/view/translation/TranslationCapability;
    iget-object v1, p0, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;->mListener:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 472
    return-void
.end method


# virtual methods
.method public blacklist sendResult(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 464
    new-instance v0, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback$$ExternalSyntheticLambda1;-><init>(Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;Landroid/os/Bundle;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 466
    return-void
.end method
