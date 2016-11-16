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
    const-string/jumbo v2, "VideoView"

    #@5
    new-instance v3, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v4, "Error: "

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    const-string/jumbo v4, ","

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 502
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@29
    invoke-static {v2, v5}, Landroid/widget/VideoView;->-set4(Landroid/widget/VideoView;I)I

    #@2c
    .line 503
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@2e
    invoke-static {v2, v5}, Landroid/widget/VideoView;->-set8(Landroid/widget/VideoView;I)I

    #@31
    .line 504
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@33
    invoke-static {v2}, Landroid/widget/VideoView;->-get1(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    #@36
    move-result-object v2

    #@37
    if-eqz v2, :cond_0

    #@39
    .line 505
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@3b
    invoke-static {v2}, Landroid/widget/VideoView;->-get1(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    #@42
    .line 509
    :cond_0
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@44
    invoke-static {v2}, Landroid/widget/VideoView;->-get4(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    #@47
    move-result-object v2

    #@48
    if-eqz v2, :cond_1

    #@4a
    .line 510
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@4c
    invoke-static {v2}, Landroid/widget/VideoView;->-get4(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    #@4f
    move-result-object v2

    #@50
    iget-object v3, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@52
    invoke-static {v3}, Landroid/widget/VideoView;->-get2(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    #@55
    move-result-object v3

    #@56
    invoke-interface {v2, v3, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    #@59
    move-result v2

    #@5a
    if-eqz v2, :cond_1

    #@5c
    .line 511
    return v6

    #@5d
    .line 520
    :cond_1
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@5f
    invoke-virtual {v2}, Landroid/widget/VideoView;->getWindowToken()Landroid/os/IBinder;

    #@62
    move-result-object v2

    #@63
    if-eqz v2, :cond_2

    #@65
    .line 521
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@67
    invoke-static {v2}, Landroid/widget/VideoView;->-get0(Landroid/widget/VideoView;)Landroid/content/Context;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6e
    move-result-object v1

    #@6f
    .line 524
    .local v1, "r":Landroid/content/res/Resources;
    const/16 v2, 0xc8

    #@71
    if-ne p2, v2, :cond_3

    #@73
    .line 525
    const v0, 0x1040015

    #@76
    .line 530
    .local v0, "messageId":I
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    #@78
    iget-object v3, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    #@7a
    invoke-static {v3}, Landroid/widget/VideoView;->-get0(Landroid/widget/VideoView;)Landroid/content/Context;

    #@7d
    move-result-object v3

    #@7e
    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@81
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    #@84
    move-result-object v2

    #@85
    .line 533
    new-instance v3, Landroid/widget/VideoView$5$1;

    #@87
    invoke-direct {v3, p0}, Landroid/widget/VideoView$5$1;-><init>(Landroid/widget/VideoView$5;)V

    #@8a
    .line 532
    const v4, 0x1040010

    #@8d
    .line 530
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@90
    move-result-object v2

    #@91
    .line 543
    const/4 v3, 0x0

    #@92
    .line 530
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    #@95
    move-result-object v2

    #@96
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    #@99
    .line 546
    .end local v0    # "messageId":I
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_2
    return v6

    #@9a
    .line 527
    .restart local v1    # "r":Landroid/content/res/Resources;
    :cond_3
    const v0, 0x1040011

    #@9d
    .restart local v0    # "messageId":I
    goto :goto_0
.end method
