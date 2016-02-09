.class Landroid/widget/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 412
    iput-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 8
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 414
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@6
    invoke-static {v2, v5}, Landroid/widget/VideoView;->-set4(Landroid/widget/VideoView;I)I

    #@9
    .line 417
    invoke-virtual {p1, v6, v6}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    #@c
    move-result-object v0

    #@d
    .line 420
    .local v0, "data":Landroid/media/Metadata;
    if-eqz v0, :cond_7

    #@f
    .line 421
    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@11
    invoke-virtual {v0, v3}, Landroid/media/Metadata;->has(I)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_4

    #@17
    .line 422
    invoke-virtual {v0, v3}, Landroid/media/Metadata;->getBoolean(I)Z

    #@1a
    move-result v2

    #@1b
    .line 421
    :goto_0
    invoke-static {v4, v2}, Landroid/widget/VideoView;->-set0(Landroid/widget/VideoView;Z)Z

    #@1e
    .line 423
    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@20
    invoke-virtual {v0, v5}, Landroid/media/Metadata;->has(I)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_5

    #@26
    .line 424
    invoke-virtual {v0, v5}, Landroid/media/Metadata;->getBoolean(I)Z

    #@29
    move-result v2

    #@2a
    .line 423
    :goto_1
    invoke-static {v4, v2}, Landroid/widget/VideoView;->-set1(Landroid/widget/VideoView;Z)Z

    #@2d
    .line 425
    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@2f
    invoke-virtual {v0, v7}, Landroid/media/Metadata;->has(I)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_6

    #@35
    .line 426
    invoke-virtual {v0, v7}, Landroid/media/Metadata;->getBoolean(I)Z

    #@38
    move-result v2

    #@39
    .line 425
    :goto_2
    invoke-static {v4, v2}, Landroid/widget/VideoView;->-set2(Landroid/widget/VideoView;Z)Z

    #@3c
    .line 431
    :goto_3
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@3e
    invoke-static {v2}, Landroid/widget/VideoView;->-get7(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    #@41
    move-result-object v2

    #@42
    if-eqz v2, :cond_0

    #@44
    .line 432
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@46
    invoke-static {v2}, Landroid/widget/VideoView;->-get7(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    #@49
    move-result-object v2

    #@4a
    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@4c
    invoke-static {v4}, Landroid/widget/VideoView;->-get3(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    #@4f
    move-result-object v4

    #@50
    invoke-interface {v2, v4}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    #@53
    .line 434
    :cond_0
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@55
    invoke-static {v2}, Landroid/widget/VideoView;->-get2(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    #@58
    move-result-object v2

    #@59
    if-eqz v2, :cond_1

    #@5b
    .line 435
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@5d
    invoke-static {v2}, Landroid/widget/VideoView;->-get2(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->setEnabled(Z)V

    #@64
    .line 437
    :cond_1
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@66
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    #@69
    move-result v3

    #@6a
    invoke-static {v2, v3}, Landroid/widget/VideoView;->-set10(Landroid/widget/VideoView;I)I

    #@6d
    .line 438
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@6f
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    #@72
    move-result v3

    #@73
    invoke-static {v2, v3}, Landroid/widget/VideoView;->-set9(Landroid/widget/VideoView;I)I

    #@76
    .line 440
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@78
    invoke-static {v2}, Landroid/widget/VideoView;->-get8(Landroid/widget/VideoView;)I

    #@7b
    move-result v1

    #@7c
    .line 441
    .local v1, "seekToPosition":I
    if-eqz v1, :cond_2

    #@7e
    .line 442
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@80
    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->seekTo(I)V

    #@83
    .line 444
    :cond_2
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@85
    invoke-static {v2}, Landroid/widget/VideoView;->-get13(Landroid/widget/VideoView;)I

    #@88
    move-result v2

    #@89
    if-eqz v2, :cond_a

    #@8b
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@8d
    invoke-static {v2}, Landroid/widget/VideoView;->-get12(Landroid/widget/VideoView;)I

    #@90
    move-result v2

    #@91
    if-eqz v2, :cond_a

    #@93
    .line 446
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@95
    invoke-virtual {v2}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    #@98
    move-result-object v2

    #@99
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@9b
    invoke-static {v3}, Landroid/widget/VideoView;->-get13(Landroid/widget/VideoView;)I

    #@9e
    move-result v3

    #@9f
    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@a1
    invoke-static {v4}, Landroid/widget/VideoView;->-get12(Landroid/widget/VideoView;)I

    #@a4
    move-result v4

    #@a5
    invoke-interface {v2, v3, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    #@a8
    .line 447
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@aa
    invoke-static {v2}, Landroid/widget/VideoView;->-get10(Landroid/widget/VideoView;)I

    #@ad
    move-result v2

    #@ae
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@b0
    invoke-static {v3}, Landroid/widget/VideoView;->-get13(Landroid/widget/VideoView;)I

    #@b3
    move-result v3

    #@b4
    if-ne v2, v3, :cond_3

    #@b6
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@b8
    invoke-static {v2}, Landroid/widget/VideoView;->-get9(Landroid/widget/VideoView;)I

    #@bb
    move-result v2

    #@bc
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@be
    invoke-static {v3}, Landroid/widget/VideoView;->-get12(Landroid/widget/VideoView;)I

    #@c1
    move-result v3

    #@c2
    if-ne v2, v3, :cond_3

    #@c4
    .line 451
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@c6
    invoke-static {v2}, Landroid/widget/VideoView;->-get11(Landroid/widget/VideoView;)I

    #@c9
    move-result v2

    #@ca
    if-ne v2, v7, :cond_8

    #@cc
    .line 452
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@ce
    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    #@d1
    .line 453
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@d3
    invoke-static {v2}, Landroid/widget/VideoView;->-get2(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    #@d6
    move-result-object v2

    #@d7
    if-eqz v2, :cond_3

    #@d9
    .line 454
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@db
    invoke-static {v2}, Landroid/widget/VideoView;->-get2(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    #@de
    move-result-object v2

    #@df
    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    #@e2
    .line 413
    :cond_3
    :goto_4
    return-void

    #@e3
    .end local v1    # "seekToPosition":I
    :cond_4
    move v2, v3

    #@e4
    .line 421
    goto/16 :goto_0

    #@e6
    :cond_5
    move v2, v3

    #@e7
    .line 423
    goto/16 :goto_1

    #@e9
    :cond_6
    move v2, v3

    #@ea
    .line 425
    goto/16 :goto_2

    #@ec
    .line 428
    :cond_7
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@ee
    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@f0
    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@f2
    invoke-static {v5, v3}, Landroid/widget/VideoView;->-set2(Landroid/widget/VideoView;Z)Z

    #@f5
    move-result v5

    #@f6
    invoke-static {v4, v5}, Landroid/widget/VideoView;->-set1(Landroid/widget/VideoView;Z)Z

    #@f9
    move-result v4

    #@fa
    invoke-static {v2, v4}, Landroid/widget/VideoView;->-set0(Landroid/widget/VideoView;Z)Z

    #@fd
    goto/16 :goto_3

    #@ff
    .line 456
    .restart local v1    # "seekToPosition":I
    :cond_8
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@101
    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    #@104
    move-result v2

    #@105
    if-nez v2, :cond_3

    #@107
    .line 457
    if-nez v1, :cond_9

    #@109
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@10b
    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    #@10e
    move-result v2

    #@10f
    if-lez v2, :cond_3

    #@111
    .line 458
    :cond_9
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@113
    invoke-static {v2}, Landroid/widget/VideoView;->-get2(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    #@116
    move-result-object v2

    #@117
    if-eqz v2, :cond_3

    #@119
    .line 460
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@11b
    invoke-static {v2}, Landroid/widget/VideoView;->-get2(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    #@11e
    move-result-object v2

    #@11f
    invoke-virtual {v2, v6}, Landroid/widget/MediaController;->show(I)V

    #@122
    goto :goto_4

    #@123
    .line 467
    :cond_a
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@125
    invoke-static {v2}, Landroid/widget/VideoView;->-get11(Landroid/widget/VideoView;)I

    #@128
    move-result v2

    #@129
    if-ne v2, v7, :cond_3

    #@12b
    .line 468
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    #@12d
    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    #@130
    goto :goto_4
.end method
