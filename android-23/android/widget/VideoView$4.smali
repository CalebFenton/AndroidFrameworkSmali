.class Landroid/widget/VideoView$4;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/VideoView;

    #@0
    .prologue
    .line 489
    iput-object p1, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    #@0
    .prologue
    .line 491
    iget-object v0, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #@2
    invoke-static {v0}, Landroid/widget/VideoView;->-get6(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 492
    iget-object v0, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #@a
    invoke-static {v0}, Landroid/widget/VideoView;->-get6(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    #@11
    .line 494
    :cond_0
    const/4 v0, 0x1

    #@12
    return v0
.end method
