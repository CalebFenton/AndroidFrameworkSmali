.class Landroid/view/ViewRootImpl$4;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->loadSystemProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 5643
    iput-object p1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x16

    #@2
    const/4 v3, 0x0

    #@3
    .line 5647
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    #@5
    const-string/jumbo v2, "viewroot.profile_rendering"

    #@8
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@b
    move-result v2

    #@c
    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->-set0(Landroid/view/ViewRootImpl;Z)Z

    #@f
    .line 5648
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    #@11
    iget-object v2, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    #@13
    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@15
    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    #@17
    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->-wrap7(Landroid/view/ViewRootImpl;Z)V

    #@1a
    .line 5651
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    #@1c
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1e
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 5652
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    #@24
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@26
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    #@28
    invoke-virtual {v1}, Landroid/view/HardwareRenderer;->loadSystemProperties()Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_0

    #@2e
    .line 5653
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    #@30
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->invalidate()V

    #@33
    .line 5658
    :cond_0
    const-string/jumbo v1, "debug.layout"

    #@36
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@39
    move-result v0

    #@3a
    .line 5659
    .local v0, "layout":Z
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    #@3c
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3e
    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    #@40
    if-eq v0, v1, :cond_1

    #@42
    .line 5660
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    #@44
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@46
    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    #@48
    .line 5661
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    #@4a
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@4c
    invoke-virtual {v1, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    #@4f
    move-result v1

    #@50
    if-nez v1, :cond_1

    #@52
    .line 5662
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    #@54
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@56
    const-wide/16 v2, 0xc8

    #@58
    invoke-virtual {v1, v4, v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    #@5b
    .line 5645
    :cond_1
    return-void
.end method
