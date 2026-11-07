.class public final synthetic Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;

    return-void
.end method


# virtual methods
.method public final whitelist onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;

    invoke-static {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->lambda$performTtsPrompt$3(Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;Landroid/content/DialogInterface;)V

    return-void
.end method
