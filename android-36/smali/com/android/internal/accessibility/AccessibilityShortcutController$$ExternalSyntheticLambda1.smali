.class public final synthetic Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iput p2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->$r8$lambda$Zj00m1z9SSpTOHlC_TDTyIO378A(Lcom/android/internal/accessibility/AccessibilityShortcutController;ILandroid/content/DialogInterface;I)V

    return-void
.end method
