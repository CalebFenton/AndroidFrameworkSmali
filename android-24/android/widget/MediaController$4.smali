.class Landroid/widget/MediaController$4;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Landroid/widget/MediaController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/MediaController;

    #@0
    .prologue
    .line 409
    iput-object p1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 412
    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #@2
    invoke-static {v1}, Landroid/widget/MediaController;->-wrap0(Landroid/widget/MediaController;)I

    #@5
    move-result v0

    #@6
    .line 413
    .local v0, "pos":I
    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #@8
    invoke-static {v1}, Landroid/widget/MediaController;->-get3(Landroid/widget/MediaController;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #@10
    invoke-static {v1}, Landroid/widget/MediaController;->-get6(Landroid/widget/MediaController;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #@18
    invoke-static {v1}, Landroid/widget/MediaController;->-get4(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    #@1b
    move-result-object v1

    #@1c
    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 414
    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #@24
    iget-object v2, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #@26
    invoke-static {v2}, Landroid/widget/MediaController;->-get5(Landroid/widget/MediaController;)Ljava/lang/Runnable;

    #@29
    move-result-object v2

    #@2a
    rem-int/lit16 v3, v0, 0x3e8

    #@2c
    rsub-int v3, v3, 0x3e8

    #@2e
    int-to-long v4, v3

    #@2f
    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/MediaController;->postDelayed(Ljava/lang/Runnable;J)Z

    #@32
    .line 411
    :cond_0
    return-void
.end method
