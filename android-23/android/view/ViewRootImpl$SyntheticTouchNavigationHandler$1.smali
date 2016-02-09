.class Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)V
    .locals 0
    .param p1, "this$1"    # Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    #@0
    .prologue
    .line 5118
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

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
    .line 5121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 5122
    .local v0, "time":J
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    #@6
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    #@8
    invoke-static {v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-get1(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I

    #@b
    move-result v3

    #@c
    iget-object v4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    #@e
    invoke-static {v4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-get2(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I

    #@11
    move-result v4

    #@12
    invoke-static {v2, v0, v1, v3, v4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-wrap2(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;JII)V

    #@15
    .line 5123
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    #@17
    invoke-static {v2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-get0(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)F

    #@1a
    move-result v3

    #@1b
    const v4, 0x3f4ccccd    # 0.8f

    #@1e
    mul-float/2addr v3, v4

    #@1f
    invoke-static {v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-set0(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;F)F

    #@22
    .line 5124
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    #@24
    invoke-static {v2, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-wrap0(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)Z

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_0

    #@2a
    .line 5125
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    #@2c
    const/4 v3, 0x0

    #@2d
    invoke-static {v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-set1(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;Z)Z

    #@30
    .line 5126
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    #@32
    invoke-static {v2, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-wrap1(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)V

    #@35
    .line 5120
    :cond_0
    return-void
.end method
