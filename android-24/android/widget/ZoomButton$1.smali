.class Landroid/widget/ZoomButton$1;
.super Ljava/lang/Object;
.source "ZoomButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ZoomButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ZoomButton;


# direct methods
.method constructor <init>(Landroid/widget/ZoomButton;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ZoomButton;

    #@0
    .prologue
    .line 28
    iput-object p1, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 30
    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    #@a
    invoke-static {v0}, Landroid/widget/ZoomButton;->-get0(Landroid/widget/ZoomButton;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    #@12
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 31
    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    #@1a
    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    #@1d
    .line 32
    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    #@1f
    iget-object v1, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    #@21
    invoke-static {v1}, Landroid/widget/ZoomButton;->-get1(Landroid/widget/ZoomButton;)J

    #@24
    move-result-wide v2

    #@25
    invoke-virtual {v0, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@28
    .line 29
    :cond_0
    return-void
.end method
