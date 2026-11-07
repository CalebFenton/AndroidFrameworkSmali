.class public final synthetic Landroid/view/View$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/View;

.field public final synthetic blacklist f$1:Landroid/view/accessibility/AccessibilityEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/View$$ExternalSyntheticLambda9;->f$0:Landroid/view/View;

    iput-object p2, p0, Landroid/view/View$$ExternalSyntheticLambda9;->f$1:Landroid/view/accessibility/AccessibilityEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/View$$ExternalSyntheticLambda9;->f$0:Landroid/view/View;

    iget-object v1, p0, Landroid/view/View$$ExternalSyntheticLambda9;->f$1:Landroid/view/accessibility/AccessibilityEvent;

    invoke-static {v0, v1}, Landroid/view/View;->$r8$lambda$N22t-KtqigFmci4phT9sxcKU7C4(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
