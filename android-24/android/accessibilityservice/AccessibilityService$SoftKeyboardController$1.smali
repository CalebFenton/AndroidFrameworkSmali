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
.field final synthetic this$1:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

.field final synthetic val$listener:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

.field final synthetic val$showMode:I


# direct methods
.method constructor <init>(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;I)V
    .locals 0
    .param p1, "this$1"    # Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;
    .param p2, "val$listener"    # Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;
    .param p3, "val$showMode"    # I

    #@0
    .prologue
    .line 1222
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->this$1:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    #@2
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->val$listener:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

    #@4
    iput p3, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->val$showMode:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 1225
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->val$listener:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;

    #@2
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->this$1:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    #@4
    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$1;->val$showMode:I

    #@6
    invoke-interface {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener;->onShowModeChanged(Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;I)V

    #@9
    .line 1224
    return-void
.end method
