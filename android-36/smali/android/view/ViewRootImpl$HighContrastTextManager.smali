.class final Landroid/view/ViewRootImpl$HighContrastTextManager;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$HighContrastTextStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HighContrastTextManager"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 12184
    iput-object p1, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12185
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isHighContrastTextEnabled()Z

    move-result v0

    invoke-static {v0}, Landroid/view/ThreadedRenderer;->setHighContrastText(Z)V

    .line 12186
    return-void
.end method


# virtual methods
.method public whitelist onHighContrastTextStateChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 12189
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->setHighContrastText(Z)V

    .line 12191
    iget-object v0, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mdestroyAndInvalidate(Landroid/view/ViewRootImpl;)V

    .line 12192
    return-void
.end method
