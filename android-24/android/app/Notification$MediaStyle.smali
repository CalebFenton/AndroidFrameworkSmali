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
    .line 5128
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    .line 5125
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@6
    .line 5128
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 5135
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    .line 5125
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@6
    .line 5136
    invoke-virtual {p0, p1}, Landroid/app/Notification$MediaStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    #@9
    .line 5135
    return-void
.end method

.method private generateMediaActionButton(Landroid/app/Notification$Action;I)Landroid/widget/RemoteViews;
    .locals 8
    .param p1, "action"    # Landroid/app/Notification$Action;
    .param p2, "color"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const v1, 0x102039f

    #@4
    .line 5225
    iget-object v2, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@6
    if-nez v2, :cond_1

    #@8
    const/4 v7, 0x1

    #@9
    .line 5226
    .local v7, "tombstone":Z
    :goto_0
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    #@b
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@d
    invoke-static {v2}, Landroid/app/Notification$Builder;->-get1(Landroid/app/Notification$Builder;)Landroid/content/Context;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@14
    move-result-object v2

    #@15
    .line 5227
    const v4, 0x1090088

    #@18
    .line 5226
    invoke-direct {v0, v2, v4}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    #@1b
    .line 5228
    .local v0, "button":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    #@22
    .line 5229
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@24
    const/4 v2, 0x0

    #@25
    move v4, p2

    #@26
    move v6, v3

    #@27
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    #@2a
    .line 5231
    if-nez v7, :cond_0

    #@2c
    .line 5232
    iget-object v2, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@2e
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    #@31
    .line 5234
    :cond_0
    iget-object v2, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@33
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    #@36
    .line 5235
    return-object v0

    #@37
    .line 5225
    .end local v0    # "button":Landroid/widget/RemoteViews;
    .end local v7    # "tombstone":Z
    :cond_1
    const/4 v7, 0x0

    #@38
    .restart local v7    # "tombstone":Z
    goto :goto_0
.end method

