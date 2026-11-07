.class public final synthetic Landroid/accessibilityservice/AccessibilityButtonController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/accessibilityservice/AccessibilityButtonController;

.field public final synthetic blacklist f$1:Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

.field public final synthetic blacklist f$2:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityButtonController;Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityButtonController$$ExternalSyntheticLambda1;->f$0:Landroid/accessibilityservice/AccessibilityButtonController;

    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityButtonController$$ExternalSyntheticLambda1;->f$1:Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    iput-boolean p3, p0, Landroid/accessibilityservice/AccessibilityButtonController$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController$$ExternalSyntheticLambda1;->f$0:Landroid/accessibilityservice/AccessibilityButtonController;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController$$ExternalSyntheticLambda1;->f$1:Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    iget-boolean v2, p0, Landroid/accessibilityservice/AccessibilityButtonController$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityButtonController;->$r8$lambda$spkb0JBZlw2w-_tdrmD4IfvOXkw(Landroid/accessibilityservice/AccessibilityButtonController;Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Z)V

    return-void
.end method
