.class public Landroid/app/Notification$MediaStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStyle"
.end annotation


# static fields
.field static final MAX_MEDIA_BUTTONS:I = 0x5

.field static final MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3


# instance fields
.field private mActionsToShowInCompact:[I

.field private mToken:Landroid/media/session/MediaSession$Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 4358
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    .line 4355
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@6
    .line 4358
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    #@0
    .prologue
    .line 4361
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    .line 4355
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@6
    .line 4362
    invoke-virtual {p0, p1}, Landroid/app/Notification$MediaStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    #@9
    .line 4361
    return-void
.end method

.method private generateMediaActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;
    .locals 8
    .param p1, "action"    # Landroid/app/Notification$Action;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const v1, 0x1020366

    #@4
    .line 4442
    iget-object v2, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@6
    if-nez v2, :cond_1

    #@8
    const/4 v7, 0x1

    #@9
    .line 4443
    .local v7, "tombstone":Z
    :goto_0
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    #@b
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@d
    invoke-static {v2}, Landroid/app/Notification$Builder;->-get3(Landroid/app/Notification$Builder;)Landroid/content/Context;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@14
    move-result-object v2

    #@15
    .line 4444
    const v4, 0x1090083

    #@18
    .line 4443
    invoke-direct {v0, v2, v4}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    #@1b
    .line 4445
    .local v0, "button":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    #@22
    .line 4448
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@24
    .line 4446
    const/4 v2, 0x0

    #@25
    move v4, v3

    #@26
    move v6, v3

    #@27
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    #@2a
    .line 4449
    if-nez v7, :cond_0

    #@2c
    .line 4450
    iget-object v2, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@2e
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    #@31
    .line 4452
    :cond_0
    iget-object v2, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@33
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    #@36
    .line 4453
    return-object v0

    #@37
    .line 4442
    .end local v0    # "button":Landroid/widget/RemoteViews;
    .end local v7    # "tombstone":Z
    :cond_1
    const/4 v7, 0x0

    #@38
    .restart local v7    # "tombstone":Z
    goto :goto_0
.end method

.method private getBigLayoutResource(I)I
    .locals 1
    .param p1, "actionCount"    # I

    #@0
    .prologue
    .line 4503
    const/4 v0, 0x3

    #@1
    if-gt p1, v0, :cond_0

    #@3
    .line 4504
    const v0, 0x1090088

    #@6
    return v0

    #@7
    .line 4506
    :cond_0
    const v0, 0x1090087

    #@a
    return v0
.end method

.method private hideRightIcon(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 4511
    const v0, 0x1020040

    #@3
    const/16 v1, 0x8

    #@5
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@8
    .line 4510
    return-void
.end method

.method private makeMediaBigContentView()Landroid/widget/RemoteViews;
    .locals 8

    #@0
    .prologue
    const v7, 0x102036f

    #@3
    const/4 v6, 0x0

    #@4
    .line 4484
    iget-object v4, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@6
    invoke-static {v4}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v4

    #@e
    const/4 v5, 0x5

    #@f
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@12
    move-result v0

    #@13
    .line 4485
    .local v0, "actionCount":I
    iget-object v4, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@15
    invoke-direct {p0, v0}, Landroid/app/Notification$MediaStyle;->getBigLayoutResource(I)I

    #@18
    move-result v5

    #@19
    invoke-static {v4, v5, v6}, Landroid/app/Notification$Builder;->-wrap1(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;

    #@1c
    move-result-object v1

    #@1d
    .line 4488
    .local v1, "big":Landroid/widget/RemoteViews;
    if-lez v0, :cond_0

    #@1f
    .line 4489
    invoke-virtual {v1, v7}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    #@22
    .line 4490
    const/4 v3, 0x0

    #@23
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@25
    .line 4491
    iget-object v4, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@27
    invoke-static {v4}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v4

    #@2f
    check-cast v4, Landroid/app/Notification$Action;

    #@31
    invoke-direct {p0, v4}, Landroid/app/Notification$MediaStyle;->generateMediaActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;

    #@34
    move-result-object v2

    #@35
    .line 4492
    .local v2, "button":Landroid/widget/RemoteViews;
    invoke-virtual {v1, v7, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    #@38
    .line 4490
    add-int/lit8 v3, v3, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 4495
    .end local v2    # "button":Landroid/widget/RemoteViews;
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/app/Notification$MediaStyle;->styleText(Landroid/widget/RemoteViews;)V

    #@3e
    .line 4496
    invoke-direct {p0, v1}, Landroid/app/Notification$MediaStyle;->hideRightIcon(Landroid/widget/RemoteViews;)V

    #@41
    .line 4497
    invoke-virtual {p0, v1}, Landroid/app/Notification$MediaStyle;->applyTopPadding(Landroid/widget/RemoteViews;)V

    #@44
    .line 4498
    const v4, 0x102000d

    #@47
    const/16 v5, 0x8

    #@49
    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@4c
    .line 4499
    return-object v1
.end method

.method private makeMediaContentView()Landroid/widget/RemoteViews;
    .locals 11

    #@0
    .prologue
    const v8, 0x102036f

    #@3
    const/4 v10, 0x0

    #@4
    .line 4457
    iget-object v6, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@6
    .line 4458
    const v7, 0x109008c

    #@9
    .line 4457
    invoke-static {v6, v7, v10}, Landroid/app/Notification$Builder;->-wrap1(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;

    #@c
    move-result-object v5

    #@d
    .line 4460
    .local v5, "view":Landroid/widget/RemoteViews;
    iget-object v6, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@f
    invoke-static {v6}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    #@12
    move-result-object v6

    #@13
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v4

    #@17
    .line 4461
    .local v4, "numActions":I
    iget-object v6, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@19
    if-nez v6, :cond_0

    #@1b
    .line 4462
    const/4 v0, 0x0

    #@1c
    .line 4464
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_2

    #@1e
    .line 4465
    invoke-virtual {v5, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    #@21
    .line 4466
    const/4 v3, 0x0

    #@22
    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    #@24
    .line 4467
    if-lt v3, v4, :cond_1

    #@26
    .line 4468
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@28
    .line 4469
    const-string/jumbo v7, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    #@2b
    .line 4468
    const/4 v8, 0x2

    #@2c
    new-array v8, v8, [Ljava/lang/Object;

    #@2e
    .line 4470
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object v9

    #@32
    aput-object v9, v8, v10

    #@34
    add-int/lit8 v9, v4, -0x1

    #@36
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v9

    #@3a
    const/4 v10, 0x1

    #@3b
    aput-object v9, v8, v10

    #@3d
    .line 4468
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@40
    move-result-object v7

    #@41
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v6

    #@45
    .line 4463
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_0
    iget-object v6, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@47
    array-length v6, v6

    #@48
    const/4 v7, 0x3

    #@49
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@4c
    move-result v0

    #@4d
    .restart local v0    # "N":I
    goto :goto_0

    #@4e
    .line 4473
    .restart local v3    # "i":I
    :cond_1
    iget-object v6, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@50
    invoke-static {v6}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    #@53
    move-result-object v6

    #@54
    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@56
    aget v7, v7, v3

    #@58
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5b
    move-result-object v1

    #@5c
    check-cast v1, Landroid/app/Notification$Action;

    #@5e
    .line 4474
    .local v1, "action":Landroid/app/Notification$Action;
    invoke-direct {p0, v1}, Landroid/app/Notification$MediaStyle;->generateMediaActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;

    #@61
    move-result-object v2

    #@62
    .line 4475
    .local v2, "button":Landroid/widget/RemoteViews;
    invoke-virtual {v5, v8, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    #@65
    .line 4466
    add-int/lit8 v3, v3, 0x1

    #@67
    goto :goto_1

    #@68
    .line 4478
    .end local v1    # "action":Landroid/app/Notification$Action;
    .end local v2    # "button":Landroid/widget/RemoteViews;
    .end local v3    # "i":I
    :cond_2
    invoke-direct {p0, v5}, Landroid/app/Notification$MediaStyle;->styleText(Landroid/widget/RemoteViews;)V

    #@6b
    .line 4479
    invoke-direct {p0, v5}, Landroid/app/Notification$MediaStyle;->hideRightIcon(Landroid/widget/RemoteViews;)V

    #@6e
    .line 4480
    return-object v5
.end method

.method private styleText(Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 4518
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    invoke-static {v2}, Landroid/app/Notification$Builder;->-get3(Landroid/app/Notification$Builder;)Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    .line 4519
    const v3, 0x1060051

    #@9
    .line 4518
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    #@c
    move-result v0

    #@d
    .line 4520
    .local v0, "primaryColor":I
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@f
    invoke-static {v2}, Landroid/app/Notification$Builder;->-get3(Landroid/app/Notification$Builder;)Landroid/content/Context;

    #@12
    move-result-object v2

    #@13
    .line 4521
    const v3, 0x1060052

    #@16
    .line 4520
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    #@19
    move-result v1

    #@1a
    .line 4522
    .local v1, "secondaryColor":I
    const v2, 0x1020016

    #@1d
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    #@20
    .line 4523
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@22
    invoke-static {v2}, Landroid/app/Notification$Builder;->-wrap3(Landroid/app/Notification$Builder;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_0

    #@28
    .line 4524
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@2a
    invoke-static {v2}, Landroid/app/Notification$Builder;->-get7(Landroid/app/Notification$Builder;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_1

    #@30
    .line 4525
    const v2, 0x102037b

    #@33
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    #@36
    .line 4530
    :cond_0
    :goto_0
    const v2, 0x1020015

    #@39
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    #@3c
    .line 4531
    const v2, 0x1020075

    #@3f
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    #@42
    .line 4532
    const v2, 0x102037f

    #@45
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    #@48
    .line 4517
    return-void

    #@49
    .line 4527
    :cond_1
    const v2, 0x102008c

    #@4c
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    #@4f
    goto :goto_0
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4416
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    #@3
    .line 4418
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 4419
    const-string/jumbo v0, "android.mediaSession"

    #@a
    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@f
    .line 4421
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 4422
    const-string/jumbo v0, "android.compactActions"

    #@16
    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@18
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    #@1b
    .line 4415
    :cond_1
    return-void
.end method

.method public buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 1
    .param p1, "wip"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 4390
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    #@3
    .line 4391
    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 4392
    const-string/jumbo v0, "transport"

    #@a
    iput-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    #@c
    .line 4394
    :cond_0
    return-object p1
.end method

.method protected hasProgress()Z
    .locals 1

    #@0
    .prologue
    .line 4540
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public populateBigContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 4410
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaBigContentView()Landroid/widget/RemoteViews;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->-wrap8(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    #@9
    .line 4409
    return-void
.end method

.method public populateContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 4402
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaContentView()Landroid/widget/RemoteViews;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->-wrap9(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    #@9
    .line 4401
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4431
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    #@3
    .line 4433
    const-string/jumbo v0, "android.mediaSession"

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 4434
    const-string/jumbo v0, "android.mediaSession"

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/media/session/MediaSession$Token;

    #@15
    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    #@17
    .line 4436
    :cond_0
    const-string/jumbo v0, "android.compactActions"

    #@1a
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 4437
    const-string/jumbo v0, "android.compactActions"

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@29
    .line 4430
    :cond_1
    return-void
.end method

.method public setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;
    .locals 0
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;

    #@0
    .prologue
    .line 4381
    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    #@2
    .line 4382
    return-object p0
.end method

.method public varargs setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;
    .locals 0
    .param p1, "actions"    # [I

    #@0
    .prologue
    .line 4372
    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@2
    .line 4373
    return-object p0
.end method
