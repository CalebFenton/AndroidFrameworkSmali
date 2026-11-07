.class public final synthetic Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/content/Context;

.field public final synthetic blacklist f$3:Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

.field public final synthetic blacklist f$4:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;ILandroid/content/Context;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda8;->f$0:Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;

    iput p2, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda8;->f$1:I

    iput-object p3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda8;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda8;->f$3:Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

    iput-object p5, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda8;->f$4:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/view/View;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda8;->f$0:Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;

    iget v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda8;->f$1:I

    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda8;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda8;->f$3:Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda8;->f$4:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->$r8$lambda$QTC6Ktka0_3HbqdHII-Rd9HNQng(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;ILandroid/content/Context;Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;Landroid/view/View;)V

    return-void
.end method
