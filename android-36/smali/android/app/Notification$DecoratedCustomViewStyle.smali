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
.method public constructor whitelist <init>()V
    .registers 1

    .line 12369
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 12370
    return-void
.end method

.method private blacklist makeDecoratedExpandedContentView()Landroid/widget/RemoteViews;
    .registers 6

    .line 12442
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_13

    .line 12443
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1b

    .line 12444
    :cond_13
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :goto_1b
    nop

    .line 12445
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 12446
    return-object v1

    .line 12448
    :cond_20
    new-instance v2, Landroid/app/Notification$TemplateBindResult;

    invoke-direct {v2, v1}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 12449
    .local v2, "result":Landroid/app/Notification$TemplateBindResult;
    iget-object v1, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, v1, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v1}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    sget v3, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    .line 12450
    invoke-virtual {v1, v3}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 12451
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/app/Notification$StandardTemplateParams;->decorationType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    iget-object v3, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 12452
    invoke-virtual {v1, v3}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 12453
    .local v1, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v3, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 12454
    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$mgetExpandedBaseLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v4

    .line 12453
    invoke-static {v3, v4, v1, v2}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplateWithActions(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 12455
    .local v3, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v4, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v0, v1, v2}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 12457
    return-object v3
.end method

.method private greylist-max-o makeDecoratedHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 6

    .line 12404
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_13

    .line 12405
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1b

    .line 12406
    :cond_13
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :goto_1b
    nop

    .line 12407
    .local v0, "headsUpContentView":Landroid/widget/RemoteViews;
    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 12408
    return-object v1

    .line 12410
    :cond_20
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_31

    .line 12411
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 12413
    :cond_31
    new-instance v2, Landroid/app/Notification$TemplateBindResult;

    invoke-direct {v2, v1}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 12414
    .local v2, "result":Landroid/app/Notification$TemplateBindResult;
    iget-object v1, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, v1, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v1}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    sget v3, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 12415
    invoke-virtual {v1, v3}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 12416
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/app/Notification$StandardTemplateParams;->decorationType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    iget-object v3, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 12417
    invoke-virtual {v1, v3}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 12418
    .local v1, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v3, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 12419
    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$mgetHeadsUpBaseLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v4

    .line 12418
    invoke-static {v3, v4, v1, v2}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplateWithActions(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 12420
    .local v3, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v4, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v0, v1, v2}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 12422
    return-object v3
.end method

.method private greylist-max-o makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 6
    .param p1, "customContent"    # Landroid/widget/RemoteViews;

    .line 12426
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 12427
    return-object v0

    .line 12429
    :cond_4
    new-instance v1, Landroid/app/Notification$TemplateBindResult;

    invoke-direct {v1, v0}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 12430
    .local v1, "result":Landroid/app/Notification$TemplateBindResult;
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v2, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 12431
    invoke-virtual {v0, v2}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 12432
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/Notification$StandardTemplateParams;->decorationType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 12433
    invoke-virtual {v0, v2}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 12434
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v2, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 12435
    invoke-static {v3}, Landroid/app/Notification$Builder;->-$$Nest$mgetCollapsedBaseLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v3

    .line 12434
    invoke-static {v2, v3, v0, v1}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplate(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 12436
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, p1, v0, v1}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 12438
    return-object v2
.end method


# virtual methods
.method public greylist-max-o areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .registers 4
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 12465
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_d

    goto :goto_f

    .line 12469
    :cond_d
    const/4 v0, 0x0

    return v0

    .line 12466
    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o displayCustomViewInline()Z
    .registers 2

    .line 12376
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist makeContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 12384
    iget-object v0, p0, Landroid/app/Notification$DecoratedCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeExpandedContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 12392
    invoke-direct {p0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeDecoratedExpandedContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 12400
    invoke-direct {p0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeDecoratedHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method
