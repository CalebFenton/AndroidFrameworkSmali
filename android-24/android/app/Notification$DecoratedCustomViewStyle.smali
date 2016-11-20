.class public Landroid/app/Notification$DecoratedCustomViewStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedCustomViewStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5337
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    return-void
.end method

.method private buildIntoRemoteViewContent(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "customContent"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const v2, 0x10203b1

    #@3
    .line 5406
    if-eqz p2, :cond_0

    #@5
    .line 5409
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    #@8
    move-result-object p2

    #@9
    .line 5410
    invoke-virtual {p1, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    #@c
    .line 5411
    invoke-virtual {p1, v2, p2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    #@f
    .line 5414
    :cond_0
    const v0, 0x1050040

    #@12
    .line 5415
    .local v0, "endMargin":I
    iget-object v1, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@14
    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@17
    move-result-object v1

    #@18
    invoke-static {v1}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 5416
    const v0, 0x1050042

    #@21
    .line 5418
    :cond_1
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    #@24
    .line 5405
    return-void
.end method

.method private makeDecoratedBigContentView()Landroid/widget/RemoteViews;
    .locals 4

    #@0
    .prologue
    .line 5392
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    invoke-static {v2}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@5
    move-result-object v2

    #@6
    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@8
    if-nez v2, :cond_0

    #@a
    .line 5393
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@c
    invoke-static {v2}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@f
    move-result-object v2

    #@10
    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@12
    .line 5395
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    :goto_0
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@14
    invoke-static {v2}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_1

    #@1e
    .line 5396
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    #@21
    move-result-object v2

    #@22
    return-object v2

    #@23
    .line 5394
    .end local v0    # "bigContentView":Landroid/widget/RemoteViews;
    :cond_0
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@25
    invoke-static {v2}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@28
    move-result-object v2

    #@29
    iget-object v0, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@2b
    .restart local v0    # "bigContentView":Landroid/widget/RemoteViews;
    goto :goto_0

    #@2c
    .line 5398
    :cond_1
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@2e
    .line 5399
    iget-object v3, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@30
    invoke-static {v3}, Landroid/app/Notification$Builder;->-wrap7(Landroid/app/Notification$Builder;)I

    #@33
    move-result v3

    #@34
    .line 5398
    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->-wrap2(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;

    #@37
    move-result-object v1

    #@38
    .line 5400
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    invoke-direct {p0, v1, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->buildIntoRemoteViewContent(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    #@3b
    .line 5401
    return-object v1
.end method

.method private makeDecoratedHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 4

    #@0
    .prologue
    .line 5372
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    invoke-static {v2}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@5
    move-result-object v2

    #@6
    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@8
    if-nez v2, :cond_0

    #@a
    .line 5373
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@c
    invoke-static {v2}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@f
    move-result-object v2

    #@10
    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@12
    .line 5375
    .local v0, "headsUpContentView":Landroid/widget/RemoteViews;
    :goto_0
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@14
    invoke-static {v2}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_1

    #@1e
    .line 5376
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    #@21
    move-result-object v2

    #@22
    return-object v2

    #@23
    .line 5374
    .end local v0    # "headsUpContentView":Landroid/widget/RemoteViews;
    :cond_0
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@25
    invoke-static {v2}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@28
    move-result-object v2

    #@29
    iget-object v0, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@2b
    .restart local v0    # "headsUpContentView":Landroid/widget/RemoteViews;
    goto :goto_0

    #@2c
    .line 5378
    :cond_1
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@2e
    .line 5379
    iget-object v3, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@30
    invoke-static {v3}, Landroid/app/Notification$Builder;->-wrap7(Landroid/app/Notification$Builder;)I

    #@33
    move-result v3

    #@34
    .line 5378
    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->-wrap2(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;

    #@37
    move-result-object v1

    #@38
    .line 5380
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    invoke-direct {p0, v1, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->buildIntoRemoteViewContent(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    #@3b
    .line 5381
    return-object v1
.end method

.method private makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "customContent"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 5385
    iget-object v1, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    .line 5386
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@4
    invoke-static {v2}, Landroid/app/Notification$Builder;->-wrap6(Landroid/app/Notification$Builder;)I

    #@7
    move-result v2

    #@8
    .line 5385
    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->-wrap5(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;

    #@b
    move-result-object v0

    #@c
    .line 5387
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$DecoratedCustomViewStyle;->buildIntoRemoteViewContent(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    #@f
    .line 5388
    return-object v0
.end method


# virtual methods
.method public displayCustomViewInline()Z
    .locals 1

    #@0
    .prologue
    .line 5344
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    #@0
    .prologue
    .line 5360
    invoke-direct {p0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeDecoratedBigContentView()Landroid/widget/RemoteViews;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public makeContentView()Landroid/widget/RemoteViews;
    .locals 1

    #@0
    .prologue
    .line 5352
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    invoke-static {v0}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@5
    move-result-object v0

    #@6
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@8
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1

    #@0
    .prologue
    .line 5368
    invoke-direct {p0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeDecoratedHeadsUpContentView()Landroid/widget/RemoteViews;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
