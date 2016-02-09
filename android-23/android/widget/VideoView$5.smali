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
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/VideoView;

    #@0
    .prologue
    .line 499
    iput-object p1, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, -0x1

    #@2
    .line 501
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@4
    invoke-static {v2}, Landroid/widget/VideoView;->-get0(Landroid/widget/VideoView;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "Error: "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    const-string/jumbo v4, ","

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 502
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@2c
    invoke-static {v2, v5}, Landroid/widget/VideoView;->-set4(Landroid/widget/VideoView;I)I

    #@2f
    .line 503
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@31
    invoke-static {v2, v5}, Landroid/widget/VideoView;->-set8(Landroid/widget/VideoView;I)I

    #@34
    .line 504
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@36
    invoke-static {v2}, Landroid/widget/VideoView;->-get2(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    #@39
    move-result-object v2

    #@3a
    if-eqz v2, :cond_0

    #@3c
    .line 505
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@3e
    invoke-static {v2}, Landroid/widget/VideoView;->-get2(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    #@45
    .line 509
    :cond_0
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@47
    invoke-static {v2}, Landroid/widget/VideoView;->-get5(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    #@4a
    move-result-object v2

    #@4b
    if-eqz v2, :cond_1

    #@4d
    .line 510
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@4f
    invoke-static {v2}, Landroid/widget/VideoView;->-get5(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    #@52
    move-result-object v2

    #@53
    iget-object v3, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@55
    invoke-static {v3}, Landroid/widget/VideoView;->-get3(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    #@58
    move-result-object v3

    #@59
    invoke-interface {v2, v3, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_1

    #@5f
    .line 511
    return v6

    #@60
    .line 520
    :cond_1
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@62
    invoke-virtual {v2}, Landroid/widget/VideoView;->getWindowToken()Landroid/os/IBinder;

    #@65
    move-result-object v2

    #@66
    if-eqz v2, :cond_2

    #@68
    .line 521
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@6a
    invoke-static {v2}, Landroid/widget/VideoView;->-get1(Landroid/widget/VideoView;)Landroid/content/Context;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@71
    move-result-object v1

    #@72
    .line 524
    .local v1, "r":Landroid/content/res/Resources;
    const/16 v2, 0xc8

    #@74
    if-ne p2, v2, :cond_3

    #@76
    .line 525
    const v0, 0x1040015

    #@79
    .line 530
    .local v0, "messageId":I
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    #@7b
    iget-object v3, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@7d
    invoke-static {v3}, Landroid/widget/VideoView;->-get1(Landroid/widget/VideoView;)Landroid/content/Context;

    #@80
    move-result-object v3

    #@81
    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@84
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    #@87
    move-result-object v2

    #@88
    .line 533
    new-instance v3, Landroid/widget/VideoView$5$1;

    #@8a
    invoke-direct {v3, p0}, Landroid/widget/VideoView$5$1;-><init>(Landroid/widget/VideoView$5;)V

    #@8d
    .line 532
    const v4, 0x1040010

    #@90
    .line 530
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@93
    move-result-object v2

    #@94
    .line 543
    const/4 v3, 0x0

    #@95
    .line 530
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    #@98
    move-result-object v2

    #@99
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    #@9c
    .line 546
    .end local v0    # "messageId":I
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_2
    return v6

    #@9d
    .line 527
    .restart local v1    # "r":Landroid/content/res/Resources;
    :cond_3
    const v0, 0x1040011

    #@a0
    .restart local v0    # "messageId":I
    goto :goto_0
.end method
