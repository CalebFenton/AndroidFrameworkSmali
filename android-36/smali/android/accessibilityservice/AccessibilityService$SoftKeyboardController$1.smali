.class Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;
.super Ljava/lang/Object;
.source "AccessibilityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->dispatchSoftKeyboardShowModeChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

.field final synthetic blacklist val$listener:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

.field final synthetic blacklist val$showMode:I


# direct methods
.method constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;I)V
    .registers 4
    .param p1, "this$0"    # Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2224
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->this$0:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->val$listener:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

    iput p3, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->val$showMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 2227
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->val$listener:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->this$0:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->val$showMode:I

    invoke-interface {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;->onShowModeChanged(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;I)V

    .line 2228
    return-void
.end method
