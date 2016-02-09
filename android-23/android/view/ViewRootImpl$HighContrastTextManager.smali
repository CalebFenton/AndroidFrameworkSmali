.class final Landroid/view/ViewRootImpl$HighContrastTextManager;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HighContrastTextManager"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 2
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 6975
    iput-object p1, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 6976
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7
    iget-object v1, p1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@9
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isHighTextContrastEnabled()Z

    #@c
    move-result v1

    #@d
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHighContrastText:Z

    #@f
    .line 6975
    return-void
.end method


# virtual methods
.method public onHighTextContrastStateChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 6980
    iget-object v0, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    #@2
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4
    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mHighContrastText:Z

    #@6
    .line 6983
    iget-object v0, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    #@8
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    #@b
    .line 6986
    iget-object v0, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    #@d
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    #@10
    .line 6979
    return-void
.end method
