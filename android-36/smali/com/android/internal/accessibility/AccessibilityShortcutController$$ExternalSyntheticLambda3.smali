.class public final synthetic Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iput p2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->$r8$lambda$QFqpin7U65atpPLiUGW2NItvSXg(Lcom/android/internal/accessibility/AccessibilityShortcutController;ILandroid/content/DialogInterface;)V

    return-void
.end method
