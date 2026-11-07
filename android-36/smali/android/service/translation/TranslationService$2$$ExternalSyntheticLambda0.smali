.class public final synthetic Landroid/service/translation/TranslationService$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 0
    check-cast p1, Landroid/service/translation/TranslationService;

    check-cast p2, Landroid/view/translation/TranslationRequest;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Landroid/os/CancellationSignal;

    check-cast p5, Ljava/util/function/Consumer;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/service/translation/TranslationService;->onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method
