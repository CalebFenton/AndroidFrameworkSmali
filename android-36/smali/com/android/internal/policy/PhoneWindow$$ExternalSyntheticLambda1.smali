.class public final synthetic Lcom/android/internal/policy/PhoneWindow$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/Window$OnContentApplyWindowInsetsListener;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist onContentApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/util/Pair;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Lcom/android/internal/policy/PhoneWindow;->lambda$static$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
