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
    .line 30
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
    .line 32
    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    #@2
    invoke-virtual {v0}, Landroid/widget/ZoomButton;->hasOnClickListeners()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    #@a
    invoke-static {v0}, Landroid/widget/ZoomButton;->-get1(Landroid/widget/ZoomButton;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    #@12
    invoke-virtual {v0}, Landroid/widget/ZoomButton;->isEnabled()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 33
    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    #@1a
    invoke-virtual {v0}, Landroid/widget/ZoomButton;->callOnClick()Z

    #@1d
    .line 34
    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    #@1f
    invoke-static {v0}, Landroid/widget/ZoomButton;->-get0(Landroid/widget/ZoomButton;)Landroid/os/Handler;

    #@22
    move-result-object v0

    #@23
    iget-object v1, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    #@25
    invoke-static {v1}, Landroid/widget/ZoomButton;->-get2(Landroid/widget/ZoomButton;)J

    #@28
    move-result-wide v2

    #@29
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@2c
    .line 31
    :cond_0
    return-void
.end method
