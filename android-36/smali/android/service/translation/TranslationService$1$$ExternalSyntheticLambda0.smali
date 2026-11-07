.class public final synthetic Landroid/service/translation/TranslationService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 0
    check-cast p1, Landroid/service/translation/TranslationService;

    check-cast p2, Landroid/view/translation/TranslationContext;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Lcom/android/internal/os/IResultReceiver;

    invoke-static {p1, p2, p3, p4}, Landroid/service/translation/TranslationService$1;->$r8$lambda$UXHyeP0gKuElO_PKbxAsGVWynp0(Landroid/service/translation/TranslationService;Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method
