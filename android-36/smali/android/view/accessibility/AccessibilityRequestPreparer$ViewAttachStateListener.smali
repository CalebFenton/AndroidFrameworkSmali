.class Landroid/view/accessibility/AccessibilityRequestPreparer$ViewAttachStateListener;
.super Ljava/lang/Object;
.source "AccessibilityRequestPreparer.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityRequestPreparer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewAttachStateListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/accessibility/AccessibilityRequestPreparer;


# direct methods
.method private constructor blacklist <init>(Landroid/view/accessibility/AccessibilityRequestPreparer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 108
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRequestPreparer$ViewAttachStateListener;->this$0:Landroid/view/accessibility/AccessibilityRequestPreparer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/accessibility/AccessibilityRequestPreparer;Landroid/view/accessibility/AccessibilityRequestPreparer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityRequestPreparer$ViewAttachStateListener;-><init>(Landroid/view/accessibility/AccessibilityRequestPreparer;)V

    return-void
.end method


# virtual methods
.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 111
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_13

    .line 117
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRequestPreparer$ViewAttachStateListener;->this$0:Landroid/view/accessibility/AccessibilityRequestPreparer;

    .line 118
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityRequestPreparer(Landroid/view/accessibility/AccessibilityRequestPreparer;)V

    .line 120
    :cond_13
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 121
    return-void
.end method
