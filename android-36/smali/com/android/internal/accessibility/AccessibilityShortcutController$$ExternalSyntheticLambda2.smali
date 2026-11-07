.class public final synthetic Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;ILandroid/view/accessibility/AccessibilityManager;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iput p2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda2;->f$2:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda2;->f$2:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->$r8$lambda$qmgNUe48dCpmpywcPbAzF82vIh8(Lcom/android/internal/accessibility/AccessibilityShortcutController;ILandroid/view/accessibility/AccessibilityManager;Landroid/content/DialogInterface;I)V

    return-void
.end method