.method private handleImage(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5297
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@3
    invoke-static {v0}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 5298
    const v0, 0x10203bf

    #@10
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    #@13
    .line 5299
    const v0, 0x102007d

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    #@19
    .line 5296
    :cond_0
    return-void
.end method

.method private makeMediaBigContentView()Landroid/widget/RemoteViews;
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const v8, 0x10203b3

    #@4
    const/4 v7, 0x0

    #@5
    .line 5272
    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@7
    invoke-static {v5}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    #@a
    move-result-object v5

    #@b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v5

    #@f
    const/4 v6, 0x5

    #@10
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@13
    move-result v0

    #@14
    .line 5274
    .local v0, "actionCount":I
    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@16
    if-nez v5, :cond_0

    #@18
    .line 5275
    const/4 v1, 0x0

    #@19
    .line 5277
    .local v1, "actionsInCompact":I
    :goto_0
    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@1b
    invoke-static {v5}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@1e
    move-result-object v5

    #@1f
    invoke-static {v5}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    #@22
    move-result v5

    #@23
    if-nez v5, :cond_1

    #@25
    if-gt v0, v1, :cond_1

    #@27
    .line 5278
    return-object v9

    #@28
    .line 5276
    .end local v1    # "actionsInCompact":I
    :cond_0
    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@2a
    array-length v5, v5

    #@2b
    const/4 v6, 0x3

    #@2c
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@2f
    move-result v1

    #@30
    .restart local v1    # "actionsInCompact":I
    goto :goto_0

    #@31
    .line 5280
    :cond_1
    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@33
    .line 5281
    const v6, 0x109008d

    #@36
    .line 5280
    invoke-static {v5, v6, v7}, Landroid/app/Notification$Builder;->-wrap3(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;

    #@39
    move-result-object v2

    #@3a
    .line 5284
    .local v2, "big":Landroid/widget/RemoteViews;
    if-lez v0, :cond_2

    #@3c
    .line 5285
    invoke-virtual {v2, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    #@3f
    .line 5286
    const/4 v4, 0x0

    #@40
    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    #@42
    .line 5287
    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@44
    invoke-static {v5}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v5

    #@4c
    check-cast v5, Landroid/app/Notification$Action;

    #@4e
    .line 5288
    iget-object v6, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@50
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    #@53
    move-result v6

    #@54
    .line 5287
    invoke-direct {p0, v5, v6}, Landroid/app/Notification$MediaStyle;->generateMediaActionButton(Landroid/app/Notification$Action;I)Landroid/widget/RemoteViews;

    #@57
    move-result-object v3

    #@58
    .line 5289
    .local v3, "button":Landroid/widget/RemoteViews;
    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    #@5b
    .line 5286
    add-int/lit8 v4, v4, 0x1

    #@5d
    goto :goto_1

    #@5e
    .line 5292
    .end local v3    # "button":Landroid/widget/RemoteViews;
    .end local v4    # "i":I
    :cond_2
    invoke-direct {p0, v2}, Landroid/app/Notification$MediaStyle;->handleImage(Landroid/widget/RemoteViews;)V

    #@61
    .line 5293
    return-object v2
.end method

.method private makeMediaContentView()Landroid/widget/RemoteViews;
    .locals 12

    #@0
    .prologue
    const v10, 0x10203b3

    #@3
    const/4 v7, 0x0

    #@4
    .line 5239
    iget-object v8, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@6
    .line 5240
    const v9, 0x1090091

    #@9
    .line 5239
    invoke-static {v8, v9, v7}, Landroid/app/Notification$Builder;->-wrap3(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;

    #@c
    move-result-object v6

    #@d
    .line 5242
    .local v6, "view":Landroid/widget/RemoteViews;
    iget-object v8, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@f
    invoke-static {v8}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    #@12
    move-result-object v8

    #@13
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v5

    #@17
    .line 5243
    .local v5, "numActions":I
    iget-object v8, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@19
    if-nez v8, :cond_0

    #@1b
    move v0, v7

    #@1c
    .line 5246
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_2

    #@1e
    .line 5247
    invoke-virtual {v6, v10}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    #@21
    .line 5248
    const/4 v4, 0x0

    #@22
    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    #@24
    .line 5249
    if-lt v4, v5, :cond_1

    #@26
    .line 5250
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@28
    .line 5251
    const-string/jumbo v9, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    #@2b
    .line 5250
    const/4 v10, 0x2

    #@2c
    new-array v10, v10, [Ljava/lang/Object;

    #@2e
    .line 5252
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object v11

    #@32
    aput-object v11, v10, v7

    #@34
    add-int/lit8 v7, v5, -0x1

    #@36
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v7

    #@3a
    const/4 v11, 0x1

    #@3b
    aput-object v7, v10, v11

    #@3d
    .line 5250
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@40
    move-result-object v7

    #@41
    invoke-direct {v8, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v8

    #@45
    .line 5245
    .end local v0    # "N":I
    .end local v4    # "i":I
    :cond_0
    iget-object v8, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@47
    array-length v8, v8

    #@48
    const/4 v9, 0x3

    #@49
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@4c
    move-result v0

    #@4d
    goto :goto_0

    #@4e
    .line 5255
    .restart local v0    # "N":I
    .restart local v4    # "i":I
    :cond_1
    iget-object v8, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@50
    invoke-static {v8}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    #@53
    move-result-object v8

    #@54
    iget-object v9, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@56
    aget v9, v9, v4

    #@58
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5b
    move-result-object v1

    #@5c
    check-cast v1, Landroid/app/Notification$Action;

    #@5e
    .line 5257
    .local v1, "action":Landroid/app/Notification$Action;
    iget-object v8, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@60
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    #@63
    move-result v8

    #@64
    .line 5256
    invoke-direct {p0, v1, v8}, Landroid/app/Notification$MediaStyle;->generateMediaActionButton(Landroid/app/Notification$Action;I)Landroid/widget/RemoteViews;

    #@67
    move-result-object v2

    #@68
    .line 5258
    .local v2, "button":Landroid/widget/RemoteViews;
    invoke-virtual {v6, v10, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    #@6b
    .line 5248
    add-int/lit8 v4, v4, 0x1

    #@6d
    goto :goto_1

    #@6e
    .line 5261
    .end local v1    # "action":Landroid/app/Notification$Action;
    .end local v2    # "button":Landroid/widget/RemoteViews;
    .end local v4    # "i":I
    :cond_2
    invoke-direct {p0, v6}, Landroid/app/Notification$MediaStyle;->handleImage(Landroid/widget/RemoteViews;)V

    #@71
    .line 5263
    const v3, 0x1050040

    #@74
    .line 5264
    .local v3, "endMargin":I
    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@76
    invoke-static {v7}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@79
    move-result-object v7

    #@7a
    invoke-static {v7}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    #@7d
    move-result v7

    #@7e
    if-eqz v7, :cond_3

    #@80
    .line 5265
    const v3, 0x1050042

    #@83
    .line 5267
    :cond_3
    const v7, 0x10203b1

    #@86
    invoke-virtual {v6, v7, v3}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    #@89
    .line 5268
    return-object v6
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 5199
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    #@3
    .line 5201
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 5202
    const-string/jumbo v0, "android.mediaSession"

    #@a
    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@f
    .line 5204
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 5205
    const-string/jumbo v0, "android.compactActions"

    #@16
    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@18
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    #@1b
    .line 5198
    :cond_1
    return-void
.end method

.method public buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 1
    .param p1, "wip"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 5164
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    #@3
    .line 5165
    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 5166
    const-string/jumbo v0, "transport"

    #@a
    iput-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    #@c
    .line 5168
    :cond_0
    return-object p1
.end method

.method protected hasProgress()Z
    .locals 1

    #@0
    .prologue
    .line 5308
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    #@0
    .prologue
    .line 5184
    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaBigContentView()Landroid/widget/RemoteViews;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public makeContentView()Landroid/widget/RemoteViews;
    .locals 1

    #@0
    .prologue
    .line 5176
    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaContentView()Landroid/widget/RemoteViews;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1

    #@0
    .prologue
    .line 5192
    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaBigContentView()Landroid/widget/RemoteViews;

    #@3
    move-result-object v0

    #@4
    .line 5193
    .local v0, "expanded":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_0

    #@6
    .end local v0    # "expanded":Landroid/widget/RemoteViews;
    :goto_0
    return-object v0

    #@7
    .restart local v0    # "expanded":Landroid/widget/RemoteViews;
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaContentView()Landroid/widget/RemoteViews;

    #@a
    move-result-object v0

    #@b
    goto :goto_0
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 5214
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    #@3
    .line 5216
    const-string/jumbo v0, "android.mediaSession"

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 5217
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
    .line 5219
    :cond_0
    const-string/jumbo v0, "android.compactActions"

    #@1a
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 5220
    const-string/jumbo v0, "android.compactActions"

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@29
    .line 5213
    :cond_1
    return-void
.end method

.method public setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;
    .locals 0
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;

    #@0
    .prologue
    .line 5155
    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    #@2
    .line 5156
    return-object p0
.end method

.method public varargs setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;
    .locals 0
    .param p1, "actions"    # [I

    #@0
    .prologue
    .line 5146
    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    #@2
    .line 5147
    return-object p0
.end method
