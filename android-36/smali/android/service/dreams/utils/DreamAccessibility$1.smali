.class Landroid/service/dreams/utils/DreamAccessibility$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "DreamAccessibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/utils/DreamAccessibility;->createNewAccessibilityDelegate(Landroid/content/Context;)Landroid/view/View$AccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/dreams/utils/DreamAccessibility;

.field final synthetic blacklist val$context:Landroid/content/Context;


# direct methods
.method constructor blacklist <init>(Landroid/service/dreams/utils/DreamAccessibility;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Landroid/service/dreams/utils/DreamAccessibility;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 63
    iput-object p1, p0, Landroid/service/dreams/utils/DreamAccessibility$1;->this$0:Landroid/service/dreams/utils/DreamAccessibility;

    iput-object p2, p0, Landroid/service/dreams/utils/DreamAccessibility$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 66
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 67
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v1, p0, Landroid/service/dreams/utils/DreamAccessibility$1;->val$context:Landroid/content/Context;

    .line 69
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104036c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x100000

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 71
    return-void
.end method

.method public whitelist performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 75
    packed-switch p2, :pswitch_data_18

    goto :goto_15

    .line 77
    :pswitch_4
    iget-object v0, p0, Landroid/service/dreams/utils/DreamAccessibility$1;->this$0:Landroid/service/dreams/utils/DreamAccessibility;

    invoke-static {v0}, Landroid/service/dreams/utils/DreamAccessibility;->-$$Nest$fgetmDismissCallback(Landroid/service/dreams/utils/DreamAccessibility;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 78
    iget-object v0, p0, Landroid/service/dreams/utils/DreamAccessibility$1;->this$0:Landroid/service/dreams/utils/DreamAccessibility;

    invoke-static {v0}, Landroid/service/dreams/utils/DreamAccessibility;->-$$Nest$fgetmDismissCallback(Landroid/service/dreams/utils/DreamAccessibility;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 82
    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x100000
        :pswitch_4
    .end packed-switch
.end method
