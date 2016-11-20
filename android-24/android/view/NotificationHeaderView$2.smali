.class Landroid/view/NotificationHeaderView$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "NotificationHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NotificationHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/NotificationHeaderView;


# direct methods
.method constructor <init>(Landroid/view/NotificationHeaderView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/NotificationHeaderView;

    #@0
    .prologue
    .line 67
    iput-object p1, p0, Landroid/view/NotificationHeaderView$2;->this$0:Landroid/view/NotificationHeaderView;

    #@2
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    #@e
    .line 87
    iget-object v0, p0, Landroid/view/NotificationHeaderView$2;->this$0:Landroid/view/NotificationHeaderView;

    #@10
    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-get3(Landroid/view/NotificationHeaderView;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 88
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@18
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@1b
    .line 83
    :goto_0
    return-void

    #@1c
    .line 90
    :cond_0
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@1e
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@21
    goto :goto_0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 71
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 72
    return v2

    #@8
    .line 74
    :cond_0
    const/high16 v0, 0x80000

    #@a
    if-eq p2, v0, :cond_1

    #@c
    .line 75
    const/high16 v0, 0x40000

    #@e
    if-ne p2, v0, :cond_2

    #@10
    .line 76
    :cond_1
    iget-object v0, p0, Landroid/view/NotificationHeaderView$2;->this$0:Landroid/view/NotificationHeaderView;

    #@12
    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-get2(Landroid/view/NotificationHeaderView;)Landroid/view/View$OnClickListener;

    #@15
    move-result-object v0

    #@16
    iget-object v1, p0, Landroid/view/NotificationHeaderView$2;->this$0:Landroid/view/NotificationHeaderView;

    #@18
    invoke-static {v1}, Landroid/view/NotificationHeaderView;->-get1(Landroid/view/NotificationHeaderView;)Landroid/widget/ImageView;

    #@1b
    move-result-object v1

    #@1c
    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    #@1f
    .line 77
    return v2

    #@20
    .line 79
    :cond_2
    const/4 v0, 0x0

    #@21
    return v0
.end method
