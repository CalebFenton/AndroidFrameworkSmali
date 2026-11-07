.class Landroid/widget/VideoView$5;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/VideoView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/VideoView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/VideoView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 570
    iput-object p1, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onError(Landroid/media/MediaPlayer;II)Z
    .registers 10
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v0, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/widget/VideoView;->-$$Nest$fputmCurrentState(Landroid/widget/VideoView;I)V

    .line 574
    iget-object v0, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v0, v1}, Landroid/widget/VideoView;->-$$Nest$fputmTargetState(Landroid/widget/VideoView;I)V

    .line 575
    iget-object v0, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaController(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 576
    iget-object v0, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaController(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 580
    :cond_3e
    iget-object v0, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmOnErrorListener(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5a

    .line 581
    iget-object v0, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-$$Nest$fgetmOnErrorListener(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-$$Nest$fgetmMediaPlayer(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v0, v2, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 582
    return v1

    .line 591
    :cond_5a
    iget-object v0, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 592
    iget-object v0, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 595
    .local v0, "r":Landroid/content/res/Resources;
    const/16 v2, 0xc8

    if-ne p2, v2, :cond_74

    .line 596
    const v2, 0x1040015

    .local v2, "messageId":I
    goto :goto_77

    .line 598
    .end local v2    # "messageId":I
    :cond_74
    const v2, 0x1040011

    .line 601
    .restart local v2    # "messageId":I
    :goto_77
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 602
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Landroid/widget/VideoView$5$1;

    invoke-direct {v4, p0}, Landroid/widget/VideoView$5$1;-><init>(Landroid/widget/VideoView$5;)V

    .line 603
    const v5, 0x1040010

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 614
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 615
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 617
    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v2    # "messageId":I
    :cond_9a
    return v1
.end method
