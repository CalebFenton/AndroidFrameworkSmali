.class public final synthetic Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

.field public final synthetic blacklist f$1:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda16;->f$0:Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda16;->f$1:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda16;->f$0:Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda16;->f$1:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;

    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->$r8$lambda$K_6Q5INFXIDZBXjGU7XTVWgTeWE(Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V

    return-void
.end method
