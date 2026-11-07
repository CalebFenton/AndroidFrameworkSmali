.class public final synthetic Landroid/view/InsetsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    check-cast p1, Landroid/view/InsetsController;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Integer;

    invoke-static {p1, p2, p3}, Landroid/view/InsetsController;->lambda$new$2(Landroid/view/InsetsController;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/view/InsetsSourceConsumer;

    move-result-object p1

    return-object p1
.end method
