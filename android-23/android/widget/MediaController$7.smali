.class Landroid/widget/MediaController$7;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 663
    iput-object p1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 666
    iget-object v1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    #@2
    invoke-static {v1}, Landroid/widget/MediaController;->-get5(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    #@9
    move-result v0

    #@a
    .line 667
    .local v0, "pos":I
    add-int/lit16 v0, v0, 0x3a98

    #@c
    .line 668
    iget-object v1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    #@e
    invoke-static {v1}, Landroid/widget/MediaController;->-get5(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v1, v0}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    #@15
    .line 669
    iget-object v1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    #@17
    invoke-static {v1}, Landroid/widget/MediaController;->-wrap0(Landroid/widget/MediaController;)I

    #@1a
    .line 671
    iget-object v1, p0, Landroid/widget/MediaController$7;->this$0:Landroid/widget/MediaController;

    #@1c
    const/16 v2, 0xbb8

    #@1e
    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V

    #@21
    .line 665
    return-void
.end method
