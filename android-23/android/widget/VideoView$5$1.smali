.class Landroid/widget/VideoView$5$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/VideoView$5;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/VideoView$5;


# direct methods
.method constructor <init>(Landroid/widget/VideoView$5;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/VideoView$5;

    #@0
    .prologue
    .line 533
    iput-object p1, p0, Landroid/widget/VideoView$5$1;->this$1:Landroid/widget/VideoView$5;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    #@0
    .prologue
    .line 538
    iget-object v0, p0, Landroid/widget/VideoView$5$1;->this$1:Landroid/widget/VideoView$5;

    #@2
    iget-object v0, v0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@4
    invoke-static {v0}, Landroid/widget/VideoView;->-get4(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 539
    iget-object v0, p0, Landroid/widget/VideoView$5$1;->this$1:Landroid/widget/VideoView$5;

    #@c
    iget-object v0, v0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@e
    invoke-static {v0}, Landroid/widget/VideoView;->-get4(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroid/widget/VideoView$5$1;->this$1:Landroid/widget/VideoView$5;

    #@14
    iget-object v1, v1, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@16
    invoke-static {v1}, Landroid/widget/VideoView;->-get3(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    #@19
    move-result-object v1

    #@1a
    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    #@1d
    .line 534
    :cond_0
    return-void
.end method
