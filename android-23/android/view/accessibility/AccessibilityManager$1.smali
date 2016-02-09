.class Landroid/view/accessibility/AccessibilityManager$1;
.super Landroid/view/accessibility/IAccessibilityManagerClient$Stub;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method constructor <init>(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/accessibility/AccessibilityManager;

    #@0
    .prologue
    .line 168
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    #@2
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public setState(I)V
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    #@2
    iget-object v0, v0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    #@4
    const/4 v1, 0x4

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@d
    .line 169
    return-void
.end method
