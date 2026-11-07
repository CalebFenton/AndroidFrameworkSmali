.class public final synthetic Landroid/view/inputmethod/InputMethodManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsInt(Ljava/lang/Object;)I
    .registers 2

    .line 0
    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->lambda$getShortcutInputMethodsAndSubtypes$8(Landroid/view/inputmethod/InputMethodInfo;)I

    move-result p1

    return p1
.end method
