.class Landroid/view/ViewRootImpl$10;
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
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10181
    iput-object p1, p0, Landroid/view/ViewRootImpl$10;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 10185
    iget-object v0, p0, Landroid/view/ViewRootImpl$10;->this$0:Landroid/view/ViewRootImpl;

    const-string/jumbo v1, "viewroot.profile_rendering"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$fputmProfileRendering(Landroid/view/ViewRootImpl;Z)V

    .line 10186
    iget-object v0, p0, Landroid/view/ViewRootImpl$10;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$10;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$mprofileRendering(Landroid/view/ViewRootImpl;Z)V

    .line 10189
    iget-object v0, p0, Landroid/view/ViewRootImpl$10;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_31

    .line 10190
    iget-object v0, p0, Landroid/view/ViewRootImpl$10;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->loadSystemProperties()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 10191
    iget-object v0, p0, Landroid/view/ViewRootImpl$10;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 10196
    :cond_31
    invoke-static {}, Landroid/sysprop/DisplayProperties;->debug_layout()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 10197
    .local v0, "layout":Z
    iget-object v1, p0, Landroid/view/ViewRootImpl$10;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    if-eq v0, v1, :cond_66

    .line 10198
    iget-object v1, p0, Landroid/view/ViewRootImpl$10;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    .line 10199
    iget-object v1, p0, Landroid/view/ViewRootImpl$10;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_66

    .line 10200
    iget-object v1, p0, Landroid/view/ViewRootImpl$10;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 10203
    :cond_66
    return-void
.end method
